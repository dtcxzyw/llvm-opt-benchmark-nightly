Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial?download=true
inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN22basic_interval_managerI12mpbq_managerLb0EE5powerERKNS1_8intervalEjRS2_:bb.a

_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit:        ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !340
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.m, ptr %i.n, align 8, !tbaa !340
  tail call void @_ZN12mpbq_manager5powerER4mpbqj(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %2)
  %i.o = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit
  %i.v = load i32, ptr %i.p, align 8, !tbaa !90
  store i32 %i.v, ptr %i.q, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.w, align 4
  br label %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit22

bb.f:                                             ; preds = %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !339, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef nonnull align 8 dereferenceable(20) %i.p)
  br label %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit22

_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit22:      ; preds = %bb.e, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !340
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !340
  tail call void @_ZN12mpbq_manager5powerER4mpbqj(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.q, i32 noundef %2)
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %1, align 8, !tbaa !90
  store i32 %i.ad, ptr %3, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, -2
  store i8 %i.ag, ptr %i.ae, align 4
  br label %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit23

bb.i:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !339, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ah, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br label %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit23

_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit23:      ; preds = %bb.h, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !340
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !340
  tail call void @_ZN12mpbq_manager5powerER4mpbqj(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %2)
  %i.al = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit23
  %i.as = load i32, ptr %i.am, align 8, !tbaa !90
  store i32 %i.as, ptr %i.an, align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 4
  br label %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit24

bb.k:                                             ; preds = %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit23
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !339, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.aw, ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr noundef nonnull align 8 dereferenceable(20) %i.am)
  br label %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit24

_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit24:      ; preds = %bb.j, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !340
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !340
  tail call void @_ZN12mpbq_manager5powerER4mpbqj(ptr noundef nonnull align 8 dereferenceable(208) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.an, i32 noundef %2)
  %i.ba = load i32, ptr %1, align 8, !tbaa !90
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit24
  %i.bc = load i32, ptr %i.am, align 8, !tbaa !90
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr %3, align 8, !tbaa !69
  %i.bf = load i32, ptr %i.an, align 8, !tbaa !69
  store i32 %i.bf, ptr %3, align 8, !tbaa !69
  store i32 %i.be, ptr %i.an, align 8, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !205
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !205
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !205
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !205
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4             ; 2 uses
  %i.bo = and i8 %i.bl, -4
  %i.bp = and i8 %i.bn, -4
  %i.bq = and i8 %i.bn, 3
  %i.br = or disjoint i8 %i.bq, %i.bo
  store i8 %i.br, ptr %i.bk, align 4
  %i.bs = and i8 %i.bl, 3
  %i.bt = or disjoint i8 %i.bp, %i.bs
  store i8 %i.bt, ptr %i.bm, align 4
  %i.bu = load i32, ptr %i.ak, align 8, !tbaa !69
  %i.bv = load i32, ptr %i.az, align 8, !tbaa !69
  store i32 %i.bv, ptr %i.ak, align 8, !tbaa !69
  store i32 %i.bu, ptr %i.az, align 8, !tbaa !69
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.bx = tail call noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqS2_(ptr noundef nonnull align 8 dereferenceable(208) %i.bw, ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr noundef nonnull align 8 dereferenceable(20) %3)
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = load i32, ptr %3, align 8, !tbaa !69
  %i.bz = load i32, ptr %i.an, align 8, !tbaa !69
  store i32 %i.bz, ptr %3, align 8, !tbaa !69
  store i32 %i.by, ptr %i.an, align 8, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !205
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !205
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !205
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !205
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 4             ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4             ; 2 uses
  %i.ci = and i8 %i.cf, -4
  %i.cj = and i8 %i.ch, -4
  %i.ck = and i8 %i.ch, 3
  %i.cl = or disjoint i8 %i.ck, %i.ci
  store i8 %i.cl, ptr %i.ce, align 4
  %i.cm = and i8 %i.cf, 3
  %i.cn = or disjoint i8 %i.cj, %i.cm
  store i8 %i.cn, ptr %i.cg, align 4
  %i.co = load i32, ptr %i.ak, align 8, !tbaa !69
  %i.cp = load i32, ptr %i.az, align 8, !tbaa !69
  store i32 %i.cp, ptr %i.ak, align 8, !tbaa !69
  store i32 %i.co, ptr %i.az, align 8, !tbaa !69
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cq = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !339, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.cr, ptr noundef nonnull align 8 dereferenceable(20) %3)
  store i32 0, ptr %i.ak, align 8, !tbaa !340
  br label %bb.q

bb.q:                                             ; preds = %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit24, %bb.p, %bb.m, %_ZN12mpbq_manager5powerERK4mpbqjRS0_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN22basic_interval_managerI12mpbq_managerLb0EE3mulERKNS1_8intervalES4_RS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  tail call void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.i, align 4
  br label %_ZN22basic_interval_managerI12mpbq_managerLb0EE16init_mul_max_minEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !339, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !69
  %.pre1.i = load i8, ptr %i.d, align 4
  br label %_ZN22basic_interval_managerI12mpbq_managerLb0EE16init_mul_max_minEv.exit

_ZN22basic_interval_managerI12mpbq_managerLb0EE16init_mul_max_minEv.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i8 [ %i.e, %bb.b ], [ %.pre1.i, %bb.c ] ; 2 uses
  %i.o = phi i32 [ %i.h, %bb.b ], [ %.pre.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !340  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !340
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !69
  store i32 %i.o, ptr %i.s, align 8, !tbaa !69
  store i32 %i.t, ptr %i.b, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !205
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !205
  store ptr %i.x, ptr %i.u, align 8, !tbaa !205
  store ptr %i.w, ptr %i.v, align 8, !tbaa !205
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.z = load i8, ptr %i.y, align 4               ; 2 uses
  %i.aa = and i8 %i.z, -4
  %i.ab = and i8 %i.n, -4
  %i.ac = and i8 %i.n, 3
  %i.ad = or disjoint i8 %i.aa, %i.ac
  store i8 %i.ad, ptr %i.y, align 4
  %i.ae = and i8 %i.z, 3
  %i.af = or disjoint i8 %i.ae, %i.ab
  store i8 %i.af, ptr %i.d, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !69
  store i32 %i.q, ptr %i.ag, align 8, !tbaa !69
  store i32 %i.ah, ptr %i.p, align 8, !tbaa !69
  %i.ai = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  tail call void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ai, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  tail call void @_ZN22basic_interval_managerI12mpbq_managerLb0EE18update_mul_max_minEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ak = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(20) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  tail call void @_ZN22basic_interval_managerI12mpbq_managerLb0EE18update_mul_max_minEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.am = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  tail call void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  tail call void @_ZN22basic_interval_managerI12mpbq_managerLb0EE18update_mul_max_minEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.an = load i32, ptr %3, align 8, !tbaa !69
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !69
  store i32 %i.ao, ptr %3, align 8, !tbaa !69
  store i32 %i.an, ptr %i.c, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !205
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !205
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !205
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !205
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.au = load i8, ptr %i.at, align 4             ; 2 uses
  %i.av = and i8 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, 2
  %i.az = and i8 %i.au, -3
  %i.ba = or disjoint i8 %i.ay, %i.az
  store i8 %i.ba, ptr %i.at, align 4
  %i.bb = load i8, ptr %i.aw, align 4             ; 2 uses
  %i.bc = and i8 %i.bb, -3
  %i.bd = or disjoint i8 %i.bc, %i.av
  store i8 %i.bd, ptr %i.aw, align 4
  %i.be = load i8, ptr %i.at, align 4             ; 2 uses
  %i.bf = and i8 %i.be, 1
  %i.bg = and i8 %i.bb, 1
  %i.bh = and i8 %i.be, -2
  %i.bi = or disjoint i8 %i.bh, %i.bg
  store i8 %i.bi, ptr %i.at, align 4
  %i.bj = load i8, ptr %i.aw, align 4
  %i.bk = and i8 %i.bj, -2
  %i.bl = or disjoint i8 %i.bk, %i.bf
  store i8 %i.bl, ptr %i.aw, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !69
  %i.bo = load i32, ptr %i.r, align 8, !tbaa !69
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !69
  store i32 %i.bn, ptr %i.r, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !69
  %i.br = load i32, ptr %i.s, align 8, !tbaa !69
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !69
  store i32 %i.bq, ptr %i.s, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !205
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !205
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !205
  store ptr %i.bt, ptr %i.u, align 8, !tbaa !205
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %i.bw = load i8, ptr %i.bv, align 4             ; 2 uses
  %i.bx = and i8 %i.bw, 2
  %i.by = load i8, ptr %i.y, align 4
  %i.bz = and i8 %i.by, 2
  %i.ca = and i8 %i.bw, -3
  %i.cb = or disjoint i8 %i.bz, %i.ca
  store i8 %i.cb, ptr %i.bv, align 4
  %i.cc = load i8, ptr %i.y, align 4              ; 2 uses
  %i.cd = and i8 %i.cc, -3
  %i.ce = or disjoint i8 %i.cd, %i.bx
  store i8 %i.ce, ptr %i.y, align 4
  %i.cf = load i8, ptr %i.bv, align 4             ; 2 uses
  %i.cg = and i8 %i.cf, 1
  %i.ch = and i8 %i.cc, 1
  %i.ci = and i8 %i.cf, -2
  %i.cj = or disjoint i8 %i.ci, %i.ch
  store i8 %i.cj, ptr %i.bv, align 4
  %i.ck = load i8, ptr %i.y, align 4
  %i.cl = and i8 %i.ck, -2
  %i.cm = or disjoint i8 %i.cl, %i.cg
  store i8 %i.cm, ptr %i.y, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !69
  %i.cp = load i32, ptr %i.ag, align 8, !tbaa !69
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !69
  store i32 %i.co, ptr %i.ag, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15_scoped_numeralI13mpbqi_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !344, !nonnull !98, !align !99 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !339, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %i.f)
          to label %_ZN22basic_interval_managerI12mpbq_managerLb0EE3delERNS1_8intervalE.exit unwind label %bb.b

_ZN22basic_interval_managerI12mpbq_managerLb0EE3delERNS1_8intervalE.exit: ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #28
  unreachable
}

declare void @_ZN12mpbq_manager5powerER4mpbqj(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqS2_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN22basic_interval_managerI12mpbq_managerLb0EE18update_mul_max_minEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = tail call noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqS2_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.c)
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !90
  store i32 %i.i, ptr %i.c, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !339, !nonnull !98, !align !99
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit

_ZN12mpbq_manager3setER4mpbqRKS0_.exit:           ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !340
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.p, ptr %i.q, align 8, !tbaa !340
  br label %bb.e

bb.e:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit, %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !337, !nonnull !98, !align !99
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = tail call noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqS2_(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.s, align 8, !tbaa !69
  %i.v = load i32, ptr %i.b, align 8, !tbaa !69
  store i32 %i.v, ptr %i.s, align 8, !tbaa !69
  store i32 %i.u, ptr %i.b, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !205
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !205
  store ptr %i.z, ptr %i.w, align 8, !tbaa !205
  store ptr %i.y, ptr %i.x, align 8, !tbaa !205
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.ae = and i8 %i.ab, -4
  %i.af = and i8 %i.ad, -4
  %i.ag = and i8 %i.ad, 3
  %i.ah = or disjoint i8 %i.ag, %i.ae
  store i8 %i.ah, ptr %i.aa, align 4
  %i.ai = and i8 %i.ab, 3
  %i.aj = or disjoint i8 %i.af, %i.ai
  store i8 %i.aj, ptr %i.ac, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !69
  %i.an = load i32, ptr %i.al, align 8, !tbaa !69
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !69
end_hunk_0
