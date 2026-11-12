Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Builtins?download=true
inline.NumInlined: 563
inline.NumDeleted: 271
begin_hunk_0_@_ZN5clang7Builtin7Context18initializeBuiltinsERNS_15IdentifierTableERKNS_11LangOptionsE:bb.a
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !25 ; 2 uses
  %.not27.i.i.i = icmp ugt i64 %i.ly, %i.lw
  br i1 %.not27.i.i.i, label %_ZNK5clang7Builtin7Context23isPredefinedLibFunctionEj.exit, label %.lr.ph.i.i.i

_ZNK5clang7Builtin7Context23isPredefinedLibFunctionEj.exit: ; preds = %.lr.ph.i.i.i, %bb.bj
  %.02043.i.lcssa.i.i = phi ptr [ %.sroa.030.0.i.i.i, %bb.bj ], [ %i.lv, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i = phi i64 [ %i.lp, %bb.bj ], [ %i.lw, %.lr.ph.i.i.i ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.02043.i.lcssa.i.i, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !26
  %i.mb = getelementptr inbounds nuw [20 x i8], ptr %i.ma, i64 %.lcssa.i.i
  %i.mc = load ptr, ptr %.02043.i.lcssa.i.i, align 8, !tbaa !44
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.md, align 4, !tbaa !31
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !45
  %i.mf = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mf
  %i.mh = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.mg, i32 noundef 102) #17
  %.not197 = icmp eq ptr %i.mh, null
  br i1 %.not197, label %_ZNK5clang15IdentifierTable4findEN4llvm9StringRefE.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZNK5clang7Builtin7Context23isPredefinedLibFunctionEj.exit
  br i1 %.not36.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mi = add nsw i32 %i.le, -1731
  %i.mj = sub nsw i32 %i.mi, %i.li
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.mk = icmp samesign ugt i32 %i.le, 1730
  br i1 %i.mk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ml = add nsw i32 %i.le, -1731
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.sroa.030.0.in.i.i.i144 = phi ptr [ %i.dd, %bb.bl ], [ %i.m, %bb.bn ], [ %0, %bb.bm ]
  %.sroa.7.0.in.in.i.i.i145 = phi ptr [ %i.df, %bb.bl ], [ %i.o, %bb.bn ], [ %i.e, %bb.bm ]
  %.021.i.i.i146 = phi i32 [ %i.mj, %bb.bl ], [ %i.ml, %bb.bn ], [ %i.lh, %bb.bm ] ; 2 uses
  %.sroa.7.0.in.i.i.i147 = load i32, ptr %.sroa.7.0.in.in.i.i.i145, align 8, !tbaa !47
  %.sroa.7.0.i.i.i148 = zext i32 %.sroa.7.0.in.i.i.i147 to i64
  %.sroa.030.0.i.i.i149 = load ptr, ptr %.sroa.030.0.in.i.i.i144, align 8, !tbaa !21 ; 4 uses
  %.idx.i.i.i150 = mul nuw nsw i64 %.sroa.7.0.i.i.i148, 40
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i149, i64 %.idx.i.i.i150
  %i.mn = zext i32 %.021.i.i.i146 to i64          ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i149, i64 16
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !25 ; 2 uses
  %.not27.i9.i.i152 = icmp ugt i64 %i.mp, %i.mn
  br i1 %.not27.i9.i.i152, label %_ZNK5clang7Builtin7Context16isInStdNamespaceEj.exit, label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %bb.bo, %.lr.ph.i.i.i153
  %i.mq = phi i64 [ %i.mw, %.lr.ph.i.i.i153 ], [ %i.mp, %bb.bo ]
  %.12242.i11.i.i154 = phi i32 [ %i.ms, %.lr.ph.i.i.i153 ], [ %.021.i.i.i146, %bb.bo ]
  %.02043.i10.i.i155 = phi ptr [ %i.mt, %.lr.ph.i.i.i153 ], [ %.sroa.030.0.i.i.i149, %bb.bo ] ; 2 uses
  %i.mr = trunc nuw i64 %i.mq to i32
  %i.ms = sub nuw i32 %.12242.i11.i.i154, %i.mr   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.02043.i10.i.i155, i64 40 ; 3 uses
  %.not.not.i.i.i156 = icmp ne ptr %i.mt, %i.mm
  call void @llvm.assume(i1 %.not.not.i.i.i156)
  %i.mu = zext i32 %i.ms to i64                   ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.02043.i10.i.i155, i64 56
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !25 ; 2 uses
  %.not27.i.i.i157 = icmp ugt i64 %i.mw, %i.mu
  br i1 %.not27.i.i.i157, label %_ZNK5clang7Builtin7Context16isInStdNamespaceEj.exit, label %.lr.ph.i.i.i153

_ZNK5clang7Builtin7Context16isInStdNamespaceEj.exit: ; preds = %.lr.ph.i.i.i153, %bb.bo
  %.02043.i.lcssa.i.i158 = phi ptr [ %.sroa.030.0.i.i.i149, %bb.bo ], [ %i.mt, %.lr.ph.i.i.i153 ] ; 2 uses
  %.lcssa.i.i159 = phi i64 [ %i.mn, %bb.bo ], [ %i.mu, %.lr.ph.i.i.i153 ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.02043.i.lcssa.i.i158, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !26
  %i.mz = getelementptr inbounds nuw [20 x i8], ptr %i.my, i64 %.lcssa.i.i159
  %i.na = load ptr, ptr %.02043.i.lcssa.i.i158, align 8, !tbaa !44
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %.sroa.0.0.copyload.i.i160 = load i32, ptr %i.nb, align 4, !tbaa !31
  %i.nc = load ptr, ptr %i.na, align 8, !tbaa !45
  %i.nd = zext i32 %.sroa.0.0.copyload.i.i160 to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nd
  %i.nf = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ne, i32 noundef 122) #17
  %i.ng = icmp ne ptr %i.nf, null
  %i.nh = xor i1 %i.kq, %i.ng
  br i1 %i.nh, label %_ZNK5clang15IdentifierTable4findEN4llvm9StringRefE.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %_ZNK5clang7Builtin7Context16isInStdNamespaceEj.exit
  %i.ni = and i64 %i.lb, -33553921
  %i.nj = or disjoint i64 %i.ni, 33553408
  store i64 %i.nj, ptr %i.la, align 8
  br label %_ZNK5clang15IdentifierTable4findEN4llvm9StringRefE.exit.thread

_ZNK5clang15IdentifierTable4findEN4llvm9StringRefE.exit.thread: ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit, %bb.be, %_ZNK5clang7Builtin7Context23isPredefinedLibFunctionEj.exit, %_ZNK5clang7Builtin7Context16isInStdNamespaceEj.exit, %bb.bp, %_ZNK5clang15IdentifierTable4findEN4llvm9StringRefE.exit
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0189.0239, i64 32 ; 2 uses
  %.not192 = icmp eq ptr %i.nk, %i.gz
  br i1 %.not192, label %._crit_edge241, label %bb.bd
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18builtinIsSupportedRKN4llvm11StringTableERKN5clang7Builtin4InfoERKNS3_11LangOptionsE(ptr nofree readonly %.0.val, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(1136) %1) unnamed_addr #3 {
_ZNK4llvm11StringTableixENS0_6OffsetE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4, !tbaa !31
  %i.b = zext i32 %.sroa.0.0.copyload to i64
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 36028797018963968
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNK4llvm11StringTableixENS0_6OffsetE.exit
  %i.g = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 102) #17
  %.not36 = icmp eq ptr %i.g, null
  br i1 %.not36, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a, %_ZNK4llvm11StringTableixENS0_6OffsetE.exit
  %i.h = and i64 %i.e, 288230376151711744
  %.not37 = icmp eq i64 %i.h, 0
  br i1 %.not37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !129
  %i.k = and i16 %i.j, 128
  %.not38 = icmp eq i16 %i.k, 0
  br i1 %.not38, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i64 %i.e, 72057594037927936
  %.not39 = icmp ne i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i16, ptr %i.m, align 4
  %i.o = icmp eq i16 %i.n, 10
  %or.cond = select i1 %.not39, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %1, align 8                ; 3 uses
  %i.q = and i64 %i.p, 68719476736
  %.not40 = icmp eq i64 %i.q, 0
  br i1 %.not40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.s = load i16, ptr %i.r, align 2, !tbaa !129
  %i.t = and i16 %i.s, 1
  %.not41 = icmp eq i16 %i.t, 0
  br i1 %.not41, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = and i64 %i.p, 128
  %.not42 = icmp eq i64 %i.u, 0
  br i1 %.not42, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.w = load i16, ptr %i.v, align 2, !tbaa !129
  %i.x = and i16 %i.w, 16
  %.not43 = icmp eq i16 %i.x, 0
  br i1 %.not43, label %bb.i, label %bb.ai

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 1099511627776
  %.not44 = icmp eq i64 %i.aa, 0
  br i1 %.not44, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !129
  %i.ad = and i16 %i.ac, 4096
  %.not45 = icmp eq i16 %i.ad, 0
  br i1 %.not45, label %bb.k, label %bb.ai

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = and i64 %i.p, 1048576
  %.not46 = icmp eq i64 %i.ae, 0
  br i1 %.not46, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !129
  %i.ah = icmp eq i16 %i.ag, 8
  br i1 %i.ah, label %bb.ai, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 4611686018427387904
  %.not47 = icmp eq i64 %i.ak, 0
  br i1 %.not47, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.am = load i16, ptr %i.al, align 2, !tbaa !129
  %i.an = and i16 %i.am, 2048
  %.not48 = icmp eq i16 %i.an, 0
  br i1 %.not48, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %2 = load i64, ptr %i.ao, align 8               ; 2 uses
  %3 = and i64 %2, 4294967296
  %.not49 = icmp eq i64 %3, 0
  br i1 %.not49, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !129
  %i.ar = and i16 %i.aq, 256
  %.not50 = icmp eq i16 %i.ar, 0
  br i1 %.not50, label %bb.q, label %bb.ai

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = and i64 %2, 8589934592
  %.not51 = icmp eq i64 %i.as, 0
  br i1 %.not51, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.au = load i16, ptr %i.at, align 2, !tbaa !129
  %i.av = and i16 %i.au, 512
  %.not52 = icmp eq i16 %i.av, 0
  br i1 %.not52, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aw = tail call noundef i32 @_ZNK5clang11LangOptions26getOpenCLCompatibleVersionEv(ptr noundef nonnull align 8 dereferenceable(1136) %1) #16
  %i.ax = icmp ult i32 %i.aw, 200
  br i1 %i.ax, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 137438953472
  %.not53 = icmp eq i64 %i.ba, 0
  br i1 %.not53, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !129
  %i.bd = and i16 %i.bc, 1024
  %.not54 = icmp eq i16 %i.bd, 0
  br i1 %.not54, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = and i64 %i.bf, 4294967295
  %.not55 = icmp eq i64 %i.bg, 0
  br i1 %.not55, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !129
  %i.bj = icmp eq i16 %i.bi, 32
  br i1 %i.bj, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bk = load i64, ptr %i.ao, align 8
  %i.bl = and i64 %i.bk, 137438953472
  %.not56 = icmp eq i64 %i.bl, 0
  br i1 %.not56, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !129
  %i.bo = icmp eq i16 %i.bn, 64
  br i1 %i.bo, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bp = load i64, ptr %1, align 8               ; 4 uses
  %i.bq = and i64 %i.bp, 4096
  %.not57 = icmp eq i64 %i.bq, 0
  br i1 %.not57, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !129
  %i.bt = icmp eq i16 %i.bs, 4
  br i1 %i.bt, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bu = and i64 %i.bp, 65536
  %.not58 = icmp eq i64 %i.bu, 0
  br i1 %.not58, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bv = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 71) #17
  %.not59 = icmp eq ptr %i.bv, null
  br i1 %.not59, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bw = and i64 %i.bp, 8
  %.not60 = icmp eq i64 %i.bw, 0
  br i1 %.not60, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !129
  %i.bz = icmp eq i16 %i.by, 8192
  br i1 %i.bz, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ca = and i64 %i.bp, 16
  %.not61 = icmp eq i64 %i.ca, 0
  br i1 %.not61, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !129
  %i.cd = icmp eq i16 %i.cc, 16384
  br i1 %i.cd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br label %bb.ai

bb.ai:                                            ; preds = %bb.d, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.c, %bb.a, %bb.ah
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.r ], [ true, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK5clang7Builtin7Context22getRequiredVectorWidthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = add i32 %i.c, 1695
  %.not36.i.i = icmp ult i32 %1, %i.d
  br i1 %.not36.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = add i32 %1, -1695
  %i.h = sub i32 %i.g, %i.c
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = icmp ugt i32 %1, 1694
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = add i32 %1, -1695
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.030.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ %0, %bb.c ]
  %.sroa.7.0.in.in.i.i = phi ptr [ %i.f, %bb.b ], [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  %.021.i.i = phi i32 [ %i.h, %bb.b ], [ %i.m, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.sroa.7.0.in.i.i = load i32, ptr %.sroa.7.0.in.in.i.i, align 8, !tbaa !47
  %.sroa.7.0.i.i = zext i32 %.sroa.7.0.in.i.i to i64
  %.sroa.030.0.i.i = load ptr, ptr %.sroa.030.0.in.i.i, align 8, !tbaa !21 ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.sroa.7.0.i.i, 40
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i, i64 %.idx.i.i
  %i.o = zext i32 %.021.i.i to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %.not27.i9.i = icmp ugt i64 %i.q, %i.o
  br i1 %.not27.i9.i, label %_ZNK5clang7Builtin7Context19getAttributesStringEj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.r = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.q, %bb.e ]
  %.12242.i11.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ %.021.i.i, %bb.e ]
  %.02043.i10.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.030.0.i.i, %bb.e ] ; 2 uses
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = sub nuw i32 %.12242.i11.i, %i.s          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02043.i10.i, i64 40 ; 3 uses
  %.not.not.i.i = icmp ne ptr %i.u, %i.n
  tail call void @llvm.assume(i1 %.not.not.i.i)
  %i.v = zext i32 %i.t to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02043.i10.i, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %.not27.i.i = icmp ugt i64 %i.x, %i.v
  br i1 %.not27.i.i, label %_ZNK5clang7Builtin7Context19getAttributesStringEj.exit, label %.lr.ph.i.i

_ZNK5clang7Builtin7Context19getAttributesStringEj.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.02043.i.lcssa.i = phi ptr [ %.sroa.030.0.i.i, %bb.e ], [ %i.u, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.o, %bb.e ], [ %i.v, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.02043.i.lcssa.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.z, i64 %.lcssa.i
  %i.ab = load ptr, ptr %.02043.i.lcssa.i, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ae = zext i32 %.sroa.0.0.copyload.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.af, i32 noundef 86) #17 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang7Builtin7Context19getAttributesStringEj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ai = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %i.aj = trunc i64 %i.ai to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5clang7Builtin7Context19getAttributesStringEj.exit, %bb.f
  %.0 = phi i32 [ %i.aj, %bb.f ], [ 0, %_ZNK5clang7Builtin7Context19getAttributesStringEj.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7Builtin7Context6isLikeEjRjRbPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
end_hunk_0
