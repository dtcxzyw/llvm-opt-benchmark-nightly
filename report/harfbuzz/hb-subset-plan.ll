Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan?download=true
inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK2OT4COLR13closure_forV1EP8hb_set_tS2_S2_S2_S2_:bb.a
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.m, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit, !prof !68

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !63, !range !64, !noundef !65
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i8 %i.dd, ptr %i.de, align 8, !tbaa !63
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit: ; preds = %bb.l, %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !313
  %.not.i.i.i = icmp eq i32 %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %.not1.i.i.i = icmp eq i32 %i.di, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit
  store i32 0, ptr %i.df, align 4, !tbaa !152
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 0, ptr %i.dj, align 4, !tbaa !149
  store i32 0, ptr %i.dh, align 4, !tbaa !194
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i

_ZN12hb_bit_set_t5clearEv.exit.i.i:               ; preds = %bb.n, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3setERKS1_.exit
  %i.dk = load i8, ptr %i.cz, align 8, !tbaa !211, !range !64, !noundef !65
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.o, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit, !prof !68

bb.o:                                             ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i8 0, ptr %i.dm, align 8, !tbaa !63
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit: ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(49) %i.cy, i1 noundef zeroext true)
  %.fca.0.load.i.i.i = load ptr, ptr %7, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %.fca.0.load.i.i.i, ptr %10, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %.fca.1.load.i.i.i, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(49) %i.cy, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.do = trunc i64 %.fca.1.load.i.i.i to i32     ; 2 uses
  %.not6071 = icmp eq i32 %i.do, -1
  br i1 %.not6071, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  br label %bb.p

._crit_edge73:                                    ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %_ZNK2OT4COLR23has_delta_set_index_mapEv.exit.thread

bb.p:                                             ; preds = %.lr.ph72, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit
  %i.dr = phi i32 [ %i.do, %.lr.ph72 ], [ %i.el, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ]
  %i.ds = call noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %i.cx, i32 noundef %i.dr) ; 2 uses
  %i.dt = load i8, ptr %i.dp, align 8, !tbaa !63, !range !64, !noundef !65
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.q, label %bb.r, !prof !66

bb.q:                                             ; preds = %bb.p
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.cz, i32 noundef %i.ds)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.r:                                             ; preds = %bb.p
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.cz, i32 noundef %i.ds)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.q, %bb.r
  %i.dv = load ptr, ptr %10, align 8, !tbaa !161  ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !63, !range !64, !noundef !65
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.t, label %bb.s, !prof !66

bb.s:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.dz = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.dv, ptr noundef nonnull %i.dn) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

bb.t:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ea = load i32, ptr %i.dn, align 8, !tbaa !157 ; 5 uses
  store i32 %i.ea, ptr %i.a, align 4, !tbaa !157
  %i.eb = icmp eq i32 %i.ea, -2
  br i1 %i.eb, label %bb.u, label %bb.v, !prof !66

bb.u:                                             ; preds = %bb.t
  store i32 -1, ptr %i.dn, align 8, !tbaa !157
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.ea, ptr %i.b, align 4, !tbaa !157
  %i.ec = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.dv, ptr noundef nonnull %i.b) ; 0 uses
  %i.ed = add i32 %i.ea, 1                        ; 2 uses
  %i.ee = load i32, ptr %i.b, align 4, !tbaa !157
  %i.ef = icmp ult i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.ea, ptr %i.b, align 4, !tbaa !157
  %i.eg = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.dv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !157
  %i.ei = add i32 %i.eh, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i.i.i = phi i32 [ %i.ei, %bb.w ], [ %i.ed, %bb.v ]
  store i32 %.sink.i.i.i, ptr %i.dn, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i:   ; preds = %bb.y, %bb.s
  %i.ej = load i32, ptr %i.dq, align 4, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, label %bb.z, !prof !66

bb.z:                                             ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i
  %i.ek = add i32 %i.ej, -1
  store i32 %i.ek, ptr %i.dq, align 4, !tbaa !162
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i, %bb.z
  %i.el = load i32, ptr %i.dn, align 8, !tbaa !156 ; 2 uses
  %.not60 = icmp eq i32 %i.el, -1
  br i1 %.not60, label %._crit_edge73, label %bb.p

_ZNK2OT4COLR23has_delta_set_index_mapEv.exit.thread: ; preds = %._crit_edge70, %._crit_edge73, %_ZNK2OT4COLR23has_delta_set_index_mapEv.exit
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_ZNK2OT4COLR23has_delta_set_index_mapEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT10ClipRecord9closurev1EPNS_27hb_colrv1_closure_context_tEPKv(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = load i16, ptr %0, align 1, !tbaa !74
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = zext i16 %i.g to i32                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i16, ptr %i.i, align 1, !tbaa !74
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.n = add nsw i32 %i.h, -1                     ; 4 uses
  store i32 %i.n, ptr %i.c, align 4, !tbaa !157
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.p = load i8, ptr %i.o, align 8, !tbaa !63, !range !64, !noundef !65
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.m, ptr noundef nonnull %i.c)
  %.pre.i.i = load i32, ptr %i.c, align 4
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 %i.n, ptr %i.a, align 4, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.n, ptr %i.b, align 4, !tbaa !157
  %i.s = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.m, ptr noundef nonnull %i.b) ; 0 uses
  %i.t = load i32, ptr %i.b, align 4, !tbaa !157
  %i.u = icmp ugt i32 %i.t, %i.h
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.n, ptr %i.b, align 4, !tbaa !157
  %i.v = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.w = load i32, ptr %i.b, align 4, !tbaa !157
  %i.x = add i32 %i.w, 1                          ; 2 uses
  %i.y = icmp ne i32 %i.x, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i.i.i = phi i32 [ %i.x, %bb.d ], [ %i.h, %bb.c ]
  %.0.i.i.i = phi i1 [ %i.y, %bb.d ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit: ; preds = %bb.b, %bb.e
  %i.z = phi i32 [ %.pre.i.i, %bb.b ], [ %.sink.i.i.i, %bb.e ]
  %.2.i.i.i = phi i1 [ %i.r, %bb.b ], [ %.0.i.i.i, %bb.e ]
  %i.aa = icmp ule i32 %i.z, %i.l
  %i.ab = select i1 %.2.i.i.i, i1 %i.aa, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br i1 %i.ab, label %bb.f, label %_ZNK2OT7ClipBox9closurev1EPNS_27hb_colrv1_closure_context_tE.exit

bb.f:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !78  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !78  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !78  ; 2 uses
  %i.ai = or i8 %i.af, %i.ad
  %i.aj = or i8 %i.ai, %i.ah
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = zext i8 %i.ad to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = zext i8 %i.af to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = zext i8 %i.ah to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  %.0.i.i = select i1 %i.ak, ptr @_hb_NullPool, ptr %i.as, !prof !66 ; 2 uses
  %i.at = load i8, ptr %.0.i.i, align 1, !tbaa !41
  %cond.i = icmp eq i8 %i.at, 2
  br i1 %cond.i, label %bb.g, label %_ZNK2OT7ClipBox9closurev1EPNS_27hb_colrv1_closure_context_tE.exit

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !69
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !432 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 9
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !39
  %i.ay = call noundef i32 @llvm.bswap.i32(i32 %i.ax) ; 3 uses
  %i.az = add i32 %i.ay, 3                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !63, !range !64, !noundef !65
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %bb.g
  call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ba, i32 noundef %i.ay, i32 noundef %i.az)
  br label %_ZNK2OT7ClipBox9closurev1EPNS_27hb_colrv1_closure_context_tE.exit

bb.i:                                             ; preds = %bb.g
  %i.be = call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ba, i32 noundef %i.ay, i32 noundef %i.az) ; 0 uses
  br label %_ZNK2OT7ClipBox9closurev1EPNS_27hb_colrv1_closure_context_tE.exit

_ZNK2OT7ClipBox9closurev1EPNS_27hb_colrv1_closure_context_tE.exit: ; preds = %bb.i, %bb.h, %bb.f, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !41
  switch i8 %i.a, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit [
    i8 0, label %bb.b
    i8 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 1, !tbaa !74   ; 2 uses
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !41    ; 2 uses
  %i.f = lshr i8 %i.e, 4
  %i.g = and i8 %i.f, 3                           ; 2 uses
  %narrow.i.i = add nuw nsw i8 %i.g, 1            ; 3 uses
  %i.h = zext nneg i8 %narrow.i.i to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %.not.i6 = icmp ult i32 %1, %i.k
  %i.l = add nsw i32 %i.k, -1
  %spec.select.i = select i1 %.not.i6, i32 %1, i32 %i.l
  %i.m = mul nsw i32 %spec.select.i, %i.h
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !41
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %.not18.i = icmp eq i8 %i.g, 0
  br i1 %.not18.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = shl nuw nsw i32 %i.q, 8
  %i.t = load i8, ptr %i.r, align 1, !tbaa !41
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %.not18.i.1 = icmp eq i8 %narrow.i.i, 2
  br i1 %.not18.i.1, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.x = shl nuw nsw i32 %i.v, 8
  %i.y = load i8, ptr %i.w, align 1, !tbaa !41
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %.not18.i.2 = icmp eq i8 %narrow.i.i, 3
  br i1 %.not18.i.2, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ac = shl nuw i32 %i.aa, 8
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !41
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.lcssa = phi i32 [ %i.q, %bb.c ], [ %i.v, %bb.d ], [ %i.aa, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = and i8 %i.e, 15
  %narrow.i19.i = add nuw nsw i8 %i.ag, 1
  %i.ah = zext nneg i8 %narrow.i19.i to i32       ; 2 uses
  %i.ai = lshr i32 %.lcssa, %i.ah
  %notmask.i = shl nsw i32 -1, %i.ah
  %i.aj = xor i32 %notmask.i, -1
  %i.ak = and i32 %.lcssa, %i.aj
  %i.al = shl i32 %i.ai, 16
  %i.am = or i32 %i.al, %i.ak
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit

bb.g:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !69
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !39 ; 2 uses
  %.not.i4 = icmp eq i32 %i.ao, 0
  br i1 %.not.i4, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !41  ; 2 uses
  %i.ar = lshr i8 %i.aq, 4
  %i.as = and i8 %i.ar, 3                         ; 2 uses
  %narrow.i.i9 = add nuw nsw i8 %i.as, 1          ; 3 uses
  %i.at = zext nneg i8 %narrow.i.i9 to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.av = tail call noundef i32 @llvm.bswap.i32(i32 %i.ao) ; 2 uses
  %.not.i7 = icmp ult i32 %1, %i.av
  %i.aw = add i32 %i.av, -1
  %spec.select.i8 = select i1 %.not.i7, i32 %1, i32 %i.aw
  %i.ax = mul i32 %spec.select.i8, %i.at
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay ; 4 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !41
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %.not18.i13 = icmp eq i8 %i.as, 0
  br i1 %.not18.i13, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = shl nuw nsw i32 %i.bb, 8
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !41
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf            ; 2 uses
  %.not18.i13.1 = icmp eq i8 %narrow.i.i9, 2
  br i1 %.not18.i13.1, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bi = shl nuw nsw i32 %i.bg, 8
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !41
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk            ; 2 uses
  %.not18.i13.2 = icmp eq i8 %narrow.i.i9, 3
  br i1 %.not18.i13.2, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bn = shl nuw i32 %i.bl, 8
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !41
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.lcssa22 = phi i32 [ %i.bb, %bb.h ], [ %i.bg, %bb.i ], [ %i.bl, %bb.j ], [ %i.bq, %bb.k ] ; 2 uses
  %i.br = and i8 %i.aq, 15
  %narrow.i19.i14 = add nuw nsw i8 %i.br, 1
  %i.bs = zext nneg i8 %narrow.i19.i14 to i32     ; 2 uses
  %i.bt = lshr i32 %.lcssa22, %i.bs
  %notmask.i15 = shl nsw i32 -1, %i.bs
  %i.bu = xor i32 %notmask.i15, -1
end_hunk_0
