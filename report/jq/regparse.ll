Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regparse?download=true
inline.NumInlined: 358
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@cc_char_next:bb.a
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = or i32 %i.t, %2
  %or.cond.not = icmp ult i32 %i.u, 256
  br i1 %or.cond.not, label %bb.i, label %add_code_range.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.t, %2
  br i1 %i.v, label %bb.j, label %.lr.ph.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !126
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !66
  %i.aa = and i32 %i.z, 4194304
  %.not61 = icmp eq i32 %i.aa, 0
  br i1 %.not61, label %add_code_range.exit.thread, label %bitset_set_range.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ac = add nuw nsw i32 %2, %i.t
  %i.ad = and i32 %i.ac, 1
  %lcmp.mod92.not.not = icmp eq i32 %i.ad, 0
  br i1 %lcmp.mod92.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.ae = and i32 %i.t, 31
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = lshr i32 %i.t, 5
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ak = or i32 %i.af, %i.aj
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !26
  %i.al = add nuw nsw i32 %i.t, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.07.i.unr = phi i32 [ %i.t, %.lr.ph.preheader.i ], [ %i.al, %.lr.ph.i.prol ]
  %i.am = icmp eq i32 %2, %i.t
  br i1 %i.am, label %bitset_set_range.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.an = and i32 %.07.i, 31
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = lshr i32 %.07.i, 5
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = or i32 %i.ao, %i.as
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !26
  %i.au = add i32 %.07.i, 1                       ; 3 uses
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i32 %i.au, 5
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26
  %i.bb = or i32 %i.aw, %i.ba
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !26
  %i.bc = add i32 %.07.i, 2
  %exitcond79.not.1 = icmp eq i32 %i.au, %2
  br i1 %exitcond79.not.1, label %bitset_set_range.exit, label %.lr.ph.i, !llvm.loop !298

bb.k:                                             ; preds = %bb.g
  %i.bd = icmp ugt i32 %i.t, %2
  br i1 %i.bd, label %bb.l, label %add_code_range.exit

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !126
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !66
  %i.bi = and i32 %i.bh, 4194304
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %add_code_range.exit.thread, label %bitset_set_range.exit

add_code_range.exit:                              ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = tail call fastcc i32 @add_code_range_to_buf(ptr noundef nonnull %i.bj, i32 noundef %i.t, i32 noundef %2) ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %add_code_range.exit.thread, label %bitset_set_range.exit

bb.m:                                             ; preds = %bb.f
  %i.bm = load i32, ptr %1, align 4, !tbaa !26    ; 9 uses
  %i.bn = icmp ugt i32 %i.bm, %2
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !126
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !66
  %i.bs = and i32 %i.br, 4194304
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %add_code_range.exit.thread, label %bitset_set_range.exit

bb.o:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.bu = tail call i32 @llvm.umin.i32(i32 %2, i32 255) ; 4 uses
  %.not78 = icmp sgt i32 %i.bm, %i.bu
  br i1 %.not78, label %bitset_set_range.exit66, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %bb.o
  %i.bv = add i32 %i.bu, %i.bm
  %i.bw = and i32 %i.bv, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i64.prol, label %.lr.ph.i64.prol.loopexit

.lr.ph.i64.prol:                                  ; preds = %.lr.ph.i64.preheader
  %i.bx = and i32 %i.bm, 31
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = lshr i32 %i.bm, 5
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !26
  %i.cd = or i32 %i.by, %i.cc
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !26
  %i.ce = add i32 %i.bm, 1
  br label %.lr.ph.i64.prol.loopexit

.lr.ph.i64.prol.loopexit:                         ; preds = %.lr.ph.i64.prol, %.lr.ph.i64.preheader
  %.07.i65.unr = phi i32 [ %i.bm, %.lr.ph.i64.preheader ], [ %i.ce, %.lr.ph.i64.prol ]
  %i.cf = icmp eq i32 %i.bu, %i.bm
  br i1 %i.cf, label %bitset_set_range.exit66.loopexit, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64
  %.07.i65 = phi i32 [ %i.cv, %.lr.ph.i64 ], [ %.07.i65.unr, %.lr.ph.i64.prol.loopexit ] ; 4 uses
  %i.cg = and i32 %.07.i65, 31
  %i.ch = shl nuw i32 1, %i.cg
  %i.ci = lshr i32 %.07.i65, 5
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !26
  %i.cm = or i32 %i.ch, %i.cl
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !26
  %i.cn = add i32 %.07.i65, 1                     ; 3 uses
  %i.co = and i32 %i.cn, 31
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = lshr i32 %i.cn, 5
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !26
  %i.cu = or i32 %i.cp, %i.ct
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !26
  %i.cv = add i32 %.07.i65, 2
  %exitcond.not.1 = icmp eq i32 %i.cn, %i.bu
  br i1 %exitcond.not.1, label %bitset_set_range.exit66.loopexit, label %.lr.ph.i64, !llvm.loop !298

bitset_set_range.exit66.loopexit:                 ; preds = %.lr.ph.i64, %.lr.ph.i64.prol.loopexit
  %.pre = load i32, ptr %1, align 4, !tbaa !26
  br label %bitset_set_range.exit66

bitset_set_range.exit66:                          ; preds = %bitset_set_range.exit66.loopexit, %bb.o
  %i.cw = phi i32 [ %.pre, %bitset_set_range.exit66.loopexit ], [ %i.bm, %bb.o ] ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, %2
  br i1 %i.cx, label %bb.p, label %add_code_range.exit70

bb.p:                                             ; preds = %bitset_set_range.exit66
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !126
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !66
  %i.dc = and i32 %i.db, 4194304
  %.not.i68 = icmp eq i32 %i.dc, 0
  br i1 %.not.i68, label %add_code_range.exit.thread, label %bitset_set_range.exit

add_code_range.exit70:                            ; preds = %bitset_set_range.exit66
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.de = tail call fastcc i32 @add_code_range_to_buf(ptr noundef nonnull %i.dd, i32 noundef %i.cw, i32 noundef %2) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %add_code_range.exit.thread, label %bitset_set_range.exit

bitset_set_range.exit:                            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.p, %bb.l, %add_code_range.exit, %add_code_range.exit70, %bb.n, %bb.j
  store i32 2, ptr %7, align 4, !tbaa !26
  br label %bb.r

bb.q:                                             ; preds = %bb.a, %bb.a
  store i32 0, ptr %7, align 4, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.q, %bitset_set_range.exit
  store i32 %4, ptr %3, align 4, !tbaa !26
  store i32 %2, ptr %1, align 4, !tbaa !26
  store i32 %5, ptr %6, align 4, !tbaa !26
  br label %add_code_range.exit.thread

add_code_range.exit.thread:                       ; preds = %bb.p, %bb.l, %add_code_range.exit70, %bb.n, %add_code_range.exit, %bb.j, %bb.h, %bb.e, %bb.c, %bb.r
  %.0 = phi i32 [ 0, %bb.r ], [ -203, %bb.n ], [ -400, %bb.c ], [ %i.o, %bb.e ], [ -400, %bb.h ], [ -203, %bb.j ], [ %i.bk, %add_code_range.exit ], [ %i.de, %add_code_range.exit70 ], [ -203, %bb.l ], [ -203, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -205, 1) i32 @and_cclass(ptr nofree noundef nonnull captures(address) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca [8 x i32], align 16               ; 5 uses
  %i.c = alloca [8 x i32], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !153  ; 2 uses
  %i.g = trunc i32 %i.f to i1                     ; 5 uses
  %i.h = and i32 %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !153  ; 2 uses
  %i.n = trunc i32 %i.m to i1                     ; 2 uses
  %i.o = and i32 %i.m, 1                          ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105  ; 7 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load <4 x i32>, ptr %i.i, align 4, !tbaa !26
  %i.t = xor <4 x i32> %i.s, splat (i32 -1)
  store <4 x i32> %i.t, ptr %i.b, align 16, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load <4 x i32>, ptr %i.u, align 4, !tbaa !26
  %i.x = xor <4 x i32> %i.w, splat (i32 -1)
  store <4 x i32> %i.x, ptr %i.v, align 16, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.043 = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.a ] ; 10 uses
  %i.y = load i32, ptr %i.p, align 4, !tbaa !26   ; 2 uses
  br i1 %i.n, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %3 = xor i32 %i.y, -1                           ; 2 uses
  store i32 %3, ptr %i.c, align 16, !tbaa !26
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = load <4 x i32>, ptr %4, align 8, !tbaa !26
  %i.aa = xor <4 x i32> %i.z, splat (i32 -1)
  store <4 x i32> %i.aa, ptr %5, align 4, !tbaa !26
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %8 = load <2 x i32>, ptr %6, align 8, !tbaa !26
  %9 = xor <2 x i32> %8, splat (i32 -1)
  store <2 x i32> %9, ptr %7, align 4, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %10 = load i32, ptr %i.ab, align 8, !tbaa !26
  %11 = xor i32 %10, -1
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %11, ptr %12, align 4, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ac = phi i32 [ %3, %bb.d ], [ %i.y, %bb.c ]
  %.042 = phi ptr [ %i.c, %bb.d ], [ %i.p, %bb.c ] ; 7 uses
  %i.ad = load i32, ptr %.043, align 4, !tbaa !26
  %i.ae = and i32 %i.ad, %i.ac                    ; 2 uses
  store i32 %i.ae, ptr %.043, align 4, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.042, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %.043, i64 4 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = and i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = and i32 %i.an, %i.al
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %.042, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %.043, i64 12 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = and i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %.043, i64 16 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !26
  %i.ay = and i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %.042, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %.043, i64 20 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26
  %i.bd = and i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %.042, i64 24
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %.043, i64 24 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !26
  %i.bi = and i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %.042, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.043, i64 28 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !26
  %i.bn = and i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !26
  %.not = icmp eq ptr %.043, %i.i
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !26
  %i.bo = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !26
  %i.bq = load i32, ptr %i.am, align 4, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !26
  %i.bs = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !26
  %i.bu = load i32, ptr %i.aw, align 4, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !26
  %i.bw = load i32, ptr %i.bb, align 4, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !26
  %i.by = load i32, ptr %i.bg, align 4, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !26
  %i.ca = load i32, ptr %i.bl, align 4, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cc = load <4 x i32>, ptr %i.i, align 4, !tbaa !26
  %i.cd = xor <4 x i32> %i.cc, splat (i32 -1)
  store <4 x i32> %i.cd, ptr %i.i, align 4, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.cf = load <4 x i32>, ptr %i.ce, align 4, !tbaa !26
  %i.cg = xor <4 x i32> %i.cf, splat (i32 -1)
  store <4 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !161
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bbuf_free.exit55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond = select i1 %i.g, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.at, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !111
  %i.ck = icmp eq ptr %i.k, null
  br i1 %i.ck, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cl = icmp ne ptr %i.r, null
  %or.cond.i = and i1 %i.cl, %i.g
  br i1 %or.cond.i, label %bb.l, label %and_code_range_buf.exit

bb.l:                                             ; preds = %bb.k
  %i.cm = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 6 uses
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !111
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bbuf_free.exit55, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !112 ; 3 uses
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %and_code_range_buf.exitthread-pre-split.sink.split.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = zext nneg i32 %i.cp to i64
  %i.cs = call noalias ptr @malloc(i64 noundef %i.cr) #27 ; 3 uses
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !107
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bbuf_free.exit.i.i, label %and_code_range_buf.exitthread-pre-split.sink.split

bbuf_free.exit.i.i:                               ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.cm) #26
  br label %bbuf_free.exit55

bb.o:                                             ; preds = %bb.j
  %i.cu = icmp eq ptr %i.r, null
  br i1 %i.cu, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.not93.i = icmp eq i32 %i.o, 0
  br i1 %.not93.i, label %and_code_range_buf.exitthread-pre-split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 6 uses
  store ptr %i.cv, ptr %i.a, align 8, !tbaa !111
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bbuf_free.exit55, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !112 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, 1
  br i1 %i.cz, label %and_code_range_buf.exitthread-pre-split.sink.split.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = call noalias ptr @malloc(i64 noundef %i.da) #27 ; 3 uses
  store ptr %i.db, ptr %i.cv, align 8, !tbaa !107
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bbuf_free.exit.i96.i, label %and_code_range_buf.exitthread-pre-split.sink.split

bbuf_free.exit.i96.i:                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.cv) #26
  br label %bbuf_free.exit55

bb.t:                                             ; preds = %bb.o
  %.not.i = icmp eq i32 %i.h, 0
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !107 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !26 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 3 uses
  br i1 %.not.i, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.t
  %i.dg = icmp eq i32 %i.o, 0
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !107 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !26
  br i1 %i.dg, label %.preheader111.i, label %and_code_range_buf.exitthread-pre-split

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !107 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !26 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 3 uses
  %i.dm = icmp eq i32 %i.o, 0
  br i1 %i.dm, label %.preheader.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.u, %.thread.i
  %.ph.i = phi i32 [ %i.dk, %bb.u ], [ %i.de, %.thread.i ] ; 2 uses
  %.ph112.i = phi i32 [ %i.de, %bb.u ], [ %i.di, %.thread.i ] ; 2 uses
  %.ph113.i = phi ptr [ %i.dl, %bb.u ], [ %i.df, %.thread.i ] ; 4 uses
  %i.dn = phi ptr [ %i.dd, %bb.u ], [ %i.dh, %.thread.i ]
  %.not128.i = icmp eq i32 %.ph.i, 0
  br i1 %.not128.i, label %and_code_range_buf.exitthread-pre-split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader111.i
  %i.do = icmp sgt i32 %.ph112.i, 0
  %wide.trip.count.i.i = zext nneg i32 %.ph112.i to i64
  %wide.trip.count139.i = zext i32 %.ph.i to i64  ; 2 uses
  br i1 %i.do, label %.lr.ph.preheader.i.us.preheader.i, label %._crit_edge.i.i

.lr.ph.preheader.i.us.preheader.i:                ; preds = %.lr.ph.i
end_hunk_0
