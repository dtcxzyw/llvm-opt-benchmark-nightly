Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/lidruptracer?download=true
inline.NumInlined: 393
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN7CaDiCaL12LidrupTracer25lidrup_add_derived_clauseEmRKSt6vectorIiSaIiEERKS1_ImSaImEE:bb.a

_ZN7CaDiCaL4File3putEm.exit53:                    ; preds = %bb.aa, %bb.ab, %_ZN7CaDiCaL4File3putEPKc.exit.i49
  %i.fw = load ptr, ptr %i.dy, align 8, !tbaa !38 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !66
  %i.fz = tail call i32 @putc(i32 noundef 32, ptr noundef %i.fy)
  %.not74 = icmp eq i32 %i.fz, -1
  br i1 %.not74, label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit40, label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit40.sink.split

_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit40.sink.split: ; preds = %_ZN7CaDiCaL4File3putEm.exit53, %._crit_edge.i37
  %.sink119 = phi ptr [ %i.eu, %._crit_edge.i37 ], [ %i.fw, %_ZN7CaDiCaL4File3putEm.exit53 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sink119, i64 40 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !67
  %i.gc = add i64 %i.gb, 1
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !67
  br label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit40

_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit40: ; preds = %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit40.sink.split, %_ZN7CaDiCaL4File3putEm.exit53, %._crit_edge.i37
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.064.085, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.gd, %i.dx
  br i1 %.not73, label %._crit_edge87, label %bb.w

bb.ag:                                            ; preds = %._crit_edge87
  %i.ge = load ptr, ptr %i.ee, align 8, !tbaa !66
  %i.gf = tail call i32 @putc(i32 noundef 0, ptr noundef %i.ge)
  %.not.i55 = icmp eq i32 %i.gf, -1
  br i1 %.not.i55, label %_ZN7CaDiCaL12LidrupTracer15put_binary_zeroEv.exit57, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ed, i64 40 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !67
  %i.gi = add i64 %i.gh, 1
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !67
  br label %_ZN7CaDiCaL12LidrupTracer15put_binary_zeroEv.exit57

bb.ai:                                            ; preds = %._crit_edge87
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ed, i64 40 ; 4 uses
  %i.gk = load ptr, ptr %i.ee, align 8, !tbaa !66
  %i.gl = tail call i32 @putc(i32 noundef 48, ptr noundef %i.gk)
  %.not9.not.i60 = icmp eq i32 %i.gl, -1
  br i1 %.not9.not.i60, label %_ZN7CaDiCaL12LidrupTracer15put_binary_zeroEv.exit57, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gm = load i64, ptr %i.gj, align 8, !tbaa !67
  %i.gn = add i64 %i.gm, 1
  store i64 %i.gn, ptr %i.gj, align 8, !tbaa !67
  %i.go = load ptr, ptr %i.ee, align 8, !tbaa !66
  %i.gp = tail call i32 @putc(i32 noundef 10, ptr noundef %i.go)
  %.not9.not.i60.1 = icmp eq i32 %i.gp, -1
  br i1 %.not9.not.i60.1, label %_ZN7CaDiCaL12LidrupTracer15put_binary_zeroEv.exit57, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gq = load i64, ptr %i.gj, align 8, !tbaa !67
  %i.gr = add i64 %i.gq, 1
  store i64 %i.gr, ptr %i.gj, align 8, !tbaa !67
  br label %_ZN7CaDiCaL12LidrupTracer15put_binary_zeroEv.exit57

_ZN7CaDiCaL12LidrupTracer15put_binary_zeroEv.exit57: ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.ah, %bb.ag
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7CaDiCaL4File3putEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 5 uses
  switch i32 %1, label %.lr.ph.preheader [
    i32 0, label %bb.b
    i32 -2147483648, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = tail call i32 @putc(i32 noundef 48, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !67
  br label %_ZN7CaDiCaL4File3putEc.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.k = tail call i32 @putc(i32 noundef 45, ptr noundef %i.j)
  %.not9.not.i = icmp eq i32 %i.k, -1
  br i1 %.not9.not.i, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.i, align 8, !tbaa !67
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.i, align 8, !tbaa !67
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.o = tail call i32 @putc(i32 noundef 50, ptr noundef %i.n)
  %.not9.not.i.1 = icmp eq i32 %i.o, -1
  br i1 %.not9.not.i.1, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.i, align 8, !tbaa !67
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.i, align 8, !tbaa !67
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.s = tail call i32 @putc(i32 noundef 49, ptr noundef %i.r)
  %.not9.not.i.2 = icmp eq i32 %i.s, -1
  br i1 %.not9.not.i.2, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.i, align 8, !tbaa !67
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.i, align 8, !tbaa !67
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.w = tail call i32 @putc(i32 noundef 52, ptr noundef %i.v)
  %.not9.not.i.3 = icmp eq i32 %i.w, -1
  br i1 %.not9.not.i.3, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.i, align 8, !tbaa !67
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.i, align 8, !tbaa !67
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.aa = tail call i32 @putc(i32 noundef 55, ptr noundef %i.z)
  %.not9.not.i.4 = icmp eq i32 %i.aa, -1
  br i1 %.not9.not.i.4, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !67
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !67
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.ae = tail call i32 @putc(i32 noundef 52, ptr noundef %i.ad)
  %.not9.not.i.5 = icmp eq i32 %i.ae, -1
  br i1 %.not9.not.i.5, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !tbaa !67
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !67
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.ai = tail call i32 @putc(i32 noundef 56, ptr noundef %i.ah)
  %.not9.not.i.6 = icmp eq i32 %i.ai, -1
  br i1 %.not9.not.i.6, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !67
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.am = tail call i32 @putc(i32 noundef 51, ptr noundef %i.al)
  %.not9.not.i.7 = icmp eq i32 %i.am, -1
  br i1 %.not9.not.i.7, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.i, align 8, !tbaa !67
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !67
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.aq = tail call i32 @putc(i32 noundef 54, ptr noundef %i.ap)
  %.not9.not.i.8 = icmp eq i32 %i.aq, -1
  br i1 %.not9.not.i.8, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !67
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.i, align 8, !tbaa !67
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.au = tail call i32 @putc(i32 noundef 52, ptr noundef %i.at)
  %.not9.not.i.9 = icmp eq i32 %i.au, -1
  br i1 %.not9.not.i.9, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i64, ptr %i.i, align 8, !tbaa !67
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !67
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.ay = tail call i32 @putc(i32 noundef 56, ptr noundef %i.ax)
  %.not9.not.i.10 = icmp eq i32 %i.ay, -1
  br i1 %.not9.not.i.10, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.i, align 8, !tbaa !67
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.i, align 8, !tbaa !67
  br label %_ZN7CaDiCaL4File3putEc.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 0, ptr %i.bb, align 1, !tbaa !68
  %i.bc = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 10, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.024 = phi i32 [ %i.bc, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ] ; 3 uses
  %i.bd = urem i32 %.024, 10
  %i.be = trunc nuw nsw i32 %i.bd to i8
  %i.bf = or disjoint i8 %i.be, 48                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !68
  %i.bh = udiv i32 %.024, 10
  %.not14 = icmp samesign ult i32 %.024, 10
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph
  %i.bi = icmp slt i32 %1, 0
  br i1 %i.bi, label %bb.p, label %.lr.ph.i

bb.p:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !66
  %i.bl = tail call i32 @putc(i32 noundef 45, ptr noundef %i.bk)
  %.not21 = icmp eq i32 %i.bl, -1
  br i1 %.not21, label %_ZN7CaDiCaL4File3putEc.exit15, label %_ZN7CaDiCaL4File3putEc.exit15.thread

_ZN7CaDiCaL4File3putEc.exit15.thread:             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !67
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !67
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7CaDiCaL4File3putEc.exit15.thread, %._crit_edge
  %2 = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i
  %i.br = phi i8 [ %i.bf, %.lr.ph.i ], [ %i.by, %bb.r ]
  %.0611.i16 = phi ptr [ %2, %.lr.ph.i ], [ %i.bx, %bb.r ]
  %i.bs = sext i8 %i.br to i32
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !66
  %i.bu = tail call i32 @putc(i32 noundef %i.bs, ptr noundef %i.bt)
  %.not9.not.i17.not.not = icmp ne i32 %i.bu, -1  ; 3 uses
  br i1 %.not9.not.i17.not.not, label %bb.r, label %_ZN7CaDiCaL4File3putEc.exit15

bb.r:                                             ; preds = %bb.q
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !67
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %.0611.i16, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !68  ; 2 uses
  %.not.i18 = icmp eq i8 %i.by, 0
  br i1 %.not.i18, label %_ZN7CaDiCaL4File3putEc.exit15, label %bb.q, !llvm.loop !3

_ZN7CaDiCaL4File3putEc.exit15:                    ; preds = %bb.r, %bb.q, %bb.p
  %.012 = phi i1 [ false, %bb.p ], [ %.not9.not.i17.not.not, %bb.q ], [ %.not9.not.i17.not.not, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.c, %bb.b, %_ZN7CaDiCaL4File3putEc.exit15
  %.1 = phi i1 [ true, %bb.c ], [ %.012, %_ZN7CaDiCaL4File3putEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.o ], [ false, %bb.e ], [ false, %bb.n ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.m ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL12LidrupTracer26lidrup_add_original_clauseEmRKSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [22 x i8], align 16               ; 5 uses
  tail call void @_ZN7CaDiCaL12LidrupTracer38lidrup_batch_weaken_restore_and_deleteEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !39, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = tail call i32 @putc(i32 noundef 105, ptr noundef %i.h)
  %.not29 = icmp eq i32 %i.i, -1
  br i1 %.not29, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !67
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %bb.b, %bb.c
  %.not10.i = icmp ult i64 %1, 128
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7CaDiCaL4File3putEc.exit, %_ZN7CaDiCaL4File3putEh.exit.i
  %.011.i = phi i64 [ %i.w, %_ZN7CaDiCaL4File3putEh.exit.i ], [ %1, %_ZN7CaDiCaL4File3putEc.exit ] ; 3 uses
  %i.m = trunc i64 %.011.i to i32
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.o = and i32 %i.m, 127
  %i.p = or disjoint i32 %i.o, 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66
  %i.s = tail call i32 @putc(i32 noundef %i.p, ptr noundef %i.r)
  %.not8.i = icmp eq i32 %i.s, -1
  br i1 %.not8.i, label %_ZN7CaDiCaL4File3putEh.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !67
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !67
  br label %_ZN7CaDiCaL4File3putEh.exit.i

_ZN7CaDiCaL4File3putEh.exit.i:                    ; preds = %bb.d, %.lr.ph.i
  %i.w = lshr i64 %.011.i, 7                      ; 2 uses
  %.not.i = icmp ult i64 %.011.i, 16384
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %_ZN7CaDiCaL4File3putEh.exit.i, %_ZN7CaDiCaL4File3putEc.exit
  %.0.lcssa.i = phi i64 [ %1, %_ZN7CaDiCaL4File3putEc.exit ], [ %i.w, %_ZN7CaDiCaL4File3putEh.exit.i ]
  %i.x = trunc nuw nsw i64 %.0.lcssa.i to i32
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66
  %i.ab = tail call i32 @putc(i32 noundef %i.x, ptr noundef %i.aa)
  %.not9.i = icmp eq i32 %i.ab, -1
  br i1 %.not9.i, label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit, label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.ae = tail call i32 @putc(i32 noundef 105, ptr noundef %i.ad)
  %.not9.not.i = icmp eq i32 %i.ae, -1
  br i1 %.not9.not.i, label %_ZN7CaDiCaL4File3putEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !67
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !67
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.ai = tail call i32 @putc(i32 noundef 32, ptr noundef %i.ah)
  %.not9.not.i.1 = icmp eq i32 %i.ai, -1
  br i1 %.not9.not.i.1, label %_ZN7CaDiCaL4File3putEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !67
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !67
  br label %_ZN7CaDiCaL4File3putEPKc.exit

_ZN7CaDiCaL4File3putEPKc.exit:                    ; preds = %bb.g, %bb.f, %bb.e
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !38  ; 4 uses
  %.not.i9 = icmp eq i64 %1, 0
  br i1 %.not.i9, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN7CaDiCaL4File3putEPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.ao = tail call i32 @putc(i32 noundef 48, ptr noundef %i.an)
  %.not12.i = icmp eq i32 %i.ao, -1
  br i1 %.not12.i, label %_ZN7CaDiCaL4File3putEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !67
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !67
  br label %_ZN7CaDiCaL4File3putEm.exit

bb.j:                                             ; preds = %_ZN7CaDiCaL4File3putEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 0, ptr %i.as, align 1, !tbaa !68
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.i = phi i64 [ 21, %bb.j ], [ %indvars.iv.next.i, %bb.k ]
  %.0813.i = phi i64 [ %1, %bb.j ], [ %i.ax, %bb.k ] ; 3 uses
  %i.at = urem i64 %.0813.i, 10
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = or disjoint i8 %i.au, 48                ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !68
  %i.ax = udiv i64 %.0813.i, 10
  %.not11.i = icmp ult i64 %.0813.i, 10
  br i1 %.not11.i, label %.lr.ph.i.i, label %bb.k, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.bb = phi i8 [ %i.av, %.lr.ph.i.i ], [ %i.bi, %bb.m ]
  %.0611.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.bh, %bb.m ]
  %i.bc = sext i8 %i.bb to i32
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !66
  %i.be = tail call i32 @putc(i32 noundef %i.bc, ptr noundef %i.bd)
  %.not9.not.i.not.i.not = icmp eq i32 %i.be, -1
  br i1 %.not9.not.i.not.i.not, label %_ZN7CaDiCaL4File3putEPKc.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i64, ptr %i.ba, align 8, !tbaa !67
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !68  ; 2 uses
  %.not.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i, label %_ZN7CaDiCaL4File3putEPKc.exit.i, label %bb.l, !llvm.loop !3

_ZN7CaDiCaL4File3putEPKc.exit.i:                  ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN7CaDiCaL4File3putEm.exit

_ZN7CaDiCaL4File3putEm.exit:                      ; preds = %bb.h, %bb.i, %_ZN7CaDiCaL4File3putEPKc.exit.i
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !38  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !66
  %i.bm = tail call i32 @putc(i32 noundef 32, ptr noundef %i.bl)
  %.not = icmp eq i32 %i.bm, -1
  br i1 %.not, label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit, label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit.sink.split

_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit.sink.split: ; preds = %_ZN7CaDiCaL4File3putEm.exit, %._crit_edge.i
  %.sink50 = phi ptr [ %i.y, %._crit_edge.i ], [ %i.bj, %_ZN7CaDiCaL4File3putEm.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink50, i64 40 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !67
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !67
  br label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit

_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit:  ; preds = %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit.sink.split, %_ZN7CaDiCaL4File3putEm.exit, %._crit_edge.i
  %i.bq = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56 ; 2 uses
  %.not3035 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not3035, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN7CaDiCaL12LidrupTracer14put_binary_litEi.exit, %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit
  %i.bu = load i8, ptr %i.b, align 8, !tbaa !39, !range !64, !noundef !65
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !38 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  br i1 %i.bv, label %bb.r, label %bb.t

bb.n:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL12LidrupTracer14put_binary_litEi.exit
  %.sroa.026.036 = phi ptr [ %i.bq, %.lr.ph ], [ %i.df, %_ZN7CaDiCaL12LidrupTracer14put_binary_litEi.exit ] ; 3 uses
  %i.bz = load i8, ptr %i.b, align 8, !tbaa !39, !range !64, !noundef !65
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.o, label %bb.q
end_hunk_0
