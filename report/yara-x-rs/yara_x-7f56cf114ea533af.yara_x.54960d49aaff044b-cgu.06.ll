Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7gfv9tzbXmh_6yara_x:bb.a

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !6574
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !6574
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !6574, !noundef !9
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !9
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !6575
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !6575
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !9
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !6576, !noundef !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !6576, !noundef !9 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !6576, !noundef !9
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
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !6576
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !6576
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !6576
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !6575
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !6575
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !6577
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
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !6577
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
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !6577, !noundef !9
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
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 3 uses
  %i.e = sub nsw i64 %i.b, %i.d
  %.sroa.01.0 = tail call i64 @llvm.abs.i64(i64 %i.e, i1 true)
  %i.f = icmp eq i64 %.sroa.01.0, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !9
  %i.j = add i64 %i.i, %i.g                       ; 6 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %1, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8
  %.pre26 = add i64 %.pre25, %.pre
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.k, %bb.j, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8, !noundef !9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8, !noundef !9 ; 2 uses
  %.not22 = icmp eq i32 %i.l, %i.n
  br i1 %.not22, label %bb.l, label %bb.m

bb.d:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre26, %._crit_edge ], [ %i.t, %bb.g ] ; 2 uses
  %.not21 = icmp eq i64 %.pre-phi, 0
  br i1 %.not21, label %bb.c, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %i.j, 8
  %i.p = icmp ugt i64 %i.j, 72057594037927935
  br i1 %i.p, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.02.0 = phi i64 [ -1, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.q = load i64, ptr %1, align 8, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !9
  %i.t = add i64 %i.s, %i.q                       ; 3 uses
  %i.u = icmp eq i64 %.sroa.02.0, %i.t
  br i1 %i.u, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !9
  %i.x = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %i.y = insertelement <2 x i64> %i.x, i64 %.sroa.02.0, i64 1
  %i.z = uitofp <2 x i64> %i.y to <2 x double>
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !9
  %i.ac = sitofp i64 %i.w to double
  %i.ad = sitofp i64 %i.ab to double
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = fdiv <2 x double> %i.af, %i.z           ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fmul double %i.ah, 2.000000e+00
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  %i.ak = fcmp ult double %i.ai, %i.aj
  br i1 %i.ak, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.h, %bb.d
  %.pre-phi37 = phi i64 [ %.pre-phi, %bb.d ], [ %i.t, %bb.h ] ; 3 uses
  %i.al = shl nuw i64 %.pre-phi37, 8
  %i.am = icmp ugt i64 %.pre-phi37, 72057594037927935
  br i1 %i.am, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %.thread
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.sroa.03.0 = phi i64 [ -1, %bb.i ], [ %i.al, %.thread ]
  %i.an = icmp eq i64 %.sroa.03.0, %i.j
  br i1 %i.an, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !9
  %i.aq = insertelement <2 x i64> poison, i64 %.pre-phi37, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.j, i64 1
  %i.as = uitofp <2 x i64> %i.ar to <2 x double>
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !noundef !9
  %i.av = sitofp i64 %i.ap to double
  %i.aw = sitofp i64 %i.au to double
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = fdiv <2 x double> %i.ay, %i.as          ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = fmul double %i.ba, 2.000000e+00
  %i.bc = extractelement <2 x double> %i.az, i64 1
  %i.bd = fcmp ult double %i.bb, %i.bc
  br i1 %i.bd, label %bb.c, label %bb.t

bb.l:                                             ; preds = %bb.c
  %.not23 = icmp eq i64 %i.b, %i.d
  br i1 %.not23, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.be = tail call i8 @llvm.scmp.i8.i32(i32 %i.l, i32 %i.n)
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load <2 x i64>, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !9
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load <2 x i64>, ptr %0, align 8         ; 2 uses
  %i.bm = load i64, ptr %i.bh, align 8, !noundef !9 ; 2 uses
  %i.bn = load i64, ptr %0, align 8, !noundef !9
  %i.bo = insertelement <2 x i64> %i.bg, i64 %i.bj, i64 1
  %i.bp = sitofp <2 x i64> %i.bo to <2 x double>
  %i.bq = load <2 x i64>, ptr %1, align 8         ; 2 uses
  %i.br = load i64, ptr %i.bk, align 8, !noundef !9 ; 2 uses
  %i.bs = load i64, ptr %1, align 8, !noundef !9
  %i.bt = shufflevector <2 x i64> %i.bl, <2 x i64> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bu = shufflevector <2 x i64> %i.bl, <2 x i64> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.bv = add <2 x i64> %i.bt, %i.bu
  %i.bw = uitofp <2 x i64> %i.bv to <2 x double>
  %i.bx = fdiv <2 x double> %i.bp, %i.bw          ; 3 uses
  %shift = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.bx, %shift
  %i.by = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ogt double %i.bz, 1.500000e+01
  br i1 %i.ca, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cb = tail call i8 @llvm.ucmp.i8.i64(i64 %i.b, i64 %i.d)
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %.not24 = icmp eq i64 %i.bm, %i.br
  br i1 %.not24, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.cc = bitcast <2 x double> %i.bx to <2 x i64> ; 2 uses
  %i.cd = ashr <2 x i64> %i.cc, splat (i64 63)
  %i.ce = lshr <2 x i64> %i.cd, splat (i64 1)
  %i.cf = xor <2 x i64> %i.ce, %i.cc              ; 2 uses
  %i.cg = extractelement <2 x i64> %i.cf, i64 0
  %i.ch = extractelement <2 x i64> %i.cf, i64 1
  %i.ci = tail call i8 @llvm.scmp.i8.i64(i64 %i.cg, i64 %i.ch)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.cj = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bs, i64 %i.bn)
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ck = tail call i8 @llvm.ucmp.i8.i64(i64 %i.br, i64 %i.bm)
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.h, %bb.q, %bb.s, %bb.r, %bb.o, %bb.m
  %.sroa.0.0 = phi i8 [ %i.cj, %bb.r ], [ 1, %bb.h ], [ %i.be, %bb.m ], [ %i.cb, %bb.o ], [ %i.ci, %bb.q ], [ %i.ck, %bb.s ], [ -1, %bb.k ]
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
end_hunk_0
begin_hunk_1_@_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors17IncludeNotAllowedENtB6_7Display3fmtB1b_
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors17IncludeNotAllowedENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors15IncludeNotFoundENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors21InvalidBase64AlphabetENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors21InvalidEscapeSequenceENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12InvalidFloatENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors14InvalidIntegerENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors15InvalidMetadataENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors15InvalidModifierENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors26InvalidModifierCombinationENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors14InvalidPatternENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12InvalidRangeENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors13InvalidRegexpENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors21InvalidRegexpModifierENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors15InvalidRuleNameENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors10InvalidTagENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors11InvalidUTF8ENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors22MethodNotAllowedInWithENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors16MismatchingTypesENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors15MissingMetadataENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors15MixedGreedinessENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors16NumberOutOfRangeENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors19PotentiallySlowLoopENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors11SlowPatternENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors11SyntaxErrorENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors15TooManyPatternsENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors16TooManyVariablesENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors24UnexpectedEscapeSequenceENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors24UnexpectedNegativeNumberENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12UnknownFieldENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors17UnknownIdentifierENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors13UnknownModuleENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors14UnknownPatternENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors10UnknownTagENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors13UnusedPatternENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors14WrongArgumentsENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors9WrongTypeENtB6_7Display3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_6Binary3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Octal3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core4cellNtB5_11BorrowErrorNtNtB7_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCskKLDkoKarTP_4core4cell11BorrowErrorNtNtB6_5error5Error5causeCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtCsG258MDvU3F_3std4timeNtB5_15SystemTimeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsG258MDvU3F_3std4time15SystemTimeErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcDNtNtCs7gfv9tzbXmh_6yara_x7symbols12SymbolLookupEL_E9drop_slowBI_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #34

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEE9drop_slowB1i_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types3map3MapE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types5array5ArrayE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #34

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs94G7V7CXYRk_8bitflags4iterINtB5_9IterNamesNtNtCs7gfv9tzbXmh_6yara_x8compiler15SubPatternFlagsE3newBT_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsaeRQ2XwCvzm_10serde_core2deNtB2_10UnexpectedNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRDNtNtCsaeRQ2XwCvzm_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #35

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #33

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #37 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { cold noreturn nounwind }
attributes #44 = { noinline }
attributes #45 = { nounwind }
attributes #46 = { noinline noreturn }
attributes #47 = { inlinehint }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = distinct !{!1, i1 true, !"_RNvXse_NtNtCskKLDkoKarTP_4core5clone5implsmNtB7_5Clone5clone"}
!2 = distinct !{!2, !1, !"_RNvXse_NtNtCskKLDkoKarTP_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!3 = distinct !{!3, i1 true, !"_RNvXse_NtNtCskKLDkoKarTP_4core5clone5implsmNtB7_5Clone5clone"}
!4 = distinct !{!4, !3, !"_RNvXse_NtNtCskKLDkoKarTP_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 2, !"RtLibUseGOT", i32 1}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i8 0, i8 12}
!13 = !{i64 0, i64 2}
!14 = !{i64 0, i64 -9223372036854775808}
!15 = !{i64 1, i64 536870913}
!16 = !{i8 0, i8 3}
!17 = !{i64 8}
!18 = !{i64 0, i64 -9223372036854775807}
!19 = !{!"llvm.loop.unswitch.partial.disable"}
!20 = !{i64 -1, i64 -9223372036854775808}
!21 = !{i32 0, i32 2}
!22 = !{!"branch_weights", i32 4000000, i32 4001}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!"branch_weights", i32 4001, i32 4000000}
!25 = !{!"llvm.loop.peeled.count", i32 1}
!26 = !{i64 -2, i64 -9223372036854775808}
!27 = !{i8 -1, i8 3}
!28 = !{i64 -1, i64 -9223372036854775806}
!29 = !{i64 0, i64 3}
!30 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!31 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x}
!32 = !{i64 0, i64 25}
!33 = !{i64 0, i64 4}
!34 = !{i64 0, i64 10}
!35 = !{i64 -1, i64 -9223372036854775804}
!36 = !{i64 -3, i64 -9223372036854775808}
!37 = !{i8 0, i8 18}
!38 = !{i64 0, i64 9}
!39 = !{i64 -1, i64 -9223372036854775801}
!40 = !{i64 0, i64 -9223372036854775804}
!41 = !{i64 0, i64 -9223372036854775806}
!42 = !{i8 0, i8 7}
!43 = !{i8 -1, i8 22}
!44 = !{i8 -1, i8 6}
!45 = !{i64 -1, i64 48}
!46 = !{i8 0, i8 2}
!47 = !{i16 0, i16 2}
!48 = !{i64 2}
!49 = !{i64 -1, i64 9}
!50 = !{i64 4}
!51 = !{i32 1, i32 0}
!52 = !{!2}
!53 = !{!4}
!54 = !{!"address", !"read_provenance"}
!55 = !{i64 -2, i64 -9223372036854775804}
!56 = !{!"branch_weights", i32 2002, i32 2000}
!57 = !{i64 0, i64 48}
!58 = !{i32 0, i32 1114112}
!59 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!60 = !{i64 -1, i64 3}
!61 = !{i32 1, i32 131073}
!62 = !{i8 0, i8 13}
!63 = !{i32 0, i32 6}
!64 = distinct !{!64, i1 true, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs7gfv9tzbXmh_6yara_x"}
!65 = distinct !{!65, !64, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs7gfv9tzbXmh_6yara_x: argument 0"}
!66 = distinct !{!66, i1 true, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!67 = distinct !{!67, !66, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!68 = distinct !{!68, !66, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!69 = distinct !{!69, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!70 = distinct !{!70, !69, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!71 = distinct !{!71, i1 true, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs7gfv9tzbXmh_6yara_x"}
!72 = distinct !{!72, !71, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs7gfv9tzbXmh_6yara_x: argument 0"}
!73 = !{!65}
!74 = !{!67}
!75 = !{!67, !65}
!76 = !{!70, !67, !68, !65}
!77 = !{!72, !67, !68, !65}
!78 = distinct !{!78, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRShECs7gfv9tzbXmh_6yara_x"}
!79 = distinct !{!79, !78, !"_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRShECs7gfv9tzbXmh_6yara_x: argument 0"}
!80 = distinct !{!80, i1 true, !"_RINvXs2_NtNtCskKLDkoKarTP_4core4hash5implsShNtB8_4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x"}
!81 = distinct !{!81, !80, !"_RINvXs2_NtNtCskKLDkoKarTP_4core4hash5implsShNtB8_4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x: argument 0"}
!82 = distinct !{!82, i1 true, !"_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash10hash_sliceNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x"}
!83 = distinct !{!83, !82, !"_RINvXs7_NtNtCskKLDkoKarTP_4core4hash5implshNtB8_4Hash10hash_sliceNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x: argument 0"}
!84 = distinct !{!84, i1 true, !"_RNvXs0_CsaO0k6qjB80f_10rustc_hashNtB5_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!85 = distinct !{!85, !84, !"_RNvXs0_CsaO0k6qjB80f_10rustc_hashNtB5_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!86 = distinct !{!86, i1 true, !"_RNvCsaO0k6qjB80f_10rustc_hash10hash_bytes"}
!87 = distinct !{!87, !86, !"_RNvCsaO0k6qjB80f_10rustc_hash10hash_bytes: argument 0"}
!88 = distinct !{!88, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRShNtB8_4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x"}
!89 = distinct !{!89, !88, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRShNtB8_4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x: argument 0"}
!90 = distinct !{!90, i1 true, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRShNtCslAmxFS6h4Nz_8intaglio6SymbolEE4findNCINvNtB8_3map14equivalent_keyBR_BQ_BT_E0ECs7gfv9tzbXmh_6yara_x"}
!91 = distinct !{!91, !90, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRShNtCslAmxFS6h4Nz_8intaglio6SymbolEE4findNCINvNtB8_3map14equivalent_keyBR_BQ_BT_E0ECs7gfv9tzbXmh_6yara_x: argument 0"}
!92 = distinct !{!92, i1 true, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!93 = distinct !{!93, !92, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!94 = distinct !{!94, !92, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!95 = distinct !{!95, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!96 = distinct !{!96, !95, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!97 = distinct !{!97, i1 true, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRShNtCslAmxFS6h4Nz_8intaglio6SymbolEE4findNCINvNtBa_3map14equivalent_keyBT_BS_BV_E0E0Cs7gfv9tzbXmh_6yara_x"}
!98 = distinct !{!98, !97, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRShNtCslAmxFS6h4Nz_8intaglio6SymbolEE4findNCINvNtBa_3map14equivalent_keyBT_BS_BV_E0E0Cs7gfv9tzbXmh_6yara_x: argument 0"}
!99 = !{!87, !85, !83, !81, !79}
!100 = !{!89}
!101 = !{!91}
!102 = !{!93}
!103 = !{!93, !91}
!104 = !{!96, !93, !94, !91}
!105 = !{!98, !93, !94, !91}
!106 = distinct !{!106, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneReECs7gfv9tzbXmh_6yara_x"}
!107 = distinct !{!107, !106, !"_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneReECs7gfv9tzbXmh_6yara_x: argument 0"}
!108 = distinct !{!108, i1 true, !"_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x"}
!109 = distinct !{!109, !108, !"_RINvXs0_NtNtCskKLDkoKarTP_4core4hash5implseNtB8_4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x: argument 0"}
!110 = distinct !{!110, i1 true, !"_RNvYNtCsaO0k6qjB80f_10rustc_hash8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_strCs7gfv9tzbXmh_6yara_x"}
!111 = distinct !{!111, !110, !"_RNvYNtCsaO0k6qjB80f_10rustc_hash8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_strCs7gfv9tzbXmh_6yara_x: argument 1"}
!112 = distinct !{!112, i1 true, !"_RNvXs0_CsaO0k6qjB80f_10rustc_hashNtB5_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!113 = distinct !{!113, !112, !"_RNvXs0_CsaO0k6qjB80f_10rustc_hashNtB5_8FxHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!114 = distinct !{!114, i1 true, !"_RNvCsaO0k6qjB80f_10rustc_hash10hash_bytes"}
!115 = distinct !{!115, !114, !"_RNvCsaO0k6qjB80f_10rustc_hash10hash_bytes: argument 0"}
!116 = distinct !{!116, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsReNtB8_4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x"}
!117 = distinct !{!117, !116, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsReNtB8_4Hash4hashNtCsaO0k6qjB80f_10rustc_hash8FxHasherECs7gfv9tzbXmh_6yara_x: argument 0"}
!118 = distinct !{!118, i1 true, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTReNtCslAmxFS6h4Nz_8intaglio6SymbolEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0ECs7gfv9tzbXmh_6yara_x"}
!119 = distinct !{!119, !118, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTReNtCslAmxFS6h4Nz_8intaglio6SymbolEE4findNCINvNtB8_3map14equivalent_keyeBQ_BS_E0ECs7gfv9tzbXmh_6yara_x: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!121 = distinct !{!121, !120, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!122 = distinct !{!122, !120, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!123 = distinct !{!123, i1 true, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!124 = distinct !{!124, !123, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!125 = distinct !{!125, i1 true, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTReNtCslAmxFS6h4Nz_8intaglio6SymbolEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs7gfv9tzbXmh_6yara_x"}
!126 = distinct !{!126, !125, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTReNtCslAmxFS6h4Nz_8intaglio6SymbolEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs7gfv9tzbXmh_6yara_x: argument 0"}
!127 = !{!115, !113, !111, !109, !107}
!128 = !{!117}
!129 = !{!119}
!130 = !{!121}
!131 = !{!121, !119}
!132 = !{!124, !121, !122, !119}
!133 = !{!126, !121, !122, !119}
!134 = distinct !{!134, i1 true, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instr6OffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_"}
!135 = distinct !{!135, !134, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson5instr6OffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_: argument 0"}
end_hunk_1
