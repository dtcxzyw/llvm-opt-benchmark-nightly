Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpz?download=true
inline.NumInlined: 1746
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN11mpz_managerILb1EE11bitwise_andERK3mpzS3_RS1_:bb.a
  %i.fj = load i8, ptr %i.ae, align 4
  %i.fk = and i8 %i.fj, -3
  br label %.thread27.i.i.i27

.thread27.i.i.i27:                                ; preds = %bb.aj, %bb.ak
  %i.fl = phi ptr [ %i.fh, %bb.ak ], [ %i.ff, %bb.aj ] ; 2 uses
  %i.fm = phi i8 [ %i.fk, %bb.ak ], [ %i.es, %bb.aj ]
  %i.fn = or i8 %i.fm, 1
  store i8 %i.fn, ptr %i.ae, align 4
  %i.fo = icmp slt i64 %i.fc, 0
  %.sink.i.i.i28 = select i1 %i.fo, i32 -1, i32 1
  %.0.i.i.i29 = call i64 @llvm.abs.i64(i64 %i.fc, i1 true) ; 2 uses
  store i32 %.sink.i.i.i28, ptr %8, align 8, !tbaa !27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %.0.i.i.i29, ptr %i.fp, align 4
  %i.fq = icmp samesign ult i64 %.0.i.i.i29, 4294967296
  %.ph.i.i.i30 = select i1 %i.fq, i32 1, i32 2
  store i32 %.ph.i.i.i30, ptr %i.fl, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit31

bb.al:                                            ; preds = %bb.ag, %_ZN11mpz_managerILb1EE3addERK3mpzS3_RS1_.exit
  call void @_ZN11mpz_managerILb1EE7big_mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit31

_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit31:  ; preds = %bb.ai, %.thread27.i.i.i27, %bb.al
  call void @_ZN11mpz_managerILb1EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN11mpz_managerILb1EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.fr = load i32, ptr %4, align 8, !tbaa !27
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = load i32, ptr %5, align 8
  %i.fu = icmp eq i32 %i.ft, 0
  %or.cond = select i1 %i.fs, i1 true, i1 %i.fu
  br i1 %or.cond, label %.critedge, label %bb.i, !llvm.loop !163

.critedge:                                        ; preds = %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit31, %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit12
  %i.fv = load ptr, ptr %i.r, align 8, !tbaa !26  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i, label %_ZN11mpz_managerILb1EE3delER3mpz.exit, label %bb.am

bb.am:                                            ; preds = %.critedge
  %i.fw = load i8, ptr %i.o, align 4              ; 2 uses
  %i.fx = and i8 %i.fw, 2
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.an, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i

bb.an:                                            ; preds = %bb.am
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fv)
  %.pre.i.i32 = load i8, ptr %i.o, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i: ; preds = %bb.an, %bb.am
  %i.fz = phi i8 [ %i.fw, %bb.am ], [ %.pre.i.i32, %bb.an ]
  store ptr null, ptr %i.r, align 8, !tbaa !26
  %i.ga = and i8 %i.fz, -4
  store i8 %i.ga, ptr %i.o, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit

_ZN11mpz_managerILb1EE3delER3mpz.exit:            ; preds = %.critedge, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i
  %i.gb = load ptr, ptr %i.v, align 8, !tbaa !26  ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i33, label %_ZN11mpz_managerILb1EE3delER3mpz.exit36, label %bb.ao

bb.ao:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit
  %i.gc = load i8, ptr %i.s, align 4              ; 2 uses
  %i.gd = and i8 %i.gc, 2
  %i.ge = icmp eq i8 %i.gd, 0
  br i1 %i.ge, label %bb.ap, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i34

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gb)
  %.pre.i.i35 = load i8, ptr %i.s, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i34

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i34: ; preds = %bb.ap, %bb.ao
  %i.gf = phi i8 [ %i.gc, %bb.ao ], [ %.pre.i.i35, %bb.ap ]
  store ptr null, ptr %i.v, align 8, !tbaa !26
  %i.gg = and i8 %i.gf, -4
  store i8 %i.gg, ptr %i.s, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit36

_ZN11mpz_managerILb1EE3delER3mpz.exit36:          ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i34
  %i.gh = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i37, label %_ZN11mpz_managerILb1EE3delER3mpz.exit40, label %bb.aq

bb.aq:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit36
  %i.gi = load i8, ptr %i.w, align 4              ; 2 uses
  %i.gj = and i8 %i.gi, 2
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %bb.ar, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i38

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gh)
  %.pre.i.i39 = load i8, ptr %i.w, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i38

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i38: ; preds = %bb.ar, %bb.aq
  %i.gl = phi i8 [ %i.gi, %bb.aq ], [ %.pre.i.i39, %bb.ar ]
  store ptr null, ptr %i.z, align 8, !tbaa !26
  %i.gm = and i8 %i.gl, -4
  store i8 %i.gm, ptr %i.w, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit40

_ZN11mpz_managerILb1EE3delER3mpz.exit40:          ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit36, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i38
  %i.gn = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i41, label %_ZN11mpz_managerILb1EE3delER3mpz.exit44, label %bb.as

bb.as:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit40
  %i.go = load i8, ptr %i.aa, align 4             ; 2 uses
  %i.gp = and i8 %i.go, 2
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.at, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i42

bb.at:                                            ; preds = %bb.as
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gn)
  %.pre.i.i43 = load i8, ptr %i.aa, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i42

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i42: ; preds = %bb.at, %bb.as
  %i.gr = phi i8 [ %i.go, %bb.as ], [ %.pre.i.i43, %bb.at ]
  store ptr null, ptr %i.ad, align 8, !tbaa !26
  %i.gs = and i8 %i.gr, -4
  store i8 %i.gs, ptr %i.aa, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit44

_ZN11mpz_managerILb1EE3delER3mpz.exit44:          ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit40, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i42
  %i.gt = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i45, label %_ZN11mpz_managerILb1EE3delER3mpz.exit48, label %bb.au

bb.au:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit44
  %i.gu = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.gv = and i8 %i.gu, 2
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.av, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i46

bb.av:                                            ; preds = %bb.au
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gt)
  %.pre.i.i47 = load i8, ptr %i.ae, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i46

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i46: ; preds = %bb.av, %bb.au
  %i.gx = phi i8 [ %i.gu, %bb.au ], [ %.pre.i.i47, %bb.av ]
  store ptr null, ptr %i.ah, align 8, !tbaa !26
  %i.gy = and i8 %i.gx, -4
  store i8 %i.gy, ptr %i.ae, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit48

_ZN11mpz_managerILb1EE3delER3mpz.exit48:          ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit44, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i46
  %i.gz = load ptr, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i49, label %_ZN11mpz_managerILb1EE3delER3mpz.exit52, label %bb.aw

bb.aw:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit48
  %i.ha = load i8, ptr %i.ai, align 4
  %i.hb = and i8 %i.ha, 2
  %i.hc = icmp eq i8 %i.hb, 0
  br i1 %i.hc, label %bb.ax, label %_ZN11mpz_managerILb1EE3delER3mpz.exit52

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gz)
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit52

_ZN11mpz_managerILb1EE3delER3mpz.exit52:          ; preds = %bb.aw, %bb.ax, %_ZN11mpz_managerILb1EE3delER3mpz.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit52, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN11mpz_managerILb1EE11bitwise_xorERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 18 uses
  %5 = alloca %class.mpz, align 8                 ; 19 uses
  %6 = alloca %class.mpz, align 8                 ; 7 uses
  %7 = alloca %class.mpz, align 8                 ; 7 uses
  %8 = alloca %class.mpz, align 8                 ; 17 uses
  %9 = alloca %class.mpz, align 8                 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 8, !tbaa !27
  %i.j = load i32, ptr %2, align 8, !tbaa !27
  %i.k = xor i32 %i.j, %i.i
  store i32 %i.k, ptr %3, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.l, align 4
  br label %_ZN11mpz_managerILb1EE7set_i64ER3mpzl.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 11 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4                          ; 2 uses
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr null, ptr %i.r, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 12 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, -4
  store i8 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr null, ptr %i.v, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 0, ptr %6, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 6 uses
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, -4
  store i8 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr null, ptr %i.z, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 0, ptr %7, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 6 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 0, ptr %8, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 14 uses
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, -4
  store i8 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 0, ptr %9, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 13 uses
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, -4
  store i8 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store ptr null, ptr %i.al, align 8, !tbaa !26
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = load i32, ptr %1, align 8, !tbaa !27
  store i32 %i.am, ptr %4, align 8, !tbaa !27
  store i8 %i.q, ptr %i.o, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit:       ; preds = %bb.e, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = and i8 %i.ao, 1
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit
  %i.ar = load i32, ptr %2, align 8, !tbaa !27
  store i32 %i.ar, ptr %5, align 8, !tbaa !27
  %i.as = load i8, ptr %i.s, align 4
  %i.at = and i8 %i.as, -2
  store i8 %i.at, ptr %i.s, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit15

bb.h:                                             ; preds = %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit15

_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit15:     ; preds = %bb.g, %bb.h
  store i32 1, ptr %8, align 8, !tbaa !27
  %i.au = load i8, ptr %i.ae, align 4
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.ae, align 4
  store i32 0, ptr %3, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 14 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, -2
  store i8 %i.ay, ptr %i.aw, align 4
  %i.az = load i32, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN11mpz_managerILb1EE3addERK3mpzS3_RS1_.exit55, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.be = load i32, ptr %5, align 8, !tbaa !27
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.critedge, label %.lr.ph117

bb.i:                                             ; preds = %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit37
  %i.bg = load i32, ptr %5, align 8, !tbaa !27
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.critedge, label %.lr.ph117, !llvm.loop !164

.lr.ph117:                                        ; preds = %.lr.ph, %bb.i
  call void @_ZN11mpz_managerILb1EE3modERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @_ZN11mpz_managerILb1EE3modERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.bi = load i8, ptr %i.w, align 4
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph117
  %i.bl = load i32, ptr %6, align 8, !tbaa !27
  %i.bm = sext i32 %i.bl to i64
  br label %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit

bb.k:                                             ; preds = %.lr.ph117
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !35
  %i.bp = icmp eq i32 %i.bo, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !36
  %i.bs = zext i32 %i.br to i64
  br label %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit

bb.m:                                             ; preds = %bb.k
  %i.bt = load i64, ptr %i.bq, align 4
  br label %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit

_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit:  ; preds = %bb.j, %bb.l, %bb.m
  %.0.i = phi i64 [ %i.bm, %bb.j ], [ %i.bs, %bb.l ], [ %i.bt, %bb.m ]
  %i.bu = load i8, ptr %i.aa, align 4
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit
  %i.bx = load i32, ptr %7, align 8, !tbaa !27
  %i.by = sext i32 %i.bx to i64
  br label %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit17

bb.o:                                             ; preds = %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !35
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !36
  %i.ce = zext i32 %i.cd to i64
  br label %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit17

bb.q:                                             ; preds = %bb.o
  %i.cf = load i64, ptr %i.cc, align 4
  br label %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit17

_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit17: ; preds = %bb.n, %bb.p, %bb.q
  %.0.i16 = phi i64 [ %i.by, %bb.n ], [ %i.ce, %bb.p ], [ %i.cf, %bb.q ]
  %i.cg = xor i64 %.0.i16, %.0.i                  ; 5 uses
  %i.ch = icmp ult i64 %i.cg, 2147483647
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit17
  %i.ci = trunc nuw nsw i64 %i.cg to i32
  store i32 %i.ci, ptr %9, align 8, !tbaa !27
  %i.cj = load i8, ptr %i.ai, align 4
  %i.ck = and i8 %i.cj, -2                        ; 2 uses
  store i8 %i.ck, ptr %i.ai, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzm.exit

bb.s:                                             ; preds = %_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz.exit17
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.t, label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %bb.s
  %.pre.i.i20 = load i8, ptr %i.ai, align 4
  br label %_ZN11mpz_managerILb1EE12set_big_ui64ER3mpzm.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cn = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32) ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i32 6, ptr %i.co, align 4, !tbaa !22
  store ptr %i.cn, ptr %i.al, align 8, !tbaa !26
  %i.cp = load i8, ptr %i.ai, align 4
end_hunk_0
begin_hunk_1_@_ZN11mpz_managerILb0EE11bitwise_andERK3mpzS3_RS1_:bb.a
  %i.fu = icmp eq i32 %i.ft, 0
  %or.cond = select i1 %i.fs, i1 true, i1 %i.fu
  br i1 %or.cond, label %.critedge, label %bb.i, !llvm.loop !251

.critedge:                                        ; preds = %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit31, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit12
  %i.fv = load ptr, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  %.not.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i, label %_ZN11mpz_managerILb0EE3delER3mpz.exit, label %bb.am

bb.am:                                            ; preds = %.critedge
  %i.fw = load i8, ptr %i.o, align 4              ; 2 uses
  %i.fx = and i8 %i.fw, 2
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.an, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !22
  %i.gb = shl i32 %i.ga, 2
  %i.gc = add i32 %i.gb, 8
  %i.gd = zext i32 %i.gc to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.gd, ptr noundef nonnull %i.fv)
  %.pre.i.i32 = load i8, ptr %i.o, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i: ; preds = %bb.an, %bb.am
  %i.ge = phi i8 [ %i.fw, %bb.am ], [ %.pre.i.i32, %bb.an ]
  store ptr null, ptr %i.r, align 8, !tbaa !26
  %i.gf = and i8 %i.ge, -4
  store i8 %i.gf, ptr %i.o, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit

_ZN11mpz_managerILb0EE3delER3mpz.exit:            ; preds = %.critedge, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i
  %i.gg = load ptr, ptr %i.v, align 8, !tbaa !26  ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i33, label %_ZN11mpz_managerILb0EE3delER3mpz.exit36, label %bb.ao

bb.ao:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit
  %i.gh = load i8, ptr %i.s, align 4              ; 2 uses
  %i.gi = and i8 %i.gh, 2
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %bb.ap, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i34

bb.ap:                                            ; preds = %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !22
  %i.gm = shl i32 %i.gl, 2
  %i.gn = add i32 %i.gm, 8
  %i.go = zext i32 %i.gn to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.go, ptr noundef nonnull %i.gg)
  %.pre.i.i35 = load i8, ptr %i.s, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i34

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i34: ; preds = %bb.ap, %bb.ao
  %i.gp = phi i8 [ %i.gh, %bb.ao ], [ %.pre.i.i35, %bb.ap ]
  store ptr null, ptr %i.v, align 8, !tbaa !26
  %i.gq = and i8 %i.gp, -4
  store i8 %i.gq, ptr %i.s, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit36

_ZN11mpz_managerILb0EE3delER3mpz.exit36:          ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i34
  %i.gr = load ptr, ptr %i.z, align 8, !tbaa !26  ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i37, label %_ZN11mpz_managerILb0EE3delER3mpz.exit40, label %bb.aq

bb.aq:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit36
  %i.gs = load i8, ptr %i.w, align 4              ; 2 uses
  %i.gt = and i8 %i.gs, 2
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.ar, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i38

bb.ar:                                            ; preds = %bb.aq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !22
  %i.gx = shl i32 %i.gw, 2
  %i.gy = add i32 %i.gx, 8
  %i.gz = zext i32 %i.gy to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.gz, ptr noundef nonnull %i.gr)
  %.pre.i.i39 = load i8, ptr %i.w, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i38

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i38: ; preds = %bb.ar, %bb.aq
  %i.ha = phi i8 [ %i.gs, %bb.aq ], [ %.pre.i.i39, %bb.ar ]
  store ptr null, ptr %i.z, align 8, !tbaa !26
  %i.hb = and i8 %i.ha, -4
  store i8 %i.hb, ptr %i.w, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit40

_ZN11mpz_managerILb0EE3delER3mpz.exit40:          ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit36, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i38
  %i.hc = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i41, label %_ZN11mpz_managerILb0EE3delER3mpz.exit44, label %bb.as

bb.as:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit40
  %i.hd = load i8, ptr %i.aa, align 4             ; 2 uses
  %i.he = and i8 %i.hd, 2
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %bb.at, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i42

bb.at:                                            ; preds = %bb.as
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !22
  %i.hi = shl i32 %i.hh, 2
  %i.hj = add i32 %i.hi, 8
  %i.hk = zext i32 %i.hj to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.hk, ptr noundef nonnull %i.hc)
  %.pre.i.i43 = load i8, ptr %i.aa, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i42

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i42: ; preds = %bb.at, %bb.as
  %i.hl = phi i8 [ %i.hd, %bb.as ], [ %.pre.i.i43, %bb.at ]
  store ptr null, ptr %i.ad, align 8, !tbaa !26
  %i.hm = and i8 %i.hl, -4
  store i8 %i.hm, ptr %i.aa, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit44

_ZN11mpz_managerILb0EE3delER3mpz.exit44:          ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit40, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i42
  %i.hn = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i45, label %_ZN11mpz_managerILb0EE3delER3mpz.exit48, label %bb.au

bb.au:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit44
  %i.ho = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.hp = and i8 %i.ho, 2
  %i.hq = icmp eq i8 %i.hp, 0
  br i1 %i.hq, label %bb.av, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i46

bb.av:                                            ; preds = %bb.au
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !22
  %i.ht = shl i32 %i.hs, 2
  %i.hu = add i32 %i.ht, 8
  %i.hv = zext i32 %i.hu to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.hv, ptr noundef nonnull %i.hn)
  %.pre.i.i47 = load i8, ptr %i.ae, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i46

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i46: ; preds = %bb.av, %bb.au
  %i.hw = phi i8 [ %i.ho, %bb.au ], [ %.pre.i.i47, %bb.av ]
  store ptr null, ptr %i.ah, align 8, !tbaa !26
  %i.hx = and i8 %i.hw, -4
  store i8 %i.hx, ptr %i.ae, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit48

_ZN11mpz_managerILb0EE3delER3mpz.exit48:          ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit44, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i46
  %i.hy = load ptr, ptr %i.al, align 8, !tbaa !26 ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i49, label %_ZN11mpz_managerILb0EE3delER3mpz.exit52, label %bb.aw

bb.aw:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit48
  %i.hz = load i8, ptr %i.ai, align 4
  %i.ia = and i8 %i.hz, 2
  %i.ib = icmp eq i8 %i.ia, 0
  br i1 %i.ib, label %bb.ax, label %_ZN11mpz_managerILb0EE3delER3mpz.exit52

bb.ax:                                            ; preds = %bb.aw
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !22
  %i.ie = shl i32 %i.id, 2
  %i.if = add i32 %i.ie, 8
  %i.ig = zext i32 %i.if to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.ig, ptr noundef nonnull %i.hy)
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit52

_ZN11mpz_managerILb0EE3delER3mpz.exit52:          ; preds = %bb.aw, %bb.ax, %_ZN11mpz_managerILb0EE3delER3mpz.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit52, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN11mpz_managerILb0EE11bitwise_xorERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 18 uses
  %5 = alloca %class.mpz, align 8                 ; 19 uses
  %6 = alloca %class.mpz, align 8                 ; 7 uses
  %7 = alloca %class.mpz, align 8                 ; 7 uses
  %8 = alloca %class.mpz, align 8                 ; 17 uses
  %9 = alloca %class.mpz, align 8                 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0                       ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 8, !tbaa !27
  %i.j = load i32, ptr %2, align 8, !tbaa !27
  %i.k = xor i32 %i.j, %i.i
  store i32 %i.k, ptr %3, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.l, align 4
  br label %_ZN11mpz_managerILb0EE7set_i64ER3mpzl.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 11 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4                          ; 2 uses
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr null, ptr %i.r, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 12 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, -4
  store i8 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr null, ptr %i.v, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 0, ptr %6, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 6 uses
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, -4
  store i8 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr null, ptr %i.z, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 0, ptr %7, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 6 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 0, ptr %8, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 14 uses
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, -4
  store i8 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 0, ptr %9, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 13 uses
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, -4
  store i8 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store ptr null, ptr %i.al, align 8, !tbaa !26
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = load i32, ptr %1, align 8, !tbaa !27
  store i32 %i.am, ptr %4, align 8, !tbaa !27
  store i8 %i.q, ptr %i.o, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.e, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = and i8 %i.ao, 1
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.ar = load i32, ptr %2, align 8, !tbaa !27
  store i32 %i.ar, ptr %5, align 8, !tbaa !27
  %i.as = load i8, ptr %i.s, align 4
  %i.at = and i8 %i.as, -2
  store i8 %i.at, ptr %i.s, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit15

bb.h:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit15

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit15:     ; preds = %bb.g, %bb.h
  store i32 1, ptr %8, align 8, !tbaa !27
  %i.au = load i8, ptr %i.ae, align 4
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.ae, align 4
  store i32 0, ptr %3, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 14 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, -2
  store i8 %i.ay, ptr %i.aw, align 4
  %i.az = load i32, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_.exit55, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.be = load i32, ptr %5, align 8, !tbaa !27
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.critedge, label %.lr.ph117

bb.i:                                             ; preds = %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit37
  %i.bg = load i32, ptr %5, align 8, !tbaa !27
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.critedge, label %.lr.ph117, !llvm.loop !252

.lr.ph117:                                        ; preds = %.lr.ph, %bb.i
  call void @_ZN11mpz_managerILb0EE3modERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @_ZN11mpz_managerILb0EE3modERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.bi = load i8, ptr %i.w, align 4
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph117
  %i.bl = load i32, ptr %6, align 8, !tbaa !27
  %i.bm = sext i32 %i.bl to i64
  br label %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit

bb.k:                                             ; preds = %.lr.ph117
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !35
  %i.bp = icmp eq i32 %i.bo, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !36
  %i.bs = zext i32 %i.br to i64
  br label %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit

bb.m:                                             ; preds = %bb.k
  %i.bt = load i64, ptr %i.bq, align 4
  br label %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit

_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit:  ; preds = %bb.j, %bb.l, %bb.m
  %.0.i = phi i64 [ %i.bm, %bb.j ], [ %i.bs, %bb.l ], [ %i.bt, %bb.m ]
  %i.bu = load i8, ptr %i.aa, align 4
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit
  %i.bx = load i32, ptr %7, align 8, !tbaa !27
  %i.by = sext i32 %i.bx to i64
  br label %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit17

bb.o:                                             ; preds = %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !35
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !36
  %i.ce = zext i32 %i.cd to i64
  br label %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit17

bb.q:                                             ; preds = %bb.o
  %i.cf = load i64, ptr %i.cc, align 4
  br label %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit17

_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit17: ; preds = %bb.n, %bb.p, %bb.q
  %.0.i16 = phi i64 [ %i.by, %bb.n ], [ %i.ce, %bb.p ], [ %i.cf, %bb.q ]
  %i.cg = xor i64 %.0.i16, %.0.i                  ; 5 uses
  %i.ch = icmp ult i64 %i.cg, 2147483647
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit17
  %i.ci = trunc nuw nsw i64 %i.cg to i32
  store i32 %i.ci, ptr %9, align 8, !tbaa !27
  %i.cj = load i8, ptr %i.ai, align 4
  %i.ck = and i8 %i.cj, -2                        ; 2 uses
  store i8 %i.ck, ptr %i.ai, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzm.exit

bb.s:                                             ; preds = %_ZNK11mpz_managerILb0EE10get_uint64ERK3mpz.exit17
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.t, label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %bb.s
  %.pre.i.i20 = load i8, ptr %i.ai, align 4
  br label %_ZN11mpz_managerILb0EE12set_big_ui64ER3mpzm.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cn = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef 32) ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i32 6, ptr %i.co, align 4, !tbaa !22
  store ptr %i.cn, ptr %i.al, align 8, !tbaa !26
  %i.cp = load i8, ptr %i.ai, align 4
end_hunk_1
