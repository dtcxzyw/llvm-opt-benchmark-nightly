Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7gfv9tzbXmh_6yara_x:bb.a
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !6864
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !6864
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !9
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !6865, !noundef !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !6865, !noundef !9 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !6865, !noundef !9
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !6865
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !6865
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !6865
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !6864
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !6864
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !6866
  %i.bm = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !6866
  %i.br = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11
  %i.bv = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !6866, !noundef !9
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs3_NtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB5_12AtomsQualityNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 5 uses
  %i.e = icmp ult i64 %i.b, %i.d
  %i.f = sub nuw i64 %i.d, %i.b
  %i.g = sub nuw i64 %i.b, %i.d
  %.sroa.01.0 = select i1 %i.e, i64 %i.f, i64 %i.g
  %i.h = icmp eq i64 %.sroa.01.0, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !9
  %i.l = add i64 %i.k, %i.i                       ; 6 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %1, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8
  %.pre26 = add i64 %.pre25, %.pre
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.k, %bb.j, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !noundef !9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 8, !noundef !9 ; 2 uses
  %.not22 = icmp eq i32 %i.n, %i.p
  br i1 %.not22, label %bb.l, label %bb.m

bb.d:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre26, %._crit_edge ], [ %i.v, %bb.g ] ; 2 uses
  %.not21 = icmp eq i64 %.pre-phi, 0
  br i1 %.not21, label %bb.c, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.q = shl nuw i64 %i.l, 8
  %i.r = icmp ugt i64 %i.l, 72057594037927935
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.02.0 = phi i64 [ -1, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.s = load i64, ptr %1, align 8, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !9
  %i.v = add i64 %i.u, %i.s                       ; 3 uses
  %i.w = icmp eq i64 %.sroa.02.0, %i.v
  br i1 %i.w, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !9
  %i.z = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.aa = insertelement <2 x i64> %i.z, i64 %.sroa.02.0, i64 1
  %i.ab = uitofp <2 x i64> %i.aa to <2 x double>
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !9
  %i.ae = sitofp i64 %i.ad to double
  %i.af = sitofp i64 %i.y to double
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1
  %i.ai = fdiv <2 x double> %i.ah, %i.ab          ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fmul double %i.aj, 2.000000e+00
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fcmp ult double %i.ak, %i.al
  br i1 %i.am, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.h, %bb.d
  %.pre-phi37 = phi i64 [ %.pre-phi, %bb.d ], [ %i.v, %bb.h ] ; 3 uses
  %i.an = shl nuw i64 %.pre-phi37, 8
  %i.ao = icmp ugt i64 %.pre-phi37, 72057594037927935
  br i1 %i.ao, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %.thread
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.sroa.03.0 = phi i64 [ -1, %bb.i ], [ %i.an, %.thread ]
  %i.ap = icmp eq i64 %.sroa.03.0, %i.l
  br i1 %i.ap, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !9
  %i.as = insertelement <2 x i64> poison, i64 %.pre-phi37, i64 0
  %i.at = insertelement <2 x i64> %i.as, i64 %i.l, i64 1
  %i.au = uitofp <2 x i64> %i.at to <2 x double>
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !noundef !9
  %i.ax = sitofp i64 %i.aw to double
  %i.ay = sitofp i64 %i.ar to double
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ax, i64 1
  %i.bb = fdiv <2 x double> %i.ba, %i.au          ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = fmul double %i.bc, 2.000000e+00
  %i.be = extractelement <2 x double> %i.bb, i64 1
  %i.bf = fcmp ult double %i.bd, %i.be
  br i1 %i.bf, label %bb.c, label %bb.t

bb.l:                                             ; preds = %bb.c
  %.not23 = icmp eq i64 %i.b, %i.d
  br i1 %.not23, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.bg = tail call i8 @llvm.scmp.i8.i32(i32 %i.n, i32 %i.p)
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load <2 x i64>, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !9
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load <2 x i64>, ptr %0, align 8         ; 2 uses
  %i.bo = load i64, ptr %i.bj, align 8, !noundef !9 ; 2 uses
  %i.bp = load i64, ptr %0, align 8, !noundef !9
  %i.bq = insertelement <2 x i64> %i.bi, i64 %i.bl, i64 1
  %i.br = sitofp <2 x i64> %i.bq to <2 x double>
  %i.bs = load <2 x i64>, ptr %1, align 8         ; 2 uses
  %i.bt = load i64, ptr %i.bm, align 8, !noundef !9 ; 2 uses
  %i.bu = load i64, ptr %1, align 8, !noundef !9
  %i.bv = shufflevector <2 x i64> %i.bn, <2 x i64> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bw = shufflevector <2 x i64> %i.bn, <2 x i64> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.bx = add <2 x i64> %i.bv, %i.bw
  %i.by = uitofp <2 x i64> %i.bx to <2 x double>
  %i.bz = fdiv <2 x double> %i.br, %i.by          ; 3 uses
  %shift = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.bz, %shift
  %i.ca = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cb = tail call double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp ogt double %i.cb, 1.500000e+01
  br i1 %i.cc, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cd = tail call i8 @llvm.ucmp.i8.i64(i64 %i.b, i64 %i.d)
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %.not24 = icmp eq i64 %i.bo, %i.bt
  br i1 %.not24, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ce = bitcast <2 x double> %i.bz to <2 x i64> ; 2 uses
  %i.cf = ashr <2 x i64> %i.ce, splat (i64 63)
  %i.cg = lshr <2 x i64> %i.cf, splat (i64 1)
  %i.ch = xor <2 x i64> %i.cg, %i.ce              ; 2 uses
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  %i.cj = extractelement <2 x i64> %i.ch, i64 1
  %i.ck = tail call i8 @llvm.scmp.i8.i64(i64 %i.ci, i64 %i.cj)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.cl = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bu, i64 %i.bp)
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.cm = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bt, i64 %i.bo)
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.h, %bb.q, %bb.s, %bb.r, %bb.o, %bb.m
  %.sroa.0.0 = phi i8 [ %i.cl, %bb.r ], [ 1, %bb.h ], [ %i.bg, %bb.m ], [ %i.cd, %bb.o ], [ %i.ck, %bb.q ], [ %i.cm, %bb.s ], [ -1, %bb.k ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x8compilersg_1__NtBg_10SubPatternNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1b_7Visitor10visit_enumNtB5_s_9___VisitorB2m_9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @546, i64 noundef 42)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3d_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_11SlowPatternNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3d_NtNtCs7gfv9tzbXmh_6yara_x8compiler8warningsNtB6_22UnintendedPatternInSetNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3m_NtNtCs7gfv9tzbXmh_6yara_x8compiler8warningsNtB6_16UnusedIdentifierNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3n_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_26InvalidModifierCombinationNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3v_NtNtCs7gfv9tzbXmh_6yara_x8compiler8warningsNtB6_16GlobalRuleMisuseNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3x_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_17DuplicateModifierNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs41_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_16DuplicatePatternNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4F_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_14InvalidIntegerNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
end_hunk_0
