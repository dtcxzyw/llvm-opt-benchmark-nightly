inline.NumInlined: 97
inline.NumDeleted: 64
begin_hunk_0_@_ZN8facebook5velox4bits8toStringB5cxx11EPKvii:bb.a
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = add nsw i64 %indvars.iv.i, %i.m          ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32
  %i.t = trunc nsw i64 %i.o to i32
  %i.u = and i32 %i.t, 7
  %i.v = shl nuw nsw i32 1, %i.u
  %i.w = and i32 %i.v, %i.s
  %.not.i = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not.i, i8 48, i8 49
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !9
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = add nsw i64 %indvars.iv.next.i, %i.m     ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = trunc nsw i64 %i.z to i32
  %i.af = and i32 %i.ae, 7
  %i.ag = shl nuw nsw i32 1, %i.af
  %i.ah = and i32 %i.ag, %i.ad
  %.not.i.1 = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not.i.1, i8 48, i8 49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN8facebook5velox4bits8toStringEPKviiPc.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

_ZN8facebook5velox4bits8toStringEPKviiPc.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox4bits8toStringEPKviiPc.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox4bits8toStringEPKviiPc.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN8facebook5velox4bits8toStringEPKviiPc.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod10 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.ak = add nsw i64 %indvars.iv.i.epil.init, %i.m ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = zext i8 %i.an to i32
  %i.ap = trunc nsw i64 %i.ak to i32
  %i.aq = and i32 %i.ap, 7
  %i.ar = shl nuw nsw i32 1, %i.aq
  %i.as = and i32 %i.ar, %i.ao
  %.not.i.epil = icmp eq i32 %i.as, 0
  %i.at = select i1 %.not.i.epil, i8 48, i8 49
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i.epil.init
  store i8 %i.at, ptr %i.au, align 1, !tbaa !9
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
  %.014.i = phi i64 [ %i.am, %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %.01213.i = phi i64 [ %i.an, %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i ], [ %i.d, %.lr.ph.preheader.i ] ; 8 uses
  %i.g = lshr i64 %.01213.i, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7
  %i.j = and i64 %.01213.i, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.k, %i.i
  %i.m = icmp ne i64 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i
  %i.n = lshr i64 %.01213.i, 3
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = lshr i64 %.014.i, 3
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i32
  %i.u = trunc i64 %.014.i to i32
  %i.v = and i32 %i.u, 7
  %i.w = shl nuw nsw i32 1, %i.v
  %i.x = and i32 %i.w, %i.t
  %.not.i = icmp eq i32 %i.x, 0
  %i.y = lshr i64 %.01213.i, 3
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9    ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc i64 %.01213.i to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = shl nuw i8 1, %i.ac
  %i.ae = or i8 %i.aa, %i.ad
  br label %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i

bb.e:                                             ; preds = %bb.c, %.thread.i
  %i.af = phi i8 [ %i.p, %.thread.i ], [ %i.aa, %bb.c ]
  %i.ag = phi ptr [ %i.o, %.thread.i ], [ %i.z, %bb.c ]
  %i.ah = and i64 %.01213.i, 7
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = and i8 %i.aj, %i.af
  br label %_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIcEEvPT_mb.exit.i:  ; preds = %bb.e, %bb.d
  %i.al = phi ptr [ %i.ag, %bb.e ], [ %i.z, %bb.d ]
  %.sink.i.i = phi i8 [ %i.ak, %bb.e ], [ %i.ae, %bb.d ]
  store i8 %.sink.i.i, ptr %i.al, align 1, !tbaa !9
  %.neg.i = sext i1 %i.m to i64
  %i.am = add i64 %.014.i, %.neg.i
  %i.an = add nsw i64 %.01213.i, -1
  %i.ao = icmp sgt i64 %.01213.i, 0
  br i1 %i.ao, label %.lr.ph.i, label %_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit, !llvm.loop !25

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
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !7
  %i.bb = and i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.bb)
  %i.bd = trunc nuw nsw i64 %i.bc to i32          ; 2 uses
  %i.be = sub nsw i32 %0, %i.bd                   ; 3 uses
  %i.bf = sdiv i32 %i.be, 8
  %i.bg = and i32 %i.be, 7                        ; 3 uses
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !7
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
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
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
  %5 = call i64 @llvm.pdep.i64(i64 %.0.i46.peel, i64 %i.bb)
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !7
  %i.ce = and i64 %i.cd, %notmask.i.peel
  %i.cf = and i64 %5, %i.ax
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.cc, align 8, !tbaa !7
  br label %bb.j

bb.h:                                             ; preds = %.peel.begin
  %i.ch = zext nneg i32 %.sroa.speculated53 to i64 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !7  ; 2 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cj)
  %i.cl = trunc nuw nsw i64 %i.ck to i32          ; 2 uses
  %i.cm = sub nsw i32 %0, %i.cl                   ; 3 uses
  %i.cn = sdiv i32 %i.cm, 8
  %i.co = and i32 %i.cm, 7                        ; 3 uses
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !7
  %i.cs = zext nneg i32 %i.co to i64
  %i.ct = lshr i64 %i.cr, %i.cs                   ; 2 uses
  %i.cu = add nuw nsw i32 %i.co, %i.cl            ; 2 uses
  %i.cv = icmp samesign ugt i32 %i.cu, 64
  br i1 %i.cv, label %bb.i, label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel

bb.i:                                             ; preds = %bb.h
  %i.cw = sdiv i32 %0, 8
  %i.cx = add nsw i32 %i.cu, -64
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds i8, ptr %2, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.db = zext nneg i32 %i.cx to i64
  %notmask.i.i.peel = shl nsw i64 -1, %i.db
  %i.dc = trunc nsw i64 %notmask.i.i.peel to i8
  %i.dd = xor i8 %i.dc, -1
  %i.de = and i8 %i.da, %i.dd
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = sub nuw nsw i32 64, %i.co
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = shl i64 %i.df, %i.dh
  %i.dj = or i64 %i.di, %i.ct
  br label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel

_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel: ; preds = %bb.i, %bb.h
  %.0.i.peel = phi i64 [ %i.dj, %bb.i ], [ %i.ct, %bb.h ]
  %6 = call i64 @llvm.pdep.i64(i64 %.0.i.peel, i64 %i.cj)
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 %i.ch
  store i64 %6, ptr %i.dk, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.peel
  %.162.peel = phi i32 [ %i.cm, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit.peel ], [ %i.be, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48.peel ]
  %.not.peel = icmp eq i32 %.sroa.speculated53, 0
  br i1 %.not.peel, label %_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit, label %.peel.next

.peel.next:                                       ; preds = %bb.j
  %i.dl = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated53, i32 8)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.peel.next
  %.061 = phi i32 [ %.162.peel, %.peel.next ], [ %.162, %bb.o ] ; 3 uses
  %.043.in = phi i32 [ %i.dl, %.peel.next ], [ %i.fo, %bb.o ]
  %.040 = phi i32 [ %.sroa.speculated53, %.peel.next ], [ %.043, %bb.o ]
  %.043 = add nsw i32 %.043.in, -8                ; 6 uses
  %i.dm = sub nsw i32 %.040, %.043                ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 8
  br i1 %i.dn, label %bb.l, label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48

bb.l:                                             ; preds = %bb.k
  %i.do = zext nneg i32 %.043 to i64              ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !7  ; 2 uses
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dq)
  %i.ds = trunc nuw nsw i64 %i.dr to i32          ; 2 uses
  %i.dt = sub nsw i32 %.061, %i.ds                ; 3 uses
  %i.du = sdiv i32 %i.dt, 8
  %i.dv = and i32 %i.dt, 7                        ; 3 uses
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds i8, ptr %2, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !7
  %i.dz = zext nneg i32 %i.dv to i64
  %i.ea = lshr i64 %i.dy, %i.dz                   ; 2 uses
  %i.eb = add nuw nsw i32 %i.dv, %i.ds            ; 2 uses
  %i.ec = icmp samesign ugt i32 %i.eb, 64
  br i1 %i.ec, label %bb.m, label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit

bb.m:                                             ; preds = %bb.l
  %i.ed = sdiv i32 %.061, 8
  %i.ee = add nsw i32 %i.eb, -64
  %i.ef = sext i32 %i.ed to i64
  %i.eg = getelementptr inbounds i8, ptr %2, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !9
  %i.ei = zext nneg i32 %i.ee to i64
  %notmask.i.i = shl nsw i64 -1, %i.ei
  %i.ej = trunc nsw i64 %notmask.i.i to i8
  %i.ek = xor i8 %i.ej, -1
  %i.el = and i8 %i.eh, %i.ek
  %i.em = zext nneg i8 %i.el to i64
  %i.en = sub nuw nsw i32 64, %i.dv
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl i64 %i.em, %i.eo
  %i.eq = or i64 %i.ep, %i.ea
  br label %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit

_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi i64 [ %i.eq, %bb.m ], [ %i.ea, %bb.l ]
  %7 = call i64 @llvm.pdep.i64(i64 %.0.i, i64 %i.dq)
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 %i.do
  store i64 %7, ptr %i.er, align 8, !tbaa !7
  br label %bb.n

_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48: ; preds = %bb.k
  %i.es = shl nsw i32 %i.dm, 3
  %i.et = zext nneg i32 %i.es to i64
  %notmask.i = shl nsw i64 -1, %i.et              ; 2 uses
  %i.eu = xor i64 %notmask.i, -1                  ; 2 uses
  %i.ev = zext nneg i32 %.043 to i64              ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !7
  %i.ey = and i64 %i.ex, %i.eu                    ; 2 uses
  %i.ez = tail call range(i64 0, 57) i64 @llvm.ctpop.i64(i64 %i.ey)
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = sub nsw i32 %.061, %i.fa                ; 3 uses
  %i.fc = sdiv i32 %i.fb, 8
  %i.fd = and i32 %i.fb, 7
  %i.fe = sext i32 %i.fc to i64
  %i.ff = getelementptr inbounds i8, ptr %2, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !7
  %i.fh = zext nneg i32 %i.fd to i64
  %i.fi = lshr i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ev ; 2 uses
  %8 = call i64 @llvm.pdep.i64(i64 %i.fi, i64 %i.ey)
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !7
  %i.fl = and i64 %i.fk, %notmask.i
  %i.fm = and i64 %8, %i.eu
  %i.fn = or disjoint i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.fj, align 8, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48
  %.162 = phi i32 [ %i.dt, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit ], [ %i.fb, %_ZN8facebook5velox4bits12_GLOBAL__N_111getBitFieldEPKciRi.exit48 ]
  %.not = icmp eq i32 %.043, 0
  br i1 %.not, label %_ZN8facebook5velox4bits12_GLOBAL__N_117scatterBitsSimpleEiiPKcPKmPc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fo = tail call i32 @llvm.smax.i32(i32 %.043, i32 8)
  br label %bb.k, !llvm.loop !26

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
  store volatile i64 0, ptr %i.d, align 8, !tbaa !7
  %i.g = icmp samesign ugt i64 %2, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4, !tbaa !3
  store volatile i32 %i.h, ptr %i.d, align 8, !tbaa !3
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
  %i.m = load i16, ptr %.016.i, align 2, !tbaa !13
  store volatile i16 %i.m, ptr %.018.i, align 2, !tbaa !13
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
  %i.r = load i8, ptr %.117.i, align 1, !tbaa !9
  store volatile i8 %i.r, ptr %.119.i, align 1, !tbaa !9
  br label %_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit

_ZN8facebook5velox4bits15loadPartialWordEPKhi.exit: ; preds = %bb.f, %bb.g
  %i.s = load volatile i64, ptr %i.d, align 8, !tbaa !7 ; 2 uses
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
  %i.aa = lshr i64 %0, 16                         ; 3 uses
  %i.ab = trunc i64 %2 to i32                     ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 23
  br i1 %i.ac, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ad = add nsw i32 %i.ab, -24                  ; 2 uses
  %i.ae = udiv i32 %i.ad, 24
  %i.af = and i32 %i.ae, 1
  %lcmp.mod.not.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ag = load i64, ptr %1, align 8, !tbaa !7
  %i.ah = and i64 %0, 4294967295
  %i.ai = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ah, i64 %i.ag) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !7
  %i.al = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) 0, i64 %i.ak) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !7
  %i.ao = and i64 %i.aa, 4294967295
  %i.ap = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ao, i64 %i.an) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = add nsw i32 %i.ab, -24                  ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.093.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.aq, %.lr.ph.prol ]
  %.04992.unr = phi i32 [ %i.ab, %.lr.ph.preheader ], [ %i.ar, %.lr.ph.prol ]
  %.05091.unr = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %i.ap, %.lr.ph.prol ]
  %.05190.unr = phi i64 [ %i.z, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %.05389.unr = phi i64 [ %0, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.lcssa116.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.lcssa115.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %.lcssa114.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.ap, %.lr.ph.prol ]
  %.lcssa113.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.aq, %.lr.ph.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.ar, %.lr.ph.prol ]
  %i.as = icmp ult i32 %i.ad, 24
  br i1 %i.as, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.093 = phi ptr [ %i.bn, %.lr.ph ], [ %.093.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %.04992 = phi i32 [ %i.bo, %.lr.ph ], [ %.04992.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.05091 = phi i64 [ %i.bm, %.lr.ph ], [ %.05091.unr, %.lr.ph.prol.loopexit ]
  %.05190 = phi i64 [ %i.bj, %.lr.ph ], [ %.05190.unr, %.lr.ph.prol.loopexit ]
  %.05389 = phi i64 [ %i.bg, %.lr.ph ], [ %.05389.unr, %.lr.ph.prol.loopexit ]
  %i.at = load i64, ptr %.093, align 8, !tbaa !7
  %i.au = and i64 %.05389, 4294967295
  %i.av = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.au, i64 %i.at)
  %i.aw = getelementptr inbounds nuw i8, ptr %.093, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !7
  %i.ay = and i64 %.05190, 4294967295
  %i.az = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ay, i64 %i.ax)
  %i.ba = getelementptr inbounds nuw i8, ptr %.093, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !7
  %i.bc = and i64 %.05091, 4294967295
  %i.bd = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.bc, i64 %i.bb)
  %i.be = getelementptr inbounds nuw i8, ptr %.093, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !7
  %i.bg = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.av, i64 %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.093, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !7
  %i.bj = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.az, i64 %i.bi) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.093, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !7
  %i.bm = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.bd, i64 %i.bl) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.093, i64 48 ; 2 uses
  %i.bo = add nsw i32 %.04992, -48                ; 2 uses
  %i.bp = icmp sgt i32 %.04992, 71
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.053.lcssa = phi i64 [ %0, %bb.h ], [ %.lcssa116.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ] ; 4 uses
  %.051.lcssa = phi i64 [ %i.z, %bb.h ], [ %.lcssa115.unr, %.lr.ph.prol.loopexit ], [ %i.bj, %.lr.ph ] ; 4 uses
  %.050.lcssa = phi i64 [ %i.aa, %bb.h ], [ %.lcssa114.unr, %.lr.ph.prol.loopexit ], [ %i.bm, %.lr.ph ] ; 4 uses
  %.049.lcssa = phi i32 [ %i.ab, %bb.h ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bo, %.lr.ph ] ; 14 uses
  %.0.lcssa = phi ptr [ %1, %bb.h ], [ %.lcssa113.unr, %.lr.ph.prol.loopexit ], [ %i.bn, %.lr.ph ] ; 11 uses
  %i.bq = icmp sgt i32 %.049.lcssa, 16
  br i1 %i.bq, label %bb.i, label %bb.o

bb.i:                                             ; preds = %._crit_edge
  %i.br = load i64, ptr %.0.lcssa, align 8, !tbaa !7
  %i.bs = and i64 %.053.lcssa, 4294967295
  %i.bt = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.bs, i64 %i.br)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !7
  %i.bw = and i64 %.051.lcssa, 4294967295
  %i.bx = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.bw, i64 %i.bv)
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.bz = add nsw i32 %.049.lcssa, -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store volatile i64 0, ptr %i.c, align 8, !tbaa !7
  %i.ca = icmp samesign ugt i32 %.049.lcssa, 19
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !3
  store volatile i32 %i.cb, ptr %i.c, align 8, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ce = add nsw i32 %.049.lcssa, -20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.018.i58 = phi ptr [ %i.cd, %bb.j ], [ %i.c, %bb.i ] ; 3 uses
  %.016.i59 = phi ptr [ %i.cc, %bb.j ], [ %i.by, %bb.i ] ; 3 uses
  %.0.i60 = phi i32 [ %i.ce, %bb.j ], [ %i.bz, %bb.i ] ; 3 uses
  %i.cf = icmp samesign ugt i32 %.0.i60, 1
  br i1 %i.cf, label %bb.l, label %bb.m
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits10packBitmapESt4spanIKbLm18446744073709551615EEPc:bb.a
  %bc.merge.rdx = phi i64 [ %i.ab, %vec.epilog.iter.check ], [ %.019.lcssa.promoted, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %1, 60                       ; 4 uses
  %i.ac = getelementptr i8, ptr %.018.lcssa, i64 %n.vec51
  %i.ad = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind53 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next58, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi54 = phi <4 x i64> [ %i.ad, %vec.epilog.ph ], [ %i.ag, %vec.epilog.vector.body ]
  %next.gep55 = getelementptr i8, ptr %.018.lcssa, i64 %index52
  %wide.load56 = load <4 x i8>, ptr %next.gep55, align 1, !tbaa !29
  %i.ae = zext nneg <4 x i8> %wide.load56 to <4 x i64>
  %i.af = shl nuw <4 x i64> %i.ae, %vec.ind53
  %i.ag = or <4 x i64> %i.af, %vec.phi54          ; 2 uses
  %index.next57 = add nuw i64 %index52, 4         ; 2 uses
  %vec.ind.next58 = add nuw nsw <4 x i64> %vec.ind53, splat (i64 4)
  %i.ah = icmp eq i64 %index.next57, %n.vec51
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ai = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.ag) ; 2 uses
  %cmp.n59 = icmp eq i64 %i.b, %n.vec51
  br i1 %cmp.n59, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  %.ph = phi i64 [ %.019.lcssa.promoted, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.228.ph = phi ptr [ %.018.lcssa, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i64 [ %i.ai, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.ao, %vec.epilog.scalar.ph ]
  store i64 %.lcssa, ptr %.019.lcssa, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.preheader
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aj = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %.228 = phi ptr [ %i.ak, %vec.epilog.scalar.ph ], [ %.228.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.228, i64 1
  %i.al = load i8, ptr %.228, align 1, !tbaa !29, !range !37, !noundef !38
  %i.am = zext nneg i8 %i.al to i64
  %i.an = shl nuw i64 %i.am, %indvars.iv
  %i.ao = or i64 %i.an, %i.aj                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond37.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN8facebook5velox4bits10findSetBitEPKcjjj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp uge i32 %1, %2
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread87, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 6                           ; 2 uses
  %i.d = and i32 %1, 63
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !7
  %i.h = zext nneg i32 %i.d to i64
  %notmask = shl nsw i64 -1, %i.h
  %i.i = and i64 %i.g, %notmask
  br label %bb.c

bb.c:                                             ; preds = %select.unfold, %bb.b
  %.059 = phi i64 [ %i.i, %bb.b ], [ %.463, %select.unfold ] ; 2 uses
  %.057 = phi i32 [ %i.c, %bb.b ], [ %i.x, %select.unfold ] ; 2 uses
  %.049 = phi i32 [ %3, %bb.b ], [ %i.z, %select.unfold ] ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.059)
  %i.k = trunc nuw nsw i64 %i.j to i32            ; 2 uses
  %i.l = add i32 %.049, -1
  %or.cond3 = icmp ult i32 %i.l, %i.k
  br i1 %or.cond3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c, %bb.d
  %.160 = phi i64 [ %i.q, %bb.d ], [ %.059, %bb.c ] ; 3 uses
  %.150 = phi i32 [ %i.r, %bb.d ], [ %.049, %bb.c ] ; 2 uses
  %i.m = icmp eq i64 %.160, 0
  br i1 %i.m, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.160, i1 true) ; 2 uses
  %i.o = shl nuw i64 1, %i.n
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %.160, %i.p
  %i.r = add nsw i32 %.150, -1                    ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %.preheader

.thread:                                          ; preds = %bb.d
  %i.t = trunc nuw nsw i64 %i.n to i32
  %i.u = shl i32 %.057, 6
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %2)
  br label %.thread87

.loopexit:                                        ; preds = %.preheader, %bb.c
  %.352 = phi i32 [ %.049, %bb.c ], [ %.150, %.preheader ]
  %i.x = add i32 %.057, 1                         ; 3 uses
  %i.y = shl i32 %i.x, 6                          ; 3 uses
  %.not = icmp ult i32 %i.y, %2
  br i1 %.not, label %select.unfold, label %.thread87

select.unfold:                                    ; preds = %.loopexit
  %i.z = sub i32 %.352, %i.k
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !7
  %i.ad = add i32 %i.y, 64
  %i.ae = icmp ugt i32 %i.ad, %2
  %i.af = sub nuw i32 %2, %i.y
  %i.ag = zext nneg i32 %i.af to i64
  %notmask73 = shl nsw i64 -1, %i.ag
  %i.ah = xor i64 %notmask73, -1
  %i.ai = select i1 %i.ae, i64 %i.ah, i64 -1
  %.463 = and i64 %i.ac, %i.ai
  br label %bb.c

.thread87:                                        ; preds = %.loopexit, %.thread, %bb.a
  %.6 = phi i32 [ %1, %bb.a ], [ %i.w, %.thread ], [ %2, %.loopexit ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox4bits13BitmapBuilder4copyERKNS1_6BitmapEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.c = lshr i32 %2, 3                           ; 3 uses
  %i.d = and i32 %2, 7                            ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %notmask = shl nsw i32 -1, %i.d                 ; 2 uses
  %i.e = xor i32 %notmask, -1
  %i.f = zext nneg i32 %i.c to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %i.i = zext i8 %i.h to i32
  %i.j = and i32 %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i8 %i.l to i32
  %i.n = and i32 %notmask, %i.m
  %i.o = or disjoint i32 %i.n, %i.j
  %i.p = trunc nuw i32 %i.o to i8
  store i8 %i.p, ptr %i.g, align 1, !tbaa !9
  %i.q = add nuw nsw i32 %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.q, %bb.b ], [ %i.c, %bb.a ]
  %i.r = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.u = zext i32 %3 to i64
  %i.v = add nuw nsw i64 %i.u, 7
  %i.w = lshr i64 %i.v, 3
  %i.x = sub nsw i64 %i.w, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.t, i64 %i.x, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v64i64(<64 x i64>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.pdep.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!23, !20, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !8, i64 8, !5, i64 16}
!24 = !{!23, !8, i64 8}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.peeled.count", i32 1}
!28 = distinct !{!28, !11}
!29 = !{!30, !30, i64 0}
!30 = !{!"bool", !5, i64 0}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"branch_weights", i32 4, i32 12}
!36 = distinct !{!36, !11, !33, !34}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = distinct !{!39, !11, !34, !33}
!40 = !{!41, !20, i64 0}
!41 = !{!"_ZTSN8facebook5velox4bits6BitmapE", !20, i64 0, !4, i64 8}
end_hunk_1
