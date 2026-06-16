inline.NumInlined: 29
inline.NumDeleted: 13
begin_hunk_0_@_ZL11UpdateNodesmmmPKhmPK19BrotliEncoderParamsmPKimPKN13duckdb_brotli13BackwardMatchEPK15ZopfliCostModelP13StartPosQueuePNS6_10ZopfliNodeE:bb.a
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3
  %i.hy = uitofp i32 %i.hx to float
  %i.hz = fadd float %i.hu, %i.hy
  %i.ia = zext i16 %.0.i245 to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !160
  %i.id = fadd float %i.ic, %i.hz                 ; 2 uses
  %i.ie = getelementptr [16 x i8], ptr %i.bc, i64 %.0219344 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !7
  %i.ih = fcmp olt float %i.id, %i.ig
  br i1 %i.ih, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.ii = trunc i64 %.0219344 to i32
  %i.ij = or i32 %i.ii, 301989888
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 %i.dh, ptr %i.ik, align 4, !tbaa !36
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i32 %i.gl, ptr %i.il, align 4, !tbaa !34
  store float %i.id, ptr %i.if, align 4, !tbaa !7
  %i.im = tail call noundef i64 @llvm.umax.i64(i64 %.2343, i64 %.0219344)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.3 = phi i64 [ %i.im, %bb.ak ], [ %.2343, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 2 uses
  %.0219 = add i64 %.0219344, 1                   ; 2 uses
  %.not236 = icmp ugt i64 %.0219, %.1212
  br i1 %.not236, label %.loopexit, label %bb.ae, !llvm.loop !179

.loopexit:                                        ; preds = %bb.al, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit259, %bb.p, %bb.m, %bb.o, %bb.v, %bb.q, %bb.y, %bb.z
  %.2208.ph = phi i64 [ %.0206350, %bb.z ], [ %.0206350, %bb.y ], [ %.0206350, %bb.q ], [ %.0206350, %bb.p ], [ %.0206350, %bb.v ], [ %.0206350, %bb.o ], [ %.0206350, %bb.m ], [ %.0206350, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit259 ], [ %.0219344, %bb.al ] ; 2 uses
  %.4.ph = phi i64 [ %.1351, %bb.z ], [ %.1351, %bb.y ], [ %.1351, %bb.q ], [ %.1351, %bb.p ], [ %.1351, %bb.v ], [ %.1351, %bb.o ], [ %.1351, %bb.m ], [ %.1351, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit259 ], [ %.3, %bb.al ] ; 2 uses
  %i.in = add nuw nsw i64 %.0209348, 1
  %i.io = icmp samesign ult i64 %.0209348, 15
  %i.ip = icmp ult i64 %.2208.ph, %i.h
  %i.iq = and i1 %i.io, %i.ip
  br i1 %i.iq, label %bb.l, label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit, !llvm.loop !180

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit: ; preds = %.loopexit, %bb.l, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %.1.lcssa = phi i64 [ %.0367, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ], [ %.1351, %bb.l ], [ %.4.ph, %.loopexit ] ; 2 uses
  %i.ir = icmp samesign ugt i64 %.0205366, 1
  %brmerge = or i1 %i.ir, %.not369
  br i1 %brmerge, label %.loopexit304, label %.lr.ph364

.lr.ph364:                                        ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit
  %i.is = lshr i16 %.0.i, 3
  %narrow.i = mul nuw nsw i16 %i.is, 3
  %i.it = shl nuw nsw i16 %.0.i, 3
  %i.iu = and i16 %i.it, 56
  %i.iv = trunc i64 %i.bl to i32
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph364, %._crit_edge
  %.6363 = phi i64 [ %.1.lcssa, %.lr.ph364 ], [ %.7.lcssa, %._crit_edge ] ; 2 uses
  %.1210362 = phi i64 [ 0, %.lr.ph364 ], [ %i.mu, %._crit_edge ] ; 2 uses
  %.0216361 = phi i64 [ %.017.lcssa.i, %.lr.ph364 ], [ %.2218.lcssa, %._crit_edge ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.1210362
  %i.ix = load i64, ptr %i.iw, align 4            ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ix to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.ix, 32
  %i.iy = and i64 %i.ix, 4294967295               ; 3 uses
  %i.iz = icmp ult i64 %i.aw, %i.iy               ; 2 uses
  %i.ja = add nuw nsw i64 %i.iy, 15               ; 2 uses
  %i.jb = load i32, ptr %i.bd, align 4, !tbaa !181
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %i.jd = add nuw nsw i64 %i.jc, 16               ; 2 uses
  %i.je = icmp samesign ult i64 %i.ja, %i.jd
  br i1 %i.je, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.be, align 8, !tbaa !182 ; 2 uses
  %i.jg = zext i32 %i.jf to i64                   ; 3 uses
  %i.jh = shl nuw i64 4, %i.jg
  %i.ji = xor i64 %i.jc, -1
  %i.jj = add nsw i64 %i.iy, %i.ji
  %i.jk = add i64 %i.jj, %i.jh                    ; 3 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jl, i1 true)
  %i.jn = sub nsw i32 30, %i.jm
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.jf
  %i.jp = xor i32 %notmask.i, -1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = and i64 %i.jk, %i.jq
  %i.js = lshr i64 %i.jk, %i.jo
  %i.jt = sub nsw i64 %i.jo, %i.jg                ; 2 uses
  %i.ju = shl nsw i64 %i.jt, 10
  %i.jv = shl nsw i64 %i.jt, 1
  %i.jw = or i64 %i.js, -2
  %i.jx = add nsw i64 %i.jv, %i.jw
  %i.jy = shl i64 %i.jx, %i.jg
  %i.jz = add nuw nsw i64 %i.jr, %i.jd
  %i.ka = add i64 %i.jz, %i.jy
  %i.kb = or i64 %i.ka, %i.ju
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %bb.am, %bb.an
  %.0270.in = phi i64 [ %i.kb, %bb.an ], [ %i.ja, %bb.am ] ; 2 uses
  %.0270 = trunc i64 %.0270.in to i32
  %i.kc = lshr i32 %.0270, 10
  %i.kd = and i32 %i.kc, 63
  %i.ke = uitofp nneg i32 %i.kd to float
  %i.kf = fadd float %i.cu, %i.ke
  %i.kg = and i64 %.0270.in, 1023
  %i.kh = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kg
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !160
  %i.kk = fadd float %i.kj, %i.kf
  %i.kl = lshr i64 %i.ix, 37                      ; 7 uses
  %i.km = icmp ult i64 %.0216361, %i.kl
  %i.kn = icmp samesign ugt i64 %i.kl, %i.l
  %or.cond = select i1 %i.iz, i1 true, i1 %i.kn
  %or.cond238 = select i1 %i.km, i1 %or.cond, i1 false
  %.1217 = select i1 %or.cond238, i64 %i.kl, i64 %.0216361 ; 3 uses
  %.not237356 = icmp ugt i64 %.1217, %i.kl
  br i1 %.not237356, label %._crit_edge, label %_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit.lr.ph

_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit.lr.ph: ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.ko = and i64 %i.ix, 133143986176
  %.not.i263 = icmp eq i64 %i.ko, 0
  %i.kp = and i64 %.sroa.4.0.extract.shift, 31
  %spec.select = select i1 %.not.i263, i64 %i.kl, i64 %i.kp
  %i.kq = add nuw nsw i64 %i.kl, 1
  br label %_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit

_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit: ; preds = %_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit.lr.ph, %bb.au
  %.7358 = phi i64 [ %.6363, %_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit.lr.ph ], [ %.8, %bb.au ] ; 2 uses
  %.2218357 = phi i64 [ %.1217, %_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit.lr.ph ], [ %i.mt, %bb.au ] ; 7 uses
  %i.kr = select i1 %i.iz, i64 %spec.select, i64 %.2218357 ; 7 uses
  %i.ks = icmp ult i64 %i.kr, 10
  br i1 %i.ks, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit
  %i.kt = trunc nuw nsw i64 %i.kr to i16
  %i.ku = add nsw i16 %i.kt, -2
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.ap:                                            ; preds = %_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit
  %i.kv = icmp ult i64 %i.kr, 134
  br i1 %i.kv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kw = add nsw i64 %i.kr, -6                   ; 2 uses
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  %i.ky = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kx, i1 true)
  %i.kz = sub nuw nsw i32 30, %i.ky               ; 2 uses
  %i.la = shl nuw nsw i32 %i.kz, 1
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = zext nneg i32 %i.kz to i64
  %i.ld = lshr i64 %i.kw, %i.lc
  %i.le = add nuw nsw i64 %i.ld, %i.lb
  %i.lf = trunc nuw nsw i64 %i.le to i16
  %i.lg = add nuw nsw i16 %i.lf, 4
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.ar:                                            ; preds = %bb.ap
  %i.lh = icmp ult i64 %i.kr, 2118
  br i1 %i.lh, label %bb.as, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.as:                                            ; preds = %bb.ar
  %i.li = trunc nuw nsw i64 %i.kr to i32
  %i.lj = add nsw i32 %i.li, -70
  %i.lk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lj, i1 true)
  %i.ll = trunc nuw nsw i32 %i.lk to i16
  %i.lm = sub nuw nsw i16 43, %i.ll
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %bb.ao, %bb.aq, %bb.ar, %bb.as
  %.0.i239 = phi i16 [ %i.ku, %bb.ao ], [ %i.lg, %bb.aq ], [ %i.lm, %bb.as ], [ 23, %bb.ar ] ; 3 uses
  %i.ln = lshr i16 %.0.i239, 3
  %narrow21.i = add nuw nsw i16 %i.ln, %narrow.i
  %i.lo = zext nneg i16 %narrow21.i to i32        ; 2 uses
  %i.lp = shl nuw nsw i32 %i.lo, 1
  %i.lq = shl nuw nsw i32 %i.lo, 6
  %i.lr = add nuw nsw i32 %i.lq, 64
  %i.ls = lshr i32 5377344, %i.lp
  %i.lt = and i32 %i.ls, 192
  %i.lu = add nuw nsw i32 %i.lr, %i.lt
  %i.lv = trunc i32 %i.lu to i16
  %i.lw = and i16 %.0.i239, 7
  %i.lx = or disjoint i16 %i.lw, %i.iu
  %.0.i242 = or disjoint i16 %i.lx, %i.lv
  %i.ly = zext i16 %.0.i239 to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli16kBrotliCopyExtraE, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !3
  %i.mb = uitofp i32 %i.ma to float
  %i.mc = fadd float %i.kk, %i.mb
  %i.md = zext i16 %.0.i242 to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.md
  %i.mf = load float, ptr %i.me, align 4, !tbaa !160
  %i.mg = fadd float %i.mf, %i.mc                 ; 2 uses
  %i.mh = getelementptr [16 x i8], ptr %i.bc, i64 %.2218357 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 12 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !7
  %i.mk = fcmp olt float %i.mg, %i.mj
  br i1 %i.mk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.ml = add nuw nsw i64 %.2218357, 9
  %i.mm = sub i64 %i.ml, %i.kr
  %i.mn = shl i64 %i.mm, 25
  %i.mo = or i64 %i.mn, %.2218357
  %i.mp = trunc i64 %i.mo to i32
  store i32 %i.mp, ptr %i.mh, align 4, !tbaa !32
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.mq, align 4, !tbaa !36
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 %i.iv, ptr %i.mr, align 4, !tbaa !34
  store float %i.mg, ptr %i.mi, align 4, !tbaa !7
  %i.ms = tail call noundef i64 @llvm.umax.i64(i64 %.7358, i64 %.2218357)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.8 = phi i64 [ %i.ms, %bb.at ], [ %.7358, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ] ; 2 uses
  %i.mt = add nuw nsw i64 %.2218357, 1
  %exitcond.not = icmp eq i64 %.2218357, %i.kl
  br i1 %exitcond.not, label %._crit_edge, label %_ZN13duckdb_brotliL23BackwardMatchLengthCodeEPKNS_13BackwardMatchE.exit, !llvm.loop !183

._crit_edge:                                      ; preds = %bb.au, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %.2218.lcssa = phi i64 [ %.1217, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit ], [ %i.kq, %bb.au ]
  %.7.lcssa = phi i64 [ %.6363, %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit ], [ %.8, %bb.au ] ; 2 uses
  %i.mu = add nuw i64 %.1210362, 1                ; 2 uses
  %exitcond384.not = icmp eq i64 %i.mu, %8
  br i1 %exitcond384.not, label %.loopexit304, label %bb.am, !llvm.loop !184

.loopexit304:                                     ; preds = %._crit_edge, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit
  %.9 = phi i64 [ %.1.lcssa, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit ], [ %.7.lcssa, %._crit_edge ] ; 2 uses
  %i.mv = add nuw nsw i64 %.0205366, 1
  %i.mw = icmp samesign ult i64 %.0205366, 4
  %i.mx = select i1 %i.k, i1 %i.mw, i1 false
  br i1 %i.mx, label %bb.c, label %.critedge, !llvm.loop !185

.critedge:                                        ; preds = %.loopexit304, %bb.c
  %.0.lcssa = phi i64 [ %.9, %.loopexit304 ], [ %.0367, %bb.c ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL12EvaluateNodemmmmPKiPK15ZopfliCostModelP13StartPosQueuePN13duckdb_brotli10ZopfliNodeE(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef captures(none) %7) unnamed_addr #5 {
bb.a:
  %8 = alloca %struct.PosData, align 8            ; 28 uses
  %9 = alloca %struct.PosData, align 8            ; 11 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !7  ; 3 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !32
  %i.e = and i32 %i.d, 33554431                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34   ; 2 uses
  %i.h = and i32 %i.g, 134217727
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36   ; 2 uses
  %i.k = icmp eq i64 %1, 0
  br i1 %i.k, label %_ZL23ComputeDistanceShortcutmmmmPKN13duckdb_brotli10ZopfliNodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %i.m = zext nneg i32 %i.e to i64
  %i.n = add nuw nsw i64 %i.l, %i.m
  %i.o = add i64 %1, %0
  %i.p = add i64 %i.o, %3
  %.not.i = icmp ugt i64 %i.n, %i.p
  %i.q = add i64 %3, %2
  %.not23.i = icmp ult i64 %i.q, %i.l
  %or.cond.i = or i1 %.not23.i, %.not.i
  br i1 %or.cond.i, label %bb.d, label %_ZL22ZopfliNodeDistanceCodePKN13duckdb_brotli10ZopfliNodeE.exit.i

_ZL22ZopfliNodeDistanceCodePKN13duckdb_brotli10ZopfliNodeE.exit.i: ; preds = %bb.b
  %i.r = lshr i32 %i.g, 27                        ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %i.t = add i32 %i.j, 15
  %i.u = add nsw i32 %i.r, -1
  %i.v = select i1 %i.s, i32 %i.t, i32 %i.u
  %.not24.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL22ZopfliNodeDistanceCodePKN13duckdb_brotli10ZopfliNodeE.exit.i
  %i.w = trunc i64 %1 to i32
  br label %_ZL23ComputeDistanceShortcutmmmmPKN13duckdb_brotli10ZopfliNodeE.exit

bb.d:                                             ; preds = %_ZL22ZopfliNodeDistanceCodePKN13duckdb_brotli10ZopfliNodeE.exit.i, %bb.b
  %narrow.i = add nuw nsw i32 %i.h, %i.e
  %i.x = zext nneg i32 %narrow.i to i64
  %i.y = sub i64 %1, %i.x
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  br label %_ZL23ComputeDistanceShortcutmmmmPKN13duckdb_brotli10ZopfliNodeE.exit

_ZL23ComputeDistanceShortcutmmmmPKN13duckdb_brotli10ZopfliNodeE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.ab, %bb.d ], [ %i.w, %bb.c ], [ 0, %bb.a ] ; 3 uses
  store i32 %.0.i, ptr %i.b, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 2832
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %1
  %i.af = load float, ptr %i.ae, align 4, !tbaa !160
  %i.ag = load float, ptr %i.ad, align 4, !tbaa !160
  %i.ah = fsub float %i.af, %i.ag                 ; 2 uses
  %i.ai = fcmp ugt float %i.c, %i.ah
  br i1 %i.ai, label %bb.s, label %bb.e

bb.e:                                             ; preds = %_ZL23ComputeDistanceShortcutmmmmPKN13duckdb_brotli10ZopfliNodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store i64 %1, ptr %9, align 8, !tbaa !161
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 28
  store float %i.c, ptr %i.aj, align 4, !tbaa !163
  %i.ak = fsub float %i.c, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 24
  store float %i.ak, ptr %i.al, align 8, !tbaa !164
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i20 = icmp eq i32 %.0.i, 0
  br i1 %.not.i20, label %.lr.ph31.preheader.i, label %.lr.ph.i

.lr.ph31.preheader.i:                             ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.e
  %.021.lcssa37.i = phi i64 [ 0, %bb.e ], [ 4, %.lr.ph.i ], [ 8, %.lr.ph.i.1 ], [ 12, %.lr.ph.i.2 ] ; 2 uses
  %i.an = getelementptr nuw i8, ptr %9, i64 %.021.lcssa37.i
  %scevgep = getelementptr nuw i8, ptr %i.an, i64 8
  %i.ao = sub nuw nsw i64 16, %.021.lcssa37.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr align 4 %4, i64 %i.ao, i1 false), !tbaa !3
  br label %_ZL20ComputeDistanceCachemPKiPKN13duckdb_brotli10ZopfliNodeEPi.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.022.i = zext i32 %.0.i to i64                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.022.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = and i32 %i.ar, 134217727
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !32
  %i.au = and i32 %i.at, 33554431
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !36
  store i32 %i.aw, ptr %i.am, align 8, !tbaa !3
  %narrow.i21 = add nuw nsw i32 %i.au, %i.as
  %i.ax = zext nneg i32 %narrow.i21 to i64
  %i.ay = sub nsw i64 %.022.i, %i.ax
  %.pn.i = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.ay
  %.022.in.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12
  %.022.in.i = load i32, ptr %.022.in.in.i, align 4, !tbaa !7 ; 2 uses
  %.not = icmp eq i32 %.022.in.i, 0
  br i1 %.not, label %.lr.ph31.preheader.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %.022.i.1 = zext i32 %.022.in.i to i64          ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.022.i.1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = and i32 %i.bb, 134217727
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !32
  %i.be = and i32 %i.bd, 33554431
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %narrow.i21.1 = add nuw nsw i32 %i.be, %i.bc
  %i.bi = zext nneg i32 %narrow.i21.1 to i64
  %i.bj = sub nsw i64 %.022.i.1, %i.bi
  %.pn.i.1 = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.bj
  %.022.in.in.i.1 = getelementptr inbounds nuw i8, ptr %.pn.i.1, i64 12
  %.022.in.i.1 = load i32, ptr %.022.in.in.i.1, align 4, !tbaa !7 ; 2 uses
  %.not27 = icmp eq i32 %.022.in.i.1, 0
  br i1 %.not27, label %.lr.ph31.preheader.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %.022.i.2 = zext i32 %.022.in.i.1 to i64        ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.022.i.2 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34
  %i.bn = and i32 %i.bm, 134217727
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !32
  %i.bp = and i32 %i.bo, 33554431
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !3
  %narrow.i21.2 = add nuw nsw i32 %i.bp, %i.bn
  %i.bt = zext nneg i32 %narrow.i21.2 to i64
  %i.bu = sub nsw i64 %.022.i.2, %i.bt
  %.pn.i.2 = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.bu
  %.022.in.in.i.2 = getelementptr inbounds nuw i8, ptr %.pn.i.2, i64 12
  %.022.in.i.2 = load i32, ptr %.022.in.in.i.2, align 4, !tbaa !7 ; 2 uses
  %.not28 = icmp eq i32 %.022.in.i.2, 0
  br i1 %.not28, label %.lr.ph31.preheader.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %.022.i.3 = zext i32 %.022.in.i.2 to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.022.i.3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !3
  br label %_ZL20ComputeDistanceCachemPKiPKN13duckdb_brotli10ZopfliNodeEPi.exit

_ZL20ComputeDistanceCachemPKiPKN13duckdb_brotli10ZopfliNodeEPi.exit: ; preds = %.lr.ph.i.3, %.lr.ph31.preheader.i
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !56 ; 3 uses
  %i.cb = add i64 %i.ca, 1                        ; 8 uses
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !56
  %i.cc = and i64 %i.ca, 7                        ; 7 uses
  %i.cd = xor i64 %i.cc, 7                        ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !165
  %i.cf = icmp ugt i64 %i.cb, 1
  br i1 %i.cf, label %.lr.ph.i22, label %_ZL17StartPosQueuePushP13StartPosQueuePK7PosData.exit

.lr.ph.i22:                                       ; preds = %_ZL20ComputeDistanceCachemPKiPKN13duckdb_brotli10ZopfliNodeEPi.exit
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.cd ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !164
  %i.cj = sub nuw nsw i64 8, %i.cc                ; 2 uses
  %i.ck = and i64 %i.cj, 7
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !164
  %i.co = fcmp ogt float %i.ci, %i.cn
  br i1 %i.co, label %bb.f, label %bb.g
end_hunk_0
