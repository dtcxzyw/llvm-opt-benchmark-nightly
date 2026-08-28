Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@lre_parse_escape:bb.a
from_hex.exit111.thread.1:                        ; preds = %bb.aa, %bb.z, %from_hex.exit111.thread
  %.0.i110138.1 = phi i32 [ %i.az, %bb.z ], [ %i.ax, %from_hex.exit111.thread ], [ %i.bb, %bb.aa ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bd = load i8, ptr %i.au, align 1, !tbaa !12  ; 3 uses
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = add nsw i32 %i.be, -48                  ; 2 uses
  %or.cond.i106.2 = icmp ult i32 %i.bf, 10
  br i1 %or.cond.i106.2, label %from_hex.exit111.thread.2, label %bb.ab

bb.ab:                                            ; preds = %from_hex.exit111.thread.1
  %i.bg = add i8 %i.bd, -65
  %or.cond3.i107.2 = icmp ult i8 %i.bg, 6
  br i1 %or.cond3.i107.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = add nsw i32 %i.be, -87
  %i.bi = add i8 %i.bd, -103
  %or.cond151.2 = icmp ult i8 %i.bi, -6
  br i1 %or.cond151.2, label %.critedge, label %from_hex.exit111.thread.2

bb.ad:                                            ; preds = %bb.ab
  %i.bj = add nsw i32 %i.be, -55
  br label %from_hex.exit111.thread.2

from_hex.exit111.thread.2:                        ; preds = %bb.ad, %bb.ac, %from_hex.exit111.thread.1
  %.0.i110138.2 = phi i32 [ %i.bh, %bb.ac ], [ %i.bf, %from_hex.exit111.thread.1 ], [ %i.bj, %bb.ad ]
  %i.bk = shl nsw i32 %.0.i110138, 8
  %i.bl = shl nsw i32 %.0.i110138.1, 4
  %i.bm = or i32 %i.bk, %i.bl
  %i.bn = or i32 %.0.i110138.2, %i.bm
  %i.bo = load i8, ptr %i.bc, align 1, !tbaa !12  ; 3 uses
  %i.bp = zext i8 %i.bo to i32                    ; 3 uses
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %or.cond.i106.3 = icmp ult i32 %i.bq, 10
  br i1 %or.cond.i106.3, label %from_hex.exit111.thread.3, label %bb.ae

bb.ae:                                            ; preds = %from_hex.exit111.thread.2
  %i.br = add i8 %i.bo, -65
  %or.cond3.i107.3 = icmp ult i8 %i.br, 6
  br i1 %or.cond3.i107.3, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bs = add nsw i32 %i.bp, -87
  %i.bt = add i8 %i.bo, -103
  %or.cond151.3 = icmp ult i8 %i.bt, -6
  br i1 %or.cond151.3, label %.critedge, label %from_hex.exit111.thread.3

bb.ag:                                            ; preds = %bb.ae
  %i.bu = add nsw i32 %i.bp, -55
  br label %from_hex.exit111.thread.3

from_hex.exit111.thread.3:                        ; preds = %bb.ag, %bb.af, %from_hex.exit111.thread.2
  %.0.i110138.3 = phi i32 [ %i.bs, %bb.af ], [ %i.bq, %from_hex.exit111.thread.2 ], [ %i.bu, %bb.ag ]
  %i.bv = shl nsw i32 %i.bn, 4
  %i.bw = or i32 %.0.i110138.3, %i.bv             ; 10 uses
  %.mask.i = and i32 %i.bw, -1024
  %i.bx = icmp eq i32 %.mask.i, 55296
  %i.by = icmp eq i32 %1, 2
  %or.cond4 = and i1 %i.by, %i.bx
  br i1 %or.cond4, label %bb.ah, label %.thread147

bb.ah:                                            ; preds = %from_hex.exit111.thread.3
  %i.bz = load i8, ptr %scevgep174, align 1, !tbaa !12
  %i.ca = icmp eq i8 %i.bz, 92
  br i1 %i.ca, label %bb.ai, label %.thread147

bb.ai:                                            ; preds = %bb.ah
  %i.cb = getelementptr i8, ptr %i.a, i64 6
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !12
  %i.cd = icmp eq i8 %i.cc, 117
  br i1 %i.cd, label %.preheader.preheader, label %.thread147

.preheader.preheader:                             ; preds = %bb.ai
  %i.ce = getelementptr i8, ptr %i.a, i64 7
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !12  ; 3 uses
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
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12  ; 3 uses
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
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12  ; 3 uses
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
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !12  ; 3 uses
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
  %i.ea = load i8, ptr %i.b, align 1, !tbaa !12
  %i.eb = add i8 %i.ea, -48
  %i.ec = icmp ult i8 %i.eb, 10
  br i1 %i.ec, label %.critedge, label %.thread147

bb.az:                                            ; preds = %bb.aw
  %i.ed = load i8, ptr %i.b, align 1, !tbaa !12
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
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !12
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
  store ptr %.676, ptr %0, align 8, !tbaa !9
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
  store ptr %6, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.d, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %3, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %5, ptr %i.g, align 8, !tbaa !21
  %i.h = and i32 %5, 272
  %i.i = icmp ne i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 4, !tbaa !22
  %i.l = and i32 %5, 32
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 78
  %i.n = trunc i32 %5 to i8                       ; 3 uses
  %i.o = lshr i8 %i.n, 1
  %i.p = and i8 %i.o, 1
  store i8 %i.p, ptr %i.m, align 2, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 79
  %i.r = lshr i8 %i.n, 2
  %i.s = and i8 %i.r, 1
  store i8 %i.s, ptr %i.q, align 1, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.u = lshr i8 %i.n, 3
  %i.v = and i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 77
  %i.x = lshr i32 %5, 8
  %i.y = trunc i32 %i.x to i8
  %i.z = and i8 %i.y, 1
  store i8 %i.z, ptr %i.w, align 1, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 3 uses
  store i32 1, ptr %i.aa, align 4, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i32 -1, ptr %i.ab, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 -1, ptr %i.ac, align 4, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store ptr %6, ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr @lre_bytecode_realloc, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 3 uses
  store ptr %6, ptr %i.ag, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  store ptr @lre_realloc, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 14 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 36 uses
  %i.ak = trunc i32 %5 to i16
  call fastcc void @__dbuf_put_u16(ptr noundef nonnull %7, i16 noundef zeroext %i.ak)
  %.pre111 = load i64, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %.pre = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.al = icmp eq i64 %.pre, %.pre111
  br i1 %i.al, label %bb.a, label %bb.b, !prof !34

bb.a:                                             ; preds = %dbuf_put_u16.exit
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 0)
  br label %dbuf_putc.exit

bb.b:                                             ; preds = %dbuf_put_u16.exit
  %i.am = load ptr, ptr %7, align 8, !tbaa !35
  %i.an = add i64 %.pre111, 1
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.pre111
  store i8 0, ptr %i.ao, align 1, !tbaa !12
  br label %dbuf_putc.exit

dbuf_putc.exit:                                   ; preds = %bb.a, %bb.b
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.c, label %bb.d, !prof !34

bb.c:                                             ; preds = %dbuf_putc.exit
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 0)
  br label %dbuf_putc.exit83

bb.d:                                             ; preds = %dbuf_putc.exit
  %i.as = load ptr, ptr %7, align 8, !tbaa !35
  %i.at = add i64 %i.aq, 1
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.au, align 1, !tbaa !12
  br label %dbuf_putc.exit83

dbuf_putc.exit83:                                 ; preds = %bb.c, %bb.d
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !32 ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, 4
  br i1 %i.ay, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %dbuf_putc.exit83
  %i.az = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %7, i32 noundef 0) ; 0 uses
  %.pre114.pre = load i64, ptr %i.aj, align 8, !tbaa !32
  br label %dbuf_put_u32.exit

bb.f:                                             ; preds = %dbuf_putc.exit83
  %i.ba = load ptr, ptr %7, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  store i32 0, ptr %i.bb, align 1
  %i.bc = load i64, ptr %i.aj, align 8, !tbaa !32
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !32
  br label %dbuf_put_u32.exit

dbuf_put_u32.exit:                                ; preds = %bb.e, %bb.f
  %.pre114 = phi i64 [ %.pre114.pre, %bb.e ], [ %i.bd, %bb.f ] ; 4 uses
  br i1 %.not, label %bb.g, label %re_emit_op_u32.exit87

bb.g:                                             ; preds = %dbuf_put_u32.exit
  %i.be = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.bf = icmp eq i64 %i.be, %.pre114
  br i1 %i.bf, label %bb.h, label %bb.i, !prof !34

bb.h:                                             ; preds = %bb.g
  call fastcc void @__dbuf_putc(ptr noundef nonnull %7, i8 noundef zeroext 14)
  br label %dbuf_putc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %7, align 8, !tbaa !35
  %i.bh = add i64 %.pre114, 1
  store i64 %i.bh, ptr %i.aj, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.pre114
  store i8 14, ptr %i.bi, align 1, !tbaa !12
  br label %dbuf_putc.exit.i

dbuf_putc.exit.i:                                 ; preds = %bb.i, %bb.h
  %i.bj = load i64, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.bk = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.bl = sub i64 %i.bk, %i.bj
  %i.bm = icmp ult i64 %i.bl, 4
  br i1 %i.bm, label %bb.j, label %bb.k, !prof !34

bb.j:                                             ; preds = %dbuf_putc.exit.i
  %i.bn = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %7, i32 noundef 6) ; 0 uses
  %.pre112 = load i64, ptr %i.aj, align 8, !tbaa !32
  br label %re_emit_op_u32.exit

bb.k:                                             ; preds = %dbuf_putc.exit.i
  %i.bo = load ptr, ptr %7, align 8, !tbaa !35
end_hunk_0
begin_hunk_1_@__dbuf_put_u32:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i32 %1, ptr %i.j, align 1
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32
  %i.l = add i64 %i.k, 4
  store i64 %i.l, ptr %i.a, align 8, !tbaa !32
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i
}

declare zeroext i1 @lre_check_stack_overflow(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dbuf_insert(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef range(i32 3, 14) %2) unnamed_addr #2 {
bb.a:
  %i.a = zext nneg i32 %2 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = add i64 %i.c, %i.a                       ; 4 uses
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %dbuf_claim.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33   ; 4 uses
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %.dbuf_claim.exit_crit_edge

.dbuf_claim.exit_crit_edge:                       ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !35
  br label %dbuf_claim.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !39, !range !40, !noundef !41
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %dbuf_claim.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.g, 1
  %i.m = add i64 %i.l, %i.g                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.g
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.d)
  %.0.i = select i1 %i.n, i64 %i.d, i64 %i.o      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = load ptr, ptr %0, align 8, !tbaa !35
  %i.u = tail call ptr %i.q(ptr noundef %i.s, ptr noundef %i.t, i64 noundef %.0.i) #20, !inline_history !80 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.i, align 8, !tbaa !39
  br label %dbuf_claim.exit.thread

bb.f:                                             ; preds = %bb.d
  store ptr %i.u, ptr %0, align 8, !tbaa !35
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !33
  %.pre13 = load i64, ptr %i.b, align 8, !tbaa !32
  br label %dbuf_claim.exit

dbuf_claim.exit:                                  ; preds = %.dbuf_claim.exit_crit_edge, %bb.f
  %i.v = phi i64 [ %i.c, %.dbuf_claim.exit_crit_edge ], [ %.pre13, %bb.f ]
  %i.w = phi ptr [ %.pre, %.dbuf_claim.exit_crit_edge ], [ %i.u, %bb.f ]
  %i.x = sext i32 %1 to i64                       ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.a
  %i.aa = sub i64 %i.v, %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.y, i64 %i.aa, i1 false)
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !32
  %i.ac = add i64 %i.ab, %i.a
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !32
  br label %dbuf_claim.exit.thread

dbuf_claim.exit.thread:                           ; preds = %bb.c, %bb.a, %bb.e, %dbuf_claim.exit
  %.0 = phi i32 [ 0, %dbuf_claim.exit ], [ -1, %bb.e ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i1 @re_has_named_captures(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %re_count_captures.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %re_count_captures.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 4 uses
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %.lr.ph46.split.us.i.i, label %re_parse_captures.exit.i

.lr.ph46.split.us.i.i:                            ; preds = %bb.c, %.critedge.us.i.i
  %i.l = phi i32 [ %i.ad, %.critedge.us.i.i ], [ 0, %bb.c ] ; 10 uses
  %storemerge3239.us59.i.i = phi ptr [ %i.ae, %.critedge.us.i.i ], [ %i.h, %bb.c ] ; 13 uses
  %.01844.us.i.i = phi i32 [ %.119.us.i.i, %.critedge.us.i.i ], [ 1, %bb.c ] ; 12 uses
  %i.m = load i8, ptr %storemerge3239.us59.i.i, align 1, !tbaa !12
  switch i8 %i.m, label %.critedge.us.i.i [
    i8 40, label %bb.g
    i8 92, label %bb.f
    i8 91, label %.preheader.us.i.i
  ]

.lr.ph.us.i.i:                                    ; preds = %.preheader.us.i.i, %bb.e
  %storemerge3241.us.i.i = phi ptr [ %storemerge32.us.i.i, %bb.e ], [ %storemerge3239.us.i.i, %.preheader.us.i.i ] ; 3 uses
  %storemerge.pn40.us.i.i = phi ptr [ %storemerge3238.us.i.i, %bb.e ], [ %storemerge3239.us59.i.i, %.preheader.us.i.i ]
  %i.n = load i8, ptr %storemerge3241.us.i.i, align 1, !tbaa !12
  switch i8 %i.n, label %bb.e [
    i8 93, label %.critedge.us.i.i
    i8 92, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.us.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge.pn40.us.i.i, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.us.i.i
  %storemerge3238.us.i.i = phi ptr [ %storemerge3241.us.i.i, %.lr.ph.us.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %storemerge32.us.i.i = getelementptr inbounds nuw i8, ptr %storemerge3238.us.i.i, i64 1 ; 3 uses
  %i.p = icmp ult ptr %storemerge32.us.i.i, %i.j
  br i1 %i.p, label %.lr.ph.us.i.i, label %.critedge.us.i.i, !llvm.loop !52

bb.f:                                             ; preds = %.lr.ph46.split.us.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge3239.us59.i.i, i64 1
  br label %.critedge.us.i.i

bb.g:                                             ; preds = %.lr.ph46.split.us.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge3239.us59.i.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = icmp eq i8 %i.s, 63
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %.01844.us.i.i, 1            ; 2 uses
  %i.v = icmp sgt i32 %.01844.us.i.i, 253
  br i1 %i.v, label %re_parse_captures.exit.i, label %.critedge.us.i.i

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge3239.us59.i.i, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = icmp eq i8 %i.x, 60
  br i1 %i.y, label %bb.j, label %.critedge.us.i.i

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge3239.us59.i.i, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12
  switch i8 %i.aa, label %bb.k [
    i8 61, label %.critedge.us.i.i
    i8 33, label %.critedge.us.i.i
  ]

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.a, align 4, !tbaa !38
  %i.ab = add nsw i32 %.01844.us.i.i, 1           ; 2 uses
  %i.ac = icmp sgt i32 %.01844.us.i.i, 253
  br i1 %i.ac, label %re_parse_captures.exit.i, label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %bb.e, %.lr.ph.us.i.i, %.preheader.us.i.i, %bb.k, %bb.j, %bb.j, %bb.i, %bb.h, %bb.f, %.lr.ph46.split.us.i.i
  %i.ad = phi i32 [ %i.l, %.lr.ph46.split.us.i.i ], [ 1, %bb.k ], [ %i.l, %bb.j ], [ %i.l, %bb.j ], [ %i.l, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.f ], [ %i.l, %.preheader.us.i.i ], [ %i.l, %.lr.ph.us.i.i ], [ %i.l, %bb.e ] ; 2 uses
  %storemerge3239.us61.i.i = phi ptr [ %storemerge3239.us59.i.i, %.lr.ph46.split.us.i.i ], [ %storemerge3239.us59.i.i, %bb.k ], [ %storemerge3239.us59.i.i, %bb.j ], [ %storemerge3239.us59.i.i, %bb.j ], [ %storemerge3239.us59.i.i, %bb.i ], [ %storemerge3239.us59.i.i, %bb.h ], [ %i.q, %bb.f ], [ %storemerge3239.us.i.i, %.preheader.us.i.i ], [ %storemerge32.us.i.i, %bb.e ], [ %storemerge3241.us.i.i, %.lr.ph.us.i.i ]
  %.119.us.i.i = phi i32 [ %.01844.us.i.i, %.lr.ph46.split.us.i.i ], [ %i.ab, %bb.k ], [ %.01844.us.i.i, %bb.j ], [ %.01844.us.i.i, %bb.j ], [ %.01844.us.i.i, %bb.i ], [ %i.u, %bb.h ], [ %.01844.us.i.i, %bb.f ], [ %.01844.us.i.i, %.preheader.us.i.i ], [ %.01844.us.i.i, %.lr.ph.us.i.i ], [ %.01844.us.i.i, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge3239.us61.i.i, i64 1 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %i.j
  br i1 %i.af, label %.lr.ph46.split.us.i.i, label %re_parse_captures.exit.i, !llvm.loop !53

.preheader.us.i.i:                                ; preds = %.lr.ph46.split.us.i.i
  %storemerge3239.us.i.i = getelementptr inbounds nuw i8, ptr %storemerge3239.us59.i.i, i64 1 ; 3 uses
  %i.ag = icmp ult ptr %storemerge3239.us.i.i, %i.j
  br i1 %i.ag, label %.lr.ph.us.i.i, label %.critedge.us.i.i

re_parse_captures.exit.i:                         ; preds = %.critedge.us.i.i, %bb.k, %bb.h, %bb.c
  %i.ah = phi i32 [ 0, %bb.c ], [ %i.ad, %.critedge.us.i.i ], [ %i.l, %bb.h ], [ 1, %bb.k ]
  %.220.i.i = phi i32 [ 1, %bb.c ], [ %.119.us.i.i, %.critedge.us.i.i ], [ %i.u, %bb.h ], [ %i.ab, %bb.k ]
  store i32 %.220.i.i, ptr %i.d, align 8, !tbaa !28
  br label %re_count_captures.exit

re_count_captures.exit:                           ; preds = %re_parse_captures.exit.i, %bb.b, %bb.a
  %i.ai = phi i32 [ %i.ah, %re_parse_captures.exit.i ], [ 1, %bb.b ], [ %i.b, %bb.a ]
  %i.aj = icmp ne i32 %i.ai, 0
  ret i1 %i.aj
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @re_parse_term(ptr noundef nonnull %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.REStringList, align 8       ; 11 uses
  %i.a = alloca ptr, align 8                      ; 31 uses
  %3 = alloca %struct.REStringList, align 8       ; 11 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %.val457 = load i8, ptr %i.d, align 8, !tbaa !39, !range !40, !noundef !41
  %i.e = trunc nuw i8 %.val457 to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 21 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  switch i8 %i.h, label %bb.dm [
    i8 94, label %bb.d
    i8 36, label %bb.g
    i8 46, label %bb.j
    i8 123, label %bb.r
    i8 42, label %bb.v
    i8 43, label %bb.v
    i8 63, label %bb.v
    i8 40, label %bb.w
    i8 92, label %bb.bj
    i8 91, label %bb.da
    i8 93, label %bb.dk
    i8 125, label %bb.dk
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24, !range !40, !noundef !41
  %i.l = add nuw nsw i8 %i.k, 9                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !32   ; 3 uses
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.l)
  br label %re_emit_op.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !35
  %i.s = add i64 %i.p, 1
  store i64 %i.s, ptr %i.o, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 %i.l, ptr %i.t, align 1, !tbaa !12
  br label %re_emit_op.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24, !range !40, !noundef !41
  %i.x = add nuw nsw i8 %i.w, 11                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32 ; 3 uses
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !34

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.x)
  br label %re_emit_op.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !tbaa !35
  %i.ae = add i64 %i.ab, 1
  store i64 %i.ae, ptr %i.aa, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 %i.x, ptr %i.af, align 1, !tbaa !12
  br label %re_emit_op.exit.thread

bb.j:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36 ; 7 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !27 ; 4 uses
  br i1 %1, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !33
  %i.ao = icmp eq i64 %i.an, %i.ai
  br i1 %i.ao, label %bb.l, label %bb.m, !prof !34

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext 44)
  br label %re_emit_op.exit459

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %0, align 8, !tbaa !35
  %i.aq = add i64 %i.ai, 1
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ai
  store i8 44, ptr %i.ar, align 1, !tbaa !12
  br label %re_emit_op.exit459

re_emit_op.exit459:                               ; preds = %bb.l, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load i8, ptr %i.as, align 8, !tbaa !25, !range !40, !noundef !41
  %i.au = add nuw nsw i8 %i.at, 5                 ; 2 uses
  %i.av = load i64, ptr %i.am, align 8, !tbaa !33
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.n, label %bb.o, !prof !34

bb.n:                                             ; preds = %re_emit_op.exit459
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.au)
  br label %re_emit_op.exit460

bb.o:                                             ; preds = %re_emit_op.exit459
  %i.ay = load ptr, ptr %0, align 8, !tbaa !35
  %i.az = add i64 %i.aw, 1
  store i64 %i.az, ptr %i.ah, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 %i.au, ptr %i.ba, align 1, !tbaa !12
  br label %re_emit_op.exit460

re_emit_op.exit460:                               ; preds = %bb.n, %bb.o
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !33
  %i.bc = load i64, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.p, label %bb.q, !prof !34

bb.p:                                             ; preds = %re_emit_op.exit460
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext 44)
  br label %re_emit_op.exit

bb.q:                                             ; preds = %re_emit_op.exit460
  %i.be = load ptr, ptr %0, align 8, !tbaa !35
  %i.bf = add i64 %i.bc, 1
  store i64 %i.bf, ptr %i.ah, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 44, ptr %i.bg, align 1, !tbaa !12
  br label %re_emit_op.exit

bb.r:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !22, !range !40, !noundef !41
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.4)
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !12
  %i.bm = add i8 %i.bl, -48
  %i.bn = icmp ult i8 %i.bm, 10
  br i1 %i.bn, label %.lr.ph.split.us.i, label %bb.dm

.lr.ph.split.us.i:                                ; preds = %bb.t, %.lr.ph.split.us.i
  %.01320.us.i = phi ptr [ %i.bo, %.lr.ph.split.us.i ], [ %i.bk, %bb.t ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01320.us.i, i64 1 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !12  ; 3 uses
  %i.bq = add i8 %i.bp, -58
  %or.cond.us.i = icmp ult i8 %i.bq, -10
  br i1 %or.cond.us.i, label %parse_digits.exit, label %.lr.ph.split.us.i

parse_digits.exit:                                ; preds = %.lr.ph.split.us.i
  %i.br = icmp eq i8 %i.bp, 44
  br i1 %i.br, label %bb.u, label %parse_digits.exit471

bb.u:                                             ; preds = %parse_digits.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.01320.us.i, i64 2 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12  ; 2 uses
  %i.bu = add i8 %i.bt, -48
  %or.cond660 = icmp ult i8 %i.bu, 10
  br i1 %or.cond660, label %.lr.ph.split.us.i464, label %parse_digits.exit471

.lr.ph.split.us.i464:                             ; preds = %bb.u, %.lr.ph.split.us.i464
  %.01320.us.i466 = phi ptr [ %i.bv, %.lr.ph.split.us.i464 ], [ %i.bs, %bb.u ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.01320.us.i466, i64 1 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !12  ; 2 uses
  %i.bx = add i8 %i.bw, -58
  %or.cond.us.i468 = icmp ult i8 %i.bx, -10
  br i1 %or.cond.us.i468, label %parse_digits.exit471, label %.lr.ph.split.us.i464

parse_digits.exit471:                             ; preds = %.lr.ph.split.us.i464, %parse_digits.exit, %bb.u
  %i.by = phi i8 [ %i.bp, %parse_digits.exit ], [ %i.bt, %bb.u ], [ %i.bw, %.lr.ph.split.us.i464 ]
  %.not432 = icmp eq i8 %i.by, 125
  br i1 %.not432, label %bb.v, label %bb.dm

bb.v:                                             ; preds = %parse_digits.exit471, %bb.c, %bb.c, %bb.c
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.5)
  br label %.thread

bb.w:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !12
  %i.cb = icmp eq i8 %i.ca, 63
  br i1 %i.cb, label %bb.x, label %bb.bb

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !12  ; 3 uses
  switch i8 %i.cd, label %bb.ba [
    i8 58, label %bb.y
    i8 105, label %bb.aa
    i8 109, label %bb.aa
    i8 115, label %bb.aa
    i8 45, label %bb.aa
    i8 61, label %bb.ak
    i8 33, label %bb.ak
    i8 60, label %bb.aj
  ]

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  store ptr %i.ce, ptr %i.f, align 8, !tbaa !18
  %i.cj = tail call fastcc i32 @re_parse_disjunction(ptr noundef %0, i1 noundef zeroext %1)
  %.not428 = icmp eq i32 %i.cj, 0
  br i1 %.not428, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.cl, 41
  br i1 %.not.i, label %re_parse_expect.exit.thread, label %re_parse_expect.exit

re_parse_expect.exit.thread:                      ; preds = %bb.z
  %i.cm = trunc i64 %i.cg to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !9
  br label %re_emit_op.exit

re_parse_expect.exit:                             ; preds = %bb.z
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef 41)
  br label %.thread

bb.aa:                                            ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !9
  %i.co = call fastcc i32 @re_parse_modifiers(ptr noundef %0, ptr noundef %i.a) ; 6 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !12
  %i.cs = icmp eq i8 %i.cr, 45
  br i1 %i.cs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !9
  %i.cu = call fastcc i32 @re_parse_modifiers(ptr noundef %0, ptr noundef %i.a) ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0372 = phi i32 [ %i.cu, %bb.ac ], [ 0, %bb.ab ] ; 5 uses
  %i.cw = or i32 %.0372, %i.co
  %or.cond = icmp ne i32 %i.cw, 0
  %i.cx = and i32 %.0372, %i.co
  %.not424 = icmp eq i32 %i.cx, 0
  %or.cond449 = and i1 %or.cond, %.not424
  br i1 %or.cond449, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.6)
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !12
  %.not.i472 = icmp eq i8 %i.cz, 58
  br i1 %.not.i472, label %bb.ag, label %re_parse_expect.exit474

re_parse_expect.exit474:                          ; preds = %bb.af
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef 58)
  br label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !23, !range !40, !noundef !41 ; 2 uses
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 79 ; 3 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !24, !range !40, !noundef !41 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !25, !range !40, !noundef !41 ; 2 uses
  %i.di = and i32 %i.co, 2
  %.not.i475 = icmp ne i32 %i.di, 0
  %spec.select.i = or i1 %.not.i475, %i.dd
  %i.dj = and i32 %.0372, 2
  %.not5.i = icmp eq i32 %i.dj, 0
  %.1.i = and i1 %.not5.i, %spec.select.i
  %i.dk = zext i1 %.1.i to i8
  store i8 %i.dk, ptr %i.db, align 2, !tbaa !23
  %i.dl = trunc nuw i8 %i.df to i1
  %i.dm = and i32 %i.co, 4
  %.not.i476 = icmp ne i32 %i.dm, 0
  %spec.select.i477 = or i1 %.not.i476, %i.dl
  %i.dn = and i32 %.0372, 4
  %.not5.i478 = icmp eq i32 %i.dn, 0
  %.1.i479 = and i1 %.not5.i478, %spec.select.i477
  %i.do = zext i1 %.1.i479 to i8
  store i8 %i.do, ptr %i.de, align 1, !tbaa !24
  %i.dp = trunc nuw i8 %i.dh to i1
  %i.dq = and i32 %i.co, 8
  %.not.i480 = icmp ne i32 %i.dq, 0
  %spec.select.i481 = or i1 %.not.i480, %i.dp
  %i.dr = and i32 %.0372, 8
  %.not5.i482 = icmp eq i32 %i.dr, 0
  %.1.i483 = and i1 %.not5.i482, %spec.select.i481
  %i.ds = zext i1 %.1.i483 to i8
  store i8 %i.ds, ptr %i.dg, align 8, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !36
  %i.dv = trunc i64 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !27
  store ptr %i.da, ptr %i.f, align 8, !tbaa !18
  %i.dy = tail call fastcc i32 @re_parse_disjunction(ptr noundef %0, i1 noundef zeroext %1)
  %.not426 = icmp eq i32 %i.dy, 0
  br i1 %.not426, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !12
  %.not.i484 = icmp eq i8 %i.ea, 41
  br i1 %.not.i484, label %bb.ai, label %re_parse_expect.exit486

re_parse_expect.exit486:                          ; preds = %bb.ah
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef 41)
  br label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !9
  store i8 %i.dc, ptr %i.db, align 2, !tbaa !23
  store i8 %i.df, ptr %i.de, align 1, !tbaa !24
  store i8 %i.dh, ptr %i.dg, align 8, !tbaa !25
  br label %re_emit_op.exit

bb.aj:                                            ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.ed, label %bb.at [
    i8 61, label %.thread575
    i8 33, label %.thread575
  ]

.thread575:                                       ; preds = %bb.aj, %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.am

bb.ak:                                            ; preds = %bb.x, %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.eh = load i8, ptr %i.eg, align 4, !tbaa !22, !range !40, !noundef !41
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !36
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.en = load i32, ptr %i.em, align 4, !tbaa !27
  br label %bb.am

bb.am:                                            ; preds = %.thread575, %bb.al, %bb.ak
  %.0382.in584.in = phi i8 [ %i.cd, %bb.ak ], [ %i.cd, %bb.al ], [ %i.ed, %.thread575 ]
  %.0381583 = phi i1 [ false, %bb.ak ], [ false, %bb.al ], [ true, %.thread575 ]
  %storemerge582 = phi ptr [ %i.ef, %bb.ak ], [ %i.ef, %bb.al ], [ %i.ee, %.thread575 ]
  %.1385 = phi i32 [ 0, %bb.ak ], [ %i.en, %bb.al ], [ 0, %.thread575 ]
  %.1367 = phi i32 [ -1, %bb.ak ], [ %i.el, %bb.al ], [ -1, %.thread575 ]
  %.0382.in584 = icmp eq i8 %.0382.in584.in, 33   ; 2 uses
  %i.eo = select i1 %.0382.in584, i32 41, i32 40
  %i.ep = tail call fastcc i32 @re_emit_op_u32(ptr noundef %0, i32 noundef %i.eo, i32 noundef 0) ; 2 uses
  store ptr %storemerge582, ptr %i.f, align 8, !tbaa !18
  %i.eq = tail call fastcc i32 @re_parse_disjunction(ptr noundef %0, i1 noundef zeroext %.0381583)
  %.not422 = icmp eq i32 %i.eq, 0
  br i1 %.not422, label %bb.an, label %.thread

end_hunk_1
begin_hunk_2_@re_parse_term:bb.a
bb.bj:                                            ; preds = %bb.c
  %i.hg = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 5 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.hh, label %bb.dm [
    i8 57, label %.lr.ph.split.i.preheader
    i8 56, label %.lr.ph.split.i.preheader
    i8 107, label %bb.bu
    i8 48, label %bb.ci
    i8 49, label %.lr.ph.split.i.preheader
    i8 50, label %.lr.ph.split.i.preheader
    i8 51, label %.lr.ph.split.i.preheader
    i8 52, label %.lr.ph.split.i.preheader
    i8 53, label %.lr.ph.split.i.preheader
    i8 54, label %.lr.ph.split.i.preheader
    i8 55, label %.lr.ph.split.i.preheader
    i8 98, label %bb.bp
    i8 66, label %bb.bk
  ]

.lr.ph.split.i.preheader:                         ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj
  br label %.lr.ph.split.i

bb.bk:                                            ; preds = %bb.bj
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hj = load i8, ptr %i.hi, align 2, !tbaa !23, !range !40, !noundef !41
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.hm = load i8, ptr %i.hl, align 4, !tbaa !22, !range !40, !noundef !41
  %i.hn = or disjoint i8 %i.hm, 30
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ho = phi i8 [ 30, %bb.bk ], [ %i.hn, %bb.bl ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !33
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !32 ; 3 uses
  %i.ht = icmp eq i64 %i.hq, %i.hs
  br i1 %i.ht, label %bb.bn, label %bb.bo, !prof !34

bb.bn:                                            ; preds = %bb.bm
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.ho)
  br label %re_emit_op.exit499

bb.bo:                                            ; preds = %bb.bm
  %i.hu = load ptr, ptr %0, align 8, !tbaa !35
  %i.hv = add i64 %i.hs, 1
  store i64 %i.hv, ptr %i.hr, align 8, !tbaa !32
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 %i.ho, ptr %i.hw, align 1, !tbaa !12
  br label %re_emit_op.exit499

bb.bp:                                            ; preds = %bb.bj
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !23, !range !40, !noundef !41
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ib = load i8, ptr %i.ia, align 4, !tbaa !22, !range !40, !noundef !41
  %i.ic = or disjoint i8 %i.ib, 28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.id = phi i8 [ 28, %bb.bp ], [ %i.ic, %bb.bq ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !33
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !32 ; 3 uses
  %i.ii = icmp eq i64 %i.if, %i.ih
  br i1 %i.ii, label %bb.bs, label %bb.bt, !prof !34

bb.bs:                                            ; preds = %bb.br
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.id)
  br label %re_emit_op.exit499

bb.bt:                                            ; preds = %bb.br
  %i.ij = load ptr, ptr %0, align 8, !tbaa !35
  %i.ik = add i64 %i.ih, 1
  store i64 %i.ik, ptr %i.ig, align 8, !tbaa !32
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ih
  store i8 %i.id, ptr %i.il, align 1, !tbaa !12
  br label %re_emit_op.exit499

re_emit_op.exit499:                               ; preds = %bb.bt, %bb.bs, %bb.bo, %bb.bn
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  br label %re_emit_op.exit.thread

bb.bu:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.io = load i8, ptr %i.in, align 1, !tbaa !12
  %.not416 = icmp eq i8 %i.io, 60
  br i1 %.not416, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.iq = load i8, ptr %i.ip, align 4, !tbaa !22, !range !40, !noundef !41
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %.thread591, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.is = tail call fastcc zeroext i1 @re_has_named_captures(ptr noundef %0)
  br i1 %i.is, label %.thread591, label %.thread596

bb.bx:                                            ; preds = %bb.bu
  %i.it = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store ptr %i.it, ptr %i.b, align 8, !tbaa !9
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.iv = call fastcc i32 @re_parse_group_name(ptr noundef %i.iu, ptr noundef %i.b)
  %.not417 = icmp eq i32 %i.iv, 0
  br i1 %.not417, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ix = load i8, ptr %i.iw, align 4, !tbaa !22, !range !40, !noundef !41
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %.thread591, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iz = tail call fastcc zeroext i1 @re_has_named_captures(ptr noundef %0)
  br i1 %i.iz, label %.thread591, label %.thread596

bb.ca:                                            ; preds = %bb.bx
  %i.ja = tail call fastcc i32 @find_group_name(ptr noundef %0, ptr noundef %i.iu, i1 noundef zeroext false) ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 0                    ; 2 uses
  br i1 %i.jb, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.jc = call fastcc i32 @re_parse_captures(ptr noundef %0, ptr noundef %i.c, ptr noundef nonnull %i.iu, i1 noundef zeroext false) ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.jf = load i8, ptr %i.je, align 4, !tbaa !22, !range !40, !noundef !41
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %.thread591, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jh = tail call fastcc zeroext i1 @re_has_named_captures(ptr noundef %0)
  br i1 %i.jh, label %.thread591, label %.thread596

bb.ce:                                            ; preds = %bb.cb, %bb.ca
  %.0360 = phi i32 [ %i.ja, %bb.ca ], [ %i.jc, %bb.cb ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !36
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !27
  %i.jn = select i1 %1, i32 34, i32 32
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !23, !range !40, !noundef !41
  %i.jq = zext nneg i8 %i.jp to i32
  %i.jr = or disjoint i32 %i.jn, %i.jq
  tail call fastcc void @re_emit_op_u8(ptr noundef %0, i32 noundef %i.jr, i32 noundef %.0360)
  br i1 %i.jb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.js = call fastcc i32 @re_parse_captures(ptr noundef %0, ptr noundef %i.c, ptr noundef nonnull %i.iu, i1 noundef zeroext true) ; 0 uses
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.jt = tail call fastcc i32 @find_group_name(ptr noundef %0, ptr noundef %i.iu, i1 noundef zeroext true) ; 0 uses
  br label %bb.ch

.thread591:                                       ; preds = %bb.cc, %bb.cd, %bb.by, %bb.bz, %bb.bv, %bb.bw
  %.str.11.sink = phi ptr [ @.str.7, %bb.by ], [ @.str.11, %bb.bv ], [ @.str.11, %bb.bw ], [ @.str.7, %bb.bz ], [ @.str.12, %bb.cd ], [ @.str.12, %bb.cc ]
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull %.str.11.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.thread

.thread596:                                       ; preds = %bb.cd, %bb.bz, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.dm

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !9
  store ptr %i.ju, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %re_emit_op.exit

bb.ci:                                            ; preds = %bb.bj
  %i.jv = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  store ptr %i.jv, ptr %i.a, align 8, !tbaa !9
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.jx = load i8, ptr %i.jw, align 4, !tbaa !22, !range !40, !noundef !41
  %i.jy = trunc nuw i8 %i.jx to i1
  %i.jz = load i8, ptr %i.jv, align 1, !tbaa !12  ; 3 uses
  br i1 %i.jy, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ka = add i8 %i.jz, -48
  %i.kb = icmp ult i8 %i.ka, 10
  br i1 %i.kb, label %bb.ck, label %dbuf_putc.exit507.thread

bb.ck:                                            ; preds = %bb.cj
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.13)
  br label %.thread

bb.cl:                                            ; preds = %bb.ci
  %i.kc = and i8 %i.jz, -8
  %or.cond450 = icmp eq i8 %i.kc, 48
  br i1 %or.cond450, label %bb.cm, label %dbuf_putc.exit507.thread

bb.cm:                                            ; preds = %bb.cl
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  store ptr %i.kd, ptr %i.a, align 8, !tbaa !9
  %i.ke = zext nneg i8 %i.jz to i32
  %i.kf = add nsw i32 %i.ke, -48                  ; 2 uses
  %i.kg = load i8, ptr %i.kd, align 1, !tbaa !12  ; 2 uses
  %i.kh = and i8 %i.kg, -8
  %or.cond451 = icmp eq i8 %i.kh, 48
  br i1 %or.cond451, label %bb.cn, label %dbuf_putc.exit507.thread

bb.cn:                                            ; preds = %bb.cm
  %i.ki = shl nuw nsw i32 %i.kf, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.kj, ptr %i.a, align 8, !tbaa !9
  %i.kk = zext nneg i8 %i.kg to i32
  %i.kl = add nsw i32 %i.ki, -48
  %i.km = add nsw i32 %i.kl, %i.kk
  br label %dbuf_putc.exit507.thread

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.co
  %i.kn = phi i8 [ %i.ku, %bb.co ], [ %i.hh, %.lr.ph.split.i.preheader ]
  %.021.i = phi i64 [ %i.kr, %bb.co ], [ 0, %.lr.ph.split.i.preheader ]
  %.01320.i = phi ptr [ %i.kt, %bb.co ], [ %i.hg, %.lr.ph.split.i.preheader ]
  %i.ko = mul i64 %.021.i, 10
  %i.kp = zext nneg i8 %i.kn to i64
  %i.kq = add nsw i64 %i.kp, -48
  %i.kr = add nsw i64 %i.kq, %i.ko                ; 4 uses
  %i.ks = icmp ult i64 %i.kr, 2147483647
  br i1 %i.ks, label %bb.co, label %parse_digits.exit505.thread

bb.co:                                            ; preds = %.lr.ph.split.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.01320.i, i64 1 ; 3 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !12  ; 2 uses
  %i.kv = add i8 %i.ku, -58
  %or.cond.i = icmp ult i8 %i.kv, -10
  br i1 %or.cond.i, label %parse_digits.exit505, label %.lr.ph.split.i

parse_digits.exit505:                             ; preds = %bb.co
  store ptr %i.kt, ptr %i.a, align 8, !tbaa !9
  %i.kw = trunc nuw nsw i64 %i.kr to i32          ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !27 ; 2 uses
  %.not413 = icmp sgt i32 %i.ky, %i.kw
  br i1 %.not413, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %parse_digits.exit505
  %i.kz = tail call fastcc i32 @re_count_captures(ptr noundef %0)
  %.not414 = icmp sgt i32 %i.kz, %i.kw
  br i1 %.not414, label %._crit_edge, label %parse_digits.exit505.thread

._crit_edge:                                      ; preds = %bb.cp
  %.pre682 = load i32, ptr %i.kx, align 4, !tbaa !27
  br label %bb.cx

parse_digits.exit505.thread:                      ; preds = %.lr.ph.split.i, %bb.cp
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.lb = load i8, ptr %i.la, align 4, !tbaa !22, !range !40, !noundef !41
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %dbuf_putc.exit507, label %bb.cq

bb.cq:                                            ; preds = %parse_digits.exit505.thread
  store ptr %i.hg, ptr %i.a, align 8, !tbaa !9
  %i.ld = load i8, ptr %i.hg, align 1, !tbaa !12  ; 5 uses
  %i.le = icmp ult i8 %i.ld, 56
  br i1 %i.le, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  %i.lf = icmp samesign ult i8 %i.ld, 52
  br i1 %i.lf, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lg = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 3 uses
  store ptr %i.lg, ptr %i.a, align 8, !tbaa !9
  %i.lh = zext nneg i8 %i.ld to i32
  %i.li = add nsw i32 %i.lh, -48
  %.pre = load i8, ptr %i.lg, align 1, !tbaa !12
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lj = phi i8 [ %.pre, %bb.cs ], [ %i.ld, %bb.cr ] ; 2 uses
  %i.lk = phi ptr [ %i.lg, %bb.cs ], [ %i.hg, %bb.cr ] ; 2 uses
  %.0361 = phi i32 [ %i.li, %bb.cs ], [ 0, %bb.cr ] ; 2 uses
  %i.ll = and i8 %i.lj, -8
  %or.cond452 = icmp eq i8 %i.ll, 48
  br i1 %or.cond452, label %bb.cu, label %dbuf_putc.exit507.thread

bb.cu:                                            ; preds = %bb.ct
  %i.lm = shl nsw i32 %.0361, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 2 uses
  store ptr %i.ln, ptr %i.a, align 8, !tbaa !9
  %i.lo = zext nneg i8 %i.lj to i32
  %i.lp = add nsw i32 %i.lm, -48
  %i.lq = add nsw i32 %i.lp, %i.lo                ; 2 uses
  %i.lr = load i8, ptr %i.ln, align 1, !tbaa !12  ; 2 uses
  %i.ls = and i8 %i.lr, -8
  %or.cond453 = icmp eq i8 %i.ls, 48
  br i1 %or.cond453, label %bb.cv, label %dbuf_putc.exit507.thread

bb.cv:                                            ; preds = %bb.cu
  %i.lt = shl nsw i32 %i.lq, 3
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  store ptr %i.lu, ptr %i.a, align 8, !tbaa !9
  %i.lv = zext nneg i8 %i.lr to i32
  %i.lw = add nsw i32 %i.lt, -48
  %i.lx = add nsw i32 %i.lw, %i.lv
  br label %dbuf_putc.exit507.thread

bb.cw:                                            ; preds = %bb.cq
  %i.ly = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.ly, ptr %i.a, align 8, !tbaa !9
  %i.lz = zext i8 %i.ld to i32
  br label %dbuf_putc.exit507.thread

bb.cx:                                            ; preds = %._crit_edge, %parse_digits.exit505
  %i.ma = phi i32 [ %.pre682, %._crit_edge ], [ %i.ky, %parse_digits.exit505 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !36
  %i.md = trunc i64 %i.mc to i32                  ; 2 uses
  %i.me = select i1 %1, i32 34, i32 32
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.mg = load i8, ptr %i.mf, align 2, !tbaa !23, !range !40, !noundef !41
  %i.mh = zext nneg i8 %i.mg to i32
  %i.mi = or disjoint i32 %i.me, %i.mh
  tail call fastcc void @re_emit_op_u8(ptr noundef %0, i32 noundef %i.mi, i32 noundef 1)
  %i.mj = trunc i64 %i.kr to i8                   ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !33
  %i.mm = load i64, ptr %i.mb, align 8, !tbaa !32 ; 3 uses
  %i.mn = icmp eq i64 %i.ml, %i.mm
  br i1 %i.mn, label %bb.cy, label %bb.cz, !prof !34

bb.cy:                                            ; preds = %bb.cx
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.mj)
  br label %re_emit_op.exit

bb.cz:                                            ; preds = %bb.cx
  %i.mo = load ptr, ptr %0, align 8, !tbaa !35
  %i.mp = add i64 %i.mm, 1
  store i64 %i.mp, ptr %i.mb, align 8, !tbaa !32
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mm
  store i8 %i.mj, ptr %i.mq, align 1, !tbaa !12
  br label %re_emit_op.exit

dbuf_putc.exit507:                                ; preds = %parse_digits.exit505.thread
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.14)
  br label %.thread

bb.da:                                            ; preds = %bb.c
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !36 ; 4 uses
  %i.mt = trunc i64 %i.ms to i32                  ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !27 ; 3 uses
  br i1 %1, label %bb.db, label %re_emit_op.exit508

bb.db:                                            ; preds = %bb.da
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !33
  %i.my = icmp eq i64 %i.mx, %i.ms
  br i1 %i.my, label %bb.dc, label %bb.dd, !prof !34

bb.dc:                                            ; preds = %bb.db
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext 44)
  br label %re_emit_op.exit508

bb.dd:                                            ; preds = %bb.db
  %i.mz = load ptr, ptr %0, align 8, !tbaa !35
  %i.na = add i64 %i.ms, 1
  store i64 %i.na, ptr %i.mr, align 8, !tbaa !32
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.ms
  store i8 44, ptr %i.nb, align 1, !tbaa !12
  br label %re_emit_op.exit508

re_emit_op.exit508:                               ; preds = %bb.dd, %bb.dc, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.nc = call fastcc i32 @re_parse_nested_class(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.a)
  %.not.i509 = icmp eq i32 %i.nc, 0
  br i1 %.not.i509, label %bb.de, label %re_parse_char_class.exit.thread

re_parse_char_class.exit.thread:                  ; preds = %re_emit_op.exit508
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread

bb.de:                                            ; preds = %re_emit_op.exit508
  %i.nd = call fastcc i32 @re_emit_string_list(ptr noundef nonnull %0, ptr noundef %2)
  %.not7.i.not = icmp eq i32 %i.nd, 0
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !81 ; 2 uses
  %.not19.i.i = icmp eq i32 %i.nf, 0
  br i1 %.not19.i.i, label %re_parse_char_class.exit, label %.lr.ph17.i.i
end_hunk_2
begin_hunk_3_@re_parse_term:bb.a

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.ps = phi i8 [ %.pre684, %bb.dz ], [ 0, %bb.dy ] ; 2 uses
  %.4365 = phi i32 [ %i.pr, %bb.dz ], [ %.3364, %bb.dy ] ; 4 uses
  %i.pt = icmp slt i32 %.4365, 65536
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !33
  %i.pw = load i64, ptr %i.oj, align 8, !tbaa !32 ; 5 uses
  %i.px = icmp eq i64 %i.pv, %i.pw                ; 2 uses
  br i1 %i.pt, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  %i.py = add nuw nsw i8 %i.ps, 1                 ; 2 uses
  br i1 %i.px, label %bb.ec, label %bb.ed, !prof !34

bb.ec:                                            ; preds = %bb.eb
  call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.py)
  br label %dbuf_putc.exit.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.pz = load ptr, ptr %0, align 8, !tbaa !35
  %i.qa = add i64 %i.pw, 1
  store i64 %i.qa, ptr %i.oj, align 8, !tbaa !32
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pw
  store i8 %i.py, ptr %i.qb, align 1, !tbaa !12
  br label %dbuf_putc.exit.i.i

dbuf_putc.exit.i.i:                               ; preds = %bb.ed, %bb.ec
  %i.qc = trunc i32 %.4365 to i16                 ; 2 uses
  %i.qd = load i64, ptr %i.pu, align 8, !tbaa !33
  %i.qe = load i64, ptr %i.oj, align 8, !tbaa !32 ; 2 uses
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = icmp ult i64 %i.qf, 2
  br i1 %i.qg, label %bb.ee, label %bb.ef, !prof !34

bb.ee:                                            ; preds = %dbuf_putc.exit.i.i
  call fastcc void @__dbuf_put_u16(ptr noundef nonnull %0, i16 noundef zeroext %i.qc)
  br label %re_emit_char.exit

bb.ef:                                            ; preds = %dbuf_putc.exit.i.i
  %i.qh = load ptr, ptr %0, align 8, !tbaa !35
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qe
  store i16 %i.qc, ptr %i.qi, align 1
  %i.qj = load i64, ptr %i.oj, align 8, !tbaa !32
  %i.qk = add i64 %i.qj, 2
  store i64 %i.qk, ptr %i.oj, align 8, !tbaa !32
  br label %re_emit_char.exit

bb.eg:                                            ; preds = %bb.ea
  %i.ql = add nuw nsw i8 %i.ps, 3                 ; 2 uses
  br i1 %i.px, label %bb.eh, label %bb.ei, !prof !34

bb.eh:                                            ; preds = %bb.eg
  call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.ql)
  br label %dbuf_putc.exit.i6.i

bb.ei:                                            ; preds = %bb.eg
  %i.qm = load ptr, ptr %0, align 8, !tbaa !35
  %i.qn = add i64 %i.pw, 1
  store i64 %i.qn, ptr %i.oj, align 8, !tbaa !32
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.pw
  store i8 %i.ql, ptr %i.qo, align 1, !tbaa !12
  br label %dbuf_putc.exit.i6.i

dbuf_putc.exit.i6.i:                              ; preds = %bb.ei, %bb.eh
  %i.qp = load i64, ptr %i.oj, align 8, !tbaa !36 ; 2 uses
  %i.qq = load i64, ptr %i.pu, align 8, !tbaa !33
  %i.qr = sub i64 %i.qq, %i.qp
  %i.qs = icmp ult i64 %i.qr, 4
  br i1 %i.qs, label %bb.ej, label %bb.ek, !prof !34

bb.ej:                                            ; preds = %dbuf_putc.exit.i6.i
  %i.qt = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %0, i32 noundef %.4365) ; 0 uses
  br label %re_emit_char.exit

bb.ek:                                            ; preds = %dbuf_putc.exit.i6.i
  %i.qu = load ptr, ptr %0, align 8, !tbaa !35
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qp
  store i32 %.4365, ptr %i.qv, align 1
  %i.qw = load i64, ptr %i.oj, align 8, !tbaa !32
  %i.qx = add i64 %i.qw, 4
  store i64 %i.qx, ptr %i.oj, align 8, !tbaa !32
  br label %re_emit_char.exit

.critedge456:                                     ; preds = %bb.dw, %bb.dv, %bb.dt, %bb.ds
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !81 ; 2 uses
  %.not19.i = icmp eq i32 %i.qz, 0
  br i1 %.not19.i, label %re_string_list_free.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.critedge456
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.el

bb.el:                                            ; preds = %._crit_edge.i517, %.lr.ph17.i
  %i.rc = phi i32 [ %i.qz, %.lr.ph17.i ], [ %i.rj, %._crit_edge.i517 ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i, %._crit_edge.i517 ] ; 2 uses
  %i.rd = load ptr, ptr %i.ra, align 8, !tbaa !87
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv.i
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !88 ; 2 uses
  %.not13.i = icmp eq ptr %i.rf, null
  br i1 %.not13.i, label %._crit_edge.i517, label %.lr.ph.i515

.lr.ph.i515:                                      ; preds = %bb.el, %.lr.ph.i515
  %.01214.i = phi ptr [ %i.rg, %.lr.ph.i515 ], [ %i.rf, %bb.el ] ; 2 uses
  %i.rg = load ptr, ptr %.01214.i, align 8, !tbaa !88 ; 2 uses
  %i.rh = load ptr, ptr %i.rb, align 8, !tbaa !90
  %i.ri = call ptr @lre_realloc(ptr noundef %i.rh, ptr noundef nonnull %.01214.i, i64 noundef 0) #20 ; 0 uses
  %.not.i516 = icmp eq ptr %i.rg, null
  br i1 %.not.i516, label %._crit_edge.loopexit.i, label %.lr.ph.i515, !llvm.loop !91

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i515
  %.pre.i = load i32, ptr %i.qy, align 4, !tbaa !81
  br label %._crit_edge.i517

._crit_edge.i517:                                 ; preds = %._crit_edge.loopexit.i, %bb.el
  %i.rj = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.rc, %bb.el ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.rk = zext i32 %i.rj to i64
  %i.rl = icmp samesign ult i64 %indvars.iv.next.i, %i.rk
  br i1 %i.rl, label %bb.el, label %re_string_list_free.exit, !llvm.loop !92

re_string_list_free.exit:                         ; preds = %._crit_edge.i517, %.critedge456
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !90
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !87
  %i.rq = call ptr @lre_realloc(ptr noundef %i.rn, ptr noundef %i.rp, i64 noundef 0) #20 ; 0 uses
  call void @cr_free(ptr noundef nonnull %3) #20
  br label %re_emit_char.exit

re_emit_char.exit:                                ; preds = %bb.ek, %bb.ej, %bb.ef, %bb.ee, %re_string_list_free.exit, %bb.dx
  br i1 %1, label %bb.em, label %re_emit_op.exit

bb.em:                                            ; preds = %re_emit_char.exit
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !33
  %i.rt = load i64, ptr %i.oj, align 8, !tbaa !32 ; 3 uses
  %i.ru = icmp eq i64 %i.rs, %i.rt
  br i1 %i.ru, label %bb.en, label %bb.eo, !prof !34

bb.en:                                            ; preds = %bb.em
  call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext 44)
  br label %re_emit_op.exit

bb.eo:                                            ; preds = %bb.em
  %i.rv = load ptr, ptr %0, align 8, !tbaa !35
  %i.rw = add i64 %i.rt, 1
  store i64 %i.rw, ptr %i.oj, align 8, !tbaa !32
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rt
  store i8 44, ptr %i.rx, align 1, !tbaa !12
  br label %re_emit_op.exit

.critedge:                                        ; preds = %bb.j
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.rz = load i8, ptr %i.ry, align 8, !tbaa !25, !range !40, !noundef !41
  %i.sa = add nuw nsw i8 %i.rz, 5                 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !33
  %i.sd = icmp eq i64 %i.sc, %i.ai
  br i1 %i.sd, label %bb.ep, label %bb.eq, !prof !34

bb.ep:                                            ; preds = %.critedge
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.sa)
  br label %re_emit_op.exit

bb.eq:                                            ; preds = %.critedge
  %i.se = load ptr, ptr %0, align 8, !tbaa !35
  %i.sf = add i64 %i.ai, 1
  store i64 %i.sf, ptr %i.ah, align 8, !tbaa !32
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.ai
  store i8 %i.sa, ptr %i.sg, align 1, !tbaa !12
  br label %re_emit_op.exit

re_emit_op.exit:                                  ; preds = %bb.cz, %bb.cy, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.dj, %bb.di, %bb.ch, %re_parse_expect.exit498.thread, %bb.ai, %re_parse_expect.exit.thread, %bb.q, %bb.p, %re_emit_char.exit, %bb.dg, %bb.as
  %.4388 = phi i32 [ %i.mv, %bb.dj ], [ %i.on, %re_emit_char.exit ], [ %i.mv, %bb.dg ], [ %i.al, %bb.p ], [ %i.mv, %bb.di ], [ %i.on, %bb.eo ], [ %i.ci, %re_parse_expect.exit.thread ], [ %i.dx, %bb.ai ], [ %.1385, %bb.as ], [ %i.gt, %re_parse_expect.exit498.thread ], [ %i.on, %bb.en ], [ %i.jm, %bb.ch ], [ %i.al, %bb.eq ], [ %i.al, %bb.q ], [ %i.al, %bb.ep ], [ %i.ma, %bb.cy ], [ %i.ma, %bb.cz ] ; 4 uses
  %.4370 = phi i32 [ %i.mt, %bb.dj ], [ %i.ol, %re_emit_char.exit ], [ %i.mt, %bb.dg ], [ %i.aj, %bb.p ], [ %i.mt, %bb.di ], [ %i.ol, %bb.eo ], [ %i.cm, %re_parse_expect.exit.thread ], [ %i.dv, %bb.ai ], [ %.1367, %bb.as ], [ %i.he, %re_parse_expect.exit498.thread ], [ %i.ol, %bb.en ], [ %i.jk, %bb.ch ], [ %i.aj, %bb.eq ], [ %i.aj, %bb.q ], [ %i.aj, %bb.ep ], [ %i.md, %bb.cy ], [ %i.md, %bb.cz ] ; 11 uses
  %i.sh = icmp sgt i32 %.4370, -1
  %.pre687 = load ptr, ptr %i.a, align 8, !tbaa !9 ; 9 uses
  br i1 %i.sh, label %bb.er, label %re_emit_op.exit.thread

bb.er:                                            ; preds = %re_emit_op.exit
  %i.si = load i8, ptr %.pre687, align 1, !tbaa !12
  switch i8 %i.si, label %re_emit_op.exit.thread [
    i8 42, label %bb.fa
    i8 43, label %bb.es
    i8 63, label %bb.et
    i8 123, label %bb.eu
  ]

bb.es:                                            ; preds = %bb.er
  br label %bb.fa

bb.et:                                            ; preds = %bb.er
  br label %bb.fa

bb.eu:                                            ; preds = %bb.er
  %i.sj = getelementptr inbounds nuw i8, ptr %.pre687, i64 1 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !12  ; 2 uses
  %i.sl = add i8 %i.sk, -48
  %i.sm = icmp ult i8 %i.sl, 10
  br i1 %i.sm, label %.lr.ph.split.us.i522, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.so = load i8, ptr %i.sn, align 4, !tbaa !22, !range !40, !noundef !41
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.ex, label %re_emit_op.exit.thread

.lr.ph.split.us.i522:                             ; preds = %bb.eu, %.lr.ph.split.us.i522
  %i.sq = phi i8 [ %i.sw, %.lr.ph.split.us.i522 ], [ %i.sk, %bb.eu ]
  %.021.us.i523 = phi i64 [ %.mux.us.i525, %.lr.ph.split.us.i522 ], [ 0, %bb.eu ]
  %.01320.us.i524 = phi ptr [ %i.sv, %.lr.ph.split.us.i522 ], [ %i.sj, %bb.eu ] ; 2 uses
  %i.sr = mul nuw nsw i64 %.021.us.i523, 10
  %i.ss = zext nneg i8 %i.sq to i64
  %i.st = add nsw i64 %i.ss, -48
  %i.su = add nuw nsw i64 %i.st, %i.sr
  %.mux.us.i525 = call i64 @llvm.umin.i64(i64 %i.su, i64 2147483647) ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.01320.us.i524, i64 1 ; 3 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !12  ; 4 uses
  %i.sx = add i8 %i.sw, -58
  %or.cond.us.i526 = icmp ult i8 %i.sx, -10
  br i1 %or.cond.us.i526, label %parse_digits.exit531, label %.lr.ph.split.us.i522

parse_digits.exit531:                             ; preds = %.lr.ph.split.us.i522
  %i.sy = trunc nuw nsw i64 %.mux.us.i525 to i32  ; 2 uses
  %i.sz = icmp eq i8 %i.sw, 44
  br i1 %i.sz, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %parse_digits.exit531
  %i.ta = getelementptr inbounds nuw i8, ptr %.01320.us.i524, i64 2 ; 3 uses
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !12  ; 3 uses
  %i.tc = add i8 %i.tb, -48
  %i.td = icmp ult i8 %i.tc, 10
  br i1 %i.td, label %.lr.ph.split.us.i534, label %bb.ey

.lr.ph.split.us.i534:                             ; preds = %bb.ew, %.lr.ph.split.us.i534
  %i.te = phi i8 [ %i.tk, %.lr.ph.split.us.i534 ], [ %i.tb, %bb.ew ]
  %.021.us.i535 = phi i64 [ %.mux.us.i537, %.lr.ph.split.us.i534 ], [ 0, %bb.ew ]
  %.01320.us.i536 = phi ptr [ %i.tj, %.lr.ph.split.us.i534 ], [ %i.ta, %bb.ew ]
  %i.tf = mul nuw nsw i64 %.021.us.i535, 10
  %i.tg = zext nneg i8 %i.te to i64
  %i.th = add nsw i64 %i.tg, -48
  %i.ti = add nuw nsw i64 %i.th, %i.tf            ; 2 uses
  %.mux.us.i537 = call i64 @llvm.umin.i64(i64 %i.ti, i64 2147483647) ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.01320.us.i536, i64 1 ; 3 uses
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !12  ; 3 uses
  %i.tl = add i8 %i.tk, -58
  %or.cond.us.i538 = icmp ult i8 %i.tl, -10
  br i1 %or.cond.us.i538, label %parse_digits.exit543, label %.lr.ph.split.us.i534

parse_digits.exit543:                             ; preds = %.lr.ph.split.us.i534
  %i.tm = trunc nuw nsw i64 %.mux.us.i537 to i32
  %i.tn = icmp ult i64 %i.ti, %.mux.us.i525
  br i1 %i.tn, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %parse_digits.exit543, %bb.ev
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.15)
  br label %.thread

bb.ey:                                            ; preds = %bb.ew, %parse_digits.exit543, %parse_digits.exit531
  %4 = phi i8 [ %i.tk, %parse_digits.exit543 ], [ %i.sw, %parse_digits.exit531 ], [ %i.tb, %bb.ew ]
  %5 = phi ptr [ %i.tj, %parse_digits.exit543 ], [ %i.sv, %parse_digits.exit531 ], [ %i.ta, %bb.ew ]
  %.1390 = phi i32 [ %i.tm, %parse_digits.exit543 ], [ %i.sy, %parse_digits.exit531 ], [ 2147483647, %bb.ew ]
  %cond = icmp eq i8 %4, 125
  br i1 %cond, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.tp = load i8, ptr %i.to, align 4, !tbaa !22, !range !40, !noundef !41
  %i.tq = trunc nuw i8 %i.tp to i1
  br i1 %i.tq, label %re_parse_expect.exit546, label %re_emit_op.exit.thread

re_parse_expect.exit546:                          ; preds = %bb.ez
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef 125)
  br label %.thread

bb.fa:                                            ; preds = %bb.ey, %bb.er, %bb.et, %bb.es
  %.sink770 = phi ptr [ %.pre687, %bb.er ], [ %.pre687, %bb.et ], [ %.pre687, %bb.es ], [ %5, %bb.ey ] ; 2 uses
  %.2395 = phi i32 [ 0, %bb.er ], [ 0, %bb.et ], [ 1, %bb.es ], [ %i.sy, %bb.ey ] ; 6 uses
  %.3392 = phi i32 [ 2147483647, %bb.er ], [ 1, %bb.et ], [ 2147483647, %bb.es ], [ %.1390, %bb.ey ] ; 9 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sink770, i64 1 ; 2 uses
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !12
  %i.tt = icmp ne i8 %i.ts, 63                    ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.sink770, i64 2
  %i.tv = select i1 %i.tt, ptr %i.tr, ptr %i.tu   ; 8 uses
  %i.tw = load ptr, ptr %0, align 8, !tbaa !42    ; 3 uses
  %i.tx = zext nneg i32 %.4370 to i64             ; 15 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !36 ; 8 uses
  %i.ub = trunc i64 %i.ua to i32
  %i.uc = sub i32 %i.ub, %.4370                   ; 4 uses
  %i.ud = icmp sgt i32 %i.uc, 0
  br i1 %i.ud, label %.lr.ph.i548.outer, label %.thread641

.lr.ph.i548.outer:                                ; preds = %bb.fa, %.thread733
  %.029.i.ph = phi i1 [ true, %.thread733 ], [ false, %bb.fa ]
  %.02228.i.ph = phi i1 [ %.02228.i, %.thread733 ], [ true, %bb.fa ]
  %.02527.i.ph = phi i32 [ %i.uz, %.thread733 ], [ 0, %bb.fa ]
  br label %.lr.ph.i548

.lr.ph.i548:                                      ; preds = %.lr.ph.i548.outer, %bb.fe
  %.02228.i = phi i1 [ %.123.i, %bb.fe ], [ %.02228.i.ph, %.lr.ph.i548.outer ] ; 17 uses
  %.02527.i = phi i32 [ %i.ut, %bb.fe ], [ %.02527.i.ph, %.lr.ph.i548.outer ] ; 3 uses
  %i.ue = sext i32 %.02527.i to i64
  %i.uf = getelementptr inbounds i8, ptr %i.ty, i64 %i.ue ; 4 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !12  ; 2 uses
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw i8, ptr @reopcode_info, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !43
  %i.uk = zext i8 %i.uj to i32                    ; 18 uses
  switch i8 %i.ug, label %re_need_check_adv_and_capture_init.exit.thread [
    i8 36, label %bb.fb
    i8 37, label %bb.fb
    i8 38, label %bb.fc
    i8 39, label %bb.fc
    i8 1, label %bb.fd
    i8 2, label %bb.fd
    i8 3, label %bb.fd
    i8 4, label %bb.fd
    i8 5, label %bb.fd
    i8 6, label %bb.fd
    i8 7, label %bb.fd
    i8 8, label %bb.fd
    i8 9, label %bb.fe
    i8 10, label %bb.fe
    i8 11, label %bb.fe
    i8 12, label %bb.fe
    i8 27, label %bb.fe
    i8 42, label %bb.fe
    i8 28, label %bb.fe
    i8 29, label %bb.fe
    i8 30, label %bb.fe
    i8 31, label %bb.fe
    i8 44, label %bb.fe
    i8 19, label %bb.fe
    i8 20, label %bb.fe
    i8 21, label %bb.fe
    i8 32, label %.thread733
    i8 33, label %.thread733
    i8 34, label %.thread733
    i8 35, label %.thread733
  ]

bb.fb:                                            ; preds = %.lr.ph.i548, %.lr.ph.i548
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  %.val26.i = load i16, ptr %i.ul, align 1
  %i.um = zext i16 %.val26.i to i32
  %i.un = shl nuw nsw i32 %i.um, 2
  %i.uo = add nuw nsw i32 %i.un, %i.uk
  br label %bb.fe

bb.fc:                                            ; preds = %.lr.ph.i548, %.lr.ph.i548
  %i.up = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  %.val.i = load i16, ptr %i.up, align 1
  %i.uq = zext i16 %.val.i to i32
  %i.ur = shl nuw nsw i32 %i.uq, 3
  %i.us = add nuw nsw i32 %i.ur, %i.uk
  br label %bb.fe

bb.fd:                                            ; preds = %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548
  %.024.i = phi i32 [ %i.uo, %bb.fb ], [ %i.us, %bb.fc ], [ %i.uk, %bb.fd ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ], [ %i.uk, %.lr.ph.i548 ]
  %.123.i = phi i1 [ false, %bb.fb ], [ false, %bb.fc ], [ false, %bb.fd ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.lr.ph.i548 ] ; 4 uses
  %i.ut = add nsw i32 %.024.i, %.02527.i          ; 2 uses
  %i.uu = icmp slt i32 %i.ut, %i.uc
  br i1 %i.uu, label %.lr.ph.i548, label %re_need_check_adv_and_capture_init.exit, !llvm.loop !93

.thread733:                                       ; preds = %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548, %.lr.ph.i548
  %i.uv = getelementptr i8, ptr %i.uf, i64 1
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !12
  %i.ux = zext i8 %i.uw to i32
  %i.uy = add nuw nsw i32 %i.ux, %i.uk
  %i.uz = add nsw i32 %i.uy, %.02527.i            ; 2 uses
  %i.va = icmp slt i32 %i.uz, %i.uc
  br i1 %i.va, label %.lr.ph.i548.outer, label %re_need_check_adv_and_capture_init.exit.thread, !llvm.loop !93

re_need_check_adv_and_capture_init.exit:          ; preds = %bb.fe
  br i1 %.029.i.ph, label %re_need_check_adv_and_capture_init.exit.thread, label %.thread742

re_need_check_adv_and_capture_init.exit.thread:   ; preds = %.thread733, %.lr.ph.i548, %re_need_check_adv_and_capture_init.exit
  %.022.lcssa.i635 = phi i1 [ %.123.i, %re_need_check_adv_and_capture_init.exit ], [ %.02228.i, %.lr.ph.i548 ], [ %.02228.i, %.thread733 ] ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !27
  %.not438 = icmp eq i32 %.4388, %i.vc
  br i1 %.not438, label %bb.fl, label %bb.ff

bb.ff:                                            ; preds = %re_need_check_adv_and_capture_init.exit.thread
  %i.vd = add nuw i64 %i.ua, 3                    ; 3 uses
  %i.ve = icmp ugt i64 %i.ua, -4
  br i1 %i.ve, label %re_emit_goto.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !33 ; 4 uses
  %i.vh = icmp ugt i64 %i.vd, %i.vg
  br i1 %i.vh, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.vi = load i8, ptr %i.d, align 8, !tbaa !39, !range !40, !noundef !41
  %i.vj = trunc nuw i8 %i.vi to i1
  br i1 %i.vj, label %re_emit_goto.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.vk = lshr i64 %i.vg, 1
  %i.vl = add i64 %i.vk, %i.vg                    ; 2 uses
  %i.vm = icmp ult i64 %i.vl, %i.vg
  %i.vn = call i64 @llvm.umax.i64(i64 %i.vl, i64 %i.vd)
  %.0.i.i = select i1 %i.vm, i64 %i.vd, i64 %i.vn ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !31
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !30
  %i.vs = call ptr %i.vp(ptr noundef %i.vr, ptr noundef nonnull %i.tw, i64 noundef %.0.i.i) #20, !inline_history !51 ; 3 uses
  %.not.i.i552 = icmp eq ptr %i.vs, null
  br i1 %.not.i.i552, label %re_emit_goto.exit.sink.split, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store ptr %i.vs, ptr %0, align 8, !tbaa !35
  store i64 %.0.i.i, ptr %i.vf, align 8, !tbaa !33
  %.pre13.i = load i64, ptr %i.tz, align 8, !tbaa !32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fg, %bb.fj
  %i.vt = phi i64 [ %.pre13.i, %bb.fj ], [ %i.ua, %bb.fg ]
  %i.vu = phi ptr [ %i.vs, %bb.fj ], [ %i.tw, %bb.fg ]
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.tx ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 3
  %i.vx = sub i64 %i.vt, %i.tx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.vw, ptr align 1 %i.vv, i64 %i.vx, i1 false)
  %i.vy = load i64, ptr %i.tz, align 8, !tbaa !32
  %i.vz = add i64 %i.vy, 3
  store i64 %i.vz, ptr %i.tz, align 8, !tbaa !32
  %i.wa = load ptr, ptr %0, align 8, !tbaa !42
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.tx
  store i8 21, ptr %i.wb, align 1, !tbaa !12
  %i.wc = trunc i32 %.4388 to i8
  %i.wd = load ptr, ptr %0, align 8, !tbaa !42
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.tx
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1
  store i8 %i.wc, ptr %i.wf, align 1, !tbaa !12
  %i.wg = load i32, ptr %i.vb, align 4, !tbaa !27
  %i.wh = trunc i32 %i.wg to i8
  %i.wi = add i8 %i.wh, -1
  %i.wj = load ptr, ptr %0, align 8, !tbaa !42
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.tx
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i8 %i.wi, ptr %i.wl, align 1, !tbaa !12
  %.pre686 = load i64, ptr %i.tz, align 8, !tbaa !36
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %re_need_check_adv_and_capture_init.exit.thread
  %i.wm = phi i64 [ %.pre686, %bb.fk ], [ %i.ua, %re_need_check_adv_and_capture_init.exit.thread ] ; 2 uses
  %i.wn = icmp eq i32 %.2395, 0
  br i1 %i.wn, label %bb.fm, label %bb.gb

.thread742:                                       ; preds = %re_need_check_adv_and_capture_init.exit
  %i.wo = icmp eq i32 %.2395, 0
  br i1 %i.wo, label %.thread746, label %bb.gb

.thread746:                                       ; preds = %.thread742
  %i.wp = trunc i64 %i.ua to i32
  %i.wq = sub i32 %i.wp, %.4370
  br label %.thread645

.thread641:                                       ; preds = %bb.fa
  %i.wr = icmp eq i32 %.2395, 0
  br i1 %i.wr, label %.thread645, label %.thread652

bb.fm:                                            ; preds = %bb.fl
  %i.ws = trunc i64 %i.wm to i32
  %i.wt = sub i32 %i.ws, %.4370
  br label %bb.fp

.thread645:                                       ; preds = %.thread746, %.thread641
  %.022.lcssa.i634644647 = phi i1 [ %.123.i, %.thread746 ], [ true, %.thread641 ] ; 2 uses
  %i.wu = phi i32 [ %i.wq, %.thread746 ], [ %i.uc, %.thread641 ] ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !27
end_hunk_3
begin_hunk_4_@re_parse_term:bb.a

.thread:                                          ; preds = %re_parse_expect.exit546, %bb.ex, %re_parse_expect.exit486, %bb.ag, %re_parse_expect.exit474, %bb.ac, %bb.ae, %bb.aa, %re_parse_char_class.exit.thread, %dbuf_putc.exit507, %.thread591, %re_parse_expect.exit498, %re_parse_expect.exit489, %re_parse_expect.exit, %bb.dm, %re_parse_char_class.exit, %bb.bh, %bb.am, %bb.y, %bb.dx, %re_emit_goto.exit, %re_emit_op.exit.thread, %bb.dl, %bb.ck, %bb.bg, %bb.ba, %bb.aw, %bb.au, %bb.ar, %bb.v, %bb.s, %bb.b
  %.10 = phi i32 [ -1, %bb.b ], [ -1, %re_parse_char_class.exit ], [ 0, %re_emit_op.exit.thread ], [ -1, %bb.dl ], [ -1, %bb.dm ], [ -1, %re_emit_goto.exit ], [ -1, %re_parse_expect.exit486 ], [ -1, %bb.dx ], [ -1, %bb.s ], [ -1, %dbuf_putc.exit507 ], [ -1, %bb.v ], [ -1, %re_parse_expect.exit498 ], [ -1, %bb.y ], [ -1, %re_parse_char_class.exit.thread ], [ -1, %re_parse_expect.exit ], [ -1, %bb.am ], [ -1, %bb.ar ], [ -1, %bb.au ], [ -1, %bb.aw ], [ -1, %bb.bg ], [ -1, %re_parse_expect.exit489 ], [ -1, %bb.bh ], [ -1, %bb.ba ], [ -1, %.thread591 ], [ -1, %bb.ck ], [ -1, %bb.aa ], [ -1, %bb.ae ], [ -1, %bb.ac ], [ -1, %re_parse_expect.exit474 ], [ -1, %bb.ag ], [ -1, %bb.ex ], [ -1, %re_parse_expect.exit546 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.10
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dbuf_claim(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32
  %i.c = add i64 %i.b, %1                         ; 4 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33   ; 4 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !39, !range !40, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %i.f, 1
  %i.l = add i64 %i.k, %i.f                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.c)
  %.0 = select i1 %i.m, i64 %i.c, i64 %i.n        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = load ptr, ptr %0, align 8, !tbaa !35
  %i.t = tail call ptr %i.p(ptr noundef %i.r, ptr noundef %i.s, i64 noundef %.0) #20 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.h, align 8, !tbaa !39
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.t, ptr %0, align 8, !tbaa !35
  store i64 %.0, ptr %i.e, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c, %bb.a, %bb.e
  %.025 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 -1, 16) i32 @re_parse_modifiers(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.015 = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.g ] ; 3 uses
  %.014 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.g ]   ; 3 uses
  %i.b = load i8, ptr %.015, align 1, !tbaa !12   ; 2 uses
  switch i8 %i.b, label %bb.h [
    i8 105, label %bb.e
    i8 109, label %bb.c
    i8 115, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 8, %bb.d ], [ 4, %bb.c ], [ 2, %bb.b ] ; 2 uses
  %i.c = and i32 %.0, %.014
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = zext nneg i8 %i.b to i32
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %i.d)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.e = or i32 %.0, %.014
  %i.f = getelementptr inbounds nuw i8, ptr %.015, i64 1
  br label %bb.b

bb.h:                                             ; preds = %bb.b
  store ptr %.015, ptr %1, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.016 = phi i32 [ -1, %bb.f ], [ %.014, %bb.h ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @re_parse_group_name(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !9
  %i.d = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %bb.a
  %i.e = phi ptr [ %i.c, %bb.a ], [ %.pre, %bb.u ] ; 4 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %.1, %bb.u ]     ; 13 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12    ; 3 uses
  %i.g = zext i8 %i.f to i32
  switch i8 %i.f, label %bb.e [
    i8 92, label %bb.c
    i8 62, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %.not = icmp eq i8 %i.i, 117
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @lre_parse_escape(ptr noundef nonnull %i.a, i32 noundef 2)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = icmp slt i8 %i.f, 0
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = call fastcc i32 @utf8_decode_len(ptr noundef nonnull %i.e, ptr noundef %i.a) ; 4 uses
  %.mask.i = and i32 %i.l, -1024
  %i.m = icmp eq i32 %.mask.i, 55296
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.o = call fastcc i32 @utf8_decode_len(ptr noundef %i.n, ptr noundef %i.b) ; 2 uses
  %.mask.i32 = and i32 %i.o, -1024
  %i.p = icmp eq i32 %.mask.i32, 56320
  br i1 %i.p, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i32 %i.l, 10
  %i.r = and i32 %i.q, 1047552
  %i.s = add nuw nsw i32 %i.r, 65536
  %i.t = and i32 %i.o, 1023
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %.thread.sink.split

bb.i:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %.thread.sink.split

bb.j:                                             ; preds = %bb.f, %bb.d
  %.027 = phi i32 [ %i.j, %bb.d ], [ %i.l, %bb.f ] ; 2 uses
  %i.x = icmp ugt i32 %.027, 1114111
  br i1 %i.x, label %.loopexit, label %.thread

.thread.sink.split:                               ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.w, %bb.i ], [ %i.v, %bb.h ]
  %.02736.ph = phi i32 [ %i.g, %bb.i ], [ %i.u, %bb.h ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.g, %bb.j
  %.02736 = phi i32 [ %.027, %bb.j ], [ %i.l, %bb.g ], [ %.02736.ph, %.thread.sink.split ] ; 19 uses
  %i.y = icmp eq ptr %.0, %0
  %i.z = icmp samesign ult i32 %.02736, 128       ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  br i1 %i.z, label %.split, label %lre_js_is_ident_first.exit

.split:                                           ; preds = %bb.k
  %i.aa = lshr i32 %.02736, 5
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @lre_id_start_table_ascii, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !38
  %i.ae = and i32 %.02736, 31
  %2 = lshr i32 %i.ad, %i.ae
  %3 = trunc i32 %2 to i1
  br i1 %3, label %bb.m, label %.loopexit

lre_js_is_ident_first.exit:                       ; preds = %bb.k
  %i.af = tail call zeroext i1 @lre_is_id_start(i32 noundef range(i32 0, 1114112) %.02736) #20
  br i1 %i.af, label %bb.m, label %.loopexit

bb.l:                                             ; preds = %.thread
  br i1 %i.z, label %.split39, label %lre_js_is_ident_next.exit

.split39:                                         ; preds = %bb.l
  %i.ag = lshr i32 %.02736, 5
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @lre_id_continue_table_ascii, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !38
  %i.ak = and i32 %.02736, 31
  %4 = lshr i32 %i.aj, %i.ak
  %5 = trunc i32 %4 to i1
  br i1 %5, label %bb.m, label %.loopexit

lre_js_is_ident_next.exit:                        ; preds = %bb.l
  %i.al = tail call zeroext i1 @lre_is_id_continue(i32 noundef range(i32 0, 1114112) %.02736) #20
  %i.am = and i32 %.02736, 2097150
  %i.an = icmp eq i32 %i.am, 8204
  %narrow.i = or i1 %i.an, %i.al
  br i1 %narrow.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.split39, %.split, %lre_js_is_ident_next.exit, %lre_js_is_ident_first.exit
  %i.ao = ptrtoint ptr %.0 to i64
  %i.ap = sub i64 %i.ao, %i.d
  %i.aq = icmp sgt i64 %i.ap, 123
  br i1 %i.aq, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp samesign ult i32 %.02736, 128
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = trunc nuw nsw i32 %.02736 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.as, ptr %.0, align 1, !tbaa !12
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.au = icmp samesign ult i32 %.02736, 2048
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.av = lshr i32 %.02736, 6
  %i.aw = trunc nuw nsw i32 %i.av to i8
  %i.ax = or disjoint i8 %i.aw, -64
  store i8 %i.ax, ptr %.0, align 1, !tbaa !12
  br label %utf8_encode.exit

bb.r:                                             ; preds = %bb.p
  %i.ay = icmp samesign ult i32 %.02736, 65536
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = lshr i32 %.02736, 12
  %i.bb = trunc nuw nsw i32 %i.ba to i8
  %i.bc = or disjoint i8 %i.bb, -32
  store i8 %i.bc, ptr %.0, align 1, !tbaa !12
  %i.bd = lshr i32 %.02736, 6
  %i.be = trunc i32 %i.bd to i8
  %i.bf = and i8 %i.be, 63
  %i.bg = or disjoint i8 %i.bf, -128
  store i8 %i.bg, ptr %i.az, align 1, !tbaa !12
  br label %utf8_encode.exit

bb.t:                                             ; preds = %bb.r
  %i.bh = lshr i32 %.02736, 18
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = or disjoint i8 %i.bi, -16
  store i8 %i.bj, ptr %.0, align 1, !tbaa !12
  %i.bk = lshr i32 %.02736, 12
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = and i8 %i.bl, 63
  %i.bn = or disjoint i8 %i.bm, -128
  store i8 %i.bn, ptr %i.az, align 1, !tbaa !12
  %i.bo = lshr i32 %.02736, 6
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = and i8 %i.bp, 63
  %i.br = or disjoint i8 %i.bq, -128
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !12
  br label %utf8_encode.exit

utf8_encode.exit:                                 ; preds = %bb.q, %bb.s, %bb.t
  %.sink30.i = phi i64 [ 3, %bb.t ], [ 2, %bb.s ], [ 1, %bb.q ]
  %.0.i34 = phi i64 [ 4, %bb.t ], [ 3, %bb.s ], [ 2, %bb.q ]
  %i.bt = trunc i32 %.02736 to i8
  %i.bu = and i8 %i.bt, 63
  %i.bv = or disjoint i8 %i.bu, -128
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 %.sink30.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 %.0.i34
  br label %bb.u

bb.u:                                             ; preds = %utf8_encode.exit, %bb.o
  %.1 = phi ptr [ %i.at, %bb.o ], [ %i.bx, %utf8_encode.exit ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %bb.b

bb.v:                                             ; preds = %bb.b
  %i.by = icmp eq ptr %.0, %0
  br i1 %i.by, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %.0, align 1, !tbaa !12
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %1, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %lre_js_is_ident_next.exit, %lre_js_is_ident_first.exit, %bb.j, %bb.c, %.split, %.split39, %bb.v, %bb.w
  %.028 = phi i32 [ 0, %bb.w ], [ -1, %bb.v ], [ -1, %.split39 ], [ -1, %.split ], [ -1, %bb.c ], [ -1, %bb.j ], [ -1, %lre_js_is_ident_first.exit ], [ -1, %lre_js_is_ident_next.exit ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @is_duplicate_group_name(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 3 uses
  %.not26 = icmp eq i64 %i.d, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.023 = phi ptr [ %i.p, %bb.e ], [ %i.b, %bb.b ] ; 4 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.023) #22 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %bcmp = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %.023, i64 %i.f)
  %i.i = icmp eq i32 %bcmp, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.023, i64 %i.f
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = zext i8 %i.l to i32
  %i.n = icmp eq i32 %2, %i.m
  br i1 %i.n, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %i.o = getelementptr i8, ptr %.023, i64 %i.g
  %i.p = getelementptr i8, ptr %i.o, i64 2        ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.e
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !94

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.019 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.019
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_group_name(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  %.not30 = icmp eq i64 %i.d, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.029.us = phi i32 [ %.1.us, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %.02127.us = phi i8 [ %i.u, %bb.g ], [ 1, %.lr.ph ] ; 3 uses
  %.02226.us = phi ptr [ %i.t, %bb.g ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.02226.us) #22 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.f
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.split.us
  %bcmp.us = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %.02226.us, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.us, 0
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.g, align 8, !tbaa !33
  %i.m = load i64, ptr %i.h, align 8, !tbaa !32   ; 3 uses
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.e, !prof !34

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !35
  %i.p = add i64 %i.m, 1
  store i64 %i.p, ptr %i.h, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 %.02127.us, ptr %i.q, align 1, !tbaa !12
  br label %dbuf_putc.exit.us
end_hunk_4
begin_hunk_5_@utf8_decode_len:bb.a
  br label %utf8_decode.exit

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.038.i = phi i32 [ 128, %bb.f ], [ 160, %bb.c ]
  %i.l = load i8, ptr %i.a, align 1, !tbaa !12    ; 2 uses
  %i.m = zext i8 %i.l to i32
  %.not49.i = icmp samesign ule i32 %.038.i, %i.m
  %i.n = icmp ult i8 %i.l, -64
  %or.cond50.i = and i1 %i.n, %.not49.i
  br i1 %or.cond50.i, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %or.cond51.i = icmp slt i8 %i.p, -64
  br i1 %or.cond51.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  store ptr %i.q, ptr %1, align 8, !tbaa !9
  %i.r = shl nuw nsw i32 %i.c, 12
  %i.s = load i8, ptr %i.a, align 1, !tbaa !12
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 6
  %i.v = load i8, ptr %i.o, align 1, !tbaa !12
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.r, -925824
  %i.y = add nsw i32 %i.x, %i.u
  %i.z = add nsw i32 %i.y, %i.w
  br label %utf8_decode.exit

bb.j:                                             ; preds = %bb.c
  br label %bb.l

bb.k:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.c
  %.1.i = phi i32 [ 128, %bb.k ], [ 128, %bb.j ], [ 144, %bb.c ]
  %.0.i = phi i32 [ 191, %bb.k ], [ 143, %bb.j ], [ 191, %bb.c ]
  %i.aa = load i8, ptr %i.a, align 1, !tbaa !12
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %.not.i = icmp samesign ugt i32 %.1.i, %i.ab
  %.not48.i = icmp samesign ult i32 %.0.i, %i.ab
  %or.cond52.i = select i1 %.not.i, i1 true, i1 %.not48.i
  br i1 %or.cond52.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %or.cond53.i = icmp slt i8 %i.ad, -64
  br i1 %or.cond53.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %or.cond54.i = icmp slt i8 %i.af, -64
  br i1 %or.cond54.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.ag, ptr %1, align 8, !tbaa !9
  %i.ah = shl nuw nsw i32 %i.c, 18
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !12
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 12
  %i.al = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 6
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ah, -63447168
  %i.ar = add nsw i32 %i.aq, %i.ak
  %i.as = add nsw i32 %i.ar, %i.an
  %i.at = add nsw i32 %i.as, %i.ap
  br label %utf8_decode.exit

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.h, %bb.g, %bb.d, %bb.c
  store ptr %i.a, ptr %1, align 8, !tbaa !9
  br label %utf8_decode.exit

utf8_decode.exit:                                 ; preds = %bb.b, %bb.e, %bb.i, %bb.o, %bb.p
  %.039.i = phi i32 [ %i.c, %bb.b ], [ 65533, %bb.p ], [ %i.k, %bb.e ], [ %i.z, %bb.i ], [ %i.at, %bb.o ]
  ret i32 %.039.i
}

declare zeroext i1 @lre_is_id_start(i32 noundef) local_unnamed_addr #4

declare zeroext i1 @lre_is_id_continue(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @re_parse_nested_class(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %3 = alloca %struct.REStringList, align 8       ; 20 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %4 = alloca %struct.CharRange, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = tail call zeroext i1 @lre_check_stack_overflow(ptr noundef %i.f, i64 noundef 0) #20
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.2)
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.e, align 8, !tbaa !13
  tail call void @cr_init(ptr noundef nonnull %1, ptr noundef %.val, ptr noundef nonnull @lre_realloc) #20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.j, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !87
  %i.l = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %i.o = icmp eq i8 %i.n, 94                      ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre224 = phi ptr [ %i.p, %bb.d ], [ %i.m, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %.thread179

.thread179:                                       ; preds = %.thread179.backedge, %bb.e
  %i.ab = phi ptr [ %.pre224, %bb.e ], [ %.be, %.thread179.backedge ] ; 2 uses
  %.079 = phi i8 [ 1, %bb.e ], [ 0, %.thread179.backedge ] ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12
  switch i8 %i.ac, label %bb.h [
    i8 93, label %bb.av
    i8 91, label %bb.f
  ]

bb.f:                                             ; preds = %.thread179
  %i.ad = load i8, ptr %i.q, align 1, !tbaa !26, !range !40, !noundef !41
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = call fastcc i32 @re_parse_nested_class(ptr noundef %0, ptr noundef %3, ptr noundef %i.c)
  %.not94 = icmp eq i32 %i.af, 0
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !9
  br i1 %.not94, label %bb.ab, label %.loopexit180

bb.h:                                             ; preds = %.thread179, %bb.f
  %i.ag = call fastcc i32 @get_class_atom(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, i1 noundef zeroext true) ; 8 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit180, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !9   ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  %i.ak = icmp eq i8 %i.aj, 45
  br i1 %i.ak, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12  ; 2 uses
  %.not = icmp eq i8 %i.am, 93
  br i1 %.not, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr %i.al, ptr %i.d, align 8, !tbaa !9
  %i.an = icmp eq i8 %i.am, 45
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %i.q, align 1, !tbaa !26, !range !40, !noundef !41
  %i.ap = and i8 %i.ao, %.079
  %or.cond = trunc nuw i8 %i.ap to i1
  br i1 %or.cond, label %.thread167, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = icmp samesign ugt i32 %i.ag, 1073741823
  br i1 %i.aq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ar = load i8, ptr %i.t, align 4, !tbaa !22, !range !40, !noundef !41
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.o, label %.thread167

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %i.v, align 4, !tbaa !81  ; 2 uses
  %.not19.i = icmp eq i32 %i.at, 0
  br i1 %.not19.i, label %re_string_list_free.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.o, %._crit_edge.i
  %i.au = phi i32 [ %i.bb, %._crit_edge.i ], [ %i.at, %bb.o ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.o ] ; 2 uses
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !88 ; 2 uses
  %.not13.i = icmp eq ptr %i.ax, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph17.i, %.lr.ph.i
  %.01214.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.ax, %.lr.ph17.i ] ; 2 uses
  %i.ay = load ptr, ptr %.01214.i, align 8, !tbaa !88 ; 2 uses
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.ba = call ptr @lre_realloc(ptr noundef %i.az, ptr noundef nonnull %.01214.i, i64 noundef 0) #20 ; 0 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !91

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.v, align 4, !tbaa !81
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph17.i
  %i.bb = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.au, %.lr.ph17.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp samesign ult i64 %indvars.iv.next.i, %i.bc
  br i1 %i.bd, label %.lr.ph17.i, label %re_string_list_free.exit, !llvm.loop !92

re_string_list_free.exit:                         ; preds = %._crit_edge.i, %bb.o
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.bg = call ptr @lre_realloc(ptr noundef %i.be, ptr noundef %i.bf, i64 noundef 0) #20 ; 0 uses
  call void @cr_free(ptr noundef nonnull %3) #20
  br label %.loopexit189

bb.p:                                             ; preds = %bb.m
  %i.bh = call fastcc i32 @get_class_atom(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.d, i1 noundef zeroext true) ; 5 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.thread175, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = icmp samesign ugt i32 %i.bh, 1073741823
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = load i32, ptr %i.v, align 4, !tbaa !81  ; 2 uses
  %.not19.i104 = icmp eq i32 %i.bk, 0
  br i1 %.not19.i104, label %re_string_list_free.exit115, label %.lr.ph17.i105

.lr.ph17.i105:                                    ; preds = %bb.r, %._crit_edge.i113
  %i.bl = phi i32 [ %i.bs, %._crit_edge.i113 ], [ %i.bk, %bb.r ]
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i114, %._crit_edge.i113 ], [ 0, %bb.r ] ; 2 uses
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i106
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !88 ; 2 uses
  %.not13.i107 = icmp eq ptr %i.bo, null
  br i1 %.not13.i107, label %._crit_edge.i113, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph17.i105, %.lr.ph.i108
  %.01214.i109 = phi ptr [ %i.bp, %.lr.ph.i108 ], [ %i.bo, %.lr.ph17.i105 ] ; 2 uses
  %i.bp = load ptr, ptr %.01214.i109, align 8, !tbaa !88 ; 2 uses
  %i.bq = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.br = call ptr @lre_realloc(ptr noundef %i.bq, ptr noundef nonnull %.01214.i109, i64 noundef 0) #20 ; 0 uses
  %.not.i110 = icmp eq ptr %i.bp, null
  br i1 %.not.i110, label %._crit_edge.loopexit.i111, label %.lr.ph.i108, !llvm.loop !91

._crit_edge.loopexit.i111:                        ; preds = %.lr.ph.i108
  %.pre.i112 = load i32, ptr %i.v, align 4, !tbaa !81
  br label %._crit_edge.i113

._crit_edge.i113:                                 ; preds = %._crit_edge.loopexit.i111, %.lr.ph17.i105
  %i.bs = phi i32 [ %.pre.i112, %._crit_edge.loopexit.i111 ], [ %i.bl, %.lr.ph17.i105 ] ; 2 uses
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %indvars.iv.next.i114, %i.bt
  br i1 %i.bu, label %.lr.ph17.i105, label %re_string_list_free.exit115, !llvm.loop !92

re_string_list_free.exit115:                      ; preds = %._crit_edge.i113, %bb.r
  %i.bv = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.bw = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.bx = call ptr @lre_realloc(ptr noundef %i.bv, ptr noundef %i.bw, i64 noundef 0) #20 ; 0 uses
  call void @cr_free(ptr noundef nonnull %3) #20
  %i.by = load i8, ptr %i.t, align 4, !tbaa !22, !range !40, !noundef !41
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.loopexit189, label %.thread167

bb.s:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !9   ; 2 uses
  store ptr %i.ca, ptr %i.c, align 8, !tbaa !9
  %i.cb = icmp samesign ult i32 %i.bh, %i.ag
  br i1 %i.cb, label %.loopexit189, label %bb.t

.loopexit189:                                     ; preds = %bb.s, %re_string_list_free.exit115, %re_string_list_free.exit
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.18)
  br label %.thread175

bb.t:                                             ; preds = %bb.s
  %i.cc = load i8, ptr %i.r, align 2, !tbaa !23, !range !40, !noundef !41
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !13
  call void @cr_init(ptr noundef nonnull %4, ptr noundef %i.ce, ptr noundef nonnull @lre_realloc) #20
  %i.cf = add nuw nsw i32 %i.bh, 1
  %i.cg = call fastcc i32 @cr_add_interval(ptr noundef %4, i32 noundef %i.ag, i32 noundef %i.cf)
  %.not90 = icmp eq i32 %i.cg, 0
  br i1 %.not90, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ch = load i8, ptr %i.t, align 4, !tbaa !22, !range !40, !noundef !41
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = call i32 @cr_regexp_canonicalize(ptr noundef nonnull %4, i1 noundef zeroext %i.ci) #20
  %.not91 = icmp eq i32 %i.cj, 0
  br i1 %.not91, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !121
  %i.cl = load i32, ptr %4, align 8, !tbaa !122
  %i.cm = call i32 @cr_op1(ptr noundef nonnull %1, ptr noundef %i.ck, i32 noundef %i.cl, i32 noundef 0) #20
  %.not92 = icmp eq i32 %i.cm, 0
  br i1 %.not92, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  call void @cr_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.z

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  call void @cr_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.thread171

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !38
  %i.cn = add nuw nsw i32 %i.bh, 1
  store i32 %i.cn, ptr %i.s, align 4, !tbaa !38
  %i.co = call i32 @cr_op1(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 2, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not89 = icmp eq i32 %i.co, 0
  br i1 %.not89, label %bb.z, label %.thread171

.thread167:                                       ; preds = %re_string_list_free.exit115, %bb.l, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.aa

.thread171:                                       ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.loopexit181

.thread175:                                       ; preds = %bb.p, %.loopexit189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.loopexit180

bb.z:                                             ; preds = %bb.y, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.aj

bb.aa:                                            ; preds = %.thread167, %bb.i, %bb.j
  %i.cp = icmp ugt i32 %i.ag, 1073741823
  br i1 %i.cp, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa, %bb.g
  %i.cq = phi ptr [ %i.ai, %bb.aa ], [ %.pre, %bb.g ]
  %i.cr = load ptr, ptr %i.z, align 8, !tbaa !123
  %i.cs = load i32, ptr %3, align 8, !tbaa !115
  %i.ct = call i32 @cr_op1(ptr noundef nonnull %1, ptr noundef %i.cr, i32 noundef %i.cs, i32 noundef 0) #20
  %.not.i116 = icmp eq i32 %i.ct, 0
  %.pre226.a = load i32, ptr %i.v, align 4        ; 3 uses
  br i1 %.not.i116, label %bb.ac, label %re_string_list_op.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load i32, ptr %i.aa, align 8, !tbaa !96
  %.not45.i = icmp eq i32 %i.cu, 0
  %.not59.i = icmp eq i32 %.pre226.a, 0
  %or.cond.a = select i1 %.not45.i, i1 true, i1 %.not59.i
  br i1 %or.cond.a, label %re_string_list_op.exit, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %bb.ac, %bb.af
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %bb.af ], [ 0, %bb.ac ] ; 2 uses
  %i.cv = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv66.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph57.i
  %.037.in.i = phi ptr [ %i.cw, %.lr.ph57.i ], [ %.037.i, %bb.ae ]
  %.037.i = load ptr, ptr %.037.in.i, align 8, !tbaa !88 ; 5 uses
  %.not46.i = icmp eq ptr %.037.i, null
  br i1 %.not46.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %.037.i, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !38
  %i.dc = call fastcc i32 @re_string_find2(ptr noundef nonnull %1, i32 noundef %i.cy, ptr noundef nonnull %i.cz, i32 noundef %i.db, i1 noundef zeroext true)
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %re_string_list_op.exit.loopexit, label %bb.ad, !llvm.loop !124

bb.af:                                            ; preds = %bb.ad
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.de = load i32, ptr %i.v, align 4, !tbaa !81  ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.next67.i, %i.df
  br i1 %i.dg, label %.lr.ph57.i, label %re_string_list_op.exit, !llvm.loop !125

re_string_list_op.exit.loopexit:                  ; preds = %bb.ae
  %.pre225 = load i32, ptr %i.v, align 4, !tbaa !81
  br label %re_string_list_op.exit

re_string_list_op.exit:                           ; preds = %bb.af, %re_string_list_op.exit.loopexit, %bb.ab, %bb.ac
  %i.dh = phi i32 [ %.pre225, %re_string_list_op.exit.loopexit ], [ %.pre226.a, %bb.ab ], [ %.pre226.a, %bb.ac ], [ %i.de, %bb.af ] ; 2 uses
  %.not95 = phi i1 [ false, %re_string_list_op.exit.loopexit ], [ false, %bb.ab ], [ true, %bb.ac ], [ true, %bb.af ]
  %.not19.i117 = icmp eq i32 %i.dh, 0
  br i1 %.not19.i117, label %re_string_list_free.exit128, label %.lr.ph17.i118

.lr.ph17.i118:                                    ; preds = %re_string_list_op.exit, %._crit_edge.i126
  %i.di = phi i32 [ %i.dp, %._crit_edge.i126 ], [ %i.dh, %re_string_list_op.exit ]
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i127, %._crit_edge.i126 ], [ 0, %re_string_list_op.exit ] ; 2 uses
  %i.dj = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i119
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !88 ; 2 uses
  %.not13.i120 = icmp eq ptr %i.dl, null
  br i1 %.not13.i120, label %._crit_edge.i126, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph17.i118, %.lr.ph.i121
  %.01214.i122 = phi ptr [ %i.dm, %.lr.ph.i121 ], [ %i.dl, %.lr.ph17.i118 ] ; 2 uses
  %i.dm = load ptr, ptr %.01214.i122, align 8, !tbaa !88 ; 2 uses
  %i.dn = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.do = call ptr @lre_realloc(ptr noundef %i.dn, ptr noundef nonnull %.01214.i122, i64 noundef 0) #20 ; 0 uses
  %.not.i123 = icmp eq ptr %i.dm, null
  br i1 %.not.i123, label %._crit_edge.loopexit.i124, label %.lr.ph.i121, !llvm.loop !91

._crit_edge.loopexit.i124:                        ; preds = %.lr.ph.i121
  %.pre.i125 = load i32, ptr %i.v, align 4, !tbaa !81
  br label %._crit_edge.i126

._crit_edge.i126:                                 ; preds = %._crit_edge.loopexit.i124, %.lr.ph17.i118
  %i.dp = phi i32 [ %.pre.i125, %._crit_edge.loopexit.i124 ], [ %i.di, %.lr.ph17.i118 ] ; 2 uses
  %indvars.iv.next.i127 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next.i127, %i.dq
  br i1 %i.dr, label %.lr.ph17.i118, label %re_string_list_free.exit128, !llvm.loop !92

re_string_list_free.exit128:                      ; preds = %._crit_edge.i126, %re_string_list_op.exit
  %i.ds = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.du = call ptr @lre_realloc(ptr noundef %i.ds, ptr noundef %i.dt, i64 noundef 0) #20 ; 0 uses
  call void @cr_free(ptr noundef nonnull %3) #20
  br i1 %.not95, label %bb.aj, label %.loopexit181

bb.ag:                                            ; preds = %bb.aa
  %i.dv = load i8, ptr %i.r, align 2, !tbaa !23, !range !40, !noundef !41
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load i8, ptr %i.t, align 4, !tbaa !22, !range !40, !noundef !41
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = call i32 @lre_canonicalize(i32 noundef %i.ag, i1 noundef zeroext %i.dy) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.082 = phi i32 [ %i.dz, %bb.ah ], [ %i.ag, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %.082, ptr %i.a, align 4, !tbaa !38
  %i.ea = add i32 %.082, 1
  store i32 %i.ea, ptr %i.y, align 4, !tbaa !38
  %i.eb = call i32 @cr_op1(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not93 = icmp eq i32 %i.eb, 0
  br i1 %.not93, label %bb.aj, label %.loopexit181

bb.aj:                                            ; preds = %bb.z, %bb.ai, %re_string_list_free.exit128
  %i.ec = phi ptr [ %i.cq, %re_string_list_free.exit128 ], [ %i.ca, %bb.z ], [ %i.ai, %bb.ai ] ; 9 uses
  %.4 = phi i8 [ %.079, %re_string_list_free.exit128 ], [ 0, %bb.z ], [ %.079, %bb.ai ]
  %i.ed = load i8, ptr %i.q, align 1, !tbaa !26, !range !40, !noundef !41
  %i.ee = and i8 %i.ed, %.4
  %or.cond3 = trunc nuw i8 %i.ee to i1
  br i1 %or.cond3, label %bb.ak, label %.thread179.backedge

bb.ak:                                            ; preds = %bb.aj
  %i.ef = load i8, ptr %i.ec, align 1, !tbaa !12
  switch i8 %i.ef, label %.thread179.backedge [
    i8 38, label %bb.al
    i8 45, label %bb.ar
  ]

.thread179.backedge:                              ; preds = %.preheader182, %.preheader, %bb.ak, %bb.al, %bb.am, %bb.ar, %bb.aj
  %.be = phi ptr [ %i.el, %.preheader ], [ %i.ec, %bb.aj ], [ %i.ec, %bb.ak ], [ %i.ec, %bb.al ], [ %i.ec, %bb.am ], [ %i.ec, %bb.ar ], [ %i.fl, %.preheader182 ]
  br label %.thread179

bb.al:                                            ; preds = %bb.ak
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !12
  %i.ei = icmp eq i8 %i.eh, 38
  br i1 %i.ei, label %bb.am, label %.thread179.backedge

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !12
  %.not96 = icmp eq i8 %i.ek, 38
  br i1 %.not96, label %.thread179.backedge, label %.preheader

.preheader:                                       ; preds = %bb.am, %re_string_list_free.exit140
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !9   ; 4 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !12
  switch i8 %i.em, label %.loopexit [
    i8 93, label %.thread179.backedge
    i8 38, label %bb.an
  ]

bb.an:                                            ; preds = %.preheader
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !12
  %i.ep = icmp eq i8 %i.eo, 38
  br i1 %i.ep, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 2 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !12
  %.not99 = icmp eq i8 %i.er, 38
  br i1 %.not99, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !9
  %i.es = call fastcc i32 @re_parse_class_set_operand(ptr noundef %0, ptr noundef %3, ptr noundef %i.c)
  %.not100 = icmp eq i32 %i.es, 0
  br i1 %.not100, label %bb.aq, label %.loopexit180

bb.aq:                                            ; preds = %bb.ap
  %i.et = call fastcc i32 @re_string_list_op(ptr noundef %1, ptr noundef %3, i32 noundef 1)
  %i.eu = load i32, ptr %i.v, align 4, !tbaa !81  ; 2 uses
  %.not19.i129 = icmp eq i32 %i.eu, 0
  br i1 %.not19.i129, label %re_string_list_free.exit140, label %.lr.ph17.i130

.lr.ph17.i130:                                    ; preds = %bb.aq, %._crit_edge.i138
  %i.ev = phi i32 [ %i.fc, %._crit_edge.i138 ], [ %i.eu, %bb.aq ]
  %indvars.iv.i131 = phi i64 [ %indvars.iv.next.i139, %._crit_edge.i138 ], [ 0, %bb.aq ] ; 2 uses
  %i.ew = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i131
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !88 ; 2 uses
  %.not13.i132 = icmp eq ptr %i.ey, null
  br i1 %.not13.i132, label %._crit_edge.i138, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph17.i130, %.lr.ph.i133
  %.01214.i134 = phi ptr [ %i.ez, %.lr.ph.i133 ], [ %i.ey, %.lr.ph17.i130 ] ; 2 uses
  %i.ez = load ptr, ptr %.01214.i134, align 8, !tbaa !88 ; 2 uses
  %i.fa = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.fb = call ptr @lre_realloc(ptr noundef %i.fa, ptr noundef nonnull %.01214.i134, i64 noundef 0) #20 ; 0 uses
  %.not.i135 = icmp eq ptr %i.ez, null
  br i1 %.not.i135, label %._crit_edge.loopexit.i136, label %.lr.ph.i133, !llvm.loop !91

._crit_edge.loopexit.i136:                        ; preds = %.lr.ph.i133
  %.pre.i137 = load i32, ptr %i.v, align 4, !tbaa !81
  br label %._crit_edge.i138

._crit_edge.i138:                                 ; preds = %._crit_edge.loopexit.i136, %.lr.ph17.i130
  %i.fc = phi i32 [ %.pre.i137, %._crit_edge.loopexit.i136 ], [ %i.ev, %.lr.ph17.i130 ] ; 2 uses
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i131, 1 ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp samesign ult i64 %indvars.iv.next.i139, %i.fd
  br i1 %i.fe, label %.lr.ph17.i130, label %re_string_list_free.exit140, !llvm.loop !92

re_string_list_free.exit140:                      ; preds = %._crit_edge.i138, %bb.aq
  %i.ff = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.fg = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.fh = call ptr @lre_realloc(ptr noundef %i.ff, ptr noundef %i.fg, i64 noundef 0) #20 ; 0 uses
  call void @cr_free(ptr noundef nonnull %3) #20
  %.not101 = icmp eq i32 %i.et, 0
  br i1 %.not101, label %.preheader, label %.loopexit181

bb.ar:                                            ; preds = %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !12
  %i.fk = icmp eq i8 %i.fj, 45
  br i1 %i.fk, label %.preheader182, label %.thread179.backedge

.preheader182:                                    ; preds = %bb.ar, %re_string_list_free.exit152
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !9   ; 4 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !12
  switch i8 %i.fm, label %.loopexit [
    i8 93, label %.thread179.backedge
    i8 45, label %bb.as
  ]

bb.as:                                            ; preds = %.preheader182
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !12
  %i.fp = icmp eq i8 %i.fo, 45
  br i1 %i.fp, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  store ptr %i.fq, ptr %i.c, align 8, !tbaa !9
  %i.fr = call fastcc i32 @re_parse_class_set_operand(ptr noundef %0, ptr noundef %3, ptr noundef %i.c)
  %.not97 = icmp eq i32 %i.fr, 0
  br i1 %.not97, label %bb.au, label %.loopexit180

.loopexit:                                        ; preds = %.preheader182, %bb.as, %.preheader, %bb.an, %bb.ao
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.19)
  br label %.loopexit180

bb.au:                                            ; preds = %bb.at
  %i.fs = call fastcc i32 @re_string_list_op(ptr noundef %1, ptr noundef %3, i32 noundef 3)
  %i.ft = load i32, ptr %i.v, align 4, !tbaa !81  ; 2 uses
  %.not19.i141 = icmp eq i32 %i.ft, 0
  br i1 %.not19.i141, label %re_string_list_free.exit152, label %.lr.ph17.i142

.lr.ph17.i142:                                    ; preds = %bb.au, %._crit_edge.i150
  %i.fu = phi i32 [ %i.gb, %._crit_edge.i150 ], [ %i.ft, %bb.au ]
  %indvars.iv.i143 = phi i64 [ %indvars.iv.next.i151, %._crit_edge.i150 ], [ 0, %bb.au ] ; 2 uses
  %i.fv = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.i143
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !88 ; 2 uses
  %.not13.i144 = icmp eq ptr %i.fx, null
  br i1 %.not13.i144, label %._crit_edge.i150, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %.lr.ph17.i142, %.lr.ph.i145
  %.01214.i146 = phi ptr [ %i.fy, %.lr.ph.i145 ], [ %i.fx, %.lr.ph17.i142 ] ; 2 uses
  %i.fy = load ptr, ptr %.01214.i146, align 8, !tbaa !88 ; 2 uses
  %i.fz = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.ga = call ptr @lre_realloc(ptr noundef %i.fz, ptr noundef nonnull %.01214.i146, i64 noundef 0) #20 ; 0 uses
  %.not.i147 = icmp eq ptr %i.fy, null
  br i1 %.not.i147, label %._crit_edge.loopexit.i148, label %.lr.ph.i145, !llvm.loop !91

._crit_edge.loopexit.i148:                        ; preds = %.lr.ph.i145
  %.pre.i149 = load i32, ptr %i.v, align 4, !tbaa !81
  br label %._crit_edge.i150

._crit_edge.i150:                                 ; preds = %._crit_edge.loopexit.i148, %.lr.ph17.i142
  %i.gb = phi i32 [ %.pre.i149, %._crit_edge.loopexit.i148 ], [ %i.fu, %.lr.ph17.i142 ] ; 2 uses
  %indvars.iv.next.i151 = add nuw nsw i64 %indvars.iv.i143, 1 ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %i.gd = icmp samesign ult i64 %indvars.iv.next.i151, %i.gc
  br i1 %i.gd, label %.lr.ph17.i142, label %re_string_list_free.exit152, !llvm.loop !92

re_string_list_free.exit152:                      ; preds = %._crit_edge.i150, %bb.au
  %i.ge = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.gf = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.gg = call ptr @lre_realloc(ptr noundef %i.ge, ptr noundef %i.gf, i64 noundef 0) #20 ; 0 uses
  call void @cr_free(ptr noundef nonnull %3) #20
  %.not98 = icmp eq i32 %i.fs, 0
  br i1 %.not98, label %.preheader182, label %.loopexit181

bb.av:                                            ; preds = %.thread179
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.gh, ptr %2, align 8, !tbaa !9
  br i1 %i.o, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.gi = load i32, ptr %i.h, align 8, !tbaa !96
  %.not102 = icmp eq i32 %i.gi, 0
  br i1 %.not102, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.20)
  br label %.loopexit180

bb.ay:                                            ; preds = %bb.aw
  %i.gj = call i32 @cr_invert(ptr noundef nonnull %1) #20
  %.not103 = icmp eq i32 %i.gj, 0
  br i1 %.not103, label %bb.ba, label %.loopexit181

.loopexit181:                                     ; preds = %bb.ai, %re_string_list_free.exit128, %re_string_list_free.exit152, %re_string_list_free.exit140, %.thread171, %bb.ay
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40)
  br label %.loopexit180

.loopexit180:                                     ; preds = %bb.h, %bb.g, %bb.at, %bb.ap, %.thread175, %.loopexit181, %bb.ax, %.loopexit
  %i.gk = load i32, ptr %i.i, align 4, !tbaa !81  ; 2 uses
  %.not19.i153 = icmp eq i32 %i.gk, 0
  br i1 %.not19.i153, label %re_string_list_free.exit164, label %.lr.ph17.i154

.lr.ph17.i154:                                    ; preds = %.loopexit180
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge.i162, %.lr.ph17.i154
  %i.gm = phi i32 [ %i.gk, %.lr.ph17.i154 ], [ %i.gt, %._crit_edge.i162 ]
  %indvars.iv.i155 = phi i64 [ 0, %.lr.ph17.i154 ], [ %indvars.iv.next.i163, %._crit_edge.i162 ] ; 2 uses
end_hunk_5
begin_hunk_6_@cr_add_interval:bb.a
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @cr_realloc(ptr noundef nonnull %0, i32 noundef %i.b) #20
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %0, align 8, !tbaa !122
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %i.j = add nsw i32 %i.g, 1
  store i32 %i.j, ptr %0, align 8, !tbaa !122
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  store i32 %1, ptr %i.l, align 4, !tbaa !38
  %i.m = load i32, ptr %0, align 8, !tbaa !122    ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %0, align 8, !tbaa !122
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.o
  store i32 %2, ptr %i.p, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i32 @cr_regexp_canonicalize(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @cr_op1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @cr_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @re_string_list_op(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 4) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = load i32, ptr %1, align 8, !tbaa !115
  %i.d = tail call i32 @cr_op1(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.c, i32 noundef %2) #20
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.h
    i32 3, label %bb.h
    i32 2, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96
  %.not45 = icmp eq i32 %i.f, 0
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !81
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph57, %bb.g
  %indvars.iv66 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next67, %bb.g ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv66
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.037.in = phi ptr [ %i.k, %bb.d ], [ %.037, %bb.f ]
  %.037 = load ptr, ptr %.037.in, align 8, !tbaa !88 ; 5 uses
  %.not46 = icmp eq ptr %.037, null
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.037, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %.037, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38
  %i.q = tail call fastcc i32 @re_string_find2(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p, i1 noundef zeroext true)
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.e, !llvm.loop !124

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.s = load i32, ptr %i.g, align 4, !tbaa !81
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next67, %i.t
  br i1 %i.u, label %bb.d, label %.loopexit, !llvm.loop !125

bb.h:                                             ; preds = %bb.b, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %.not58 = icmp eq i32 %i.w, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = icmp eq i32 %2, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph55, %._crit_edge
  %i.ae = phi i32 [ %i.w, %.lr.ph55 ], [ %i.bt, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.q
  %i.aj = phi ptr [ %i.br, %bb.q ], [ %i.ah, %bb.i ] ; 6 uses
  %.052 = phi ptr [ %.1, %bb.q ], [ %i.ag, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !38 ; 3 uses
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !96
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %re_string_find2.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aq = load i32, ptr %i.z, align 8, !tbaa !120
  %i.ar = sub nsw i32 32, %i.aq
  %i.as = lshr i32 %i.ao, %i.ar
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !87
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %.07185.i = load ptr, ptr %i.av, align 8, !tbaa !88 ; 3 uses
  %.not7986.i = icmp eq ptr %.07185.i, null
  br i1 %.not7986.i, label %re_string_find2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.aw = icmp eq i32 %i.al, 0
  %i.ax = sext i32 %i.al to i64
  %i.ay = shl nsw i64 %i.ax, 2
  br i1 %i.aw, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.l
  %.07187.us.i = phi ptr [ %.071.us.i, %bb.l ], [ %.07185.i, %.lr.ph.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.07187.us.i, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !38
  %i.bb = icmp eq i32 %i.ba, %i.ao
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.07187.us.i, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %re_string_find2.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.us.i
  %.071.us.i = load ptr, ptr %.07187.us.i, align 8, !tbaa !88 ; 2 uses
  %.not79.us.i = icmp eq ptr %.071.us.i, null
  br i1 %.not79.us.i, label %re_string_find2.exit, label %.lr.ph.split.us.i, !llvm.loop !127

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.o
  %.07187.i = phi ptr [ %.071.i, %bb.o ], [ %.07185.i, %.lr.ph.i ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.07187.i, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !38
  %i.bh = icmp eq i32 %i.bg, %i.ao
  br i1 %i.bh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.07187.i, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !38
  %i.bk = icmp eq i32 %i.bj, %i.al
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.07187.i, i64 16
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bl, ptr nonnull readonly %i.am, i64 %i.ay)
  %.not84.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not84.i, label %re_string_find2.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.split.i
  %.071.i = load ptr, ptr %.07187.i, align 8, !tbaa !88 ; 2 uses
  %.not79.i = icmp eq ptr %.071.i, null
  br i1 %.not79.i, label %re_string_find2.exit, label %.lr.ph.split.i, !llvm.loop !127

re_string_find2.exit:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %.lr.ph, %bb.j
  %.not43 = phi i1 [ true, %.lr.ph ], [ true, %bb.j ], [ false, %bb.k ], [ true, %bb.l ], [ true, %bb.o ], [ false, %bb.n ]
  %.175.i = phi i1 [ false, %.lr.ph ], [ false, %bb.j ], [ true, %bb.k ], [ false, %bb.l ], [ false, %bb.o ], [ true, %bb.n ]
  %.038 = select i1 %i.ab, i1 %.not43, i1 %.175.i
  br i1 %.038, label %bb.q, label %bb.p

bb.p:                                             ; preds = %re_string_find2.exit
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !88
  store ptr %i.bm, ptr %.052, align 8, !tbaa !88
  %i.bn = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr %i.ac, align 8, !tbaa !96
  %i.bp = load ptr, ptr %i.ad, align 8, !tbaa !90
  %i.bq = tail call ptr @lre_realloc(ptr noundef %i.bp, ptr noundef nonnull %i.aj, i64 noundef 0) #20 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %re_string_find2.exit, %bb.p
  %.1 = phi ptr [ %.052, %bb.p ], [ %i.aj, %re_string_find2.exit ] ; 2 uses
  %i.br = load ptr, ptr %.1, align 8, !tbaa !88   ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.q
  %.pre = load i32, ptr %i.v, align 4, !tbaa !81
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.bt = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ae, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.i, label %.loopexit, !llvm.loop !128

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.r:                                             ; preds = %bb.b
  tail call void @abort() #21
  unreachable

.loopexit:                                        ; preds = %._crit_edge, %bb.g, %bb.f, %bb.h, %.preheader, %bb.c, %bb.a
  %.041 = phi i32 [ 0, %.preheader ], [ -1, %bb.a ], [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %bb.g ], [ -1, %bb.f ], [ 0, %._crit_edge ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @re_parse_class_set_operand(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  %i.d = icmp eq i8 %i.c, 91
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @re_parse_nested_class(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.j, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @get_class_atom(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext true) ; 4 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %i.f, 1073741824
  br i1 %i.h, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.i, align 8, !tbaa !13
  tail call void @cr_init(ptr noundef nonnull %1, ptr noundef %.val, ptr noundef nonnull @lre_realloc) #20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  store i32 0, ptr %i.k, align 4, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.l, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.o = load i8, ptr %i.n, align 2, !tbaa !23, !range !40, !noundef !41
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.r = load i8, ptr %i.q, align 4, !tbaa !22, !range !40, !noundef !41
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = tail call i32 @lre_canonicalize(i32 noundef %i.f, i1 noundef zeroext %i.s) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.t, %bb.f ], [ %i.f, %bb.e ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %.0, ptr %i.a, align 4, !tbaa !38
  %i.u = add i32 %.0, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !38
  %i.w = call i32 @cr_op1(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.k, align 4, !tbaa !81   ; 2 uses
  %.not19.i = icmp eq i32 %i.x, 0
  br i1 %.not19.i, label %re_string_list_free.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph17.i
  %i.z = phi i32 [ %i.x, %.lr.ph17.i ], [ %i.ag, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %.not13.i = icmp eq ptr %i.ac, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.01214.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ac, %bb.i ] ; 2 uses
  %i.ad = load ptr, ptr %.01214.i, align 8, !tbaa !88 ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !90
  %i.af = call ptr @lre_realloc(ptr noundef %i.ae, ptr noundef nonnull %.01214.i, i64 noundef 0) #20 ; 0 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !91

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !81
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.i
  %i.ag = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.z, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next.i, %i.ah
  br i1 %i.ai, label %bb.i, label %re_string_list_free.exit, !llvm.loop !92

re_string_list_free.exit:                         ; preds = %._crit_edge.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !90
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.am = call ptr @lre_realloc(ptr noundef %i.ak, ptr noundef %i.al, i64 noundef 0) #20 ; 0 uses
  call void @cr_free(ptr noundef nonnull %1) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.b
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.j, %re_string_list_free.exit
  %.019 = phi i32 [ -1, %re_string_list_free.exit ], [ 0, %bb.j ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.019
}

declare i32 @cr_invert(ptr noundef) local_unnamed_addr #4

declare i32 @cr_realloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @re_string_find2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !120
  %i.e = sub nsw i32 32, %i.d
  %i.f = lshr i32 %3, %i.e                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %.07185 = load ptr, ptr %i.j, align 8, !tbaa !88 ; 3 uses
  %.not7986 = icmp eq ptr %.07185, null
  br i1 %.not7986, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = icmp eq i32 %1, 0
  %i.l = sext i32 %1 to i64
  %i.m = shl nsw i64 %i.l, 2
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.07187.us = phi ptr [ %.071.us, %bb.d ], [ %.07185, %.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07187.us, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !38
  %i.p = icmp eq i32 %i.o, %3
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %.07187.us, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us
  %.071.us = load ptr, ptr %.07187.us, align 8, !tbaa !88 ; 2 uses
  %.not79.us = icmp eq ptr %.071.us, null
  br i1 %.not79.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !127

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.07187 = phi ptr [ %.071, %bb.g ], [ %.07185, %.lr.ph ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.07187, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !38
  %i.v = icmp eq i32 %i.u, %3
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.split
  %i.w = getelementptr inbounds nuw i8, ptr %.07187, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = icmp eq i32 %i.x, %1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.07187, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.z, ptr %2, i64 %i.m)
  %.not84 = icmp eq i32 %bcmp, 0
  br i1 %.not84, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split, %bb.e, %bb.f
  %.071 = load ptr, ptr %.07187, align 8, !tbaa !88 ; 2 uses
  %.not79 = icmp eq ptr %.071, null
  br i1 %.not79, label %.loopexit, label %.lr.ph.split, !llvm.loop !127

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.b, %bb.a
  %.072 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %i.f, %bb.d ], [ %i.f, %bb.g ]
  br i1 %4, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.loopexit
  %i.aa = add i32 %i.b, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !81
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.l, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !120
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 3) ; 3 uses
  %..i = add nuw nsw i32 %i.ag, 1
  %i.ah = shl nuw i32 2, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.ak = zext i32 %i.ah to i64
  %i.al = shl nuw nsw i64 %i.ak, 3                ; 2 uses
  %i.am = tail call ptr @lre_realloc(ptr noundef %i.aj, ptr noundef null, i64 noundef %i.al) #20 ; 4 uses
  %.not80.not = icmp eq ptr %i.am, null
  br i1 %.not80.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 0, i64 %i.al, i1 false)
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !81 ; 2 uses
  %.not95 = icmp eq i32 %i.an, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !87 ; 2 uses
  %.pre99 = sub nsw i32 31, %i.ag                 ; 2 uses
  br i1 %.not95, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.j
  %wide.trip.count = zext i32 %i.an to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph93, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88 ; 2 uses
  %.not8388 = icmp eq ptr %i.ap, null
  br i1 %.not8388, label %._crit_edge, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.k, %.lr.ph90
  %.189 = phi ptr [ %i.aq, %.lr.ph90 ], [ %i.ap, %bb.k ] ; 4 uses
  %i.aq = load ptr, ptr %.189, align 8, !tbaa !88 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.189, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !38
  %i.at = lshr i32 %i.as, %.pre99
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !88
  store ptr %i.aw, ptr %.189, align 8, !tbaa !88
  store ptr %.189, ptr %i.av, align 8, !tbaa !88
  %.not83 = icmp eq ptr %i.aq, null
  br i1 %.not83, label %._crit_edge, label %.lr.ph90, !llvm.loop !129

._crit_edge:                                      ; preds = %.lr.ph90, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge94, label %bb.k, !llvm.loop !130

._crit_edge94:                                    ; preds = %._crit_edge, %bb.j
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = tail call ptr @lre_realloc(ptr noundef %i.ax, ptr noundef %.pre, i64 noundef 0) #20 ; 0 uses
  store i32 %..i, ptr %i.ae, align 8, !tbaa !120
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !81
  store ptr %i.am, ptr %i.ay, align 8, !tbaa !87
  %i.ba = lshr i32 %3, %.pre99
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge94, %bb.h
  %.2 = phi i32 [ %i.ba, %._crit_edge94 ], [ %.072, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bd = sext i32 %1 to i64
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.be, 16
  %i.bg = tail call ptr @lre_realloc(ptr noundef %i.bc, ptr noundef null, i64 noundef %i.bf) #20 ; 6 uses
  %.not81 = icmp eq ptr %i.bg, null
  br i1 %.not81, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = zext i32 %.2 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !88
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !88
  store ptr %i.bg, ptr %i.bk, align 8, !tbaa !88
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !96
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %3, ptr %i.bo, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 %1, ptr %i.bp, align 4, !tbaa !38
  %.not82 = icmp eq i32 %1, 0
  br i1 %.not82, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 4 %2, i64 %i.be, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.i, %bb.m, %bb.n, %bb.l, %.loopexit
  %.175 = phi i32 [ 0, %.loopexit ], [ -1, %bb.l ], [ 1, %bb.m ], [ -1, %bb.i ], [ 1, %bb.n ], [ 1, %bb.c ], [ 1, %bb.f ]
  ret i32 %.175
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cr_init_char_range(ptr %.96.val, ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #2 {
bb.a:
  %.not = trunc i32 %1 to i1
  %i.a = lshr i32 %1, 1
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @char_range_table, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i16, ptr %i.d, align 2, !tbaa !65   ; 2 uses
  tail call void @cr_init(ptr noundef nonnull %0, ptr noundef %.96.val, ptr noundef nonnull @lre_realloc) #20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !87
  %.not4 = icmp eq i16 %i.f, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = zext i16 %i.f to i64
  %wide.trip.count = shl nuw nsw i64 %i.k, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !65
  %i.p = zext i16 %i.o to i32
  %i.q = load i32, ptr %0, align 8, !tbaa !122    ; 3 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !126
  %.not.i = icmp slt i32 %i.q, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.q, 1
  %i.t = tail call i32 @cr_realloc(ptr noundef nonnull %0, i32 noundef %i.s) #20
  %.not8.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i, label %._crit_edge.i, label %cr_add_point.exit

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i32, ptr %0, align 8, !tbaa !122
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge.i
  %i.u = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.q, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %0, align 8, !tbaa !122
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 %i.p, ptr %i.y, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.d, %bb.a
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.z = tail call i32 @cr_invert(ptr noundef nonnull %0) #20
  %.not15 = icmp eq i32 %i.z, 0
  br i1 %.not15, label %bb.g, label %cr_add_point.exit

cr_add_point.exit:                                ; preds = %bb.c, %bb.e
  %i.aa = load i32, ptr %i.h, align 4, !tbaa !81  ; 2 uses
  %.not19.i = icmp eq i32 %i.aa, 0
  br i1 %.not19.i, label %re_string_list_free.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %cr_add_point.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i19, %.lr.ph17.i
  %i.ac = phi i32 [ %i.aa, %.lr.ph17.i ], [ %i.aj, %._crit_edge.i19 ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i, %._crit_edge.i19 ] ; 2 uses
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %.not13.i = icmp eq ptr %i.af, null
  br i1 %.not13.i, label %._crit_edge.i19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.01214.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %.01214.i, align 8, !tbaa !88 ; 2 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !90
  %i.ai = tail call ptr @lre_realloc(ptr noundef %i.ah, ptr noundef nonnull %.01214.i, i64 noundef 0) #20 ; 0 uses
  %.not.i17 = icmp eq ptr %i.ag, null
  br i1 %.not.i17, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !91

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i18 = load i32, ptr %i.h, align 4, !tbaa !81
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.loopexit.i, %bb.f
  %i.aj = phi i32 [ %.pre.i18, %._crit_edge.loopexit.i ], [ %i.ac, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %bb.f, label %re_string_list_free.exit, !llvm.loop !92

re_string_list_free.exit:                         ; preds = %._crit_edge.i19, %cr_add_point.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.ap = tail call ptr @lre_realloc(ptr noundef %i.an, ptr noundef %i.ao, i64 noundef 0) #20 ; 0 uses
  tail call void @cr_free(ptr noundef nonnull %0) #20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %re_string_list_free.exit
  %.014 = phi i32 [ -1, %re_string_list_free.exit ], [ 0, %bb.e ], [ 0, %._crit_edge ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_unicode_property(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 19 uses
  %i.b = alloca [64 x i8], align 16               ; 9 uses
  %5 = alloca %struct.CharRange, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr %2, align 8, !tbaa !9      ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %.not = icmp eq i8 %i.d, 123
  br i1 %.not, label %.preheader120, label %bb.b

.preheader120:                                    ; preds = %bb.a
  %.079126 = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.e = load i8, ptr %.079126, align 1, !tbaa !12 ; 5 uses
  %i.f = add i8 %i.e, -48
  %or.cond.i127 = icmp ult i8 %i.f, 10
  %i.g = and i8 %i.e, -33
  %i.h = add i8 %i.g, -65
  %i.i = icmp ult i8 %i.h, 26
  %or.cond13.i128 = or i1 %or.cond.i127, %i.i
  %i.j = icmp eq i8 %i.e, 95
  %i.k = or i1 %i.j, %or.cond13.i128
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader120
  %i.l = ptrtoint ptr %i.a to i64
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.26)
  br label %bb.as

bb.c:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %i.z to i64
  %i.n = sub i64 %i.m, %i.l
  %i.o = icmp ugt i64 %i.n, 62
  br i1 %i.o, label %.loopexit121, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.077129162, i64 2 ; 2 uses
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !12
  %.079.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.q = load i8, ptr %.079.1, align 1, !tbaa !12 ; 5 uses
  %i.r = add i8 %i.q, -48
  %or.cond.i.1 = icmp ult i8 %i.r, 10
  %i.s = and i8 %i.q, -33
  %i.t = add i8 %i.s, -65
  %i.u = icmp ult i8 %i.t, 26
  %or.cond13.i.1 = or i1 %or.cond.i.1, %i.u
  %i.v = icmp eq i8 %i.q, 95
  %i.w = or i1 %i.v, %or.cond13.i.1
  br i1 %i.w, label %bb.e, label %._crit_edge.loopexit.split.loop.exit, !llvm.loop !134

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.077129162 = phi ptr [ %i.a, %.lr.ph ], [ %i.p, %bb.d ] ; 3 uses
  %i.x = phi ptr [ %i.c, %.lr.ph ], [ %.079, %bb.d ] ; 3 uses
  %i.y = phi i8 [ %i.e, %.lr.ph ], [ %i.q, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.077129162, i64 1 ; 3 uses
  store i8 %i.y, ptr %.077129162, align 1, !tbaa !12
  %.079 = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 3 uses
  %i.aa = load i8, ptr %.079, align 1, !tbaa !12  ; 5 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond.i = icmp ult i8 %i.ab, 10
  %i.ac = and i8 %i.aa, -33
  %i.ad = add i8 %i.ac, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %or.cond13.i = or i1 %or.cond.i, %i.ae
  %i.af = icmp eq i8 %i.aa, 95
  %i.ag = or i1 %i.af, %or.cond13.i
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !134

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.d
  %.079.1.le = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.split.loop.exit, %bb.e, %.preheader120
  %i.ah = phi i8 [ %i.e, %.preheader120 ], [ %i.q, %._crit_edge.loopexit.split.loop.exit ], [ %i.aa, %bb.e ] ; 2 uses
  %.077.lcssa = phi ptr [ %i.a, %.preheader120 ], [ %i.p, %._crit_edge.loopexit.split.loop.exit ], [ %i.z, %bb.e ]
  %.079.lcssa = phi ptr [ %.079126, %.preheader120 ], [ %.079.1.le, %._crit_edge.loopexit.split.loop.exit ], [ %.079, %bb.e ] ; 3 uses
  store i8 0, ptr %.077.lcssa, align 1, !tbaa !12
  %i.ai = icmp eq i8 %i.ah, 61
  br i1 %i.ai, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %.180132 = getelementptr inbounds nuw i8, ptr %.079.lcssa, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.180132, align 1, !tbaa !12 ; 5 uses
  %i.ak = add i8 %i.aj, -48
  %or.cond.i107133 = icmp ult i8 %i.ak, 10
  %i.al = and i8 %i.aj, -33
  %i.am = add i8 %i.al, -65
  %i.an = icmp ult i8 %i.am, 26
  %or.cond13.i111134 = or i1 %or.cond.i107133, %i.an
  %i.ao = icmp eq i8 %i.aj, 95
  %i.ap = or i1 %i.ao, %or.cond13.i111134
  br i1 %i.ap, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %.preheader
  %i.aq = ptrtoint ptr %i.b to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.i
  %i.ar = ptrtoint ptr %i.be to i64
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = icmp ugt i64 %i.as, 62
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.178135164, i64 2 ; 2 uses
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !12
  %.180.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.av = load i8, ptr %.180.1, align 1, !tbaa !12 ; 5 uses
  %i.aw = add i8 %i.av, -48
  %or.cond.i107.1 = icmp ult i8 %i.aw, 10
  %i.ax = and i8 %i.av, -33
  %i.ay = add i8 %i.ax, -65
  %i.az = icmp ult i8 %i.ay, 26
  %or.cond13.i111.1 = or i1 %or.cond.i107.1, %i.az
  %i.ba = icmp eq i8 %i.av, 95
  %i.bb = or i1 %i.ba, %or.cond13.i111.1
  br i1 %i.bb, label %bb.i, label %.loopexit.loopexit.split.loop.exit, !llvm.loop !135

bb.h:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.27)
  br label %bb.as

bb.i:                                             ; preds = %bb.g, %.lr.ph137
  %.178135164 = phi ptr [ %i.b, %.lr.ph137 ], [ %i.au, %bb.g ] ; 3 uses
  %i.bc = phi ptr [ %.079.lcssa, %.lr.ph137 ], [ %.180, %bb.g ] ; 3 uses
  %i.bd = phi i8 [ %i.aj, %.lr.ph137 ], [ %i.av, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %.178135164, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.178135164, align 1, !tbaa !12
  %.180 = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 3 uses
  %i.bf = load i8, ptr %.180, align 1, !tbaa !12  ; 5 uses
  %i.bg = add i8 %i.bf, -48
  %or.cond.i107 = icmp ult i8 %i.bg, 10
  %i.bh = and i8 %i.bf, -33
  %i.bi = add i8 %i.bh, -65
  %i.bj = icmp ult i8 %i.bi, 26
  %or.cond13.i111 = or i1 %or.cond.i107, %i.bj
  %i.bk = icmp eq i8 %i.bf, 95
  %i.bl = or i1 %i.bk, %or.cond13.i111
  br i1 %i.bl, label %bb.f, label %.loopexit, !llvm.loop !135
end_hunk_6
