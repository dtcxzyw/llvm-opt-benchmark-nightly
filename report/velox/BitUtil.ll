Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/BitUtil?download=true
inline.NumInlined: 97
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8facebook5velox4bits11scatterBitsEiiPKcPKmPc:bb.a
  %i.cw = icmp samesign ugt i32 %i.cv, 64
  br i1 %i.cw, label %bb.i, label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel

bb.i:                                             ; preds = %bb.h
  %i.cx = sdiv i32 %0, 8
  %i.cy = add nsw i32 %i.cv, -64
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds i8, ptr %2, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !11
  %i.dc = zext nneg i32 %i.cy to i64
  %notmask.i.i.peel = shl nsw i64 -1, %i.dc
  %i.dd = trunc nsw i64 %notmask.i.i.peel to i8
  %i.de = xor i8 %i.dd, -1
  %i.df = and i8 %i.db, %i.de
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = sub nuw nsw i32 64, %i.cp
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl i64 %i.dg, %i.di
  %i.dk = or i64 %i.dj, %i.cu
  br label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel

_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel: ; preds = %bb.i, %bb.h
  %.0.i.peel = phi i64 [ %i.dk, %bb.i ], [ %i.cu, %bb.h ]
  %i.dl = tail call noundef i64 @llvm.pdep.i64(i64 %.0.i.peel, i64 %i.ck)
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 %i.ci
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.peel
  %.162.peel = phi i32 [ %i.cn, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel ], [ %i.be, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.peel ]
  %.not.peel = icmp eq i32 %.sroa.speculated53, 0
  br i1 %.not.peel, label %_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit, label %.peel.next

.peel.next:                                       ; preds = %bb.j
  %i.dn = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated53, i32 8)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.peel.next
  %.061 = phi i32 [ %.162.peel, %.peel.next ], [ %.162, %bb.o ] ; 3 uses
  %.043.in = phi i32 [ %i.dn, %.peel.next ], [ %i.fs, %bb.o ]
  %.040 = phi i32 [ %.sroa.speculated53, %.peel.next ], [ %.043, %bb.o ]
  %.043 = add nsw i32 %.043.in, -8                ; 6 uses
  %i.do = sub nsw i32 %.040, %.043                ; 2 uses
  %i.dp = icmp eq i32 %i.do, 8
  br i1 %i.dp, label %bb.l, label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48

bb.l:                                             ; preds = %bb.k
  %i.dq = zext nneg i32 %.043 to i64              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !10 ; 2 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ds)
  %i.du = trunc nuw nsw i64 %i.dt to i32          ; 2 uses
  %i.dv = sub nsw i32 %.061, %i.du                ; 3 uses
  %i.dw = sdiv i32 %i.dv, 8
  %i.dx = and i32 %i.dv, 7                        ; 3 uses
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds i8, ptr %2, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.eb = zext nneg i32 %i.dx to i64
  %i.ec = lshr i64 %i.ea, %i.eb                   ; 2 uses
  %i.ed = add nuw nsw i32 %i.dx, %i.du            ; 2 uses
  %i.ee = icmp samesign ugt i32 %i.ed, 64
  br i1 %i.ee, label %bb.m, label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit

bb.m:                                             ; preds = %bb.l
  %i.ef = sdiv i32 %.061, 8
  %i.eg = add nsw i32 %i.ed, -64
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds i8, ptr %2, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !11
  %i.ek = zext nneg i32 %i.eg to i64
  %notmask.i.i = shl nsw i64 -1, %i.ek
  %i.el = trunc nsw i64 %notmask.i.i to i8
  %i.em = xor i8 %i.el, -1
  %i.en = and i8 %i.ej, %i.em
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = sub nuw nsw i32 64, %i.dx
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl i64 %i.eo, %i.eq
  %i.es = or i64 %i.er, %i.ec
  br label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit

_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi i64 [ %i.es, %bb.m ], [ %i.ec, %bb.l ]
  %i.et = tail call noundef i64 @llvm.pdep.i64(i64 %.0.i, i64 %i.ds)
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 %i.dq
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !10
  br label %bb.n

_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48: ; preds = %bb.k
  %i.ev = shl nsw i32 %i.do, 3
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i = shl nsw i64 -1, %i.ew              ; 2 uses
  %i.ex = xor i64 %notmask.i, -1                  ; 2 uses
  %i.ey = zext nneg i32 %.043 to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = and i64 %i.fa, %i.ex                    ; 2 uses
  %i.fc = tail call range(i64 0, 57) i64 @llvm.ctpop.i64(i64 %i.fb)
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %i.fe = sub nsw i32 %.061, %i.fd                ; 3 uses
  %i.ff = sdiv i32 %i.fe, 8
  %i.fg = and i32 %i.fe, 7
  %i.fh = sext i32 %i.ff to i64
  %i.fi = getelementptr inbounds i8, ptr %2, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !10
  %i.fk = zext nneg i32 %i.fg to i64
  %i.fl = lshr i64 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 %i.ey ; 2 uses
  %i.fn = tail call noundef i64 @llvm.pdep.i64(i64 %i.fl, i64 %i.fb)
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !10
  %i.fp = and i64 %i.fo, %notmask.i
  %i.fq = and i64 %i.fn, %i.ex
  %i.fr = or disjoint i64 %i.fp, %i.fq
  store i64 %i.fr, ptr %i.fm, align 8, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48
  %.162 = phi i32 [ %i.dv, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit ], [ %i.fe, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48 ]
  %.not = icmp eq i32 %.043, 0
  br i1 %.not, label %_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fs = tail call i32 @llvm.smax.i32(i32 %.043, i32 8)
  br label %bb.k, !llvm.loop !28

_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit: ; preds = %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i, %bb.n, %bb.j, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN8facebook5velox7process7hasBmi2Ev() local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = icmp ult i64 %2, 8
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %2 to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store volatile i64 0, ptr %i.d, align 8, !tbaa !10
  %i.g = icmp samesign ugt i64 %2, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4, !tbaa !13
  store volatile i32 %i.h, ptr %i.d, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = add nsw i32 %i.f, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.018.i = phi ptr [ %i.j, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %.016.i = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.0.i = phi i32 [ %i.k, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.l = icmp samesign ugt i32 %.0.i, 1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr %.016.i, align 2, !tbaa !15
  store volatile i16 %i.m, ptr %.018.i, align 2, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %.016.i, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 2
  %i.p = add nsw i32 %.0.i, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.119.i = phi ptr [ %i.o, %bb.e ], [ %.018.i, %bb.d ]
  %.117.i = phi ptr [ %i.n, %bb.e ], [ %.016.i, %bb.d ]
  %.1.i = phi i32 [ %i.p, %bb.e ], [ %.0.i, %bb.d ]
  %i.q = icmp eq i32 %.1.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %.117.i, align 1, !tbaa !11
  store volatile i8 %i.r, ptr %.119.i, align 1, !tbaa !11
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit: ; preds = %bb.f, %bb.g
  %i.s = load volatile i64, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.t = and i64 %0, 4294967295                   ; 2 uses
  %i.u = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.t, i64 %i.s)
  %i.v = lshr i64 %i.s, 32
  %i.w = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.t, i64 %i.v)
  %i.x = shl nuw i64 %i.w, 32
  %i.y = or disjoint i64 %i.x, %i.u
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  %i.z = shl i64 %0, 32                           ; 2 uses
  %i.aa = lshr i64 %0, 16                         ; 2 uses
  %i.ab = trunc i64 %2 to i32                     ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 23
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.093 = phi ptr [ %i.ao, %.lr.ph ], [ %1, %bb.h ] ; 4 uses
  %.04992 = phi i32 [ %i.ap, %.lr.ph ], [ %i.ab, %bb.h ] ; 2 uses
  %.05091 = phi i64 [ %i.an, %.lr.ph ], [ %i.aa, %bb.h ]
  %.05190 = phi i64 [ %i.aj, %.lr.ph ], [ %i.z, %bb.h ]
  %.05389 = phi i64 [ %i.af, %.lr.ph ], [ %0, %bb.h ]
  %i.ad = load i64, ptr %.093, align 8, !tbaa !10
  %i.ae = and i64 %.05389, 4294967295
  %i.af = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ae, i64 %i.ad) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.093, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !10
  %i.ai = and i64 %.05190, 4294967295
  %i.aj = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ai, i64 %i.ah) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.093, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = and i64 %.05091, 4294967295
  %i.an = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.am, i64 %i.al) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.093, i64 24 ; 2 uses
  %i.ap = add nsw i32 %.04992, -24                ; 2 uses
  %3 = icmp samesign ugt i32 %.04992, 47
  br i1 %3, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.053.lcssa = phi i64 [ %0, %bb.h ], [ %i.af, %.lr.ph ] ; 4 uses
  %.051.lcssa = phi i64 [ %i.z, %bb.h ], [ %i.aj, %.lr.ph ] ; 4 uses
  %.050.lcssa = phi i64 [ %i.aa, %bb.h ], [ %i.an, %.lr.ph ] ; 4 uses
  %.049.lcssa = phi i32 [ %i.ab, %bb.h ], [ %i.ap, %.lr.ph ] ; 14 uses
  %.0.lcssa = phi ptr [ %1, %bb.h ], [ %i.ao, %.lr.ph ] ; 11 uses
  %i.aq = icmp sgt i32 %.049.lcssa, 16
  br i1 %i.aq, label %bb.i, label %bb.o

bb.i:                                             ; preds = %._crit_edge
  %i.ar = load i64, ptr %.0.lcssa, align 8, !tbaa !10
  %i.as = and i64 %.053.lcssa, 4294967295
  %i.at = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.as, i64 %i.ar)
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = and i64 %.051.lcssa, 4294967295
  %i.ax = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.aw, i64 %i.av)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.az = add nsw i32 %.049.lcssa, -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store volatile i64 0, ptr %i.c, align 8, !tbaa !10
  %i.ba = icmp samesign ugt i32 %.049.lcssa, 19
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !13
  store volatile i32 %i.bb, ptr %i.c, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.be = add nsw i32 %.049.lcssa, -20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.018.i58 = phi ptr [ %i.bd, %bb.j ], [ %i.c, %bb.i ] ; 3 uses
  %.016.i59 = phi ptr [ %i.bc, %bb.j ], [ %i.ay, %bb.i ] ; 3 uses
  %.0.i60 = phi i32 [ %i.be, %bb.j ], [ %i.az, %bb.i ] ; 3 uses
  %i.bf = icmp samesign ugt i32 %.0.i60, 1
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i16, ptr %.016.i59, align 2, !tbaa !15
  store volatile i16 %i.bg, ptr %.018.i58, align 2, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %.016.i59, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.018.i58, i64 2
  %i.bj = add nsw i32 %.0.i60, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.119.i61 = phi ptr [ %i.bi, %bb.l ], [ %.018.i58, %bb.k ]
  %.117.i62 = phi ptr [ %i.bh, %bb.l ], [ %.016.i59, %bb.k ]
  %.1.i63 = phi i32 [ %i.bj, %bb.l ], [ %.0.i60, %bb.k ]
  %i.bk = icmp eq i32 %.1.i63, 1
  br i1 %i.bk, label %bb.n, label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64

bb.n:                                             ; preds = %bb.m
  %i.bl = load i8, ptr %.117.i62, align 1, !tbaa !11
  store volatile i8 %i.bl, ptr %.119.i61, align 1, !tbaa !11
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64: ; preds = %bb.m, %bb.n
  %i.bm = load volatile i64, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.bn = and i64 %.050.lcssa, 4294967295
  %i.bo = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.bn, i64 %i.bm)
  br label %bb.ai

bb.o:                                             ; preds = %._crit_edge
  %i.bp = icmp sgt i32 %.049.lcssa, 8
  br i1 %i.bp, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bq = load i64, ptr %.0.lcssa, align 8, !tbaa !10
  %i.br = and i64 %.053.lcssa, 4294967295
  %i.bs = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.br, i64 %i.bq)
  %i.bt = icmp eq i32 %.049.lcssa, 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 3 uses
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.bw = add nsw i32 %.049.lcssa, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store volatile i64 0, ptr %i.b, align 8, !tbaa !10
  %i.bx = icmp samesign ugt i32 %.049.lcssa, 11
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = load i32, ptr %i.bu, align 8, !tbaa !13
  store volatile i32 %i.by, ptr %i.b, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cb = add nsw i32 %.049.lcssa, -12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.018.i65 = phi ptr [ %i.ca, %bb.s ], [ %i.b, %bb.r ] ; 3 uses
  %.016.i66 = phi ptr [ %i.bz, %bb.s ], [ %i.bu, %bb.r ] ; 3 uses
  %.0.i67 = phi i32 [ %i.cb, %bb.s ], [ %i.bw, %bb.r ] ; 3 uses
  %i.cc = icmp samesign ugt i32 %.0.i67, 1
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = load i16, ptr %.016.i66, align 2, !tbaa !15
  store volatile i16 %i.cd, ptr %.018.i65, align 2, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %.016.i66, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.018.i65, i64 2
  %i.cg = add nsw i32 %.0.i67, -2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.119.i68 = phi ptr [ %i.cf, %bb.u ], [ %.018.i65, %bb.t ]
  %.117.i69 = phi ptr [ %i.ce, %bb.u ], [ %.016.i66, %bb.t ]
  %.1.i70 = phi i32 [ %i.cg, %bb.u ], [ %.0.i67, %bb.t ]
  %i.ch = icmp eq i32 %.1.i70, 1
  br i1 %i.ch, label %bb.w, label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71

bb.w:                                             ; preds = %bb.v
  %i.ci = load i8, ptr %.117.i69, align 1, !tbaa !11
  store volatile i8 %i.ci, ptr %.119.i68, align 1, !tbaa !11
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71: ; preds = %bb.v, %bb.w
  %i.cj = load volatile i64, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71, %bb.q
  %i.ck = phi i64 [ %i.bv, %bb.q ], [ %i.cj, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit71 ]
  %i.cl = and i64 %.051.lcssa, 4294967295
  %i.cm = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.cl, i64 %i.ck)
  br label %bb.ai

bb.y:                                             ; preds = %bb.o
  %i.cn = icmp sgt i32 %.049.lcssa, 0
  br i1 %i.cn, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.co = icmp eq i32 %.049.lcssa, 8
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cp = load i64, ptr %.0.lcssa, align 8, !tbaa !10
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store volatile i64 0, ptr %i.a, align 8, !tbaa !10
  %i.cq = icmp samesign ugt i32 %.049.lcssa, 3
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i32, ptr %.0.lcssa, align 4, !tbaa !13
  store volatile i32 %i.cr, ptr %i.a, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cu = add nsw i32 %.049.lcssa, -4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.018.i72 = phi ptr [ %i.ct, %bb.ac ], [ %i.a, %bb.ab ] ; 3 uses
  %.016.i73 = phi ptr [ %i.cs, %bb.ac ], [ %.0.lcssa, %bb.ab ] ; 3 uses
  %.0.i74 = phi i32 [ %i.cu, %bb.ac ], [ %.049.lcssa, %bb.ab ] ; 3 uses
  %i.cv = icmp samesign ugt i32 %.0.i74, 1
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = load i16, ptr %.016.i73, align 2, !tbaa !15
  store volatile i16 %i.cw, ptr %.018.i72, align 2, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %.016.i73, i64 2
  %i.cy = getelementptr inbounds nuw i8, ptr %.018.i72, i64 2
  %i.cz = add nsw i32 %.0.i74, -2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.119.i75 = phi ptr [ %i.cy, %bb.ae ], [ %.018.i72, %bb.ad ]
  %.117.i76 = phi ptr [ %i.cx, %bb.ae ], [ %.016.i73, %bb.ad ]
  %.1.i77 = phi i32 [ %i.cz, %bb.ae ], [ %.0.i74, %bb.ad ]
  %i.da = icmp eq i32 %.1.i77, 1
  br i1 %i.da, label %bb.ag, label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78

bb.ag:                                            ; preds = %bb.af
  %i.db = load i8, ptr %.117.i76, align 1, !tbaa !11
  store volatile i8 %i.db, ptr %.119.i75, align 1, !tbaa !11
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78: ; preds = %bb.af, %bb.ag
  %i.dc = load volatile i64, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78, %bb.aa
  %i.dd = phi i64 [ %i.cp, %bb.aa ], [ %i.dc, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit78 ]
  %i.de = and i64 %.053.lcssa, 4294967295
  %i.df = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.de, i64 %i.dd)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.x, %bb.ah, %bb.y, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64
  %.154 = phi i64 [ %i.at, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64 ], [ %i.bs, %bb.x ], [ %i.df, %bb.ah ], [ %.053.lcssa, %bb.y ]
  %.152 = phi i64 [ %i.ax, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64 ], [ %i.cm, %bb.x ], [ %.051.lcssa, %bb.ah ], [ %.051.lcssa, %bb.y ]
  %.1 = phi i64 [ %i.bo, %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64 ], [ %.050.lcssa, %bb.x ], [ %.050.lcssa, %bb.ah ], [ %.050.lcssa, %bb.y ]
  %i.dg = mul i64 %.152, -7070675565921424023
  %i.dh = xor i64 %i.dg, %.154
  %i.di = mul i64 %.1, -7070675565921424023
end_hunk_0
