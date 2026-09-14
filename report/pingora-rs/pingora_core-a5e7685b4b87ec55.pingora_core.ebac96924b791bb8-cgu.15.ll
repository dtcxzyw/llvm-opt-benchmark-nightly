Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.15?download=true
inline.NumInlined: 991
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq11UpdateNodesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val123, i64 %2 ; 2 uses
  %i.w = icmp ult i64 %i.t, %.val124
  br i1 %i.w, label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit103, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %.val124, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %.val124, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #29
  unreachable

_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit103: ; preds = %bb.b
  %i.x = load float, ptr %i.v, align 4, !noundef !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val123, i64 %i.t
  %i.z = load float, ptr %i.y, align 4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.aa = add i64 %2, 2                           ; 4 uses
  %.not.i237 = icmp ugt i64 %i.aa, %0
  br i1 %.not.i237, label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq24ComputeMinimumCopyLength.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit103
  %i.ab = icmp ult i64 %i.aa, %16
  br i1 %i.ab, label %.lr.ph488, label %.lr.ph._crit_edge

.lr.ph488:                                        ; preds = %.lr.ph.preheader
  %i.ac = fsub float %i.x, %i.z
  %i.ad = fadd float %i.r, %i.ac
  br label %bb.e

.lr.ph:                                           ; preds = %bb.h
  %i.ae = icmp eq i64 %i.aq, %.sroa.09.0.i238487  ; 3 uses
  %i.af = select i1 %i.ae, i64 %.sroa.07.0.i239486, i64 0
  %.sroa.09.1.i = add i64 %i.af, %.sroa.09.0.i238487
  %i.ag = zext i1 %i.ae to i64
  %.sroa.07.1.i = shl i64 %.sroa.07.0.i239486, %i.ag
  %i.ah = fadd float %.sroa.0.0.i111241484, 1.000000e+00
  %.sroa.0.1.i = select i1 %i.ae, float %i.ah, float %.sroa.0.0.i111241484
  %i.ai = icmp ult i64 %i.ar, %16
  br i1 %i.ai, label %bb.e, label %.lr.ph._crit_edge

bb.e:                                             ; preds = %.lr.ph488, %.lr.ph
  %.sroa.09.0.i238487 = phi i64 [ 10, %.lr.ph488 ], [ %.sroa.09.1.i, %.lr.ph ] ; 2 uses
  %.sroa.07.0.i239486 = phi i64 [ 4, %.lr.ph488 ], [ %.sroa.07.1.i, %.lr.ph ] ; 2 uses
  %.sroa.02.0.i240485 = phi i64 [ 2, %.lr.ph488 ], [ %i.aq, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i111241484 = phi float [ %i.ad, %.lr.ph488 ], [ %.sroa.0.1.i, %.lr.ph ] ; 3 uses
  %i.aj = phi i64 [ %i.aa, %.lr.ph488 ], [ %i.ar, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %15, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !range !11, !alias.scope !778, !noundef !4
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.f, label %bb.g

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %umax = tail call i64 @llvm.umax.i64(i64 %16, i64 %i.aa)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 1, 461168601842738791) %16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #29, !noalias !778
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = load float, ptr %i.an, align 4, !alias.scope !778, !noundef !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.011.0.i = phi float [ %i.ao, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ap = fcmp ugt float %.sroa.011.0.i, %.sroa.0.0.i111241484
  br i1 %i.ap, label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq24ComputeMinimumCopyLength.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add nuw nsw i64 %.sroa.02.0.i240485, 1  ; 4 uses
  %i.ar = add i64 %i.aq, %2                       ; 3 uses
  %.not.i = icmp ugt i64 %i.ar, %0
  br i1 %.not.i, label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq24ComputeMinimumCopyLength.exit, label %.lr.ph

_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq24ComputeMinimumCopyLength.exit: ; preds = %bb.g, %bb.h, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit103
  %.sroa.02.0.i.lcssa = phi i64 [ 2, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit103 ], [ %i.aq, %bb.h ], [ %.sroa.02.0.i240485, %bb.g ] ; 2 uses
  %i.as = add i64 %.sroa.02.0.i.lcssa, -1         ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.c
  %i.au = icmp ugt i64 %i.b, %4
  %i.av = sub nuw nsw i64 %4, %i.b
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.b
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.val122 = load i64, ptr %i.ax, align 8         ; 4 uses
  %.val121 = load ptr, ptr %13, align 8, !nonnull !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %.not276 = icmp eq i64 %10, 0
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 16               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 3 uses
  %i.bg = add nuw nsw i64 %i.bf, 2
  %i.bh = and i64 %i.bg, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = xor i64 %i.bb, -1
  %invariant.op = add i64 %i.bi, %i.bj
  %i.bk = and i32 %i.be, 31
  %notmask.i = shl nsw i32 -1, %i.bk
  %i.bl = xor i32 %notmask.i, -1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = and i64 %i.bf, 63
  br label %bb.i

bb.i:                                             ; preds = %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq24ComputeMinimumCopyLength.exit, %.loopexit139
  %.sroa.0.0274 = phi i64 [ 0, %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq24ComputeMinimumCopyLength.exit ], [ %.sroa.0.6, %.loopexit139 ] ; 3 uses
  %.sroa.09.0273 = phi i64 [ 0, %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq24ComputeMinimumCopyLength.exit ], [ %i.hs, %.loopexit139 ] ; 5 uses
  %i.bo = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %..i126 = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 8)
  %i.bp = icmp samesign ult i64 %.sroa.09.0273, %..i126
  br i1 %i.bp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit139
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0274, %bb.i ], [ %.sroa.0.6, %.loopexit139 ]
  ret i64 %.sroa.0.0.lcssa

bb.k:                                             ; preds = %bb.i
  %i.bq = sub i64 %.sroa.09.0273, %i.bo
  %i.br = and i64 %i.bq, 7
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %14, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !4
  %i.bv = sub i64 %2, %i.bu                       ; 10 uses
  %i.bw = icmp ult i64 %i.bv, 6
  br i1 %i.bw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = icmp ult i64 %i.bv, 130
  br i1 %i.bx, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.by = trunc nuw nsw i64 %i.bv to i16
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bz = icmp ult i64 %i.bv, 2114
  br i1 %i.bz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = icmp ult i64 %i.bv, 6210
  br i1 %i.ca, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit.thread, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cb = add nsw i64 %i.bv, -66
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cb, i1 false)
  %i.cd = trunc nuw nsw i64 %i.cc to i16
  %i.ce = xor i16 %i.cd, 63
  %i.cf = add nuw nsw i16 %i.ce, 10
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.cg = icmp ult i64 %i.bv, 22594
  %..i = select i1 %i.cg, i16 22, i16 23
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit.thread

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit.thread: ; preds = %bb.m, %bb.p, %bb.q, %bb.o
  %.sroa.0.0.i110.ph = phi i16 [ 21, %bb.o ], [ %..i, %bb.q ], [ %i.cf, %bb.p ], [ %i.by, %bb.m ] ; 2 uses
  %i.ch = zext nneg i16 %.sroa.0.0.i110.ph to i64
  br label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit: ; preds = %bb.l
  %i.ci = add nsw i64 %i.bv, -2                   ; 2 uses
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 false)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = xor i32 %i.ck, 63
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = zext nneg i32 %i.cm to i64
  %i.cq = lshr i64 %i.ci, %i.cp
  %i.cr = add nuw nsw i64 %i.cq, %i.co            ; 2 uses
  %i.cs = trunc nuw nsw i64 %i.cr to i16
  %i.ct = add nuw nsw i16 %i.cs, 2                ; 2 uses
  %i.cu = zext nneg i16 %i.ct to i64              ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cr, 22
  br i1 %i.cv, label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit, label %bb.r

_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit.thread, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit
  %i.cw = phi i64 [ %i.ch, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit.thread ], [ %i.cu, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit ]
  %.sroa.0.0.i110131 = phi i16 [ %.sroa.0.0.i110.ph, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit.thread ], [ %i.ct, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cy = load float, ptr %i.cx, align 8, !noundef !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants9kInsExtra, i64 %i.cw
  %i.da = load i32, ptr %i.cz, align 4, !noundef !4
  %i.db = uitofp i32 %i.da to float
  %i.dc = fadd float %i.cy, %i.db
  %i.dd = load float, ptr %i.v, align 4, !noundef !4
  %i.de = load float, ptr %.val123, align 4, !noundef !4
  %i.df = fsub float %i.dd, %i.de
  %i.dg = fadd float %i.dc, %i.df                 ; 4 uses
  br i1 %i.at, label %.lr.ph256, label %._crit_edge

.lr.ph256:                                        ; preds = %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit
  %i.dh = shl nuw nsw i16 %.sroa.0.0.i110131, 3
  %i.di = and i16 %i.dh, 56                       ; 2 uses
  %i.dj = icmp samesign ult i16 %.sroa.0.0.i110131, 8
  %i.dk = lshr i16 %.sroa.0.0.i110131, 3
  %narrow.i107 = mul nuw nsw i16 %i.dk, 3
  %i.dl = trunc i64 %i.bv to i32
  br label %bb.s

bb.r:                                             ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command19GetInsertLengthCode.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #29
  unreachable

._crit_edge:                                      ; preds = %.loopexit, %bb.t, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0274, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ], [ %.sroa.0.1255, %bb.t ], [ %.sroa.0.3, %.loopexit ] ; 2 uses
  %i.dm = icmp samesign ugt i64 %.sroa.09.0273, 1
  %brmerge = or i1 %i.dm, %.not276
  br i1 %brmerge, label %.loopexit139, label %.lr.ph271

.lr.ph271:                                        ; preds = %._crit_edge
  %i.dn = shl nuw nsw i16 %.sroa.0.0.i110131, 3
  %i.do = and i16 %i.dn, 56
  %i.dp = lshr i16 %.sroa.0.0.i110131, 3
  %narrow.i = mul nuw nsw i16 %i.dp, 3
  %i.dq = trunc i64 %i.bv to i32
  br label %bb.av

bb.s:                                             ; preds = %.lr.ph256, %.loopexit
  %.sroa.0.1255 = phi i64 [ %.sroa.0.0274, %.lr.ph256 ], [ %.sroa.0.3, %.loopexit ] ; 6 uses
  %.sroa.014.0253 = phi i64 [ 0, %.lr.ph256 ], [ %i.gd, %.loopexit ] ; 9 uses
  %.sroa.042.0252 = phi i64 [ %i.as, %.lr.ph256 ], [ %.sroa.042.2, %.loopexit ] ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr @123, i64 %.sroa.014.0253
  %i.ds = load i8, ptr %i.dr, align 1, !noundef !4
  %i.dt = and i8 %i.ds, 3
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr @124, i64 %.sroa.014.0253
  %i.dy = load i8, ptr %i.dx, align 1, !noundef !4
  %i.dz = sext i8 %i.dy to i32
  %i.ea = add i32 %i.dw, %i.dz                    ; 2 uses
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = sub i64 %i.a, %i.eb                     ; 2 uses
  %i.ed = add i64 %.sroa.042.0252, %i.b           ; 4 uses
  %i.ee = icmp ult i64 %i.ed, %4
  br i1 %i.ee, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 %i.ed
  %i.eg = load i8, ptr %i.ef, align 1, !noundef !4
  %i.eh = icmp ugt i64 %i.ed, %5
  br i1 %i.eh, label %._crit_edge, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #29
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ei = icmp ult i64 %..i125, %i.eb
  %i.ej = icmp uge i64 %i.ec, %i.a
  %or.cond5 = or i1 %i.ei, %i.ej
  br i1 %or.cond5, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = and i64 %i.ec, %5                       ; 5 uses
  %i.el = add i64 %i.ek, %.sroa.042.0252          ; 4 uses
  %i.em = icmp ugt i64 %i.el, %5
  br i1 %i.em, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = icmp ult i64 %i.el, %4
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 %i.el
  %i.ep = load i8, ptr %i.eo, align 1, !noundef !4
  %.not = icmp eq i8 %i.eg, %i.ep
  br i1 %.not, label %bb.aa, label %.loopexit

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.el, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #29
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.eq = icmp ugt i64 %i.ek, %4
  br i1 %i.eq, label %bb.ac, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.au, label %bb.ae, label %bb.ad, !prof !6

bb.ac:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ek, i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #29
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 %i.ek
  %i.es = sub nuw nsw i64 %4, %i.ek
  %i.et = tail call noundef i64 @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.av, i64 noundef %i.c) ; 2 uses
  %i.eu = icmp ult i64 %.sroa.014.0253, %.val122
  br i1 %i.eu, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #29
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.val121, i64 %.sroa.014.0253
  %i.ew = load float, ptr %i.ev, align 4, !noundef !4
  %i.ex = fadd float %i.dg, %i.ew
  %.not98245.not = icmp ult i64 %.sroa.042.0252, %i.et
  br i1 %.not98245.not, label %.lr.ph249, label %.loopexit

.lr.ph249:                                        ; preds = %bb.af
  %.sroa.032.0244 = add nuw i64 %.sroa.042.0252, 1
  %i.ey = icmp eq i64 %.sroa.014.0253, 0
  %or.cond.i = and i1 %i.dj, %i.ey
  %.sroa.014.0.tr = trunc nuw nsw i64 %.sroa.014.0253 to i32
  %i.ez = shl nuw nsw i32 %.sroa.014.0.tr, 27
  %i.fa = add nuw i32 %i.ez, 134217728
  %i.fb = or i32 %i.fa, %i.dl
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.0253, i64 noundef %.val122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #29
  unreachable

bb.ah:                                            ; preds = %.lr.ph249, %bb.at
  %.sroa.0.2247.a = phi i64 [ %.sroa.032.0244, %.lr.ph249 ], [ %.sroa.032.0, %bb.at ] ; 11 uses
  %.sroa.042.1246 = phi i64 [ %.sroa.0.1255, %.lr.ph249 ], [ %.sroa.0.4, %bb.at ] ; 2 uses
  %i.fc = icmp ult i64 %.sroa.0.2247.a, 10
  br i1 %i.fc, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = icmp ult i64 %.sroa.0.2247.a, 134
  br i1 %i.fd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = icmp ult i64 %.sroa.0.2247.a, 2118
  br i1 %i.fe, label %bb.al, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ff = add nsw i64 %.sroa.0.2247.a, -6         ; 2 uses
  %i.fg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ff, i1 false)
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = xor i32 %i.fh, 63
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  %i.fk = shl nuw nsw i32 %i.fj, 1
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = zext nneg i32 %i.fj to i64
  %i.fn = lshr i64 %i.ff, %i.fm
  %i.fo = add nuw nsw i64 %i.fn, %i.fl
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105

bb.al:                                            ; preds = %bb.aj
  %i.fp = add nsw i64 %.sroa.0.2247.a, -70
  %i.fq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fp, i1 false)
  %i.fr = trunc nuw nsw i64 %i.fq to i16
  %i.fs = xor i16 %i.fr, 63
  %i.ft = add nuw nsw i16 %i.fs, 12
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread: ; preds = %bb.aj, %bb.al
  %.sroa.0.0.i104.ph = phi i16 [ 23, %bb.aj ], [ %i.ft, %bb.al ] ; 3 uses
  %17 = and i16 %.sroa.0.0.i104.ph, 7
  %18 = or disjoint i16 %17, %i.di
  %19 = zext nneg i16 %.sroa.0.0.i104.ph to i64
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread.a

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105: ; preds = %bb.ah, %bb.ak
  %.sroa.032.0248.sink = phi i64 [ %i.fo, %bb.ak ], [ %.sroa.0.2247.a, %bb.ah ]
  %.sink435 = phi i16 [ 4, %bb.ak ], [ -2, %bb.ah ]
  %20 = trunc nuw nsw i64 %.sroa.032.0248.sink to i16
  %21 = add nsw i16 %.sink435, %20                ; 7 uses
  %i.fu = and i16 %21, 7
  %i.fv = or disjoint i16 %i.fu, %i.di            ; 2 uses
  %i.fw = icmp ult i16 %21, 16
  %or.cond5.i = and i1 %or.cond.i, %i.fw
  br i1 %or.cond5.i, label %.thread, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit

.thread:                                          ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105
  %i.fx = shl nuw nsw i16 %21, 3
  %i.fy = and i16 %i.fx, 64
  %spec.select.i = or disjoint i16 %i.fv, %i.fy
  %i.fz = zext nneg i16 %21 to i64
  %i.ga = zext nneg i16 %spec.select.i to i64
  br label %bb.an

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit: ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105
  %i.gb = zext i16 %21 to i64                     ; 2 uses
  %i.gc = icmp ult i16 %21, 24
  br i1 %i.gc, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread.a, label %bb.am

.loopexit:                                        ; preds = %bb.at, %bb.af, %bb.v, %bb.y, %bb.w
  %.sroa.042.2 = phi i64 [ %.sroa.042.0252, %bb.v ], [ %.sroa.042.0252, %bb.w ], [ %.sroa.042.0252, %bb.y ], [ %.sroa.042.0252, %bb.af ], [ %.sroa.0.2247.a, %bb.at ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %.sroa.0.1255, %bb.v ], [ %.sroa.0.1255, %bb.w ], [ %.sroa.0.1255, %bb.y ], [ %.sroa.0.1255, %bb.af ], [ %.sroa.0.4, %bb.at ] ; 2 uses
  %i.gd = add nuw nsw i64 %.sroa.014.0253, 1
  %i.ge = icmp samesign ult i64 %.sroa.014.0253, 15
  %i.gf = icmp ult i64 %.sroa.042.2, %i.c
  %or.cond3 = and i1 %i.ge, %i.gf
  br i1 %or.cond3, label %bb.s, label %._crit_edge

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread.a: ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit
  %i.gg = phi i64 [ %19, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread ], [ %i.gb, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit ]
  %.sroa.0.0.i104380382 = phi i16 [ %.sroa.0.0.i104.ph, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread ], [ %21, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit ]
  %i.gh = phi i16 [ %18, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread ], [ %i.fv, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit ]
  %i.gi = lshr i16 %.sroa.0.0.i104380382, 3
  %narrow4.i108 = add nuw nsw i16 %i.gi, %narrow.i107
  %i.gj = zext nneg i16 %narrow4.i108 to i32      ; 2 uses
  %i.gk = shl nuw nsw i32 %i.gj, 6
  %i.gl = add nuw nsw i32 %i.gk, 64
  %i.gm = shl nuw nsw i32 %i.gj, 1
  %i.gn = and i32 %i.gm, 30
  %i.go = lshr i32 5377344, %i.gn
  %i.gp = and i32 %i.go, 192
  %i.gq = add nuw nsw i32 %i.gl, %i.gp
  %i.gr = trunc i32 %i.gq to i16                  ; 3 uses
  %i.gs = icmp ult i16 %i.gr, 128
  %.101 = select i1 %i.gs, float %i.dg, float %i.ex
  %i.gt = or disjoint i16 %i.gh, %i.gr
  %i.gu = zext i16 %i.gt to i64                   ; 2 uses
  %i.gv = icmp ult i16 %i.gr, 704
  br i1 %i.gv, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gb, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #29
  unreachable

bb.an:                                            ; preds = %.thread, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread.a
  %i.gw = phi i64 [ %i.ga, %.thread ], [ %i.gu, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread.a ]
  %.101135138 = phi float [ %i.dg, %.thread ], [ %.101, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread.a ]
  %i.gx = phi i64 [ %i.fz, %.thread ], [ %i.gg, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread.a ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants10kCopyExtra, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !noundef !4
  %i.ha = uitofp i32 %i.gz to float
  %i.hb = fadd float %.101135138, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.gw
  %i.hd = load float, ptr %i.hc, align 4, !noundef !4
  %i.he = fadd float %i.hd, %i.hb                 ; 2 uses
  %i.hf = add i64 %.sroa.0.2247.a, %2             ; 3 uses
  %i.hg = icmp ult i64 %i.hf, %16
  br i1 %i.hg, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gu, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.hh = getelementptr inbounds nuw [20 x i8], ptr %15, i64 %i.hf ; 7 uses
  %i.hi = load i32, ptr %i.hh, align 4, !range !11, !noundef !4
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.an
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef %16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #29
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !noundef !4
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar
  %.sroa.041.0 = phi float [ %i.hl, %bb.ar ], [ 0.000000e+00, %bb.ap ]
  %i.hm = fcmp olt float %i.he, %.sroa.041.0
  br i1 %i.hm, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.au
  %.sroa.0.4 = phi i64 [ %..i127, %bb.au ], [ %.sroa.042.1246, %bb.as ] ; 2 uses
  %.sroa.032.0 = add i64 %.sroa.0.2247.a, 1       ; 2 uses
  %.not98 = icmp ugt i64 %.sroa.032.0, %i.et
  br i1 %.not98, label %.loopexit, label %bb.ah

bb.au:                                            ; preds = %bb.as
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.ho = trunc i64 %.sroa.0.2247.a to i32
  %i.hp = or i32 %i.ho, 301989888
  store i32 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 %i.ea, ptr %i.hq, align 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i32 %i.fb, ptr %i.hr, align 4
  store i32 0, ptr %i.hh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store float %i.he, ptr %.sroa.4.0..sroa_idx, align 4
  %..i127 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.2247.a, i64 %.sroa.042.1246)
  br label %bb.at

bb.av:                                            ; preds = %.lr.ph271, %._crit_edge265
  %.sroa.0.5270 = phi i64 [ %.sroa.0.1.lcssa, %.lr.ph271 ], [ %.sroa.0.7.lcssa, %._crit_edge265 ] ; 2 uses
  %.sroa.014.1269 = phi i64 [ 0, %.lr.ph271 ], [ %i.ji, %._crit_edge265 ] ; 3 uses
  %.sroa.048.0268 = phi i64 [ %.sroa.02.0.i.lcssa, %.lr.ph271 ], [ %.sroa.048.2.lcssa, %._crit_edge265 ] ; 2 uses
  %exitcond338.not = icmp eq i64 %.sroa.014.1269, %12
  br i1 %exitcond338.not, label %bb.ay, label %bb.aw

.loopexit139:                                     ; preds = %._crit_edge265, %._crit_edge
  %.sroa.0.6 = phi i64 [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.7.lcssa, %._crit_edge265 ] ; 2 uses
  %i.hs = add nuw nsw i64 %.sroa.09.0273, 1
  %i.ht = icmp samesign ult i64 %.sroa.09.0273, 4
  %i.hu = select i1 %i.f, i1 %i.ht, i1 false
  br i1 %i.hu, label %bb.i, label %bb.j

bb.aw:                                            ; preds = %bb.av
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %.sroa.014.1269
  %i.hw = load i64, ptr %i.hv, align 8, !noundef !4 ; 4 uses
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = and i64 %i.hw, 4294967295               ; 3 uses
  %i.hz = icmp ugt i64 %i.hy, %..i125             ; 2 uses
  %i.ia = add nuw nsw i64 %i.hy, 15               ; 2 uses
  %i.ib = icmp samesign ult i64 %i.ia, %i.bc
  br i1 %i.ib, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.reass = add i64 %i.hy, %invariant.op          ; 3 uses
  %i.ic = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.reass, i1 false)
  %i.id = xor i64 %i.ic, 63
  %i.ie = add nuw nsw i64 %i.id, 4294967295       ; 2 uses
  %i.if = and i64 %i.ie, 4294967295
  %i.ig = and i64 %.reass, %i.bm
  %i.ih = and i64 %i.ie, 63
  %i.ii = lshr i64 %.reass, %i.ih
  %i.ij = sub nsw i64 %i.if, %i.bf                ; 2 uses
  %i.ik = shl nsw i64 %i.ij, 10
  %i.il = shl nsw i64 %i.ij, 1
  %i.im = or i64 %i.ii, 65534
  %i.in = add i64 %i.il, %i.im
  %i.io = shl i64 %i.in, %i.bn
  %i.ip = add nuw nsw i64 %i.ig, %i.bc
  %i.iq = add i64 %i.ip, %i.io
  %i.ir = or i64 %i.iq, %i.ik
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit: ; preds = %bb.aw, %bb.ax
  %.sink.in.i = phi i64 [ %i.ir, %bb.ax ], [ %i.ia, %bb.aw ] ; 2 uses
  %i.is = and i64 %.sink.in.i, 1023               ; 3 uses
  %i.it = icmp ugt i64 %.val122, %i.is
  br i1 %i.it, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.av
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %12, i64 noundef %12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #29
  unreachable

bb.az:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit
  %.sink.i = trunc i64 %.sink.in.i to i32
  %i.iu = lshr i32 %.sink.i, 10
  %i.iv = and i32 %i.iu, 63
  %i.iw = uitofp nneg i32 %i.iv to float
  %i.ix = fadd float %i.dg, %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.val121, i64 %i.is
  %i.iz = load float, ptr %i.iy, align 4, !noundef !4
  %i.ja = fadd float %i.ix, %i.iz
  %i.jb = lshr i64 %i.hw, 37                      ; 7 uses
  %i.jc = icmp ult i64 %.sroa.048.0268, %i.jb
  %i.jd = icmp samesign ugt i64 %i.jb, %.100
  %or.cond = select i1 %i.hz, i1 true, i1 %i.jd
  %or.cond102 = select i1 %i.jc, i1 %or.cond, i1 false
  %.sroa.048.1 = select i1 %or.cond102, i64 %i.jb, i64 %.sroa.048.0268 ; 3 uses
  %.not99260 = icmp ugt i64 %.sroa.048.1, %i.jb
  br i1 %.not99260, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.az
  %i.je = lshr i64 %i.hw, 32
  %i.jf = and i64 %i.je, 31                       ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0
  %spec.store.select = select i1 %i.jg, i64 %i.jb, i64 %i.jf
  %i.jh = add nuw nsw i64 %i.jb, 1
  br label %bb.bb

bb.ba:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.is, i64 noundef %.val122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #29
  unreachable

._crit_edge265:                                   ; preds = %bb.bn, %bb.az
  %.sroa.048.2.lcssa = phi i64 [ %.sroa.048.1, %bb.az ], [ %i.jh, %bb.bn ]
  %.sroa.0.7.lcssa = phi i64 [ %.sroa.0.5270, %bb.az ], [ %.sroa.0.8, %bb.bn ] ; 2 uses
  %i.ji = add nuw nsw i64 %.sroa.014.1269, 1      ; 2 uses
  %exitcond339.not = icmp eq i64 %i.ji, %10
  br i1 %exitcond339.not, label %.loopexit139, label %bb.av

bb.bb:                                            ; preds = %.lr.ph264, %bb.bn
  %.sroa.0.7262 = phi i64 [ %.sroa.0.5270, %.lr.ph264 ], [ %.sroa.0.8, %bb.bn ] ; 3 uses
  %.sroa.048.2261 = phi i64 [ %.sroa.048.1, %.lr.ph264 ], [ %i.ll, %bb.bn ] ; 7 uses
  %.sroa.055.0 = select i1 %i.hz, i64 %spec.store.select, i64 %.sroa.048.2261 ; 7 uses
  %i.jj = icmp ult i64 %.sroa.055.0, 10
  br i1 %i.jj, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jk = icmp ult i64 %.sroa.055.0, 134
  br i1 %i.jk, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jl = icmp ult i64 %.sroa.055.0, 2118
  br i1 %i.jl, label %bb.bf, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread

bb.be:                                            ; preds = %bb.bc
  %i.jm = add nsw i64 %.sroa.055.0, -6            ; 2 uses
  %i.jn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jm, i1 false)
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = xor i32 %i.jo, 63
  %i.jq = add nsw i32 %i.jp, -1                   ; 2 uses
  %i.jr = shl nuw nsw i32 %i.jq, 1
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = zext nneg i32 %i.jq to i64
  %i.ju = lshr i64 %i.jm, %i.jt
  %i.jv = add nuw nsw i64 %i.ju, %i.js
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit

bb.bf:                                            ; preds = %bb.bd
  %i.jw = add nsw i64 %.sroa.055.0, -70
  %i.jx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jw, i1 false)
  %i.jy = trunc nuw nsw i64 %i.jx to i16
  %i.jz = xor i16 %i.jy, 63
  %i.ka = add nuw nsw i16 %i.jz, 12
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread: ; preds = %bb.bf, %bb.bd
  %.sroa.0.0.i.ph = phi i16 [ 23, %bb.bd ], [ %i.ka, %bb.bf ] ; 2 uses
  %i.kb = zext nneg i16 %.sroa.0.0.i.ph to i64
  br label %bb.bg

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit: ; preds = %bb.bb, %bb.be
  %.sroa.055.0.sink = phi i64 [ %i.jv, %bb.be ], [ %.sroa.055.0, %bb.bb ]
  %.sink434 = phi i16 [ 4, %bb.be ], [ -2, %bb.bb ]
  %i.kc = trunc nuw nsw i64 %.sroa.055.0.sink to i16
  %i.kd = add nsw i16 %.sink434, %i.kc            ; 3 uses
  %i.ke = zext i16 %i.kd to i64                   ; 2 uses
  %i.kf = icmp ult i16 %i.kd, 24
  br i1 %i.kf, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit
  %i.kg = phi i64 [ %i.kb, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread ], [ %i.ke, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit ]
  %.sroa.0.0.i384 = phi i16 [ %.sroa.0.0.i.ph, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread ], [ %i.kd, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit ] ; 2 uses
  %i.kh = and i16 %.sroa.0.0.i384, 7
  %i.ki = or disjoint i16 %i.kh, %i.do
  %i.kj = lshr i16 %.sroa.0.0.i384, 3
  %narrow4.i = add nuw nsw i16 %i.kj, %narrow.i
  %i.kk = zext nneg i16 %narrow4.i to i32         ; 2 uses
  %i.kl = shl nuw nsw i32 %i.kk, 6
  %i.km = add nuw nsw i32 %i.kl, 64
  %i.kn = shl nuw nsw i32 %i.kk, 1
  %i.ko = and i32 %i.kn, 30
  %i.kp = lshr i32 5377344, %i.ko
  %i.kq = and i32 %i.kp, 192
  %i.kr = add nuw nsw i32 %i.km, %i.kq
  %i.ks = trunc i32 %i.kr to i16                  ; 2 uses
  %i.kt = or disjoint i16 %i.ki, %i.ks
  %i.ku = zext i16 %i.kt to i64                   ; 2 uses
  %i.kv = icmp ult i16 %i.ks, 704
  br i1 %i.kv, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ke, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #29
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants10kCopyExtra, i64 %i.kg
  %i.kx = load i32, ptr %i.kw, align 4, !noundef !4
  %i.ky = uitofp i32 %i.kx to float
  %i.kz = fadd float %i.ja, %i.ky
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ku
  %i.lb = load float, ptr %i.la, align 4, !noundef !4
  %i.lc = fadd float %i.lb, %i.kz                 ; 2 uses
  %i.ld = add i64 %.sroa.048.2261, %2             ; 3 uses
  %i.le = icmp ult i64 %i.ld, %16
  br i1 %i.le, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.bg
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ku, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.lf = getelementptr inbounds nuw [20 x i8], ptr %15, i64 %i.ld ; 5 uses
  %i.lg = load i32, ptr %i.lf, align 4, !range !11, !noundef !4
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ld, i64 noundef %16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #29
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 4 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !noundef !4
  %i.lk = fcmp olt float %i.lc, %i.lj
  br i1 %i.lk, label %bb.bo, label %bb.bn

end_hunk_0
