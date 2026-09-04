Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/charconv?download=true
inline.NumInlined: 70
inline.NumDeleted: 27
begin_hunk_0_@_ZN7xgboost6detail17FromCharFloatImplEPKciPf:bb.a
  %i.bv = icmp uge i32 %i.bu, %i.be
  br label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

bb.x:                                             ; preds = %bb.t
  %i.bw = sub nsw i32 0, %i.aq                    ; 2 uses
  %i.bx = mul nsw i32 %i.aq, -1217359
  %i.by = lshr i32 %i.bx, 19                      ; 2 uses
  %i.bz = add nuw nsw i32 %i.az, %i.by
  %i.ca = sub nuw i32 %i.aq, %i.bz
  %i.cb = add i32 %i.ca, 6                        ; 5 uses
  %i.cc = sub nsw i32 %i.cb, %i.aq                ; 3 uses
  %i.cd = zext nneg i32 %i.bw to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils18kFloatPow5InvSplitE, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !14 ; 2 uses
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = zext i32 %.0169262328339 to i64         ; 2 uses
  %i.ci = and i64 %i.cf, 4294967295
  %i.cj = mul nuw i64 %i.ci, %i.ch
  %i.ck = mul nuw i64 %i.cg, %i.ch
  %i.cl = lshr i64 %i.cj, 32
  %i.cm = add nuw i64 %i.cl, %i.ck
  %i.cn = add nuw nsw i32 %i.by, 27
  %i.co = add i32 %i.cn, %i.cc
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = lshr i64 %i.cm, %i.cp                   ; 3 uses
  %i.cr = icmp slt i32 %i.cb, %i.aq
  br i1 %i.cr, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = icmp slt i32 %i.cc, 32
  %i.ct = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0169262328339, i1 true)
  %i.cu = icmp uge i32 %i.ct, %i.cc
  %or.cond250 = select i1 %i.cs, i1 %i.cu, i1 false
  %i.cv = urem i32 %.0169262328339, 5
  %.not14.i.i = icmp eq i32 %i.cv, 0
  %or.cond363 = and i1 %or.cond250, %.not14.i.i
  br i1 %or.cond363, label %.lr.ph.i.i.preheader, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

bb.z:                                             ; preds = %bb.x
  %.old = urem i32 %.0169262328339, 5
  %.not14.i.i.old = icmp eq i32 %.old, 0
  br i1 %.not14.i.i.old, label %.lr.ph.i.i.preheader, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.y, %bb.z
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.0716.i.i = phi i32 [ %i.cx, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %.0815.i.i = phi i32 [ %i.cw, %.lr.ph.i.i ], [ %.0169262328339, %.lr.ph.i.i.preheader ]
  %i.cw = udiv i32 %.0815.i.i, 5                  ; 2 uses
  %i.cx = add i32 %.0716.i.i, 1                   ; 2 uses
  %i.cy = urem i32 %i.cw, 5
  %.not.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit: ; preds = %.lr.ph.i.i
  %i.cz = icmp uge i32 %i.cx, %i.bw
  br label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit: ; preds = %bb.z, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit, %bb.y, %bb.u, %bb.w, %bb.v
  %.0158 = phi i32 [ %i.bd, %bb.u ], [ %i.bd, %bb.v ], [ %i.bd, %bb.w ], [ %i.cb, %bb.y ], [ %i.cb, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit ], [ %i.cb, %bb.z ] ; 2 uses
  %.0157.in = phi i64 [ %i.br, %bb.u ], [ %i.br, %bb.v ], [ %i.br, %bb.w ], [ %i.cq, %bb.y ], [ %i.cq, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit ], [ %i.cq, %bb.z ]
  %.0156 = phi i1 [ true, %bb.u ], [ false, %bb.v ], [ %i.bv, %bb.w ], [ false, %bb.y ], [ %i.cz, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit ], [ false, %bb.z ]
  %.0157 = trunc i64 %.0157.in to i32             ; 5 uses
  %i.da = add i32 %.0158, 127
  %i.db = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0157, i1 true)
  %i.dc = xor i32 %i.db, 31
  %i.dd = add i32 %i.da, %i.dc                    ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 0)
  %i.de = icmp sgt i32 %i.dd, 254
  br i1 %i.de, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit
  %i.df = select i1 %i.c, float -inf, float +inf
  store float %i.df, ptr %2, align 4, !tbaa !25
  br label %.thread

bb.ab:                                            ; preds = %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit
  %i.dg = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 1)
  %i.dh = sub i32 %i.dg, %.0158                   ; 2 uses
  %i.di = add i32 %i.dh, -150                     ; 2 uses
  %i.dj = add i32 %i.dh, -151                     ; 2 uses
  %i.dk = shl nuw i32 1, %i.dj
  %i.dl = and i32 %i.dk, %.0157
  %.not197 = icmp eq i32 %i.dl, 0
  br i1 %.not197, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %notmask = shl nsw i32 -1, %i.dj
  %i.dm = xor i32 %notmask, -1
  %i.dn = and i32 %i.dm, %.0157
  %i.do = icmp eq i32 %i.dn, 0
  %i.dp = and i1 %.0156, %i.do
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dq = lshr i32 %.0157, %i.di
  %i.dr = trunc i32 %i.dq to i1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %i.ds = phi i1 [ false, %bb.ab ], [ true, %bb.ac ], [ %i.dr, %bb.ad ] ; 2 uses
  %i.dt = lshr i32 %.0157, %i.di
  %i.du = zext i1 %i.ds to i32
  %i.dv = add i32 %i.dt, %i.du
  %i.dw = and i32 %i.dv, 8388607                  ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  %or.cond9 = and i1 %i.ds, %i.dx
  %i.dy = zext i1 %or.cond9 to i32
  %spec.select203 = add nuw nsw i32 %.sroa.speculated, %i.dy
  %i.dz = select i1 %i.c, i32 256, i32 0
  %i.ea = or i32 %spec.select203, %i.dz
  %i.eb = shl nuw i32 %i.ea, 23
  %i.ec = or disjoint i32 %i.eb, %i.dw
  store i32 %i.ec, ptr %2, align 4, !tbaa !25
  br label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph283, %bb.l
  %.sroa.12.7.ph = phi i32 [ 34, %bb.l ], [ 22, %.lr.ph283 ]
  %i.ed = getelementptr inbounds i8, ptr %0, i64 %indvars.iv305
  br label %.thread

.thread.loopexit342:                              ; preds = %bb.c, %bb.e
  %.sroa.12.7.ph343 = phi i32 [ 22, %bb.c ], [ 34, %bb.e ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit342, %.thread.loopexit, %bb.n, %bb.o, %bb.q, %bb.s, %bb.ae, %bb.aa, %bb.a
  %.sroa.0.7 = phi ptr [ %0, %bb.a ], [ null, %bb.aa ], [ %i.ed, %.thread.loopexit ], [ %i.aj, %bb.n ], [ null, %bb.o ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.ae ], [ %i.ee, %.thread.loopexit342 ]
  %.sroa.12.7 = phi i32 [ 22, %bb.a ], [ 0, %bb.aa ], [ %.sroa.12.7.ph, %.thread.loopexit ], [ 22, %bb.n ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.ae ], [ %.sroa.12.7.ph343, %.thread.loopexit342 ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.7, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.12.7, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i8 @_ZN7xgboost6detail17PowerBaseComputer13ToDecimalBaseEbjNS0_15MantissaIntevalEPS2_PbS4_(i1 noundef zeroext %0, i32 noundef %1, i64 %2, i64 %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %2, 32      ; 5 uses
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32 ; 2 uses
  %.sroa.11.8.extract.trunc = trunc i64 %3 to i32 ; 3 uses
  %.sroa.19.8.extract.shift = lshr i64 %3, 32     ; 5 uses
  %.sroa.19.8.extract.trunc = trunc nuw i64 %.sroa.19.8.extract.shift to i32 ; 2 uses
  %i.a = icmp sgt i32 %.sroa.0.0.extract.trunc, -1
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 2147483647
  %i.c = mul i64 %i.b, 169464822037455            ; 2 uses
  %i.d = lshr i64 %i.c, 49                        ; 5 uses
  %i.e = trunc nuw nsw i64 %i.d to i32            ; 5 uses
  store i32 %i.e, ptr %4, align 4, !tbaa !27
  %i.f = mul nuw nsw i64 %i.d, 163391164108059
  %i.g = lshr i64 %i.f, 46
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = sub nsw i32 %i.e, %.sroa.0.0.extract.trunc ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils18kFloatPow5InvSplitE, i64 %i.d
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = lshr i64 %i.k, 32                        ; 3 uses
  %i.m = and i64 %i.k, 4294967295                 ; 3 uses
  %i.n = mul nuw i64 %i.m, %.sroa.8.0.extract.shift
  %i.o = mul nuw i64 %i.l, %.sroa.8.0.extract.shift
  %i.p = lshr i64 %i.n, 32
  %i.q = add nuw i64 %i.p, %i.o
  %i.r = add nsw i32 %i.i, 27
  %i.s = add nsw i32 %i.r, %i.h
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  %i.u = lshr i64 %i.q, %i.t
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !28
  %i.x = and i64 %3, 4294967295                   ; 4 uses
  %i.y = mul nuw i64 %i.m, %i.x
  %i.z = mul nuw i64 %i.l, %i.x
  %i.aa = lshr i64 %i.y, 32
  %i.ab = add nuw i64 %i.aa, %i.z
  %i.ac = lshr i64 %i.ab, %i.t
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !29
  %i.af = mul nuw i64 %i.m, %.sroa.19.8.extract.shift
  %i.ag = mul nuw i64 %i.l, %.sroa.19.8.extract.shift
  %i.ah = lshr i64 %i.af, 32
  %i.ai = add nuw i64 %i.ah, %i.ag
  %i.aj = lshr i64 %i.ai, %i.t
  %i.ak = trunc i64 %i.aj to i32                  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !30
  %.not81 = icmp eq i64 %i.d, 0
  br i1 %.not81, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = add i32 %i.ak, -1
  %i.an = udiv i32 %i.am, 10
  %i.ao = udiv i32 %i.v, 10
  %.not82 = icmp samesign ugt i32 %i.an, %i.ao
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = add nsw i64 %i.d, -1                    ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 163391164108059
  %i.ar = lshr i64 %i.aq, 46
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils18kFloatPow5InvSplitE, i64 %i.ap
  %i.au = load i64, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.av = lshr i64 %i.au, 32
  %i.aw = and i64 %i.au, 4294967295
  %i.ax = mul nuw i64 %i.aw, %i.x
  %i.ay = mul nuw i64 %i.av, %i.x
  %i.az = lshr i64 %i.ax, 32
  %i.ba = add nuw i64 %i.az, %i.ay
  %i.bb = add nsw i32 %i.i, 26
  %i.bc = add nsw i32 %i.bb, %i.as
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %i.ba, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = urem i32 %i.bf, 10
  %i.bh = trunc nuw nsw i32 %i.bg to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i8 [ %i.bh, %bb.d ], [ 0, %bb.c ]     ; 2 uses
  %i.bi = icmp ult i64 %i.c, 5629499534213120
  br i1 %i.bi, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.b, %bb.e
  %.098 = phi i8 [ %.0, %bb.e ], [ 0, %bb.b ]     ; 3 uses
  %i.bj = urem i32 %.sroa.11.8.extract.trunc, 5
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %bb.f

.lr.ph.i.i:                                       ; preds = %.thread, %.lr.ph.i.i
  %.0716.i.i = phi i32 [ %i.bm, %.lr.ph.i.i ], [ 0, %.thread ]
  %.0815.i.i = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %.sroa.11.8.extract.trunc, %.thread ]
  %i.bl = udiv i32 %.0815.i.i, 5                  ; 2 uses
  %i.bm = add i32 %.0716.i.i, 1                   ; 2 uses
  %i.bn = urem i32 %i.bl, 5
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit: ; preds = %.lr.ph.i.i
  %i.bo = icmp uge i32 %i.bm, %i.e
  %i.bp = zext i1 %i.bo to i8
  store i8 %i.bp, ptr %6, align 1, !tbaa !11
  br label %bb.q

bb.f:                                             ; preds = %.thread
  br i1 %0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = urem i32 %.sroa.8.0.extract.trunc, 5
  %.not14.i.i83 = icmp eq i32 %i.bq, 0
  br i1 %.not14.i.i83, label %.lr.ph.i.i85, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89

.lr.ph.i.i85:                                     ; preds = %bb.g, %.lr.ph.i.i85
  %.0716.i.i86 = phi i32 [ %i.bs, %.lr.ph.i.i85 ], [ 0, %bb.g ]
  %.0815.i.i87 = phi i32 [ %i.br, %.lr.ph.i.i85 ], [ %.sroa.8.0.extract.trunc, %bb.g ]
  %i.br = udiv i32 %.0815.i.i87, 5                ; 2 uses
  %i.bs = add i32 %.0716.i.i86, 1                 ; 2 uses
  %i.bt = urem i32 %i.br, 5
  %.not.i.i88 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i88, label %.lr.ph.i.i85, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89: ; preds = %.lr.ph.i.i85, %bb.g
  %.07.lcssa.i.i84 = phi i32 [ 0, %bb.g ], [ %i.bs, %.lr.ph.i.i85 ]
  %i.bu = icmp uge i32 %.07.lcssa.i.i84, %i.e
  %i.bv = zext i1 %i.bu to i8
  store i8 %i.bv, ptr %5, align 1, !tbaa !11
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.bw = urem i32 %.sroa.19.8.extract.trunc, 5
  %.not14.i.i90 = icmp eq i32 %i.bw, 0
  br i1 %.not14.i.i90, label %.lr.ph.i.i92, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96

.lr.ph.i.i92:                                     ; preds = %bb.h, %.lr.ph.i.i92
  %.0716.i.i93 = phi i32 [ %i.by, %.lr.ph.i.i92 ], [ 0, %bb.h ]
  %.0815.i.i94 = phi i32 [ %i.bx, %.lr.ph.i.i92 ], [ %.sroa.19.8.extract.trunc, %bb.h ]
  %i.bx = udiv i32 %.0815.i.i94, 5                ; 2 uses
  %i.by = add i32 %.0716.i.i93, 1                 ; 2 uses
  %i.bz = urem i32 %i.bx, 5
  %.not.i.i95 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i95, label %.lr.ph.i.i92, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96: ; preds = %.lr.ph.i.i92, %bb.h
  %.07.lcssa.i.i91 = phi i32 [ 0, %bb.h ], [ %i.by, %.lr.ph.i.i92 ]
  %i.ca = icmp uge i32 %.07.lcssa.i.i91, %i.e
  %.neg = sext i1 %i.ca to i32
  %i.cb = add i32 %.neg, %i.ak
  store i32 %i.cb, ptr %i.al, align 4, !tbaa !30
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.cc = sub nsw i64 0, %2
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = mul i64 %i.cd, 196742565691928          ; 2 uses
  %i.cf = lshr i64 %i.ce, 48                      ; 5 uses
  %i.cg = trunc nuw nsw i64 %i.cf to i32          ; 2 uses
  %i.ch = add nsw i32 %i.cg, %.sroa.0.0.extract.trunc ; 3 uses
  store i32 %i.ch, ptr %4, align 4, !tbaa !27
  %i.ci = sub i32 0, %i.ch                        ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cj, 163391164108059
  %i.cl = lshr i64 %i.ck, 46
  %i.cm = zext i32 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils15kFloatPow5SplitE, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !14 ; 2 uses
  %i.cp = lshr i64 %i.co, 32                      ; 3 uses
  %i.cq = and i64 %3, 4294967295                  ; 4 uses
  %i.cr = and i64 %i.co, 4294967295               ; 3 uses
  %i.cs = mul nuw i64 %i.cr, %i.cq
  %i.ct = mul nuw i64 %i.cp, %i.cq
  %i.cu = lshr i64 %i.cs, 32
  %i.cv = add nuw i64 %i.cu, %i.ct
  %i.cw = add nuw nsw i64 %i.cf, 28
  %i.cx = sub nsw i64 %i.cw, %i.cl                ; 3 uses
  %i.cy = lshr i64 %i.cv, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !29
  %i.db = mul nuw i64 %i.cr, %.sroa.19.8.extract.shift
  %i.dc = mul nuw i64 %i.cp, %.sroa.19.8.extract.shift
  %i.dd = lshr i64 %i.db, 32
  %i.de = add nuw i64 %i.dd, %i.dc
  %i.df = lshr i64 %i.de, %i.cx
  %i.dg = trunc i64 %i.df to i32                  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !30
  %i.di = mul nuw i64 %i.cr, %.sroa.8.0.extract.shift
  %i.dj = mul nuw i64 %i.cp, %.sroa.8.0.extract.shift
  %i.dk = lshr i64 %i.di, 32
  %i.dl = add nuw i64 %i.dk, %i.dj
  %i.dm = lshr i64 %i.dl, %i.cx
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !28
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.thread99, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = add i32 %i.dg, -1
  %i.dq = udiv i32 %i.dp, 10
  %i.dr = udiv i32 %i.dn, 10
  %.not80 = icmp samesign ugt i32 %i.dq, %i.dr
  br i1 %.not80, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ds = sub i32 1, %i.ch                        ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.dt, 163391164108059
  %i.dv = lshr i64 %i.du, 46
  %i.dw = zext i32 %i.ds to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils15kFloatPow5SplitE, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !14 ; 2 uses
  %i.dz = lshr i64 %i.dy, 32
  %i.ea = and i64 %i.dy, 4294967295
  %i.eb = mul nuw i64 %i.ea, %i.cq
  %i.ec = mul nuw i64 %i.dz, %i.cq
  %i.ed = lshr i64 %i.eb, 32
  %i.ee = add nuw i64 %i.ed, %i.ec
  %i.ef = add nuw nsw i64 %i.cf, 27
  %i.eg = sub nsw i64 %i.ef, %i.dv
  %i.eh = lshr i64 %i.ee, %i.eg
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = urem i32 %i.ei, 10
  %i.ek = trunc nuw nsw i32 %i.ej to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi i8 [ %i.ek, %bb.k ], [ 0, %bb.j ]     ; 3 uses
  %i.el = icmp eq i64 %i.cf, 1
  br i1 %i.el, label %.thread99, label %bb.o

.thread99:                                        ; preds = %bb.i, %bb.l
  %.1101 = phi i8 [ %.1, %bb.l ], [ 0, %bb.i ]    ; 2 uses
  store i8 1, ptr %6, align 1, !tbaa !11
  br i1 %0, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread99
  %i.em = icmp eq i32 %1, 1
  %i.en = zext i1 %i.em to i8
  store i8 %i.en, ptr %5, align 1, !tbaa !11
  br label %bb.q

bb.n:                                             ; preds = %.thread99
  %i.eo = add i32 %i.dg, -1
  store i32 %i.eo, ptr %i.dh, align 4, !tbaa !30
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ep = icmp ult i64 %i.ce, 8725724278030336
  br i1 %i.ep, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eq = add nsw i32 %i.cg, -1
  %i.er = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.11.8.extract.trunc, i1 true)
  %i.es = icmp samesign uge i32 %i.er, %i.eq
  %i.et = zext i1 %i.es to i8
  store i8 %i.et, ptr %6, align 1, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.p, %bb.o, %bb.e, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit
  %.2 = phi i8 [ %.0, %bb.e ], [ %.098, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit ], [ %.098, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96 ], [ %.098, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89 ], [ %.1, %bb.o ], [ %.1, %bb.p ], [ %.1101, %bb.m ], [ %.1101, %bb.n ]
  ret i8 %.2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = distinct !{!20, !12}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{!"float", !5, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_ZTSN7xgboost6detail15MantissaIntevalE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!27 = !{!26, !6, i64 0}
!28 = !{!26, !6, i64 4}
!29 = !{!26, !6, i64 8}
!30 = !{!26, !6, i64 12}
end_hunk_0
