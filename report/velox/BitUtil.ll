Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/BitUtil?download=true
inline.NumInlined: 97
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8facebook5velox4bits8toStringB5cxx11EPKvii:bb.a
  store i8 %i.at, ptr %i.au, align 1, !tbaa !11
  br label %_ZN8facebook5velox4bits8toStringEPKviiPc.exit

_ZN8facebook5velox4bits8toStringEPKviiPc.exit:    ; preds = %.lr.ph.i.epil.preheader, %_ZN8facebook5velox4bits8toStringEPKviiPc.exit.loopexit.unr-lcssa, %bb.f
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4bits11scatterBitsEiiPKcPKmPc(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN8facebook5velox7process7hasBmi2Ev()
  br i1 %i.a, label %.peel.begin, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.c = add nsw i32 %1, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = add nsw i32 %0, -1
  %i.f = sext i32 %i.e to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i, %.lr.ph.preheader.i
  %.015.i = phi i64 [ %i.an, %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i ], [ %i.d, %.lr.ph.preheader.i ] ; 8 uses
  %.01213.i = phi i64 [ %i.am, %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %i.g = lshr i64 %.015.i, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = and i64 %.015.i, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %i.m = icmp ne i64 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i
  %i.n = lshr i64 %.015.i, 3
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = lshr i64 %.01213.i, 3
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i32
  %i.u = trunc i64 %.01213.i to i32
  %i.v = and i32 %i.u, 7
  %i.w = shl nuw nsw i32 1, %i.v
  %i.x = and i32 %i.w, %i.t
  %.not.i = icmp eq i32 %i.x, 0
  %i.y = lshr i64 %.015.i, 3
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc i64 %.015.i to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = shl nuw i8 1, %i.ac
  %i.ae = or i8 %i.aa, %i.ad
  br label %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i

bb.e:                                             ; preds = %bb.c, %.thread.i
  %i.af = phi i8 [ %i.p, %.thread.i ], [ %i.aa, %bb.c ]
  %i.ag = phi ptr [ %i.o, %.thread.i ], [ %i.z, %bb.c ]
  %i.ah = and i64 %.015.i, 7
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = and i8 %i.aj, %i.af
  br label %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i:  ; preds = %bb.e, %bb.d
  %i.al = phi ptr [ %i.ag, %bb.e ], [ %i.z, %bb.d ]
  %.sink.i.i = phi i8 [ %i.ak, %bb.e ], [ %i.ae, %bb.d ]
  store i8 %.sink.i.i, ptr %i.al, align 1, !tbaa !11
  %.neg.i = sext i1 %i.m to i64
  %i.am = add i64 %.01213.i, %.neg.i
  %i.an = add nsw i64 %.015.i, -1
  %i.ao = icmp sgt i64 %.015.i, 0
  br i1 %i.ao, label %.lr.ph.i, label %_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit, !llvm.loop !27

.peel.begin:                                      ; preds = %bb.a
  %i.ap = sdiv i32 %1, 8                          ; 2 uses
  %i.aq = and i32 %1, 7
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 7)
  %.sroa.speculated53 = add nsw i32 %i.ar, -7     ; 6 uses
  %i.as = sub nsw i32 %i.ap, %.sroa.speculated53
  %i.at = shl nsw i32 %i.as, 3
  %i.au = or disjoint i32 %i.at, %i.aq            ; 2 uses
  %i.av = icmp eq i32 %i.au, 64
  br i1 %i.av, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.peel.begin
  %i.aw = zext nneg i32 %i.au to i64
  %notmask.i.peel = shl nsw i64 -1, %i.aw         ; 2 uses
  %i.ax = xor i64 %notmask.i.peel, -1             ; 2 uses
  %i.ay = zext nneg i32 %.sroa.speculated53 to i64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10
  %i.bb = and i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.bb)
  %i.bd = trunc nuw nsw i64 %i.bc to i32          ; 2 uses
  %i.be = sub nsw i32 %0, %i.bd                   ; 3 uses
  %i.bf = sdiv i32 %i.be, 8
  %i.bg = and i32 %i.be, 7                        ; 3 uses
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = lshr i64 %i.bj, %i.bk                   ; 2 uses
  %i.bm = add nuw nsw i32 %i.bg, %i.bd            ; 2 uses
  %i.bn = icmp samesign ugt i32 %i.bm, 64
  br i1 %i.bn, label %bb.g, label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.peel

bb.g:                                             ; preds = %bb.f
  %i.bo = sdiv i32 %0, 8
  %i.bp = add nsw i32 %i.bm, -64
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = zext nneg i32 %i.bp to i64
  %notmask.i.i47.peel = shl nsw i64 -1, %i.bt
  %i.bu = trunc nsw i64 %notmask.i.i47.peel to i8
  %i.bv = xor i8 %i.bu, -1
  %i.bw = and i8 %i.bs, %i.bv
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = sub nuw nsw i32 64, %i.bg
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl i64 %i.bx, %i.bz
  %i.cb = or i64 %i.ca, %i.bl
  br label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.peel

_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.peel: ; preds = %bb.g, %bb.f
  %.0.i46.peel = phi i64 [ %i.cb, %bb.g ], [ %i.bl, %bb.f ]
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay ; 2 uses
  %i.cd = tail call noundef i64 @llvm.pdep.i64(i64 %.0.i46.peel, i64 %i.bb)
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.cf = and i64 %i.ce, %notmask.i.peel
  %i.cg = and i64 %i.cd, %i.ax
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !10
  br label %bb.j

bb.h:                                             ; preds = %.peel.begin
  %i.ci = zext nneg i32 %.sroa.speculated53 to i64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !10 ; 2 uses
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ck)
  %i.cm = trunc nuw nsw i64 %i.cl to i32          ; 2 uses
  %i.cn = sub nsw i32 %0, %i.cm                   ; 3 uses
  %i.co = sdiv i32 %i.cn, 8
  %i.cp = and i32 %i.cn, 7                        ; 3 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds i8, ptr %2, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = zext nneg i32 %i.cp to i64
  %i.cu = lshr i64 %i.cs, %i.ct                   ; 2 uses
  %i.cv = add nuw nsw i32 %i.cp, %i.cm            ; 2 uses
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
  %.043.in = phi i32 [ %i.dn, %.peel.next ], [ %i.fm, %bb.o ]
  %.040 = phi i32 [ %.sroa.speculated53, %.peel.next ], [ %.043, %bb.o ]
  %.043 = add nsw i32 %.043.in, -8                ; 6 uses
  %i.do = sub nsw i32 %.040, %.043                ; 2 uses
  %i.dp = icmp eq i32 %i.do, 8
  br i1 %i.dp, label %bb.l, label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.a

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

_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.a: ; preds = %bb.k
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
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.ey ; 2 uses
  %6 = tail call noundef i64 @llvm.pdep.i64(i64 %i.fl, i64 %i.fb)
  %7 = load i64, ptr %5, align 8, !tbaa !10
  %8 = and i64 %7, %notmask.i
  %9 = and i64 %6, %i.ex
  %10 = or disjoint i64 %8, %9
  store i64 %10, ptr %5, align 8, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.a
  %.162 = phi i32 [ %i.dv, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit ], [ %i.fe, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.a ]
  %.not = icmp eq i32 %.043, 0
  br i1 %.not, label %_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fm = tail call i32 @llvm.smax.i32(i32 %.043, i32 8)
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
  %i.aq = icmp samesign ugt i32 %.04992, 47
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.053.lcssa = phi i64 [ %0, %bb.h ], [ %i.af, %.lr.ph ] ; 4 uses
  %.051.lcssa = phi i64 [ %i.z, %bb.h ], [ %i.aj, %.lr.ph ] ; 4 uses
  %.050.lcssa = phi i64 [ %i.aa, %bb.h ], [ %i.an, %.lr.ph ] ; 4 uses
  %.049.lcssa = phi i32 [ %i.ab, %bb.h ], [ %i.ap, %.lr.ph ] ; 14 uses
  %.0.lcssa = phi ptr [ %1, %bb.h ], [ %i.ao, %.lr.ph ] ; 11 uses
  %i.ar = icmp sgt i32 %.049.lcssa, 16
  br i1 %i.ar, label %bb.i, label %bb.o

bb.i:                                             ; preds = %._crit_edge
  %i.as = load i64, ptr %.0.lcssa, align 8, !tbaa !10
  %i.at = and i64 %.053.lcssa, 4294967295
  %i.au = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.at, i64 %i.as)
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10
  %i.ax = and i64 %.051.lcssa, 4294967295
  %i.ay = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ax, i64 %i.aw)
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.ba = add nsw i32 %.049.lcssa, -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store volatile i64 0, ptr %i.c, align 8, !tbaa !10
  %i.bb = icmp samesign ugt i32 %.049.lcssa, 19
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = load i32, ptr %i.az, align 8, !tbaa !13
  store volatile i32 %i.bc, ptr %i.c, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bf = add nsw i32 %.049.lcssa, -20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.018.i58 = phi ptr [ %i.be, %bb.j ], [ %i.c, %bb.i ] ; 3 uses
  %.016.i59 = phi ptr [ %i.bd, %bb.j ], [ %i.az, %bb.i ] ; 3 uses
  %.0.i60 = phi i32 [ %i.bf, %bb.j ], [ %i.ba, %bb.i ] ; 3 uses
  %i.bg = icmp samesign ugt i32 %.0.i60, 1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i16, ptr %.016.i59, align 2, !tbaa !15
  store volatile i16 %i.bh, ptr %.018.i58, align 2, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %.016.i59, i64 2
  %i.bj = getelementptr inbounds nuw i8, ptr %.018.i58, i64 2
  %i.bk = add nsw i32 %.0.i60, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.119.i61 = phi ptr [ %i.bj, %bb.l ], [ %.018.i58, %bb.k ]
  %.117.i62 = phi ptr [ %i.bi, %bb.l ], [ %.016.i59, %bb.k ]
  %.1.i63 = phi i32 [ %i.bk, %bb.l ], [ %.0.i60, %bb.k ]
  %i.bl = icmp eq i32 %.1.i63, 1
  br i1 %i.bl, label %bb.n, label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64

bb.n:                                             ; preds = %bb.m
  %i.bm = load i8, ptr %.117.i62, align 1, !tbaa !11
  store volatile i8 %i.bm, ptr %.119.i61, align 1, !tbaa !11
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit64: ; preds = %bb.m, %bb.n
  %i.bn = load volatile i64, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.bo = and i64 %.050.lcssa, 4294967295
  %i.bp = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.bo, i64 %i.bn)
  br label %bb.ai

bb.o:                                             ; preds = %._crit_edge
  %i.bq = icmp sgt i32 %.049.lcssa, 8
  br i1 %i.bq, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.br = load i64, ptr %.0.lcssa, align 8, !tbaa !10
  %i.bs = and i64 %.053.lcssa, 4294967295
  %i.bt = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.bs, i64 %i.br)
  %i.bu = icmp eq i32 %.049.lcssa, 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 3 uses
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !10
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.bx = add nsw i32 %.049.lcssa, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store volatile i64 0, ptr %i.b, align 8, !tbaa !10
  %i.by = icmp samesign ugt i32 %.049.lcssa, 11
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !13
  store volatile i32 %i.bz, ptr %i.b, align 8, !tbaa !13
end_hunk_0
