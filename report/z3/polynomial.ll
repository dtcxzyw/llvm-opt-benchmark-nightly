Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial?download=true
inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN10polynomial7manager9is_nonnegEPKNS_10polynomialE:bb.a
.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.trip.count.i = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !77   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext i32 %i.i to i64
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !16

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %i.n = and i32 %i.m, 1
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN10polynomial7manager3imp9is_nonnegEPKNS_10polynomialE.exit

.loopexit.i:                                      ; preds = %bb.c, %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !177
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 8, !tbaa !90
  %i.r = icmp sgt i32 %i.q, 0                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %i.r, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.b, label %_ZN10polynomial7manager3imp9is_nonnegEPKNS_10polynomialE.exit, !llvm.loop !440

_ZN10polynomial7manager3imp9is_nonnegEPKNS_10polynomialE.exit: ; preds = %.loopexit.i, %.lr.ph.i.i, %bb.a
  %.not15.i = phi i1 [ false, %.lr.ph.i.i ], [ true, %bb.a ], [ %i.r, %.loopexit.i ]
  ret i1 %.not15.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10polynomial7manager2geEPKNS_10polynomialES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = tail call noundef zeroext i1 @_ZN10polynomial7manager3imp2geEPKNS_10polynomialES4_(ptr noundef nonnull align 8 dereferenceable(824) %i.a, ptr noundef %1, ptr noundef %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10polynomial7manager3imp2geEPKNS_10polynomialES4_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !174  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !174  ; 5 uses
  %i.e = icmp ne i32 %i.b, 0                      ; 2 uses
  %i.f = icmp ne i32 %i.d, 0                      ; 2 uses
  %i.g = select i1 %i.e, i1 true, i1 %i.f
  br i1 %i.g, label %.lr.ph, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK10polynomial8monomial9is_squareEv.exit88
  %i.m = phi i1 [ %i.f, %.lr.ph ], [ %i.dj, %_ZNK10polynomial8monomial9is_squareEv.exit88 ] ; 2 uses
  %i.n = phi i1 [ %i.e, %.lr.ph ], [ %i.di, %_ZNK10polynomial8monomial9is_squareEv.exit88 ] ; 2 uses
  %.066119 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNK10polynomial8monomial9is_squareEv.exit88 ] ; 7 uses
  %.067118 = phi i32 [ 0, %.lr.ph ], [ %.168, %_ZNK10polynomial8monomial9is_squareEv.exit88 ] ; 7 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.p = zext i32 %.067118 to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !177
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.u = zext i32 %.066119 to i64                 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.in = phi ptr [ %i.q, %bb.c ], [ %i.v, %bb.d ]
  %i.y = phi ptr [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 7 uses
  %i.z = load ptr, ptr %.in, align 8, !tbaa !176  ; 6 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.ab = zext i32 %.066119 to i64                ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ab
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.ag = zext i32 %.067118 to i64                ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !177
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ag
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.in107 = phi ptr [ %i.ac, %bb.f ], [ %i.ah, %bb.g ]
  %i.ak = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.g ] ; 7 uses
  %i.al = load ptr, ptr %.in107, align 8, !tbaa !176 ; 4 uses
  %i.am = icmp eq i32 %.066119, %i.d              ; 2 uses
  %or.cond = select i1 %i.n, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !77
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.y, align 8, !tbaa !90
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = add nuw i32 %.067118, 1
  br i1 %i.ar, label %_ZNK10polynomial8monomial9is_squareEv.exit88, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.at = icmp eq i32 %.067118, %i.b              ; 2 uses
  %i.au = select i1 %i.at, i1 %i.m, i1 false
  br i1 %i.au, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !77
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !90
  %i.az = icmp slt i32 %i.ay, 0
  %i.ba = add nuw i32 %.066119, 1
  br i1 %i.az, label %_ZNK10polynomial8monomial9is_squareEv.exit88, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99

bb.n:                                             ; preds = %bb.k, %bb.l
  %or.cond74 = select i1 %i.at, i1 true, i1 %i.am
  br i1 %or.cond74, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread103.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !77 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !77
  %.not.i.i = icmp eq i32 %i.bc, %i.be
  br i1 %.not.i.i, label %bb.p, label %.loopexit110

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !185
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !185
  %.not14.i.i = icmp eq i32 %i.bg, %i.bi
  br i1 %.not14.i.i, label %.preheader.i.i, label %.loopexit110

.preheader.i.i:                                   ; preds = %bb.p
  %i.bj = icmp eq i32 %i.bc, 0
  br i1 %i.bj, label %_ZNK10polynomial8monomialeqERKS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %wide.trip.count.i.i = zext i32 %i.bc to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK10polynomial8monomialeqERKS0_.exit, label %bb.r, !llvm.loop !17

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.q ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.bo = load <2 x i32>, ptr %i.bm, align 4
  %i.bp = load <2 x i32>, ptr %i.bn, align 4
  %i.bq = icmp eq <2 x i32> %i.bo, %i.bp          ; 2 uses
  %3 = extractelement <2 x i1> %i.bq, i64 0
  %4 = extractelement <2 x i1> %i.bq, i64 1
  %5 = select i1 %3, i1 %4, i1 false
  br i1 %5, label %bb.q, label %.loopexit110

.loopexit110:                                     ; preds = %bb.r, %bb.p, %bb.o
  %i.br = load i32, ptr %i.y, align 8, !tbaa !90
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.s, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99

bb.s:                                             ; preds = %.loopexit110
  %i.bt = icmp eq i32 %i.bc, 0
  br i1 %i.bt, label %.loopexit109, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %wide.trip.count.i = zext i32 %i.bc to i64
  br label %.lr.ph.i

bb.t:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit109, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !73
  %i.bx = and i32 %i.bw, 1
  %.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i, label %bb.t, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99

.loopexit109:                                     ; preds = %bb.t, %bb.s
  %i.by = add i32 %.067118, 1
  br label %_ZNK10polynomial8monomial9is_squareEv.exit88

_ZNK10polynomial8monomialeqERKS0_.exit:           ; preds = %bb.q, %.preheader.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 4
  %i.cc = and i8 %i.cb, 1
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.u, label %_ZN13mpzzp_manager2eqERK3mpzS2_.exit

bb.u:                                             ; preds = %_ZNK10polynomial8monomialeqERKS0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.cf = load i8, ptr %i.ce, align 4
  %i.cg = and i8 %i.cf, 1
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %.split, label %_ZN13mpzzp_manager2eqERK3mpzS2_.exit

.split:                                           ; preds = %bb.u
  %i.ci = load i32, ptr %i.y, align 8, !tbaa !90
  %i.cj = load i32, ptr %i.ak, align 8, !tbaa !90
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.y, label %bb.v

_ZN13mpzzp_manager2eqERK3mpzS2_.exit:             ; preds = %_ZNK10polynomial8monomialeqERKS0_.exit, %bb.u
  %i.cl = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.y, label %_ZN13mpzzp_manager2eqERK3mpzS2_.exit._crit_edge

_ZN13mpzzp_manager2eqERK3mpzS2_.exit._crit_edge:  ; preds = %_ZN13mpzzp_manager2eqERK3mpzS2_.exit
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !77
  br label %bb.v

bb.v:                                             ; preds = %_ZN13mpzzp_manager2eqERK3mpzS2_.exit._crit_edge, %.split
  %i.cn = phi i32 [ %.pre, %_ZN13mpzzp_manager2eqERK3mpzS2_.exit._crit_edge ], [ %i.bc, %.split ] ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.loopexit, label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %bb.v
  %wide.trip.count.i81 = zext i32 %i.cn to i64
  br label %.lr.ph.i82

bb.w:                                             ; preds = %.lr.ph.i82
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %indvars.iv.next.i86, %wide.trip.count.i81
  br i1 %exitcond.not.i87, label %.loopexit, label %.lr.ph.i82, !llvm.loop !13

.lr.ph.i82:                                       ; preds = %bb.w, %.lr.ph.preheader.i80
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph.preheader.i80 ], [ %indvars.iv.next.i86, %bb.w ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i83
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !73
  %i.cs = and i32 %i.cr, 1
  %.not.i84 = icmp eq i32 %i.cs, 0
  br i1 %.not.i84, label %bb.w, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99

.loopexit:                                        ; preds = %bb.w, %bb.v
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.cu = load i8, ptr %i.ca, align 4
  %i.cv = and i8 %i.cu, 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.x, label %_ZN13mpzzp_manager2geERK3mpzS2_.exit

bb.x:                                             ; preds = %.loopexit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = and i8 %i.cy, 1
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %.split129, label %_ZN13mpzzp_manager2geERK3mpzS2_.exit

.split129:                                        ; preds = %bb.x
  %i.db = load i32, ptr %i.y, align 8, !tbaa !90
  %i.dc = load i32, ptr %i.ak, align 8, !tbaa !90
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99, label %bb.y

_ZN13mpzzp_manager2geERK3mpzS2_.exit:             ; preds = %.loopexit, %bb.x
  %i.de = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99, label %bb.y

bb.y:                                             ; preds = %.split129, %.split, %_ZN13mpzzp_manager2geERK3mpzS2_.exit, %_ZN13mpzzp_manager2eqERK3mpzS2_.exit
  %i.dg = add i32 %.067118, 1
  %i.dh = add i32 %.066119, 1
  br label %_ZNK10polynomial8monomial9is_squareEv.exit88, !llvm.loop !441

_ZNK10polynomial8monomial9is_squareEv.exit88:     ; preds = %bb.j, %bb.m, %.loopexit109, %bb.y
  %.168 = phi i32 [ %i.dg, %bb.y ], [ %i.b, %bb.m ], [ %i.by, %.loopexit109 ], [ %i.as, %bb.j ] ; 3 uses
  %.1 = phi i32 [ %i.dh, %bb.y ], [ %i.ba, %bb.m ], [ %.066119, %.loopexit109 ], [ %i.d, %bb.j ] ; 3 uses
  %i.di = icmp ult i32 %.168, %i.b                ; 2 uses
  %i.dj = icmp ult i32 %.1, %i.d                  ; 2 uses
  %i.dk = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %i.dk, label %bb.b, label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread103.loopexit

_ZNK10polynomial8monomial9is_squareEv.exit88.thread103.loopexit: ; preds = %bb.n, %_ZNK10polynomial8monomial9is_squareEv.exit88
  %.067.lcssa.ph = phi i32 [ %.168, %_ZNK10polynomial8monomial9is_squareEv.exit88 ], [ %.067118, %bb.n ]
  %.066.lcssa.ph = phi i32 [ %.1, %_ZNK10polynomial8monomial9is_squareEv.exit88 ], [ %.066119, %bb.n ]
  %i.dl = icmp eq i32 %.067.lcssa.ph, %i.b
  %i.dm = icmp eq i32 %.066.lcssa.ph, %i.d
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br label %_ZNK10polynomial8monomial9is_squareEv.exit88.thread99

_ZNK10polynomial8monomial9is_squareEv.exit88.thread99: ; preds = %.loopexit110, %_ZN13mpzzp_manager2geERK3mpzS2_.exit, %bb.j, %bb.m, %.split129, %.lr.ph.i, %.lr.ph.i82, %bb.a, %_ZNK10polynomial8monomial9is_squareEv.exit88.thread103.loopexit
  %.272 = phi i1 [ false, %.lr.ph.i ], [ %i.dn, %_ZNK10polynomial8monomial9is_squareEv.exit88.thread103.loopexit ], [ false, %.lr.ph.i82 ], [ true, %bb.a ], [ false, %.split129 ], [ false, %bb.m ], [ false, %bb.j ], [ false, %_ZN13mpzzp_manager2geERK3mpzS2_.exit ], [ false, %.loopexit110 ]
  ret i1 %.272
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10polynomial7manager6renameEjPKj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150
  tail call void @_ZN10polynomial16monomial_manager6renameEjPKj(ptr noundef nonnull align 8 dereferenceable(192) %i.c, i32 noundef %1, ptr noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN10polynomial7manager3imp6renameEjPKj.exit, label %_ZN6vectorIPN10polynomial10polynomialELb0EjE3endEv.exit.i

_ZN6vectorIPN10polynomial10polynomialELb0EjE3endEv.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !69   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not12.i = icmp eq i32 %i.h, 0
  br i1 %.not12.i, label %_ZN10polynomial7manager3imp6renameEjPKj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIPN10polynomial10polynomialELb0EjE3endEv.exit.i, %bb.c
  %.013.i = phi ptr [ %i.m, %bb.c ], [ %i.e, %_ZN6vectorIPN10polynomial10polynomialELb0EjE3endEv.exit.i ] ; 2 uses
  %i.l = load ptr, ptr %.013.i, align 8, !tbaa !102 ; 2 uses
  %.not11.i = icmp eq ptr %i.l, null
  br i1 %.not11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN10polynomial10polynomial18make_first_maximalEv(ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i, label %_ZN10polynomial7manager3imp6renameEjPKj.exit, label %.lr.ph.i

_ZN10polynomial7manager3imp6renameEjPKj.exit:     ; preds = %bb.c, %bb.a, %_ZN6vectorIPN10polynomial10polynomialELb0EjE3endEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10polynomial7manager4varsEPKNS_10polynomialER7svectorIjjE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !68     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  store i32 0, ptr %i.b, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 728 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load i32, ptr %i.g, align 8, !tbaa !197  ; 6 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !224  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread.i.i

end_hunk_0
begin_hunk_1_@_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE:bb.a
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bb
  %wide.vec = load <4 x i32>, ptr %i.bc, align 4, !tbaa !69 ; 2 uses
  %strided.vec28 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec29 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !69 ; 2 uses
  %strided.vec31 = shufflevector <4 x i32> %wide.vec29, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  store <4 x i32> %wide.vec, ptr %i.be, align 4, !tbaa !69
  store <4 x i32> %wide.vec29, ptr %i.bf, align 4, !tbaa !69
  %i.bg = add <2 x i32> %strided.vec28, %vec.phi  ; 2 uses
  %i.bh = add <2 x i32> %strided.vec31, %vec.phi27 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !495

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bh, %i.bg
  %i.bj = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.bj, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bk = phi i32 [ %i.bq, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.prol ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.prol
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.bp = load <2 x i32>, ptr %i.bl, align 4, !tbaa !69
  store <2 x i32> %i.bp, ptr %i.bm, align 4, !tbaa !69
  %i.bq = add i32 %i.bo, %i.bk                    ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !496

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa33.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.bq, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.bq, %scalar.ph.prol ]
  %i.br = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.bj, %middle.block ], [ %.lcssa33.unr, %scalar.ph.prol.loopexit ], [ %i.cr, %scalar.ph ]
  store i32 %.lcssa, ptr %i.an, align 4, !tbaa !78
  br label %_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bt = phi i32 [ %i.cr, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !73
  %i.by = load <2 x i32>, ptr %i.bu, align 4, !tbaa !69
  store <2 x i32> %i.by, ptr %i.bv, align 4, !tbaa !69
  %i.bz = add i32 %i.bx, %i.bt
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !73
  %i.ce = load <2 x i32>, ptr %i.ca, align 4, !tbaa !69
  store <2 x i32> %i.ce, ptr %i.cb, align 4, !tbaa !69
  %i.cf = add i32 %i.cd, %i.bz
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !73
  %i.ck = load <2 x i32>, ptr %i.cg, align 4, !tbaa !69
  store <2 x i32> %i.ck, ptr %i.ch, align 4, !tbaa !69
  %i.cl = add i32 %i.cj, %i.cf
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.2
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !73
  %i.cq = load <2 x i32>, ptr %i.cm, align 4, !tbaa !69
  store <2 x i32> %i.cq, ptr %i.cn, align 4, !tbaa !69
  %i.cr = add i32 %i.cp, %i.cl                    ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !497

_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit:  ; preds = %_ZN6id_gen2mkEv.exit, %._crit_edge.i
  store ptr %i.v, ptr %i.l, align 8, !tbaa !176
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit
  %.0 = phi ptr [ %i.v, %_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit ], [ %i.m, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  %.not.i = icmp eq ptr %i.b, null
  %.pre33 = load ptr, ptr %0, align 8, !tbaa !261 ; 3 uses
  br i1 %.not.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !258
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.pre33, i64 %i.g
  %i.i = icmp ult ptr %i.d, %i.h
  br i1 %i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit
  tail call void @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !261
  br label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit
  %i.j = phi ptr [ %.pre33, %bb.a ], [ %.pre, %bb.b ], [ %.pre33, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !274
  %i.m = add i32 %i.l, -1
  %i.n = load ptr, ptr %1, align 8, !tbaa !176    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !185  ; 2 uses
  %i.q = and i32 %i.p, %i.m
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.r ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !260
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !77   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = icmp eq i32 %i.y, 0
  %wide.trip.count.i.i = zext i32 %i.y to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ae = add <2 x i32> %i.ad, splat (i32 1)
  store <2 x i32> %i.ae, ptr %i.ac, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.af, align 8, !tbaa !275
  store ptr null, ptr %i.s, align 8, !tbaa !260
  br label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit

bb.d:                                             ; preds = %.preheader, %.loopexit
  %.023 = phi ptr [ %i.au, %.loopexit ], [ %i.s, %.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !77
  %.not.i.i = icmp eq i32 %i.aj, %i.y
  br i1 %.not.i.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !185
  %.not14.i.i = icmp eq i32 %i.al, %i.p
  br i1 %.not14.i.i, label %.preheader.i.i, label %.loopexit

.preheader.i.i:                                   ; preds = %bb.e
  br i1 %i.ab, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit36, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit, label %bb.g, !llvm.loop !17

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i.i
  %i.ap = load <2 x i32>, ptr %i.an, align 4
  %i.aq = load <2 x i32>, ptr %i.ao, align 4
  %i.ar = icmp eq <2 x i32> %i.ap, %i.aq          ; 2 uses
  %2 = extractelement <2 x i1> %i.ar, i64 0
  %3 = extractelement <2 x i1> %i.ar, i64 1
  %4 = select i1 %2, i1 %3, i1 false
  br i1 %4, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.d
  %i.as = load i32, ptr %i.aa, align 8, !tbaa !276
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.aa, align 8, !tbaa !276
  %i.au = load ptr, ptr %.023, align 8, !tbaa !260 ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.h, label %bb.d, !llvm.loop !498

bb.h:                                             ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !277
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !277
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !273 ; 3 uses
  %.not.i25 = icmp eq ptr %i.ay, null
  br i1 %.not.i25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !260
  store ptr %i.az, ptr %i.a, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !262 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !262
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.ay, %bb.i ], [ %i.bb, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !279
  %i.bd = load ptr, ptr %1, align 8, !tbaa !176
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !275
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !260
  br label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit: ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.023, i64 8
  br label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit36: ; preds = %.preheader.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.023, i64 8
  br label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit: ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit36, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit, %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit, %bb.c
  %.1 = phi ptr [ %i.af, %bb.c ], [ %i.be, %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit ], [ %i.bf, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit ], [ %i.bg, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit36 ]
  ret ptr %.1
}

declare noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520), i64 noundef) local_unnamed_addr #2

declare noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !274  ; 3 uses
  %i.d = shl i32 %i.c, 1                          ; 6 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 8, !tbaa !258
  %i.g = sub i32 %i.f, %i.c                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = add i32 %i.d, -1
  %i.k = zext i32 %i.d to i64
  %i.l = add i32 %i.d, -1
  br label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !172
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !225
  %i.p = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !169  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.p, ptr %i.n, align 8, !tbaa !168
  %i.w = load i64, ptr %i.q, align 8, !tbaa !170
  store i64 %i.w, ptr %i.o, align 8, !tbaa !170
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre89 = load i64, ptr %.phi.trans.insert88, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !169
  store ptr %i.q, ptr %1, align 8, !tbaa !168
  store i64 0, ptr %i.y, align 8, !tbaa !169
  store i8 0, ptr %i.q, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ac unwind label %bb.f

bb.f:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !168   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.f
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !170
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @__cxa_free_exception(ptr %i.m) #29
  br label %bb.ab

bb.h:                                             ; preds = %.preheader, %_Z12dealloc_vectIN10chashtableIPN10polynomial8monomialENS2_9hash_procENS2_7eq_procEE4cellEEvPT_j.exit
  %.037.in = phi i32 [ %.037, %_Z12dealloc_vectIN10chashtableIPN10polynomial8monomialENS2_9hash_procENS2_7eq_procEE4cellEEvPT_j.exit ], [ %i.g, %.preheader ]
  %.037 = shl nuw i32 %.037.in, 1                 ; 4 uses
  %i.ag = add i32 %.037, %i.d                     ; 7 uses
  %i.ah = icmp ult i32 %i.ag, %i.d
  br i1 %i.ah, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ai, align 8, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !225
  %i.al = load ptr, ptr %3, align 8, !tbaa !168   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !169 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.j
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !168
  %i.as = load i64, ptr %i.am, align 8, !tbaa !170
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !170
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre87 = load i64, ptr %.phi.trans.insert86, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit53

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit53: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.at = phi i64 [ %i.ap, %bb.k ], [ %.pre87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ]
end_hunk_1
begin_hunk_2_@_Z7deallocIN10polynomial7manager3imp10som_bufferEEvPT_:bb.a
  unreachable

_ZN10polynomial7manager3imp10som_bufferD2Ev.exit: ; preds = %_ZN6vectorI3mpzLb0EjED2Ev.exit.i, %bb.g
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN10polynomial7manager3imp10som_bufferD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp17som_buffer_vector5resetEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.thread

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.e) ; 2 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.thread
  %wide.trip.count = zext i32 %spec.select to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, %bb.a, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.thread
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i

_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i: ; preds = %.lr.ph
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !204
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %bb.d

._crit_edge.i:                                    ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !161  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 0, ptr %i.t, align 4, !tbaa !69
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i

_ZN6vectorI3mpzLb0EjE5resetEv.exit.i:             ; preds = %bb.b, %._crit_edge.i
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !162  ; 2 uses
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  store i32 0, ptr %i.v, align 4, !tbaa !69
  br label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit

bb.d:                                             ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i ] ; 4 uses
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !176
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !173 ; 2 uses
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !68  ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69
  %i.af = icmp ult i32 %i.aa, %i.ae
  br i1 %i.af, label %bb.e, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.ag = zext i32 %i.aa to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ag
  store i32 -1, ptr %i.ah, align 4, !tbaa !69
  br label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i

_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i: ; preds = %bb.e, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.d
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !161
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !97, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !204
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !176 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !150 ; 9 uses
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !198
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !198
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.f, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i

bb.f:                                             ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !77
  %.fr13.i = freeze i32 %i.av                     ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !274
  %i.az = add i32 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !185 ; 3 uses
  %i.bc = and i32 %i.bb, %i.az
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !261
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.be ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !260
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, 7
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 56 ; 3 uses
  %.promoted.i.i = load i32, ptr %i.bl, align 8   ; 2 uses
  %i.bm = icmp eq i32 %.fr13.i, 0
  %wide.trip.count.i.i.i.i = zext i32 %.fr13.i to i64
  br i1 %i.bm, label %.preheader.i.split.us.i, label %.preheader.i.split.i

.preheader.i.split.us.i:                          ; preds = %.preheader.i.i, %.loopexit.i.us.i
  %i.bn = phi i32 [ %i.bu, %.loopexit.i.us.i ], [ %.promoted.i.i, %.preheader.i.i ]
  %.020.i.us.i = phi ptr [ %i.bv, %.loopexit.i.us.i ], [ %i.bf, %.preheader.i.i ] ; 4 uses
  %.0.i.us.i = phi ptr [ %.020.i.us.i, %.loopexit.i.us.i ], [ null, %.preheader.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.020.i.us.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !176 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !77
  %.not.i.i.i.us.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.us.i, label %bb.g, label %.loopexit.i.us.i

bb.g:                                             ; preds = %.preheader.i.split.us.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !185
  %.not14.i.i.i.us.i = icmp eq i32 %i.bt, %i.bb
  br i1 %.not14.i.i.i.us.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i, label %.loopexit.i.us.i

.loopexit.i.us.i:                                 ; preds = %bb.g, %.preheader.i.split.us.i
  %i.bu = add i32 %i.bn, 1                        ; 2 uses
  store i32 %i.bu, ptr %i.bl, align 8, !tbaa !276
  %i.bv = load ptr, ptr %.020.i.us.i, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.us.i, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.split.us.i, !llvm.loop !31

.preheader.i.split.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.bw = phi i32 [ %i.cw, %.loopexit.i.i ], [ %.promoted.i.i, %.preheader.i.i ]
  %.020.i.i = phi ptr [ %i.cx, %.loopexit.i.i ], [ %i.bf, %.preheader.i.i ] ; 4 uses
  %.0.i.i = phi ptr [ %.020.i.i, %.loopexit.i.i ], [ null, %.preheader.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !176 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !77
  %.not.i.i.i.i = icmp eq i32 %i.ca, %.fr13.i
  br i1 %.not.i.i.i.i, label %bb.h, label %.loopexit.i.i

bb.h:                                             ; preds = %.preheader.i.split.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !185
  %.not14.i.i.i.i = icmp eq i32 %i.cc, %i.bb
  br i1 %.not14.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i, label %bb.j, !llvm.loop !17

bb.j:                                             ; preds = %bb.i, %.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.i.i.i.i
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i.i.i.i
  %i.cg = load <2 x i32>, ptr %i.ce, align 4
  %i.ch = load <2 x i32>, ptr %i.cf, align 4
  %i.ci = icmp eq <2 x i32> %i.cg, %i.ch          ; 2 uses
  %2 = extractelement <2 x i1> %i.ci, i64 0
  %3 = extractelement <2 x i1> %i.ci, i64 1
  %4 = select i1 %2, i1 %3, i1 false
  br i1 %4, label %bb.i, label %.loopexit.i.i

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i: ; preds = %bb.g, %bb.i
  %.020.i9.i = phi ptr [ %.020.i.i, %bb.i ], [ %.020.i.us.i, %bb.g ] ; 5 uses
  %.0.i6.i = phi ptr [ %.0.i.i, %bb.i ], [ %.0.i.us.i, %bb.g ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aq, i64 52 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !277
  %i.cl = add i32 %i.ck, -1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !277
  %i.cm = icmp eq ptr %.0.i6.i, null
  %i.cn = load ptr, ptr %.020.i9.i, align 8, !tbaa !260 ; 5 uses
  br i1 %i.cm, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !281
  %i.cr = add i32 %i.cq, -1
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !279
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aq, i64 72 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !273
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !260
  store ptr %i.cn, ptr %i.cs, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

bb.n:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i
  store ptr %i.cn, ptr %.0.i6.i, align 8, !tbaa !260
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 72 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !273
  store ptr %i.cv, ptr %.020.i9.i, align 8, !tbaa !260
  store ptr %.020.i9.i, ptr %i.cu, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

.loopexit.i.i:                                    ; preds = %bb.j, %bb.h, %.preheader.i.split.i
  %i.cw = add i32 %i.bw, 1                        ; 2 uses
  store i32 %i.cw, ptr %i.bl, align 8, !tbaa !276
  %i.cx = load ptr, ptr %.020.i.i, align 8, !tbaa !260 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i9, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.split.i, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i: ; preds = %.loopexit.i.i, %.loopexit.i.us.i, %bb.n, %bb.m, %bb.l, %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !173
  %i.da = tail call noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
  br i1 %i.da, label %_ZN10polynomial16monomial_manager3delEPNS_8monomialE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !68 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !69 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !69
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %bb.q, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
  %.pre.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i:        ; preds = %bb.q, %bb.p
  %i.dj = phi i32 [ %.pre2.i.i.i, %bb.q ], [ %i.df, %bb.p ] ; 2 uses
  %i.dk = phi ptr [ %.pre.i.i.i, %bb.q ], [ %i.dc, %bb.p ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dm
  store i32 %i.cz, ptr %i.dn, align 4, !tbaa !69
  %i.do = add i32 %i.dj, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !69
  br label %_ZN10polynomial16monomial_manager3delEPNS_8monomialE.exit

_ZN10polynomial16monomial_manager3delEPNS_8monomialE.exit: ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i
  %i.dp = shl i32 %.fr13.i, 3
  %i.dq = add i32 %i.dp, 20
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !193
  %i.dt = zext i32 %i.dq to i64
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ds, i64 noundef %i.dt, ptr noundef nonnull %i.ao)
  br label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i: ; preds = %_ZN10polynomial16monomial_manager3delEPNS_8monomialE.exit, %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !10

_ZN10polynomial7manager3imp10som_buffer5resetEv.exit: ; preds = %.lr.ph, %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i, %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !504
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp10som_buffer5resetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIPN10polynomial8monomialELb0EjE5resetEv.exit, label %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit

_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN6vectorIPN10polynomial8monomialELb0EjE5resetEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !161  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  store i32 0, ptr %i.m, align 4, !tbaa !69
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit

_ZN6vectorI3mpzLb0EjE5resetEv.exit:               ; preds = %._crit_edge, %bb.b
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %.not.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i8, label %_ZN6vectorIPN10polynomial8monomialELb0EjE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4
  store i32 0, ptr %i.o, align 4, !tbaa !69
  br label %_ZN6vectorIPN10polynomial8monomialELb0EjE5resetEv.exit

bb.d:                                             ; preds = %.lr.ph, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit ] ; 4 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !176
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !173  ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !68   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = icmp ult i32 %i.t, %i.x
  br i1 %i.y, label %bb.e, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.z = zext i32 %i.t to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 -1, ptr %i.aa, align 4, !tbaa !69
  br label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit

_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit: ; preds = %bb.d, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.e
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !97, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !204
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 464
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !150
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !198
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.f, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit

bb.f:                                             ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit
  tail call void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.aj, ptr noundef nonnull %i.ah)
  br label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit: ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !10

_ZN6vectorIPN10polynomial8monomialELb0EjE5resetEv.exit: ; preds = %bb.a, %bb.c, %_ZN6vectorI3mpzLb0EjE5resetEv.exit, %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit
  ret void
end_hunk_2
begin_hunk_3_@_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEED2Ev:bb.a
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit, !llvm.loop !32

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit: ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE7dec_refEPS1_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !183 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread7

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread7: ; preds = %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit ], [ %i.b, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev.exit: ; preds = %bb.a, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread7
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13mpzzp_manager7setup_pEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.mpz, align 8                 ; 6 uses
  %2 = alloca %class.mpz, align 8                 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.in.in.in.i = select i1 %i.e, ptr %i.a, ptr %i.h
  %.0.in.in.i = load i32, ptr %.0.in.in.in.i, align 4, !tbaa !69
  %.0.in.i = and i32 %.0.in.in.i, 1
  %.0.i = icmp eq i32 %.0.in.i, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i32 2, ptr %2, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -4
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.n, align 8, !tbaa !90
  store i32 %i.t, ptr %i.o, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.u, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.b, %bb.c
  %i.y = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br i1 %.0.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store i32 1, ptr %1, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !83
  call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  ret void
}

declare void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb0EE12set_big_ui64ER3mpzm(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #2

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !77
  %.fr13 = freeze i32 %i.b                        ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !274
  %i.f = add i32 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !185  ; 3 uses
  %i.i = and i32 %i.h, %i.f
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !260
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.promoted.i = load i32, ptr %i.r, align 8      ; 2 uses
  %i.s = icmp eq i32 %.fr13, 0
  %wide.trip.count.i.i.i = zext i32 %.fr13 to i64
  br i1 %i.s, label %.preheader.i.split.us, label %.preheader.i.split

.preheader.i.split.us:                            ; preds = %.preheader.i, %.loopexit.i.us
  %i.t = phi i32 [ %i.aa, %.loopexit.i.us ], [ %.promoted.i, %.preheader.i ]
  %.020.i.us = phi ptr [ %i.ab, %.loopexit.i.us ], [ %i.l, %.preheader.i ] ; 4 uses
  %.0.i.us = phi ptr [ %.020.i.us, %.loopexit.i.us ], [ null, %.preheader.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.020.i.us, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !176  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !77
  %.not.i.i.i.us = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.us, label %bb.b, label %.loopexit.i.us

bb.b:                                             ; preds = %.preheader.i.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !185
  %.not14.i.i.i.us = icmp eq i32 %i.z, %i.h
  br i1 %.not14.i.i.i.us, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %bb.b, %.preheader.i.split.us
  %i.aa = add i32 %i.t, 1                         ; 2 uses
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !276
  %i.ab = load ptr, ptr %.020.i.us, align 8, !tbaa !260 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ab, null
  br i1 %.not.i.us, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit, label %.preheader.i.split.us, !llvm.loop !31

.preheader.i.split:                               ; preds = %.preheader.i, %.loopexit.i
  %i.ac = phi i32 [ %i.bc, %.loopexit.i ], [ %.promoted.i, %.preheader.i ]
  %.020.i = phi ptr [ %i.bd, %.loopexit.i ], [ %i.l, %.preheader.i ] ; 4 uses
  %.0.i = phi ptr [ %.020.i, %.loopexit.i ], [ null, %.preheader.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !176 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77
  %.not.i.i.i = icmp eq i32 %i.ag, %.fr13
  br i1 %.not.i.i.i, label %bb.c, label %.loopexit.i

bb.c:                                             ; preds = %.preheader.i.split
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !185
  %.not14.i.i.i = icmp eq i32 %i.ai, %i.h
  br i1 %.not14.i.i.i, label %.preheader.i.i.i, label %.loopexit.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i, label %bb.e, !llvm.loop !17

bb.e:                                             ; preds = %bb.d, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.d ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.am = load <2 x i32>, ptr %i.ak, align 4
  %i.an = load <2 x i32>, ptr %i.al, align 4
  %i.ao = icmp eq <2 x i32> %i.am, %i.an          ; 2 uses
  %2 = extractelement <2 x i1> %i.ao, i64 0
  %3 = extractelement <2 x i1> %i.ao, i64 1
  %4 = select i1 %2, i1 %3, i1 false
  br i1 %4, label %bb.d, label %.loopexit.i

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i: ; preds = %bb.d, %bb.b
  %.020.i9 = phi ptr [ %.020.i.us, %bb.b ], [ %.020.i, %bb.d ] ; 5 uses
  %.0.i6 = phi ptr [ %.0.i.us, %bb.b ], [ %.0.i, %bb.d ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !277
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !277
  %i.as = icmp eq ptr %.0.i6, null
  %i.at = load ptr, ptr %.020.i9, align 8, !tbaa !260 ; 5 uses
  br i1 %i.as, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !281
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !279
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !273
  store ptr %i.az, ptr %i.at, align 8, !tbaa !260
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit

bb.i:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i
  store ptr %i.at, ptr %.0.i6, align 8, !tbaa !260
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !273
  store ptr %i.bb, ptr %.020.i9, align 8, !tbaa !260
  store ptr %.020.i9, ptr %i.ba, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit

.loopexit.i:                                      ; preds = %bb.e, %bb.c, %.preheader.i.split
  %i.bc = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.bc, ptr %i.r, align 8, !tbaa !276
  %i.bd = load ptr, ptr %.020.i, align 8, !tbaa !260 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit, label %.preheader.i.split, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit: ; preds = %.loopexit.i, %.loopexit.i.us, %bb.a, %bb.g, %bb.h, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !173
  %i.bg = tail call noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
  br i1 %i.bg, label %_ZN6id_gen7recycleEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !68 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !69 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !69
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.l, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
  %.pre.i.i = load ptr, ptr %i.bh, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.l, %bb.k
  %i.bp = phi i32 [ %.pre2.i.i, %bb.l ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bq = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bi, %bb.k ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.bf, ptr %i.bt, align 4, !tbaa !69
  %i.bu = add i32 %i.bp, 1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit

_ZN6id_gen7recycleEj.exit:                        ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i
  %i.bv = shl i32 %.fr13, 3
  %i.bw = add i32 %i.bv, 20
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !193
  %i.bz = zext i32 %i.bw to i64
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.by, i64 noundef %i.bz, ptr noundef nonnull %1)
  ret void
}

declare void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520), i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.g, %.preheader ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.0, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %.0, ptr noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196  ; 2 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %.loopexit, label %.preheader, !llvm.loop !34

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 464
  %wide.trip.count = zext i32 %i.i to i64
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit, %.loopexit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 2147483647                 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
  br i1 %i.q, label %_ZN6id_gen7recycleEj.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !69   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.d, %bb.c
  %i.z = phi i32 [ %.pre2.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i.i, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  store i32 %i.p, ptr %i.ad, align 4, !tbaa !69
  %i.ae = add i32 %i.z, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit

_ZN6id_gen7recycleEj.exit:                        ; preds = %._crit_edge, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i
  %i.af = mul i32 %i.i, 24
  %i.ag = add i32 %i.af, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !183
  %i.aj = zext nneg i32 %i.p to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  store ptr null, ptr %i.ak, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !150
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !193
  %i.ap = zext i32 %i.ag to i64
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ao, i64 noundef %i.ap, ptr noundef nonnull %1)
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit ] ; 3 uses
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !177
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !97, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !175
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !176 ; 3 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !150
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN10polynomial7manager3imp7gcd_prsEPKNS_10polynomialES4_jR7obj_refIS2_S0_E:bb.a
  br i1 %i.rh, label %bb.ck, label %bb.dk

bb.ck:                                            ; preds = %bb.cj
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 496
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !194 ; 2 uses
  %.not.i232 = icmp eq ptr %i.rj, null
  br i1 %.not.i232, label %.loopexit.i, label %.preheader.i233

.preheader.i233:                                  ; preds = %bb.ck, %.noexc239
  %.0.i = phi ptr [ %i.ro, %.noexc239 ], [ %i.rj, %bb.ck ] ; 3 uses
  %i.rk = load ptr, ptr %.0.i, align 8, !tbaa !172
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %i.rm = load ptr, ptr %i.rl, align 8
  invoke void %i.rm(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, ptr noundef nonnull %i.rc)
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !302

.noexc239:                                        ; preds = %.preheader.i233
  %i.rn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !196 ; 2 uses
  %.not20.i = icmp eq ptr %i.ro, null
  br i1 %.not20.i, label %.loopexit.i, label %.preheader.i233, !llvm.loop !34

.loopexit.i:                                      ; preds = %.noexc239, %bb.ck
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !174 ; 3 uses
  %.not22.i = icmp eq i32 %i.rq, 0
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.ru = getelementptr inbounds nuw i8, ptr %i.re, i64 464
  %wide.trip.count.i234 = zext i32 %i.rq to i64
  br label %bb.co

._crit_edge.i:                                    ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i, %.loopexit.i
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.rw = load i32, ptr %i.rv, align 4
  %i.rx = and i32 %i.rw, 2147483647               ; 2 uses
  %i.ry = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %._crit_edge.i
  br i1 %i.ry, label %_ZN6id_gen7recycleEj.exit.i, label %bb.cl

bb.cl:                                            ; preds = %.noexc240
  %i.rz = getelementptr inbounds nuw i8, ptr %i.re, i64 488 ; 3 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !68 ; 4 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sc = getelementptr inbounds i8, ptr %i.sa, i64 -4
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !69 ; 2 uses
  %i.se = getelementptr inbounds i8, ptr %i.sa, i64 -8
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !69
  %i.sg = icmp eq i32 %i.sd, %i.sf
  br i1 %i.sg, label %bb.cn, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rz)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %bb.cn
  %.pre.i.i.i238 = load ptr, ptr %i.rz, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i238, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i:        ; preds = %.noexc241, %bb.cm
  %i.sh = phi i32 [ %.pre2.i.i.i, %.noexc241 ], [ %i.sd, %bb.cm ] ; 2 uses
  %i.si = phi ptr [ %.pre.i.i.i238, %.noexc241 ], [ %i.sa, %bb.cm ] ; 2 uses
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -4
  %i.sk = zext i32 %i.sh to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.sk
  store i32 %i.rx, ptr %i.sl, align 4, !tbaa !69
  %i.sm = add i32 %i.sh, 1
  store i32 %i.sm, ptr %i.sj, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i

_ZN6id_gen7recycleEj.exit.i:                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i, %.noexc240
  %i.sn = mul i32 %i.rq, 24
  %i.so = add i32 %i.sn, 32
  %i.sp = getelementptr inbounds nuw i8, ptr %i.re, i64 472
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !183
  %i.sr = zext nneg i32 %i.rx to i64
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.sr
  store ptr null, ptr %i.ss, align 8, !tbaa !102
  %i.st = getelementptr inbounds nuw i8, ptr %i.re, i64 464
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !150
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !193
  %i.sx = zext i32 %i.so to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.sw, i64 noundef %i.sx, ptr noundef nonnull %i.rc)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i, %.lr.ph.i
  %indvars.iv.i235 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i236, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i ] ; 3 uses
  %i.sy = load ptr, ptr %i.rs, align 8, !tbaa !177
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %i.sy, i64 %indvars.iv.i235
  %i.ta = load ptr, ptr %i.rr, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ta, ptr noundef nonnull align 8 dereferenceable(16) %i.sz)
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %bb.co
  %i.tb = load ptr, ptr %i.rt, align 8, !tbaa !175
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.i235
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !176 ; 7 uses
  %i.te = load ptr, ptr %i.ru, align 8, !tbaa !150 ; 9 uses
  %i.tf = load i32, ptr %i.td, align 4, !tbaa !198
  %i.tg = add i32 %i.tf, -1                       ; 2 uses
  store i32 %i.tg, ptr %i.td, align 4, !tbaa !198
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.cp, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i

bb.cp:                                            ; preds = %.noexc243
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 12
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !77
  %.fr13.i = freeze i32 %i.tj                     ; 4 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 44
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !274
  %i.tn = add i32 %i.tm, -1
  %i.to = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !185 ; 3 uses
  %i.tq = and i32 %i.tp, %i.tn
  %i.tr = load ptr, ptr %i.tk, align 8, !tbaa !261
  %i.ts = zext i32 %i.tq to i64
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.ts ; 3 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !260
  %i.tv = ptrtoint ptr %i.tu to i64
  %i.tw = and i64 %i.tv, 7
  %i.tx = icmp eq i64 %i.tw, 1
  br i1 %i.tx, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.i270

.preheader.i.i270:                                ; preds = %bb.cp
  %i.ty = getelementptr inbounds nuw i8, ptr %i.td, i64 20
  %i.tz = getelementptr inbounds nuw i8, ptr %i.te, i64 56 ; 3 uses
  %.promoted.i.i = load i32, ptr %i.tz, align 8   ; 2 uses
  %i.ua = icmp eq i32 %.fr13.i, 0
  %wide.trip.count.i.i.i.i = zext i32 %.fr13.i to i64
  br i1 %i.ua, label %.preheader.i.split.us.i, label %.preheader.i.split.i

.preheader.i.split.us.i:                          ; preds = %.preheader.i.i270, %.loopexit.i.us.i
  %i.ub = phi i32 [ %i.ui, %.loopexit.i.us.i ], [ %.promoted.i.i, %.preheader.i.i270 ]
  %.020.i.us.i = phi ptr [ %i.uj, %.loopexit.i.us.i ], [ %i.tt, %.preheader.i.i270 ] ; 4 uses
  %.0.i.us.i = phi ptr [ %.020.i.us.i, %.loopexit.i.us.i ], [ null, %.preheader.i.i270 ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.020.i.us.i, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !176 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 12
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !77
  %.not.i.i.i.us.i = icmp eq i32 %i.uf, 0
  br i1 %.not.i.i.i.us.i, label %bb.cq, label %.loopexit.i.us.i

bb.cq:                                            ; preds = %.preheader.i.split.us.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !185
  %.not14.i.i.i.us.i = icmp eq i32 %i.uh, %i.tp
  br i1 %.not14.i.i.i.us.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i, label %.loopexit.i.us.i

.loopexit.i.us.i:                                 ; preds = %bb.cq, %.preheader.i.split.us.i
  %i.ui = add i32 %i.ub, 1                        ; 2 uses
  store i32 %i.ui, ptr %i.tz, align 8, !tbaa !276
  %i.uj = load ptr, ptr %.020.i.us.i, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.uj, null
  br i1 %.not.i.us.i, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.split.us.i, !llvm.loop !31

.preheader.i.split.i:                             ; preds = %.preheader.i.i270, %.loopexit.i.i
  %i.uk = phi i32 [ %i.vk, %.loopexit.i.i ], [ %.promoted.i.i, %.preheader.i.i270 ]
  %.020.i.i = phi ptr [ %i.vl, %.loopexit.i.i ], [ %i.tt, %.preheader.i.i270 ] ; 4 uses
  %.0.i.i271 = phi ptr [ %.020.i.i, %.loopexit.i.i ], [ null, %.preheader.i.i270 ]
  %i.ul = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !176 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 12
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !77
  %.not.i.i.i.i272 = icmp eq i32 %i.uo, %.fr13.i
  br i1 %.not.i.i.i.i272, label %bb.cr, label %.loopexit.i.i

bb.cr:                                            ; preds = %.preheader.i.split.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !185
  %.not14.i.i.i.i = icmp eq i32 %i.uq, %i.tp
  br i1 %.not14.i.i.i.i, label %.preheader.i.i.i.i279, label %.loopexit.i.i

.preheader.i.i.i.i279:                            ; preds = %bb.cr
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 20
  br label %bb.ct

bb.cs:                                            ; preds = %bb.ct
  %indvars.iv.next.i.i.i.i281 = add nuw nsw i64 %indvars.iv.i.i.i.i280, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i281, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i, label %bb.ct, !llvm.loop !17

bb.ct:                                            ; preds = %bb.cs, %.preheader.i.i.i.i279
  %indvars.iv.i.i.i.i280 = phi i64 [ 0, %.preheader.i.i.i.i279 ], [ %indvars.iv.next.i.i.i.i281, %bb.cs ] ; 3 uses
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %indvars.iv.i.i.i.i280
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.i.i.i.i280
  %i.uu = load <2 x i32>, ptr %i.us, align 4
  %i.uv = load <2 x i32>, ptr %i.ut, align 4
  %i.uw = icmp eq <2 x i32> %i.uu, %i.uv          ; 2 uses
  %24 = extractelement <2 x i1> %i.uw, i64 0
  %25 = extractelement <2 x i1> %i.uw, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.cs, label %.loopexit.i.i

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i: ; preds = %bb.cq, %bb.cs
  %.020.i9.i = phi ptr [ %.020.i.i, %bb.cs ], [ %.020.i.us.i, %bb.cq ] ; 5 uses
  %.0.i6.i = phi ptr [ %.0.i.i271, %bb.cs ], [ %.0.i.us.i, %bb.cq ] ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.te, i64 52 ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !277
  %i.uz = add i32 %i.uy, -1
  store i32 %i.uz, ptr %i.ux, align 4, !tbaa !277
  %i.va = icmp eq ptr %.0.i6.i, null
  %i.vb = load ptr, ptr %.020.i9.i, align 8, !tbaa !260 ; 5 uses
  br i1 %i.va, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i
  %i.vc = icmp eq ptr %i.vb, null
  br i1 %i.vc, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.vd = getelementptr inbounds nuw i8, ptr %i.te, i64 48 ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !281
  %i.vf = add i32 %i.ve, -1
  store i32 %i.vf, ptr %i.vd, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.vb, i64 16, i1 false), !tbaa.struct !279
  %i.vg = getelementptr inbounds nuw i8, ptr %i.te, i64 72 ; 2 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !273
  store ptr %i.vh, ptr %i.vb, align 8, !tbaa !260
  store ptr %i.vb, ptr %i.vg, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

bb.cx:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i
  store ptr %i.vb, ptr %.0.i6.i, align 8, !tbaa !260
  %i.vi = getelementptr inbounds nuw i8, ptr %i.te, i64 72 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !273
  store ptr %i.vj, ptr %.020.i9.i, align 8, !tbaa !260
  store ptr %.020.i9.i, ptr %i.vi, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

.loopexit.i.i:                                    ; preds = %bb.ct, %bb.cr, %.preheader.i.split.i
  %i.vk = add i32 %i.uk, 1                        ; 2 uses
  store i32 %i.vk, ptr %i.tz, align 8, !tbaa !276
  %i.vl = load ptr, ptr %.020.i.i, align 8, !tbaa !260 ; 2 uses
  %.not.i.i273 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i273, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.split.i, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i: ; preds = %.loopexit.i.i, %.loopexit.i.us.i, %bb.cx, %bb.cw, %bb.cv, %bb.cp
  %i.vm = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !173
  %i.vo = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc282 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc282:                                        ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i
  br i1 %i.vo, label %_ZN6id_gen7recycleEj.exit.i275, label %bb.cy

bb.cy:                                            ; preds = %.noexc282
  %i.vp = getelementptr inbounds nuw i8, ptr %i.te, i64 96 ; 3 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !68 ; 4 uses
  %i.vr = icmp eq ptr %i.vq, null
  br i1 %i.vr, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vs = getelementptr inbounds i8, ptr %i.vq, i64 -4
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !69 ; 5 uses
  %i.vu = getelementptr inbounds i8, ptr %i.vq, i64 -8 ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !69
  %i.vw = icmp eq i32 %i.vt, %i.vv
  br i1 %i.vw, label %bb.db, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i274

bb.da:                                            ; preds = %bb.cy
  %i.vx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc321 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc321:                                        ; preds = %bb.da
  store i32 2, ptr %i.vx, align 4, !tbaa !69
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  store i32 0, ptr %i.vy, align 4, !tbaa !69
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 2 uses
  store ptr %i.vz, ptr %i.vp, align 8, !tbaa !68
  br label %.noexc283

bb.db:                                            ; preds = %bb.cz
  %i.wa = mul i32 %i.vt, 3
  %i.wb = add i32 %i.wa, 1
  %i.wc = lshr i32 %i.wb, 1                       ; 3 uses
  %i.wd = shl i32 %i.wc, 2
  %i.we = add i32 %i.wd, 8                        ; 2 uses
  %.not.i320 = icmp ugt i32 %i.wc, %i.vt
  br i1 %.not.i320, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.wf = shl i32 %i.vt, 2
  %i.wg = add i32 %i.wf, 8
  %.not27.i = icmp ugt i32 %i.we, %i.wg
  br i1 %.not27.i, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.wh = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %bb.dd
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.wh, align 8, !tbaa !172
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 24 ; 3 uses
  store ptr %i.wj, ptr %i.wi, align 8, !tbaa !225
  %i.wk = load ptr, ptr %7, align 8, !tbaa !168   ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.wm = icmp eq ptr %i.wk, %i.wl
  br i1 %i.wm, label %bb.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.wn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !169 ; 3 uses
  %i.wp = icmp ult i64 %i.wo, 16
  call void @llvm.assume(i1 %i.wp)
  %i.wq = add nuw nsw i64 %i.wo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wj, ptr noundef nonnull align 8 dereferenceable(1) %i.wl, i64 %i.wq, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.de
  store ptr %i.wk, ptr %i.wi, align 8, !tbaa !168
  %i.wr = load i64, ptr %i.wl, align 8, !tbaa !170
  store i64 %i.wr, ptr %i.wj, align 8, !tbaa !170
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.df
  %i.ws = phi i64 [ %i.wo, %bb.df ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.wt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  store i64 %i.ws, ptr %i.wu, align 8, !tbaa !169
  store ptr %i.wl, ptr %7, align 8, !tbaa !168
  store i64 0, ptr %i.wt, align 8, !tbaa !169
  store i8 0, ptr %i.wl, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.wh, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.dj unwind label %bb.dg

bb.dg:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.wv = landingpad { ptr, i32 }
          cleanup
  %i.ww = load ptr, ptr %7, align 8, !tbaa !168   ; 2 uses
  %i.wx = icmp eq ptr %i.ww, %i.wl
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.dg
  %i.wy = load i64, ptr %i.wl, align 8, !tbaa !170
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.wz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body

bb.dh:                                            ; preds = %bb.dd
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @__cxa_free_exception(ptr %i.wh) #29
  br label %.body

bb.di:                                            ; preds = %bb.dc
  %i.xb = zext i32 %i.we to i64
  %i.xc = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.vu, i64 noundef %i.xb)
          to label %.noexc324 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc324:                                        ; preds = %bb.di
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 8 ; 2 uses
  store ptr %i.xd, ptr %i.vp, align 8, !tbaa !68
  store i32 %i.wc, ptr %i.xc, align 4, !tbaa !69
  br label %.noexc283

bb.dj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc283:                                        ; preds = %.noexc324, %.noexc321
  %.pre.i.i.i276 = phi ptr [ %i.xd, %.noexc324 ], [ %i.vz, %.noexc321 ] ; 2 uses
  %.phi.trans.insert.i.i.i277 = getelementptr inbounds i8, ptr %.pre.i.i.i276, i64 -4
  %.pre2.i.i.i278 = load i32, ptr %.phi.trans.insert.i.i.i277, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i274

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i274:     ; preds = %.noexc283, %bb.cz
  %i.xe = phi i32 [ %.pre2.i.i.i278, %.noexc283 ], [ %i.vt, %bb.cz ] ; 2 uses
  %i.xf = phi ptr [ %.pre.i.i.i276, %.noexc283 ], [ %i.vq, %bb.cz ] ; 2 uses
  %i.xg = getelementptr inbounds i8, ptr %i.xf, i64 -4
  %i.xh = zext i32 %i.xe to i64
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.xh
  store i32 %i.vn, ptr %i.xi, align 4, !tbaa !69
  %i.xj = add i32 %i.xe, 1
  store i32 %i.xj, ptr %i.xg, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i275

end_hunk_4
begin_hunk_5_@_ZN10polynomial7manager3imp7gcd_prsEPKNS_10polynomialES4_jR7obj_refIS2_S0_E:bb.a
  br i1 %i.yu, label %bb.dv, label %bb.ev

bb.dv:                                            ; preds = %bb.du
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 496
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !194 ; 2 uses
  %.not.i245 = icmp eq ptr %i.yw, null
  br i1 %.not.i245, label %.loopexit.i249, label %.preheader.i246

.preheader.i246:                                  ; preds = %bb.dv, %.noexc263
  %.0.i247 = phi ptr [ %i.zb, %.noexc263 ], [ %i.yw, %bb.dv ] ; 3 uses
  %i.yx = load ptr, ptr %.0.i247, align 8, !tbaa !172
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8
  invoke void %i.yz(ptr noundef nonnull align 8 dereferenceable(16) %.0.i247, ptr noundef nonnull %i.yj)
          to label %.noexc263 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !302

.noexc263:                                        ; preds = %.preheader.i246
  %i.za = getelementptr inbounds nuw i8, ptr %.0.i247, i64 8
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !196 ; 2 uses
  %.not20.i248 = icmp eq ptr %i.zb, null
  br i1 %.not20.i248, label %.loopexit.i249, label %.preheader.i246, !llvm.loop !34

.loopexit.i249:                                   ; preds = %.noexc263, %bb.dv
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.zd = load i32, ptr %i.zc, align 8, !tbaa !174 ; 3 uses
  %.not22.i250 = icmp eq i32 %i.zd, 0
  br i1 %.not22.i250, label %._crit_edge.i257, label %.lr.ph.i251

.lr.ph.i251:                                      ; preds = %.loopexit.i249
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yr, i64 464
  %wide.trip.count.i252 = zext i32 %i.zd to i64
  br label %bb.dz

._crit_edge.i257:                                 ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i254, %.loopexit.i249
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  %i.zj = load i32, ptr %i.zi, align 4
  %i.zk = and i32 %i.zj, 2147483647               ; 2 uses
  %i.zl = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc264 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc264:                                        ; preds = %._crit_edge.i257
  br i1 %i.zl, label %_ZN6id_gen7recycleEj.exit.i259, label %bb.dw

bb.dw:                                            ; preds = %.noexc264
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yr, i64 488 ; 3 uses
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !68 ; 4 uses
  %i.zo = icmp eq ptr %i.zn, null
  br i1 %i.zo, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.zp = getelementptr inbounds i8, ptr %i.zn, i64 -4
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !69 ; 2 uses
  %i.zr = getelementptr inbounds i8, ptr %i.zn, i64 -8
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !69
  %i.zt = icmp eq i32 %i.zq, %i.zs
  br i1 %i.zt, label %bb.dy, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i258

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zm)
          to label %.noexc265 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc265:                                        ; preds = %bb.dy
  %.pre.i.i.i260 = load ptr, ptr %i.zm, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i.i.i261 = getelementptr inbounds i8, ptr %.pre.i.i.i260, i64 -4
  %.pre2.i.i.i262 = load i32, ptr %.phi.trans.insert.i.i.i261, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i258

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i258:     ; preds = %.noexc265, %bb.dx
  %i.zu = phi i32 [ %.pre2.i.i.i262, %.noexc265 ], [ %i.zq, %bb.dx ] ; 2 uses
  %i.zv = phi ptr [ %.pre.i.i.i260, %.noexc265 ], [ %i.zn, %bb.dx ] ; 2 uses
  %i.zw = getelementptr inbounds i8, ptr %i.zv, i64 -4
  %i.zx = zext i32 %i.zu to i64
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %i.zx
  store i32 %i.zk, ptr %i.zy, align 4, !tbaa !69
  %i.zz = add i32 %i.zu, 1
  store i32 %i.zz, ptr %i.zw, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i259

_ZN6id_gen7recycleEj.exit.i259:                   ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i258, %.noexc264
  %i.aaa = mul i32 %i.zd, 24
  %i.aab = add i32 %i.aaa, 32
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yr, i64 472
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !183
  %i.aae = zext nneg i32 %i.zk to i64
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.aae
  store ptr null, ptr %i.aaf, align 8, !tbaa !102
  %i.aag = getelementptr inbounds nuw i8, ptr %i.yr, i64 464
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !150
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !193
  %i.aak = zext i32 %i.aab to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.aaj, i64 noundef %i.aak, ptr noundef nonnull %i.yj)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dz:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i254, %.lr.ph.i251
  %indvars.iv.i253 = phi i64 [ 0, %.lr.ph.i251 ], [ %indvars.iv.next.i255, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i254 ] ; 3 uses
  %i.aal = load ptr, ptr %i.zf, align 8, !tbaa !177
  %i.aam = getelementptr inbounds nuw [16 x i8], ptr %i.aal, i64 %indvars.iv.i253
  %i.aan = load ptr, ptr %i.ze, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.aan, ptr noundef nonnull align 8 dereferenceable(16) %i.aam)
          to label %.noexc267 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc267:                                        ; preds = %bb.dz
  %i.aao = load ptr, ptr %i.zg, align 8, !tbaa !175
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %indvars.iv.i253
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !176 ; 7 uses
  %i.aar = load ptr, ptr %i.zh, align 8, !tbaa !150 ; 9 uses
  %i.aas = load i32, ptr %i.aaq, align 4, !tbaa !198
  %i.aat = add i32 %i.aas, -1                     ; 2 uses
  store i32 %i.aat, ptr %i.aaq, align 4, !tbaa !198
  %i.aau = icmp eq i32 %i.aat, 0
  br i1 %i.aau, label %bb.ea, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i254

bb.ea:                                            ; preds = %.noexc267
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !77
  %.fr13.i285 = freeze i32 %i.aaw                 ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aar, i64 44
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !274
  %i.aba = add i32 %i.aaz, -1
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !185 ; 3 uses
  %i.abd = and i32 %i.abc, %i.aba
  %i.abe = load ptr, ptr %i.aax, align 8, !tbaa !261
  %i.abf = zext i32 %i.abd to i64
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr %i.abe, i64 %i.abf ; 3 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !260
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = and i64 %i.abi, 7
  %i.abk = icmp eq i64 %i.abj, 1
  br i1 %i.abk, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295, label %.preheader.i.i286

.preheader.i.i286:                                ; preds = %bb.ea
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aaq, i64 20
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aar, i64 56 ; 3 uses
  %.promoted.i.i287 = load i32, ptr %i.abm, align 8 ; 2 uses
  %i.abn = icmp eq i32 %.fr13.i285, 0
  %wide.trip.count.i.i.i.i288 = zext i32 %.fr13.i285 to i64
  br i1 %i.abn, label %.preheader.i.split.us.i309, label %.preheader.i.split.i289

.preheader.i.split.us.i309:                       ; preds = %.preheader.i.i286, %.loopexit.i.us.i313
  %i.abo = phi i32 [ %i.abv, %.loopexit.i.us.i313 ], [ %.promoted.i.i287, %.preheader.i.i286 ]
  %.020.i.us.i310 = phi ptr [ %i.abw, %.loopexit.i.us.i313 ], [ %i.abg, %.preheader.i.i286 ] ; 4 uses
  %.0.i.us.i311 = phi ptr [ %.020.i.us.i310, %.loopexit.i.us.i313 ], [ null, %.preheader.i.i286 ]
  %i.abp = getelementptr inbounds nuw i8, ptr %.020.i.us.i310, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !176 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !77
  %.not.i.i.i.us.i312 = icmp eq i32 %i.abs, 0
  br i1 %.not.i.i.i.us.i312, label %bb.eb, label %.loopexit.i.us.i313

bb.eb:                                            ; preds = %.preheader.i.split.us.i309
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !185
  %.not14.i.i.i.us.i315 = icmp eq i32 %i.abu, %i.abc
  br i1 %.not14.i.i.i.us.i315, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i306, label %.loopexit.i.us.i313

.loopexit.i.us.i313:                              ; preds = %bb.eb, %.preheader.i.split.us.i309
  %i.abv = add i32 %i.abo, 1                      ; 2 uses
  store i32 %i.abv, ptr %i.abm, align 8, !tbaa !276
  %i.abw = load ptr, ptr %.020.i.us.i310, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i314 = icmp eq ptr %i.abw, null
  br i1 %.not.i.us.i314, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295, label %.preheader.i.split.us.i309, !llvm.loop !31

.preheader.i.split.i289:                          ; preds = %.preheader.i.i286, %.loopexit.i.i293
  %i.abx = phi i32 [ %i.acx, %.loopexit.i.i293 ], [ %.promoted.i.i287, %.preheader.i.i286 ]
  %.020.i.i290 = phi ptr [ %i.acy, %.loopexit.i.i293 ], [ %i.abg, %.preheader.i.i286 ] ; 4 uses
  %.0.i.i291 = phi ptr [ %.020.i.i290, %.loopexit.i.i293 ], [ null, %.preheader.i.i286 ]
  %i.aby = getelementptr inbounds nuw i8, ptr %.020.i.i290, i64 8
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !176 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 12
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !77
  %.not.i.i.i.i292 = icmp eq i32 %i.acb, %.fr13.i285
  br i1 %.not.i.i.i.i292, label %bb.ec, label %.loopexit.i.i293

bb.ec:                                            ; preds = %.preheader.i.split.i289
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !185
  %.not14.i.i.i.i301 = icmp eq i32 %i.acd, %i.abc
  br i1 %.not14.i.i.i.i301, label %.preheader.i.i.i.i302, label %.loopexit.i.i293

.preheader.i.i.i.i302:                            ; preds = %bb.ec
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abz, i64 20
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ee
  %indvars.iv.next.i.i.i.i304 = add nuw nsw i64 %indvars.iv.i.i.i.i303, 1 ; 2 uses
  %exitcond.not.i.i.i.i305 = icmp eq i64 %indvars.iv.next.i.i.i.i304, %wide.trip.count.i.i.i.i288
  br i1 %exitcond.not.i.i.i.i305, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i306, label %bb.ee, !llvm.loop !17

bb.ee:                                            ; preds = %bb.ed, %.preheader.i.i.i.i302
  %indvars.iv.i.i.i.i303 = phi i64 [ 0, %.preheader.i.i.i.i302 ], [ %indvars.iv.next.i.i.i.i304, %bb.ed ] ; 3 uses
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv.i.i.i.i303
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.i.i.i.i303
  %i.ach = load <2 x i32>, ptr %i.acf, align 4
  %i.aci = load <2 x i32>, ptr %i.acg, align 4
  %i.acj = icmp eq <2 x i32> %i.ach, %i.aci       ; 2 uses
  %27 = extractelement <2 x i1> %i.acj, i64 0
  %28 = extractelement <2 x i1> %i.acj, i64 1
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %bb.ed, label %.loopexit.i.i293

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i306: ; preds = %bb.eb, %bb.ed
  %.020.i9.i307 = phi ptr [ %.020.i.i290, %bb.ed ], [ %.020.i.us.i310, %bb.eb ] ; 5 uses
  %.0.i6.i308 = phi ptr [ %.0.i.i291, %bb.ed ], [ %.0.i.us.i311, %bb.eb ] ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aar, i64 52 ; 2 uses
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !277
  %i.acm = add i32 %i.acl, -1
  store i32 %i.acm, ptr %i.ack, align 4, !tbaa !277
  %i.acn = icmp eq ptr %.0.i6.i308, null
  %i.aco = load ptr, ptr %.020.i9.i307, align 8, !tbaa !260 ; 5 uses
  br i1 %i.acn, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i306
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aar, i64 48 ; 2 uses
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !281
  %i.acs = add i32 %i.acr, -1
  store i32 %i.acs, ptr %i.acq, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i307, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i307, ptr noundef nonnull align 8 dereferenceable(16) %i.aco, i64 16, i1 false), !tbaa.struct !279
  %i.act = getelementptr inbounds nuw i8, ptr %i.aar, i64 72 ; 2 uses
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !273
  store ptr %i.acu, ptr %i.aco, align 8, !tbaa !260
  store ptr %i.aco, ptr %i.act, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295

bb.ei:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i306
  store ptr %i.aco, ptr %.0.i6.i308, align 8, !tbaa !260
  %i.acv = getelementptr inbounds nuw i8, ptr %i.aar, i64 72 ; 2 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !273
  store ptr %i.acw, ptr %.020.i9.i307, align 8, !tbaa !260
  store ptr %.020.i9.i307, ptr %i.acv, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295

.loopexit.i.i293:                                 ; preds = %bb.ee, %bb.ec, %.preheader.i.split.i289
  %i.acx = add i32 %i.abx, 1                      ; 2 uses
  store i32 %i.acx, ptr %i.abm, align 8, !tbaa !276
  %i.acy = load ptr, ptr %.020.i.i290, align 8, !tbaa !260 ; 2 uses
  %.not.i.i294 = icmp eq ptr %i.acy, null
  br i1 %.not.i.i294, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295, label %.preheader.i.split.i289, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295: ; preds = %.loopexit.i.i293, %.loopexit.i.us.i313, %bb.ei, %bb.eh, %bb.eg, %bb.ea
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !173
  %i.adb = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc316 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc316:                                        ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295
  br i1 %i.adb, label %_ZN6id_gen7recycleEj.exit.i297, label %bb.ej

bb.ej:                                            ; preds = %.noexc316
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aar, i64 96 ; 3 uses
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !68 ; 4 uses
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.adf = getelementptr inbounds i8, ptr %i.add, i64 -4
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !69 ; 5 uses
  %i.adh = getelementptr inbounds i8, ptr %i.add, i64 -8 ; 2 uses
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !69
  %i.adj = icmp eq i32 %i.adg, %i.adi
  br i1 %i.adj, label %bb.em, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i296

bb.el:                                            ; preds = %bb.ej
  %i.adk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc335 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc335:                                        ; preds = %bb.el
  store i32 2, ptr %i.adk, align 4, !tbaa !69
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 4
  store i32 0, ptr %i.adl, align 4, !tbaa !69
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adk, i64 8 ; 2 uses
  store ptr %i.adm, ptr %i.adc, align 8, !tbaa !68
  br label %.noexc317

bb.em:                                            ; preds = %bb.ek
  %i.adn = mul i32 %i.adg, 3
  %i.ado = add i32 %i.adn, 1
  %i.adp = lshr i32 %i.ado, 1                     ; 3 uses
  %i.adq = shl i32 %i.adp, 2
  %i.adr = add i32 %i.adq, 8                      ; 2 uses
  %.not.i325 = icmp ugt i32 %i.adp, %i.adg
  br i1 %.not.i325, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.ads = shl i32 %i.adg, 2
  %i.adt = add i32 %i.ads, 8
  %.not27.i334 = icmp ugt i32 %i.adr, %i.adt
  br i1 %.not27.i334, label %bb.et, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.adu = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %bb.eo
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.adu, align 8, !tbaa !172
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 8 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adu, i64 24 ; 3 uses
  store ptr %i.adw, ptr %i.adv, align 8, !tbaa !225
  %i.adx = load ptr, ptr %5, align 8, !tbaa !168  ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.adz = icmp eq ptr %i.adx, %i.ady
  br i1 %i.adz, label %bb.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327

bb.eq:                                            ; preds = %bb.ep
  %i.aea = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !169 ; 3 uses
  %i.aec = icmp ult i64 %i.aeb, 16
  call void @llvm.assume(i1 %i.aec)
  %i.aed = add nuw nsw i64 %i.aeb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adw, ptr noundef nonnull align 8 dereferenceable(1) %i.ady, i64 %i.aed, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327: ; preds = %bb.ep
  store ptr %i.adx, ptr %i.adv, align 8, !tbaa !168
  %i.aee = load i64, ptr %i.ady, align 8, !tbaa !170
  store i64 %i.aee, ptr %i.adw, align 8, !tbaa !170
  %.phi.trans.insert.i328 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i329 = load i64, ptr %.phi.trans.insert.i328, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327, %bb.eq
  %i.aef = phi i64 [ %i.aeb, %bb.eq ], [ %.pre.i329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327 ]
  %i.aeg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  store i64 %i.aef, ptr %i.aeh, align 8, !tbaa !169
  store ptr %i.ady, ptr %5, align 8, !tbaa !168
  store i64 0, ptr %i.aeg, align 8, !tbaa !169
  store i8 0, ptr %i.ady, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.adu, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.eu unwind label %bb.er

bb.er:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330
  %i.aei = landingpad { ptr, i32 }
          cleanup
  %i.aej = load ptr, ptr %5, align 8, !tbaa !168  ; 2 uses
  %i.aek = icmp eq ptr %i.aej, %i.ady
  br i1 %i.aek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i331: ; preds = %bb.er
  %i.ael = load i64, ptr %i.ady, align 8, !tbaa !170
  %i.aem = add i64 %i.ael, 1
  call void @_ZdlPvm(ptr noundef %i.aej, i64 noundef %i.aem) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i332: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.body

bb.es:                                            ; preds = %bb.eo
  %i.aen = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @__cxa_free_exception(ptr %i.adu) #29
  br label %.body

bb.et:                                            ; preds = %bb.en
  %i.aeo = zext i32 %i.adr to i64
  %i.aep = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.adh, i64 noundef %i.aeo)
          to label %.noexc338 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc338:                                        ; preds = %bb.et
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 8 ; 2 uses
  store ptr %i.aeq, ptr %i.adc, align 8, !tbaa !68
  store i32 %i.adp, ptr %i.aep, align 4, !tbaa !69
  br label %.noexc317

bb.eu:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330
  unreachable

.noexc317:                                        ; preds = %.noexc338, %.noexc335
  %.pre.i.i.i298 = phi ptr [ %i.aeq, %.noexc338 ], [ %i.adm, %.noexc335 ] ; 2 uses
  %.phi.trans.insert.i.i.i299 = getelementptr inbounds i8, ptr %.pre.i.i.i298, i64 -4
  %.pre2.i.i.i300 = load i32, ptr %.phi.trans.insert.i.i.i299, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i296

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i296:     ; preds = %.noexc317, %bb.ek
  %i.aer = phi i32 [ %.pre2.i.i.i300, %.noexc317 ], [ %i.adg, %bb.ek ] ; 2 uses
  %i.aes = phi ptr [ %.pre.i.i.i298, %.noexc317 ], [ %i.add, %bb.ek ] ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %i.aes, i64 -4
  %i.aeu = zext i32 %i.aer to i64
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %i.aeu
  store i32 %i.ada, ptr %i.aev, align 4, !tbaa !69
  %i.aew = add i32 %i.aer, 1
  store i32 %i.aew, ptr %i.aet, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i297

end_hunk_5
begin_hunk_6_@_ZN10polynomial7manager3imp11lc_glex_ZpXEPKNS_10polynomialEj:bb.a
bb.af:                                            ; preds = %.lr.ph232, %bb.ae
  %.in = phi i64 [ %i.gf, %.lr.ph232 ], [ %i.gn, %bb.ae ]
  %.in234 = phi i64 [ %i.gg, %.lr.ph232 ], [ %i.gm, %bb.ae ]
  %i.gm = add nsw i64 %.in234, -1                 ; 3 uses
  %i.gn = add nsw i64 %.in, -1                    ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gm ; 2 uses
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !72 ; 2 uses
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !72 ; 2 uses
  %i.gs = icmp eq i32 %i.gq, %i.gr
  br i1 %i.gs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !73 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !73 ; 2 uses
  %i.gx = icmp eq i32 %i.gu, %i.gw
  br i1 %i.gx, label %bb.ae, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gy = icmp ult i32 %i.gu, %i.gw
  br i1 %i.gy, label %select.unfold, label %_ZN10polynomial18graded_lex_compareEPKNS_8monomialES2_.exit

bb.ai:                                            ; preds = %bb.af
  %i.gz = icmp ugt i32 %i.gq, %i.gr
  br i1 %i.gz, label %_ZN10polynomial18graded_lex_compareEPKNS_8monomialES2_.exit, label %select.unfold

._crit_edge233:                                   ; preds = %bb.ae, %bb.ad
  %.lcssa212 = phi i1 [ %i.gc, %bb.ad ], [ %i.gi, %bb.ae ]
  br i1 %.lcssa212, label %_ZN10polynomial18graded_lex_compareEPKNS_8monomialES2_.exit, label %select.unfold

bb.aj:                                            ; preds = %bb.ab
  %i.ha = icmp ult i32 %i.fr, %i.ft
  br i1 %i.ha, label %select.unfold, label %_ZN10polynomial18graded_lex_compareEPKNS_8monomialES2_.exit

_ZN10polynomial18graded_lex_compareEPKNS_8monomialES2_.exit: ; preds = %bb.ai, %._crit_edge233, %bb.aj, %bb.ah, %_ZNK10polynomial8monomial9degree_ofEj.exit.thread
  %i.hb = load ptr, ptr %i.b, align 8, !tbaa !162 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit58, label %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i43

_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i43: ; preds = %_ZN10polynomial18graded_lex_compareEPKNS_8monomialES2_.exit
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !69 ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit58, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i43
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %wide.trip.count.i45 = zext i32 %i.he to i64
  br label %bb.am

._crit_edge.i52:                                  ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i49
  %i.hi = load ptr, ptr %i.ax, align 8, !tbaa !161 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i53, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i54, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i52
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -4
  store i32 0, ptr %i.hj, align 4, !tbaa !69
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i54

_ZN6vectorI3mpzLb0EjE5resetEv.exit.i54:           ; preds = %bb.ak, %._crit_edge.i52
  %i.hk = load ptr, ptr %i.b, align 8, !tbaa !162 ; 2 uses
  %.not.i8.i55 = icmp eq ptr %i.hk, null
  br i1 %.not.i8.i55, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit58, label %bb.al

bb.al:                                            ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i54
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -4
  store i32 0, ptr %i.hl, align 4, !tbaa !69
  br label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit58

bb.am:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i49, %.lr.ph.i44
  %indvars.iv.i46 = phi i64 [ 0, %.lr.ph.i44 ], [ %indvars.iv.next.i50, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i49 ] ; 4 uses
  %i.hm = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.i46
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !176
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !173 ; 2 uses
  %i.hr = load ptr, ptr %i.aw, align 8, !tbaa !68 ; 3 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i48, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i47

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i47:            ; preds = %bb.am
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 -4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !69
  %i.hv = icmp ult i32 %i.hq, %i.hu
  br i1 %i.hv, label %bb.an, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i48

bb.an:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i47
  %i.hw = zext i32 %i.hq to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hw
  store i32 -1, ptr %i.hx, align 4, !tbaa !69
  br label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i48

_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i48: ; preds = %bb.an, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i47, %bb.am
  %i.hy = load ptr, ptr %i.ax, align 8, !tbaa !161
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %indvars.iv.i46
  %i.ia = load ptr, ptr %i.hh, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %i.hz)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i48
  %i.ib = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.ic = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i46
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !176 ; 7 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 464
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !150 ; 9 uses
  %i.ih = load i32, ptr %i.ie, align 4, !tbaa !198
  %i.ii = add i32 %i.ih, -1                       ; 2 uses
  store i32 %i.ii, ptr %i.ie, align 4, !tbaa !198
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.ao, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i49

bb.ao:                                            ; preds = %.noexc56
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !77
  %.fr13.i = freeze i32 %i.il                     ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 44
  %i.io = load i32, ptr %i.in, align 4, !tbaa !274
  %i.ip = add i32 %i.io, -1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !185 ; 3 uses
  %i.is = and i32 %i.ir, %i.ip
  %i.it = load ptr, ptr %i.im, align 8, !tbaa !261
  %i.iu = zext i32 %i.is to i64
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.iu ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !260
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = and i64 %i.ix, 7
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.i84

.preheader.i.i84:                                 ; preds = %bb.ao
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ie, i64 20
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ig, i64 56 ; 3 uses
  %.promoted.i.i = load i32, ptr %i.jb, align 8   ; 2 uses
  %i.jc = icmp eq i32 %.fr13.i, 0
  %wide.trip.count.i.i.i.i = zext i32 %.fr13.i to i64
  br i1 %i.jc, label %.preheader.i.split.us.i, label %.preheader.i.split.i

.preheader.i.split.us.i:                          ; preds = %.preheader.i.i84, %.loopexit.i.us.i
  %i.jd = phi i32 [ %i.jk, %.loopexit.i.us.i ], [ %.promoted.i.i, %.preheader.i.i84 ]
  %.020.i.us.i = phi ptr [ %i.jl, %.loopexit.i.us.i ], [ %i.iv, %.preheader.i.i84 ] ; 4 uses
  %.0.i.us.i = phi ptr [ %.020.i.us.i, %.loopexit.i.us.i ], [ null, %.preheader.i.i84 ]
  %i.je = getelementptr inbounds nuw i8, ptr %.020.i.us.i, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !176 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !77
  %.not.i.i.i.us.i = icmp eq i32 %i.jh, 0
  br i1 %.not.i.i.i.us.i, label %bb.ap, label %.loopexit.i.us.i

bb.ap:                                            ; preds = %.preheader.i.split.us.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !185
  %.not14.i.i.i.us.i = icmp eq i32 %i.jj, %i.ir
  br i1 %.not14.i.i.i.us.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i, label %.loopexit.i.us.i

.loopexit.i.us.i:                                 ; preds = %bb.ap, %.preheader.i.split.us.i
  %i.jk = add i32 %i.jd, 1                        ; 2 uses
  store i32 %i.jk, ptr %i.jb, align 8, !tbaa !276
  %i.jl = load ptr, ptr %.020.i.us.i, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.us.i, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.split.us.i, !llvm.loop !31

.preheader.i.split.i:                             ; preds = %.preheader.i.i84, %.loopexit.i.i
  %i.jm = phi i32 [ %i.km, %.loopexit.i.i ], [ %.promoted.i.i, %.preheader.i.i84 ]
  %.020.i.i = phi ptr [ %i.kn, %.loopexit.i.i ], [ %i.iv, %.preheader.i.i84 ] ; 4 uses
  %.0.i.i85 = phi ptr [ %.020.i.i, %.loopexit.i.i ], [ null, %.preheader.i.i84 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !176 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !77
  %.not.i.i.i.i = icmp eq i32 %i.jq, %.fr13.i
  br i1 %.not.i.i.i.i, label %bb.aq, label %.loopexit.i.i

bb.aq:                                            ; preds = %.preheader.i.split.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !185
  %.not14.i.i.i.i = icmp eq i32 %i.js, %i.ir
  br i1 %.not14.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.aq
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i, label %bb.as, !llvm.loop !17

bb.as:                                            ; preds = %bb.ar, %.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.ar ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv.i.i.i.i
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.i.i.i.i
  %i.jw = load <2 x i32>, ptr %i.ju, align 4
  %i.jx = load <2 x i32>, ptr %i.jv, align 4
  %i.jy = icmp eq <2 x i32> %i.jw, %i.jx          ; 2 uses
  %5 = extractelement <2 x i1> %i.jy, i64 0
  %6 = extractelement <2 x i1> %i.jy, i64 1
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %bb.ar, label %.loopexit.i.i

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i: ; preds = %bb.ap, %bb.ar
  %.020.i9.i = phi ptr [ %.020.i.i, %bb.ar ], [ %.020.i.us.i, %bb.ap ] ; 5 uses
  %.0.i6.i = phi ptr [ %.0.i.i85, %bb.ar ], [ %.0.i.us.i, %bb.ap ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ig, i64 52 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !277
  %i.kb = add i32 %i.ka, -1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !277
  %i.kc = icmp eq ptr %.0.i6.i, null
  %i.kd = load ptr, ptr %.020.i9.i, align 8, !tbaa !260 ; 5 uses
  br i1 %i.kc, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ig, i64 48 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !281
  %i.kh = add i32 %i.kg, -1
  store i32 %i.kh, ptr %i.kf, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

bb.av:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.kd, i64 16, i1 false), !tbaa.struct !279
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ig, i64 72 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !273
  store ptr %i.kj, ptr %i.kd, align 8, !tbaa !260
  store ptr %i.kd, ptr %i.ki, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

bb.aw:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i
  store ptr %i.kd, ptr %.0.i6.i, align 8, !tbaa !260
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ig, i64 72 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !273
  store ptr %i.kl, ptr %.020.i9.i, align 8, !tbaa !260
  store ptr %.020.i9.i, ptr %i.kk, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i

.loopexit.i.i:                                    ; preds = %bb.as, %bb.aq, %.preheader.i.split.i
  %i.km = add i32 %i.jm, 1                        ; 2 uses
  store i32 %i.km, ptr %i.jb, align 8, !tbaa !276
  %i.kn = load ptr, ptr %.020.i.i, align 8, !tbaa !260 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i86, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i, label %.preheader.i.split.i, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i: ; preds = %.loopexit.i.i, %.loopexit.i.us.i, %bb.aw, %bb.av, %bb.au, %bb.ao
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !173
  %i.kq = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i
  br i1 %i.kq, label %_ZN6id_gen7recycleEj.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.noexc87
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ig, i64 96 ; 3 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !68 ; 4 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 -4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !69 ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.ks, i64 -8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !69
  %i.ky = icmp eq i32 %i.kv, %i.kx
  br i1 %i.ky, label %bb.az, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

bb.az:                                            ; preds = %bb.ay, %bb.ax
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kr)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %bb.az
  %.pre.i.i.i = load ptr, ptr %i.kr, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i:        ; preds = %.noexc88, %bb.ay
  %i.kz = phi i32 [ %.pre2.i.i.i, %.noexc88 ], [ %i.kv, %bb.ay ] ; 2 uses
  %i.la = phi ptr [ %.pre.i.i.i, %.noexc88 ], [ %i.ks, %bb.ay ] ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -4
  %i.lc = zext i32 %i.kz to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lc
  store i32 %i.kp, ptr %i.ld, align 4, !tbaa !69
  %i.le = add i32 %i.kz, 1
  store i32 %i.le, ptr %i.lb, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i

_ZN6id_gen7recycleEj.exit.i:                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i, %.noexc87
  %i.lf = shl i32 %.fr13.i, 3
  %i.lg = add i32 %i.lf, 20
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !193
  %i.lj = zext i32 %i.lg to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.li, i64 noundef %i.lj, ptr noundef nonnull %i.ie)
          to label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i49: ; preds = %_ZN6id_gen7recycleEj.exit.i, %.noexc56
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i50, %wide.trip.count.i45
  br i1 %exitcond.not.i51, label %._crit_edge.i52, label %bb.am, !llvm.loop !10

_ZN10polynomial7manager3imp10som_buffer5resetEv.exit58: ; preds = %bb.al, %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i54, %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i43, %_ZN10polynomial18graded_lex_compareEPKNS_8monomialES2_.exit
  %.not.i59 = icmp eq ptr %.0, null
  br i1 %.not.i59, label %bb.ba, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i60

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i60: ; preds = %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit58
  %i.lk = load i32, ptr %.0, align 4, !tbaa !198
  %i.ll = add i32 %i.lk, 1
  store i32 %i.ll, ptr %.0, align 4, !tbaa !198
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i60, %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit58
  br i1 %.not98, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lm = load ptr, ptr %i.ap, align 8, !tbaa !222, !nonnull !98, !align !99
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !93
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 464
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !150
  %i.lq = load i32, ptr %i.fo, align 4, !tbaa !198
  %i.lr = add i32 %i.lq, -1                       ; 2 uses
  store i32 %i.lr, ptr %i.fo, align 4, !tbaa !198
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.lp, ptr noundef nonnull %i.fo)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.bc
  store ptr %.0, ptr %3, align 8, !tbaa !220
  %i.lt = load ptr, ptr %i.av, align 8, !tbaa !177
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %indvars.iv
  %i.lv = load ptr, ptr %i.au, align 8, !tbaa !150 ; 4 uses
  br i1 %.not93, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 112
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !158
  br label %_ZN10polynomial7manager3imp11mk_monomialEjj.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 120 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 128 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !187
  %i.mb = icmp eq i32 %i.ma, 0
  %.pre.i.i.i.i = load ptr, ptr %i.ly, align 8, !tbaa !186 ; 2 uses
  br i1 %i.mb, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.bf
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %.pre.i.i.i.i)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %.thread.i.i.i.i
  %i.mc = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 36)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc66:                                         ; preds = %.noexc65
  store i32 0, ptr %i.mc, align 4, !tbaa !198
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store i32 -1, ptr %i.md, align 4, !tbaa !173
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store i32 0, ptr %i.me, align 4, !tbaa !78
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store i32 0, ptr %i.mf, align 4, !tbaa !185
  store ptr %i.mc, ptr %i.ly, align 8, !tbaa !186
  store i32 2, ptr %i.lz, align 8, !tbaa !187
  br label %.lr.ph.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i:                   ; preds = %.noexc66, %bb.bf
  %.pre.i.i.sink.i.i = phi ptr [ %i.mc, %.noexc66 ], [ %.pre.i.i.i.i, %bb.bf ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.pre.i.i.sink.i.i, i64 12
  store i32 1, ptr %i.mg, align 4, !tbaa !77
  %i.mh = getelementptr inbounds nuw i8, ptr %.pre.i.i.sink.i.i, i64 20
  store i64 %.0.i92, ptr %i.mh, align 4
  %i.mi = invoke noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.lv, ptr noundef nonnull align 8 dereferenceable(12) %i.ly)
          to label %_ZN10polynomial7manager3imp11mk_monomialEjj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp11mk_monomialEjj.exit: ; preds = %bb.be, %.lr.ph.i.i.i.preheader.i.i.i.i
  %.0.i.i64 = phi ptr [ %i.lx, %bb.be ], [ %i.mi, %.lr.ph.i.i.i.preheader.i.i.i.i ]
  invoke void @_ZN10polynomial7manager3imp10som_buffer3addERK3mpzPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.lu, ptr noundef %.0.i.i64)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold:                                    ; preds = %bb.ah, %bb.aj, %bb.ac, %._crit_edge233, %bb.ai
  %i.mj = icmp eq ptr %i.fo, %.0
  br i1 %i.mj, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %select.unfold
  %i.mk = load ptr, ptr %i.av, align 8, !tbaa !177
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.mk, i64 %indvars.iv
  %i.mm = load ptr, ptr %i.au, align 8, !tbaa !150 ; 4 uses
  br i1 %.not93, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 112
end_hunk_6
begin_hunk_7_@_ZN10polynomial10polynomial18make_first_maximalEv:bb.a
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %_ZN10polynomial10polynomial10swap_0_posEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177  ; 5 uses
  %i.h = zext i32 %i.bl to i64                    ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !69
  %i.k = load i32, ptr %i.i, align 4, !tbaa !69
  store i32 %i.k, ptr %i.g, align 4, !tbaa !69
  store i32 %i.j, ptr %i.i, align 4, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !205
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !205
  store ptr %i.o, ptr %i.l, align 8, !tbaa !205
  store ptr %i.n, ptr %i.m, align 8, !tbaa !205
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = and i8 %i.q, -4
  %i.u = and i8 %i.s, -4
  %i.v = and i8 %i.s, 3
  %i.w = or disjoint i8 %i.v, %i.t
  store i8 %i.w, ptr %i.p, align 4
  %i.x = and i8 %i.q, 3
  %i.y = or disjoint i8 %i.u, %i.x
  store i8 %i.y, ptr %i.r, align 4
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !175  ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.h ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !176
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !176
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !176
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !176
  br label %_ZN10polynomial10polynomial10swap_0_posEj.exit

_ZN10polynomial10polynomial10swap_0_posEj.exit:   ; preds = %bb.b, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 2147483647
  store i32 %i.af, ptr %i.ad, align 4
  br label %bb.f

bb.d:                                             ; preds = %.preheader, %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread10
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread10 ] ; 3 uses
  %.0613 = phi i32 [ 0, %.preheader ], [ %i.bl, %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread10 ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176 ; 3 uses
  %i.ai = zext i32 %.0613 to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !176 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !77 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !77 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread, label %_ZNK10polynomial8monomial7max_varEv.exit10.i

_ZNK10polynomial8monomial7max_varEv.exit10.i:     ; preds = %bb.e
  %i.ar = add i32 %i.am, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.at = zext i32 %i.ar to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !72 ; 2 uses
  %i.aw = add i32 %i.ap, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.ay = zext i32 %i.aw to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !72 ; 2 uses
  %i.bb = icmp ult i32 %i.av, %i.ba
  br i1 %i.bb, label %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread10, label %_ZNK10polynomial8monomial7max_varEv.exit14.i

_ZNK10polynomial8monomial7max_varEv.exit14.i:     ; preds = %_ZNK10polynomial8monomial7max_varEv.exit10.i
  %i.bc = icmp ugt i32 %i.av, %i.ba
  br i1 %i.bc, label %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread, label %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit

_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit: ; preds = %_ZNK10polynomial8monomial7max_varEv.exit14.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.at
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !73
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !73
  %i.bj = icmp ugt i32 %i.bf, %i.bi
  %cond.fr = freeze i1 %i.bj
  br i1 %cond.fr, label %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread, label %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread10

_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread: ; preds = %_ZNK10polynomial8monomial7max_varEv.exit14.i, %bb.e, %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit
  %i.bk = trunc nuw i64 %indvars.iv to i32
  br label %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread10

_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread10: ; preds = %_ZNK10polynomial8monomial7max_varEv.exit10.i, %bb.d, %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit, %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread
  %i.bl = phi i32 [ %i.bk, %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit.thread ], [ %.0613, %_ZN10polynomial10polynomial5po_gtEPKNS_8monomialES3_.exit ], [ %.0613, %bb.d ], [ %.0613, %_ZNK10polynomial8monomial7max_varEv.exit10.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !734

bb.f:                                             ; preds = %bb.a, %_ZN10polynomial10polynomial10swap_0_posEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  %.not.i = icmp eq ptr %i.b, null
  %.pre31 = load ptr, ptr %0, align 8, !tbaa !261 ; 3 uses
  br i1 %.not.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !258
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.pre31, i64 %i.g
  %i.i = icmp ult ptr %i.d, %i.h
  br i1 %i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit
  tail call void @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !261
  br label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit
  %i.j = phi ptr [ %.pre31, %bb.a ], [ %.pre, %bb.b ], [ %.pre31, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !274
  %i.m = add i32 %i.l, -1
  %i.n = load ptr, ptr %1, align 8, !tbaa !176    ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !185  ; 2 uses
  %i.q = and i32 %i.p, %i.m
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.r ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !260
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !77   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = icmp eq i32 %i.y, 0
  %wide.trip.count.i.i = zext i32 %i.y to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ae = add <2 x i32> %i.ad, splat (i32 1)
  store <2 x i32> %i.ae, ptr %i.ac, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.n, ptr %i.af, align 8, !tbaa !275
  store ptr null, ptr %i.s, align 8, !tbaa !260
  br label %bb.k

bb.d:                                             ; preds = %.preheader, %.loopexit
  %.0 = phi ptr [ %i.av, %.loopexit ], [ %i.s, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !77
  %.not.i.i = icmp eq i32 %i.aj, %i.y
  br i1 %.not.i.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !185
  %.not14.i.i = icmp eq i32 %i.al, %i.p
  br i1 %.not14.i.i, label %.preheader.i.i, label %.loopexit

.preheader.i.i:                                   ; preds = %bb.e
  br i1 %i.ab, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit, label %bb.g, !llvm.loop !17

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i.i
  %i.ap = load <2 x i32>, ptr %i.an, align 4
  %i.aq = load <2 x i32>, ptr %i.ao, align 4
  %i.ar = icmp eq <2 x i32> %i.ap, %i.aq          ; 2 uses
  %2 = extractelement <2 x i1> %i.ar, i64 0
  %3 = extractelement <2 x i1> %i.ar, i64 1
  %4 = select i1 %2, i1 %3, i1 false
  br i1 %4, label %bb.f, label %.loopexit

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit: ; preds = %.preheader.i.i, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr %i.n, ptr %i.as, align 8, !tbaa !275
  br label %bb.k

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.d
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !276
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.aa, align 8, !tbaa !276
  %i.av = load ptr, ptr %.0, align 8, !tbaa !260  ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.h, label %bb.d, !llvm.loop !735

bb.h:                                             ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !277
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !277
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !273 ; 3 uses
  %.not.i22 = icmp eq ptr %i.az, null
  br i1 %.not.i22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !260
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit

bb.j:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !262 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !262
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.az, %bb.i ], [ %i.bc, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !279
  %i.be = load ptr, ptr %1, align 8, !tbaa !176
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !275
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !260
  br label %bb.k

bb.k:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit, %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE13get_free_cellEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !224
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %narrow = add nuw i32 %i.j, 8                   ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.k = add i32 %i.g, 8
  %.not27 = icmp ugt i32 %narrow, %i.k
  %or.cond = select i1 %.not, i1 %.not27, i1 false
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.l, align 8, !tbaa !172
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !225
  %i.o = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !169  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.o, ptr %i.m, align 8, !tbaa !168
  %i.v = load i64, ptr %i.p, align 8, !tbaa !170
  store i64 %i.v, ptr %i.n, align 8, !tbaa !170
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.w, ptr %i.y, align 8, !tbaa !169
  store ptr %i.p, ptr %1, align 8, !tbaa !168
  store i64 0, ptr %i.x, align 8, !tbaa !169
  store i8 0, ptr %i.p, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !168   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !170
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @__cxa_free_exception(ptr %i.l) #29
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.af = zext i32 %narrow to i64
  %i.ag = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %0, align 8, !tbaa !224
  store i32 %i.j, ptr %i.ag, align 4, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp14var_max_degree4initEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !174  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count54 = zext i32 %i.b to i64
  br label %bb.b

._crit_edge48:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph47, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next52, %._crit_edge ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv51
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !77   ; 2 uses
  %.not49 = icmp eq i32 %i.i, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph
end_hunk_7
begin_hunk_8_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.atk)
  %i.atl = add nuw nsw i64 %i.atj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ate, ptr noundef nonnull align 8 dereferenceable(1) %i.atg, i64 %i.atl, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1783: ; preds = %bb.hq
  store ptr %i.atf, ptr %i.atd, align 8, !tbaa !168
  %i.atm = load i64, ptr %i.atg, align 8, !tbaa !170
  store i64 %i.atm, ptr %i.ate, align 8, !tbaa !170
  %.phi.trans.insert.i1784 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %.pre.i1785 = load i64, ptr %.phi.trans.insert.i1784, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1786

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1786: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1783, %bb.hr
  %i.atn = phi i64 [ %i.atj, %bb.hr ], [ %.pre.i1785, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1783 ]
  %i.ato = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  store i64 %i.atn, ptr %i.atp, align 8, !tbaa !169
  store ptr %i.atg, ptr %51, align 8, !tbaa !168
  store i64 0, ptr %i.ato, align 8, !tbaa !169
  store i8 0, ptr %i.atg, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.atc, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.hv unwind label %bb.hs

bb.hs:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1786
  %i.atq = landingpad { ptr, i32 }
          cleanup
  %i.atr = load ptr, ptr %51, align 8, !tbaa !168 ; 2 uses
  %i.ats = icmp eq ptr %i.atr, %i.atg
  br i1 %i.ats, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1788, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1787

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1787: ; preds = %bb.hs
  %i.att = load i64, ptr %i.atg, align 8, !tbaa !170
  %i.atu = add i64 %i.att, 1
  call void @_ZdlPvm(ptr noundef %i.atr, i64 noundef %i.atu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1788

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1788: ; preds = %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1787
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  br label %.body1792

bb.ht:                                            ; preds = %bb.hp
  %i.atv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  call void @__cxa_free_exception(ptr %i.atc) #29
  br label %.body1792

bb.hu:                                            ; preds = %bb.ho
  %i.atw = zext i32 %i.asz to i64
  %i.atx = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.asp, i64 noundef %i.atw)
          to label %.noexc1794 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1794:                                       ; preds = %bb.hu
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 8 ; 2 uses
  store ptr %i.aty, ptr %i.ask, align 8, !tbaa !68
  store i32 %i.asx, ptr %i.atx, align 4, !tbaa !69
  br label %.noexc1278

bb.hv:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1786
  unreachable

.noexc1278:                                       ; preds = %.noexc1794, %.noexc1791
  %.pre.i.i.i1273 = phi ptr [ %i.aty, %.noexc1794 ], [ %i.asu, %.noexc1791 ] ; 2 uses
  %.phi.trans.insert.i.i.i1274 = getelementptr inbounds i8, ptr %.pre.i.i.i1273, i64 -4
  %.pre2.i.i.i1275 = load i32, ptr %.phi.trans.insert.i.i.i1274, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1271

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1271:    ; preds = %.noexc1278, %bb.hl
  %i.atz = phi i32 [ %.pre2.i.i.i1275, %.noexc1278 ], [ %i.aso, %bb.hl ] ; 2 uses
  %i.aua = phi ptr [ %.pre.i.i.i1273, %.noexc1278 ], [ %i.asl, %bb.hl ] ; 2 uses
  %i.aub = getelementptr inbounds i8, ptr %i.aua, i64 -4
  %i.auc = zext i32 %i.atz to i64
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %i.auc
  store i32 %i.asi, ptr %i.aud, align 4, !tbaa !69
  %i.aue = add i32 %i.atz, 1
  store i32 %i.aue, ptr %i.aub, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1272

_ZN6id_gen7recycleEj.exit.i1272:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1271, %.noexc1277
  %i.auf = mul i32 %i.asb, 24
  %i.aug = add i32 %i.auf, 32
  %i.auh = getelementptr inbounds nuw i8, ptr %i.arp, i64 472
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !183
  %i.auj = zext nneg i32 %i.asi to i64
  %i.auk = getelementptr inbounds nuw [8 x i8], ptr %i.aui, i64 %i.auj
  store ptr null, ptr %i.auk, align 8, !tbaa !102
  %i.aul = getelementptr inbounds nuw i8, ptr %i.arp, i64 464
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !150
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 8
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !193
  %i.aup = zext i32 %i.aug to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.auo, i64 noundef %i.aup, ptr noundef nonnull %i.arn)
          to label %bb.is unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hw:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1267, %.lr.ph.i1264
  %indvars.iv.i1266 = phi i64 [ 0, %.lr.ph.i1264 ], [ %indvars.iv.next.i1268, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1267 ] ; 3 uses
  %i.auq = load ptr, ptr %i.asd, align 8, !tbaa !177
  %i.aur = getelementptr inbounds nuw [16 x i8], ptr %i.auq, i64 %indvars.iv.i1266
  %i.aus = load ptr, ptr %i.asc, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.aus, ptr noundef nonnull align 8 dereferenceable(16) %i.aur)
          to label %.noexc1280 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1280:                                       ; preds = %bb.hw
  %i.aut = load ptr, ptr %i.ase, align 8, !tbaa !175
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.aut, i64 %indvars.iv.i1266
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !176 ; 7 uses
  %i.auw = load ptr, ptr %i.asf, align 8, !tbaa !150 ; 9 uses
  %i.aux = load i32, ptr %i.auv, align 4, !tbaa !198
  %i.auy = add i32 %i.aux, -1                     ; 2 uses
  store i32 %i.auy, ptr %i.auv, align 4, !tbaa !198
  %i.auz = icmp eq i32 %i.auy, 0
  br i1 %i.auz, label %bb.hx, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1267

bb.hx:                                            ; preds = %.noexc1280
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auv, i64 12
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !77
  %.fr13.i1746 = freeze i32 %i.avb                ; 4 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auw, i64 24
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auw, i64 44
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !274
  %i.avf = add i32 %i.ave, -1
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auv, i64 16
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !185 ; 3 uses
  %i.avi = and i32 %i.avh, %i.avf
  %i.avj = load ptr, ptr %i.avc, align 8, !tbaa !261
  %i.avk = zext i32 %i.avi to i64
  %i.avl = getelementptr inbounds nuw [16 x i8], ptr %i.avj, i64 %i.avk ; 3 uses
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !260
  %i.avn = ptrtoint ptr %i.avm to i64
  %i.avo = and i64 %i.avn, 7
  %i.avp = icmp eq i64 %i.avo, 1
  br i1 %i.avp, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1756, label %.preheader.i.i1747

.preheader.i.i1747:                               ; preds = %bb.hx
  %i.avq = getelementptr inbounds nuw i8, ptr %i.auv, i64 20
  %i.avr = getelementptr inbounds nuw i8, ptr %i.auw, i64 56 ; 3 uses
  %.promoted.i.i1748 = load i32, ptr %i.avr, align 8 ; 2 uses
  %i.avs = icmp eq i32 %.fr13.i1746, 0
  %wide.trip.count.i.i.i.i1749 = zext i32 %.fr13.i1746 to i64
  br i1 %i.avs, label %.preheader.i.split.us.i1770, label %.preheader.i.split.i1750

.preheader.i.split.us.i1770:                      ; preds = %.preheader.i.i1747, %.loopexit.i.us.i1774
  %i.avt = phi i32 [ %i.awa, %.loopexit.i.us.i1774 ], [ %.promoted.i.i1748, %.preheader.i.i1747 ]
  %.020.i.us.i1771 = phi ptr [ %i.awb, %.loopexit.i.us.i1774 ], [ %i.avl, %.preheader.i.i1747 ] ; 4 uses
  %.0.i.us.i1772 = phi ptr [ %.020.i.us.i1771, %.loopexit.i.us.i1774 ], [ null, %.preheader.i.i1747 ]
  %i.avu = getelementptr inbounds nuw i8, ptr %.020.i.us.i1771, i64 8
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !176 ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 12
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !77
  %.not.i.i.i.us.i1773 = icmp eq i32 %i.avx, 0
  br i1 %.not.i.i.i.us.i1773, label %bb.hy, label %.loopexit.i.us.i1774

bb.hy:                                            ; preds = %.preheader.i.split.us.i1770
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avv, i64 16
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !185
  %.not14.i.i.i.us.i1776 = icmp eq i32 %i.avz, %i.avh
  br i1 %.not14.i.i.i.us.i1776, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1767, label %.loopexit.i.us.i1774

.loopexit.i.us.i1774:                             ; preds = %bb.hy, %.preheader.i.split.us.i1770
  %i.awa = add i32 %i.avt, 1                      ; 2 uses
  store i32 %i.awa, ptr %i.avr, align 8, !tbaa !276
  %i.awb = load ptr, ptr %.020.i.us.i1771, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i1775 = icmp eq ptr %i.awb, null
  br i1 %.not.i.us.i1775, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1756, label %.preheader.i.split.us.i1770, !llvm.loop !31

.preheader.i.split.i1750:                         ; preds = %.preheader.i.i1747, %.loopexit.i.i1754
  %i.awc = phi i32 [ %i.axc, %.loopexit.i.i1754 ], [ %.promoted.i.i1748, %.preheader.i.i1747 ]
  %.020.i.i1751 = phi ptr [ %i.axd, %.loopexit.i.i1754 ], [ %i.avl, %.preheader.i.i1747 ] ; 4 uses
  %.0.i.i1752 = phi ptr [ %.020.i.i1751, %.loopexit.i.i1754 ], [ null, %.preheader.i.i1747 ]
  %i.awd = getelementptr inbounds nuw i8, ptr %.020.i.i1751, i64 8
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !176 ; 3 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 12
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !77
  %.not.i.i.i.i1753 = icmp eq i32 %i.awg, %.fr13.i1746
  br i1 %.not.i.i.i.i1753, label %bb.hz, label %.loopexit.i.i1754

bb.hz:                                            ; preds = %.preheader.i.split.i1750
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awe, i64 16
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !185
  %.not14.i.i.i.i1762 = icmp eq i32 %i.awi, %i.avh
  br i1 %.not14.i.i.i.i1762, label %.preheader.i.i.i.i1763, label %.loopexit.i.i1754

.preheader.i.i.i.i1763:                           ; preds = %bb.hz
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awe, i64 20
  br label %bb.ib

bb.ia:                                            ; preds = %bb.ib
  %indvars.iv.next.i.i.i.i1765 = add nuw nsw i64 %indvars.iv.i.i.i.i1764, 1 ; 2 uses
  %exitcond.not.i.i.i.i1766 = icmp eq i64 %indvars.iv.next.i.i.i.i1765, %wide.trip.count.i.i.i.i1749
  br i1 %exitcond.not.i.i.i.i1766, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1767, label %bb.ib, !llvm.loop !17

bb.ib:                                            ; preds = %bb.ia, %.preheader.i.i.i.i1763
  %indvars.iv.i.i.i.i1764 = phi i64 [ 0, %.preheader.i.i.i.i1763 ], [ %indvars.iv.next.i.i.i.i1765, %bb.ia ] ; 3 uses
  %i.awk = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv.i.i.i.i1764
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.avq, i64 %indvars.iv.i.i.i.i1764
  %i.awm = load <2 x i32>, ptr %i.awk, align 4
  %i.awn = load <2 x i32>, ptr %i.awl, align 4
  %i.awo = icmp eq <2 x i32> %i.awm, %i.awn       ; 2 uses
  %104 = extractelement <2 x i1> %i.awo, i64 0
  %105 = extractelement <2 x i1> %i.awo, i64 1
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %bb.ia, label %.loopexit.i.i1754

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1767: ; preds = %bb.hy, %bb.ia
  %.020.i9.i1768 = phi ptr [ %.020.i.i1751, %bb.ia ], [ %.020.i.us.i1771, %bb.hy ] ; 5 uses
  %.0.i6.i1769 = phi ptr [ %.0.i.i1752, %bb.ia ], [ %.0.i.us.i1772, %bb.hy ] ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.auw, i64 52 ; 2 uses
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !277
  %i.awr = add i32 %i.awq, -1
  store i32 %i.awr, ptr %i.awp, align 4, !tbaa !277
  %i.aws = icmp eq ptr %.0.i6.i1769, null
  %i.awt = load ptr, ptr %.020.i9.i1768, align 8, !tbaa !260 ; 5 uses
  br i1 %i.aws, label %bb.ic, label %bb.if

bb.ic:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1767
  %i.awu = icmp eq ptr %i.awt, null
  br i1 %i.awu, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.awv = getelementptr inbounds nuw i8, ptr %i.auw, i64 48 ; 2 uses
  %i.aww = load i32, ptr %i.awv, align 8, !tbaa !281
  %i.awx = add i32 %i.aww, -1
  store i32 %i.awx, ptr %i.awv, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i1768, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1756

bb.ie:                                            ; preds = %bb.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i1768, ptr noundef nonnull align 8 dereferenceable(16) %i.awt, i64 16, i1 false), !tbaa.struct !279
  %i.awy = getelementptr inbounds nuw i8, ptr %i.auw, i64 72 ; 2 uses
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !273
  store ptr %i.awz, ptr %i.awt, align 8, !tbaa !260
  store ptr %i.awt, ptr %i.awy, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1756

bb.if:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1767
  store ptr %i.awt, ptr %.0.i6.i1769, align 8, !tbaa !260
  %i.axa = getelementptr inbounds nuw i8, ptr %i.auw, i64 72 ; 2 uses
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !273
  store ptr %i.axb, ptr %.020.i9.i1768, align 8, !tbaa !260
  store ptr %.020.i9.i1768, ptr %i.axa, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1756

.loopexit.i.i1754:                                ; preds = %bb.ib, %bb.hz, %.preheader.i.split.i1750
  %i.axc = add i32 %i.awc, 1                      ; 2 uses
  store i32 %i.axc, ptr %i.avr, align 8, !tbaa !276
  %i.axd = load ptr, ptr %.020.i.i1751, align 8, !tbaa !260 ; 2 uses
  %.not.i.i1755 = icmp eq ptr %i.axd, null
  br i1 %.not.i.i1755, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1756, label %.preheader.i.split.i1750, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1756: ; preds = %.loopexit.i.i1754, %.loopexit.i.us.i1774, %bb.if, %bb.ie, %bb.id, %bb.hx
  %i.axe = getelementptr inbounds nuw i8, ptr %i.auv, i64 4
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !173
  %i.axg = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc1777 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1777:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1756
  br i1 %i.axg, label %_ZN6id_gen7recycleEj.exit.i1758, label %bb.ig

bb.ig:                                            ; preds = %.noexc1777
  %i.axh = getelementptr inbounds nuw i8, ptr %i.auw, i64 96 ; 3 uses
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !68 ; 4 uses
  %i.axj = icmp eq ptr %i.axi, null
  br i1 %i.axj, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.axk = getelementptr inbounds i8, ptr %i.axi, i64 -4
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !69 ; 5 uses
  %i.axm = getelementptr inbounds i8, ptr %i.axi, i64 -8 ; 2 uses
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !69
  %i.axo = icmp eq i32 %i.axl, %i.axn
  br i1 %i.axo, label %bb.ij, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1757

bb.ii:                                            ; preds = %bb.ig
  %i.axp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2456 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2456:                                       ; preds = %bb.ii
  store i32 2, ptr %i.axp, align 4, !tbaa !69
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 4
  store i32 0, ptr %i.axq, align 4, !tbaa !69
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axp, i64 8 ; 2 uses
  store ptr %i.axr, ptr %i.axh, align 8, !tbaa !68
  br label %.noexc1778

bb.ij:                                            ; preds = %bb.ih
  %i.axs = mul i32 %i.axl, 3
  %i.axt = add i32 %i.axs, 1
  %i.axu = lshr i32 %i.axt, 1                     ; 3 uses
  %i.axv = shl i32 %i.axu, 2
  %i.axw = add i32 %i.axv, 8                      ; 2 uses
  %.not.i2446 = icmp ugt i32 %i.axu, %i.axl
  br i1 %.not.i2446, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.axx = shl i32 %i.axl, 2
  %i.axy = add i32 %i.axx, 8
  %.not27.i2455 = icmp ugt i32 %i.axw, %i.axy
  br i1 %.not27.i2455, label %bb.iq, label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.axz = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.im unwind label %bb.ip

bb.im:                                            ; preds = %bb.il
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.axz, align 8, !tbaa !172
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 8 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axz, i64 24 ; 3 uses
  store ptr %i.ayb, ptr %i.aya, align 8, !tbaa !225
  %i.ayc = load ptr, ptr %27, align 8, !tbaa !168 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.aye = icmp eq ptr %i.ayc, %i.ayd
  br i1 %i.aye, label %bb.in, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2448

bb.in:                                            ; preds = %bb.im
  %i.ayf = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ayg = load i64, ptr %i.ayf, align 8, !tbaa !169 ; 3 uses
  %i.ayh = icmp ult i64 %i.ayg, 16
  call void @llvm.assume(i1 %i.ayh)
  %i.ayi = add nuw nsw i64 %i.ayg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ayb, ptr noundef nonnull align 8 dereferenceable(1) %i.ayd, i64 %i.ayi, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2448: ; preds = %bb.im
  store ptr %i.ayc, ptr %i.aya, align 8, !tbaa !168
  %i.ayj = load i64, ptr %i.ayd, align 8, !tbaa !170
  store i64 %i.ayj, ptr %i.ayb, align 8, !tbaa !170
  %.phi.trans.insert.i2449 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.pre.i2450 = load i64, ptr %.phi.trans.insert.i2449, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2451

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2451: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2448, %bb.in
  %i.ayk = phi i64 [ %i.ayg, %bb.in ], [ %.pre.i2450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2448 ]
  %i.ayl = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axz, i64 16
  store i64 %i.ayk, ptr %i.aym, align 8, !tbaa !169
  store ptr %i.ayd, ptr %27, align 8, !tbaa !168
  store i64 0, ptr %i.ayl, align 8, !tbaa !169
  store i8 0, ptr %i.ayd, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.axz, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ir unwind label %bb.io

bb.io:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2451
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  %i.ayo = load ptr, ptr %27, align 8, !tbaa !168 ; 2 uses
  %i.ayp = icmp eq ptr %i.ayo, %i.ayd
  br i1 %i.ayp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2452: ; preds = %bb.io
  %i.ayq = load i64, ptr %i.ayd, align 8, !tbaa !170
  %i.ayr = add i64 %i.ayq, 1
  call void @_ZdlPvm(ptr noundef %i.ayo, i64 noundef %i.ayr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2453: ; preds = %bb.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2452
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %.body1792

bb.ip:                                            ; preds = %bb.il
  %i.ays = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @__cxa_free_exception(ptr %i.axz) #29
  br label %.body1792

bb.iq:                                            ; preds = %bb.ik
  %i.ayt = zext i32 %i.axw to i64
  %i.ayu = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.axm, i64 noundef %i.ayt)
          to label %.noexc2459 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2459:                                       ; preds = %bb.iq
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8 ; 2 uses
  store ptr %i.ayv, ptr %i.axh, align 8, !tbaa !68
  store i32 %i.axu, ptr %i.ayu, align 4, !tbaa !69
  br label %.noexc1778

bb.ir:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2451
  unreachable

.noexc1778:                                       ; preds = %.noexc2459, %.noexc2456
  %.pre.i.i.i1759 = phi ptr [ %i.ayv, %.noexc2459 ], [ %i.axr, %.noexc2456 ] ; 2 uses
  %.phi.trans.insert.i.i.i1760 = getelementptr inbounds i8, ptr %.pre.i.i.i1759, i64 -4
  %.pre2.i.i.i1761 = load i32, ptr %.phi.trans.insert.i.i.i1760, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1757

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1757:    ; preds = %.noexc1778, %bb.ih
  %i.ayw = phi i32 [ %.pre2.i.i.i1761, %.noexc1778 ], [ %i.axl, %bb.ih ] ; 2 uses
  %i.ayx = phi ptr [ %.pre.i.i.i1759, %.noexc1778 ], [ %i.axi, %bb.ih ] ; 2 uses
  %i.ayy = getelementptr inbounds i8, ptr %i.ayx, i64 -4
  %i.ayz = zext i32 %i.ayw to i64
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.ayx, i64 %i.ayz
  store i32 %i.axf, ptr %i.aza, align 4, !tbaa !69
  %i.azb = add i32 %i.ayw, 1
  store i32 %i.azb, ptr %i.ayy, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1758

end_hunk_8
begin_hunk_9_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.bbj)
  %i.bbk = add nuw nsw i64 %i.bbi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bbd, ptr noundef nonnull align 8 dereferenceable(1) %i.bbf, i64 %i.bbk, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1836

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1833: ; preds = %bb.jd
  store ptr %i.bbe, ptr %i.bbc, align 8, !tbaa !168
  %i.bbl = load i64, ptr %i.bbf, align 8, !tbaa !170
  store i64 %i.bbl, ptr %i.bbd, align 8, !tbaa !170
  %.phi.trans.insert.i1834 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %.pre.i1835 = load i64, ptr %.phi.trans.insert.i1834, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1836

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1836: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1833, %bb.je
  %i.bbm = phi i64 [ %i.bbi, %bb.je ], [ %.pre.i1835, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1833 ]
  %i.bbn = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16
  store i64 %i.bbm, ptr %i.bbo, align 8, !tbaa !169
  store ptr %i.bbf, ptr %49, align 8, !tbaa !168
  store i64 0, ptr %i.bbn, align 8, !tbaa !169
  store i8 0, ptr %i.bbf, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.bbb, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ji unwind label %bb.jf

bb.jf:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1836
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  %i.bbq = load ptr, ptr %49, align 8, !tbaa !168 ; 2 uses
  %i.bbr = icmp eq ptr %i.bbq, %i.bbf
  br i1 %i.bbr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1838, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1837

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1837: ; preds = %bb.jf
  %i.bbs = load i64, ptr %i.bbf, align 8, !tbaa !170
  %i.bbt = add i64 %i.bbs, 1
  call void @_ZdlPvm(ptr noundef %i.bbq, i64 noundef %i.bbt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1838

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1838: ; preds = %bb.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1837
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  br label %.body1792

bb.jg:                                            ; preds = %bb.jc
  %i.bbu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  call void @__cxa_free_exception(ptr %i.bbb) #29
  br label %.body1792

bb.jh:                                            ; preds = %bb.jb
  %i.bbv = zext i32 %i.bay to i64
  %i.bbw = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bao, i64 noundef %i.bbv)
          to label %.noexc1844 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1844:                                       ; preds = %bb.jh
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 8 ; 2 uses
  store ptr %i.bbx, ptr %i.baj, align 8, !tbaa !68
  store i32 %i.baw, ptr %i.bbw, align 4, !tbaa !69
  br label %.noexc1303

bb.ji:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1836
  unreachable

.noexc1303:                                       ; preds = %.noexc1844, %.noexc1841
  %.pre.i.i.i1298 = phi ptr [ %i.bbx, %.noexc1844 ], [ %i.bat, %.noexc1841 ] ; 2 uses
  %.phi.trans.insert.i.i.i1299 = getelementptr inbounds i8, ptr %.pre.i.i.i1298, i64 -4
  %.pre2.i.i.i1300 = load i32, ptr %.phi.trans.insert.i.i.i1299, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1296

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1296:    ; preds = %.noexc1303, %bb.iy
  %i.bby = phi i32 [ %.pre2.i.i.i1300, %.noexc1303 ], [ %i.ban, %bb.iy ] ; 2 uses
  %i.bbz = phi ptr [ %.pre.i.i.i1298, %.noexc1303 ], [ %i.bak, %bb.iy ] ; 2 uses
  %i.bca = getelementptr inbounds i8, ptr %i.bbz, i64 -4
  %i.bcb = zext i32 %i.bby to i64
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.bbz, i64 %i.bcb
  store i32 %i.bah, ptr %i.bcc, align 4, !tbaa !69
  %i.bcd = add i32 %i.bby, 1
  store i32 %i.bcd, ptr %i.bca, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1297

_ZN6id_gen7recycleEj.exit.i1297:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1296, %.noexc1302
  %i.bce = mul i32 %i.baa, 24
  %i.bcf = add i32 %i.bce, 32
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.azo, i64 472
  %i.bch = load ptr, ptr %i.bcg, align 8, !tbaa !183
  %i.bci = zext nneg i32 %i.bah to i64
  %i.bcj = getelementptr inbounds nuw [8 x i8], ptr %i.bch, i64 %i.bci
  store ptr null, ptr %i.bcj, align 8, !tbaa !102
  %i.bck = getelementptr inbounds nuw i8, ptr %i.azo, i64 464
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !150
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !193
  %i.bco = zext i32 %i.bcf to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.bcn, i64 noundef %i.bco, ptr noundef nonnull %i.azm)
          to label %bb.kf unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jj:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1292, %.lr.ph.i1289
  %indvars.iv.i1291 = phi i64 [ 0, %.lr.ph.i1289 ], [ %indvars.iv.next.i1293, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1292 ] ; 3 uses
  %i.bcp = load ptr, ptr %i.bac, align 8, !tbaa !177
  %i.bcq = getelementptr inbounds nuw [16 x i8], ptr %i.bcp, i64 %indvars.iv.i1291
  %i.bcr = load ptr, ptr %i.bab, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bcr, ptr noundef nonnull align 8 dereferenceable(16) %i.bcq)
          to label %.noexc1305 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1305:                                       ; preds = %bb.jj
  %i.bcs = load ptr, ptr %i.bad, align 8, !tbaa !175
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr %i.bcs, i64 %indvars.iv.i1291
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !176 ; 7 uses
  %i.bcv = load ptr, ptr %i.bae, align 8, !tbaa !150 ; 9 uses
  %i.bcw = load i32, ptr %i.bcu, align 4, !tbaa !198
  %i.bcx = add i32 %i.bcw, -1                     ; 2 uses
  store i32 %i.bcx, ptr %i.bcu, align 4, !tbaa !198
  %i.bcy = icmp eq i32 %i.bcx, 0
  br i1 %i.bcy, label %bb.jk, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1292

bb.jk:                                            ; preds = %.noexc1305
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcu, i64 12
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !77
  %.fr13.i1796 = freeze i32 %i.bda                ; 4 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcv, i64 24
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bcv, i64 44
  %i.bdd = load i32, ptr %i.bdc, align 4, !tbaa !274
  %i.bde = add i32 %i.bdd, -1
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bcu, i64 16
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !185 ; 3 uses
  %i.bdh = and i32 %i.bdg, %i.bde
  %i.bdi = load ptr, ptr %i.bdb, align 8, !tbaa !261
  %i.bdj = zext i32 %i.bdh to i64
  %i.bdk = getelementptr inbounds nuw [16 x i8], ptr %i.bdi, i64 %i.bdj ; 3 uses
  %i.bdl = load ptr, ptr %i.bdk, align 8, !tbaa !260
  %i.bdm = ptrtoint ptr %i.bdl to i64
  %i.bdn = and i64 %i.bdm, 7
  %i.bdo = icmp eq i64 %i.bdn, 1
  br i1 %i.bdo, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1806, label %.preheader.i.i1797

.preheader.i.i1797:                               ; preds = %bb.jk
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bcu, i64 20
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bcv, i64 56 ; 3 uses
  %.promoted.i.i1798 = load i32, ptr %i.bdq, align 8 ; 2 uses
  %i.bdr = icmp eq i32 %.fr13.i1796, 0
  %wide.trip.count.i.i.i.i1799 = zext i32 %.fr13.i1796 to i64
  br i1 %i.bdr, label %.preheader.i.split.us.i1820, label %.preheader.i.split.i1800

.preheader.i.split.us.i1820:                      ; preds = %.preheader.i.i1797, %.loopexit.i.us.i1824
  %i.bds = phi i32 [ %i.bdz, %.loopexit.i.us.i1824 ], [ %.promoted.i.i1798, %.preheader.i.i1797 ]
  %.020.i.us.i1821 = phi ptr [ %i.bea, %.loopexit.i.us.i1824 ], [ %i.bdk, %.preheader.i.i1797 ] ; 4 uses
  %.0.i.us.i1822 = phi ptr [ %.020.i.us.i1821, %.loopexit.i.us.i1824 ], [ null, %.preheader.i.i1797 ]
  %i.bdt = getelementptr inbounds nuw i8, ptr %.020.i.us.i1821, i64 8
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !176 ; 2 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 12
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !77
  %.not.i.i.i.us.i1823 = icmp eq i32 %i.bdw, 0
  br i1 %.not.i.i.i.us.i1823, label %bb.jl, label %.loopexit.i.us.i1824

bb.jl:                                            ; preds = %.preheader.i.split.us.i1820
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdu, i64 16
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !185
  %.not14.i.i.i.us.i1826 = icmp eq i32 %i.bdy, %i.bdg
  br i1 %.not14.i.i.i.us.i1826, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1817, label %.loopexit.i.us.i1824

.loopexit.i.us.i1824:                             ; preds = %bb.jl, %.preheader.i.split.us.i1820
  %i.bdz = add i32 %i.bds, 1                      ; 2 uses
  store i32 %i.bdz, ptr %i.bdq, align 8, !tbaa !276
  %i.bea = load ptr, ptr %.020.i.us.i1821, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i1825 = icmp eq ptr %i.bea, null
  br i1 %.not.i.us.i1825, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1806, label %.preheader.i.split.us.i1820, !llvm.loop !31

.preheader.i.split.i1800:                         ; preds = %.preheader.i.i1797, %.loopexit.i.i1804
  %i.beb = phi i32 [ %i.bfb, %.loopexit.i.i1804 ], [ %.promoted.i.i1798, %.preheader.i.i1797 ]
  %.020.i.i1801 = phi ptr [ %i.bfc, %.loopexit.i.i1804 ], [ %i.bdk, %.preheader.i.i1797 ] ; 4 uses
  %.0.i.i1802 = phi ptr [ %.020.i.i1801, %.loopexit.i.i1804 ], [ null, %.preheader.i.i1797 ]
  %i.bec = getelementptr inbounds nuw i8, ptr %.020.i.i1801, i64 8
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !176 ; 3 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 12
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !77
  %.not.i.i.i.i1803 = icmp eq i32 %i.bef, %.fr13.i1796
  br i1 %.not.i.i.i.i1803, label %bb.jm, label %.loopexit.i.i1804

bb.jm:                                            ; preds = %.preheader.i.split.i1800
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bed, i64 16
  %i.beh = load i32, ptr %i.beg, align 4, !tbaa !185
  %.not14.i.i.i.i1812 = icmp eq i32 %i.beh, %i.bdg
  br i1 %.not14.i.i.i.i1812, label %.preheader.i.i.i.i1813, label %.loopexit.i.i1804

.preheader.i.i.i.i1813:                           ; preds = %bb.jm
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bed, i64 20
  br label %bb.jo

bb.jn:                                            ; preds = %bb.jo
  %indvars.iv.next.i.i.i.i1815 = add nuw nsw i64 %indvars.iv.i.i.i.i1814, 1 ; 2 uses
  %exitcond.not.i.i.i.i1816 = icmp eq i64 %indvars.iv.next.i.i.i.i1815, %wide.trip.count.i.i.i.i1799
  br i1 %exitcond.not.i.i.i.i1816, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1817, label %bb.jo, !llvm.loop !17

bb.jo:                                            ; preds = %bb.jn, %.preheader.i.i.i.i1813
  %indvars.iv.i.i.i.i1814 = phi i64 [ 0, %.preheader.i.i.i.i1813 ], [ %indvars.iv.next.i.i.i.i1815, %bb.jn ] ; 3 uses
  %i.bej = getelementptr inbounds nuw [8 x i8], ptr %i.bei, i64 %indvars.iv.i.i.i.i1814
  %i.bek = getelementptr inbounds nuw [8 x i8], ptr %i.bdp, i64 %indvars.iv.i.i.i.i1814
  %i.bel = load <2 x i32>, ptr %i.bej, align 4
  %i.bem = load <2 x i32>, ptr %i.bek, align 4
  %i.ben = icmp eq <2 x i32> %i.bel, %i.bem       ; 2 uses
  %107 = extractelement <2 x i1> %i.ben, i64 0
  %108 = extractelement <2 x i1> %i.ben, i64 1
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %bb.jn, label %.loopexit.i.i1804

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1817: ; preds = %bb.jl, %bb.jn
  %.020.i9.i1818 = phi ptr [ %.020.i.i1801, %bb.jn ], [ %.020.i.us.i1821, %bb.jl ] ; 5 uses
  %.0.i6.i1819 = phi ptr [ %.0.i.i1802, %bb.jn ], [ %.0.i.us.i1822, %bb.jl ] ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bcv, i64 52 ; 2 uses
  %i.bep = load i32, ptr %i.beo, align 4, !tbaa !277
  %i.beq = add i32 %i.bep, -1
  store i32 %i.beq, ptr %i.beo, align 4, !tbaa !277
  %i.ber = icmp eq ptr %.0.i6.i1819, null
  %i.bes = load ptr, ptr %.020.i9.i1818, align 8, !tbaa !260 ; 5 uses
  br i1 %i.ber, label %bb.jp, label %bb.js

bb.jp:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1817
  %i.bet = icmp eq ptr %i.bes, null
  br i1 %i.bet, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bcv, i64 48 ; 2 uses
  %i.bev = load i32, ptr %i.beu, align 8, !tbaa !281
  %i.bew = add i32 %i.bev, -1
  store i32 %i.bew, ptr %i.beu, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i1818, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1806

bb.jr:                                            ; preds = %bb.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i1818, ptr noundef nonnull align 8 dereferenceable(16) %i.bes, i64 16, i1 false), !tbaa.struct !279
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bcv, i64 72 ; 2 uses
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !273
  store ptr %i.bey, ptr %i.bes, align 8, !tbaa !260
  store ptr %i.bes, ptr %i.bex, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1806

bb.js:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1817
  store ptr %i.bes, ptr %.0.i6.i1819, align 8, !tbaa !260
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bcv, i64 72 ; 2 uses
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !273
  store ptr %i.bfa, ptr %.020.i9.i1818, align 8, !tbaa !260
  store ptr %.020.i9.i1818, ptr %i.bez, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1806

.loopexit.i.i1804:                                ; preds = %bb.jo, %bb.jm, %.preheader.i.split.i1800
  %i.bfb = add i32 %i.beb, 1                      ; 2 uses
  store i32 %i.bfb, ptr %i.bdq, align 8, !tbaa !276
  %i.bfc = load ptr, ptr %.020.i.i1801, align 8, !tbaa !260 ; 2 uses
  %.not.i.i1805 = icmp eq ptr %i.bfc, null
  br i1 %.not.i.i1805, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1806, label %.preheader.i.split.i1800, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1806: ; preds = %.loopexit.i.i1804, %.loopexit.i.us.i1824, %bb.js, %bb.jr, %bb.jq, %bb.jk
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bcu, i64 4
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !173
  %i.bff = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc1827 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1827:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1806
  br i1 %i.bff, label %_ZN6id_gen7recycleEj.exit.i1808, label %bb.jt

bb.jt:                                            ; preds = %.noexc1827
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bcv, i64 96 ; 3 uses
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !68 ; 4 uses
  %i.bfi = icmp eq ptr %i.bfh, null
  br i1 %i.bfi, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.bfj = getelementptr inbounds i8, ptr %i.bfh, i64 -4
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !69 ; 5 uses
  %i.bfl = getelementptr inbounds i8, ptr %i.bfh, i64 -8 ; 2 uses
  %i.bfm = load i32, ptr %i.bfl, align 4, !tbaa !69
  %i.bfn = icmp eq i32 %i.bfk, %i.bfm
  br i1 %i.bfn, label %bb.jw, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1807

bb.jv:                                            ; preds = %bb.jt
  %i.bfo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2471 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2471:                                       ; preds = %bb.jv
  store i32 2, ptr %i.bfo, align 4, !tbaa !69
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 4
  store i32 0, ptr %i.bfp, align 4, !tbaa !69
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8 ; 2 uses
  store ptr %i.bfq, ptr %i.bfg, align 8, !tbaa !68
  br label %.noexc1828

bb.jw:                                            ; preds = %bb.ju
  %i.bfr = mul i32 %i.bfk, 3
  %i.bfs = add i32 %i.bfr, 1
  %i.bft = lshr i32 %i.bfs, 1                     ; 3 uses
  %i.bfu = shl i32 %i.bft, 2
  %i.bfv = add i32 %i.bfu, 8                      ; 2 uses
  %.not.i2461 = icmp ugt i32 %i.bft, %i.bfk
  br i1 %.not.i2461, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.bfw = shl i32 %i.bfk, 2
  %i.bfx = add i32 %i.bfw, 8
  %.not27.i2470 = icmp ugt i32 %i.bfv, %i.bfx
  br i1 %.not27.i2470, label %bb.kd, label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %i.bfy = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.jz unwind label %bb.kc

bb.jz:                                            ; preds = %bb.jy
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bfy, align 8, !tbaa !172
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 8 ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfy, i64 24 ; 3 uses
  store ptr %i.bga, ptr %i.bfz, align 8, !tbaa !225
  %i.bgb = load ptr, ptr %25, align 8, !tbaa !168 ; 2 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.bgd = icmp eq ptr %i.bgb, %i.bgc
  br i1 %i.bgd, label %bb.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2463

bb.ka:                                            ; preds = %bb.jz
  %i.bge = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bgf = load i64, ptr %i.bge, align 8, !tbaa !169 ; 3 uses
  %i.bgg = icmp ult i64 %i.bgf, 16
  call void @llvm.assume(i1 %i.bgg)
  %i.bgh = add nuw nsw i64 %i.bgf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bga, ptr noundef nonnull align 8 dereferenceable(1) %i.bgc, i64 %i.bgh, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2463: ; preds = %bb.jz
  store ptr %i.bgb, ptr %i.bfz, align 8, !tbaa !168
  %i.bgi = load i64, ptr %i.bgc, align 8, !tbaa !170
  store i64 %i.bgi, ptr %i.bga, align 8, !tbaa !170
  %.phi.trans.insert.i2464 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.pre.i2465 = load i64, ptr %.phi.trans.insert.i2464, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2466

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2466: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2463, %bb.ka
  %i.bgj = phi i64 [ %i.bgf, %bb.ka ], [ %.pre.i2465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2463 ]
  %i.bgk = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bfy, i64 16
  store i64 %i.bgj, ptr %i.bgl, align 8, !tbaa !169
  store ptr %i.bgc, ptr %25, align 8, !tbaa !168
  store i64 0, ptr %i.bgk, align 8, !tbaa !169
  store i8 0, ptr %i.bgc, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.bfy, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ke unwind label %bb.kb

bb.kb:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2466
  %i.bgm = landingpad { ptr, i32 }
          cleanup
  %i.bgn = load ptr, ptr %25, align 8, !tbaa !168 ; 2 uses
  %i.bgo = icmp eq ptr %i.bgn, %i.bgc
  br i1 %i.bgo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2467: ; preds = %bb.kb
  %i.bgp = load i64, ptr %i.bgc, align 8, !tbaa !170
  %i.bgq = add i64 %i.bgp, 1
  call void @_ZdlPvm(ptr noundef %i.bgn, i64 noundef %i.bgq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2468: ; preds = %bb.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2467
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %.body1792

bb.kc:                                            ; preds = %bb.jy
  %i.bgr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @__cxa_free_exception(ptr %i.bfy) #29
  br label %.body1792

bb.kd:                                            ; preds = %bb.jx
  %i.bgs = zext i32 %i.bfv to i64
  %i.bgt = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bfl, i64 noundef %i.bgs)
          to label %.noexc2474 unwind label %.loopexit.split-lp2945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2474:                                       ; preds = %bb.kd
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 8 ; 2 uses
  store ptr %i.bgu, ptr %i.bfg, align 8, !tbaa !68
  store i32 %i.bft, ptr %i.bgt, align 4, !tbaa !69
  br label %.noexc1828

bb.ke:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2466
  unreachable

.noexc1828:                                       ; preds = %.noexc2474, %.noexc2471
  %.pre.i.i.i1809 = phi ptr [ %i.bgu, %.noexc2474 ], [ %i.bfq, %.noexc2471 ] ; 2 uses
  %.phi.trans.insert.i.i.i1810 = getelementptr inbounds i8, ptr %.pre.i.i.i1809, i64 -4
  %.pre2.i.i.i1811 = load i32, ptr %.phi.trans.insert.i.i.i1810, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1807

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1807:    ; preds = %.noexc1828, %bb.ju
  %i.bgv = phi i32 [ %.pre2.i.i.i1811, %.noexc1828 ], [ %i.bfk, %bb.ju ] ; 2 uses
  %i.bgw = phi ptr [ %.pre.i.i.i1809, %.noexc1828 ], [ %i.bfh, %bb.ju ] ; 2 uses
  %i.bgx = getelementptr inbounds i8, ptr %i.bgw, i64 -4
  %i.bgy = zext i32 %i.bgv to i64
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %i.bgw, i64 %i.bgy
  store i32 %i.bfe, ptr %i.bgz, align 4, !tbaa !69
  %i.bha = add i32 %i.bgv, 1
  store i32 %i.bha, ptr %i.bgx, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1808

end_hunk_9
begin_hunk_10_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1883: ; preds = %bb.md
  store ptr %i.brn, ptr %i.brl, align 8, !tbaa !168
  %i.bru = load i64, ptr %i.bro, align 8, !tbaa !170
  store i64 %i.bru, ptr %i.brm, align 8, !tbaa !170
  %.phi.trans.insert.i1884 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %.pre.i1885 = load i64, ptr %.phi.trans.insert.i1884, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1886

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1886: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1883, %bb.me
  %i.brv = phi i64 [ %i.brr, %bb.me ], [ %.pre.i1885, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1883 ]
  %i.brw = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brk, i64 16
  store i64 %i.brv, ptr %i.brx, align 8, !tbaa !169
  store ptr %i.bro, ptr %47, align 8, !tbaa !168
  store i64 0, ptr %i.brw, align 8, !tbaa !169
  store i8 0, ptr %i.bro, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.brk, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.mi unwind label %bb.mf

bb.mf:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1886
  %i.bry = landingpad { ptr, i32 }
          catch ptr null
  %i.brz = load ptr, ptr %47, align 8, !tbaa !168 ; 2 uses
  %i.bsa = icmp eq ptr %i.brz, %i.bro
  br i1 %i.bsa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1888, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1887

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1887: ; preds = %bb.mf
  %i.bsb = load i64, ptr %i.bro, align 8, !tbaa !170
  %i.bsc = add i64 %i.bsb, 1
  call void @_ZdlPvm(ptr noundef %i.brz, i64 noundef %i.bsc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1888

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1888: ; preds = %bb.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1887
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  br label %.body1892

bb.mg:                                            ; preds = %bb.mc
  %i.bsd = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  call void @__cxa_free_exception(ptr %i.brk) #29
  br label %.body1892

bb.mh:                                            ; preds = %bb.mb
  %i.bse = zext i32 %i.brh to i64
  %i.bsf = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bqx, i64 noundef %i.bse)
          to label %.noexc1894 unwind label %.loopexit.split-lp2891.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1894:                                       ; preds = %bb.mh
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 8 ; 2 uses
  store ptr %i.bsg, ptr %i.bqs, align 8, !tbaa !68
  store i32 %i.brf, ptr %i.bsf, align 4, !tbaa !69
  br label %.noexc1349

bb.mi:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1886
  unreachable

.noexc1349:                                       ; preds = %.noexc1894, %.noexc1891
  %.pre.i.i.i1344 = phi ptr [ %i.bsg, %.noexc1894 ], [ %i.brc, %.noexc1891 ] ; 2 uses
  %.phi.trans.insert.i.i.i1345 = getelementptr inbounds i8, ptr %.pre.i.i.i1344, i64 -4
  %.pre2.i.i.i1346 = load i32, ptr %.phi.trans.insert.i.i.i1345, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1342

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1342:    ; preds = %.noexc1349, %bb.ly
  %i.bsh = phi i32 [ %.pre2.i.i.i1346, %.noexc1349 ], [ %i.bqw, %bb.ly ] ; 2 uses
  %i.bsi = phi ptr [ %.pre.i.i.i1344, %.noexc1349 ], [ %i.bqt, %bb.ly ] ; 2 uses
  %i.bsj = getelementptr inbounds i8, ptr %i.bsi, i64 -4
  %i.bsk = zext i32 %i.bsh to i64
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %i.bsi, i64 %i.bsk
  store i32 %i.bqq, ptr %i.bsl, align 4, !tbaa !69
  %i.bsm = add i32 %i.bsh, 1
  store i32 %i.bsm, ptr %i.bsj, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1343

_ZN6id_gen7recycleEj.exit.i1343:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1342, %.noexc1348
  %i.bsn = mul i32 %i.bqj, 24
  %i.bso = add i32 %i.bsn, 32
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bpx, i64 472
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !183
  %i.bsr = zext nneg i32 %i.bqq to i64
  %i.bss = getelementptr inbounds nuw [8 x i8], ptr %i.bsq, i64 %i.bsr
  store ptr null, ptr %i.bss, align 8, !tbaa !102
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bpx, i64 464
  %i.bsu = load ptr, ptr %i.bst, align 8, !tbaa !150
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 8
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !193
  %i.bsx = zext i32 %i.bso to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.bsw, i64 noundef %i.bsx, ptr noundef nonnull %i.bpv)
          to label %_ZN6id_gen7recycleEj.exit.i1343._crit_edge unwind label %.loopexit.split-lp2891.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6id_gen7recycleEj.exit.i1343._crit_edge:       ; preds = %_ZN6id_gen7recycleEj.exit.i1343
  %.pre6696.pre = load ptr, ptr %.0222.ptr5442, align 16, !tbaa !109
  br label %bb.ng

bb.mj:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1338, %.lr.ph.i1335
  %indvars.iv.i1337 = phi i64 [ 0, %.lr.ph.i1335 ], [ %indvars.iv.next.i1339, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1338 ] ; 3 uses
  %i.bsy = load ptr, ptr %i.bql, align 8, !tbaa !177
  %i.bsz = getelementptr inbounds nuw [16 x i8], ptr %i.bsy, i64 %indvars.iv.i1337
  %i.bta = load ptr, ptr %i.bqk, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bta, ptr noundef nonnull align 8 dereferenceable(16) %i.bsz)
          to label %.noexc1351 unwind label %.loopexit.split-lp2891.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1351:                                       ; preds = %bb.mj
  %i.btb = load ptr, ptr %i.bqm, align 8, !tbaa !175
  %i.btc = getelementptr inbounds nuw [8 x i8], ptr %i.btb, i64 %indvars.iv.i1337
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !176 ; 7 uses
  %i.bte = load ptr, ptr %i.bqn, align 8, !tbaa !150 ; 9 uses
  %i.btf = load i32, ptr %i.btd, align 4, !tbaa !198
  %i.btg = add i32 %i.btf, -1                     ; 2 uses
  store i32 %i.btg, ptr %i.btd, align 4, !tbaa !198
  %i.bth = icmp eq i32 %i.btg, 0
  br i1 %i.bth, label %bb.mk, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1338

bb.mk:                                            ; preds = %.noexc1351
  %i.bti = getelementptr inbounds nuw i8, ptr %i.btd, i64 12
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !77
  %.fr13.i1846 = freeze i32 %i.btj                ; 4 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bte, i64 24
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bte, i64 44
  %i.btm = load i32, ptr %i.btl, align 4, !tbaa !274
  %i.btn = add i32 %i.btm, -1
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btd, i64 16
  %i.btp = load i32, ptr %i.bto, align 4, !tbaa !185 ; 3 uses
  %i.btq = and i32 %i.btp, %i.btn
  %i.btr = load ptr, ptr %i.btk, align 8, !tbaa !261
  %i.bts = zext i32 %i.btq to i64
  %i.btt = getelementptr inbounds nuw [16 x i8], ptr %i.btr, i64 %i.bts ; 3 uses
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !260
  %i.btv = ptrtoint ptr %i.btu to i64
  %i.btw = and i64 %i.btv, 7
  %i.btx = icmp eq i64 %i.btw, 1
  br i1 %i.btx, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1856, label %.preheader.i.i1847

.preheader.i.i1847:                               ; preds = %bb.mk
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btd, i64 20
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bte, i64 56 ; 3 uses
  %.promoted.i.i1848 = load i32, ptr %i.btz, align 8 ; 2 uses
  %i.bua = icmp eq i32 %.fr13.i1846, 0
  %wide.trip.count.i.i.i.i1849 = zext i32 %.fr13.i1846 to i64
  br i1 %i.bua, label %.preheader.i.split.us.i1870, label %.preheader.i.split.i1850

.preheader.i.split.us.i1870:                      ; preds = %.preheader.i.i1847, %.loopexit.i.us.i1874
  %i.bub = phi i32 [ %i.bui, %.loopexit.i.us.i1874 ], [ %.promoted.i.i1848, %.preheader.i.i1847 ]
  %.020.i.us.i1871 = phi ptr [ %i.buj, %.loopexit.i.us.i1874 ], [ %i.btt, %.preheader.i.i1847 ] ; 4 uses
  %.0.i.us.i1872 = phi ptr [ %.020.i.us.i1871, %.loopexit.i.us.i1874 ], [ null, %.preheader.i.i1847 ]
  %i.buc = getelementptr inbounds nuw i8, ptr %.020.i.us.i1871, i64 8
  %i.bud = load ptr, ptr %i.buc, align 8, !tbaa !176 ; 2 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 12
  %i.buf = load i32, ptr %i.bue, align 4, !tbaa !77
  %.not.i.i.i.us.i1873 = icmp eq i32 %i.buf, 0
  br i1 %.not.i.i.i.us.i1873, label %bb.ml, label %.loopexit.i.us.i1874

bb.ml:                                            ; preds = %.preheader.i.split.us.i1870
  %i.bug = getelementptr inbounds nuw i8, ptr %i.bud, i64 16
  %i.buh = load i32, ptr %i.bug, align 4, !tbaa !185
  %.not14.i.i.i.us.i1876 = icmp eq i32 %i.buh, %i.btp
  br i1 %.not14.i.i.i.us.i1876, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1867, label %.loopexit.i.us.i1874

.loopexit.i.us.i1874:                             ; preds = %bb.ml, %.preheader.i.split.us.i1870
  %i.bui = add i32 %i.bub, 1                      ; 2 uses
  store i32 %i.bui, ptr %i.btz, align 8, !tbaa !276
  %i.buj = load ptr, ptr %.020.i.us.i1871, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i1875 = icmp eq ptr %i.buj, null
  br i1 %.not.i.us.i1875, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1856, label %.preheader.i.split.us.i1870, !llvm.loop !31

.preheader.i.split.i1850:                         ; preds = %.preheader.i.i1847, %.loopexit.i.i1854
  %i.buk = phi i32 [ %i.bvk, %.loopexit.i.i1854 ], [ %.promoted.i.i1848, %.preheader.i.i1847 ]
  %.020.i.i1851 = phi ptr [ %i.bvl, %.loopexit.i.i1854 ], [ %i.btt, %.preheader.i.i1847 ] ; 4 uses
  %.0.i.i1852 = phi ptr [ %.020.i.i1851, %.loopexit.i.i1854 ], [ null, %.preheader.i.i1847 ]
  %i.bul = getelementptr inbounds nuw i8, ptr %.020.i.i1851, i64 8
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !176 ; 3 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 12
  %i.buo = load i32, ptr %i.bun, align 4, !tbaa !77
  %.not.i.i.i.i1853 = icmp eq i32 %i.buo, %.fr13.i1846
  br i1 %.not.i.i.i.i1853, label %bb.mm, label %.loopexit.i.i1854

bb.mm:                                            ; preds = %.preheader.i.split.i1850
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bum, i64 16
  %i.buq = load i32, ptr %i.bup, align 4, !tbaa !185
  %.not14.i.i.i.i1862 = icmp eq i32 %i.buq, %i.btp
  br i1 %.not14.i.i.i.i1862, label %.preheader.i.i.i.i1863, label %.loopexit.i.i1854

.preheader.i.i.i.i1863:                           ; preds = %bb.mm
  %i.bur = getelementptr inbounds nuw i8, ptr %i.bum, i64 20
  br label %bb.mo

bb.mn:                                            ; preds = %bb.mo
  %indvars.iv.next.i.i.i.i1865 = add nuw nsw i64 %indvars.iv.i.i.i.i1864, 1 ; 2 uses
  %exitcond.not.i.i.i.i1866 = icmp eq i64 %indvars.iv.next.i.i.i.i1865, %wide.trip.count.i.i.i.i1849
  br i1 %exitcond.not.i.i.i.i1866, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1867, label %bb.mo, !llvm.loop !17

bb.mo:                                            ; preds = %bb.mn, %.preheader.i.i.i.i1863
  %indvars.iv.i.i.i.i1864 = phi i64 [ 0, %.preheader.i.i.i.i1863 ], [ %indvars.iv.next.i.i.i.i1865, %bb.mn ] ; 3 uses
  %i.bus = getelementptr inbounds nuw [8 x i8], ptr %i.bur, i64 %indvars.iv.i.i.i.i1864
  %i.but = getelementptr inbounds nuw [8 x i8], ptr %i.bty, i64 %indvars.iv.i.i.i.i1864
  %i.buu = load <2 x i32>, ptr %i.bus, align 4
  %i.buv = load <2 x i32>, ptr %i.but, align 4
  %i.buw = icmp eq <2 x i32> %i.buu, %i.buv       ; 2 uses
  %110 = extractelement <2 x i1> %i.buw, i64 0
  %111 = extractelement <2 x i1> %i.buw, i64 1
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %bb.mn, label %.loopexit.i.i1854

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1867: ; preds = %bb.ml, %bb.mn
  %.020.i9.i1868 = phi ptr [ %.020.i.i1851, %bb.mn ], [ %.020.i.us.i1871, %bb.ml ] ; 5 uses
  %.0.i6.i1869 = phi ptr [ %.0.i.i1852, %bb.mn ], [ %.0.i.us.i1872, %bb.ml ] ; 2 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %i.bte, i64 52 ; 2 uses
  %i.buy = load i32, ptr %i.bux, align 4, !tbaa !277
  %i.buz = add i32 %i.buy, -1
  store i32 %i.buz, ptr %i.bux, align 4, !tbaa !277
  %i.bva = icmp eq ptr %.0.i6.i1869, null
  %i.bvb = load ptr, ptr %.020.i9.i1868, align 8, !tbaa !260 ; 5 uses
  br i1 %i.bva, label %bb.mp, label %bb.ms

bb.mp:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1867
  %i.bvc = icmp eq ptr %i.bvb, null
  br i1 %i.bvc, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bte, i64 48 ; 2 uses
  %i.bve = load i32, ptr %i.bvd, align 8, !tbaa !281
  %i.bvf = add i32 %i.bve, -1
  store i32 %i.bvf, ptr %i.bvd, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i1868, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1856

bb.mr:                                            ; preds = %bb.mp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i1868, ptr noundef nonnull align 8 dereferenceable(16) %i.bvb, i64 16, i1 false), !tbaa.struct !279
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bte, i64 72 ; 2 uses
  %i.bvh = load ptr, ptr %i.bvg, align 8, !tbaa !273
  store ptr %i.bvh, ptr %i.bvb, align 8, !tbaa !260
  store ptr %i.bvb, ptr %i.bvg, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1856

bb.ms:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1867
  store ptr %i.bvb, ptr %.0.i6.i1869, align 8, !tbaa !260
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bte, i64 72 ; 2 uses
  %i.bvj = load ptr, ptr %i.bvi, align 8, !tbaa !273
  store ptr %i.bvj, ptr %.020.i9.i1868, align 8, !tbaa !260
  store ptr %.020.i9.i1868, ptr %i.bvi, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1856

.loopexit.i.i1854:                                ; preds = %bb.mo, %bb.mm, %.preheader.i.split.i1850
  %i.bvk = add i32 %i.buk, 1                      ; 2 uses
  store i32 %i.bvk, ptr %i.btz, align 8, !tbaa !276
  %i.bvl = load ptr, ptr %.020.i.i1851, align 8, !tbaa !260 ; 2 uses
  %.not.i.i1855 = icmp eq ptr %i.bvl, null
  br i1 %.not.i.i1855, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1856, label %.preheader.i.split.i1850, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1856: ; preds = %.loopexit.i.i1854, %.loopexit.i.us.i1874, %bb.ms, %bb.mr, %bb.mq, %bb.mk
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.btd, i64 4
  %i.bvn = load i32, ptr %i.bvm, align 4, !tbaa !173
  %i.bvo = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc1877 unwind label %.loopexit.split-lp2891.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1877:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1856
  br i1 %i.bvo, label %_ZN6id_gen7recycleEj.exit.i1858, label %bb.mt

bb.mt:                                            ; preds = %.noexc1877
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bte, i64 96 ; 3 uses
  %i.bvq = load ptr, ptr %i.bvp, align 8, !tbaa !68 ; 4 uses
  %i.bvr = icmp eq ptr %i.bvq, null
  br i1 %i.bvr, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bvs = getelementptr inbounds i8, ptr %i.bvq, i64 -4
  %i.bvt = load i32, ptr %i.bvs, align 4, !tbaa !69 ; 5 uses
  %i.bvu = getelementptr inbounds i8, ptr %i.bvq, i64 -8 ; 2 uses
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !69
  %i.bvw = icmp eq i32 %i.bvt, %i.bvv
  br i1 %i.bvw, label %bb.mw, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1857

bb.mv:                                            ; preds = %bb.mt
  %i.bvx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2486 unwind label %.loopexit.split-lp2891.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2486:                                       ; preds = %bb.mv
  store i32 2, ptr %i.bvx, align 4, !tbaa !69
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvx, i64 4
  store i32 0, ptr %i.bvy, align 4, !tbaa !69
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvx, i64 8 ; 2 uses
  store ptr %i.bvz, ptr %i.bvp, align 8, !tbaa !68
  br label %.noexc1878

bb.mw:                                            ; preds = %bb.mu
  %i.bwa = mul i32 %i.bvt, 3
  %i.bwb = add i32 %i.bwa, 1
  %i.bwc = lshr i32 %i.bwb, 1                     ; 3 uses
  %i.bwd = shl i32 %i.bwc, 2
  %i.bwe = add i32 %i.bwd, 8                      ; 2 uses
  %.not.i2476 = icmp ugt i32 %i.bwc, %i.bvt
  br i1 %.not.i2476, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.bwf = shl i32 %i.bvt, 2
  %i.bwg = add i32 %i.bwf, 8
  %.not27.i2485 = icmp ugt i32 %i.bwe, %i.bwg
  br i1 %.not27.i2485, label %bb.nd, label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mw
  %i.bwh = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.mz unwind label %bb.nc

bb.mz:                                            ; preds = %bb.my
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bwh, align 8, !tbaa !172
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwh, i64 8 ; 2 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwh, i64 24 ; 3 uses
  store ptr %i.bwj, ptr %i.bwi, align 8, !tbaa !225
  %i.bwk = load ptr, ptr %23, align 8, !tbaa !168 ; 2 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.bwm = icmp eq ptr %i.bwk, %i.bwl
  br i1 %i.bwm, label %bb.na, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2478

bb.na:                                            ; preds = %bb.mz
  %i.bwn = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bwo = load i64, ptr %i.bwn, align 8, !tbaa !169 ; 3 uses
  %i.bwp = icmp ult i64 %i.bwo, 16
  call void @llvm.assume(i1 %i.bwp)
  %i.bwq = add nuw nsw i64 %i.bwo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bwj, ptr noundef nonnull align 8 dereferenceable(1) %i.bwl, i64 %i.bwq, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2478: ; preds = %bb.mz
  store ptr %i.bwk, ptr %i.bwi, align 8, !tbaa !168
  %i.bwr = load i64, ptr %i.bwl, align 8, !tbaa !170
  store i64 %i.bwr, ptr %i.bwj, align 8, !tbaa !170
  %.phi.trans.insert.i2479 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.pre.i2480 = load i64, ptr %.phi.trans.insert.i2479, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2481

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2481: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2478, %bb.na
  %i.bws = phi i64 [ %i.bwo, %bb.na ], [ %.pre.i2480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2478 ]
  %i.bwt = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwh, i64 16
  store i64 %i.bws, ptr %i.bwu, align 8, !tbaa !169
  store ptr %i.bwl, ptr %23, align 8, !tbaa !168
  store i64 0, ptr %i.bwt, align 8, !tbaa !169
  store i8 0, ptr %i.bwl, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.bwh, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ne unwind label %bb.nb

bb.nb:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2481
  %i.bwv = landingpad { ptr, i32 }
          catch ptr null
  %i.bww = load ptr, ptr %23, align 8, !tbaa !168 ; 2 uses
  %i.bwx = icmp eq ptr %i.bww, %i.bwl
  br i1 %i.bwx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2482

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2482: ; preds = %bb.nb
  %i.bwy = load i64, ptr %i.bwl, align 8, !tbaa !170
  %i.bwz = add i64 %i.bwy, 1
  call void @_ZdlPvm(ptr noundef %i.bww, i64 noundef %i.bwz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2483: ; preds = %bb.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2482
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %.body1892

bb.nc:                                            ; preds = %bb.my
  %i.bxa = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @__cxa_free_exception(ptr %i.bwh) #29
  br label %.body1892

bb.nd:                                            ; preds = %bb.mx
  %i.bxb = zext i32 %i.bwe to i64
  %i.bxc = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bvu, i64 noundef %i.bxb)
          to label %.noexc2489 unwind label %.loopexit.split-lp2891.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2489:                                       ; preds = %bb.nd
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxc, i64 8 ; 2 uses
  store ptr %i.bxd, ptr %i.bvp, align 8, !tbaa !68
  store i32 %i.bwc, ptr %i.bxc, align 4, !tbaa !69
  br label %.noexc1878

bb.ne:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2481
  unreachable

.noexc1878:                                       ; preds = %.noexc2489, %.noexc2486
  %.pre.i.i.i1859 = phi ptr [ %i.bxd, %.noexc2489 ], [ %i.bvz, %.noexc2486 ] ; 2 uses
  %.phi.trans.insert.i.i.i1860 = getelementptr inbounds i8, ptr %.pre.i.i.i1859, i64 -4
  %.pre2.i.i.i1861 = load i32, ptr %.phi.trans.insert.i.i.i1860, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1857

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1857:    ; preds = %.noexc1878, %bb.mu
  %i.bxe = phi i32 [ %.pre2.i.i.i1861, %.noexc1878 ], [ %i.bvt, %bb.mu ] ; 2 uses
  %i.bxf = phi ptr [ %.pre.i.i.i1859, %.noexc1878 ], [ %i.bvq, %bb.mu ] ; 2 uses
  %i.bxg = getelementptr inbounds i8, ptr %i.bxf, i64 -4
  %i.bxh = zext i32 %i.bxe to i64
  %i.bxi = getelementptr inbounds nuw [4 x i8], ptr %i.bxf, i64 %i.bxh
  store i32 %i.bvn, ptr %i.bxi, align 4, !tbaa !69
  %i.bxj = add i32 %i.bxe, 1
  store i32 %i.bxj, ptr %i.bxg, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1858

end_hunk_10
begin_hunk_11_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.cdl)
  %i.cdm = add nuw nsw i64 %i.cdk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cdf, ptr noundef nonnull align 8 dereferenceable(1) %i.cdh, i64 %i.cdm, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1933: ; preds = %bb.om
  store ptr %i.cdg, ptr %i.cde, align 8, !tbaa !168
  %i.cdn = load i64, ptr %i.cdh, align 8, !tbaa !170
  store i64 %i.cdn, ptr %i.cdf, align 8, !tbaa !170
  %.phi.trans.insert.i1934 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %.pre.i1935 = load i64, ptr %.phi.trans.insert.i1934, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1936

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1936: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1933, %bb.on
  %i.cdo = phi i64 [ %i.cdk, %bb.on ], [ %.pre.i1935, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1933 ]
  %i.cdp = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdd, i64 16
  store i64 %i.cdo, ptr %i.cdq, align 8, !tbaa !169
  store ptr %i.cdh, ptr %45, align 8, !tbaa !168
  store i64 0, ptr %i.cdp, align 8, !tbaa !169
  store i8 0, ptr %i.cdh, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.cdd, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.or unwind label %bb.oo

bb.oo:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1936
  %i.cdr = landingpad { ptr, i32 }
          catch ptr null
  %i.cds = load ptr, ptr %45, align 8, !tbaa !168 ; 2 uses
  %i.cdt = icmp eq ptr %i.cds, %i.cdh
  br i1 %i.cdt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1938, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1937

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1937: ; preds = %bb.oo
  %i.cdu = load i64, ptr %i.cdh, align 8, !tbaa !170
  %i.cdv = add i64 %i.cdu, 1
  call void @_ZdlPvm(ptr noundef %i.cds, i64 noundef %i.cdv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1938

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i1938: ; preds = %bb.oo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i1937
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  br label %.body1942

bb.op:                                            ; preds = %bb.ol
  %i.cdw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  call void @__cxa_free_exception(ptr %i.cdd) #29
  br label %.body1942

bb.oq:                                            ; preds = %bb.ok
  %i.cdx = zext i32 %i.cda to i64
  %i.cdy = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ccq, i64 noundef %i.cdx)
          to label %.noexc1944 unwind label %.loopexit.split-lp2884.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1944:                                       ; preds = %bb.oq
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdy, i64 8 ; 2 uses
  store ptr %i.cdz, ptr %i.ccl, align 8, !tbaa !68
  store i32 %i.ccy, ptr %i.cdy, align 4, !tbaa !69
  br label %.noexc1404

bb.or:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i1936
  unreachable

.noexc1404:                                       ; preds = %.noexc1944, %.noexc1941
  %.pre.i.i.i1399 = phi ptr [ %i.cdz, %.noexc1944 ], [ %i.ccv, %.noexc1941 ] ; 2 uses
  %.phi.trans.insert.i.i.i1400 = getelementptr inbounds i8, ptr %.pre.i.i.i1399, i64 -4
  %.pre2.i.i.i1401 = load i32, ptr %.phi.trans.insert.i.i.i1400, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1397

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1397:    ; preds = %.noexc1404, %bb.oh
  %i.cea = phi i32 [ %.pre2.i.i.i1401, %.noexc1404 ], [ %i.ccp, %bb.oh ] ; 2 uses
  %i.ceb = phi ptr [ %.pre.i.i.i1399, %.noexc1404 ], [ %i.ccm, %bb.oh ] ; 2 uses
  %i.cec = getelementptr inbounds i8, ptr %i.ceb, i64 -4
  %i.ced = zext i32 %i.cea to i64
  %i.cee = getelementptr inbounds nuw [4 x i8], ptr %i.ceb, i64 %i.ced
  store i32 %i.ccj, ptr %i.cee, align 4, !tbaa !69
  %i.cef = add i32 %i.cea, 1
  store i32 %i.cef, ptr %i.cec, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1398

_ZN6id_gen7recycleEj.exit.i1398:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1397, %.noexc1403
  %i.ceg = mul i32 %i.ccc, 24
  %i.ceh = add i32 %i.ceg, 32
  %i.cei = getelementptr inbounds nuw i8, ptr %i.cbq, i64 472
  %i.cej = load ptr, ptr %i.cei, align 8, !tbaa !183
  %i.cek = zext nneg i32 %i.ccj to i64
  %i.cel = getelementptr inbounds nuw [8 x i8], ptr %i.cej, i64 %i.cek
  store ptr null, ptr %i.cel, align 8, !tbaa !102
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cbq, i64 464
  %i.cen = load ptr, ptr %i.cem, align 8, !tbaa !150
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 8
  %i.cep = load ptr, ptr %i.ceo, align 8, !tbaa !193
  %i.ceq = zext i32 %i.ceh to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.cep, i64 noundef %i.ceq, ptr noundef nonnull %i.cbn)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit825 unwind label %.loopexit.split-lp2884.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.os:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1393, %.lr.ph.i1390
  %indvars.iv.i1392 = phi i64 [ 0, %.lr.ph.i1390 ], [ %indvars.iv.next.i1394, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1393 ] ; 3 uses
  %i.cer = load ptr, ptr %i.cce, align 8, !tbaa !177
  %i.ces = getelementptr inbounds nuw [16 x i8], ptr %i.cer, i64 %indvars.iv.i1392
  %i.cet = load ptr, ptr %i.ccd, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.cet, ptr noundef nonnull align 8 dereferenceable(16) %i.ces)
          to label %.noexc1406 unwind label %.loopexit.split-lp2884.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1406:                                       ; preds = %bb.os
  %i.ceu = load ptr, ptr %i.ccf, align 8, !tbaa !175
  %i.cev = getelementptr inbounds nuw [8 x i8], ptr %i.ceu, i64 %indvars.iv.i1392
  %i.cew = load ptr, ptr %i.cev, align 8, !tbaa !176 ; 7 uses
  %i.cex = load ptr, ptr %i.ccg, align 8, !tbaa !150 ; 9 uses
  %i.cey = load i32, ptr %i.cew, align 4, !tbaa !198
  %i.cez = add i32 %i.cey, -1                     ; 2 uses
  store i32 %i.cez, ptr %i.cew, align 4, !tbaa !198
  %i.cfa = icmp eq i32 %i.cez, 0
  br i1 %i.cfa, label %bb.ot, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1393

bb.ot:                                            ; preds = %.noexc1406
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cew, i64 12
  %i.cfc = load i32, ptr %i.cfb, align 4, !tbaa !77
  %.fr13.i1896 = freeze i32 %i.cfc                ; 4 uses
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.cex, i64 24
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cex, i64 44
  %i.cff = load i32, ptr %i.cfe, align 4, !tbaa !274
  %i.cfg = add i32 %i.cff, -1
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cew, i64 16
  %i.cfi = load i32, ptr %i.cfh, align 4, !tbaa !185 ; 3 uses
  %i.cfj = and i32 %i.cfi, %i.cfg
  %i.cfk = load ptr, ptr %i.cfd, align 8, !tbaa !261
  %i.cfl = zext i32 %i.cfj to i64
  %i.cfm = getelementptr inbounds nuw [16 x i8], ptr %i.cfk, i64 %i.cfl ; 3 uses
  %i.cfn = load ptr, ptr %i.cfm, align 8, !tbaa !260
  %i.cfo = ptrtoint ptr %i.cfn to i64
  %i.cfp = and i64 %i.cfo, 7
  %i.cfq = icmp eq i64 %i.cfp, 1
  br i1 %i.cfq, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1906, label %.preheader.i.i1897

.preheader.i.i1897:                               ; preds = %bb.ot
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cew, i64 20
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cex, i64 56 ; 3 uses
  %.promoted.i.i1898 = load i32, ptr %i.cfs, align 8 ; 2 uses
  %i.cft = icmp eq i32 %.fr13.i1896, 0
  %wide.trip.count.i.i.i.i1899 = zext i32 %.fr13.i1896 to i64
  br i1 %i.cft, label %.preheader.i.split.us.i1920, label %.preheader.i.split.i1900

.preheader.i.split.us.i1920:                      ; preds = %.preheader.i.i1897, %.loopexit.i.us.i1924
  %i.cfu = phi i32 [ %i.cgb, %.loopexit.i.us.i1924 ], [ %.promoted.i.i1898, %.preheader.i.i1897 ]
  %.020.i.us.i1921 = phi ptr [ %i.cgc, %.loopexit.i.us.i1924 ], [ %i.cfm, %.preheader.i.i1897 ] ; 4 uses
  %.0.i.us.i1922 = phi ptr [ %.020.i.us.i1921, %.loopexit.i.us.i1924 ], [ null, %.preheader.i.i1897 ]
  %i.cfv = getelementptr inbounds nuw i8, ptr %.020.i.us.i1921, i64 8
  %i.cfw = load ptr, ptr %i.cfv, align 8, !tbaa !176 ; 2 uses
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cfw, i64 12
  %i.cfy = load i32, ptr %i.cfx, align 4, !tbaa !77
  %.not.i.i.i.us.i1923 = icmp eq i32 %i.cfy, 0
  br i1 %.not.i.i.i.us.i1923, label %bb.ou, label %.loopexit.i.us.i1924

bb.ou:                                            ; preds = %.preheader.i.split.us.i1920
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfw, i64 16
  %i.cga = load i32, ptr %i.cfz, align 4, !tbaa !185
  %.not14.i.i.i.us.i1926 = icmp eq i32 %i.cga, %i.cfi
  br i1 %.not14.i.i.i.us.i1926, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1917, label %.loopexit.i.us.i1924

.loopexit.i.us.i1924:                             ; preds = %bb.ou, %.preheader.i.split.us.i1920
  %i.cgb = add i32 %i.cfu, 1                      ; 2 uses
  store i32 %i.cgb, ptr %i.cfs, align 8, !tbaa !276
  %i.cgc = load ptr, ptr %.020.i.us.i1921, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i1925 = icmp eq ptr %i.cgc, null
  br i1 %.not.i.us.i1925, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1906, label %.preheader.i.split.us.i1920, !llvm.loop !31

.preheader.i.split.i1900:                         ; preds = %.preheader.i.i1897, %.loopexit.i.i1904
  %i.cgd = phi i32 [ %i.chd, %.loopexit.i.i1904 ], [ %.promoted.i.i1898, %.preheader.i.i1897 ]
  %.020.i.i1901 = phi ptr [ %i.che, %.loopexit.i.i1904 ], [ %i.cfm, %.preheader.i.i1897 ] ; 4 uses
  %.0.i.i1902 = phi ptr [ %.020.i.i1901, %.loopexit.i.i1904 ], [ null, %.preheader.i.i1897 ]
  %i.cge = getelementptr inbounds nuw i8, ptr %.020.i.i1901, i64 8
  %i.cgf = load ptr, ptr %i.cge, align 8, !tbaa !176 ; 3 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 12
  %i.cgh = load i32, ptr %i.cgg, align 4, !tbaa !77
  %.not.i.i.i.i1903 = icmp eq i32 %i.cgh, %.fr13.i1896
  br i1 %.not.i.i.i.i1903, label %bb.ov, label %.loopexit.i.i1904

bb.ov:                                            ; preds = %.preheader.i.split.i1900
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cgf, i64 16
  %i.cgj = load i32, ptr %i.cgi, align 4, !tbaa !185
  %.not14.i.i.i.i1912 = icmp eq i32 %i.cgj, %i.cfi
  br i1 %.not14.i.i.i.i1912, label %.preheader.i.i.i.i1913, label %.loopexit.i.i1904

.preheader.i.i.i.i1913:                           ; preds = %bb.ov
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cgf, i64 20
  br label %bb.ox

bb.ow:                                            ; preds = %bb.ox
  %indvars.iv.next.i.i.i.i1915 = add nuw nsw i64 %indvars.iv.i.i.i.i1914, 1 ; 2 uses
  %exitcond.not.i.i.i.i1916 = icmp eq i64 %indvars.iv.next.i.i.i.i1915, %wide.trip.count.i.i.i.i1899
  br i1 %exitcond.not.i.i.i.i1916, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1917, label %bb.ox, !llvm.loop !17

bb.ox:                                            ; preds = %bb.ow, %.preheader.i.i.i.i1913
  %indvars.iv.i.i.i.i1914 = phi i64 [ 0, %.preheader.i.i.i.i1913 ], [ %indvars.iv.next.i.i.i.i1915, %bb.ow ] ; 3 uses
  %i.cgl = getelementptr inbounds nuw [8 x i8], ptr %i.cgk, i64 %indvars.iv.i.i.i.i1914
  %i.cgm = getelementptr inbounds nuw [8 x i8], ptr %i.cfr, i64 %indvars.iv.i.i.i.i1914
  %i.cgn = load <2 x i32>, ptr %i.cgl, align 4
  %i.cgo = load <2 x i32>, ptr %i.cgm, align 4
  %i.cgp = icmp eq <2 x i32> %i.cgn, %i.cgo       ; 2 uses
  %113 = extractelement <2 x i1> %i.cgp, i64 0
  %114 = extractelement <2 x i1> %i.cgp, i64 1
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %bb.ow, label %.loopexit.i.i1904

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1917: ; preds = %bb.ou, %bb.ow
  %.020.i9.i1918 = phi ptr [ %.020.i.i1901, %bb.ow ], [ %.020.i.us.i1921, %bb.ou ] ; 5 uses
  %.0.i6.i1919 = phi ptr [ %.0.i.i1902, %bb.ow ], [ %.0.i.us.i1922, %bb.ou ] ; 2 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cex, i64 52 ; 2 uses
  %i.cgr = load i32, ptr %i.cgq, align 4, !tbaa !277
  %i.cgs = add i32 %i.cgr, -1
  store i32 %i.cgs, ptr %i.cgq, align 4, !tbaa !277
  %i.cgt = icmp eq ptr %.0.i6.i1919, null
  %i.cgu = load ptr, ptr %.020.i9.i1918, align 8, !tbaa !260 ; 5 uses
  br i1 %i.cgt, label %bb.oy, label %bb.pb

bb.oy:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1917
  %i.cgv = icmp eq ptr %i.cgu, null
  br i1 %i.cgv, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.cex, i64 48 ; 2 uses
  %i.cgx = load i32, ptr %i.cgw, align 8, !tbaa !281
  %i.cgy = add i32 %i.cgx, -1
  store i32 %i.cgy, ptr %i.cgw, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i1918, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1906

bb.pa:                                            ; preds = %bb.oy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i1918, ptr noundef nonnull align 8 dereferenceable(16) %i.cgu, i64 16, i1 false), !tbaa.struct !279
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cex, i64 72 ; 2 uses
  %i.cha = load ptr, ptr %i.cgz, align 8, !tbaa !273
  store ptr %i.cha, ptr %i.cgu, align 8, !tbaa !260
  store ptr %i.cgu, ptr %i.cgz, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1906

bb.pb:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i1917
  store ptr %i.cgu, ptr %.0.i6.i1919, align 8, !tbaa !260
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cex, i64 72 ; 2 uses
  %i.chc = load ptr, ptr %i.chb, align 8, !tbaa !273
  store ptr %i.chc, ptr %.020.i9.i1918, align 8, !tbaa !260
  store ptr %.020.i9.i1918, ptr %i.chb, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1906

.loopexit.i.i1904:                                ; preds = %bb.ox, %bb.ov, %.preheader.i.split.i1900
  %i.chd = add i32 %i.cgd, 1                      ; 2 uses
  store i32 %i.chd, ptr %i.cfs, align 8, !tbaa !276
  %i.che = load ptr, ptr %.020.i.i1901, align 8, !tbaa !260 ; 2 uses
  %.not.i.i1905 = icmp eq ptr %i.che, null
  br i1 %.not.i.i1905, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1906, label %.preheader.i.split.i1900, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1906: ; preds = %.loopexit.i.i1904, %.loopexit.i.us.i1924, %bb.pb, %bb.pa, %bb.oz, %bb.ot
  %i.chf = getelementptr inbounds nuw i8, ptr %i.cew, i64 4
  %i.chg = load i32, ptr %i.chf, align 4, !tbaa !173
  %i.chh = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc1927 unwind label %.loopexit.split-lp2884.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1927:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i1906
  br i1 %i.chh, label %_ZN6id_gen7recycleEj.exit.i1908, label %bb.pc

bb.pc:                                            ; preds = %.noexc1927
  %i.chi = getelementptr inbounds nuw i8, ptr %i.cex, i64 96 ; 3 uses
  %i.chj = load ptr, ptr %i.chi, align 8, !tbaa !68 ; 4 uses
  %i.chk = icmp eq ptr %i.chj, null
  br i1 %i.chk, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.chl = getelementptr inbounds i8, ptr %i.chj, i64 -4
  %i.chm = load i32, ptr %i.chl, align 4, !tbaa !69 ; 5 uses
  %i.chn = getelementptr inbounds i8, ptr %i.chj, i64 -8 ; 2 uses
  %i.cho = load i32, ptr %i.chn, align 4, !tbaa !69
  %i.chp = icmp eq i32 %i.chm, %i.cho
  br i1 %i.chp, label %bb.pf, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1907

bb.pe:                                            ; preds = %bb.pc
  %i.chq = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2501 unwind label %.loopexit.split-lp2884.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2501:                                       ; preds = %bb.pe
  store i32 2, ptr %i.chq, align 4, !tbaa !69
  %i.chr = getelementptr inbounds nuw i8, ptr %i.chq, i64 4
  store i32 0, ptr %i.chr, align 4, !tbaa !69
  %i.chs = getelementptr inbounds nuw i8, ptr %i.chq, i64 8 ; 2 uses
  store ptr %i.chs, ptr %i.chi, align 8, !tbaa !68
  br label %.noexc1928

bb.pf:                                            ; preds = %bb.pd
  %i.cht = mul i32 %i.chm, 3
  %i.chu = add i32 %i.cht, 1
  %i.chv = lshr i32 %i.chu, 1                     ; 3 uses
  %i.chw = shl i32 %i.chv, 2
  %i.chx = add i32 %i.chw, 8                      ; 2 uses
  %.not.i2491 = icmp ugt i32 %i.chv, %i.chm
  br i1 %.not.i2491, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.chy = shl i32 %i.chm, 2
  %i.chz = add i32 %i.chy, 8
  %.not27.i2500 = icmp ugt i32 %i.chx, %i.chz
  br i1 %.not27.i2500, label %bb.pm, label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %i.cia = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.pi unwind label %bb.pl

bb.pi:                                            ; preds = %bb.ph
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cia, align 8, !tbaa !172
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 8 ; 2 uses
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cia, i64 24 ; 3 uses
  store ptr %i.cic, ptr %i.cib, align 8, !tbaa !225
  %i.cid = load ptr, ptr %21, align 8, !tbaa !168 ; 2 uses
  %i.cie = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.cif = icmp eq ptr %i.cid, %i.cie
  br i1 %i.cif, label %bb.pj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2493

bb.pj:                                            ; preds = %bb.pi
  %i.cig = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cih = load i64, ptr %i.cig, align 8, !tbaa !169 ; 3 uses
  %i.cii = icmp ult i64 %i.cih, 16
  call void @llvm.assume(i1 %i.cii)
  %i.cij = add nuw nsw i64 %i.cih, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cic, ptr noundef nonnull align 8 dereferenceable(1) %i.cie, i64 %i.cij, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2493: ; preds = %bb.pi
  store ptr %i.cid, ptr %i.cib, align 8, !tbaa !168
  %i.cik = load i64, ptr %i.cie, align 8, !tbaa !170
  store i64 %i.cik, ptr %i.cic, align 8, !tbaa !170
  %.phi.trans.insert.i2494 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre.i2495 = load i64, ptr %.phi.trans.insert.i2494, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2496

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2496: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2493, %bb.pj
  %i.cil = phi i64 [ %i.cih, %bb.pj ], [ %.pre.i2495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2493 ]
  %i.cim = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cia, i64 16
  store i64 %i.cil, ptr %i.cin, align 8, !tbaa !169
  store ptr %i.cie, ptr %21, align 8, !tbaa !168
  store i64 0, ptr %i.cim, align 8, !tbaa !169
  store i8 0, ptr %i.cie, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.cia, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.pn unwind label %bb.pk

bb.pk:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2496
  %i.cio = landingpad { ptr, i32 }
          catch ptr null
  %i.cip = load ptr, ptr %21, align 8, !tbaa !168 ; 2 uses
  %i.ciq = icmp eq ptr %i.cip, %i.cie
  br i1 %i.ciq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2497

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2497: ; preds = %bb.pk
  %i.cir = load i64, ptr %i.cie, align 8, !tbaa !170
  %i.cis = add i64 %i.cir, 1
  call void @_ZdlPvm(ptr noundef %i.cip, i64 noundef %i.cis) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2498

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2498: ; preds = %bb.pk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2497
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %.body1942

bb.pl:                                            ; preds = %bb.ph
  %i.cit = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @__cxa_free_exception(ptr %i.cia) #29
  br label %.body1942

bb.pm:                                            ; preds = %bb.pg
  %i.ciu = zext i32 %i.chx to i64
  %i.civ = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.chn, i64 noundef %i.ciu)
          to label %.noexc2504 unwind label %.loopexit.split-lp2884.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2504:                                       ; preds = %bb.pm
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.civ, i64 8 ; 2 uses
  store ptr %i.ciw, ptr %i.chi, align 8, !tbaa !68
  store i32 %i.chv, ptr %i.civ, align 4, !tbaa !69
  br label %.noexc1928

bb.pn:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2496
  unreachable

.noexc1928:                                       ; preds = %.noexc2504, %.noexc2501
  %.pre.i.i.i1909 = phi ptr [ %i.ciw, %.noexc2504 ], [ %i.chs, %.noexc2501 ] ; 2 uses
  %.phi.trans.insert.i.i.i1910 = getelementptr inbounds i8, ptr %.pre.i.i.i1909, i64 -4
  %.pre2.i.i.i1911 = load i32, ptr %.phi.trans.insert.i.i.i1910, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1907

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1907:    ; preds = %.noexc1928, %bb.pd
  %i.cix = phi i32 [ %.pre2.i.i.i1911, %.noexc1928 ], [ %i.chm, %bb.pd ] ; 2 uses
  %i.ciy = phi ptr [ %.pre.i.i.i1909, %.noexc1928 ], [ %i.chj, %bb.pd ] ; 2 uses
  %i.ciz = getelementptr inbounds i8, ptr %i.ciy, i64 -4
  %i.cja = zext i32 %i.cix to i64
  %i.cjb = getelementptr inbounds nuw [4 x i8], ptr %i.ciy, i64 %i.cja
  store i32 %i.chg, ptr %i.cjb, align 4, !tbaa !69
  %i.cjc = add i32 %i.cix, 1
  store i32 %i.cjc, ptr %i.ciz, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1908

end_hunk_11
begin_hunk_12_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2033: ; preds = %bb.sl
  store ptr %i.cyc, ptr %i.cya, align 8, !tbaa !168
  %i.cyj = load i64, ptr %i.cyd, align 8, !tbaa !170
  store i64 %i.cyj, ptr %i.cyb, align 8, !tbaa !170
  %.phi.trans.insert.i2034 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %.pre.i2035 = load i64, ptr %.phi.trans.insert.i2034, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2036

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2036: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2033, %bb.sm
  %i.cyk = phi i64 [ %i.cyg, %bb.sm ], [ %.pre.i2035, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2033 ]
  %i.cyl = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cxz, i64 16
  store i64 %i.cyk, ptr %i.cym, align 8, !tbaa !169
  store ptr %i.cyd, ptr %43, align 8, !tbaa !168
  store i64 0, ptr %i.cyl, align 8, !tbaa !169
  store i8 0, ptr %i.cyd, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.cxz, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.sq unwind label %bb.sn

bb.sn:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2036
  %i.cyn = landingpad { ptr, i32 }
          catch ptr null
  %i.cyo = load ptr, ptr %43, align 8, !tbaa !168 ; 2 uses
  %i.cyp = icmp eq ptr %i.cyo, %i.cyd
  br i1 %i.cyp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2038, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2037

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2037: ; preds = %bb.sn
  %i.cyq = load i64, ptr %i.cyd, align 8, !tbaa !170
  %i.cyr = add i64 %i.cyq, 1
  call void @_ZdlPvm(ptr noundef %i.cyo, i64 noundef %i.cyr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2038

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2038: ; preds = %bb.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2037
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %.body2042

bb.so:                                            ; preds = %bb.sk
  %i.cys = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  call void @__cxa_free_exception(ptr %i.cxz) #29
  br label %.body2042

bb.sp:                                            ; preds = %bb.sj
  %i.cyt = zext i32 %i.cxw to i64
  %i.cyu = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cxm, i64 noundef %i.cyt)
          to label %.noexc2044 unwind label %.loopexit.split-lp2873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2044:                                       ; preds = %bb.sp
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyu, i64 8 ; 2 uses
  store ptr %i.cyv, ptr %i.cxh, align 8, !tbaa !68
  store i32 %i.cxu, ptr %i.cyu, align 4, !tbaa !69
  br label %.noexc1501

bb.sq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2036
  unreachable

.noexc1501:                                       ; preds = %.noexc2044, %.noexc2041
  %.pre.i.i.i1496 = phi ptr [ %i.cyv, %.noexc2044 ], [ %i.cxr, %.noexc2041 ] ; 2 uses
  %.phi.trans.insert.i.i.i1497 = getelementptr inbounds i8, ptr %.pre.i.i.i1496, i64 -4
  %.pre2.i.i.i1498 = load i32, ptr %.phi.trans.insert.i.i.i1497, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1494

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1494:    ; preds = %.noexc1501, %bb.sg
  %i.cyw = phi i32 [ %.pre2.i.i.i1498, %.noexc1501 ], [ %i.cxl, %bb.sg ] ; 2 uses
  %i.cyx = phi ptr [ %.pre.i.i.i1496, %.noexc1501 ], [ %i.cxi, %bb.sg ] ; 2 uses
  %i.cyy = getelementptr inbounds i8, ptr %i.cyx, i64 -4
  %i.cyz = zext i32 %i.cyw to i64
  %i.cza = getelementptr inbounds nuw [4 x i8], ptr %i.cyx, i64 %i.cyz
  store i32 %i.cxf, ptr %i.cza, align 4, !tbaa !69
  %i.czb = add i32 %i.cyw, 1
  store i32 %i.czb, ptr %i.cyy, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1495

_ZN6id_gen7recycleEj.exit.i1495:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1494, %.noexc1500
  %i.czc = mul i32 %i.cwy, 24
  %i.czd = add i32 %i.czc, 32
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cwm, i64 472
  %i.czf = load ptr, ptr %i.cze, align 8, !tbaa !183
  %i.czg = zext nneg i32 %i.cxf to i64
  %i.czh = getelementptr inbounds nuw [8 x i8], ptr %i.czf, i64 %i.czg
  store ptr null, ptr %i.czh, align 8, !tbaa !102
  %i.czi = getelementptr inbounds nuw i8, ptr %i.cwm, i64 464
  %i.czj = load ptr, ptr %i.czi, align 8, !tbaa !150
  %i.czk = getelementptr inbounds nuw i8, ptr %i.czj, i64 8
  %i.czl = load ptr, ptr %i.czk, align 8, !tbaa !193
  %i.czm = zext i32 %i.czd to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.czl, i64 noundef %i.czm, ptr noundef nonnull %i.cwk)
          to label %_ZN6id_gen7recycleEj.exit.i1495._crit_edge unwind label %.loopexit.split-lp2873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6id_gen7recycleEj.exit.i1495._crit_edge:       ; preds = %_ZN6id_gen7recycleEj.exit.i1495
  %.pre6710.pre = load ptr, ptr %.0.ptr5438, align 16, !tbaa !109
  br label %bb.to

bb.sr:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1490, %.lr.ph.i1487
  %indvars.iv.i1489 = phi i64 [ 0, %.lr.ph.i1487 ], [ %indvars.iv.next.i1491, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1490 ] ; 3 uses
  %i.czn = load ptr, ptr %i.cxa, align 8, !tbaa !177
  %i.czo = getelementptr inbounds nuw [16 x i8], ptr %i.czn, i64 %indvars.iv.i1489
  %i.czp = load ptr, ptr %i.cwz, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.czp, ptr noundef nonnull align 8 dereferenceable(16) %i.czo)
          to label %.noexc1503 unwind label %.loopexit.split-lp2873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1503:                                       ; preds = %bb.sr
  %i.czq = load ptr, ptr %i.cxb, align 8, !tbaa !175
  %i.czr = getelementptr inbounds nuw [8 x i8], ptr %i.czq, i64 %indvars.iv.i1489
  %i.czs = load ptr, ptr %i.czr, align 8, !tbaa !176 ; 7 uses
  %i.czt = load ptr, ptr %i.cxc, align 8, !tbaa !150 ; 9 uses
  %i.czu = load i32, ptr %i.czs, align 4, !tbaa !198
  %i.czv = add i32 %i.czu, -1                     ; 2 uses
  store i32 %i.czv, ptr %i.czs, align 4, !tbaa !198
  %i.czw = icmp eq i32 %i.czv, 0
  br i1 %i.czw, label %bb.ss, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1490

bb.ss:                                            ; preds = %.noexc1503
  %i.czx = getelementptr inbounds nuw i8, ptr %i.czs, i64 12
  %i.czy = load i32, ptr %i.czx, align 4, !tbaa !77
  %.fr13.i1996 = freeze i32 %i.czy                ; 4 uses
  %i.czz = getelementptr inbounds nuw i8, ptr %i.czt, i64 24
  %i.daa = getelementptr inbounds nuw i8, ptr %i.czt, i64 44
  %i.dab = load i32, ptr %i.daa, align 4, !tbaa !274
  %i.dac = add i32 %i.dab, -1
  %i.dad = getelementptr inbounds nuw i8, ptr %i.czs, i64 16
  %i.dae = load i32, ptr %i.dad, align 4, !tbaa !185 ; 3 uses
  %i.daf = and i32 %i.dae, %i.dac
  %i.dag = load ptr, ptr %i.czz, align 8, !tbaa !261
  %i.dah = zext i32 %i.daf to i64
  %i.dai = getelementptr inbounds nuw [16 x i8], ptr %i.dag, i64 %i.dah ; 3 uses
  %i.daj = load ptr, ptr %i.dai, align 8, !tbaa !260
  %i.dak = ptrtoint ptr %i.daj to i64
  %i.dal = and i64 %i.dak, 7
  %i.dam = icmp eq i64 %i.dal, 1
  br i1 %i.dam, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2006, label %.preheader.i.i1997

.preheader.i.i1997:                               ; preds = %bb.ss
  %i.dan = getelementptr inbounds nuw i8, ptr %i.czs, i64 20
  %i.dao = getelementptr inbounds nuw i8, ptr %i.czt, i64 56 ; 3 uses
  %.promoted.i.i1998 = load i32, ptr %i.dao, align 8 ; 2 uses
  %i.dap = icmp eq i32 %.fr13.i1996, 0
  %wide.trip.count.i.i.i.i1999 = zext i32 %.fr13.i1996 to i64
  br i1 %i.dap, label %.preheader.i.split.us.i2020, label %.preheader.i.split.i2000

.preheader.i.split.us.i2020:                      ; preds = %.preheader.i.i1997, %.loopexit.i.us.i2024
  %i.daq = phi i32 [ %i.dax, %.loopexit.i.us.i2024 ], [ %.promoted.i.i1998, %.preheader.i.i1997 ]
  %.020.i.us.i2021 = phi ptr [ %i.day, %.loopexit.i.us.i2024 ], [ %i.dai, %.preheader.i.i1997 ] ; 4 uses
  %.0.i.us.i2022 = phi ptr [ %.020.i.us.i2021, %.loopexit.i.us.i2024 ], [ null, %.preheader.i.i1997 ]
  %i.dar = getelementptr inbounds nuw i8, ptr %.020.i.us.i2021, i64 8
  %i.das = load ptr, ptr %i.dar, align 8, !tbaa !176 ; 2 uses
  %i.dat = getelementptr inbounds nuw i8, ptr %i.das, i64 12
  %i.dau = load i32, ptr %i.dat, align 4, !tbaa !77
  %.not.i.i.i.us.i2023 = icmp eq i32 %i.dau, 0
  br i1 %.not.i.i.i.us.i2023, label %bb.st, label %.loopexit.i.us.i2024

bb.st:                                            ; preds = %.preheader.i.split.us.i2020
  %i.dav = getelementptr inbounds nuw i8, ptr %i.das, i64 16
  %i.daw = load i32, ptr %i.dav, align 4, !tbaa !185
  %.not14.i.i.i.us.i2026 = icmp eq i32 %i.daw, %i.dae
  br i1 %.not14.i.i.i.us.i2026, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2017, label %.loopexit.i.us.i2024

.loopexit.i.us.i2024:                             ; preds = %bb.st, %.preheader.i.split.us.i2020
  %i.dax = add i32 %i.daq, 1                      ; 2 uses
  store i32 %i.dax, ptr %i.dao, align 8, !tbaa !276
  %i.day = load ptr, ptr %.020.i.us.i2021, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2025 = icmp eq ptr %i.day, null
  br i1 %.not.i.us.i2025, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2006, label %.preheader.i.split.us.i2020, !llvm.loop !31

.preheader.i.split.i2000:                         ; preds = %.preheader.i.i1997, %.loopexit.i.i2004
  %i.daz = phi i32 [ %i.dbz, %.loopexit.i.i2004 ], [ %.promoted.i.i1998, %.preheader.i.i1997 ]
  %.020.i.i2001 = phi ptr [ %i.dca, %.loopexit.i.i2004 ], [ %i.dai, %.preheader.i.i1997 ] ; 4 uses
  %.0.i.i2002 = phi ptr [ %.020.i.i2001, %.loopexit.i.i2004 ], [ null, %.preheader.i.i1997 ]
  %i.dba = getelementptr inbounds nuw i8, ptr %.020.i.i2001, i64 8
  %i.dbb = load ptr, ptr %i.dba, align 8, !tbaa !176 ; 3 uses
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.dbb, i64 12
  %i.dbd = load i32, ptr %i.dbc, align 4, !tbaa !77
  %.not.i.i.i.i2003 = icmp eq i32 %i.dbd, %.fr13.i1996
  br i1 %.not.i.i.i.i2003, label %bb.su, label %.loopexit.i.i2004

bb.su:                                            ; preds = %.preheader.i.split.i2000
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.dbb, i64 16
  %i.dbf = load i32, ptr %i.dbe, align 4, !tbaa !185
  %.not14.i.i.i.i2012 = icmp eq i32 %i.dbf, %i.dae
  br i1 %.not14.i.i.i.i2012, label %.preheader.i.i.i.i2013, label %.loopexit.i.i2004

.preheader.i.i.i.i2013:                           ; preds = %bb.su
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dbb, i64 20
  br label %bb.sw

bb.sv:                                            ; preds = %bb.sw
  %indvars.iv.next.i.i.i.i2015 = add nuw nsw i64 %indvars.iv.i.i.i.i2014, 1 ; 2 uses
  %exitcond.not.i.i.i.i2016 = icmp eq i64 %indvars.iv.next.i.i.i.i2015, %wide.trip.count.i.i.i.i1999
  br i1 %exitcond.not.i.i.i.i2016, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2017, label %bb.sw, !llvm.loop !17

bb.sw:                                            ; preds = %bb.sv, %.preheader.i.i.i.i2013
  %indvars.iv.i.i.i.i2014 = phi i64 [ 0, %.preheader.i.i.i.i2013 ], [ %indvars.iv.next.i.i.i.i2015, %bb.sv ] ; 3 uses
  %i.dbh = getelementptr inbounds nuw [8 x i8], ptr %i.dbg, i64 %indvars.iv.i.i.i.i2014
  %i.dbi = getelementptr inbounds nuw [8 x i8], ptr %i.dan, i64 %indvars.iv.i.i.i.i2014
  %i.dbj = load <2 x i32>, ptr %i.dbh, align 4
  %i.dbk = load <2 x i32>, ptr %i.dbi, align 4
  %i.dbl = icmp eq <2 x i32> %i.dbj, %i.dbk       ; 2 uses
  %116 = extractelement <2 x i1> %i.dbl, i64 0
  %117 = extractelement <2 x i1> %i.dbl, i64 1
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %bb.sv, label %.loopexit.i.i2004

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2017: ; preds = %bb.st, %bb.sv
  %.020.i9.i2018 = phi ptr [ %.020.i.i2001, %bb.sv ], [ %.020.i.us.i2021, %bb.st ] ; 5 uses
  %.0.i6.i2019 = phi ptr [ %.0.i.i2002, %bb.sv ], [ %.0.i.us.i2022, %bb.st ] ; 2 uses
  %i.dbm = getelementptr inbounds nuw i8, ptr %i.czt, i64 52 ; 2 uses
  %i.dbn = load i32, ptr %i.dbm, align 4, !tbaa !277
  %i.dbo = add i32 %i.dbn, -1
  store i32 %i.dbo, ptr %i.dbm, align 4, !tbaa !277
  %i.dbp = icmp eq ptr %.0.i6.i2019, null
  %i.dbq = load ptr, ptr %.020.i9.i2018, align 8, !tbaa !260 ; 5 uses
  br i1 %i.dbp, label %bb.sx, label %bb.ta

bb.sx:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2017
  %i.dbr = icmp eq ptr %i.dbq, null
  br i1 %i.dbr, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %bb.sx
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.czt, i64 48 ; 2 uses
  %i.dbt = load i32, ptr %i.dbs, align 8, !tbaa !281
  %i.dbu = add i32 %i.dbt, -1
  store i32 %i.dbu, ptr %i.dbs, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2018, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2006

bb.sz:                                            ; preds = %bb.sx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2018, ptr noundef nonnull align 8 dereferenceable(16) %i.dbq, i64 16, i1 false), !tbaa.struct !279
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.czt, i64 72 ; 2 uses
  %i.dbw = load ptr, ptr %i.dbv, align 8, !tbaa !273
  store ptr %i.dbw, ptr %i.dbq, align 8, !tbaa !260
  store ptr %i.dbq, ptr %i.dbv, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2006

bb.ta:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2017
  store ptr %i.dbq, ptr %.0.i6.i2019, align 8, !tbaa !260
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.czt, i64 72 ; 2 uses
  %i.dby = load ptr, ptr %i.dbx, align 8, !tbaa !273
  store ptr %i.dby, ptr %.020.i9.i2018, align 8, !tbaa !260
  store ptr %.020.i9.i2018, ptr %i.dbx, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2006

.loopexit.i.i2004:                                ; preds = %bb.sw, %bb.su, %.preheader.i.split.i2000
  %i.dbz = add i32 %i.daz, 1                      ; 2 uses
  store i32 %i.dbz, ptr %i.dao, align 8, !tbaa !276
  %i.dca = load ptr, ptr %.020.i.i2001, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2005 = icmp eq ptr %i.dca, null
  br i1 %.not.i.i2005, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2006, label %.preheader.i.split.i2000, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2006: ; preds = %.loopexit.i.i2004, %.loopexit.i.us.i2024, %bb.ta, %bb.sz, %bb.sy, %bb.ss
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.czs, i64 4
  %i.dcc = load i32, ptr %i.dcb, align 4, !tbaa !173
  %i.dcd = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2027 unwind label %.loopexit.split-lp2873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2027:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2006
  br i1 %i.dcd, label %_ZN6id_gen7recycleEj.exit.i2008, label %bb.tb

bb.tb:                                            ; preds = %.noexc2027
  %i.dce = getelementptr inbounds nuw i8, ptr %i.czt, i64 96 ; 3 uses
  %i.dcf = load ptr, ptr %i.dce, align 8, !tbaa !68 ; 4 uses
  %i.dcg = icmp eq ptr %i.dcf, null
  br i1 %i.dcg, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.dch = getelementptr inbounds i8, ptr %i.dcf, i64 -4
  %i.dci = load i32, ptr %i.dch, align 4, !tbaa !69 ; 5 uses
  %i.dcj = getelementptr inbounds i8, ptr %i.dcf, i64 -8 ; 2 uses
  %i.dck = load i32, ptr %i.dcj, align 4, !tbaa !69
  %i.dcl = icmp eq i32 %i.dci, %i.dck
  br i1 %i.dcl, label %bb.te, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2007

bb.td:                                            ; preds = %bb.tb
  %i.dcm = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2531 unwind label %.loopexit.split-lp2873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2531:                                       ; preds = %bb.td
  store i32 2, ptr %i.dcm, align 4, !tbaa !69
  %i.dcn = getelementptr inbounds nuw i8, ptr %i.dcm, i64 4
  store i32 0, ptr %i.dcn, align 4, !tbaa !69
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcm, i64 8 ; 2 uses
  store ptr %i.dco, ptr %i.dce, align 8, !tbaa !68
  br label %.noexc2028

bb.te:                                            ; preds = %bb.tc
  %i.dcp = mul i32 %i.dci, 3
  %i.dcq = add i32 %i.dcp, 1
  %i.dcr = lshr i32 %i.dcq, 1                     ; 3 uses
  %i.dcs = shl i32 %i.dcr, 2
  %i.dct = add i32 %i.dcs, 8                      ; 2 uses
  %.not.i2521 = icmp ugt i32 %i.dcr, %i.dci
  br i1 %.not.i2521, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %bb.te
  %i.dcu = shl i32 %i.dci, 2
  %i.dcv = add i32 %i.dcu, 8
  %.not27.i2530 = icmp ugt i32 %i.dct, %i.dcv
  br i1 %.not27.i2530, label %bb.tl, label %bb.tg

bb.tg:                                            ; preds = %bb.tf, %bb.te
  %i.dcw = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.th unwind label %bb.tk

bb.th:                                            ; preds = %bb.tg
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.dcw, align 8, !tbaa !172
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcw, i64 8 ; 2 uses
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcw, i64 24 ; 3 uses
  store ptr %i.dcy, ptr %i.dcx, align 8, !tbaa !225
  %i.dcz = load ptr, ptr %19, align 8, !tbaa !168 ; 2 uses
  %i.dda = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.ddb = icmp eq ptr %i.dcz, %i.dda
  br i1 %i.ddb, label %bb.ti, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2523

bb.ti:                                            ; preds = %bb.th
  %i.ddc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ddd = load i64, ptr %i.ddc, align 8, !tbaa !169 ; 3 uses
  %i.dde = icmp ult i64 %i.ddd, 16
  call void @llvm.assume(i1 %i.dde)
  %i.ddf = add nuw nsw i64 %i.ddd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dcy, ptr noundef nonnull align 8 dereferenceable(1) %i.dda, i64 %i.ddf, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2523: ; preds = %bb.th
  store ptr %i.dcz, ptr %i.dcx, align 8, !tbaa !168
  %i.ddg = load i64, ptr %i.dda, align 8, !tbaa !170
  store i64 %i.ddg, ptr %i.dcy, align 8, !tbaa !170
  %.phi.trans.insert.i2524 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.pre.i2525 = load i64, ptr %.phi.trans.insert.i2524, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2526

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2526: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2523, %bb.ti
  %i.ddh = phi i64 [ %i.ddd, %bb.ti ], [ %.pre.i2525, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2523 ]
  %i.ddi = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.dcw, i64 16
  store i64 %i.ddh, ptr %i.ddj, align 8, !tbaa !169
  store ptr %i.dda, ptr %19, align 8, !tbaa !168
  store i64 0, ptr %i.ddi, align 8, !tbaa !169
  store i8 0, ptr %i.dda, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.dcw, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.tm unwind label %bb.tj

bb.tj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2526
  %i.ddk = landingpad { ptr, i32 }
          catch ptr null
  %i.ddl = load ptr, ptr %19, align 8, !tbaa !168 ; 2 uses
  %i.ddm = icmp eq ptr %i.ddl, %i.dda
  br i1 %i.ddm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2527

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2527: ; preds = %bb.tj
  %i.ddn = load i64, ptr %i.dda, align 8, !tbaa !170
  %i.ddo = add i64 %i.ddn, 1
  call void @_ZdlPvm(ptr noundef %i.ddl, i64 noundef %i.ddo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2528

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2528: ; preds = %bb.tj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2527
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %.body2042

bb.tk:                                            ; preds = %bb.tg
  %i.ddp = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @__cxa_free_exception(ptr %i.dcw) #29
  br label %.body2042

bb.tl:                                            ; preds = %bb.tf
  %i.ddq = zext i32 %i.dct to i64
  %i.ddr = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.dcj, i64 noundef %i.ddq)
          to label %.noexc2534 unwind label %.loopexit.split-lp2873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2534:                                       ; preds = %bb.tl
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddr, i64 8 ; 2 uses
  store ptr %i.dds, ptr %i.dce, align 8, !tbaa !68
  store i32 %i.dcr, ptr %i.ddr, align 4, !tbaa !69
  br label %.noexc2028

bb.tm:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2526
  unreachable

.noexc2028:                                       ; preds = %.noexc2534, %.noexc2531
  %.pre.i.i.i2009 = phi ptr [ %i.dds, %.noexc2534 ], [ %i.dco, %.noexc2531 ] ; 2 uses
  %.phi.trans.insert.i.i.i2010 = getelementptr inbounds i8, ptr %.pre.i.i.i2009, i64 -4
  %.pre2.i.i.i2011 = load i32, ptr %.phi.trans.insert.i.i.i2010, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2007

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2007:    ; preds = %.noexc2028, %bb.tc
  %i.ddt = phi i32 [ %.pre2.i.i.i2011, %.noexc2028 ], [ %i.dci, %bb.tc ] ; 2 uses
  %i.ddu = phi ptr [ %.pre.i.i.i2009, %.noexc2028 ], [ %i.dcf, %bb.tc ] ; 2 uses
  %i.ddv = getelementptr inbounds i8, ptr %i.ddu, i64 -4
  %i.ddw = zext i32 %i.ddt to i64
  %i.ddx = getelementptr inbounds nuw [4 x i8], ptr %i.ddu, i64 %i.ddw
  store i32 %i.dcc, ptr %i.ddx, align 4, !tbaa !69
  %i.ddy = add i32 %i.ddt, 1
  store i32 %i.ddy, ptr %i.ddv, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2008

end_hunk_12
begin_hunk_13_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.dka)
  %i.dkb = add nuw nsw i64 %i.djz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dju, ptr noundef nonnull align 8 dereferenceable(1) %i.djw, i64 %i.dkb, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2086

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2083: ; preds = %bb.uv
  store ptr %i.djv, ptr %i.djt, align 8, !tbaa !168
  %i.dkc = load i64, ptr %i.djw, align 8, !tbaa !170
  store i64 %i.dkc, ptr %i.dju, align 8, !tbaa !170
  %.phi.trans.insert.i2084 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %.pre.i2085 = load i64, ptr %.phi.trans.insert.i2084, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2086

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2086: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2083, %bb.uw
  %i.dkd = phi i64 [ %i.djz, %bb.uw ], [ %.pre.i2085, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2083 ]
  %i.dke = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.djs, i64 16
  store i64 %i.dkd, ptr %i.dkf, align 8, !tbaa !169
  store ptr %i.djw, ptr %41, align 8, !tbaa !168
  store i64 0, ptr %i.dke, align 8, !tbaa !169
  store i8 0, ptr %i.djw, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.djs, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.va unwind label %bb.ux

bb.ux:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2086
  %i.dkg = landingpad { ptr, i32 }
          catch ptr null
  %i.dkh = load ptr, ptr %41, align 8, !tbaa !168 ; 2 uses
  %i.dki = icmp eq ptr %i.dkh, %i.djw
  br i1 %i.dki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2088, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2087

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2087: ; preds = %bb.ux
  %i.dkj = load i64, ptr %i.djw, align 8, !tbaa !170
  %i.dkk = add i64 %i.dkj, 1
  call void @_ZdlPvm(ptr noundef %i.dkh, i64 noundef %i.dkk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2088

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2088: ; preds = %bb.ux, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2087
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %.body2092

bb.uy:                                            ; preds = %bb.uu
  %i.dkl = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  call void @__cxa_free_exception(ptr %i.djs) #29
  br label %.body2092

bb.uz:                                            ; preds = %bb.ut
  %i.dkm = zext i32 %i.djp to i64
  %i.dkn = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.djf, i64 noundef %i.dkm)
          to label %.noexc2094 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2094:                                       ; preds = %bb.uz
  %i.dko = getelementptr inbounds nuw i8, ptr %i.dkn, i64 8 ; 2 uses
  store ptr %i.dko, ptr %i.dja, align 8, !tbaa !68
  store i32 %i.djn, ptr %i.dkn, align 4, !tbaa !69
  br label %.noexc1556

bb.va:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2086
  unreachable

.noexc1556:                                       ; preds = %.noexc2094, %.noexc2091
  %.pre.i.i.i1551 = phi ptr [ %i.dko, %.noexc2094 ], [ %i.djk, %.noexc2091 ] ; 2 uses
  %.phi.trans.insert.i.i.i1552 = getelementptr inbounds i8, ptr %.pre.i.i.i1551, i64 -4
  %.pre2.i.i.i1553 = load i32, ptr %.phi.trans.insert.i.i.i1552, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1549

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1549:    ; preds = %.noexc1556, %bb.uq
  %i.dkp = phi i32 [ %.pre2.i.i.i1553, %.noexc1556 ], [ %i.dje, %bb.uq ] ; 2 uses
  %i.dkq = phi ptr [ %.pre.i.i.i1551, %.noexc1556 ], [ %i.djb, %bb.uq ] ; 2 uses
  %i.dkr = getelementptr inbounds i8, ptr %i.dkq, i64 -4
  %i.dks = zext i32 %i.dkp to i64
  %i.dkt = getelementptr inbounds nuw [4 x i8], ptr %i.dkq, i64 %i.dks
  store i32 %i.diy, ptr %i.dkt, align 4, !tbaa !69
  %i.dku = add i32 %i.dkp, 1
  store i32 %i.dku, ptr %i.dkr, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1550

_ZN6id_gen7recycleEj.exit.i1550:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1549, %.noexc1555
  %i.dkv = mul i32 %i.dir, 24
  %i.dkw = add i32 %i.dkv, 32
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dif, i64 472
  %i.dky = load ptr, ptr %i.dkx, align 8, !tbaa !183
  %i.dkz = zext nneg i32 %i.diy to i64
  %i.dla = getelementptr inbounds nuw [8 x i8], ptr %i.dky, i64 %i.dkz
  store ptr null, ptr %i.dla, align 8, !tbaa !102
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dif, i64 464
  %i.dlc = load ptr, ptr %i.dlb, align 8, !tbaa !150
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dlc, i64 8
  %i.dle = load ptr, ptr %i.dld, align 8, !tbaa !193
  %i.dlf = zext i32 %i.dkw to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.dle, i64 noundef %i.dlf, ptr noundef nonnull %i.dic)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit952 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vb:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1545, %.lr.ph.i1542
  %indvars.iv.i1544 = phi i64 [ 0, %.lr.ph.i1542 ], [ %indvars.iv.next.i1546, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1545 ] ; 3 uses
  %i.dlg = load ptr, ptr %i.dit, align 8, !tbaa !177
  %i.dlh = getelementptr inbounds nuw [16 x i8], ptr %i.dlg, i64 %indvars.iv.i1544
  %i.dli = load ptr, ptr %i.dis, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.dli, ptr noundef nonnull align 8 dereferenceable(16) %i.dlh)
          to label %.noexc1558 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1558:                                       ; preds = %bb.vb
  %i.dlj = load ptr, ptr %i.diu, align 8, !tbaa !175
  %i.dlk = getelementptr inbounds nuw [8 x i8], ptr %i.dlj, i64 %indvars.iv.i1544
  %i.dll = load ptr, ptr %i.dlk, align 8, !tbaa !176 ; 7 uses
  %i.dlm = load ptr, ptr %i.div, align 8, !tbaa !150 ; 9 uses
  %i.dln = load i32, ptr %i.dll, align 4, !tbaa !198
  %i.dlo = add i32 %i.dln, -1                     ; 2 uses
  store i32 %i.dlo, ptr %i.dll, align 4, !tbaa !198
  %i.dlp = icmp eq i32 %i.dlo, 0
  br i1 %i.dlp, label %bb.vc, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1545

bb.vc:                                            ; preds = %.noexc1558
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dll, i64 12
  %i.dlr = load i32, ptr %i.dlq, align 4, !tbaa !77
  %.fr13.i2046 = freeze i32 %i.dlr                ; 4 uses
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dlm, i64 24
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dlm, i64 44
  %i.dlu = load i32, ptr %i.dlt, align 4, !tbaa !274
  %i.dlv = add i32 %i.dlu, -1
  %i.dlw = getelementptr inbounds nuw i8, ptr %i.dll, i64 16
  %i.dlx = load i32, ptr %i.dlw, align 4, !tbaa !185 ; 3 uses
  %i.dly = and i32 %i.dlx, %i.dlv
  %i.dlz = load ptr, ptr %i.dls, align 8, !tbaa !261
  %i.dma = zext i32 %i.dly to i64
  %i.dmb = getelementptr inbounds nuw [16 x i8], ptr %i.dlz, i64 %i.dma ; 3 uses
  %i.dmc = load ptr, ptr %i.dmb, align 8, !tbaa !260
  %i.dmd = ptrtoint ptr %i.dmc to i64
  %i.dme = and i64 %i.dmd, 7
  %i.dmf = icmp eq i64 %i.dme, 1
  br i1 %i.dmf, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056, label %.preheader.i.i2047

.preheader.i.i2047:                               ; preds = %bb.vc
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dll, i64 20
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dlm, i64 56 ; 3 uses
  %.promoted.i.i2048 = load i32, ptr %i.dmh, align 8 ; 2 uses
  %i.dmi = icmp eq i32 %.fr13.i2046, 0
  %wide.trip.count.i.i.i.i2049 = zext i32 %.fr13.i2046 to i64
  br i1 %i.dmi, label %.preheader.i.split.us.i2070, label %.preheader.i.split.i2050

.preheader.i.split.us.i2070:                      ; preds = %.preheader.i.i2047, %.loopexit.i.us.i2074
  %i.dmj = phi i32 [ %i.dmq, %.loopexit.i.us.i2074 ], [ %.promoted.i.i2048, %.preheader.i.i2047 ]
  %.020.i.us.i2071 = phi ptr [ %i.dmr, %.loopexit.i.us.i2074 ], [ %i.dmb, %.preheader.i.i2047 ] ; 4 uses
  %.0.i.us.i2072 = phi ptr [ %.020.i.us.i2071, %.loopexit.i.us.i2074 ], [ null, %.preheader.i.i2047 ]
  %i.dmk = getelementptr inbounds nuw i8, ptr %.020.i.us.i2071, i64 8
  %i.dml = load ptr, ptr %i.dmk, align 8, !tbaa !176 ; 2 uses
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dml, i64 12
  %i.dmn = load i32, ptr %i.dmm, align 4, !tbaa !77
  %.not.i.i.i.us.i2073 = icmp eq i32 %i.dmn, 0
  br i1 %.not.i.i.i.us.i2073, label %bb.vd, label %.loopexit.i.us.i2074

bb.vd:                                            ; preds = %.preheader.i.split.us.i2070
  %i.dmo = getelementptr inbounds nuw i8, ptr %i.dml, i64 16
  %i.dmp = load i32, ptr %i.dmo, align 4, !tbaa !185
  %.not14.i.i.i.us.i2076 = icmp eq i32 %i.dmp, %i.dlx
  br i1 %.not14.i.i.i.us.i2076, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2067, label %.loopexit.i.us.i2074

.loopexit.i.us.i2074:                             ; preds = %bb.vd, %.preheader.i.split.us.i2070
  %i.dmq = add i32 %i.dmj, 1                      ; 2 uses
  store i32 %i.dmq, ptr %i.dmh, align 8, !tbaa !276
  %i.dmr = load ptr, ptr %.020.i.us.i2071, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2075 = icmp eq ptr %i.dmr, null
  br i1 %.not.i.us.i2075, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056, label %.preheader.i.split.us.i2070, !llvm.loop !31

.preheader.i.split.i2050:                         ; preds = %.preheader.i.i2047, %.loopexit.i.i2054
  %i.dms = phi i32 [ %i.dns, %.loopexit.i.i2054 ], [ %.promoted.i.i2048, %.preheader.i.i2047 ]
  %.020.i.i2051 = phi ptr [ %i.dnt, %.loopexit.i.i2054 ], [ %i.dmb, %.preheader.i.i2047 ] ; 4 uses
  %.0.i.i2052 = phi ptr [ %.020.i.i2051, %.loopexit.i.i2054 ], [ null, %.preheader.i.i2047 ]
  %i.dmt = getelementptr inbounds nuw i8, ptr %.020.i.i2051, i64 8
  %i.dmu = load ptr, ptr %i.dmt, align 8, !tbaa !176 ; 3 uses
  %i.dmv = getelementptr inbounds nuw i8, ptr %i.dmu, i64 12
  %i.dmw = load i32, ptr %i.dmv, align 4, !tbaa !77
  %.not.i.i.i.i2053 = icmp eq i32 %i.dmw, %.fr13.i2046
  br i1 %.not.i.i.i.i2053, label %bb.ve, label %.loopexit.i.i2054

bb.ve:                                            ; preds = %.preheader.i.split.i2050
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dmu, i64 16
  %i.dmy = load i32, ptr %i.dmx, align 4, !tbaa !185
  %.not14.i.i.i.i2062 = icmp eq i32 %i.dmy, %i.dlx
  br i1 %.not14.i.i.i.i2062, label %.preheader.i.i.i.i2063, label %.loopexit.i.i2054

.preheader.i.i.i.i2063:                           ; preds = %bb.ve
  %i.dmz = getelementptr inbounds nuw i8, ptr %i.dmu, i64 20
  br label %bb.vg

bb.vf:                                            ; preds = %bb.vg
  %indvars.iv.next.i.i.i.i2065 = add nuw nsw i64 %indvars.iv.i.i.i.i2064, 1 ; 2 uses
  %exitcond.not.i.i.i.i2066 = icmp eq i64 %indvars.iv.next.i.i.i.i2065, %wide.trip.count.i.i.i.i2049
  br i1 %exitcond.not.i.i.i.i2066, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2067, label %bb.vg, !llvm.loop !17

bb.vg:                                            ; preds = %bb.vf, %.preheader.i.i.i.i2063
  %indvars.iv.i.i.i.i2064 = phi i64 [ 0, %.preheader.i.i.i.i2063 ], [ %indvars.iv.next.i.i.i.i2065, %bb.vf ] ; 3 uses
  %i.dna = getelementptr inbounds nuw [8 x i8], ptr %i.dmz, i64 %indvars.iv.i.i.i.i2064
  %i.dnb = getelementptr inbounds nuw [8 x i8], ptr %i.dmg, i64 %indvars.iv.i.i.i.i2064
  %i.dnc = load <2 x i32>, ptr %i.dna, align 4
  %i.dnd = load <2 x i32>, ptr %i.dnb, align 4
  %i.dne = icmp eq <2 x i32> %i.dnc, %i.dnd       ; 2 uses
  %119 = extractelement <2 x i1> %i.dne, i64 0
  %120 = extractelement <2 x i1> %i.dne, i64 1
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %bb.vf, label %.loopexit.i.i2054

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2067: ; preds = %bb.vd, %bb.vf
  %.020.i9.i2068 = phi ptr [ %.020.i.i2051, %bb.vf ], [ %.020.i.us.i2071, %bb.vd ] ; 5 uses
  %.0.i6.i2069 = phi ptr [ %.0.i.i2052, %bb.vf ], [ %.0.i.us.i2072, %bb.vd ] ; 2 uses
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.dlm, i64 52 ; 2 uses
  %i.dng = load i32, ptr %i.dnf, align 4, !tbaa !277
  %i.dnh = add i32 %i.dng, -1
  store i32 %i.dnh, ptr %i.dnf, align 4, !tbaa !277
  %i.dni = icmp eq ptr %.0.i6.i2069, null
  %i.dnj = load ptr, ptr %.020.i9.i2068, align 8, !tbaa !260 ; 5 uses
  br i1 %i.dni, label %bb.vh, label %bb.vk

bb.vh:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2067
  %i.dnk = icmp eq ptr %i.dnj, null
  br i1 %i.dnk, label %bb.vi, label %bb.vj

bb.vi:                                            ; preds = %bb.vh
  %i.dnl = getelementptr inbounds nuw i8, ptr %i.dlm, i64 48 ; 2 uses
  %i.dnm = load i32, ptr %i.dnl, align 8, !tbaa !281
  %i.dnn = add i32 %i.dnm, -1
  store i32 %i.dnn, ptr %i.dnl, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2068, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056

bb.vj:                                            ; preds = %bb.vh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2068, ptr noundef nonnull align 8 dereferenceable(16) %i.dnj, i64 16, i1 false), !tbaa.struct !279
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dlm, i64 72 ; 2 uses
  %i.dnp = load ptr, ptr %i.dno, align 8, !tbaa !273
  store ptr %i.dnp, ptr %i.dnj, align 8, !tbaa !260
  store ptr %i.dnj, ptr %i.dno, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056

bb.vk:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2067
  store ptr %i.dnj, ptr %.0.i6.i2069, align 8, !tbaa !260
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.dlm, i64 72 ; 2 uses
  %i.dnr = load ptr, ptr %i.dnq, align 8, !tbaa !273
  store ptr %i.dnr, ptr %.020.i9.i2068, align 8, !tbaa !260
  store ptr %.020.i9.i2068, ptr %i.dnq, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056

.loopexit.i.i2054:                                ; preds = %bb.vg, %bb.ve, %.preheader.i.split.i2050
  %i.dns = add i32 %i.dms, 1                      ; 2 uses
  store i32 %i.dns, ptr %i.dmh, align 8, !tbaa !276
  %i.dnt = load ptr, ptr %.020.i.i2051, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2055 = icmp eq ptr %i.dnt, null
  br i1 %.not.i.i2055, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056, label %.preheader.i.split.i2050, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056: ; preds = %.loopexit.i.i2054, %.loopexit.i.us.i2074, %bb.vk, %bb.vj, %bb.vi, %bb.vc
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.dll, i64 4
  %i.dnv = load i32, ptr %i.dnu, align 4, !tbaa !173
  %i.dnw = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2077 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2077:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056
  br i1 %i.dnw, label %_ZN6id_gen7recycleEj.exit.i2058, label %bb.vl

bb.vl:                                            ; preds = %.noexc2077
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dlm, i64 96 ; 3 uses
  %i.dny = load ptr, ptr %i.dnx, align 8, !tbaa !68 ; 4 uses
  %i.dnz = icmp eq ptr %i.dny, null
  br i1 %i.dnz, label %bb.vn, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.doa = getelementptr inbounds i8, ptr %i.dny, i64 -4
  %i.dob = load i32, ptr %i.doa, align 4, !tbaa !69 ; 5 uses
  %i.doc = getelementptr inbounds i8, ptr %i.dny, i64 -8 ; 2 uses
  %i.dod = load i32, ptr %i.doc, align 4, !tbaa !69
  %i.doe = icmp eq i32 %i.dob, %i.dod
  br i1 %i.doe, label %bb.vo, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2057

bb.vn:                                            ; preds = %bb.vl
  %i.dof = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2546 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2546:                                       ; preds = %bb.vn
  store i32 2, ptr %i.dof, align 4, !tbaa !69
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dof, i64 4
  store i32 0, ptr %i.dog, align 4, !tbaa !69
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dof, i64 8 ; 2 uses
  store ptr %i.doh, ptr %i.dnx, align 8, !tbaa !68
  br label %.noexc2078

bb.vo:                                            ; preds = %bb.vm
  %i.doi = mul i32 %i.dob, 3
  %i.doj = add i32 %i.doi, 1
  %i.dok = lshr i32 %i.doj, 1                     ; 3 uses
  %i.dol = shl i32 %i.dok, 2
  %i.dom = add i32 %i.dol, 8                      ; 2 uses
  %.not.i2536 = icmp ugt i32 %i.dok, %i.dob
  br i1 %.not.i2536, label %bb.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.vp:                                            ; preds = %bb.vo
  %i.don = shl i32 %i.dob, 2
  %i.doo = add i32 %i.don, 8
  %.not27.i2545 = icmp ugt i32 %i.dom, %i.doo
  br i1 %.not27.i2545, label %bb.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.vp, %bb.vo
  %i.dop = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.doq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.doq, ptr %18, align 8, !tbaa !225
  %i.dor = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #32
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2541 unwind label %bb.vr ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2541: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store i64 0, ptr %i.doq, align 8, !tbaa !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.dor, ptr noundef nonnull align 1 dereferenceable(42) @.str.18, i64 42, i1 false)
  %i.dos = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dor, i64 42
  store i8 0, ptr %i.dot, align 1, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.dop, align 8, !tbaa !172
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dop, i64 8
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dop, i64 24
  store ptr %i.dor, ptr %i.dou, align 8, !tbaa !168
  store i64 42, ptr %i.dov, align 8, !tbaa !170
  %i.dow = getelementptr inbounds nuw i8, ptr %i.dop, i64 16
  store i64 42, ptr %i.dow, align 8, !tbaa !169
  store ptr %i.doq, ptr %18, align 8, !tbaa !168
  store i64 0, ptr %i.dos, align 8, !tbaa !169
  invoke void @__cxa_throw(ptr nonnull %i.dop, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.vt unwind label %bb.vq

bb.vq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2541
  %i.dox = landingpad { ptr, i32 }
          catch ptr null
  %i.doy = load ptr, ptr %18, align 8, !tbaa !168 ; 2 uses
  %i.doz = icmp eq ptr %i.doy, %i.doq
  br i1 %i.doz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2543, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2542: ; preds = %bb.vq
  %i.dpa = load i64, ptr %i.doq, align 8, !tbaa !170
  %i.dpb = add i64 %i.dpa, 1
  call void @_ZdlPvm(ptr noundef %i.doy, i64 noundef %i.dpb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2543

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2543: ; preds = %bb.vq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2542
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %.body2092

bb.vr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.dpc = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @__cxa_free_exception(ptr %i.dop) #29
  br label %.body2092

bb.vs:                                            ; preds = %bb.vp
  %i.dpd = zext i32 %i.dom to i64
  %i.dpe = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.doc, i64 noundef %i.dpd)
          to label %.noexc2549 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2549:                                       ; preds = %bb.vs
  %i.dpf = getelementptr inbounds nuw i8, ptr %i.dpe, i64 8 ; 2 uses
  store ptr %i.dpf, ptr %i.dnx, align 8, !tbaa !68
  store i32 %i.dok, ptr %i.dpe, align 4, !tbaa !69
  br label %.noexc2078

bb.vt:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2541
  unreachable

.noexc2078:                                       ; preds = %.noexc2549, %.noexc2546
  %.pre.i.i.i2059 = phi ptr [ %i.dpf, %.noexc2549 ], [ %i.doh, %.noexc2546 ] ; 2 uses
  %.phi.trans.insert.i.i.i2060 = getelementptr inbounds i8, ptr %.pre.i.i.i2059, i64 -4
  %.pre2.i.i.i2061 = load i32, ptr %.phi.trans.insert.i.i.i2060, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2057

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2057:    ; preds = %.noexc2078, %bb.vm
  %i.dpg = phi i32 [ %.pre2.i.i.i2061, %.noexc2078 ], [ %i.dob, %bb.vm ] ; 2 uses
  %i.dph = phi ptr [ %.pre.i.i.i2059, %.noexc2078 ], [ %i.dny, %bb.vm ] ; 2 uses
  %i.dpi = getelementptr inbounds i8, ptr %i.dph, i64 -4
  %i.dpj = zext i32 %i.dpg to i64
  %i.dpk = getelementptr inbounds nuw [4 x i8], ptr %i.dph, i64 %i.dpj
  store i32 %i.dnv, ptr %i.dpk, align 4, !tbaa !69
  %i.dpl = add i32 %i.dpg, 1
  store i32 %i.dpl, ptr %i.dpi, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2058

_ZN6id_gen7recycleEj.exit.i2058:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2057, %.noexc2077
  %i.dpm = shl i32 %.fr13.i2046, 3
  %i.dpn = add i32 %i.dpm, 20
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.dlm, i64 8
  %i.dpp = load ptr, ptr %i.dpo, align 8, !tbaa !193
  %i.dpq = zext i32 %i.dpn to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.dpp, i64 noundef %i.dpq, ptr noundef nonnull %i.dll)
          to label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1545 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1545: ; preds = %_ZN6id_gen7recycleEj.exit.i2058, %.noexc1558
  %indvars.iv.next.i1546 = add nuw nsw i64 %indvars.iv.i1544, 1 ; 2 uses
  %exitcond.not.i1547 = icmp eq i64 %indvars.iv.next.i1546, %wide.trip.count.i1543
  br i1 %exitcond.not.i1547, label %._crit_edge.i1548, label %bb.vb, !llvm.loop !35

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.vs, %bb.vn, %_ZN6id_gen7recycleEj.exit.i2058, %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2056, %bb.vb, %.preheader.i1537, %bb.uz, %bb.ur, %_ZN6id_gen7recycleEj.exit.i1550, %._crit_edge.i1548
  %lpad.loopexit.split-lp10179 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body2092

.body2092:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.vr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2543, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2088, %bb.uy
  %eh.lpad-body2093 = phi { ptr, i32 } [ %i.dkl, %bb.uy ], [ %i.dkg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2088 ], [ %i.dpc, %bb.vr ], [ %i.dox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2543 ], [ %lpad.loopexit.split-lp10179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
end_hunk_13
begin_hunk_14_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.dsd)
  %i.dse = add nuw nsw i64 %i.dsc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.drx, ptr noundef nonnull align 8 dereferenceable(1) %i.drz, i64 %i.dse, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2133: ; preds = %bb.wj
  store ptr %i.dry, ptr %i.drw, align 8, !tbaa !168
  %i.dsf = load i64, ptr %i.drz, align 8, !tbaa !170
  store i64 %i.dsf, ptr %i.drx, align 8, !tbaa !170
  %.phi.trans.insert.i2134 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %.pre.i2135 = load i64, ptr %.phi.trans.insert.i2134, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2136

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2136: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2133, %bb.wk
  %i.dsg = phi i64 [ %i.dsc, %bb.wk ], [ %.pre.i2135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2133 ]
  %i.dsh = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.dsi = getelementptr inbounds nuw i8, ptr %i.drv, i64 16
  store i64 %i.dsg, ptr %i.dsi, align 8, !tbaa !169
  store ptr %i.drz, ptr %39, align 8, !tbaa !168
  store i64 0, ptr %i.dsh, align 8, !tbaa !169
  store i8 0, ptr %i.drz, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.drv, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.wo unwind label %bb.wl

bb.wl:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2136
  %i.dsj = landingpad { ptr, i32 }
          catch ptr null
  %i.dsk = load ptr, ptr %39, align 8, !tbaa !168 ; 2 uses
  %i.dsl = icmp eq ptr %i.dsk, %i.drz
  br i1 %i.dsl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2137: ; preds = %bb.wl
  %i.dsm = load i64, ptr %i.drz, align 8, !tbaa !170
  %i.dsn = add i64 %i.dsm, 1
  call void @_ZdlPvm(ptr noundef %i.dsk, i64 noundef %i.dsn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2138: ; preds = %bb.wl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2137
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %.body2142

bb.wm:                                            ; preds = %bb.wi
  %i.dso = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  call void @__cxa_free_exception(ptr %i.drv) #29
  br label %.body2142

bb.wn:                                            ; preds = %bb.wh
  %i.dsp = zext i32 %i.drs to i64
  %i.dsq = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.dri, i64 noundef %i.dsp)
          to label %.noexc2144 unwind label %.loopexit.split-lp2919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2144:                                       ; preds = %bb.wn
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dsq, i64 8 ; 2 uses
  store ptr %i.dsr, ptr %i.drd, align 8, !tbaa !68
  store i32 %i.drq, ptr %i.dsq, align 4, !tbaa !69
  br label %.noexc1581

bb.wo:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2136
  unreachable

.noexc1581:                                       ; preds = %.noexc2144, %.noexc2141
  %.pre.i.i.i1576 = phi ptr [ %i.dsr, %.noexc2144 ], [ %i.drn, %.noexc2141 ] ; 2 uses
  %.phi.trans.insert.i.i.i1577 = getelementptr inbounds i8, ptr %.pre.i.i.i1576, i64 -4
  %.pre2.i.i.i1578 = load i32, ptr %.phi.trans.insert.i.i.i1577, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1574

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1574:    ; preds = %.noexc1581, %bb.we
  %i.dss = phi i32 [ %.pre2.i.i.i1578, %.noexc1581 ], [ %i.drh, %bb.we ] ; 2 uses
  %i.dst = phi ptr [ %.pre.i.i.i1576, %.noexc1581 ], [ %i.dre, %bb.we ] ; 2 uses
  %i.dsu = getelementptr inbounds i8, ptr %i.dst, i64 -4
  %i.dsv = zext i32 %i.dss to i64
  %i.dsw = getelementptr inbounds nuw [4 x i8], ptr %i.dst, i64 %i.dsv
  store i32 %i.drb, ptr %i.dsw, align 4, !tbaa !69
  %i.dsx = add i32 %i.dss, 1
  store i32 %i.dsx, ptr %i.dsu, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1575

_ZN6id_gen7recycleEj.exit.i1575:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1574, %.noexc1580
  %i.dsy = mul i32 %i.dqu, 24
  %i.dsz = add i32 %i.dsy, 32
  %i.dta = getelementptr inbounds nuw i8, ptr %i.dqi, i64 472
  %i.dtb = load ptr, ptr %i.dta, align 8, !tbaa !183
  %i.dtc = zext nneg i32 %i.drb to i64
  %i.dtd = getelementptr inbounds nuw [8 x i8], ptr %i.dtb, i64 %i.dtc
  store ptr null, ptr %i.dtd, align 8, !tbaa !102
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dqi, i64 464
  %i.dtf = load ptr, ptr %i.dte, align 8, !tbaa !150
  %i.dtg = getelementptr inbounds nuw i8, ptr %i.dtf, i64 8
  %i.dth = load ptr, ptr %i.dtg, align 8, !tbaa !193
  %i.dti = zext i32 %i.dsz to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.dth, i64 noundef %i.dti, ptr noundef nonnull %i.clm)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit958 unwind label %.loopexit.split-lp2919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wp:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1570, %.lr.ph.i1567
  %indvars.iv.i1569 = phi i64 [ 0, %.lr.ph.i1567 ], [ %indvars.iv.next.i1571, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1570 ] ; 3 uses
  %i.dtj = load ptr, ptr %i.dqw, align 8, !tbaa !177
  %i.dtk = getelementptr inbounds nuw [16 x i8], ptr %i.dtj, i64 %indvars.iv.i1569
  %i.dtl = load ptr, ptr %i.dqv, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.dtl, ptr noundef nonnull align 8 dereferenceable(16) %i.dtk)
          to label %.noexc1583 unwind label %.loopexit.split-lp2919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1583:                                       ; preds = %bb.wp
  %i.dtm = load ptr, ptr %i.dqx, align 8, !tbaa !175
  %i.dtn = getelementptr inbounds nuw [8 x i8], ptr %i.dtm, i64 %indvars.iv.i1569
  %i.dto = load ptr, ptr %i.dtn, align 8, !tbaa !176 ; 7 uses
  %i.dtp = load ptr, ptr %i.dqy, align 8, !tbaa !150 ; 9 uses
  %i.dtq = load i32, ptr %i.dto, align 4, !tbaa !198
  %i.dtr = add i32 %i.dtq, -1                     ; 2 uses
  store i32 %i.dtr, ptr %i.dto, align 4, !tbaa !198
  %i.dts = icmp eq i32 %i.dtr, 0
  br i1 %i.dts, label %bb.wq, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1570

bb.wq:                                            ; preds = %.noexc1583
  %i.dtt = getelementptr inbounds nuw i8, ptr %i.dto, i64 12
  %i.dtu = load i32, ptr %i.dtt, align 4, !tbaa !77
  %.fr13.i2096 = freeze i32 %i.dtu                ; 4 uses
  %i.dtv = getelementptr inbounds nuw i8, ptr %i.dtp, i64 24
  %i.dtw = getelementptr inbounds nuw i8, ptr %i.dtp, i64 44
  %i.dtx = load i32, ptr %i.dtw, align 4, !tbaa !274
  %i.dty = add i32 %i.dtx, -1
  %i.dtz = getelementptr inbounds nuw i8, ptr %i.dto, i64 16
  %i.dua = load i32, ptr %i.dtz, align 4, !tbaa !185 ; 3 uses
  %i.dub = and i32 %i.dua, %i.dty
  %i.duc = load ptr, ptr %i.dtv, align 8, !tbaa !261
  %i.dud = zext i32 %i.dub to i64
  %i.due = getelementptr inbounds nuw [16 x i8], ptr %i.duc, i64 %i.dud ; 3 uses
  %i.duf = load ptr, ptr %i.due, align 8, !tbaa !260
  %i.dug = ptrtoint ptr %i.duf to i64
  %i.duh = and i64 %i.dug, 7
  %i.dui = icmp eq i64 %i.duh, 1
  br i1 %i.dui, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2106, label %.preheader.i.i2097

.preheader.i.i2097:                               ; preds = %bb.wq
  %i.duj = getelementptr inbounds nuw i8, ptr %i.dto, i64 20
  %i.duk = getelementptr inbounds nuw i8, ptr %i.dtp, i64 56 ; 3 uses
  %.promoted.i.i2098 = load i32, ptr %i.duk, align 8 ; 2 uses
  %i.dul = icmp eq i32 %.fr13.i2096, 0
  %wide.trip.count.i.i.i.i2099 = zext i32 %.fr13.i2096 to i64
  br i1 %i.dul, label %.preheader.i.split.us.i2120, label %.preheader.i.split.i2100

.preheader.i.split.us.i2120:                      ; preds = %.preheader.i.i2097, %.loopexit.i.us.i2124
  %i.dum = phi i32 [ %i.dut, %.loopexit.i.us.i2124 ], [ %.promoted.i.i2098, %.preheader.i.i2097 ]
  %.020.i.us.i2121 = phi ptr [ %i.duu, %.loopexit.i.us.i2124 ], [ %i.due, %.preheader.i.i2097 ] ; 4 uses
  %.0.i.us.i2122 = phi ptr [ %.020.i.us.i2121, %.loopexit.i.us.i2124 ], [ null, %.preheader.i.i2097 ]
  %i.dun = getelementptr inbounds nuw i8, ptr %.020.i.us.i2121, i64 8
  %i.duo = load ptr, ptr %i.dun, align 8, !tbaa !176 ; 2 uses
  %i.dup = getelementptr inbounds nuw i8, ptr %i.duo, i64 12
  %i.duq = load i32, ptr %i.dup, align 4, !tbaa !77
  %.not.i.i.i.us.i2123 = icmp eq i32 %i.duq, 0
  br i1 %.not.i.i.i.us.i2123, label %bb.wr, label %.loopexit.i.us.i2124

bb.wr:                                            ; preds = %.preheader.i.split.us.i2120
  %i.dur = getelementptr inbounds nuw i8, ptr %i.duo, i64 16
  %i.dus = load i32, ptr %i.dur, align 4, !tbaa !185
  %.not14.i.i.i.us.i2126 = icmp eq i32 %i.dus, %i.dua
  br i1 %.not14.i.i.i.us.i2126, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2117, label %.loopexit.i.us.i2124

.loopexit.i.us.i2124:                             ; preds = %bb.wr, %.preheader.i.split.us.i2120
  %i.dut = add i32 %i.dum, 1                      ; 2 uses
  store i32 %i.dut, ptr %i.duk, align 8, !tbaa !276
  %i.duu = load ptr, ptr %.020.i.us.i2121, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2125 = icmp eq ptr %i.duu, null
  br i1 %.not.i.us.i2125, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2106, label %.preheader.i.split.us.i2120, !llvm.loop !31

.preheader.i.split.i2100:                         ; preds = %.preheader.i.i2097, %.loopexit.i.i2104
  %i.duv = phi i32 [ %i.dvv, %.loopexit.i.i2104 ], [ %.promoted.i.i2098, %.preheader.i.i2097 ]
  %.020.i.i2101 = phi ptr [ %i.dvw, %.loopexit.i.i2104 ], [ %i.due, %.preheader.i.i2097 ] ; 4 uses
  %.0.i.i2102 = phi ptr [ %.020.i.i2101, %.loopexit.i.i2104 ], [ null, %.preheader.i.i2097 ]
  %i.duw = getelementptr inbounds nuw i8, ptr %.020.i.i2101, i64 8
  %i.dux = load ptr, ptr %i.duw, align 8, !tbaa !176 ; 3 uses
  %i.duy = getelementptr inbounds nuw i8, ptr %i.dux, i64 12
  %i.duz = load i32, ptr %i.duy, align 4, !tbaa !77
  %.not.i.i.i.i2103 = icmp eq i32 %i.duz, %.fr13.i2096
  br i1 %.not.i.i.i.i2103, label %bb.ws, label %.loopexit.i.i2104

bb.ws:                                            ; preds = %.preheader.i.split.i2100
  %i.dva = getelementptr inbounds nuw i8, ptr %i.dux, i64 16
  %i.dvb = load i32, ptr %i.dva, align 4, !tbaa !185
  %.not14.i.i.i.i2112 = icmp eq i32 %i.dvb, %i.dua
  br i1 %.not14.i.i.i.i2112, label %.preheader.i.i.i.i2113, label %.loopexit.i.i2104

.preheader.i.i.i.i2113:                           ; preds = %bb.ws
  %i.dvc = getelementptr inbounds nuw i8, ptr %i.dux, i64 20
  br label %bb.wu

bb.wt:                                            ; preds = %bb.wu
  %indvars.iv.next.i.i.i.i2115 = add nuw nsw i64 %indvars.iv.i.i.i.i2114, 1 ; 2 uses
  %exitcond.not.i.i.i.i2116 = icmp eq i64 %indvars.iv.next.i.i.i.i2115, %wide.trip.count.i.i.i.i2099
  br i1 %exitcond.not.i.i.i.i2116, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2117, label %bb.wu, !llvm.loop !17

bb.wu:                                            ; preds = %bb.wt, %.preheader.i.i.i.i2113
  %indvars.iv.i.i.i.i2114 = phi i64 [ 0, %.preheader.i.i.i.i2113 ], [ %indvars.iv.next.i.i.i.i2115, %bb.wt ] ; 3 uses
  %i.dvd = getelementptr inbounds nuw [8 x i8], ptr %i.dvc, i64 %indvars.iv.i.i.i.i2114
  %i.dve = getelementptr inbounds nuw [8 x i8], ptr %i.duj, i64 %indvars.iv.i.i.i.i2114
  %i.dvf = load <2 x i32>, ptr %i.dvd, align 4
  %i.dvg = load <2 x i32>, ptr %i.dve, align 4
  %i.dvh = icmp eq <2 x i32> %i.dvf, %i.dvg       ; 2 uses
  %122 = extractelement <2 x i1> %i.dvh, i64 0
  %123 = extractelement <2 x i1> %i.dvh, i64 1
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %bb.wt, label %.loopexit.i.i2104

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2117: ; preds = %bb.wr, %bb.wt
  %.020.i9.i2118 = phi ptr [ %.020.i.i2101, %bb.wt ], [ %.020.i.us.i2121, %bb.wr ] ; 5 uses
  %.0.i6.i2119 = phi ptr [ %.0.i.i2102, %bb.wt ], [ %.0.i.us.i2122, %bb.wr ] ; 2 uses
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.dtp, i64 52 ; 2 uses
  %i.dvj = load i32, ptr %i.dvi, align 4, !tbaa !277
  %i.dvk = add i32 %i.dvj, -1
  store i32 %i.dvk, ptr %i.dvi, align 4, !tbaa !277
  %i.dvl = icmp eq ptr %.0.i6.i2119, null
  %i.dvm = load ptr, ptr %.020.i9.i2118, align 8, !tbaa !260 ; 5 uses
  br i1 %i.dvl, label %bb.wv, label %bb.wy

bb.wv:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2117
  %i.dvn = icmp eq ptr %i.dvm, null
  br i1 %i.dvn, label %bb.ww, label %bb.wx

bb.ww:                                            ; preds = %bb.wv
  %i.dvo = getelementptr inbounds nuw i8, ptr %i.dtp, i64 48 ; 2 uses
  %i.dvp = load i32, ptr %i.dvo, align 8, !tbaa !281
  %i.dvq = add i32 %i.dvp, -1
  store i32 %i.dvq, ptr %i.dvo, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2118, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2106

bb.wx:                                            ; preds = %bb.wv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2118, ptr noundef nonnull align 8 dereferenceable(16) %i.dvm, i64 16, i1 false), !tbaa.struct !279
  %i.dvr = getelementptr inbounds nuw i8, ptr %i.dtp, i64 72 ; 2 uses
  %i.dvs = load ptr, ptr %i.dvr, align 8, !tbaa !273
  store ptr %i.dvs, ptr %i.dvm, align 8, !tbaa !260
  store ptr %i.dvm, ptr %i.dvr, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2106

bb.wy:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2117
  store ptr %i.dvm, ptr %.0.i6.i2119, align 8, !tbaa !260
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dtp, i64 72 ; 2 uses
  %i.dvu = load ptr, ptr %i.dvt, align 8, !tbaa !273
  store ptr %i.dvu, ptr %.020.i9.i2118, align 8, !tbaa !260
  store ptr %.020.i9.i2118, ptr %i.dvt, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2106

.loopexit.i.i2104:                                ; preds = %bb.wu, %bb.ws, %.preheader.i.split.i2100
  %i.dvv = add i32 %i.duv, 1                      ; 2 uses
  store i32 %i.dvv, ptr %i.duk, align 8, !tbaa !276
  %i.dvw = load ptr, ptr %.020.i.i2101, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2105 = icmp eq ptr %i.dvw, null
  br i1 %.not.i.i2105, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2106, label %.preheader.i.split.i2100, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2106: ; preds = %.loopexit.i.i2104, %.loopexit.i.us.i2124, %bb.wy, %bb.wx, %bb.ww, %bb.wq
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dto, i64 4
  %i.dvy = load i32, ptr %i.dvx, align 4, !tbaa !173
  %i.dvz = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2127 unwind label %.loopexit.split-lp2919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2127:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2106
  br i1 %i.dvz, label %_ZN6id_gen7recycleEj.exit.i2108, label %bb.wz

bb.wz:                                            ; preds = %.noexc2127
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dtp, i64 96 ; 3 uses
  %i.dwb = load ptr, ptr %i.dwa, align 8, !tbaa !68 ; 4 uses
  %i.dwc = icmp eq ptr %i.dwb, null
  br i1 %i.dwc, label %bb.xb, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.dwd = getelementptr inbounds i8, ptr %i.dwb, i64 -4
  %i.dwe = load i32, ptr %i.dwd, align 4, !tbaa !69 ; 5 uses
  %i.dwf = getelementptr inbounds i8, ptr %i.dwb, i64 -8 ; 2 uses
  %i.dwg = load i32, ptr %i.dwf, align 4, !tbaa !69
  %i.dwh = icmp eq i32 %i.dwe, %i.dwg
  br i1 %i.dwh, label %bb.xc, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2107

bb.xb:                                            ; preds = %bb.wz
  %i.dwi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2561 unwind label %.loopexit.split-lp2919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2561:                                       ; preds = %bb.xb
  store i32 2, ptr %i.dwi, align 4, !tbaa !69
  %i.dwj = getelementptr inbounds nuw i8, ptr %i.dwi, i64 4
  store i32 0, ptr %i.dwj, align 4, !tbaa !69
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dwi, i64 8 ; 2 uses
  store ptr %i.dwk, ptr %i.dwa, align 8, !tbaa !68
  br label %.noexc2128

bb.xc:                                            ; preds = %bb.xa
  %i.dwl = mul i32 %i.dwe, 3
  %i.dwm = add i32 %i.dwl, 1
  %i.dwn = lshr i32 %i.dwm, 1                     ; 3 uses
  %i.dwo = shl i32 %i.dwn, 2
  %i.dwp = add i32 %i.dwo, 8                      ; 2 uses
  %.not.i2551 = icmp ugt i32 %i.dwn, %i.dwe
  br i1 %.not.i2551, label %bb.xd, label %bb.xe

bb.xd:                                            ; preds = %bb.xc
  %i.dwq = shl i32 %i.dwe, 2
  %i.dwr = add i32 %i.dwq, 8
  %.not27.i2560 = icmp ugt i32 %i.dwp, %i.dwr
  br i1 %.not27.i2560, label %bb.xj, label %bb.xe

bb.xe:                                            ; preds = %bb.xd, %bb.xc
  %i.dws = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.xf unwind label %bb.xi

bb.xf:                                            ; preds = %bb.xe
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.dws, align 8, !tbaa !172
  %i.dwt = getelementptr inbounds nuw i8, ptr %i.dws, i64 8 ; 2 uses
  %i.dwu = getelementptr inbounds nuw i8, ptr %i.dws, i64 24 ; 3 uses
  store ptr %i.dwu, ptr %i.dwt, align 8, !tbaa !225
  %i.dwv = load ptr, ptr %16, align 8, !tbaa !168 ; 2 uses
  %i.dww = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.dwx = icmp eq ptr %i.dwv, %i.dww
  br i1 %i.dwx, label %bb.xg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2553

bb.xg:                                            ; preds = %bb.xf
  %i.dwy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dwz = load i64, ptr %i.dwy, align 8, !tbaa !169 ; 3 uses
  %i.dxa = icmp ult i64 %i.dwz, 16
  call void @llvm.assume(i1 %i.dxa)
  %i.dxb = add nuw nsw i64 %i.dwz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dwu, ptr noundef nonnull align 8 dereferenceable(1) %i.dww, i64 %i.dxb, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2553: ; preds = %bb.xf
  store ptr %i.dwv, ptr %i.dwt, align 8, !tbaa !168
  %i.dxc = load i64, ptr %i.dww, align 8, !tbaa !170
  store i64 %i.dxc, ptr %i.dwu, align 8, !tbaa !170
  %.phi.trans.insert.i2554 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre.i2555 = load i64, ptr %.phi.trans.insert.i2554, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2556

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2556: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2553, %bb.xg
  %i.dxd = phi i64 [ %i.dwz, %bb.xg ], [ %.pre.i2555, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2553 ]
  %i.dxe = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dxf = getelementptr inbounds nuw i8, ptr %i.dws, i64 16
  store i64 %i.dxd, ptr %i.dxf, align 8, !tbaa !169
  store ptr %i.dww, ptr %16, align 8, !tbaa !168
  store i64 0, ptr %i.dxe, align 8, !tbaa !169
  store i8 0, ptr %i.dww, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.dws, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.xk unwind label %bb.xh

bb.xh:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2556
  %i.dxg = landingpad { ptr, i32 }
          catch ptr null
  %i.dxh = load ptr, ptr %16, align 8, !tbaa !168 ; 2 uses
  %i.dxi = icmp eq ptr %i.dxh, %i.dww
  br i1 %i.dxi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2558, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2557

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2557: ; preds = %bb.xh
  %i.dxj = load i64, ptr %i.dww, align 8, !tbaa !170
  %i.dxk = add i64 %i.dxj, 1
  call void @_ZdlPvm(ptr noundef %i.dxh, i64 noundef %i.dxk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2558

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2558: ; preds = %bb.xh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2557
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %.body2142

bb.xi:                                            ; preds = %bb.xe
  %i.dxl = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @__cxa_free_exception(ptr %i.dws) #29
  br label %.body2142

bb.xj:                                            ; preds = %bb.xd
  %i.dxm = zext i32 %i.dwp to i64
  %i.dxn = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.dwf, i64 noundef %i.dxm)
          to label %.noexc2564 unwind label %.loopexit.split-lp2919.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2564:                                       ; preds = %bb.xj
  %i.dxo = getelementptr inbounds nuw i8, ptr %i.dxn, i64 8 ; 2 uses
  store ptr %i.dxo, ptr %i.dwa, align 8, !tbaa !68
  store i32 %i.dwn, ptr %i.dxn, align 4, !tbaa !69
  br label %.noexc2128

bb.xk:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2556
  unreachable

.noexc2128:                                       ; preds = %.noexc2564, %.noexc2561
  %.pre.i.i.i2109 = phi ptr [ %i.dxo, %.noexc2564 ], [ %i.dwk, %.noexc2561 ] ; 2 uses
  %.phi.trans.insert.i.i.i2110 = getelementptr inbounds i8, ptr %.pre.i.i.i2109, i64 -4
  %.pre2.i.i.i2111 = load i32, ptr %.phi.trans.insert.i.i.i2110, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2107

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2107:    ; preds = %.noexc2128, %bb.xa
  %i.dxp = phi i32 [ %.pre2.i.i.i2111, %.noexc2128 ], [ %i.dwe, %bb.xa ] ; 2 uses
  %i.dxq = phi ptr [ %.pre.i.i.i2109, %.noexc2128 ], [ %i.dwb, %bb.xa ] ; 2 uses
  %i.dxr = getelementptr inbounds i8, ptr %i.dxq, i64 -4
  %i.dxs = zext i32 %i.dxp to i64
  %i.dxt = getelementptr inbounds nuw [4 x i8], ptr %i.dxq, i64 %i.dxs
  store i32 %i.dvy, ptr %i.dxt, align 4, !tbaa !69
  %i.dxu = add i32 %i.dxp, 1
  store i32 %i.dxu, ptr %i.dxr, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2108

end_hunk_14
begin_hunk_15_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.dzy)
  %i.dzz = add nuw nsw i64 %i.dzx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dzs, ptr noundef nonnull align 8 dereferenceable(1) %i.dzu, i64 %i.dzz, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2183: ; preds = %bb.xs
  store ptr %i.dzt, ptr %i.dzr, align 8, !tbaa !168
  %i.eaa = load i64, ptr %i.dzu, align 8, !tbaa !170
  store i64 %i.eaa, ptr %i.dzs, align 8, !tbaa !170
  %.phi.trans.insert.i2184 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %.pre.i2185 = load i64, ptr %.phi.trans.insert.i2184, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2186

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2186: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2183, %bb.xt
  %i.eab = phi i64 [ %i.dzx, %bb.xt ], [ %.pre.i2185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2183 ]
  %i.eac = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ead = getelementptr inbounds nuw i8, ptr %i.dzq, i64 16
  store i64 %i.eab, ptr %i.ead, align 8, !tbaa !169
  store ptr %i.dzu, ptr %37, align 8, !tbaa !168
  store i64 0, ptr %i.eac, align 8, !tbaa !169
  store i8 0, ptr %i.dzu, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.dzq, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.xx unwind label %bb.xu

bb.xu:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2186
  %i.eae = landingpad { ptr, i32 }
          catch ptr null
  %i.eaf = load ptr, ptr %37, align 8, !tbaa !168 ; 2 uses
  %i.eag = icmp eq ptr %i.eaf, %i.dzu
  br i1 %i.eag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2187: ; preds = %bb.xu
  %i.eah = load i64, ptr %i.dzu, align 8, !tbaa !170
  %i.eai = add i64 %i.eah, 1
  call void @_ZdlPvm(ptr noundef %i.eaf, i64 noundef %i.eai) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2188: ; preds = %bb.xu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2187
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  br label %.body2192

bb.xv:                                            ; preds = %bb.xr
  %i.eaj = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  call void @__cxa_free_exception(ptr %i.dzq) #29
  br label %.body2192

bb.xw:                                            ; preds = %bb.xq
  %i.eak = zext i32 %i.dzn to i64
  %i.eal = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.dzd, i64 noundef %i.eak)
          to label %.noexc2194 unwind label %.loopexit.split-lp2912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2194:                                       ; preds = %bb.xw
  %i.eam = getelementptr inbounds nuw i8, ptr %i.eal, i64 8 ; 2 uses
  store ptr %i.eam, ptr %i.dyy, align 8, !tbaa !68
  store i32 %i.dzl, ptr %i.eal, align 4, !tbaa !69
  br label %.noexc1606

bb.xx:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2186
  unreachable

.noexc1606:                                       ; preds = %.noexc2194, %.noexc2191
  %.pre.i.i.i1601 = phi ptr [ %i.eam, %.noexc2194 ], [ %i.dzi, %.noexc2191 ] ; 2 uses
  %.phi.trans.insert.i.i.i1602 = getelementptr inbounds i8, ptr %.pre.i.i.i1601, i64 -4
  %.pre2.i.i.i1603 = load i32, ptr %.phi.trans.insert.i.i.i1602, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1599

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1599:    ; preds = %.noexc1606, %bb.xn
  %i.ean = phi i32 [ %.pre2.i.i.i1603, %.noexc1606 ], [ %i.dzc, %bb.xn ] ; 2 uses
  %i.eao = phi ptr [ %.pre.i.i.i1601, %.noexc1606 ], [ %i.dyz, %bb.xn ] ; 2 uses
  %i.eap = getelementptr inbounds i8, ptr %i.eao, i64 -4
  %i.eaq = zext i32 %i.ean to i64
  %i.ear = getelementptr inbounds nuw [4 x i8], ptr %i.eao, i64 %i.eaq
  store i32 %i.dyw, ptr %i.ear, align 4, !tbaa !69
  %i.eas = add i32 %i.ean, 1
  store i32 %i.eas, ptr %i.eap, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1600

_ZN6id_gen7recycleEj.exit.i1600:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1599, %.noexc1605
  %i.eat = mul i32 %i.dyp, 24
  %i.eau = add i32 %i.eat, 32
  %i.eav = getelementptr inbounds nuw i8, ptr %i.dyd, i64 472
  %i.eaw = load ptr, ptr %i.eav, align 8, !tbaa !183
  %i.eax = zext nneg i32 %i.dyw to i64
  %i.eay = getelementptr inbounds nuw [8 x i8], ptr %i.eaw, i64 %i.eax
  store ptr null, ptr %i.eay, align 8, !tbaa !102
  %i.eaz = getelementptr inbounds nuw i8, ptr %i.dyd, i64 464
  %i.eba = load ptr, ptr %i.eaz, align 8, !tbaa !150
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.eba, i64 8
  %i.ebc = load ptr, ptr %i.ebb, align 8, !tbaa !193
  %i.ebd = zext i32 %i.eau to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ebc, i64 noundef %i.ebd, ptr noundef nonnull %i.dyb)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit961 unwind label %.loopexit.split-lp2912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.xy:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1595, %.lr.ph.i1592
  %indvars.iv.i1594 = phi i64 [ 0, %.lr.ph.i1592 ], [ %indvars.iv.next.i1596, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1595 ] ; 3 uses
  %i.ebe = load ptr, ptr %i.dyr, align 8, !tbaa !177
  %i.ebf = getelementptr inbounds nuw [16 x i8], ptr %i.ebe, i64 %indvars.iv.i1594
  %i.ebg = load ptr, ptr %i.dyq, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ebg, ptr noundef nonnull align 8 dereferenceable(16) %i.ebf)
          to label %.noexc1608 unwind label %.loopexit.split-lp2912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1608:                                       ; preds = %bb.xy
  %i.ebh = load ptr, ptr %i.dys, align 8, !tbaa !175
  %i.ebi = getelementptr inbounds nuw [8 x i8], ptr %i.ebh, i64 %indvars.iv.i1594
  %i.ebj = load ptr, ptr %i.ebi, align 8, !tbaa !176 ; 7 uses
  %i.ebk = load ptr, ptr %i.dyt, align 8, !tbaa !150 ; 9 uses
  %i.ebl = load i32, ptr %i.ebj, align 4, !tbaa !198
  %i.ebm = add i32 %i.ebl, -1                     ; 2 uses
  store i32 %i.ebm, ptr %i.ebj, align 4, !tbaa !198
  %i.ebn = icmp eq i32 %i.ebm, 0
  br i1 %i.ebn, label %bb.xz, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1595

bb.xz:                                            ; preds = %.noexc1608
  %i.ebo = getelementptr inbounds nuw i8, ptr %i.ebj, i64 12
  %i.ebp = load i32, ptr %i.ebo, align 4, !tbaa !77
  %.fr13.i2146 = freeze i32 %i.ebp                ; 4 uses
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.ebk, i64 24
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.ebk, i64 44
  %i.ebs = load i32, ptr %i.ebr, align 4, !tbaa !274
  %i.ebt = add i32 %i.ebs, -1
  %i.ebu = getelementptr inbounds nuw i8, ptr %i.ebj, i64 16
  %i.ebv = load i32, ptr %i.ebu, align 4, !tbaa !185 ; 3 uses
  %i.ebw = and i32 %i.ebv, %i.ebt
  %i.ebx = load ptr, ptr %i.ebq, align 8, !tbaa !261
  %i.eby = zext i32 %i.ebw to i64
  %i.ebz = getelementptr inbounds nuw [16 x i8], ptr %i.ebx, i64 %i.eby ; 3 uses
  %i.eca = load ptr, ptr %i.ebz, align 8, !tbaa !260
  %i.ecb = ptrtoint ptr %i.eca to i64
  %i.ecc = and i64 %i.ecb, 7
  %i.ecd = icmp eq i64 %i.ecc, 1
  br i1 %i.ecd, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2156, label %.preheader.i.i2147

.preheader.i.i2147:                               ; preds = %bb.xz
  %i.ece = getelementptr inbounds nuw i8, ptr %i.ebj, i64 20
  %i.ecf = getelementptr inbounds nuw i8, ptr %i.ebk, i64 56 ; 3 uses
  %.promoted.i.i2148 = load i32, ptr %i.ecf, align 8 ; 2 uses
  %i.ecg = icmp eq i32 %.fr13.i2146, 0
  %wide.trip.count.i.i.i.i2149 = zext i32 %.fr13.i2146 to i64
  br i1 %i.ecg, label %.preheader.i.split.us.i2170, label %.preheader.i.split.i2150

.preheader.i.split.us.i2170:                      ; preds = %.preheader.i.i2147, %.loopexit.i.us.i2174
  %i.ech = phi i32 [ %i.eco, %.loopexit.i.us.i2174 ], [ %.promoted.i.i2148, %.preheader.i.i2147 ]
  %.020.i.us.i2171 = phi ptr [ %i.ecp, %.loopexit.i.us.i2174 ], [ %i.ebz, %.preheader.i.i2147 ] ; 4 uses
  %.0.i.us.i2172 = phi ptr [ %.020.i.us.i2171, %.loopexit.i.us.i2174 ], [ null, %.preheader.i.i2147 ]
  %i.eci = getelementptr inbounds nuw i8, ptr %.020.i.us.i2171, i64 8
  %i.ecj = load ptr, ptr %i.eci, align 8, !tbaa !176 ; 2 uses
  %i.eck = getelementptr inbounds nuw i8, ptr %i.ecj, i64 12
  %i.ecl = load i32, ptr %i.eck, align 4, !tbaa !77
  %.not.i.i.i.us.i2173 = icmp eq i32 %i.ecl, 0
  br i1 %.not.i.i.i.us.i2173, label %bb.ya, label %.loopexit.i.us.i2174

bb.ya:                                            ; preds = %.preheader.i.split.us.i2170
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.ecj, i64 16
  %i.ecn = load i32, ptr %i.ecm, align 4, !tbaa !185
  %.not14.i.i.i.us.i2176 = icmp eq i32 %i.ecn, %i.ebv
  br i1 %.not14.i.i.i.us.i2176, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2167, label %.loopexit.i.us.i2174

.loopexit.i.us.i2174:                             ; preds = %bb.ya, %.preheader.i.split.us.i2170
  %i.eco = add i32 %i.ech, 1                      ; 2 uses
  store i32 %i.eco, ptr %i.ecf, align 8, !tbaa !276
  %i.ecp = load ptr, ptr %.020.i.us.i2171, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2175 = icmp eq ptr %i.ecp, null
  br i1 %.not.i.us.i2175, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2156, label %.preheader.i.split.us.i2170, !llvm.loop !31

.preheader.i.split.i2150:                         ; preds = %.preheader.i.i2147, %.loopexit.i.i2154
  %i.ecq = phi i32 [ %i.edq, %.loopexit.i.i2154 ], [ %.promoted.i.i2148, %.preheader.i.i2147 ]
  %.020.i.i2151 = phi ptr [ %i.edr, %.loopexit.i.i2154 ], [ %i.ebz, %.preheader.i.i2147 ] ; 4 uses
  %.0.i.i2152 = phi ptr [ %.020.i.i2151, %.loopexit.i.i2154 ], [ null, %.preheader.i.i2147 ]
  %i.ecr = getelementptr inbounds nuw i8, ptr %.020.i.i2151, i64 8
  %i.ecs = load ptr, ptr %i.ecr, align 8, !tbaa !176 ; 3 uses
  %i.ect = getelementptr inbounds nuw i8, ptr %i.ecs, i64 12
  %i.ecu = load i32, ptr %i.ect, align 4, !tbaa !77
  %.not.i.i.i.i2153 = icmp eq i32 %i.ecu, %.fr13.i2146
  br i1 %.not.i.i.i.i2153, label %bb.yb, label %.loopexit.i.i2154

bb.yb:                                            ; preds = %.preheader.i.split.i2150
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.ecs, i64 16
  %i.ecw = load i32, ptr %i.ecv, align 4, !tbaa !185
  %.not14.i.i.i.i2162 = icmp eq i32 %i.ecw, %i.ebv
  br i1 %.not14.i.i.i.i2162, label %.preheader.i.i.i.i2163, label %.loopexit.i.i2154

.preheader.i.i.i.i2163:                           ; preds = %bb.yb
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.ecs, i64 20
  br label %bb.yd

bb.yc:                                            ; preds = %bb.yd
  %indvars.iv.next.i.i.i.i2165 = add nuw nsw i64 %indvars.iv.i.i.i.i2164, 1 ; 2 uses
  %exitcond.not.i.i.i.i2166 = icmp eq i64 %indvars.iv.next.i.i.i.i2165, %wide.trip.count.i.i.i.i2149
  br i1 %exitcond.not.i.i.i.i2166, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2167, label %bb.yd, !llvm.loop !17

bb.yd:                                            ; preds = %bb.yc, %.preheader.i.i.i.i2163
  %indvars.iv.i.i.i.i2164 = phi i64 [ 0, %.preheader.i.i.i.i2163 ], [ %indvars.iv.next.i.i.i.i2165, %bb.yc ] ; 3 uses
  %i.ecy = getelementptr inbounds nuw [8 x i8], ptr %i.ecx, i64 %indvars.iv.i.i.i.i2164
  %i.ecz = getelementptr inbounds nuw [8 x i8], ptr %i.ece, i64 %indvars.iv.i.i.i.i2164
  %i.eda = load <2 x i32>, ptr %i.ecy, align 4
  %i.edb = load <2 x i32>, ptr %i.ecz, align 4
  %i.edc = icmp eq <2 x i32> %i.eda, %i.edb       ; 2 uses
  %125 = extractelement <2 x i1> %i.edc, i64 0
  %126 = extractelement <2 x i1> %i.edc, i64 1
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %bb.yc, label %.loopexit.i.i2154

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2167: ; preds = %bb.ya, %bb.yc
  %.020.i9.i2168 = phi ptr [ %.020.i.i2151, %bb.yc ], [ %.020.i.us.i2171, %bb.ya ] ; 5 uses
  %.0.i6.i2169 = phi ptr [ %.0.i.i2152, %bb.yc ], [ %.0.i.us.i2172, %bb.ya ] ; 2 uses
  %i.edd = getelementptr inbounds nuw i8, ptr %i.ebk, i64 52 ; 2 uses
  %i.ede = load i32, ptr %i.edd, align 4, !tbaa !277
  %i.edf = add i32 %i.ede, -1
  store i32 %i.edf, ptr %i.edd, align 4, !tbaa !277
  %i.edg = icmp eq ptr %.0.i6.i2169, null
  %i.edh = load ptr, ptr %.020.i9.i2168, align 8, !tbaa !260 ; 5 uses
  br i1 %i.edg, label %bb.ye, label %bb.yh

bb.ye:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2167
  %i.edi = icmp eq ptr %i.edh, null
  br i1 %i.edi, label %bb.yf, label %bb.yg

bb.yf:                                            ; preds = %bb.ye
  %i.edj = getelementptr inbounds nuw i8, ptr %i.ebk, i64 48 ; 2 uses
  %i.edk = load i32, ptr %i.edj, align 8, !tbaa !281
  %i.edl = add i32 %i.edk, -1
  store i32 %i.edl, ptr %i.edj, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2168, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2156

bb.yg:                                            ; preds = %bb.ye
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2168, ptr noundef nonnull align 8 dereferenceable(16) %i.edh, i64 16, i1 false), !tbaa.struct !279
  %i.edm = getelementptr inbounds nuw i8, ptr %i.ebk, i64 72 ; 2 uses
  %i.edn = load ptr, ptr %i.edm, align 8, !tbaa !273
  store ptr %i.edn, ptr %i.edh, align 8, !tbaa !260
  store ptr %i.edh, ptr %i.edm, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2156

bb.yh:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2167
  store ptr %i.edh, ptr %.0.i6.i2169, align 8, !tbaa !260
  %i.edo = getelementptr inbounds nuw i8, ptr %i.ebk, i64 72 ; 2 uses
  %i.edp = load ptr, ptr %i.edo, align 8, !tbaa !273
  store ptr %i.edp, ptr %.020.i9.i2168, align 8, !tbaa !260
  store ptr %.020.i9.i2168, ptr %i.edo, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2156

.loopexit.i.i2154:                                ; preds = %bb.yd, %bb.yb, %.preheader.i.split.i2150
  %i.edq = add i32 %i.ecq, 1                      ; 2 uses
  store i32 %i.edq, ptr %i.ecf, align 8, !tbaa !276
  %i.edr = load ptr, ptr %.020.i.i2151, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2155 = icmp eq ptr %i.edr, null
  br i1 %.not.i.i2155, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2156, label %.preheader.i.split.i2150, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2156: ; preds = %.loopexit.i.i2154, %.loopexit.i.us.i2174, %bb.yh, %bb.yg, %bb.yf, %bb.xz
  %i.eds = getelementptr inbounds nuw i8, ptr %i.ebj, i64 4
  %i.edt = load i32, ptr %i.eds, align 4, !tbaa !173
  %i.edu = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2177 unwind label %.loopexit.split-lp2912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2177:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2156
  br i1 %i.edu, label %_ZN6id_gen7recycleEj.exit.i2158, label %bb.yi

bb.yi:                                            ; preds = %.noexc2177
  %i.edv = getelementptr inbounds nuw i8, ptr %i.ebk, i64 96 ; 3 uses
  %i.edw = load ptr, ptr %i.edv, align 8, !tbaa !68 ; 4 uses
  %i.edx = icmp eq ptr %i.edw, null
  br i1 %i.edx, label %bb.yk, label %bb.yj

bb.yj:                                            ; preds = %bb.yi
  %i.edy = getelementptr inbounds i8, ptr %i.edw, i64 -4
  %i.edz = load i32, ptr %i.edy, align 4, !tbaa !69 ; 5 uses
  %i.eea = getelementptr inbounds i8, ptr %i.edw, i64 -8 ; 2 uses
  %i.eeb = load i32, ptr %i.eea, align 4, !tbaa !69
  %i.eec = icmp eq i32 %i.edz, %i.eeb
  br i1 %i.eec, label %bb.yl, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2157

bb.yk:                                            ; preds = %bb.yi
  %i.eed = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2576 unwind label %.loopexit.split-lp2912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2576:                                       ; preds = %bb.yk
  store i32 2, ptr %i.eed, align 4, !tbaa !69
  %i.eee = getelementptr inbounds nuw i8, ptr %i.eed, i64 4
  store i32 0, ptr %i.eee, align 4, !tbaa !69
  %i.eef = getelementptr inbounds nuw i8, ptr %i.eed, i64 8 ; 2 uses
  store ptr %i.eef, ptr %i.edv, align 8, !tbaa !68
  br label %.noexc2178

bb.yl:                                            ; preds = %bb.yj
  %i.eeg = mul i32 %i.edz, 3
  %i.eeh = add i32 %i.eeg, 1
  %i.eei = lshr i32 %i.eeh, 1                     ; 3 uses
  %i.eej = shl i32 %i.eei, 2
  %i.eek = add i32 %i.eej, 8                      ; 2 uses
  %.not.i2566 = icmp ugt i32 %i.eei, %i.edz
  br i1 %.not.i2566, label %bb.ym, label %bb.yn

bb.ym:                                            ; preds = %bb.yl
  %i.eel = shl i32 %i.edz, 2
  %i.eem = add i32 %i.eel, 8
  %.not27.i2575 = icmp ugt i32 %i.eek, %i.eem
  br i1 %.not27.i2575, label %bb.ys, label %bb.yn

bb.yn:                                            ; preds = %bb.ym, %bb.yl
  %i.een = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.yo unwind label %bb.yr

bb.yo:                                            ; preds = %bb.yn
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.een, align 8, !tbaa !172
  %i.eeo = getelementptr inbounds nuw i8, ptr %i.een, i64 8 ; 2 uses
  %i.eep = getelementptr inbounds nuw i8, ptr %i.een, i64 24 ; 3 uses
  store ptr %i.eep, ptr %i.eeo, align 8, !tbaa !225
  %i.eeq = load ptr, ptr %14, align 8, !tbaa !168 ; 2 uses
  %i.eer = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.ees = icmp eq ptr %i.eeq, %i.eer
  br i1 %i.ees, label %bb.yp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2568

bb.yp:                                            ; preds = %bb.yo
  %i.eet = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.eeu = load i64, ptr %i.eet, align 8, !tbaa !169 ; 3 uses
  %i.eev = icmp ult i64 %i.eeu, 16
  call void @llvm.assume(i1 %i.eev)
  %i.eew = add nuw nsw i64 %i.eeu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eep, ptr noundef nonnull align 8 dereferenceable(1) %i.eer, i64 %i.eew, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2568: ; preds = %bb.yo
  store ptr %i.eeq, ptr %i.eeo, align 8, !tbaa !168
  %i.eex = load i64, ptr %i.eer, align 8, !tbaa !170
  store i64 %i.eex, ptr %i.eep, align 8, !tbaa !170
  %.phi.trans.insert.i2569 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre.i2570 = load i64, ptr %.phi.trans.insert.i2569, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2571

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2571: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2568, %bb.yp
  %i.eey = phi i64 [ %i.eeu, %bb.yp ], [ %.pre.i2570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2568 ]
  %i.eez = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.efa = getelementptr inbounds nuw i8, ptr %i.een, i64 16
  store i64 %i.eey, ptr %i.efa, align 8, !tbaa !169
  store ptr %i.eer, ptr %14, align 8, !tbaa !168
  store i64 0, ptr %i.eez, align 8, !tbaa !169
  store i8 0, ptr %i.eer, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.een, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.yt unwind label %bb.yq

bb.yq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2571
  %i.efb = landingpad { ptr, i32 }
          catch ptr null
  %i.efc = load ptr, ptr %14, align 8, !tbaa !168 ; 2 uses
  %i.efd = icmp eq ptr %i.efc, %i.eer
  br i1 %i.efd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2573, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2572: ; preds = %bb.yq
  %i.efe = load i64, ptr %i.eer, align 8, !tbaa !170
  %i.eff = add i64 %i.efe, 1
  call void @_ZdlPvm(ptr noundef %i.efc, i64 noundef %i.eff) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2573

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2573: ; preds = %bb.yq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2572
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %.body2192

bb.yr:                                            ; preds = %bb.yn
  %i.efg = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @__cxa_free_exception(ptr %i.een) #29
  br label %.body2192

bb.ys:                                            ; preds = %bb.ym
  %i.efh = zext i32 %i.eek to i64
  %i.efi = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.eea, i64 noundef %i.efh)
          to label %.noexc2579 unwind label %.loopexit.split-lp2912.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2579:                                       ; preds = %bb.ys
  %i.efj = getelementptr inbounds nuw i8, ptr %i.efi, i64 8 ; 2 uses
  store ptr %i.efj, ptr %i.edv, align 8, !tbaa !68
  store i32 %i.eei, ptr %i.efi, align 4, !tbaa !69
  br label %.noexc2178

bb.yt:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2571
  unreachable

.noexc2178:                                       ; preds = %.noexc2579, %.noexc2576
  %.pre.i.i.i2159 = phi ptr [ %i.efj, %.noexc2579 ], [ %i.eef, %.noexc2576 ] ; 2 uses
  %.phi.trans.insert.i.i.i2160 = getelementptr inbounds i8, ptr %.pre.i.i.i2159, i64 -4
  %.pre2.i.i.i2161 = load i32, ptr %.phi.trans.insert.i.i.i2160, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2157

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2157:    ; preds = %.noexc2178, %bb.yj
  %i.efk = phi i32 [ %.pre2.i.i.i2161, %.noexc2178 ], [ %i.edz, %bb.yj ] ; 2 uses
  %i.efl = phi ptr [ %.pre.i.i.i2159, %.noexc2178 ], [ %i.edw, %bb.yj ] ; 2 uses
  %i.efm = getelementptr inbounds i8, ptr %i.efl, i64 -4
  %i.efn = zext i32 %i.efk to i64
  %i.efo = getelementptr inbounds nuw [4 x i8], ptr %i.efl, i64 %i.efn
  store i32 %i.edt, ptr %i.efo, align 4, !tbaa !69
  %i.efp = add i32 %i.efk, 1
  store i32 %i.efp, ptr %i.efm, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2158

end_hunk_15
begin_hunk_16_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.eht)
  %i.ehu = add nuw nsw i64 %i.ehs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ehn, ptr noundef nonnull align 8 dereferenceable(1) %i.ehp, i64 %i.ehu, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2233: ; preds = %bb.zc
  store ptr %i.eho, ptr %i.ehm, align 8, !tbaa !168
  %i.ehv = load i64, ptr %i.ehp, align 8, !tbaa !170
  store i64 %i.ehv, ptr %i.ehn, align 8, !tbaa !170
  %.phi.trans.insert.i2234 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.pre.i2235 = load i64, ptr %.phi.trans.insert.i2234, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2236

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2236: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2233, %bb.zd
  %i.ehw = phi i64 [ %i.ehs, %bb.zd ], [ %.pre.i2235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2233 ]
  %i.ehx = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ehy = getelementptr inbounds nuw i8, ptr %i.ehl, i64 16
  store i64 %i.ehw, ptr %i.ehy, align 8, !tbaa !169
  store ptr %i.ehp, ptr %35, align 8, !tbaa !168
  store i64 0, ptr %i.ehx, align 8, !tbaa !169
  store i8 0, ptr %i.ehp, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.ehl, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.zh unwind label %bb.ze

bb.ze:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2236
  %i.ehz = landingpad { ptr, i32 }
          catch ptr null
  %i.eia = load ptr, ptr %35, align 8, !tbaa !168 ; 2 uses
  %i.eib = icmp eq ptr %i.eia, %i.ehp
  br i1 %i.eib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2237: ; preds = %bb.ze
  %i.eic = load i64, ptr %i.ehp, align 8, !tbaa !170
  %i.eid = add i64 %i.eic, 1
  call void @_ZdlPvm(ptr noundef %i.eia, i64 noundef %i.eid) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2238: ; preds = %bb.ze, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2237
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  br label %.body2242

bb.zf:                                            ; preds = %bb.zb
  %i.eie = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @__cxa_free_exception(ptr %i.ehl) #29
  br label %.body2242

bb.zg:                                            ; preds = %bb.za
  %i.eif = zext i32 %i.ehi to i64
  %i.eig = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.egy, i64 noundef %i.eif)
          to label %.noexc2244 unwind label %.loopexit.split-lp2905.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2244:                                       ; preds = %bb.zg
  %i.eih = getelementptr inbounds nuw i8, ptr %i.eig, i64 8 ; 2 uses
  store ptr %i.eih, ptr %i.egt, align 8, !tbaa !68
  store i32 %i.ehg, ptr %i.eig, align 4, !tbaa !69
  br label %.noexc1631

bb.zh:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2236
  unreachable

.noexc1631:                                       ; preds = %.noexc2244, %.noexc2241
  %.pre.i.i.i1626 = phi ptr [ %i.eih, %.noexc2244 ], [ %i.ehd, %.noexc2241 ] ; 2 uses
  %.phi.trans.insert.i.i.i1627 = getelementptr inbounds i8, ptr %.pre.i.i.i1626, i64 -4
  %.pre2.i.i.i1628 = load i32, ptr %.phi.trans.insert.i.i.i1627, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1624

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1624:    ; preds = %.noexc1631, %bb.yx
  %i.eii = phi i32 [ %.pre2.i.i.i1628, %.noexc1631 ], [ %i.egx, %bb.yx ] ; 2 uses
  %i.eij = phi ptr [ %.pre.i.i.i1626, %.noexc1631 ], [ %i.egu, %bb.yx ] ; 2 uses
  %i.eik = getelementptr inbounds i8, ptr %i.eij, i64 -4
  %i.eil = zext i32 %i.eii to i64
  %i.eim = getelementptr inbounds nuw [4 x i8], ptr %i.eij, i64 %i.eil
  store i32 %i.egr, ptr %i.eim, align 4, !tbaa !69
  %i.ein = add i32 %i.eii, 1
  store i32 %i.ein, ptr %i.eik, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1625

_ZN6id_gen7recycleEj.exit.i1625:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1624, %.noexc1630
  %i.eio = mul i32 %i.egk, 24
  %i.eip = add i32 %i.eio, 32
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.efy, i64 472
  %i.eir = load ptr, ptr %i.eiq, align 8, !tbaa !183
  %i.eis = zext nneg i32 %i.egr to i64
  %i.eit = getelementptr inbounds nuw [8 x i8], ptr %i.eir, i64 %i.eis
  store ptr null, ptr %i.eit, align 8, !tbaa !102
  %i.eiu = getelementptr inbounds nuw i8, ptr %i.efy, i64 464
  %i.eiv = load ptr, ptr %i.eiu, align 8, !tbaa !150
  %i.eiw = getelementptr inbounds nuw i8, ptr %i.eiv, i64 8
  %i.eix = load ptr, ptr %i.eiw, align 8, !tbaa !193
  %i.eiy = zext i32 %i.eip to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.eix, i64 noundef %i.eiy, ptr noundef nonnull %i.efw)
          to label %bb.aae unwind label %.loopexit.split-lp2905.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.zi:                                            ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1620, %.lr.ph.i1617
  %indvars.iv.i1619 = phi i64 [ 0, %.lr.ph.i1617 ], [ %indvars.iv.next.i1621, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1620 ] ; 3 uses
  %i.eiz = load ptr, ptr %i.egm, align 8, !tbaa !177
  %i.eja = getelementptr inbounds nuw [16 x i8], ptr %i.eiz, i64 %indvars.iv.i1619
  %i.ejb = load ptr, ptr %i.egl, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ejb, ptr noundef nonnull align 8 dereferenceable(16) %i.eja)
          to label %.noexc1633 unwind label %.loopexit.split-lp2905.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1633:                                       ; preds = %bb.zi
  %i.ejc = load ptr, ptr %i.egn, align 8, !tbaa !175
  %i.ejd = getelementptr inbounds nuw [8 x i8], ptr %i.ejc, i64 %indvars.iv.i1619
  %i.eje = load ptr, ptr %i.ejd, align 8, !tbaa !176 ; 7 uses
  %i.ejf = load ptr, ptr %i.ego, align 8, !tbaa !150 ; 9 uses
  %i.ejg = load i32, ptr %i.eje, align 4, !tbaa !198
  %i.ejh = add i32 %i.ejg, -1                     ; 2 uses
  store i32 %i.ejh, ptr %i.eje, align 4, !tbaa !198
  %i.eji = icmp eq i32 %i.ejh, 0
  br i1 %i.eji, label %bb.zj, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1620

bb.zj:                                            ; preds = %.noexc1633
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.eje, i64 12
  %i.ejk = load i32, ptr %i.ejj, align 4, !tbaa !77
  %.fr13.i2196 = freeze i32 %i.ejk                ; 4 uses
  %i.ejl = getelementptr inbounds nuw i8, ptr %i.ejf, i64 24
  %i.ejm = getelementptr inbounds nuw i8, ptr %i.ejf, i64 44
  %i.ejn = load i32, ptr %i.ejm, align 4, !tbaa !274
  %i.ejo = add i32 %i.ejn, -1
  %i.ejp = getelementptr inbounds nuw i8, ptr %i.eje, i64 16
  %i.ejq = load i32, ptr %i.ejp, align 4, !tbaa !185 ; 3 uses
  %i.ejr = and i32 %i.ejq, %i.ejo
  %i.ejs = load ptr, ptr %i.ejl, align 8, !tbaa !261
  %i.ejt = zext i32 %i.ejr to i64
  %i.eju = getelementptr inbounds nuw [16 x i8], ptr %i.ejs, i64 %i.ejt ; 3 uses
  %i.ejv = load ptr, ptr %i.eju, align 8, !tbaa !260
  %i.ejw = ptrtoint ptr %i.ejv to i64
  %i.ejx = and i64 %i.ejw, 7
  %i.ejy = icmp eq i64 %i.ejx, 1
  br i1 %i.ejy, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2206, label %.preheader.i.i2197

.preheader.i.i2197:                               ; preds = %bb.zj
  %i.ejz = getelementptr inbounds nuw i8, ptr %i.eje, i64 20
  %i.eka = getelementptr inbounds nuw i8, ptr %i.ejf, i64 56 ; 3 uses
  %.promoted.i.i2198 = load i32, ptr %i.eka, align 8 ; 2 uses
  %i.ekb = icmp eq i32 %.fr13.i2196, 0
  %wide.trip.count.i.i.i.i2199 = zext i32 %.fr13.i2196 to i64
  br i1 %i.ekb, label %.preheader.i.split.us.i2220, label %.preheader.i.split.i2200

.preheader.i.split.us.i2220:                      ; preds = %.preheader.i.i2197, %.loopexit.i.us.i2224
  %i.ekc = phi i32 [ %i.ekj, %.loopexit.i.us.i2224 ], [ %.promoted.i.i2198, %.preheader.i.i2197 ]
  %.020.i.us.i2221 = phi ptr [ %i.ekk, %.loopexit.i.us.i2224 ], [ %i.eju, %.preheader.i.i2197 ] ; 4 uses
  %.0.i.us.i2222 = phi ptr [ %.020.i.us.i2221, %.loopexit.i.us.i2224 ], [ null, %.preheader.i.i2197 ]
  %i.ekd = getelementptr inbounds nuw i8, ptr %.020.i.us.i2221, i64 8
  %i.eke = load ptr, ptr %i.ekd, align 8, !tbaa !176 ; 2 uses
  %i.ekf = getelementptr inbounds nuw i8, ptr %i.eke, i64 12
  %i.ekg = load i32, ptr %i.ekf, align 4, !tbaa !77
  %.not.i.i.i.us.i2223 = icmp eq i32 %i.ekg, 0
  br i1 %.not.i.i.i.us.i2223, label %bb.zk, label %.loopexit.i.us.i2224

bb.zk:                                            ; preds = %.preheader.i.split.us.i2220
  %i.ekh = getelementptr inbounds nuw i8, ptr %i.eke, i64 16
  %i.eki = load i32, ptr %i.ekh, align 4, !tbaa !185
  %.not14.i.i.i.us.i2226 = icmp eq i32 %i.eki, %i.ejq
  br i1 %.not14.i.i.i.us.i2226, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2217, label %.loopexit.i.us.i2224

.loopexit.i.us.i2224:                             ; preds = %bb.zk, %.preheader.i.split.us.i2220
  %i.ekj = add i32 %i.ekc, 1                      ; 2 uses
  store i32 %i.ekj, ptr %i.eka, align 8, !tbaa !276
  %i.ekk = load ptr, ptr %.020.i.us.i2221, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2225 = icmp eq ptr %i.ekk, null
  br i1 %.not.i.us.i2225, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2206, label %.preheader.i.split.us.i2220, !llvm.loop !31

.preheader.i.split.i2200:                         ; preds = %.preheader.i.i2197, %.loopexit.i.i2204
  %i.ekl = phi i32 [ %i.ell, %.loopexit.i.i2204 ], [ %.promoted.i.i2198, %.preheader.i.i2197 ]
  %.020.i.i2201 = phi ptr [ %i.elm, %.loopexit.i.i2204 ], [ %i.eju, %.preheader.i.i2197 ] ; 4 uses
  %.0.i.i2202 = phi ptr [ %.020.i.i2201, %.loopexit.i.i2204 ], [ null, %.preheader.i.i2197 ]
  %i.ekm = getelementptr inbounds nuw i8, ptr %.020.i.i2201, i64 8
  %i.ekn = load ptr, ptr %i.ekm, align 8, !tbaa !176 ; 3 uses
  %i.eko = getelementptr inbounds nuw i8, ptr %i.ekn, i64 12
  %i.ekp = load i32, ptr %i.eko, align 4, !tbaa !77
  %.not.i.i.i.i2203 = icmp eq i32 %i.ekp, %.fr13.i2196
  br i1 %.not.i.i.i.i2203, label %bb.zl, label %.loopexit.i.i2204

bb.zl:                                            ; preds = %.preheader.i.split.i2200
  %i.ekq = getelementptr inbounds nuw i8, ptr %i.ekn, i64 16
  %i.ekr = load i32, ptr %i.ekq, align 4, !tbaa !185
  %.not14.i.i.i.i2212 = icmp eq i32 %i.ekr, %i.ejq
  br i1 %.not14.i.i.i.i2212, label %.preheader.i.i.i.i2213, label %.loopexit.i.i2204

.preheader.i.i.i.i2213:                           ; preds = %bb.zl
  %i.eks = getelementptr inbounds nuw i8, ptr %i.ekn, i64 20
  br label %bb.zn

bb.zm:                                            ; preds = %bb.zn
  %indvars.iv.next.i.i.i.i2215 = add nuw nsw i64 %indvars.iv.i.i.i.i2214, 1 ; 2 uses
  %exitcond.not.i.i.i.i2216 = icmp eq i64 %indvars.iv.next.i.i.i.i2215, %wide.trip.count.i.i.i.i2199
  br i1 %exitcond.not.i.i.i.i2216, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2217, label %bb.zn, !llvm.loop !17

bb.zn:                                            ; preds = %bb.zm, %.preheader.i.i.i.i2213
  %indvars.iv.i.i.i.i2214 = phi i64 [ 0, %.preheader.i.i.i.i2213 ], [ %indvars.iv.next.i.i.i.i2215, %bb.zm ] ; 3 uses
  %i.ekt = getelementptr inbounds nuw [8 x i8], ptr %i.eks, i64 %indvars.iv.i.i.i.i2214
  %i.eku = getelementptr inbounds nuw [8 x i8], ptr %i.ejz, i64 %indvars.iv.i.i.i.i2214
  %i.ekv = load <2 x i32>, ptr %i.ekt, align 4
  %i.ekw = load <2 x i32>, ptr %i.eku, align 4
  %i.ekx = icmp eq <2 x i32> %i.ekv, %i.ekw       ; 2 uses
  %128 = extractelement <2 x i1> %i.ekx, i64 0
  %129 = extractelement <2 x i1> %i.ekx, i64 1
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %bb.zm, label %.loopexit.i.i2204

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2217: ; preds = %bb.zk, %bb.zm
  %.020.i9.i2218 = phi ptr [ %.020.i.i2201, %bb.zm ], [ %.020.i.us.i2221, %bb.zk ] ; 5 uses
  %.0.i6.i2219 = phi ptr [ %.0.i.i2202, %bb.zm ], [ %.0.i.us.i2222, %bb.zk ] ; 2 uses
  %i.eky = getelementptr inbounds nuw i8, ptr %i.ejf, i64 52 ; 2 uses
  %i.ekz = load i32, ptr %i.eky, align 4, !tbaa !277
  %i.ela = add i32 %i.ekz, -1
  store i32 %i.ela, ptr %i.eky, align 4, !tbaa !277
  %i.elb = icmp eq ptr %.0.i6.i2219, null
  %i.elc = load ptr, ptr %.020.i9.i2218, align 8, !tbaa !260 ; 5 uses
  br i1 %i.elb, label %bb.zo, label %bb.zr

bb.zo:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2217
  %i.eld = icmp eq ptr %i.elc, null
  br i1 %i.eld, label %bb.zp, label %bb.zq

bb.zp:                                            ; preds = %bb.zo
  %i.ele = getelementptr inbounds nuw i8, ptr %i.ejf, i64 48 ; 2 uses
  %i.elf = load i32, ptr %i.ele, align 8, !tbaa !281
  %i.elg = add i32 %i.elf, -1
  store i32 %i.elg, ptr %i.ele, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2218, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2206

bb.zq:                                            ; preds = %bb.zo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2218, ptr noundef nonnull align 8 dereferenceable(16) %i.elc, i64 16, i1 false), !tbaa.struct !279
  %i.elh = getelementptr inbounds nuw i8, ptr %i.ejf, i64 72 ; 2 uses
  %i.eli = load ptr, ptr %i.elh, align 8, !tbaa !273
  store ptr %i.eli, ptr %i.elc, align 8, !tbaa !260
  store ptr %i.elc, ptr %i.elh, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2206

bb.zr:                                            ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2217
  store ptr %i.elc, ptr %.0.i6.i2219, align 8, !tbaa !260
  %i.elj = getelementptr inbounds nuw i8, ptr %i.ejf, i64 72 ; 2 uses
  %i.elk = load ptr, ptr %i.elj, align 8, !tbaa !273
  store ptr %i.elk, ptr %.020.i9.i2218, align 8, !tbaa !260
  store ptr %.020.i9.i2218, ptr %i.elj, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2206

.loopexit.i.i2204:                                ; preds = %bb.zn, %bb.zl, %.preheader.i.split.i2200
  %i.ell = add i32 %i.ekl, 1                      ; 2 uses
  store i32 %i.ell, ptr %i.eka, align 8, !tbaa !276
  %i.elm = load ptr, ptr %.020.i.i2201, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2205 = icmp eq ptr %i.elm, null
  br i1 %.not.i.i2205, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2206, label %.preheader.i.split.i2200, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2206: ; preds = %.loopexit.i.i2204, %.loopexit.i.us.i2224, %bb.zr, %bb.zq, %bb.zp, %bb.zj
  %i.eln = getelementptr inbounds nuw i8, ptr %i.eje, i64 4
  %i.elo = load i32, ptr %i.eln, align 4, !tbaa !173
  %i.elp = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2227 unwind label %.loopexit.split-lp2905.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2227:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2206
  br i1 %i.elp, label %_ZN6id_gen7recycleEj.exit.i2208, label %bb.zs

bb.zs:                                            ; preds = %.noexc2227
  %i.elq = getelementptr inbounds nuw i8, ptr %i.ejf, i64 96 ; 3 uses
  %i.elr = load ptr, ptr %i.elq, align 8, !tbaa !68 ; 4 uses
  %i.els = icmp eq ptr %i.elr, null
  br i1 %i.els, label %bb.zu, label %bb.zt

bb.zt:                                            ; preds = %bb.zs
  %i.elt = getelementptr inbounds i8, ptr %i.elr, i64 -4
  %i.elu = load i32, ptr %i.elt, align 4, !tbaa !69 ; 5 uses
  %i.elv = getelementptr inbounds i8, ptr %i.elr, i64 -8 ; 2 uses
  %i.elw = load i32, ptr %i.elv, align 4, !tbaa !69
  %i.elx = icmp eq i32 %i.elu, %i.elw
  br i1 %i.elx, label %bb.zv, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2207

bb.zu:                                            ; preds = %bb.zs
  %i.ely = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2591 unwind label %.loopexit.split-lp2905.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2591:                                       ; preds = %bb.zu
  store i32 2, ptr %i.ely, align 4, !tbaa !69
  %i.elz = getelementptr inbounds nuw i8, ptr %i.ely, i64 4
  store i32 0, ptr %i.elz, align 4, !tbaa !69
  %i.ema = getelementptr inbounds nuw i8, ptr %i.ely, i64 8 ; 2 uses
  store ptr %i.ema, ptr %i.elq, align 8, !tbaa !68
  br label %.noexc2228

bb.zv:                                            ; preds = %bb.zt
  %i.emb = mul i32 %i.elu, 3
  %i.emc = add i32 %i.emb, 1
  %i.emd = lshr i32 %i.emc, 1                     ; 3 uses
  %i.eme = shl i32 %i.emd, 2
  %i.emf = add i32 %i.eme, 8                      ; 2 uses
  %.not.i2581 = icmp ugt i32 %i.emd, %i.elu
  br i1 %.not.i2581, label %bb.zw, label %bb.zx

bb.zw:                                            ; preds = %bb.zv
  %i.emg = shl i32 %i.elu, 2
  %i.emh = add i32 %i.emg, 8
  %.not27.i2590 = icmp ugt i32 %i.emf, %i.emh
  br i1 %.not27.i2590, label %bb.aac, label %bb.zx

bb.zx:                                            ; preds = %bb.zw, %bb.zv
  %i.emi = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.zy unwind label %bb.aab

bb.zy:                                            ; preds = %bb.zx
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.emi, align 8, !tbaa !172
  %i.emj = getelementptr inbounds nuw i8, ptr %i.emi, i64 8 ; 2 uses
  %i.emk = getelementptr inbounds nuw i8, ptr %i.emi, i64 24 ; 3 uses
  store ptr %i.emk, ptr %i.emj, align 8, !tbaa !225
  %i.eml = load ptr, ptr %12, align 8, !tbaa !168 ; 2 uses
  %i.emm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.emn = icmp eq ptr %i.eml, %i.emm
  br i1 %i.emn, label %bb.zz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2583

bb.zz:                                            ; preds = %bb.zy
  %i.emo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.emp = load i64, ptr %i.emo, align 8, !tbaa !169 ; 3 uses
  %i.emq = icmp ult i64 %i.emp, 16
  call void @llvm.assume(i1 %i.emq)
  %i.emr = add nuw nsw i64 %i.emp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.emk, ptr noundef nonnull align 8 dereferenceable(1) %i.emm, i64 %i.emr, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2583: ; preds = %bb.zy
  store ptr %i.eml, ptr %i.emj, align 8, !tbaa !168
  %i.ems = load i64, ptr %i.emm, align 8, !tbaa !170
  store i64 %i.ems, ptr %i.emk, align 8, !tbaa !170
  %.phi.trans.insert.i2584 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre.i2585 = load i64, ptr %.phi.trans.insert.i2584, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2586

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2586: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2583, %bb.zz
  %i.emt = phi i64 [ %i.emp, %bb.zz ], [ %.pre.i2585, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2583 ]
  %i.emu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.emv = getelementptr inbounds nuw i8, ptr %i.emi, i64 16
  store i64 %i.emt, ptr %i.emv, align 8, !tbaa !169
  store ptr %i.emm, ptr %12, align 8, !tbaa !168
  store i64 0, ptr %i.emu, align 8, !tbaa !169
  store i8 0, ptr %i.emm, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.emi, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.aad unwind label %bb.aaa

bb.aaa:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2586
  %i.emw = landingpad { ptr, i32 }
          catch ptr null
  %i.emx = load ptr, ptr %12, align 8, !tbaa !168 ; 2 uses
  %i.emy = icmp eq ptr %i.emx, %i.emm
  br i1 %i.emy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2588, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2587

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2587: ; preds = %bb.aaa
  %i.emz = load i64, ptr %i.emm, align 8, !tbaa !170
  %i.ena = add i64 %i.emz, 1
  call void @_ZdlPvm(ptr noundef %i.emx, i64 noundef %i.ena) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2588

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2588: ; preds = %bb.aaa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2587
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.body2242

bb.aab:                                           ; preds = %bb.zx
  %i.enb = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @__cxa_free_exception(ptr %i.emi) #29
  br label %.body2242

bb.aac:                                           ; preds = %bb.zw
  %i.enc = zext i32 %i.emf to i64
  %i.end = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.elv, i64 noundef %i.enc)
          to label %.noexc2594 unwind label %.loopexit.split-lp2905.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2594:                                       ; preds = %bb.aac
  %i.ene = getelementptr inbounds nuw i8, ptr %i.end, i64 8 ; 2 uses
  store ptr %i.ene, ptr %i.elq, align 8, !tbaa !68
  store i32 %i.emd, ptr %i.end, align 4, !tbaa !69
  br label %.noexc2228

bb.aad:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2586
  unreachable

.noexc2228:                                       ; preds = %.noexc2594, %.noexc2591
  %.pre.i.i.i2209 = phi ptr [ %i.ene, %.noexc2594 ], [ %i.ema, %.noexc2591 ] ; 2 uses
  %.phi.trans.insert.i.i.i2210 = getelementptr inbounds i8, ptr %.pre.i.i.i2209, i64 -4
  %.pre2.i.i.i2211 = load i32, ptr %.phi.trans.insert.i.i.i2210, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2207

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2207:    ; preds = %.noexc2228, %bb.zt
  %i.enf = phi i32 [ %.pre2.i.i.i2211, %.noexc2228 ], [ %i.elu, %bb.zt ] ; 2 uses
  %i.eng = phi ptr [ %.pre.i.i.i2209, %.noexc2228 ], [ %i.elr, %bb.zt ] ; 2 uses
  %i.enh = getelementptr inbounds i8, ptr %i.eng, i64 -4
  %i.eni = zext i32 %i.enf to i64
  %i.enj = getelementptr inbounds nuw [4 x i8], ptr %i.eng, i64 %i.eni
  store i32 %i.elo, ptr %i.enj, align 4, !tbaa !69
  %i.enk = add i32 %i.enf, 1
  store i32 %i.enk, ptr %i.enh, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2208

end_hunk_16
begin_hunk_17_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.eqq)
  %i.eqr = add nuw nsw i64 %i.eqp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eqk, ptr noundef nonnull align 8 dereferenceable(1) %i.eqm, i64 %i.eqr, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2283: ; preds = %bb.aay
  store ptr %i.eql, ptr %i.eqj, align 8, !tbaa !168
  %i.eqs = load i64, ptr %i.eqm, align 8, !tbaa !170
  store i64 %i.eqs, ptr %i.eqk, align 8, !tbaa !170
  %.phi.trans.insert.i2284 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %.pre.i2285 = load i64, ptr %.phi.trans.insert.i2284, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2286

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2286: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2283, %bb.aaz
  %i.eqt = phi i64 [ %i.eqp, %bb.aaz ], [ %.pre.i2285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2283 ]
  %i.equ = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.eqv = getelementptr inbounds nuw i8, ptr %i.eqi, i64 16
  store i64 %i.eqt, ptr %i.eqv, align 8, !tbaa !169
  store ptr %i.eqm, ptr %33, align 8, !tbaa !168
  store i64 0, ptr %i.equ, align 8, !tbaa !169
  store i8 0, ptr %i.eqm, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.eqi, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.abd unwind label %bb.aba

bb.aba:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2286
  %i.eqw = landingpad { ptr, i32 }
          catch ptr null
  %i.eqx = load ptr, ptr %33, align 8, !tbaa !168 ; 2 uses
  %i.eqy = icmp eq ptr %i.eqx, %i.eqm
  br i1 %i.eqy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2287: ; preds = %bb.aba
  %i.eqz = load i64, ptr %i.eqm, align 8, !tbaa !170
  %i.era = add i64 %i.eqz, 1
  call void @_ZdlPvm(ptr noundef %i.eqx, i64 noundef %i.era) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2288: ; preds = %bb.aba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2287
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %.body2292

bb.abb:                                           ; preds = %bb.aax
  %i.erb = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  call void @__cxa_free_exception(ptr %i.eqi) #29
  br label %.body2292

bb.abc:                                           ; preds = %bb.aaw
  %i.erc = zext i32 %i.eqf to i64
  %i.erd = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.epv, i64 noundef %i.erc)
          to label %.noexc2294 unwind label %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2294:                                       ; preds = %bb.abc
  %i.ere = getelementptr inbounds nuw i8, ptr %i.erd, i64 8 ; 2 uses
  store ptr %i.ere, ptr %i.epq, align 8, !tbaa !68
  store i32 %i.eqd, ptr %i.erd, align 4, !tbaa !69
  br label %.noexc1656

bb.abd:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2286
  unreachable

.noexc1656:                                       ; preds = %.noexc2294, %.noexc2291
  %.pre.i.i.i1651 = phi ptr [ %i.ere, %.noexc2294 ], [ %i.eqa, %.noexc2291 ] ; 2 uses
  %.phi.trans.insert.i.i.i1652 = getelementptr inbounds i8, ptr %.pre.i.i.i1651, i64 -4
  %.pre2.i.i.i1653 = load i32, ptr %.phi.trans.insert.i.i.i1652, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1649

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1649:    ; preds = %.noexc1656, %bb.aat
  %i.erf = phi i32 [ %.pre2.i.i.i1653, %.noexc1656 ], [ %i.epu, %bb.aat ] ; 2 uses
  %i.erg = phi ptr [ %.pre.i.i.i1651, %.noexc1656 ], [ %i.epr, %bb.aat ] ; 2 uses
  %i.erh = getelementptr inbounds i8, ptr %i.erg, i64 -4
  %i.eri = zext i32 %i.erf to i64
  %i.erj = getelementptr inbounds nuw [4 x i8], ptr %i.erg, i64 %i.eri
  store i32 %i.epo, ptr %i.erj, align 4, !tbaa !69
  %i.erk = add i32 %i.erf, 1
  store i32 %i.erk, ptr %i.erh, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1650

_ZN6id_gen7recycleEj.exit.i1650:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1649, %.noexc1655
  %i.erl = mul i32 %i.eph, 24
  %i.erm = add i32 %i.erl, 32
  %i.ern = getelementptr inbounds nuw i8, ptr %i.eov, i64 472
  %i.ero = load ptr, ptr %i.ern, align 8, !tbaa !183
  %i.erp = zext nneg i32 %i.epo to i64
  %i.erq = getelementptr inbounds nuw [8 x i8], ptr %i.ero, i64 %i.erp
  store ptr null, ptr %i.erq, align 8, !tbaa !102
  %i.err = getelementptr inbounds nuw i8, ptr %i.eov, i64 464
  %i.ers = load ptr, ptr %i.err, align 8, !tbaa !150
  %i.ert = getelementptr inbounds nuw i8, ptr %i.ers, i64 8
  %i.eru = load ptr, ptr %i.ert, align 8, !tbaa !193
  %i.erv = zext i32 %i.erm to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.eru, i64 noundef %i.erv, ptr noundef nonnull %i.eos)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit976 unwind label %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abe:                                           ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1645, %.lr.ph.i1642
  %indvars.iv.i1644 = phi i64 [ 0, %.lr.ph.i1642 ], [ %indvars.iv.next.i1646, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1645 ] ; 3 uses
  %i.erw = load ptr, ptr %i.epj, align 8, !tbaa !177
  %i.erx = getelementptr inbounds nuw [16 x i8], ptr %i.erw, i64 %indvars.iv.i1644
  %i.ery = load ptr, ptr %i.epi, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ery, ptr noundef nonnull align 8 dereferenceable(16) %i.erx)
          to label %.noexc1658 unwind label %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1658:                                       ; preds = %bb.abe
  %i.erz = load ptr, ptr %i.epk, align 8, !tbaa !175
  %i.esa = getelementptr inbounds nuw [8 x i8], ptr %i.erz, i64 %indvars.iv.i1644
  %i.esb = load ptr, ptr %i.esa, align 8, !tbaa !176 ; 7 uses
  %i.esc = load ptr, ptr %i.epl, align 8, !tbaa !150 ; 9 uses
  %i.esd = load i32, ptr %i.esb, align 4, !tbaa !198
  %i.ese = add i32 %i.esd, -1                     ; 2 uses
  store i32 %i.ese, ptr %i.esb, align 4, !tbaa !198
  %i.esf = icmp eq i32 %i.ese, 0
  br i1 %i.esf, label %bb.abf, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1645

bb.abf:                                           ; preds = %.noexc1658
  %i.esg = getelementptr inbounds nuw i8, ptr %i.esb, i64 12
  %i.esh = load i32, ptr %i.esg, align 4, !tbaa !77
  %.fr13.i2246 = freeze i32 %i.esh                ; 4 uses
  %i.esi = getelementptr inbounds nuw i8, ptr %i.esc, i64 24
  %i.esj = getelementptr inbounds nuw i8, ptr %i.esc, i64 44
  %i.esk = load i32, ptr %i.esj, align 4, !tbaa !274
  %i.esl = add i32 %i.esk, -1
  %i.esm = getelementptr inbounds nuw i8, ptr %i.esb, i64 16
  %i.esn = load i32, ptr %i.esm, align 4, !tbaa !185 ; 3 uses
  %i.eso = and i32 %i.esn, %i.esl
  %i.esp = load ptr, ptr %i.esi, align 8, !tbaa !261
  %i.esq = zext i32 %i.eso to i64
  %i.esr = getelementptr inbounds nuw [16 x i8], ptr %i.esp, i64 %i.esq ; 3 uses
  %i.ess = load ptr, ptr %i.esr, align 8, !tbaa !260
  %i.est = ptrtoint ptr %i.ess to i64
  %i.esu = and i64 %i.est, 7
  %i.esv = icmp eq i64 %i.esu, 1
  br i1 %i.esv, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256, label %.preheader.i.i2247

.preheader.i.i2247:                               ; preds = %bb.abf
  %i.esw = getelementptr inbounds nuw i8, ptr %i.esb, i64 20
  %i.esx = getelementptr inbounds nuw i8, ptr %i.esc, i64 56 ; 3 uses
  %.promoted.i.i2248 = load i32, ptr %i.esx, align 8 ; 2 uses
  %i.esy = icmp eq i32 %.fr13.i2246, 0
  %wide.trip.count.i.i.i.i2249 = zext i32 %.fr13.i2246 to i64
  br i1 %i.esy, label %.preheader.i.split.us.i2270, label %.preheader.i.split.i2250

.preheader.i.split.us.i2270:                      ; preds = %.preheader.i.i2247, %.loopexit.i.us.i2274
  %i.esz = phi i32 [ %i.etg, %.loopexit.i.us.i2274 ], [ %.promoted.i.i2248, %.preheader.i.i2247 ]
  %.020.i.us.i2271 = phi ptr [ %i.eth, %.loopexit.i.us.i2274 ], [ %i.esr, %.preheader.i.i2247 ] ; 4 uses
  %.0.i.us.i2272 = phi ptr [ %.020.i.us.i2271, %.loopexit.i.us.i2274 ], [ null, %.preheader.i.i2247 ]
  %i.eta = getelementptr inbounds nuw i8, ptr %.020.i.us.i2271, i64 8
  %i.etb = load ptr, ptr %i.eta, align 8, !tbaa !176 ; 2 uses
  %i.etc = getelementptr inbounds nuw i8, ptr %i.etb, i64 12
  %i.etd = load i32, ptr %i.etc, align 4, !tbaa !77
  %.not.i.i.i.us.i2273 = icmp eq i32 %i.etd, 0
  br i1 %.not.i.i.i.us.i2273, label %bb.abg, label %.loopexit.i.us.i2274

bb.abg:                                           ; preds = %.preheader.i.split.us.i2270
  %i.ete = getelementptr inbounds nuw i8, ptr %i.etb, i64 16
  %i.etf = load i32, ptr %i.ete, align 4, !tbaa !185
  %.not14.i.i.i.us.i2276 = icmp eq i32 %i.etf, %i.esn
  br i1 %.not14.i.i.i.us.i2276, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2267, label %.loopexit.i.us.i2274

.loopexit.i.us.i2274:                             ; preds = %bb.abg, %.preheader.i.split.us.i2270
  %i.etg = add i32 %i.esz, 1                      ; 2 uses
  store i32 %i.etg, ptr %i.esx, align 8, !tbaa !276
  %i.eth = load ptr, ptr %.020.i.us.i2271, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2275 = icmp eq ptr %i.eth, null
  br i1 %.not.i.us.i2275, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256, label %.preheader.i.split.us.i2270, !llvm.loop !31

.preheader.i.split.i2250:                         ; preds = %.preheader.i.i2247, %.loopexit.i.i2254
  %i.eti = phi i32 [ %i.eui, %.loopexit.i.i2254 ], [ %.promoted.i.i2248, %.preheader.i.i2247 ]
  %.020.i.i2251 = phi ptr [ %i.euj, %.loopexit.i.i2254 ], [ %i.esr, %.preheader.i.i2247 ] ; 4 uses
  %.0.i.i2252 = phi ptr [ %.020.i.i2251, %.loopexit.i.i2254 ], [ null, %.preheader.i.i2247 ]
  %i.etj = getelementptr inbounds nuw i8, ptr %.020.i.i2251, i64 8
  %i.etk = load ptr, ptr %i.etj, align 8, !tbaa !176 ; 3 uses
  %i.etl = getelementptr inbounds nuw i8, ptr %i.etk, i64 12
  %i.etm = load i32, ptr %i.etl, align 4, !tbaa !77
  %.not.i.i.i.i2253 = icmp eq i32 %i.etm, %.fr13.i2246
  br i1 %.not.i.i.i.i2253, label %bb.abh, label %.loopexit.i.i2254

bb.abh:                                           ; preds = %.preheader.i.split.i2250
  %i.etn = getelementptr inbounds nuw i8, ptr %i.etk, i64 16
  %i.eto = load i32, ptr %i.etn, align 4, !tbaa !185
  %.not14.i.i.i.i2262 = icmp eq i32 %i.eto, %i.esn
  br i1 %.not14.i.i.i.i2262, label %.preheader.i.i.i.i2263, label %.loopexit.i.i2254

.preheader.i.i.i.i2263:                           ; preds = %bb.abh
  %i.etp = getelementptr inbounds nuw i8, ptr %i.etk, i64 20
  br label %bb.abj

bb.abi:                                           ; preds = %bb.abj
  %indvars.iv.next.i.i.i.i2265 = add nuw nsw i64 %indvars.iv.i.i.i.i2264, 1 ; 2 uses
  %exitcond.not.i.i.i.i2266 = icmp eq i64 %indvars.iv.next.i.i.i.i2265, %wide.trip.count.i.i.i.i2249
  br i1 %exitcond.not.i.i.i.i2266, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2267, label %bb.abj, !llvm.loop !17

bb.abj:                                           ; preds = %bb.abi, %.preheader.i.i.i.i2263
  %indvars.iv.i.i.i.i2264 = phi i64 [ 0, %.preheader.i.i.i.i2263 ], [ %indvars.iv.next.i.i.i.i2265, %bb.abi ] ; 3 uses
  %i.etq = getelementptr inbounds nuw [8 x i8], ptr %i.etp, i64 %indvars.iv.i.i.i.i2264
  %i.etr = getelementptr inbounds nuw [8 x i8], ptr %i.esw, i64 %indvars.iv.i.i.i.i2264
  %i.ets = load <2 x i32>, ptr %i.etq, align 4
  %i.ett = load <2 x i32>, ptr %i.etr, align 4
  %i.etu = icmp eq <2 x i32> %i.ets, %i.ett       ; 2 uses
  %131 = extractelement <2 x i1> %i.etu, i64 0
  %132 = extractelement <2 x i1> %i.etu, i64 1
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %bb.abi, label %.loopexit.i.i2254

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2267: ; preds = %bb.abg, %bb.abi
  %.020.i9.i2268 = phi ptr [ %.020.i.i2251, %bb.abi ], [ %.020.i.us.i2271, %bb.abg ] ; 5 uses
  %.0.i6.i2269 = phi ptr [ %.0.i.i2252, %bb.abi ], [ %.0.i.us.i2272, %bb.abg ] ; 2 uses
  %i.etv = getelementptr inbounds nuw i8, ptr %i.esc, i64 52 ; 2 uses
  %i.etw = load i32, ptr %i.etv, align 4, !tbaa !277
  %i.etx = add i32 %i.etw, -1
  store i32 %i.etx, ptr %i.etv, align 4, !tbaa !277
  %i.ety = icmp eq ptr %.0.i6.i2269, null
  %i.etz = load ptr, ptr %.020.i9.i2268, align 8, !tbaa !260 ; 5 uses
  br i1 %i.ety, label %bb.abk, label %bb.abn

bb.abk:                                           ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2267
  %i.eua = icmp eq ptr %i.etz, null
  br i1 %i.eua, label %bb.abl, label %bb.abm

bb.abl:                                           ; preds = %bb.abk
  %i.eub = getelementptr inbounds nuw i8, ptr %i.esc, i64 48 ; 2 uses
  %i.euc = load i32, ptr %i.eub, align 8, !tbaa !281
  %i.eud = add i32 %i.euc, -1
  store i32 %i.eud, ptr %i.eub, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2268, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256

bb.abm:                                           ; preds = %bb.abk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2268, ptr noundef nonnull align 8 dereferenceable(16) %i.etz, i64 16, i1 false), !tbaa.struct !279
  %i.eue = getelementptr inbounds nuw i8, ptr %i.esc, i64 72 ; 2 uses
  %i.euf = load ptr, ptr %i.eue, align 8, !tbaa !273
  store ptr %i.euf, ptr %i.etz, align 8, !tbaa !260
  store ptr %i.etz, ptr %i.eue, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256

bb.abn:                                           ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2267
  store ptr %i.etz, ptr %.0.i6.i2269, align 8, !tbaa !260
  %i.eug = getelementptr inbounds nuw i8, ptr %i.esc, i64 72 ; 2 uses
  %i.euh = load ptr, ptr %i.eug, align 8, !tbaa !273
  store ptr %i.euh, ptr %.020.i9.i2268, align 8, !tbaa !260
  store ptr %.020.i9.i2268, ptr %i.eug, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256

.loopexit.i.i2254:                                ; preds = %bb.abj, %bb.abh, %.preheader.i.split.i2250
  %i.eui = add i32 %i.eti, 1                      ; 2 uses
  store i32 %i.eui, ptr %i.esx, align 8, !tbaa !276
  %i.euj = load ptr, ptr %.020.i.i2251, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2255 = icmp eq ptr %i.euj, null
  br i1 %.not.i.i2255, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256, label %.preheader.i.split.i2250, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256: ; preds = %.loopexit.i.i2254, %.loopexit.i.us.i2274, %bb.abn, %bb.abm, %bb.abl, %bb.abf
  %i.euk = getelementptr inbounds nuw i8, ptr %i.esb, i64 4
  %i.eul = load i32, ptr %i.euk, align 4, !tbaa !173
  %i.eum = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2277 unwind label %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2277:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256
  br i1 %i.eum, label %_ZN6id_gen7recycleEj.exit.i2258, label %bb.abo

bb.abo:                                           ; preds = %.noexc2277
  %i.eun = getelementptr inbounds nuw i8, ptr %i.esc, i64 96 ; 3 uses
  %i.euo = load ptr, ptr %i.eun, align 8, !tbaa !68 ; 4 uses
  %i.eup = icmp eq ptr %i.euo, null
  br i1 %i.eup, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.euq = getelementptr inbounds i8, ptr %i.euo, i64 -4
  %i.eur = load i32, ptr %i.euq, align 4, !tbaa !69 ; 5 uses
  %i.eus = getelementptr inbounds i8, ptr %i.euo, i64 -8 ; 2 uses
  %i.eut = load i32, ptr %i.eus, align 4, !tbaa !69
  %i.euu = icmp eq i32 %i.eur, %i.eut
  br i1 %i.euu, label %bb.abr, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2257

bb.abq:                                           ; preds = %bb.abo
  %i.euv = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2606 unwind label %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2606:                                       ; preds = %bb.abq
  store i32 2, ptr %i.euv, align 4, !tbaa !69
  %i.euw = getelementptr inbounds nuw i8, ptr %i.euv, i64 4
  store i32 0, ptr %i.euw, align 4, !tbaa !69
  %i.eux = getelementptr inbounds nuw i8, ptr %i.euv, i64 8 ; 2 uses
  store ptr %i.eux, ptr %i.eun, align 8, !tbaa !68
  br label %.noexc2278

bb.abr:                                           ; preds = %bb.abp
  %i.euy = mul i32 %i.eur, 3
  %i.euz = add i32 %i.euy, 1
  %i.eva = lshr i32 %i.euz, 1                     ; 3 uses
  %i.evb = shl i32 %i.eva, 2
  %i.evc = add i32 %i.evb, 8                      ; 2 uses
  %.not.i2596 = icmp ugt i32 %i.eva, %i.eur
  br i1 %.not.i2596, label %bb.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i2662

bb.abs:                                           ; preds = %bb.abr
  %i.evd = shl i32 %i.eur, 2
  %i.eve = add i32 %i.evd, 8
  %.not27.i2605 = icmp ugt i32 %i.evc, %i.eve
  br i1 %.not27.i2605, label %bb.abv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i2662

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i2662: ; preds = %bb.abs, %bb.abr
  %i.evf = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.evg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.evg, ptr %11, align 8, !tbaa !225
  %i.evh = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #32
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2601 unwind label %bb.abu ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2601: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i2662
  store i64 0, ptr %i.evg, align 8, !tbaa !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.evh, ptr noundef nonnull align 1 dereferenceable(42) @.str.18, i64 42, i1 false)
  %i.evi = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.evj = getelementptr inbounds nuw i8, ptr %i.evh, i64 42
  store i8 0, ptr %i.evj, align 1, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.evf, align 8, !tbaa !172
  %i.evk = getelementptr inbounds nuw i8, ptr %i.evf, i64 8
  %i.evl = getelementptr inbounds nuw i8, ptr %i.evf, i64 24
  store ptr %i.evh, ptr %i.evk, align 8, !tbaa !168
  store i64 42, ptr %i.evl, align 8, !tbaa !170
  %i.evm = getelementptr inbounds nuw i8, ptr %i.evf, i64 16
  store i64 42, ptr %i.evm, align 8, !tbaa !169
  store ptr %i.evg, ptr %11, align 8, !tbaa !168
  store i64 0, ptr %i.evi, align 8, !tbaa !169
  invoke void @__cxa_throw(ptr nonnull %i.evf, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.abw unwind label %bb.abt

bb.abt:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2601
  %i.evn = landingpad { ptr, i32 }
          catch ptr null
  %i.evo = load ptr, ptr %11, align 8, !tbaa !168 ; 2 uses
  %i.evp = icmp eq ptr %i.evo, %i.evg
  br i1 %i.evp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2602

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2602: ; preds = %bb.abt
  %i.evq = load i64, ptr %i.evg, align 8, !tbaa !170
  %i.evr = add i64 %i.evq, 1
  call void @_ZdlPvm(ptr noundef %i.evo, i64 noundef %i.evr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2603: ; preds = %bb.abt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2602
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.body2292

bb.abu:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i2662
  %i.evs = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @__cxa_free_exception(ptr %i.evf) #29
  br label %.body2292

bb.abv:                                           ; preds = %bb.abs
  %i.evt = zext i32 %i.evc to i64
  %i.evu = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.eus, i64 noundef %i.evt)
          to label %.noexc2609 unwind label %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2609:                                       ; preds = %bb.abv
  %i.evv = getelementptr inbounds nuw i8, ptr %i.evu, i64 8 ; 2 uses
  store ptr %i.evv, ptr %i.eun, align 8, !tbaa !68
  store i32 %i.eva, ptr %i.evu, align 4, !tbaa !69
  br label %.noexc2278

bb.abw:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2601
  unreachable

.noexc2278:                                       ; preds = %.noexc2609, %.noexc2606
  %.pre.i.i.i2259 = phi ptr [ %i.evv, %.noexc2609 ], [ %i.eux, %.noexc2606 ] ; 2 uses
  %.phi.trans.insert.i.i.i2260 = getelementptr inbounds i8, ptr %.pre.i.i.i2259, i64 -4
  %.pre2.i.i.i2261 = load i32, ptr %.phi.trans.insert.i.i.i2260, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2257

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2257:    ; preds = %.noexc2278, %bb.abp
  %i.evw = phi i32 [ %.pre2.i.i.i2261, %.noexc2278 ], [ %i.eur, %bb.abp ] ; 2 uses
  %i.evx = phi ptr [ %.pre.i.i.i2259, %.noexc2278 ], [ %i.euo, %bb.abp ] ; 2 uses
  %i.evy = getelementptr inbounds i8, ptr %i.evx, i64 -4
  %i.evz = zext i32 %i.evw to i64
  %i.ewa = getelementptr inbounds nuw [4 x i8], ptr %i.evx, i64 %i.evz
  store i32 %i.eul, ptr %i.ewa, align 4, !tbaa !69
  %i.ewb = add i32 %i.evw, 1
  store i32 %i.ewb, ptr %i.evy, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2258

_ZN6id_gen7recycleEj.exit.i2258:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2257, %.noexc2277
  %i.ewc = shl i32 %.fr13.i2246, 3
  %i.ewd = add i32 %i.ewc, 20
  %i.ewe = getelementptr inbounds nuw i8, ptr %i.esc, i64 8
  %i.ewf = load ptr, ptr %i.ewe, align 8, !tbaa !193
  %i.ewg = zext i32 %i.ewd to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ewf, i64 noundef %i.ewg, ptr noundef nonnull %i.esb)
          to label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1645 unwind label %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1645: ; preds = %_ZN6id_gen7recycleEj.exit.i2258, %.noexc1658
  %indvars.iv.next.i1646 = add nuw nsw i64 %indvars.iv.i1644, 1 ; 2 uses
  %exitcond.not.i1647 = icmp eq i64 %indvars.iv.next.i1646, %wide.trip.count.i1643
  br i1 %exitcond.not.i1647, label %._crit_edge.i1648, label %bb.abe, !llvm.loop !35

.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.abv, %bb.abq, %_ZN6id_gen7recycleEj.exit.i2258, %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2256, %bb.abe, %.preheader.i1637, %bb.abc, %bb.aau, %_ZN6id_gen7recycleEj.exit.i1650, %._crit_edge.i1648
  %lpad.loopexit.split-lp10199 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body2292

.body2292:                                        ; preds = %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.abu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2288, %bb.abb
  %eh.lpad-body2293 = phi { ptr, i32 } [ %i.erb, %bb.abb ], [ %i.eqw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2288 ], [ %i.evs, %bb.abu ], [ %i.evn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2603 ], [ %lpad.loopexit.split-lp10199, %.loopexit.split-lp2898.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
end_hunk_17
begin_hunk_18_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.eyk)
  %i.eyl = add nuw nsw i64 %i.eyj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eye, ptr noundef nonnull align 8 dereferenceable(1) %i.eyg, i64 %i.eyl, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2333: ; preds = %bb.acj
  store ptr %i.eyf, ptr %i.eyd, align 8, !tbaa !168
  %i.eym = load i64, ptr %i.eyg, align 8, !tbaa !170
  store i64 %i.eym, ptr %i.eye, align 8, !tbaa !170
  %.phi.trans.insert.i2334 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.pre.i2335 = load i64, ptr %.phi.trans.insert.i2334, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2336

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2336: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2333, %bb.ack
  %i.eyn = phi i64 [ %i.eyj, %bb.ack ], [ %.pre.i2335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2333 ]
  %i.eyo = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyc, i64 16
  store i64 %i.eyn, ptr %i.eyp, align 8, !tbaa !169
  store ptr %i.eyg, ptr %31, align 8, !tbaa !168
  store i64 0, ptr %i.eyo, align 8, !tbaa !169
  store i8 0, ptr %i.eyg, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.eyc, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.aco unwind label %bb.acl

bb.acl:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2336
  %i.eyq = landingpad { ptr, i32 }
          catch ptr null
  %i.eyr = load ptr, ptr %31, align 8, !tbaa !168 ; 2 uses
  %i.eys = icmp eq ptr %i.eyr, %i.eyg
  br i1 %i.eys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2337: ; preds = %bb.acl
  %i.eyt = load i64, ptr %i.eyg, align 8, !tbaa !170
  %i.eyu = add i64 %i.eyt, 1
  call void @_ZdlPvm(ptr noundef %i.eyr, i64 noundef %i.eyu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2338: ; preds = %bb.acl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2337
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br label %.body2342

bb.acm:                                           ; preds = %bb.aci
  %i.eyv = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  call void @__cxa_free_exception(ptr %i.eyc) #29
  br label %.body2342

bb.acn:                                           ; preds = %bb.ach
  %i.eyw = zext i32 %i.exz to i64
  %i.eyx = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.exp, i64 noundef %i.eyw)
          to label %.noexc2344 unwind label %.loopexit.split-lp2937.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2344:                                       ; preds = %bb.acn
  %i.eyy = getelementptr inbounds nuw i8, ptr %i.eyx, i64 8 ; 2 uses
  store ptr %i.eyy, ptr %i.exk, align 8, !tbaa !68
  store i32 %i.exx, ptr %i.eyx, align 4, !tbaa !69
  br label %.noexc1681

bb.aco:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2336
  unreachable

.noexc1681:                                       ; preds = %.noexc2344, %.noexc2341
  %.pre.i.i.i1676 = phi ptr [ %i.eyy, %.noexc2344 ], [ %i.exu, %.noexc2341 ] ; 2 uses
  %.phi.trans.insert.i.i.i1677 = getelementptr inbounds i8, ptr %.pre.i.i.i1676, i64 -4
  %.pre2.i.i.i1678 = load i32, ptr %.phi.trans.insert.i.i.i1677, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1674

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1674:    ; preds = %.noexc1681, %bb.ace
  %i.eyz = phi i32 [ %.pre2.i.i.i1678, %.noexc1681 ], [ %i.exo, %bb.ace ] ; 2 uses
  %i.eza = phi ptr [ %.pre.i.i.i1676, %.noexc1681 ], [ %i.exl, %bb.ace ] ; 2 uses
  %i.ezb = getelementptr inbounds i8, ptr %i.eza, i64 -4
  %i.ezc = zext i32 %i.eyz to i64
  %i.ezd = getelementptr inbounds nuw [4 x i8], ptr %i.eza, i64 %i.ezc
  store i32 %i.exi, ptr %i.ezd, align 4, !tbaa !69
  %i.eze = add i32 %i.eyz, 1
  store i32 %i.eze, ptr %i.ezb, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1675

_ZN6id_gen7recycleEj.exit.i1675:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1674, %.noexc1680
  %i.ezf = mul i32 %i.exb, 24
  %i.ezg = add i32 %i.ezf, 32
  %i.ezh = getelementptr inbounds nuw i8, ptr %i.ewp, i64 472
  %i.ezi = load ptr, ptr %i.ezh, align 8, !tbaa !183
  %i.ezj = zext nneg i32 %i.exi to i64
  %i.ezk = getelementptr inbounds nuw [8 x i8], ptr %i.ezi, i64 %i.ezj
  store ptr null, ptr %i.ezk, align 8, !tbaa !102
  %i.ezl = getelementptr inbounds nuw i8, ptr %i.ewp, i64 464
  %i.ezm = load ptr, ptr %i.ezl, align 8, !tbaa !150
  %i.ezn = getelementptr inbounds nuw i8, ptr %i.ezm, i64 8
  %i.ezo = load ptr, ptr %i.ezn, align 8, !tbaa !193
  %i.ezp = zext i32 %i.ezg to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ezo, i64 noundef %i.ezp, ptr noundef nonnull %i.ewn)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit980 unwind label %.loopexit.split-lp2937.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.acp:                                           ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1670, %.lr.ph.i1667
  %indvars.iv.i1669 = phi i64 [ 0, %.lr.ph.i1667 ], [ %indvars.iv.next.i1671, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1670 ] ; 3 uses
  %i.ezq = load ptr, ptr %i.exd, align 8, !tbaa !177
  %i.ezr = getelementptr inbounds nuw [16 x i8], ptr %i.ezq, i64 %indvars.iv.i1669
  %i.ezs = load ptr, ptr %i.exc, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ezs, ptr noundef nonnull align 8 dereferenceable(16) %i.ezr)
          to label %.noexc1683 unwind label %.loopexit.split-lp2937.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1683:                                       ; preds = %bb.acp
  %i.ezt = load ptr, ptr %i.exe, align 8, !tbaa !175
  %i.ezu = getelementptr inbounds nuw [8 x i8], ptr %i.ezt, i64 %indvars.iv.i1669
  %i.ezv = load ptr, ptr %i.ezu, align 8, !tbaa !176 ; 7 uses
  %i.ezw = load ptr, ptr %i.exf, align 8, !tbaa !150 ; 9 uses
  %i.ezx = load i32, ptr %i.ezv, align 4, !tbaa !198
  %i.ezy = add i32 %i.ezx, -1                     ; 2 uses
  store i32 %i.ezy, ptr %i.ezv, align 4, !tbaa !198
  %i.ezz = icmp eq i32 %i.ezy, 0
  br i1 %i.ezz, label %bb.acq, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1670

bb.acq:                                           ; preds = %.noexc1683
  %i.faa = getelementptr inbounds nuw i8, ptr %i.ezv, i64 12
  %i.fab = load i32, ptr %i.faa, align 4, !tbaa !77
  %.fr13.i2296 = freeze i32 %i.fab                ; 4 uses
  %i.fac = getelementptr inbounds nuw i8, ptr %i.ezw, i64 24
  %i.fad = getelementptr inbounds nuw i8, ptr %i.ezw, i64 44
  %i.fae = load i32, ptr %i.fad, align 4, !tbaa !274
  %i.faf = add i32 %i.fae, -1
  %i.fag = getelementptr inbounds nuw i8, ptr %i.ezv, i64 16
  %i.fah = load i32, ptr %i.fag, align 4, !tbaa !185 ; 3 uses
  %i.fai = and i32 %i.fah, %i.faf
  %i.faj = load ptr, ptr %i.fac, align 8, !tbaa !261
  %i.fak = zext i32 %i.fai to i64
  %i.fal = getelementptr inbounds nuw [16 x i8], ptr %i.faj, i64 %i.fak ; 3 uses
  %i.fam = load ptr, ptr %i.fal, align 8, !tbaa !260
  %i.fan = ptrtoint ptr %i.fam to i64
  %i.fao = and i64 %i.fan, 7
  %i.fap = icmp eq i64 %i.fao, 1
  br i1 %i.fap, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2306, label %.preheader.i.i2297

.preheader.i.i2297:                               ; preds = %bb.acq
  %i.faq = getelementptr inbounds nuw i8, ptr %i.ezv, i64 20
  %i.far = getelementptr inbounds nuw i8, ptr %i.ezw, i64 56 ; 3 uses
  %.promoted.i.i2298 = load i32, ptr %i.far, align 8 ; 2 uses
  %i.fas = icmp eq i32 %.fr13.i2296, 0
  %wide.trip.count.i.i.i.i2299 = zext i32 %.fr13.i2296 to i64
  br i1 %i.fas, label %.preheader.i.split.us.i2320, label %.preheader.i.split.i2300

.preheader.i.split.us.i2320:                      ; preds = %.preheader.i.i2297, %.loopexit.i.us.i2324
  %i.fat = phi i32 [ %i.fba, %.loopexit.i.us.i2324 ], [ %.promoted.i.i2298, %.preheader.i.i2297 ]
  %.020.i.us.i2321 = phi ptr [ %i.fbb, %.loopexit.i.us.i2324 ], [ %i.fal, %.preheader.i.i2297 ] ; 4 uses
  %.0.i.us.i2322 = phi ptr [ %.020.i.us.i2321, %.loopexit.i.us.i2324 ], [ null, %.preheader.i.i2297 ]
  %i.fau = getelementptr inbounds nuw i8, ptr %.020.i.us.i2321, i64 8
  %i.fav = load ptr, ptr %i.fau, align 8, !tbaa !176 ; 2 uses
  %i.faw = getelementptr inbounds nuw i8, ptr %i.fav, i64 12
  %i.fax = load i32, ptr %i.faw, align 4, !tbaa !77
  %.not.i.i.i.us.i2323 = icmp eq i32 %i.fax, 0
  br i1 %.not.i.i.i.us.i2323, label %bb.acr, label %.loopexit.i.us.i2324

bb.acr:                                           ; preds = %.preheader.i.split.us.i2320
  %i.fay = getelementptr inbounds nuw i8, ptr %i.fav, i64 16
  %i.faz = load i32, ptr %i.fay, align 4, !tbaa !185
  %.not14.i.i.i.us.i2326 = icmp eq i32 %i.faz, %i.fah
  br i1 %.not14.i.i.i.us.i2326, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2317, label %.loopexit.i.us.i2324

.loopexit.i.us.i2324:                             ; preds = %bb.acr, %.preheader.i.split.us.i2320
  %i.fba = add i32 %i.fat, 1                      ; 2 uses
  store i32 %i.fba, ptr %i.far, align 8, !tbaa !276
  %i.fbb = load ptr, ptr %.020.i.us.i2321, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2325 = icmp eq ptr %i.fbb, null
  br i1 %.not.i.us.i2325, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2306, label %.preheader.i.split.us.i2320, !llvm.loop !31

.preheader.i.split.i2300:                         ; preds = %.preheader.i.i2297, %.loopexit.i.i2304
  %i.fbc = phi i32 [ %i.fcc, %.loopexit.i.i2304 ], [ %.promoted.i.i2298, %.preheader.i.i2297 ]
  %.020.i.i2301 = phi ptr [ %i.fcd, %.loopexit.i.i2304 ], [ %i.fal, %.preheader.i.i2297 ] ; 4 uses
  %.0.i.i2302 = phi ptr [ %.020.i.i2301, %.loopexit.i.i2304 ], [ null, %.preheader.i.i2297 ]
  %i.fbd = getelementptr inbounds nuw i8, ptr %.020.i.i2301, i64 8
  %i.fbe = load ptr, ptr %i.fbd, align 8, !tbaa !176 ; 3 uses
  %i.fbf = getelementptr inbounds nuw i8, ptr %i.fbe, i64 12
  %i.fbg = load i32, ptr %i.fbf, align 4, !tbaa !77
  %.not.i.i.i.i2303 = icmp eq i32 %i.fbg, %.fr13.i2296
  br i1 %.not.i.i.i.i2303, label %bb.acs, label %.loopexit.i.i2304

bb.acs:                                           ; preds = %.preheader.i.split.i2300
  %i.fbh = getelementptr inbounds nuw i8, ptr %i.fbe, i64 16
  %i.fbi = load i32, ptr %i.fbh, align 4, !tbaa !185
  %.not14.i.i.i.i2312 = icmp eq i32 %i.fbi, %i.fah
  br i1 %.not14.i.i.i.i2312, label %.preheader.i.i.i.i2313, label %.loopexit.i.i2304

.preheader.i.i.i.i2313:                           ; preds = %bb.acs
  %i.fbj = getelementptr inbounds nuw i8, ptr %i.fbe, i64 20
  br label %bb.acu

bb.act:                                           ; preds = %bb.acu
  %indvars.iv.next.i.i.i.i2315 = add nuw nsw i64 %indvars.iv.i.i.i.i2314, 1 ; 2 uses
  %exitcond.not.i.i.i.i2316 = icmp eq i64 %indvars.iv.next.i.i.i.i2315, %wide.trip.count.i.i.i.i2299
  br i1 %exitcond.not.i.i.i.i2316, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2317, label %bb.acu, !llvm.loop !17

bb.acu:                                           ; preds = %bb.act, %.preheader.i.i.i.i2313
  %indvars.iv.i.i.i.i2314 = phi i64 [ 0, %.preheader.i.i.i.i2313 ], [ %indvars.iv.next.i.i.i.i2315, %bb.act ] ; 3 uses
  %i.fbk = getelementptr inbounds nuw [8 x i8], ptr %i.fbj, i64 %indvars.iv.i.i.i.i2314
  %i.fbl = getelementptr inbounds nuw [8 x i8], ptr %i.faq, i64 %indvars.iv.i.i.i.i2314
  %i.fbm = load <2 x i32>, ptr %i.fbk, align 4
  %i.fbn = load <2 x i32>, ptr %i.fbl, align 4
  %i.fbo = icmp eq <2 x i32> %i.fbm, %i.fbn       ; 2 uses
  %134 = extractelement <2 x i1> %i.fbo, i64 0
  %135 = extractelement <2 x i1> %i.fbo, i64 1
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %bb.act, label %.loopexit.i.i2304

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2317: ; preds = %bb.acr, %bb.act
  %.020.i9.i2318 = phi ptr [ %.020.i.i2301, %bb.act ], [ %.020.i.us.i2321, %bb.acr ] ; 5 uses
  %.0.i6.i2319 = phi ptr [ %.0.i.i2302, %bb.act ], [ %.0.i.us.i2322, %bb.acr ] ; 2 uses
  %i.fbp = getelementptr inbounds nuw i8, ptr %i.ezw, i64 52 ; 2 uses
  %i.fbq = load i32, ptr %i.fbp, align 4, !tbaa !277
  %i.fbr = add i32 %i.fbq, -1
  store i32 %i.fbr, ptr %i.fbp, align 4, !tbaa !277
  %i.fbs = icmp eq ptr %.0.i6.i2319, null
  %i.fbt = load ptr, ptr %.020.i9.i2318, align 8, !tbaa !260 ; 5 uses
  br i1 %i.fbs, label %bb.acv, label %bb.acy

bb.acv:                                           ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2317
  %i.fbu = icmp eq ptr %i.fbt, null
  br i1 %i.fbu, label %bb.acw, label %bb.acx

bb.acw:                                           ; preds = %bb.acv
  %i.fbv = getelementptr inbounds nuw i8, ptr %i.ezw, i64 48 ; 2 uses
  %i.fbw = load i32, ptr %i.fbv, align 8, !tbaa !281
  %i.fbx = add i32 %i.fbw, -1
  store i32 %i.fbx, ptr %i.fbv, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2318, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2306

bb.acx:                                           ; preds = %bb.acv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2318, ptr noundef nonnull align 8 dereferenceable(16) %i.fbt, i64 16, i1 false), !tbaa.struct !279
  %i.fby = getelementptr inbounds nuw i8, ptr %i.ezw, i64 72 ; 2 uses
  %i.fbz = load ptr, ptr %i.fby, align 8, !tbaa !273
  store ptr %i.fbz, ptr %i.fbt, align 8, !tbaa !260
  store ptr %i.fbt, ptr %i.fby, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2306

bb.acy:                                           ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2317
  store ptr %i.fbt, ptr %.0.i6.i2319, align 8, !tbaa !260
  %i.fca = getelementptr inbounds nuw i8, ptr %i.ezw, i64 72 ; 2 uses
  %i.fcb = load ptr, ptr %i.fca, align 8, !tbaa !273
  store ptr %i.fcb, ptr %.020.i9.i2318, align 8, !tbaa !260
  store ptr %.020.i9.i2318, ptr %i.fca, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2306

.loopexit.i.i2304:                                ; preds = %bb.acu, %bb.acs, %.preheader.i.split.i2300
  %i.fcc = add i32 %i.fbc, 1                      ; 2 uses
  store i32 %i.fcc, ptr %i.far, align 8, !tbaa !276
  %i.fcd = load ptr, ptr %.020.i.i2301, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2305 = icmp eq ptr %i.fcd, null
  br i1 %.not.i.i2305, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2306, label %.preheader.i.split.i2300, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2306: ; preds = %.loopexit.i.i2304, %.loopexit.i.us.i2324, %bb.acy, %bb.acx, %bb.acw, %bb.acq
  %i.fce = getelementptr inbounds nuw i8, ptr %i.ezv, i64 4
  %i.fcf = load i32, ptr %i.fce, align 4, !tbaa !173
  %i.fcg = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2327 unwind label %.loopexit.split-lp2937.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2327:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2306
  br i1 %i.fcg, label %_ZN6id_gen7recycleEj.exit.i2308, label %bb.acz

bb.acz:                                           ; preds = %.noexc2327
  %i.fch = getelementptr inbounds nuw i8, ptr %i.ezw, i64 96 ; 3 uses
  %i.fci = load ptr, ptr %i.fch, align 8, !tbaa !68 ; 4 uses
  %i.fcj = icmp eq ptr %i.fci, null
  br i1 %i.fcj, label %bb.adb, label %bb.ada

bb.ada:                                           ; preds = %bb.acz
  %i.fck = getelementptr inbounds i8, ptr %i.fci, i64 -4
  %i.fcl = load i32, ptr %i.fck, align 4, !tbaa !69 ; 5 uses
  %i.fcm = getelementptr inbounds i8, ptr %i.fci, i64 -8 ; 2 uses
  %i.fcn = load i32, ptr %i.fcm, align 4, !tbaa !69
  %i.fco = icmp eq i32 %i.fcl, %i.fcn
  br i1 %i.fco, label %bb.adc, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2307

bb.adb:                                           ; preds = %bb.acz
  %i.fcp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2621 unwind label %.loopexit.split-lp2937.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2621:                                       ; preds = %bb.adb
  store i32 2, ptr %i.fcp, align 4, !tbaa !69
  %i.fcq = getelementptr inbounds nuw i8, ptr %i.fcp, i64 4
  store i32 0, ptr %i.fcq, align 4, !tbaa !69
  %i.fcr = getelementptr inbounds nuw i8, ptr %i.fcp, i64 8 ; 2 uses
  store ptr %i.fcr, ptr %i.fch, align 8, !tbaa !68
  br label %.noexc2328

bb.adc:                                           ; preds = %bb.ada
  %i.fcs = mul i32 %i.fcl, 3
  %i.fct = add i32 %i.fcs, 1
  %i.fcu = lshr i32 %i.fct, 1                     ; 3 uses
  %i.fcv = shl i32 %i.fcu, 2
  %i.fcw = add i32 %i.fcv, 8                      ; 2 uses
  %.not.i2611 = icmp ugt i32 %i.fcu, %i.fcl
  br i1 %.not.i2611, label %bb.add, label %bb.ade

bb.add:                                           ; preds = %bb.adc
  %i.fcx = shl i32 %i.fcl, 2
  %i.fcy = add i32 %i.fcx, 8
  %.not27.i2620 = icmp ugt i32 %i.fcw, %i.fcy
  br i1 %.not27.i2620, label %bb.adj, label %bb.ade

bb.ade:                                           ; preds = %bb.add, %bb.adc
  %i.fcz = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.adf unwind label %bb.adi

bb.adf:                                           ; preds = %bb.ade
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.fcz, align 8, !tbaa !172
  %i.fda = getelementptr inbounds nuw i8, ptr %i.fcz, i64 8 ; 2 uses
  %i.fdb = getelementptr inbounds nuw i8, ptr %i.fcz, i64 24 ; 3 uses
  store ptr %i.fdb, ptr %i.fda, align 8, !tbaa !225
  %i.fdc = load ptr, ptr %9, align 8, !tbaa !168  ; 2 uses
  %i.fdd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.fde = icmp eq ptr %i.fdc, %i.fdd
  br i1 %i.fde, label %bb.adg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2613

bb.adg:                                           ; preds = %bb.adf
  %i.fdf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fdg = load i64, ptr %i.fdf, align 8, !tbaa !169 ; 3 uses
  %i.fdh = icmp ult i64 %i.fdg, 16
  call void @llvm.assume(i1 %i.fdh)
  %i.fdi = add nuw nsw i64 %i.fdg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fdb, ptr noundef nonnull align 8 dereferenceable(1) %i.fdd, i64 %i.fdi, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2613: ; preds = %bb.adf
  store ptr %i.fdc, ptr %i.fda, align 8, !tbaa !168
  %i.fdj = load i64, ptr %i.fdd, align 8, !tbaa !170
  store i64 %i.fdj, ptr %i.fdb, align 8, !tbaa !170
  %.phi.trans.insert.i2614 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre.i2615 = load i64, ptr %.phi.trans.insert.i2614, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2616

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2616: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2613, %bb.adg
  %i.fdk = phi i64 [ %i.fdg, %bb.adg ], [ %.pre.i2615, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2613 ]
  %i.fdl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fdm = getelementptr inbounds nuw i8, ptr %i.fcz, i64 16
  store i64 %i.fdk, ptr %i.fdm, align 8, !tbaa !169
  store ptr %i.fdd, ptr %9, align 8, !tbaa !168
  store i64 0, ptr %i.fdl, align 8, !tbaa !169
  store i8 0, ptr %i.fdd, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.fcz, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.adk unwind label %bb.adh

bb.adh:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2616
  %i.fdn = landingpad { ptr, i32 }
          catch ptr null
  %i.fdo = load ptr, ptr %9, align 8, !tbaa !168  ; 2 uses
  %i.fdp = icmp eq ptr %i.fdo, %i.fdd
  br i1 %i.fdp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2618, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2617

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2617: ; preds = %bb.adh
  %i.fdq = load i64, ptr %i.fdd, align 8, !tbaa !170
  %i.fdr = add i64 %i.fdq, 1
  call void @_ZdlPvm(ptr noundef %i.fdo, i64 noundef %i.fdr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2618

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2618: ; preds = %bb.adh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2617
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.body2342

bb.adi:                                           ; preds = %bb.ade
  %i.fds = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @__cxa_free_exception(ptr %i.fcz) #29
  br label %.body2342

bb.adj:                                           ; preds = %bb.add
  %i.fdt = zext i32 %i.fcw to i64
  %i.fdu = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fcm, i64 noundef %i.fdt)
          to label %.noexc2624 unwind label %.loopexit.split-lp2937.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2624:                                       ; preds = %bb.adj
  %i.fdv = getelementptr inbounds nuw i8, ptr %i.fdu, i64 8 ; 2 uses
  store ptr %i.fdv, ptr %i.fch, align 8, !tbaa !68
  store i32 %i.fcu, ptr %i.fdu, align 4, !tbaa !69
  br label %.noexc2328

bb.adk:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2616
  unreachable

.noexc2328:                                       ; preds = %.noexc2624, %.noexc2621
  %.pre.i.i.i2309 = phi ptr [ %i.fdv, %.noexc2624 ], [ %i.fcr, %.noexc2621 ] ; 2 uses
  %.phi.trans.insert.i.i.i2310 = getelementptr inbounds i8, ptr %.pre.i.i.i2309, i64 -4
  %.pre2.i.i.i2311 = load i32, ptr %.phi.trans.insert.i.i.i2310, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2307

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2307:    ; preds = %.noexc2328, %bb.ada
  %i.fdw = phi i32 [ %.pre2.i.i.i2311, %.noexc2328 ], [ %i.fcl, %bb.ada ] ; 2 uses
  %i.fdx = phi ptr [ %.pre.i.i.i2309, %.noexc2328 ], [ %i.fci, %bb.ada ] ; 2 uses
  %i.fdy = getelementptr inbounds i8, ptr %i.fdx, i64 -4
  %i.fdz = zext i32 %i.fdw to i64
  %i.fea = getelementptr inbounds nuw [4 x i8], ptr %i.fdx, i64 %i.fdz
  store i32 %i.fcf, ptr %i.fea, align 4, !tbaa !69
  %i.feb = add i32 %i.fdw, 1
  store i32 %i.feb, ptr %i.fdy, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2308

end_hunk_18
begin_hunk_19_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  call void @llvm.assume(i1 %i.fgf)
  %i.fgg = add nuw nsw i64 %i.fge, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ffz, ptr noundef nonnull align 8 dereferenceable(1) %i.fgb, i64 %i.fgg, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2383: ; preds = %bb.adt
  store ptr %i.fga, ptr %i.ffy, align 8, !tbaa !168
  %i.fgh = load i64, ptr %i.fgb, align 8, !tbaa !170
  store i64 %i.fgh, ptr %i.ffz, align 8, !tbaa !170
  %.phi.trans.insert.i2384 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.pre.i2385 = load i64, ptr %.phi.trans.insert.i2384, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2386

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2386: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2383, %bb.adu
  %i.fgi = phi i64 [ %i.fge, %bb.adu ], [ %.pre.i2385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2383 ]
  %i.fgj = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fgk = getelementptr inbounds nuw i8, ptr %i.ffx, i64 16
  store i64 %i.fgi, ptr %i.fgk, align 8, !tbaa !169
  store ptr %i.fgb, ptr %29, align 8, !tbaa !168
  store i64 0, ptr %i.fgj, align 8, !tbaa !169
  store i8 0, ptr %i.fgb, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.ffx, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ady unwind label %bb.adv

bb.adv:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2386
  %i.fgl = landingpad { ptr, i32 }
          catch ptr null
  %i.fgm = load ptr, ptr %29, align 8, !tbaa !168 ; 2 uses
  %i.fgn = icmp eq ptr %i.fgm, %i.fgb
  br i1 %i.fgn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2387: ; preds = %bb.adv
  %i.fgo = load i64, ptr %i.fgb, align 8, !tbaa !170
  %i.fgp = add i64 %i.fgo, 1
  call void @_ZdlPvm(ptr noundef %i.fgm, i64 noundef %i.fgp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2388: ; preds = %bb.adv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2387
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %.body2392

bb.adw:                                           ; preds = %bb.ads
  %i.fgq = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @__cxa_free_exception(ptr %i.ffx) #29
  br label %.body2392

bb.adx:                                           ; preds = %bb.adr
  %i.fgr = zext i32 %i.ffu to i64
  %i.fgs = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ffk, i64 noundef %i.fgr)
          to label %.noexc2394 unwind label %.loopexit.split-lp2930.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2394:                                       ; preds = %bb.adx
  %i.fgt = getelementptr inbounds nuw i8, ptr %i.fgs, i64 8 ; 2 uses
  store ptr %i.fgt, ptr %i.fff, align 8, !tbaa !68
  store i32 %i.ffs, ptr %i.fgs, align 4, !tbaa !69
  br label %.noexc1706

bb.ady:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2386
  unreachable

.noexc1706:                                       ; preds = %.noexc2394, %.noexc2391
  %.pre.i.i.i1701 = phi ptr [ %i.fgt, %.noexc2394 ], [ %i.ffp, %.noexc2391 ] ; 2 uses
  %.phi.trans.insert.i.i.i1702 = getelementptr inbounds i8, ptr %.pre.i.i.i1701, i64 -4
  %.pre2.i.i.i1703 = load i32, ptr %.phi.trans.insert.i.i.i1702, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1699

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1699:    ; preds = %.noexc1706, %bb.ado
  %i.fgu = phi i32 [ %.pre2.i.i.i1703, %.noexc1706 ], [ %i.ffj, %bb.ado ] ; 2 uses
  %i.fgv = phi ptr [ %.pre.i.i.i1701, %.noexc1706 ], [ %i.ffg, %bb.ado ] ; 2 uses
  %i.fgw = getelementptr inbounds i8, ptr %i.fgv, i64 -4
  %i.fgx = zext i32 %i.fgu to i64
  %i.fgy = getelementptr inbounds nuw [4 x i8], ptr %i.fgv, i64 %i.fgx
  store i32 %i.ffd, ptr %i.fgy, align 4, !tbaa !69
  %i.fgz = add i32 %i.fgu, 1
  store i32 %i.fgz, ptr %i.fgw, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1700

_ZN6id_gen7recycleEj.exit.i1700:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1699, %.noexc1705
  %i.fha = mul i32 %i.few, 24
  %i.fhb = add i32 %i.fha, 32
  %i.fhc = getelementptr inbounds nuw i8, ptr %i.fek, i64 472
  %i.fhd = load ptr, ptr %i.fhc, align 8, !tbaa !183
  %i.fhe = zext nneg i32 %i.ffd to i64
  %i.fhf = getelementptr inbounds nuw [8 x i8], ptr %i.fhd, i64 %i.fhe
  store ptr null, ptr %i.fhf, align 8, !tbaa !102
  %i.fhg = getelementptr inbounds nuw i8, ptr %i.fek, i64 464
  %i.fhh = load ptr, ptr %i.fhg, align 8, !tbaa !150
  %i.fhi = getelementptr inbounds nuw i8, ptr %i.fhh, i64 8
  %i.fhj = load ptr, ptr %i.fhi, align 8, !tbaa !193
  %i.fhk = zext i32 %i.fhb to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.fhj, i64 noundef %i.fhk, ptr noundef nonnull %i.fei)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit983 unwind label %.loopexit.split-lp2930.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.adz:                                           ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1695, %.lr.ph.i1692
  %indvars.iv.i1694 = phi i64 [ 0, %.lr.ph.i1692 ], [ %indvars.iv.next.i1696, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1695 ] ; 3 uses
  %i.fhl = load ptr, ptr %i.fey, align 8, !tbaa !177
  %i.fhm = getelementptr inbounds nuw [16 x i8], ptr %i.fhl, i64 %indvars.iv.i1694
  %i.fhn = load ptr, ptr %i.fex, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.fhn, ptr noundef nonnull align 8 dereferenceable(16) %i.fhm)
          to label %.noexc1708 unwind label %.loopexit.split-lp2930.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1708:                                       ; preds = %bb.adz
  %i.fho = load ptr, ptr %i.fez, align 8, !tbaa !175
  %i.fhp = getelementptr inbounds nuw [8 x i8], ptr %i.fho, i64 %indvars.iv.i1694
  %i.fhq = load ptr, ptr %i.fhp, align 8, !tbaa !176 ; 7 uses
  %i.fhr = load ptr, ptr %i.ffa, align 8, !tbaa !150 ; 9 uses
  %i.fhs = load i32, ptr %i.fhq, align 4, !tbaa !198
  %i.fht = add i32 %i.fhs, -1                     ; 2 uses
  store i32 %i.fht, ptr %i.fhq, align 4, !tbaa !198
  %i.fhu = icmp eq i32 %i.fht, 0
  br i1 %i.fhu, label %bb.aea, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1695

bb.aea:                                           ; preds = %.noexc1708
  %i.fhv = getelementptr inbounds nuw i8, ptr %i.fhq, i64 12
  %i.fhw = load i32, ptr %i.fhv, align 4, !tbaa !77
  %.fr13.i2346 = freeze i32 %i.fhw                ; 4 uses
  %i.fhx = getelementptr inbounds nuw i8, ptr %i.fhr, i64 24
  %i.fhy = getelementptr inbounds nuw i8, ptr %i.fhr, i64 44
  %i.fhz = load i32, ptr %i.fhy, align 4, !tbaa !274
  %i.fia = add i32 %i.fhz, -1
  %i.fib = getelementptr inbounds nuw i8, ptr %i.fhq, i64 16
  %i.fic = load i32, ptr %i.fib, align 4, !tbaa !185 ; 3 uses
  %i.fid = and i32 %i.fic, %i.fia
  %i.fie = load ptr, ptr %i.fhx, align 8, !tbaa !261
  %i.fif = zext i32 %i.fid to i64
  %i.fig = getelementptr inbounds nuw [16 x i8], ptr %i.fie, i64 %i.fif ; 3 uses
  %i.fih = load ptr, ptr %i.fig, align 8, !tbaa !260
  %i.fii = ptrtoint ptr %i.fih to i64
  %i.fij = and i64 %i.fii, 7
  %i.fik = icmp eq i64 %i.fij, 1
  br i1 %i.fik, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2356, label %.preheader.i.i2347

.preheader.i.i2347:                               ; preds = %bb.aea
  %i.fil = getelementptr inbounds nuw i8, ptr %i.fhq, i64 20
  %i.fim = getelementptr inbounds nuw i8, ptr %i.fhr, i64 56 ; 3 uses
  %.promoted.i.i2348 = load i32, ptr %i.fim, align 8 ; 2 uses
  %i.fin = icmp eq i32 %.fr13.i2346, 0
  %wide.trip.count.i.i.i.i2349 = zext i32 %.fr13.i2346 to i64
  br i1 %i.fin, label %.preheader.i.split.us.i2370, label %.preheader.i.split.i2350

.preheader.i.split.us.i2370:                      ; preds = %.preheader.i.i2347, %.loopexit.i.us.i2374
  %i.fio = phi i32 [ %i.fiv, %.loopexit.i.us.i2374 ], [ %.promoted.i.i2348, %.preheader.i.i2347 ]
  %.020.i.us.i2371 = phi ptr [ %i.fiw, %.loopexit.i.us.i2374 ], [ %i.fig, %.preheader.i.i2347 ] ; 4 uses
  %.0.i.us.i2372 = phi ptr [ %.020.i.us.i2371, %.loopexit.i.us.i2374 ], [ null, %.preheader.i.i2347 ]
  %i.fip = getelementptr inbounds nuw i8, ptr %.020.i.us.i2371, i64 8
  %i.fiq = load ptr, ptr %i.fip, align 8, !tbaa !176 ; 2 uses
  %i.fir = getelementptr inbounds nuw i8, ptr %i.fiq, i64 12
  %i.fis = load i32, ptr %i.fir, align 4, !tbaa !77
  %.not.i.i.i.us.i2373 = icmp eq i32 %i.fis, 0
  br i1 %.not.i.i.i.us.i2373, label %bb.aeb, label %.loopexit.i.us.i2374

bb.aeb:                                           ; preds = %.preheader.i.split.us.i2370
  %i.fit = getelementptr inbounds nuw i8, ptr %i.fiq, i64 16
  %i.fiu = load i32, ptr %i.fit, align 4, !tbaa !185
  %.not14.i.i.i.us.i2376 = icmp eq i32 %i.fiu, %i.fic
  br i1 %.not14.i.i.i.us.i2376, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2367, label %.loopexit.i.us.i2374

.loopexit.i.us.i2374:                             ; preds = %bb.aeb, %.preheader.i.split.us.i2370
  %i.fiv = add i32 %i.fio, 1                      ; 2 uses
  store i32 %i.fiv, ptr %i.fim, align 8, !tbaa !276
  %i.fiw = load ptr, ptr %.020.i.us.i2371, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2375 = icmp eq ptr %i.fiw, null
  br i1 %.not.i.us.i2375, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2356, label %.preheader.i.split.us.i2370, !llvm.loop !31

.preheader.i.split.i2350:                         ; preds = %.preheader.i.i2347, %.loopexit.i.i2354
  %i.fix = phi i32 [ %i.fjx, %.loopexit.i.i2354 ], [ %.promoted.i.i2348, %.preheader.i.i2347 ]
  %.020.i.i2351 = phi ptr [ %i.fjy, %.loopexit.i.i2354 ], [ %i.fig, %.preheader.i.i2347 ] ; 4 uses
  %.0.i.i2352 = phi ptr [ %.020.i.i2351, %.loopexit.i.i2354 ], [ null, %.preheader.i.i2347 ]
  %i.fiy = getelementptr inbounds nuw i8, ptr %.020.i.i2351, i64 8
  %i.fiz = load ptr, ptr %i.fiy, align 8, !tbaa !176 ; 3 uses
  %i.fja = getelementptr inbounds nuw i8, ptr %i.fiz, i64 12
  %i.fjb = load i32, ptr %i.fja, align 4, !tbaa !77
  %.not.i.i.i.i2353 = icmp eq i32 %i.fjb, %.fr13.i2346
  br i1 %.not.i.i.i.i2353, label %bb.aec, label %.loopexit.i.i2354

bb.aec:                                           ; preds = %.preheader.i.split.i2350
  %i.fjc = getelementptr inbounds nuw i8, ptr %i.fiz, i64 16
  %i.fjd = load i32, ptr %i.fjc, align 4, !tbaa !185
  %.not14.i.i.i.i2362 = icmp eq i32 %i.fjd, %i.fic
  br i1 %.not14.i.i.i.i2362, label %.preheader.i.i.i.i2363, label %.loopexit.i.i2354

.preheader.i.i.i.i2363:                           ; preds = %bb.aec
  %i.fje = getelementptr inbounds nuw i8, ptr %i.fiz, i64 20
  br label %bb.aee

bb.aed:                                           ; preds = %bb.aee
  %indvars.iv.next.i.i.i.i2365 = add nuw nsw i64 %indvars.iv.i.i.i.i2364, 1 ; 2 uses
  %exitcond.not.i.i.i.i2366 = icmp eq i64 %indvars.iv.next.i.i.i.i2365, %wide.trip.count.i.i.i.i2349
  br i1 %exitcond.not.i.i.i.i2366, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2367, label %bb.aee, !llvm.loop !17

bb.aee:                                           ; preds = %bb.aed, %.preheader.i.i.i.i2363
  %indvars.iv.i.i.i.i2364 = phi i64 [ 0, %.preheader.i.i.i.i2363 ], [ %indvars.iv.next.i.i.i.i2365, %bb.aed ] ; 3 uses
  %i.fjf = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %indvars.iv.i.i.i.i2364
  %i.fjg = getelementptr inbounds nuw [8 x i8], ptr %i.fil, i64 %indvars.iv.i.i.i.i2364
  %i.fjh = load <2 x i32>, ptr %i.fjf, align 4
  %i.fji = load <2 x i32>, ptr %i.fjg, align 4
  %i.fjj = icmp eq <2 x i32> %i.fjh, %i.fji       ; 2 uses
  %137 = extractelement <2 x i1> %i.fjj, i64 0
  %138 = extractelement <2 x i1> %i.fjj, i64 1
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %bb.aed, label %.loopexit.i.i2354

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2367: ; preds = %bb.aeb, %bb.aed
  %.020.i9.i2368 = phi ptr [ %.020.i.i2351, %bb.aed ], [ %.020.i.us.i2371, %bb.aeb ] ; 5 uses
  %.0.i6.i2369 = phi ptr [ %.0.i.i2352, %bb.aed ], [ %.0.i.us.i2372, %bb.aeb ] ; 2 uses
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.fhr, i64 52 ; 2 uses
  %i.fjl = load i32, ptr %i.fjk, align 4, !tbaa !277
  %i.fjm = add i32 %i.fjl, -1
  store i32 %i.fjm, ptr %i.fjk, align 4, !tbaa !277
  %i.fjn = icmp eq ptr %.0.i6.i2369, null
  %i.fjo = load ptr, ptr %.020.i9.i2368, align 8, !tbaa !260 ; 5 uses
  br i1 %i.fjn, label %bb.aef, label %bb.aei

bb.aef:                                           ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2367
  %i.fjp = icmp eq ptr %i.fjo, null
  br i1 %i.fjp, label %bb.aeg, label %bb.aeh

bb.aeg:                                           ; preds = %bb.aef
  %i.fjq = getelementptr inbounds nuw i8, ptr %i.fhr, i64 48 ; 2 uses
  %i.fjr = load i32, ptr %i.fjq, align 8, !tbaa !281
  %i.fjs = add i32 %i.fjr, -1
  store i32 %i.fjs, ptr %i.fjq, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2368, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2356

bb.aeh:                                           ; preds = %bb.aef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2368, ptr noundef nonnull align 8 dereferenceable(16) %i.fjo, i64 16, i1 false), !tbaa.struct !279
  %i.fjt = getelementptr inbounds nuw i8, ptr %i.fhr, i64 72 ; 2 uses
  %i.fju = load ptr, ptr %i.fjt, align 8, !tbaa !273
  store ptr %i.fju, ptr %i.fjo, align 8, !tbaa !260
  store ptr %i.fjo, ptr %i.fjt, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2356

bb.aei:                                           ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2367
  store ptr %i.fjo, ptr %.0.i6.i2369, align 8, !tbaa !260
  %i.fjv = getelementptr inbounds nuw i8, ptr %i.fhr, i64 72 ; 2 uses
  %i.fjw = load ptr, ptr %i.fjv, align 8, !tbaa !273
  store ptr %i.fjw, ptr %.020.i9.i2368, align 8, !tbaa !260
  store ptr %.020.i9.i2368, ptr %i.fjv, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2356

.loopexit.i.i2354:                                ; preds = %bb.aee, %bb.aec, %.preheader.i.split.i2350
  %i.fjx = add i32 %i.fix, 1                      ; 2 uses
  store i32 %i.fjx, ptr %i.fim, align 8, !tbaa !276
  %i.fjy = load ptr, ptr %.020.i.i2351, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2355 = icmp eq ptr %i.fjy, null
  br i1 %.not.i.i2355, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2356, label %.preheader.i.split.i2350, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2356: ; preds = %.loopexit.i.i2354, %.loopexit.i.us.i2374, %bb.aei, %bb.aeh, %bb.aeg, %bb.aea
  %i.fjz = getelementptr inbounds nuw i8, ptr %i.fhq, i64 4
  %i.fka = load i32, ptr %i.fjz, align 4, !tbaa !173
  %i.fkb = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2377 unwind label %.loopexit.split-lp2930.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2377:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2356
  br i1 %i.fkb, label %_ZN6id_gen7recycleEj.exit.i2358, label %bb.aej

bb.aej:                                           ; preds = %.noexc2377
  %i.fkc = getelementptr inbounds nuw i8, ptr %i.fhr, i64 96 ; 3 uses
  %i.fkd = load ptr, ptr %i.fkc, align 8, !tbaa !68 ; 4 uses
  %i.fke = icmp eq ptr %i.fkd, null
  br i1 %i.fke, label %bb.ael, label %bb.aek

bb.aek:                                           ; preds = %bb.aej
  %i.fkf = getelementptr inbounds i8, ptr %i.fkd, i64 -4
  %i.fkg = load i32, ptr %i.fkf, align 4, !tbaa !69 ; 5 uses
  %i.fkh = getelementptr inbounds i8, ptr %i.fkd, i64 -8 ; 2 uses
  %i.fki = load i32, ptr %i.fkh, align 4, !tbaa !69
  %i.fkj = icmp eq i32 %i.fkg, %i.fki
  br i1 %i.fkj, label %bb.aem, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2357

bb.ael:                                           ; preds = %bb.aej
  %i.fkk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2636 unwind label %.loopexit.split-lp2930.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2636:                                       ; preds = %bb.ael
  store i32 2, ptr %i.fkk, align 4, !tbaa !69
  %i.fkl = getelementptr inbounds nuw i8, ptr %i.fkk, i64 4
  store i32 0, ptr %i.fkl, align 4, !tbaa !69
  %i.fkm = getelementptr inbounds nuw i8, ptr %i.fkk, i64 8 ; 2 uses
  store ptr %i.fkm, ptr %i.fkc, align 8, !tbaa !68
  br label %.noexc2378

bb.aem:                                           ; preds = %bb.aek
  %i.fkn = mul i32 %i.fkg, 3
  %i.fko = add i32 %i.fkn, 1
  %i.fkp = lshr i32 %i.fko, 1                     ; 3 uses
  %i.fkq = shl i32 %i.fkp, 2
  %i.fkr = add i32 %i.fkq, 8                      ; 2 uses
  %.not.i2626 = icmp ugt i32 %i.fkp, %i.fkg
  br i1 %.not.i2626, label %bb.aen, label %bb.aeo

bb.aen:                                           ; preds = %bb.aem
  %i.fks = shl i32 %i.fkg, 2
  %i.fkt = add i32 %i.fks, 8
  %.not27.i2635 = icmp ugt i32 %i.fkr, %i.fkt
  br i1 %.not27.i2635, label %bb.aet, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen, %bb.aem
  %i.fku = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.aep unwind label %bb.aes

bb.aep:                                           ; preds = %bb.aeo
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.fku, align 8, !tbaa !172
  %i.fkv = getelementptr inbounds nuw i8, ptr %i.fku, i64 8 ; 2 uses
  %i.fkw = getelementptr inbounds nuw i8, ptr %i.fku, i64 24 ; 3 uses
  store ptr %i.fkw, ptr %i.fkv, align 8, !tbaa !225
  %i.fkx = load ptr, ptr %7, align 8, !tbaa !168  ; 2 uses
  %i.fky = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.fkz = icmp eq ptr %i.fkx, %i.fky
  br i1 %i.fkz, label %bb.aeq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2628

bb.aeq:                                           ; preds = %bb.aep
  %i.fla = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.flb = load i64, ptr %i.fla, align 8, !tbaa !169 ; 3 uses
  %i.flc = icmp ult i64 %i.flb, 16
  call void @llvm.assume(i1 %i.flc)
  %i.fld = add nuw nsw i64 %i.flb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fkw, ptr noundef nonnull align 8 dereferenceable(1) %i.fky, i64 %i.fld, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2628: ; preds = %bb.aep
  store ptr %i.fkx, ptr %i.fkv, align 8, !tbaa !168
  %i.fle = load i64, ptr %i.fky, align 8, !tbaa !170
  store i64 %i.fle, ptr %i.fkw, align 8, !tbaa !170
  %.phi.trans.insert.i2629 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i2630 = load i64, ptr %.phi.trans.insert.i2629, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2631

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2631: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2628, %bb.aeq
  %i.flf = phi i64 [ %i.flb, %bb.aeq ], [ %.pre.i2630, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2628 ]
  %i.flg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.flh = getelementptr inbounds nuw i8, ptr %i.fku, i64 16
  store i64 %i.flf, ptr %i.flh, align 8, !tbaa !169
  store ptr %i.fky, ptr %7, align 8, !tbaa !168
  store i64 0, ptr %i.flg, align 8, !tbaa !169
  store i8 0, ptr %i.fky, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.fku, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.aeu unwind label %bb.aer

bb.aer:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2631
  %i.fli = landingpad { ptr, i32 }
          catch ptr null
  %i.flj = load ptr, ptr %7, align 8, !tbaa !168  ; 2 uses
  %i.flk = icmp eq ptr %i.flj, %i.fky
  br i1 %i.flk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2632

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2632: ; preds = %bb.aer
  %i.fll = load i64, ptr %i.fky, align 8, !tbaa !170
  %i.flm = add i64 %i.fll, 1
  call void @_ZdlPvm(ptr noundef %i.flj, i64 noundef %i.flm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2633: ; preds = %bb.aer, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2632
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body2392

bb.aes:                                           ; preds = %bb.aeo
  %i.fln = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @__cxa_free_exception(ptr %i.fku) #29
  br label %.body2392

bb.aet:                                           ; preds = %bb.aen
  %i.flo = zext i32 %i.fkr to i64
  %i.flp = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fkh, i64 noundef %i.flo)
          to label %.noexc2639 unwind label %.loopexit.split-lp2930.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2639:                                       ; preds = %bb.aet
  %i.flq = getelementptr inbounds nuw i8, ptr %i.flp, i64 8 ; 2 uses
  store ptr %i.flq, ptr %i.fkc, align 8, !tbaa !68
  store i32 %i.fkp, ptr %i.flp, align 4, !tbaa !69
  br label %.noexc2378

bb.aeu:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2631
  unreachable

.noexc2378:                                       ; preds = %.noexc2639, %.noexc2636
  %.pre.i.i.i2359 = phi ptr [ %i.flq, %.noexc2639 ], [ %i.fkm, %.noexc2636 ] ; 2 uses
  %.phi.trans.insert.i.i.i2360 = getelementptr inbounds i8, ptr %.pre.i.i.i2359, i64 -4
  %.pre2.i.i.i2361 = load i32, ptr %.phi.trans.insert.i.i.i2360, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2357

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2357:    ; preds = %.noexc2378, %bb.aek
  %i.flr = phi i32 [ %.pre2.i.i.i2361, %.noexc2378 ], [ %i.fkg, %bb.aek ] ; 2 uses
  %i.fls = phi ptr [ %.pre.i.i.i2359, %.noexc2378 ], [ %i.fkd, %bb.aek ] ; 2 uses
  %i.flt = getelementptr inbounds i8, ptr %i.fls, i64 -4
  %i.flu = zext i32 %i.flr to i64
  %i.flv = getelementptr inbounds nuw [4 x i8], ptr %i.fls, i64 %i.flu
  store i32 %i.fka, ptr %i.flv, align 4, !tbaa !69
  %i.flw = add i32 %i.flr, 1
  store i32 %i.flw, ptr %i.flt, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2358

end_hunk_19
begin_hunk_20_@_ZN10polynomial7manager3imp19try_multivar_factorEPKNS_10polynomialERNS0_7factorsEjj:_ZN6vectorIjLb0EjE5resetEv.exit.i
  %i.frz = icmp eq i32 %i.fry, 0
  br i1 %i.frz, label %bb.agq, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit1086

bb.agq:                                           ; preds = %bb.agp
  %i.fsa = getelementptr inbounds nuw i8, ptr %i.frw, i64 496
  %i.fsb = load ptr, ptr %i.fsa, align 8, !tbaa !194 ; 2 uses
  %.not.i1711 = icmp eq ptr %i.fsb, null
  br i1 %.not.i1711, label %.loopexit.i1715, label %.preheader.i1712

.preheader.i1712:                                 ; preds = %bb.agq, %.noexc1729
  %.0.i1713 = phi ptr [ %i.fsg, %.noexc1729 ], [ %i.fsb, %bb.agq ] ; 3 uses
  %i.fsc = load ptr, ptr %.0.i1713, align 8, !tbaa !172
  %i.fsd = getelementptr inbounds nuw i8, ptr %i.fsc, i64 16
  %i.fse = load ptr, ptr %i.fsd, align 8
  invoke void %i.fse(ptr noundef nonnull align 8 dereferenceable(16) %.0.i1713, ptr noundef nonnull %i.yu)
          to label %.noexc1729 unwind label %.loopexit.split-lp2975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !302

.noexc1729:                                       ; preds = %.preheader.i1712
  %i.fsf = getelementptr inbounds nuw i8, ptr %.0.i1713, i64 8
  %i.fsg = load ptr, ptr %i.fsf, align 8, !tbaa !196 ; 2 uses
  %.not20.i1714 = icmp eq ptr %i.fsg, null
  br i1 %.not20.i1714, label %.loopexit.i1715, label %.preheader.i1712, !llvm.loop !34

.loopexit.i1715:                                  ; preds = %.noexc1729, %bb.agq
  %i.fsh = load i32, ptr %i.yx, align 8, !tbaa !174 ; 3 uses
  %.not22.i1716 = icmp eq i32 %i.fsh, 0
  br i1 %.not22.i1716, label %._crit_edge.i1723, label %.lr.ph.i1717

.lr.ph.i1717:                                     ; preds = %.loopexit.i1715
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.frw, i64 16
  %i.fsj = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  %i.fsl = getelementptr inbounds nuw i8, ptr %i.frw, i64 464
  %wide.trip.count.i1718 = zext i32 %i.fsh to i64
  br label %bb.agu

._crit_edge.i1723:                                ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1720, %.loopexit.i1715
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.fsn = load i32, ptr %i.fsm, align 4
  %i.fso = and i32 %i.fsn, 2147483647             ; 2 uses
  %i.fsp = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc1730 unwind label %.loopexit.split-lp2975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1730:                                       ; preds = %._crit_edge.i1723
  br i1 %i.fsp, label %_ZN6id_gen7recycleEj.exit.i1725, label %bb.agr

bb.agr:                                           ; preds = %.noexc1730
  %i.fsq = getelementptr inbounds nuw i8, ptr %i.frw, i64 488 ; 3 uses
  %i.fsr = load ptr, ptr %i.fsq, align 8, !tbaa !68 ; 4 uses
  %i.fss = icmp eq ptr %i.fsr, null
  br i1 %i.fss, label %bb.agt, label %bb.ags

bb.ags:                                           ; preds = %bb.agr
  %i.fst = getelementptr inbounds i8, ptr %i.fsr, i64 -4
  %i.fsu = load i32, ptr %i.fst, align 4, !tbaa !69 ; 2 uses
  %i.fsv = getelementptr inbounds i8, ptr %i.fsr, i64 -8
  %i.fsw = load i32, ptr %i.fsv, align 4, !tbaa !69
  %i.fsx = icmp eq i32 %i.fsu, %i.fsw
  br i1 %i.fsx, label %bb.agt, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1724

bb.agt:                                           ; preds = %bb.ags, %bb.agr
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fsq)
          to label %.noexc1731 unwind label %.loopexit.split-lp2975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1731:                                       ; preds = %bb.agt
  %.pre.i.i.i1726 = load ptr, ptr %i.fsq, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i.i.i1727 = getelementptr inbounds i8, ptr %.pre.i.i.i1726, i64 -4
  %.pre2.i.i.i1728 = load i32, ptr %.phi.trans.insert.i.i.i1727, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1724

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1724:    ; preds = %.noexc1731, %bb.ags
  %i.fsy = phi i32 [ %.pre2.i.i.i1728, %.noexc1731 ], [ %i.fsu, %bb.ags ] ; 2 uses
  %i.fsz = phi ptr [ %.pre.i.i.i1726, %.noexc1731 ], [ %i.fsr, %bb.ags ] ; 2 uses
  %i.fta = getelementptr inbounds i8, ptr %i.fsz, i64 -4
  %i.ftb = zext i32 %i.fsy to i64
  %i.ftc = getelementptr inbounds nuw [4 x i8], ptr %i.fsz, i64 %i.ftb
  store i32 %i.fso, ptr %i.ftc, align 4, !tbaa !69
  %i.ftd = add i32 %i.fsy, 1
  store i32 %i.ftd, ptr %i.fta, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i1725

_ZN6id_gen7recycleEj.exit.i1725:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i1724, %.noexc1730
  %i.fte = mul i32 %i.fsh, 24
  %i.ftf = add i32 %i.fte, 32
  %i.ftg = getelementptr inbounds nuw i8, ptr %i.frw, i64 472
  %i.fth = load ptr, ptr %i.ftg, align 8, !tbaa !183
  %i.fti = zext nneg i32 %i.fso to i64
  %i.ftj = getelementptr inbounds nuw [8 x i8], ptr %i.fth, i64 %i.fti
  store ptr null, ptr %i.ftj, align 8, !tbaa !102
  %i.ftk = getelementptr inbounds nuw i8, ptr %i.frw, i64 464
  %i.ftl = load ptr, ptr %i.ftk, align 8, !tbaa !150
  %i.ftm = getelementptr inbounds nuw i8, ptr %i.ftl, i64 8
  %i.ftn = load ptr, ptr %i.ftm, align 8, !tbaa !193
  %i.fto = zext i32 %i.ftf to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ftn, i64 noundef %i.fto, ptr noundef nonnull %i.yu)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit1086 unwind label %.loopexit.split-lp2975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.agu:                                           ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1720, %.lr.ph.i1717
  %indvars.iv.i1719 = phi i64 [ 0, %.lr.ph.i1717 ], [ %indvars.iv.next.i1721, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1720 ] ; 3 uses
  %i.ftp = load ptr, ptr %i.fsj, align 8, !tbaa !177
  %i.ftq = getelementptr inbounds nuw [16 x i8], ptr %i.ftp, i64 %indvars.iv.i1719
  %i.ftr = load ptr, ptr %i.fsi, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ftr, ptr noundef nonnull align 8 dereferenceable(16) %i.ftq)
          to label %.noexc1733 unwind label %.loopexit.split-lp2975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1733:                                       ; preds = %bb.agu
  %i.fts = load ptr, ptr %i.fsk, align 8, !tbaa !175
  %i.ftt = getelementptr inbounds nuw [8 x i8], ptr %i.fts, i64 %indvars.iv.i1719
  %i.ftu = load ptr, ptr %i.ftt, align 8, !tbaa !176 ; 7 uses
  %i.ftv = load ptr, ptr %i.fsl, align 8, !tbaa !150 ; 9 uses
  %i.ftw = load i32, ptr %i.ftu, align 4, !tbaa !198
  %i.ftx = add i32 %i.ftw, -1                     ; 2 uses
  store i32 %i.ftx, ptr %i.ftu, align 4, !tbaa !198
  %i.fty = icmp eq i32 %i.ftx, 0
  br i1 %i.fty, label %bb.agv, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i1720

bb.agv:                                           ; preds = %.noexc1733
  %i.ftz = getelementptr inbounds nuw i8, ptr %i.ftu, i64 12
  %i.fua = load i32, ptr %i.ftz, align 4, !tbaa !77
  %.fr13.i2396 = freeze i32 %i.fua                ; 4 uses
  %i.fub = getelementptr inbounds nuw i8, ptr %i.ftv, i64 24
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.ftv, i64 44
  %i.fud = load i32, ptr %i.fuc, align 4, !tbaa !274
  %i.fue = add i32 %i.fud, -1
  %i.fuf = getelementptr inbounds nuw i8, ptr %i.ftu, i64 16
  %i.fug = load i32, ptr %i.fuf, align 4, !tbaa !185 ; 3 uses
  %i.fuh = and i32 %i.fug, %i.fue
  %i.fui = load ptr, ptr %i.fub, align 8, !tbaa !261
  %i.fuj = zext i32 %i.fuh to i64
  %i.fuk = getelementptr inbounds nuw [16 x i8], ptr %i.fui, i64 %i.fuj ; 3 uses
  %i.ful = load ptr, ptr %i.fuk, align 8, !tbaa !260
  %i.fum = ptrtoint ptr %i.ful to i64
  %i.fun = and i64 %i.fum, 7
  %i.fuo = icmp eq i64 %i.fun, 1
  br i1 %i.fuo, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2406, label %.preheader.i.i2397

.preheader.i.i2397:                               ; preds = %bb.agv
  %i.fup = getelementptr inbounds nuw i8, ptr %i.ftu, i64 20
  %i.fuq = getelementptr inbounds nuw i8, ptr %i.ftv, i64 56 ; 3 uses
  %.promoted.i.i2398 = load i32, ptr %i.fuq, align 8 ; 2 uses
  %i.fur = icmp eq i32 %.fr13.i2396, 0
  %wide.trip.count.i.i.i.i2399 = zext i32 %.fr13.i2396 to i64
  br i1 %i.fur, label %.preheader.i.split.us.i2420, label %.preheader.i.split.i2400

.preheader.i.split.us.i2420:                      ; preds = %.preheader.i.i2397, %.loopexit.i.us.i2424
  %i.fus = phi i32 [ %i.fuz, %.loopexit.i.us.i2424 ], [ %.promoted.i.i2398, %.preheader.i.i2397 ]
  %.020.i.us.i2421 = phi ptr [ %i.fva, %.loopexit.i.us.i2424 ], [ %i.fuk, %.preheader.i.i2397 ] ; 4 uses
  %.0.i.us.i2422 = phi ptr [ %.020.i.us.i2421, %.loopexit.i.us.i2424 ], [ null, %.preheader.i.i2397 ]
  %i.fut = getelementptr inbounds nuw i8, ptr %.020.i.us.i2421, i64 8
  %i.fuu = load ptr, ptr %i.fut, align 8, !tbaa !176 ; 2 uses
  %i.fuv = getelementptr inbounds nuw i8, ptr %i.fuu, i64 12
  %i.fuw = load i32, ptr %i.fuv, align 4, !tbaa !77
  %.not.i.i.i.us.i2423 = icmp eq i32 %i.fuw, 0
  br i1 %.not.i.i.i.us.i2423, label %bb.agw, label %.loopexit.i.us.i2424

bb.agw:                                           ; preds = %.preheader.i.split.us.i2420
  %i.fux = getelementptr inbounds nuw i8, ptr %i.fuu, i64 16
  %i.fuy = load i32, ptr %i.fux, align 4, !tbaa !185
  %.not14.i.i.i.us.i2426 = icmp eq i32 %i.fuy, %i.fug
  br i1 %.not14.i.i.i.us.i2426, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2417, label %.loopexit.i.us.i2424

.loopexit.i.us.i2424:                             ; preds = %bb.agw, %.preheader.i.split.us.i2420
  %i.fuz = add i32 %i.fus, 1                      ; 2 uses
  store i32 %i.fuz, ptr %i.fuq, align 8, !tbaa !276
  %i.fva = load ptr, ptr %.020.i.us.i2421, align 8, !tbaa !260 ; 2 uses
  %.not.i.us.i2425 = icmp eq ptr %i.fva, null
  br i1 %.not.i.us.i2425, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2406, label %.preheader.i.split.us.i2420, !llvm.loop !31

.preheader.i.split.i2400:                         ; preds = %.preheader.i.i2397, %.loopexit.i.i2404
  %i.fvb = phi i32 [ %i.fwb, %.loopexit.i.i2404 ], [ %.promoted.i.i2398, %.preheader.i.i2397 ]
  %.020.i.i2401 = phi ptr [ %i.fwc, %.loopexit.i.i2404 ], [ %i.fuk, %.preheader.i.i2397 ] ; 4 uses
  %.0.i.i2402 = phi ptr [ %.020.i.i2401, %.loopexit.i.i2404 ], [ null, %.preheader.i.i2397 ]
  %i.fvc = getelementptr inbounds nuw i8, ptr %.020.i.i2401, i64 8
  %i.fvd = load ptr, ptr %i.fvc, align 8, !tbaa !176 ; 3 uses
  %i.fve = getelementptr inbounds nuw i8, ptr %i.fvd, i64 12
  %i.fvf = load i32, ptr %i.fve, align 4, !tbaa !77
  %.not.i.i.i.i2403 = icmp eq i32 %i.fvf, %.fr13.i2396
  br i1 %.not.i.i.i.i2403, label %bb.agx, label %.loopexit.i.i2404

bb.agx:                                           ; preds = %.preheader.i.split.i2400
  %i.fvg = getelementptr inbounds nuw i8, ptr %i.fvd, i64 16
  %i.fvh = load i32, ptr %i.fvg, align 4, !tbaa !185
  %.not14.i.i.i.i2412 = icmp eq i32 %i.fvh, %i.fug
  br i1 %.not14.i.i.i.i2412, label %.preheader.i.i.i.i2413, label %.loopexit.i.i2404

.preheader.i.i.i.i2413:                           ; preds = %bb.agx
  %i.fvi = getelementptr inbounds nuw i8, ptr %i.fvd, i64 20
  br label %bb.agz

bb.agy:                                           ; preds = %bb.agz
  %indvars.iv.next.i.i.i.i2415 = add nuw nsw i64 %indvars.iv.i.i.i.i2414, 1 ; 2 uses
  %exitcond.not.i.i.i.i2416 = icmp eq i64 %indvars.iv.next.i.i.i.i2415, %wide.trip.count.i.i.i.i2399
  br i1 %exitcond.not.i.i.i.i2416, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2417, label %bb.agz, !llvm.loop !17

bb.agz:                                           ; preds = %bb.agy, %.preheader.i.i.i.i2413
  %indvars.iv.i.i.i.i2414 = phi i64 [ 0, %.preheader.i.i.i.i2413 ], [ %indvars.iv.next.i.i.i.i2415, %bb.agy ] ; 3 uses
  %i.fvj = getelementptr inbounds nuw [8 x i8], ptr %i.fvi, i64 %indvars.iv.i.i.i.i2414
  %i.fvk = getelementptr inbounds nuw [8 x i8], ptr %i.fup, i64 %indvars.iv.i.i.i.i2414
  %i.fvl = load <2 x i32>, ptr %i.fvj, align 4
  %i.fvm = load <2 x i32>, ptr %i.fvk, align 4
  %i.fvn = icmp eq <2 x i32> %i.fvl, %i.fvm       ; 2 uses
  %140 = extractelement <2 x i1> %i.fvn, i64 0
  %141 = extractelement <2 x i1> %i.fvn, i64 1
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %bb.agy, label %.loopexit.i.i2404

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2417: ; preds = %bb.agw, %bb.agy
  %.020.i9.i2418 = phi ptr [ %.020.i.i2401, %bb.agy ], [ %.020.i.us.i2421, %bb.agw ] ; 5 uses
  %.0.i6.i2419 = phi ptr [ %.0.i.i2402, %bb.agy ], [ %.0.i.us.i2422, %bb.agw ] ; 2 uses
  %i.fvo = getelementptr inbounds nuw i8, ptr %i.ftv, i64 52 ; 2 uses
  %i.fvp = load i32, ptr %i.fvo, align 4, !tbaa !277
  %i.fvq = add i32 %i.fvp, -1
  store i32 %i.fvq, ptr %i.fvo, align 4, !tbaa !277
  %i.fvr = icmp eq ptr %.0.i6.i2419, null
  %i.fvs = load ptr, ptr %.020.i9.i2418, align 8, !tbaa !260 ; 5 uses
  br i1 %i.fvr, label %bb.aha, label %bb.ahd

bb.aha:                                           ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2417
  %i.fvt = icmp eq ptr %i.fvs, null
  br i1 %i.fvt, label %bb.ahb, label %bb.ahc

bb.ahb:                                           ; preds = %bb.aha
  %i.fvu = getelementptr inbounds nuw i8, ptr %i.ftv, i64 48 ; 2 uses
  %i.fvv = load i32, ptr %i.fvu, align 8, !tbaa !281
  %i.fvw = add i32 %i.fvv, -1
  store i32 %i.fvw, ptr %i.fvu, align 8, !tbaa !281
  store ptr inttoptr (i64 1 to ptr), ptr %.020.i9.i2418, align 8, !tbaa !260
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2406

bb.ahc:                                           ; preds = %bb.aha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i9.i2418, ptr noundef nonnull align 8 dereferenceable(16) %i.fvs, i64 16, i1 false), !tbaa.struct !279
  %i.fvx = getelementptr inbounds nuw i8, ptr %i.ftv, i64 72 ; 2 uses
  %i.fvy = load ptr, ptr %i.fvx, align 8, !tbaa !273
  store ptr %i.fvy, ptr %i.fvs, align 8, !tbaa !260
  store ptr %i.fvs, ptr %i.fvx, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2406

bb.ahd:                                           ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i.i2417
  store ptr %i.fvs, ptr %.0.i6.i2419, align 8, !tbaa !260
  %i.fvz = getelementptr inbounds nuw i8, ptr %i.ftv, i64 72 ; 2 uses
  %i.fwa = load ptr, ptr %i.fvz, align 8, !tbaa !273
  store ptr %i.fwa, ptr %.020.i9.i2418, align 8, !tbaa !260
  store ptr %.020.i9.i2418, ptr %i.fvz, align 8, !tbaa !273
  br label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2406

.loopexit.i.i2404:                                ; preds = %bb.agz, %bb.agx, %.preheader.i.split.i2400
  %i.fwb = add i32 %i.fvb, 1                      ; 2 uses
  store i32 %i.fwb, ptr %i.fuq, align 8, !tbaa !276
  %i.fwc = load ptr, ptr %.020.i.i2401, align 8, !tbaa !260 ; 2 uses
  %.not.i.i2405 = icmp eq ptr %i.fwc, null
  br i1 %.not.i.i2405, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2406, label %.preheader.i.split.i2400, !llvm.loop !31

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2406: ; preds = %.loopexit.i.i2404, %.loopexit.i.us.i2424, %bb.ahd, %bb.ahc, %bb.ahb, %bb.agv
  %i.fwd = getelementptr inbounds nuw i8, ptr %i.ftu, i64 4
  %i.fwe = load i32, ptr %i.fwd, align 4, !tbaa !173
  %i.fwf = invoke noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
          to label %.noexc2427 unwind label %.loopexit.split-lp2975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2427:                                       ; preds = %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i2406
  br i1 %i.fwf, label %_ZN6id_gen7recycleEj.exit.i2408, label %bb.ahe

bb.ahe:                                           ; preds = %.noexc2427
  %i.fwg = getelementptr inbounds nuw i8, ptr %i.ftv, i64 96 ; 3 uses
  %i.fwh = load ptr, ptr %i.fwg, align 8, !tbaa !68 ; 4 uses
  %i.fwi = icmp eq ptr %i.fwh, null
  br i1 %i.fwi, label %bb.ahg, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  %i.fwj = getelementptr inbounds i8, ptr %i.fwh, i64 -4
  %i.fwk = load i32, ptr %i.fwj, align 4, !tbaa !69 ; 5 uses
  %i.fwl = getelementptr inbounds i8, ptr %i.fwh, i64 -8 ; 2 uses
  %i.fwm = load i32, ptr %i.fwl, align 4, !tbaa !69
  %i.fwn = icmp eq i32 %i.fwk, %i.fwm
  br i1 %i.fwn, label %bb.ahh, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2407

bb.ahg:                                           ; preds = %bb.ahe
  %i.fwo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc2651 unwind label %.loopexit.split-lp2975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc2651:                                       ; preds = %bb.ahg
  store i32 2, ptr %i.fwo, align 4, !tbaa !69
  %i.fwp = getelementptr inbounds nuw i8, ptr %i.fwo, i64 4
  store i32 0, ptr %i.fwp, align 4, !tbaa !69
  %i.fwq = getelementptr inbounds nuw i8, ptr %i.fwo, i64 8 ; 2 uses
  store ptr %i.fwq, ptr %i.fwg, align 8, !tbaa !68
  br label %.noexc2428

bb.ahh:                                           ; preds = %bb.ahf
  %i.fwr = mul i32 %i.fwk, 3
  %i.fws = add i32 %i.fwr, 1
  %i.fwt = lshr i32 %i.fws, 1                     ; 3 uses
  %i.fwu = shl i32 %i.fwt, 2
  %i.fwv = add i32 %i.fwu, 8                      ; 2 uses
  %.not.i2641 = icmp ugt i32 %i.fwt, %i.fwk
  br i1 %.not.i2641, label %bb.ahi, label %bb.ahj

bb.ahi:                                           ; preds = %bb.ahh
  %i.fww = shl i32 %i.fwk, 2
  %i.fwx = add i32 %i.fww, 8
  %.not27.i2650 = icmp ugt i32 %i.fwv, %i.fwx
  br i1 %.not27.i2650, label %bb.aho, label %bb.ahj

bb.ahj:                                           ; preds = %bb.ahi, %bb.ahh
  %i.fwy = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ahk unwind label %bb.ahn

bb.ahk:                                           ; preds = %bb.ahj
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.fwy, align 8, !tbaa !172
  %i.fwz = getelementptr inbounds nuw i8, ptr %i.fwy, i64 8 ; 2 uses
  %i.fxa = getelementptr inbounds nuw i8, ptr %i.fwy, i64 24 ; 3 uses
  store ptr %i.fxa, ptr %i.fwz, align 8, !tbaa !225
  %i.fxb = load ptr, ptr %5, align 8, !tbaa !168  ; 2 uses
  %i.fxc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.fxd = icmp eq ptr %i.fxb, %i.fxc
  br i1 %i.fxd, label %bb.ahl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2643

bb.ahl:                                           ; preds = %bb.ahk
  %i.fxe = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fxf = load i64, ptr %i.fxe, align 8, !tbaa !169 ; 3 uses
  %i.fxg = icmp ult i64 %i.fxf, 16
  call void @llvm.assume(i1 %i.fxg)
  %i.fxh = add nuw nsw i64 %i.fxf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fxa, ptr noundef nonnull align 8 dereferenceable(1) %i.fxc, i64 %i.fxh, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2646

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2643: ; preds = %bb.ahk
  store ptr %i.fxb, ptr %i.fwz, align 8, !tbaa !168
  %i.fxi = load i64, ptr %i.fxc, align 8, !tbaa !170
  store i64 %i.fxi, ptr %i.fxa, align 8, !tbaa !170
  %.phi.trans.insert.i2644 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i2645 = load i64, ptr %.phi.trans.insert.i2644, align 8, !tbaa !169
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2646

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2646: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2643, %bb.ahl
  %i.fxj = phi i64 [ %i.fxf, %bb.ahl ], [ %.pre.i2645, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2643 ]
  %i.fxk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fxl = getelementptr inbounds nuw i8, ptr %i.fwy, i64 16
  store i64 %i.fxj, ptr %i.fxl, align 8, !tbaa !169
  store ptr %i.fxc, ptr %5, align 8, !tbaa !168
  store i64 0, ptr %i.fxk, align 8, !tbaa !169
  store i8 0, ptr %i.fxc, align 8, !tbaa !170
  invoke void @__cxa_throw(ptr nonnull %i.fwy, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ahp unwind label %bb.ahm

bb.ahm:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2646
  %i.fxm = landingpad { ptr, i32 }
          catch ptr null
  %i.fxn = load ptr, ptr %5, align 8, !tbaa !168  ; 2 uses
  %i.fxo = icmp eq ptr %i.fxn, %i.fxc
  br i1 %i.fxo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2648, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2647

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2647: ; preds = %bb.ahm
  %i.fxp = load i64, ptr %i.fxc, align 8, !tbaa !170
  %i.fxq = add i64 %i.fxp, 1
  call void @_ZdlPvm(ptr noundef %i.fxn, i64 noundef %i.fxq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2648

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i2648: ; preds = %bb.ahm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i2647
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.body2652

bb.ahn:                                           ; preds = %bb.ahj
  %i.fxr = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @__cxa_free_exception(ptr %i.fwy) #29
  br label %.body2652

bb.aho:                                           ; preds = %bb.ahi
  %i.fxs = zext i32 %i.fwv to i64
  %i.fxt = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fwl, i64 noundef %i.fxs)
          to label %.noexc2654 unwind label %.loopexit.split-lp2975.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2654:                                       ; preds = %bb.aho
  %i.fxu = getelementptr inbounds nuw i8, ptr %i.fxt, i64 8 ; 2 uses
  store ptr %i.fxu, ptr %i.fwg, align 8, !tbaa !68
  store i32 %i.fwt, ptr %i.fxt, align 4, !tbaa !69
  br label %.noexc2428

bb.ahp:                                           ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i2646
  unreachable

.noexc2428:                                       ; preds = %.noexc2654, %.noexc2651
  %.pre.i.i.i2409 = phi ptr [ %i.fxu, %.noexc2654 ], [ %i.fwq, %.noexc2651 ] ; 2 uses
  %.phi.trans.insert.i.i.i2410 = getelementptr inbounds i8, ptr %.pre.i.i.i2409, i64 -4
  %.pre2.i.i.i2411 = load i32, ptr %.phi.trans.insert.i.i.i2410, align 4, !tbaa !69
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2407

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i2407:    ; preds = %.noexc2428, %bb.ahf
  %i.fxv = phi i32 [ %.pre2.i.i.i2411, %.noexc2428 ], [ %i.fwk, %bb.ahf ] ; 2 uses
  %i.fxw = phi ptr [ %.pre.i.i.i2409, %.noexc2428 ], [ %i.fwh, %bb.ahf ] ; 2 uses
  %i.fxx = getelementptr inbounds i8, ptr %i.fxw, i64 -4
  %i.fxy = zext i32 %i.fxv to i64
  %i.fxz = getelementptr inbounds nuw [4 x i8], ptr %i.fxw, i64 %i.fxy
  store i32 %i.fwe, ptr %i.fxz, align 4, !tbaa !69
  %i.fya = add i32 %i.fxv, 1
  store i32 %i.fya, ptr %i.fxx, align 4, !tbaa !69
  br label %_ZN6id_gen7recycleEj.exit.i2408

end_hunk_20
