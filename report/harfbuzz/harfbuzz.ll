Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@_ZNK2OT4cff113accelerator_t11get_extentsEP9hb_font_tjP18hb_glyph_extents_tPl:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEEixEj(ptr noundef nonnull align 1 dereferenceable(6) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 1, !tbaa !278
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a)
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.b, label %.critedge, !prof !268

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !303   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 12 uses
  switch i8 %i.d, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread [
    i8 1, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread
    i8 2, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17
    i8 3, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20
    i8 4, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23
  ]

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread: ; preds = %bb.b
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !303
  %i.i = zext i8 %i.h to i32
  %i.j = add nuw i32 %1, 1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !303
  %i.n = zext i8 %i.m to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.o
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %i.t = add nuw i32 %1, 1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.z = zext i32 %1 to i64
  %i.aa = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.z ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !280
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !280
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !280
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al
  %i.an = add nuw i32 %1, 1
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.ao ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !280
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !280
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = or disjoint i32 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !280
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ax, %i.ba
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.bc = zext i32 %1 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !278
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = add nuw i32 %1, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !278
  %i.bk = tail call noundef i32 @llvm.bswap.i32(i32 %i.bj)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.bf, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23 ], [ %i.i, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread ], [ %i.s, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17 ], [ %i.am, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.bk, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23 ], [ %i.n, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread ], [ %i.y, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17 ], [ %i.bb, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.bl = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.bl, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread, !prof !478

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.bm = load i32, ptr %0, align 1, !tbaa !278
  %i.bn = tail call noundef i32 @llvm.bswap.i32(i32 %i.bm) ; 5 uses
  switch i8 %i.d, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !303
  %i.br = zext i8 %i.bq to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !283
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bx = zext i32 %i.bn to i64
  %i.by = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.bx ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !280
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !280
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = or disjoint i32 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !280
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.cl = zext i32 %i.bn to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !278
  %i.co = tail call noundef i32 @llvm.bswap.i32(i32 %i.cn)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.co, %bb.f ], [ %i.br, %bb.c ], [ %i.bw, %bb.d ], [ %i.ck, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread ]
  %i.cp = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.cp, label %.critedge, label %bb.g, !prof !267

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13
  %i.cq = zext i8 %i.d to i32
  %i.cr = add i32 %i.bn, 1
  %i.cs = mul i32 %i.cr, %i.cq
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ct
  %i.cv = zext i32 %.0.i1628 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  %i.cx = sub i32 %.0.i1029, %.0.i1628
  %.sroa.6.8.insert.ext = zext i32 %i.cx to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.cw, %bb.g ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 ]
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ %.sroa.6.8.insert.ext, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2OT23MultiItemVariationStore12create_cacheEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i32, ptr %i.a, align 1, !tbaa !278  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.b)
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 8 uses
  %i.i = zext i16 %i.h to i32                     ; 4 uses
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %1, null
  %i.k = icmp ult i16 %i.h, 129
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.i, ptr %1, align 4, !tbaa !480
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 21 uses
  %i.m = icmp samesign ugt i16 %i.h, 3
  br i1 %i.m, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.n = zext nneg i16 %i.h to i64
  %i.o = add nsw i64 %i.n, -4                     ; 2 uses
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter19 = and i64 %i.q, 9223372036854775806
  br label %.lr.ph.i.i

.preheader.i.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %i.s = and i64 %i.o, 4
  %lcmp.mod16.not.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod16.not.not, label %.lr.ph.i.i.epil.preheader, label %.preheader.i.loopexit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.i.unr-lcssa, %.lr.ph.i.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.i.unr-lcssa ] ; 5 uses
  %lcmp.mod18 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  store atomic i32 -2147483648, ptr %i.t monotonic, align 4
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store atomic i32 -2147483648, ptr %i.u monotonic, align 4
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store atomic i32 -2147483648, ptr %i.v monotonic, align 4
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  store atomic i32 -2147483648, ptr %i.w monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i.loopexit.i

.preheader.i.loopexit.i:                          ; preds = %.preheader.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.x = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.x, %.preheader.i.loopexit.i ] ; 2 uses
  %i.y = icmp ult i32 %.0.lcssa.i.i, %i.i
  br i1 %i.y, label %.lr.ph18.preheader.i.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit

.lr.ph18.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.z = zext i32 %.0.lcssa.i.i to i64            ; 4 uses
  %wide.trip.count.i.i = zext nneg i16 %i.h to i64 ; 3 uses
  %i.aa = sub nsw i64 %wide.trip.count.i.i, %i.z
  %xtraiter21 = and i64 %i.aa, 7                  ; 2 uses
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.preheader.i.i, %.lr.ph18.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph18.i.i.prol ], [ %i.z, %.lr.ph18.preheader.i.i ] ; 2 uses
  %prol.iter23 = phi i64 [ %prol.iter23.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.preheader.i.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.prol
  store atomic i32 -2147483648, ptr %i.ab monotonic, align 4
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter23.next = add i64 %prol.iter23, 1     ; 2 uses
  %prol.iter23.cmp.not = icmp eq i64 %prol.iter23.next, %xtraiter21
  br i1 %prol.iter23.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !2155

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.z, %.lr.ph18.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.ac = sub nsw i64 %i.z, %wide.trip.count.i.i
  %i.ad = icmp ugt i64 %i.ac, -8
  br i1 %i.ad, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i.i ] ; 6 uses
  %niter20 = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter20.next.1, %.lr.ph.i.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  store atomic i32 -2147483648, ptr %i.ae monotonic, align 4
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store atomic i32 -2147483648, ptr %i.af monotonic, align 4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store atomic i32 -2147483648, ptr %i.ag monotonic, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 12
  store atomic i32 -2147483648, ptr %i.ah monotonic, align 4
  %indvars.iv.next9 = or disjoint i64 %indvars.iv.i, 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next9
  store atomic i32 -2147483648, ptr %i.ai monotonic, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next9
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 4
  store atomic i32 -2147483648, ptr %i.aj monotonic, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next9
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  store atomic i32 -2147483648, ptr %i.ak monotonic, align 4
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next9
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 12
  store atomic i32 -2147483648, ptr %i.al monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter20.next.1 = add i64 %niter20, 2           ; 2 uses
  %niter20.ncmp.1.not = icmp eq i64 %niter20.next.1, %unroll_iter19
  br i1 %niter20.ncmp.1.not, label %.preheader.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !5

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph18.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 9 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  store atomic i32 -2147483648, ptr %i.am monotonic, align 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store atomic i32 -2147483648, ptr %i.ao monotonic, align 4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store atomic i32 -2147483648, ptr %i.aq monotonic, align 4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store atomic i32 -2147483648, ptr %i.as monotonic, align 4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store atomic i32 -2147483648, ptr %i.au monotonic, align 4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store atomic i32 -2147483648, ptr %i.aw monotonic, align 4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store atomic i32 -2147483648, ptr %i.ay monotonic, align 4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  store atomic i32 -2147483648, ptr %i.ba monotonic, align 4
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.7, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i.i, !llvm.loop !6

bb.d:                                             ; preds = %bb.b
  %i.bb = zext i16 %i.h to i64                    ; 4 uses
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 4
  %i.be = tail call noalias noundef ptr @malloc(i64 noundef %i.bd) #65 ; 6 uses
  %.not16.i = icmp eq ptr %i.be, null
  br i1 %.not16.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %i.be, align 4, !tbaa !480
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 21 uses
  %i.bg = icmp ugt i16 %i.h, 3
  br i1 %i.bg, label %.lr.ph.i25.i.preheader, label %.preheader.i17.i

.lr.ph.i25.i.preheader:                           ; preds = %bb.e
  %i.bh = zext i16 %i.h to i64
  %i.bi = add nsw i64 %i.bh, -4                   ; 2 uses
  %i.bj = lshr i64 %i.bi, 2                       ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bj, 0
  br i1 %i.bl, label %.lr.ph.i25.i.epil.preheader, label %.lr.ph.i25.i.preheader.new

.lr.ph.i25.i.preheader.new:                       ; preds = %.lr.ph.i25.i.preheader
  %unroll_iter = and i64 %i.bk, 9223372036854775806
  br label %.lr.ph.i25.i

.preheader.i17.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i25.i
  %i.bm = and i64 %i.bi, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bm, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.epil.preheader, label %.preheader.i17.i.loopexit

.lr.ph.i25.i.epil.preheader:                      ; preds = %.preheader.i17.i.loopexit.unr-lcssa, %.lr.ph.i25.i.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.i25.i.preheader ], [ %indvars.iv.next.1, %.preheader.i17.i.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod12 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.epil.init
  store atomic i32 -2147483648, ptr %i.bn monotonic, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.epil.init
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 4
  store atomic i32 -2147483648, ptr %i.bo monotonic, align 4
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.epil.init
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store atomic i32 -2147483648, ptr %i.bp monotonic, align 4
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.epil.init
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 12
  store atomic i32 -2147483648, ptr %i.bq monotonic, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 4
  br label %.preheader.i17.i.loopexit

.preheader.i17.i.loopexit:                        ; preds = %.preheader.i17.i.loopexit.unr-lcssa, %.lr.ph.i25.i.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.preheader.i17.i.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.lr.ph.i25.i.epil.preheader ]
  %i.br = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %.preheader.i17.i

.preheader.i17.i:                                 ; preds = %.preheader.i17.i.loopexit, %bb.e
  %.0.lcssa.i18.i = phi i32 [ 0, %bb.e ], [ %i.br, %.preheader.i17.i.loopexit ] ; 2 uses
  %i.bs = icmp ult i32 %.0.lcssa.i18.i, %i.i
  br i1 %i.bs, label %.lr.ph18.preheader.i19.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit

.lr.ph18.preheader.i19.i:                         ; preds = %.preheader.i17.i
  %i.bt = zext i32 %.0.lcssa.i18.i to i64         ; 4 uses
  %i.bu = sub nsw i64 %i.bb, %i.bt
  %xtraiter13 = and i64 %i.bu, 7                  ; 2 uses
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %.lr.ph18.i21.i.prol.loopexit, label %.lr.ph18.i21.i.prol

.lr.ph18.i21.i.prol:                              ; preds = %.lr.ph18.preheader.i19.i, %.lr.ph18.i21.i.prol
  %indvars.iv.i22.i.prol = phi i64 [ %indvars.iv.next.i23.i.prol, %.lr.ph18.i21.i.prol ], [ %i.bt, %.lr.ph18.preheader.i19.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.prol ], [ 0, %.lr.ph18.preheader.i19.i ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i.prol
  store atomic i32 -2147483648, ptr %i.bv monotonic, align 4
  %indvars.iv.next.i23.i.prol = add nuw nsw i64 %indvars.iv.i22.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter13
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.prol.loopexit, label %.lr.ph18.i21.i.prol, !llvm.loop !2156

.lr.ph18.i21.i.prol.loopexit:                     ; preds = %.lr.ph18.i21.i.prol, %.lr.ph18.preheader.i19.i
  %indvars.iv.i22.i.unr = phi i64 [ %i.bt, %.lr.ph18.preheader.i19.i ], [ %indvars.iv.next.i23.i.prol, %.lr.ph18.i21.i.prol ]
  %i.bw = sub nsw i64 %i.bt, %i.bb
  %i.bx = icmp ugt i64 %i.bw, -8
  br i1 %i.bx, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i21.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i, %.lr.ph.i25.i.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.i25.i.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.i25.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  store atomic i32 -2147483648, ptr %i.by monotonic, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 4
  store atomic i32 -2147483648, ptr %i.bz monotonic, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 8
  store atomic i32 -2147483648, ptr %i.ca monotonic, align 4
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 12
  store atomic i32 -2147483648, ptr %i.cb monotonic, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 4 ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  store atomic i32 -2147483648, ptr %i.cc monotonic, align 4
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 4
  store atomic i32 -2147483648, ptr %i.cd monotonic, align 4
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 8
  store atomic i32 -2147483648, ptr %i.ce monotonic, align 4
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 12
  store atomic i32 -2147483648, ptr %i.cf monotonic, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.unr-lcssa, label %.lr.ph.i25.i, !llvm.loop !5

.lr.ph18.i21.i:                                   ; preds = %.lr.ph18.i21.i.prol.loopexit, %.lr.ph18.i21.i
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i23.i.7, %.lr.ph18.i21.i ], [ %indvars.iv.i22.i.unr, %.lr.ph18.i21.i.prol.loopexit ] ; 9 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i
  store atomic i32 -2147483648, ptr %i.cg monotonic, align 4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store atomic i32 -2147483648, ptr %i.ci monotonic, align 4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store atomic i32 -2147483648, ptr %i.ck monotonic, align 4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store atomic i32 -2147483648, ptr %i.cm monotonic, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store atomic i32 -2147483648, ptr %i.co monotonic, align 4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  store atomic i32 -2147483648, ptr %i.cq monotonic, align 4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store atomic i32 -2147483648, ptr %i.cs monotonic, align 4
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i22.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  store atomic i32 -2147483648, ptr %i.cu monotonic, align 4
  %indvars.iv.next.i23.i.7 = add nuw nsw i64 %indvars.iv.i22.i, 8 ; 2 uses
  %exitcond.not.i24.i.7 = icmp eq i64 %indvars.iv.next.i23.i.7, %i.bb
  br i1 %exitcond.not.i24.i.7, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i21.i, !llvm.loop !6

_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit:      ; preds = %.lr.ph18.i21.i.prol.loopexit, %.lr.ph18.i21.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %bb.a, %.preheader.i.i, %bb.d, %.preheader.i17.i
  %.1.i = phi ptr [ @_hb_NullPool, %bb.a ], [ @_hb_NullPool, %bb.d ], [ %1, %.lr.ph18.i.i.prol.loopexit ], [ %1, %.preheader.i.i ], [ %i.be, %.preheader.i17.i ], [ %1, %.lr.ph18.i.i ], [ %i.be, %.lr.ph18.i21.i ], [ %i.be, %.lr.ph18.i21.i.prol.loopexit ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3AAT22hb_aat_apply_context_tC2EPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tP9hb_blob_t(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(180) initializes((0, 4), (8, 44), (48, 81), (88, 102), (104, 112)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !2157
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !491
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !492
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !493
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.f, align 8, !tbaa !494
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !495
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !496
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.h, i8 0, i64 33, i1 false)
  store i32 65536, ptr %i.k, align 8, !tbaa !497
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i8 0, ptr %i.l, align 4, !tbaa !498
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 0, ptr %i.m, align 1, !tbaa !499
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_hb_NullPool, ptr %i.n, align 8, !tbaa !500
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.r = load atomic ptr, ptr %i.p acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.t = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj25EE11call_createIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS4_Lj25EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.t, %bb.b ] ; 3 uses
  %i.u = cmpxchg weak ptr %i.p, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  br i1 %i.v, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.w = load atomic ptr, ptr %i.p acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.r, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.w, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.x = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.x, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i5, ptr @_hb_NullPool, ptr %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !275
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !276
  %i.ac = icmp ult i32 %i.ab, 4
  %spec.select.i.i1.i.i = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.z ; 3 uses
  store ptr %spec.select.i.i1.i.i, ptr %i.o, align 8, !tbaa !501
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i = icmp eq i16 %i.ae, 256
  br i1 %cond.i, label %bb.f, label %_ZNK2OT4GDEF17has_glyph_classesEv.exit

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i8
  br label %_ZNK2OT4GDEF17has_glyph_classesEv.exit

_ZNK2OT4GDEF17has_glyph_classesEv.exit:           ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, %bb.f
  %.0.i = phi i8 [ %i.ai, %bb.f ], [ 0, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit ]
  store i8 %.0.i, ptr %i.ad, align 8, !tbaa !502
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.not.i.i.i.i6 = icmp eq ptr %4, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.aj, i8 0, i64 14, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, i8 0, i64 36, i1 false)
  br i1 %.not.i.i.i.i6, label %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2OT4GDEF17has_glyph_classesEv.exit
  %i.al = load atomic i32, ptr %4 monotonic, align 4 ; 0 uses
  %i.am = load atomic i32, ptr %4 monotonic, align 4
  %.not.i7.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i7.i.i.i, label %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.an = atomicrmw add ptr %4, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit

_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit: ; preds = %_ZNK2OT4GDEF17has_glyph_classesEv.exit, %bb.g, %bb.h
  store ptr %4, ptr %i.j, align 8, !tbaa !496
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ao, align 8, !tbaa !503
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !493 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.i, label %_ZNK9hb_face_t14get_num_glyphsEv.exit, !prof !267

bb.i:                                             ; preds = %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit
  %i.at = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.ap), !inline_history !7
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !496
  br label %_ZNK9hb_face_t14get_num_glyphsEv.exit

_ZNK9hb_face_t14get_num_glyphsEv.exit:            ; preds = %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit, %bb.i
  %i.au = phi ptr [ %.pre, %bb.i ], [ %4, %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit ] ; 3 uses
  %.0.i7 = phi i32 [ %i.at, %bb.i ], [ %i.ar, %_ZN21hb_sanitize_context_t4initEP9hb_blob_t.exit ]
  store i32 %.0.i7, ptr %i.k, align 8, !tbaa !497
  store i8 1, ptr %i.l, align 4, !tbaa !498
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %_ZNK9hb_face_t14get_num_glyphsEv.exit
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !504
  %.pre2.i.i = load ptr, ptr %i.h, align 8, !tbaa !505
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

bb.j:                                             ; preds = %_ZNK9hb_face_t14get_num_glyphsEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !275 ; 3 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !505
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !276
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  store ptr %i.ba, ptr %i.i, align 8, !tbaa !504
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i: ; preds = %bb.j, %._crit_edge.i.i
  %i.bb = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.aw, %bb.j ]
  %i.bc = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ba, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %i.bd, align 8, !tbaa !506
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.g, align 8, !tbaa !495
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.bj, align 4, !tbaa !507
  store i32 1073741823, ptr %i.bi, align 4, !tbaa !508
  ret void
end_hunk_0
begin_hunk_1_@_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t:bb.a
  %i.b = load i16, ptr %i.a, align 4              ; 2 uses
  %i.c = and i16 %i.b, 256
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNK11hb_ot_map_t8positionEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = and i16 %i.b, 2048
  %.not11 = icmp eq i16 %i.e, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z22hb_aat_layout_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.f = load i16, ptr %i.a, align 4              ; 2 uses
  %i.g = and i16 %i.f, 512
  %.not12 = icmp eq i16 %i.g, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Z17hb_ot_layout_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.h = and i16 %i.f, 1024
  %.not13 = icmp eq i16 %i.h, 0
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.i = load i16, ptr %i.a, align 4
  %i.j = and i16 %i.i, 8192
  %.not14 = icmp eq i16 %i.j, 0
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_Z19hb_aat_layout_trackPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_hb_ot_shaper_face_data_create(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_hb_ot_shaper_face_data_destroy(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_hb_ot_shaper_font_data_create(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj25EE11call_createIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS4_Lj25EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.e, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.j, %bb.e ], [ %.07.i.i.i, %bb.d ]
  %i.k = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.k, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i2, ptr @_hb_NullPool, ptr %i.k ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !275
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !276
  %i.p = icmp ult i32 %i.o, 4
  %spec.select.i.i1.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.m ; 4 uses
  %i.q = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i = icmp eq i16 %i.q, 256
  br i1 %cond.i, label %bb.f, label %_ZNK2OT4GDEF13get_var_storeEv.exit

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit
  %i.r = load i32, ptr %spec.select.i.i1.i.i, align 1
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = icmp ugt i32 %i.s, 65538
  br i1 %i.t, label %bb.g, label %_ZNK2OT4GDEF13get_var_storeEv.exit

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 14
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.y
  %.0.i.i.i = select i1 %i.w, ptr @_hb_NullPool, ptr %i.z, !prof !267
  br label %_ZNK2OT4GDEF13get_var_storeEv.exit

_ZNK2OT4GDEF13get_var_storeEv.exit:               ; preds = %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit, %bb.f, %bb.g
  %.0.i = phi ptr [ @_hb_NullPool, %bb.f ], [ %.0.i.i.i, %bb.g ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT18GDEF_accelerator_tE21hb_face_lazy_loader_tIS1_Lj25EE9hb_face_tLj25ES1_EptEv.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !278 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ae
  %.0.i.i.i3 = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.af, !prof !267
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i3, i64 2
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283 ; 2 uses
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 3 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT4GDEF13get_var_storeEv.exit
  %i.ak = zext i16 %i.ai to i64                   ; 5 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 4
  %i.an = tail call noalias noundef ptr @malloc(i64 noundef %i.am) #65 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.an, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  store i32 %i.aj, ptr %i.an, align 4, !tbaa !480
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 12 uses
  %i.ap = icmp ugt i16 %i.ai, 3
  br i1 %i.ap, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.i
  %i.aq = add nsw i64 %i.ak, -4                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 2                       ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.as, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.au = and i64 %i.aq, 4
  %lcmp.mod.not.not = icmp eq i64 %i.au, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.av monotonic, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store atomic i32 -2147483648, ptr %i.aw monotonic, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store atomic i32 -2147483648, ptr %i.ax monotonic, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store atomic i32 -2147483648, ptr %i.ay monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.i
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.i ], [ %i.az, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.ba = icmp ult i32 %.0.lcssa.i18.i.i, %i.aj
  br i1 %i.ba, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.bb = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
  %i.bc = sub nsw i64 %i.ak, %i.bb
  %xtraiter9 = and i64 %i.bc, 7                   ; 2 uses
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0
  br i1 %lcmp.mod10.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.bb, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.bd monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter9
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !2903

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.bb, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.be = sub nsw i64 %i.bb, %i.ak
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.bg monotonic, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store atomic i32 -2147483648, ptr %i.bh monotonic, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store atomic i32 -2147483648, ptr %i.bi monotonic, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store atomic i32 -2147483648, ptr %i.bj monotonic, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store atomic i32 -2147483648, ptr %i.bl monotonic, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store atomic i32 -2147483648, ptr %i.bm monotonic, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store atomic i32 -2147483648, ptr %i.bn monotonic, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  store atomic i32 -2147483648, ptr %i.bo monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !5

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.bp monotonic, align 4
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store atomic i32 -2147483648, ptr %i.br monotonic, align 4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store atomic i32 -2147483648, ptr %i.bt monotonic, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store atomic i32 -2147483648, ptr %i.bv monotonic, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store atomic i32 -2147483648, ptr %i.bx monotonic, align 4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  store atomic i32 -2147483648, ptr %i.bz monotonic, align 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store atomic i32 -2147483648, ptr %i.cb monotonic, align 4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i22.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  store atomic i32 -2147483648, ptr %i.cd monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.ak
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !6

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %_ZNK2OT4GDEF13get_var_storeEv.exit, %bb.h, %.preheader.i17.i.i
  %.1.i.i = phi ptr [ @_hb_NullPool, %_ZNK2OT4GDEF13get_var_storeEv.exit ], [ @_hb_NullPool, %bb.h ], [ %i.an, %.preheader.i17.i.i ], [ %i.an, %.lr.ph18.i21.i.i ], [ %i.an, %.lr.ph18.i21.i.i.prol.loopexit ]
  ret ptr %.1.i.i
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_hb_ot_shaper_font_data_destroy(ptr noundef captures(address) %0) local_unnamed_addr #7 {
bb.a:
  %.not.i.i = icmp eq ptr %0, @_hb_NullPool
  %.not4.i.i = icmp eq ptr %0, null
  %or.cond.i.i = or i1 %.not.i.i, %.not4.i.i
  br i1 %or.cond.i.i, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #63
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_hb_ot_shape(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %6 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.hb_glyph_info_t, align 4    ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 10 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !614  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 10 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !654
  %i.j = or i8 %i.i, 48
  store i8 %i.j, ptr %i.h, align 8, !tbaa !654
  %i.k = getelementptr i8, ptr %0, i64 148
  %.val.val.i = load i32, ptr %i.k, align 4, !tbaa !1330 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 29 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !607  ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZL20hb_set_unicode_propsP11hb_buffer_t.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !589  ; 12 uses
  %wide.trip.count.i.i.i = zext i32 %i.m to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 7   ; 3 uses
  %i.p = icmp ult i32 %i.m, 8
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967288
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.7, %bb.b ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.7, %bb.b ]
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.val.val.i, ptr %i.r, align 4, !tbaa !591
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %.val.val.i, ptr %i.t, align 4, !tbaa !591
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.val.val.i, ptr %i.v, align 4, !tbaa !591
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i32 %.val.val.i, ptr %i.x, align 4, !tbaa !591
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  store i32 %.val.val.i, ptr %i.z, align 4, !tbaa !591
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i32 %.val.val.i, ptr %i.ab, align 4, !tbaa !591
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 124
  store i32 %.val.val.i, ptr %i.ad, align 4, !tbaa !591
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  store i32 %.val.val.i, ptr %i.af, align 4, !tbaa !591
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.i.unr-lcssa, label %bb.b, !llvm.loop !2904

.lr.ph.i.i.unr-lcssa:                             ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.7, %.lr.ph.i.i.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod244)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ag = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.epil
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %.val.val.i, ptr %i.ah, align 4, !tbaa !591
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.i, label %bb.c, !llvm.loop !2905

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i.unr-lcssa
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 12 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.064.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cq, %bb.r ] ; 15 uses
  %i.aj = zext i32 %.064.i.i to i64
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %i.aj ; 3 uses
  tail call fastcc void @_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP11hb_buffer_t(ptr noundef %i.ak, ptr noundef %2)
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !637 ; 6 uses
  %i.am = icmp ult i32 %i.al, 128
end_hunk_1
begin_hunk_2_@hb_ot_var_normalize_variations:bb.a
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge45, label %.lr.ph44, !llvm.loop !3099
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT4avar16map_coords_16_16EPij(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %.val44 = load i16, ptr %i.a, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %.val44)
  %i.c = zext i16 %i.b to i32
  %spec.select.i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %2, i32 %i.c) ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not = icmp eq i32 %spec.select.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.039.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.v, %.lr.ph ] ; 3 uses
  %i.e = load i16, ptr %0, align 1, !tbaa !283
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.g = icmp ult i16 %i.f, 2
  br i1 %i.g, label %_ZN11hb_vector_tIiLb0EED2Ev.exit58, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.039181 = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.v, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !324
  %i.j = sitofp i32 %i.i to float
  %i.k = fmul nnan float %i.j, f0x37800000
  %i.l = tail call noundef float @_ZNK2OT11SegmentMaps9map_floatEfjj(ptr noundef nonnull align 1 dereferenceable(6) %.039181, float noundef %i.k, i32 noundef 0, i32 noundef 1)
  %i.m = fmul float %i.l, 6.553600e+04
  %i.n = fadd float %i.m, 5.000000e-01
  %i.o = tail call noundef float @llvm.floor.f32(float %i.n)
  %i.p = fptosi float %i.o to i32
  store i32 %i.p, ptr %i.h, align 4, !tbaa !324
  %i.q = load i16, ptr %.039181, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %.039181, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3100

bb.b:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.w = load i16, ptr %i.a, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 4 uses
  %i.z = icmp samesign ult i32 %spec.select.i, %i.y
  br i1 %i.z, label %.lr.ph185.preheader, label %._crit_edge186

.lr.ph185.preheader:                              ; preds = %bb.b
  %i.aa = sub nuw nsw i32 %i.y, %spec.select.i
  %xtraiter = and i32 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol

.lr.ph185.prol:                                   ; preds = %.lr.ph185.preheader, %.lr.ph185.prol
  %.038183.prol = phi i32 [ %i.ah, %.lr.ph185.prol ], [ %spec.select.i, %.lr.ph185.preheader ]
  %.1182.prol = phi ptr [ %i.ag, %.lr.ph185.prol ], [ %.039.lcssa, %.lr.ph185.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph185.prol ], [ 0, %.lr.ph185.preheader ]
  %i.ab = load i16, ptr %.1182.prol, align 1, !tbaa !283
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %.1182.prol, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 3 uses
  %i.ah = add nuw nsw i32 %.038183.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph185.prol.loopexit, label %.lr.ph185.prol, !llvm.loop !3101

.lr.ph185.prol.loopexit:                          ; preds = %.lr.ph185.prol, %.lr.ph185.preheader
  %.lcssa286.unr = phi ptr [ poison, %.lr.ph185.preheader ], [ %i.ag, %.lr.ph185.prol ]
  %.038183.unr = phi i32 [ %spec.select.i, %.lr.ph185.preheader ], [ %i.ah, %.lr.ph185.prol ]
  %.1182.unr = phi ptr [ %.039.lcssa, %.lr.ph185.preheader ], [ %i.ag, %.lr.ph185.prol ]
  %i.ai = sub nsw i32 %spec.select.i, %i.y
  %i.aj = icmp ugt i32 %i.ai, -4
  br i1 %i.aj, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.prol.loopexit, %.lr.ph185
  %.038183 = phi i32 [ %i.bi, %.lr.ph185 ], [ %.038183.unr, %.lr.ph185.prol.loopexit ]
  %.1182 = phi ptr [ %i.bh, %.lr.ph185 ], [ %.1182.unr, %.lr.ph185.prol.loopexit ] ; 2 uses
  %i.ak = load i16, ptr %.1182, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.1182, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !283
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !283
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  %i.bi = add nuw nsw i32 %.038183, 4             ; 2 uses
  %exitcond211.not.3 = icmp eq i32 %i.bi, %i.y
  br i1 %exitcond211.not.3, label %._crit_edge186, label %.lr.ph185, !llvm.loop !3102

._crit_edge186:                                   ; preds = %.lr.ph185.prol.loopexit, %.lr.ph185, %bb.b
  %.1.lcssa = phi ptr [ %.039.lcssa, %bb.b ], [ %.lcssa286.unr, %.lr.ph185.prol.loopexit ], [ %i.bh, %.lr.ph185 ] ; 2 uses
  %i.bj = load i32, ptr %.1.lcssa, align 1, !tbaa !278 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  %.0.i.i = select i1 %i.bk, ptr @_hb_NullPool, ptr %i.bn, !prof !267
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %i.bp = load i32, ptr %i.bo, align 1, !tbaa !278 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %.0.i.i45 = select i1 %i.bq, ptr @_hb_NullPool, ptr %i.bt, !prof !267 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 2 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !278 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 %i.by
  %.0.i.i.i = select i1 %i.bw, ptr @_hb_NullPool, ptr %i.bz, !prof !267
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.cb = load i16, ptr %i.ca, align 1, !tbaa !283 ; 2 uses
  %i.cc = tail call noundef i16 @llvm.bswap.i16(i16 %i.cb) ; 3 uses
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge186
  %i.ce = zext i16 %i.cc to i64                   ; 5 uses
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  %i.ch = tail call noalias noundef ptr @malloc(i64 noundef %i.cg) #65 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.ch, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  store i32 %i.cd, ptr %i.ch, align 4, !tbaa !480
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 12 uses
  %i.cj = icmp ugt i16 %i.cc, 3
  br i1 %i.cj, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.d
  %i.ck = add nsw i64 %i.ce, -4                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 2                       ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %i.cn = icmp eq i64 %i.cl, 0
  br i1 %i.cn, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.cm, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.co = and i64 %i.ck, 4
  %lcmp.mod289.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod289.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i64 %i.cm to i1
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.cp monotonic, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store atomic i32 -2147483648, ptr %i.cq monotonic, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store atomic i32 -2147483648, ptr %i.cr monotonic, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store atomic i32 -2147483648, ptr %i.cs monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.ct = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.d
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.d ], [ %i.ct, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.cu = icmp ult i32 %.0.lcssa.i18.i.i, %i.cd
  br i1 %i.cu, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.cv = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
  %i.cw = sub nsw i64 %i.ce, %i.cv
  %xtraiter292 = and i64 %i.cw, 7                 ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.cv, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter294 = phi i64 [ %prol.iter294.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.cx monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !3103

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.cv, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.cy = sub nsw i64 %i.cv, %i.ce
  %i.cz = icmp ugt i64 %i.cy, -8
  br i1 %i.cz, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.da monotonic, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store atomic i32 -2147483648, ptr %i.db monotonic, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store atomic i32 -2147483648, ptr %i.dc monotonic, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store atomic i32 -2147483648, ptr %i.dd monotonic, align 4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store atomic i32 -2147483648, ptr %i.df monotonic, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store atomic i32 -2147483648, ptr %i.dg monotonic, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store atomic i32 -2147483648, ptr %i.dh monotonic, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store atomic i32 -2147483648, ptr %i.di monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !5

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.dj monotonic, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store atomic i32 -2147483648, ptr %i.dn monotonic, align 4
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store atomic i32 -2147483648, ptr %i.dp monotonic, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store atomic i32 -2147483648, ptr %i.dr monotonic, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store atomic i32 -2147483648, ptr %i.dv monotonic, align 4
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.ce
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !6

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %._crit_edge186, %bb.c, %.preheader.i17.i.i
  %.1.i.i = phi ptr [ @_hb_NullPool, %._crit_edge186 ], [ @_hb_NullPool, %bb.c ], [ %i.ch, %.preheader.i17.i.i ], [ %i.ch, %.lr.ph18.i21.i.i ], [ %i.ch, %.lr.ph18.i21.i.i.prol.loopexit ] ; 3 uses
  %or.cond = icmp sgt i32 %2, 0
  br i1 %or.cond, label %.preheader.i64, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, !prof !3110

.preheader.i64:                                   ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, %.preheader.i64
  %.043.i65 = phi i32 [ %i.ea, %.preheader.i64 ], [ 0, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit ] ; 2 uses
  %i.dy = lshr i32 %.043.i65, 1
  %i.dz = add nuw i32 %.043.i65, 8
  %i.ea = add nuw i32 %i.dz, %i.dy                ; 4 uses
  %i.eb = icmp ugt i32 %2, %i.ea
  br i1 %i.eb, label %.preheader.i64, label %.thread.i66, !llvm.loop !0

.thread.i66:                                      ; preds = %.preheader.i64
  %i.ec = icmp ugt i32 %i.ea, 1073741823
  br i1 %i.ec, label %.lr.ph189.preheader, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69, !prof !267

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69: ; preds = %.thread.i66
  %i.ed = shl nuw i32 %i.ea, 2
  %i.ee = zext i32 %i.ed to i64
  %malloc = tail call ptr @malloc(i64 %i.ee)      ; 3 uses
  %.not22.i70 = icmp eq ptr %malloc, null
  br i1 %.not22.i70, label %.lr.ph189.preheader, label %bb.e, !prof !319

bb.e:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69
  %i.ef = shl nuw i32 %2, 2
  %i.eg = zext i32 %i.ef to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %malloc, i8 0, i64 %i.eg, i1 false)
  br label %.lr.ph189.preheader

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %.not203 = icmp eq i32 %2, 0
  br i1 %.not203, label %._crit_edge202, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.thread.i66, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69, %bb.e, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  %.sroa.0136.0245 = phi i1 [ false, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ true, %bb.e ], [ false, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ false, %.thread.i66 ]
  %.sroa.7.0243 = phi i32 [ 0, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %2, %bb.e ], [ 0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ 0, %.thread.i66 ] ; 2 uses
  %.sroa.13.0241 = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %malloc, %bb.e ], [ null, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ null, %.thread.i66 ] ; 5 uses
  %i.eh = zext nneg i32 %.sroa.7.0243 to i64      ; 3 uses
  %wide.trip.count215 = zext i32 %2 to i64        ; 5 uses
  %i.ei = add nsw i64 %wide.trip.count215, -1     ; 2 uses
  %xtraiter295 = and i64 %wide.trip.count215, 1
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.lr.ph189.epil.preheader, label %.lr.ph189.preheader.new

.lr.ph189.preheader.new:                          ; preds = %.lr.ph189.preheader
  %unroll_iter298 = and i64 %wide.trip.count215, 4294967294
  br label %.lr.ph189

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.em, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ek = lshr i32 %.043.i, 1
  %i.el = add i32 %.043.i, 8
  %i.em = add i32 %i.el, %i.ek                    ; 5 uses
  %i.en = icmp ugt i32 %2, %i.em
  br i1 %i.en, label %.preheader.i, label %.thread.i, !llvm.loop !0

.thread.i:                                        ; preds = %.preheader.i
  %i.eo = icmp ugt i32 %i.em, 1073741823
  br i1 %i.eo, label %.lr.ph196, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, !prof !267

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.ep = shl nuw i32 %i.em, 2
  %i.eq = zext i32 %i.ep to i64
  %malloc177 = tail call ptr @malloc(i64 %i.eq)   ; 2 uses
  %.not22.i = icmp eq ptr %malloc177, null
  %spec.select176 = select i1 %.not22.i, i32 -1, i32 %i.em, !prof !319
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.thread.i, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %.sroa.18.2 = phi ptr [ %malloc177, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ null, %.thread.i ]
  %.sroa.0.1 = phi i32 [ %spec.select176, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ -1, %.thread.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 6
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 8
  %wide.trip.count220 = zext i32 %2 to i64
  br label %bb.l

.lr.ph189:                                        ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit.1, %.lr.ph189.preheader.new
  %indvars.iv212 = phi i64 [ 0, %.lr.ph189.preheader.new ], [ %indvars.iv.next213.1, %_ZN11hb_vector_tIiLb0EEixEi.exit.1 ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph189.preheader.new ], [ %niter299.next.1, %_ZN11hb_vector_tIiLb0EEixEi.exit.1 ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv212
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !324
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = fmul nnan float %i.ev, 2.500000e-01
  %i.ex = fadd float %i.ew, 5.000000e-01
  %i.ey = tail call noundef float @llvm.floor.f32(float %i.ex)
  %i.ez = fptosi float %i.ey to i32
  %.not.i48 = icmp samesign ult i64 %indvars.iv212, %i.eh
  br i1 %.not.i48, label %bb.g, label %bb.f, !prof !268

bb.f:                                             ; preds = %.lr.ph189
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

bb.g:                                             ; preds = %.lr.ph189
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0241, i64 %indvars.iv212
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

_ZN11hb_vector_tIiLb0EEixEi.exit:                 ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.fa, %bb.g ]
  store i32 %i.ez, ptr %.0.i, align 4, !tbaa !324
  %indvars.iv.next213 = or disjoint i64 %indvars.iv212, 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next213
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !324
  %i.fd = sitofp i32 %i.fc to float
  %i.fe = fmul nnan float %i.fd, 2.500000e-01
  %i.ff = fadd float %i.fe, 5.000000e-01
  %i.fg = tail call noundef float @llvm.floor.f32(float %i.ff)
  %i.fh = fptosi float %i.fg to i32
  %.not.i48.1 = icmp samesign ult i64 %indvars.iv.next213, %i.eh
  br i1 %.not.i48.1, label %bb.i, label %bb.h, !prof !268

bb.h:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit.1

bb.i:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0241, i64 %indvars.iv.next213
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit.1

_ZN11hb_vector_tIiLb0EEixEi.exit.1:               ; preds = %bb.i, %bb.h
end_hunk_2
begin_hunk_3_@_ZN2OT11TupleValues9fetcher_t7_add_toILb1EEEv10hb_array_tIfEf:bb.a
  %i.z = shl nuw nsw i64 %n.vec158, 2
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = shl nuw nsw i64 %n.vec158, 4
  %i.ac = getelementptr i8, ptr %.069110, i64 %i.ab ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph157
  %index162 = phi i64 [ 0, %vector.ph157 ], [ %index.next171, %vector.body161 ] ; 3 uses
  %i.ad = shl i64 %index162, 2                    ; 4 uses
  %next.gep163 = getelementptr i8, ptr %i.s, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ad   ; 4 uses
  %next.gep164 = getelementptr i8, ptr %i.ae, i64 4
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ad   ; 4 uses
  %next.gep165 = getelementptr i8, ptr %i.af, i64 8
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ad   ; 4 uses
  %next.gep166 = getelementptr i8, ptr %i.ag, i64 12
  %i.ah = shl i64 %index162, 4                    ; 4 uses
  %next.gep167 = getelementptr i8, ptr %.069110, i64 %i.ah ; 5 uses
  %i.ai = getelementptr i8, ptr %.069110, i64 %i.ah ; 4 uses
  %next.gep168 = getelementptr i8, ptr %i.ai, i64 16
  %i.aj = getelementptr i8, ptr %.069110, i64 %i.ah ; 4 uses
  %next.gep169 = getelementptr i8, ptr %i.aj, i64 32
  %i.ak = getelementptr i8, ptr %.069110, i64 %i.ah ; 4 uses
  %next.gep170 = getelementptr i8, ptr %i.ak, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep163, i64 1
  %i.am = getelementptr i8, ptr %i.ae, i64 5
  %i.an = getelementptr i8, ptr %i.af, i64 9
  %i.ao = getelementptr i8, ptr %i.ag, i64 13
  %i.ap = load i8, ptr %next.gep163, align 1, !tbaa !300
  %i.aq = load i8, ptr %next.gep164, align 1, !tbaa !300
  %i.ar = load i8, ptr %next.gep165, align 1, !tbaa !300
  %i.as = load i8, ptr %next.gep166, align 1, !tbaa !300
  %i.at = insertelement <4 x i8> poison, i8 %i.ap, i64 0
  %i.au = insertelement <4 x i8> %i.at, i8 %i.aq, i64 1
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ar, i64 2
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 3
  %i.ax = sitofp <4 x i8> %i.aw to <4 x float>
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep167, i64 4
  %i.az = getelementptr i8, ptr %i.ai, i64 20
  %i.ba = getelementptr i8, ptr %i.aj, i64 36
  %i.bb = getelementptr i8, ptr %i.ak, i64 52
  %i.bc = load float, ptr %next.gep167, align 4, !tbaa !304
  %i.bd = load float, ptr %next.gep168, align 4, !tbaa !304
  %i.be = load float, ptr %next.gep169, align 4, !tbaa !304
  %i.bf = load float, ptr %next.gep170, align 4, !tbaa !304
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep163, i64 2
  %i.bl = getelementptr i8, ptr %i.ae, i64 6
  %i.bm = getelementptr i8, ptr %i.af, i64 10
  %i.bn = getelementptr i8, ptr %i.ag, i64 14
  %i.bo = load i8, ptr %i.al, align 1, !tbaa !300
  %i.bp = load i8, ptr %i.am, align 1, !tbaa !300
  %i.bq = load i8, ptr %i.an, align 1, !tbaa !300
  %i.br = load i8, ptr %i.ao, align 1, !tbaa !300
  %i.bs = insertelement <4 x i8> poison, i8 %i.bo, i64 0
  %i.bt = insertelement <4 x i8> %i.bs, i8 %i.bp, i64 1
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bq, i64 2
  %i.bv = insertelement <4 x i8> %i.bu, i8 %i.br, i64 3
  %i.bw = sitofp <4 x i8> %i.bv to <4 x float>
  %i.bx = getelementptr inbounds nuw i8, ptr %next.gep167, i64 8
  %i.by = getelementptr i8, ptr %i.ai, i64 24
  %i.bz = getelementptr i8, ptr %i.aj, i64 40
  %i.ca = getelementptr i8, ptr %i.ak, i64 56
  %i.cb = load float, ptr %i.ay, align 4, !tbaa !304
  %i.cc = load float, ptr %i.az, align 4, !tbaa !304
  %i.cd = load float, ptr %i.ba, align 4, !tbaa !304
  %i.ce = load float, ptr %i.bb, align 4, !tbaa !304
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep163, i64 3
  %i.ck = getelementptr i8, ptr %i.ae, i64 7
  %i.cl = getelementptr i8, ptr %i.af, i64 11
  %i.cm = getelementptr i8, ptr %i.ag, i64 15
  %i.cn = load i8, ptr %i.bk, align 1, !tbaa !300
  %i.co = load i8, ptr %i.bl, align 1, !tbaa !300
  %i.cp = load i8, ptr %i.bm, align 1, !tbaa !300
  %i.cq = load i8, ptr %i.bn, align 1, !tbaa !300
  %i.cr = insertelement <4 x i8> poison, i8 %i.cn, i64 0
  %i.cs = insertelement <4 x i8> %i.cr, i8 %i.co, i64 1
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 2
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.cq, i64 3
  %i.cv = sitofp <4 x i8> %i.cu to <4 x float>
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep167, i64 12
  %i.cx = getelementptr i8, ptr %i.ai, i64 28
  %i.cy = getelementptr i8, ptr %i.aj, i64 44
  %i.cz = getelementptr i8, ptr %i.ak, i64 60
  %i.da = load float, ptr %i.bx, align 4, !tbaa !304
  %i.db = load float, ptr %i.by, align 4, !tbaa !304
  %i.dc = load float, ptr %i.bz, align 4, !tbaa !304
  %i.dd = load float, ptr %i.ca, align 4, !tbaa !304
  %i.de = insertelement <4 x float> poison, float %i.da, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 1
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 2
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 3
  %i.di = load i8, ptr %i.cj, align 1, !tbaa !300
  %i.dj = load i8, ptr %i.ck, align 1, !tbaa !300
  %i.dk = load i8, ptr %i.cl, align 1, !tbaa !300
  %i.dl = load i8, ptr %i.cm, align 1, !tbaa !300
  %i.dm = insertelement <4 x i8> poison, i8 %i.di, i64 0
  %i.dn = insertelement <4 x i8> %i.dm, i8 %i.dj, i64 1
  %i.do = insertelement <4 x i8> %i.dn, i8 %i.dk, i64 2
  %i.dp = insertelement <4 x i8> %i.do, i8 %i.dl, i64 3
  %i.dq = sitofp <4 x i8> %i.dp to <4 x float>
  %i.dr = load float, ptr %i.cw, align 4, !tbaa !304
  %i.ds = load float, ptr %i.cx, align 4, !tbaa !304
  %i.dt = load float, ptr %i.cy, align 4, !tbaa !304
  %i.du = load float, ptr %i.cz, align 4, !tbaa !304
  %i.dv = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.ds, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.dt, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 3
  %i.dz = shufflevector <4 x float> %i.ax, <4 x float> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ea = shufflevector <4 x float> %i.bj, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dz, <8 x float> %i.g, <8 x float> %i.ea)
  %i.ec = shufflevector <4 x float> %i.cv, <4 x float> %i.dq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ed = shufflevector <4 x float> %i.dh, <4 x float> %i.dy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ec, <8 x float> %i.h, <8 x float> %i.ed)
  %interleaved.vec = shufflevector <8 x float> %i.eb, <8 x float> %i.ee, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep167, align 4, !tbaa !304
  %index.next171 = add nuw i64 %index162, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next171, %n.vec158
  br i1 %i.ef, label %middle.block172, label %vector.body161, !llvm.loop !3177

middle.block172:                                  ; preds = %vector.body161
  %cmp.n173 = icmp eq i64 %n.vec158, %i.w
  br i1 %cmp.n173, label %.preheader.loopexit, label %.lr.ph99.preheader242

.lr.ph99.preheader242:                            ; preds = %.lr.ph99.preheader, %middle.block172
  %.06497.ph = phi i32 [ 0, %.lr.ph99.preheader ], [ %i.y, %middle.block172 ]
  %.06696.ph = phi ptr [ %i.s, %.lr.ph99.preheader ], [ %i.aa, %middle.block172 ]
  %.17095.ph = phi ptr [ %.069110, %.lr.ph99.preheader ], [ %i.ac, %middle.block172 ]
  br label %.lr.ph99

.preheader.loopexit:                              ; preds = %.lr.ph99, %middle.block172
  %.lcssa146 = phi ptr [ %i.aa, %middle.block172 ], [ %i.ez, %.lr.ph99 ]
  %.lcssa145 = phi ptr [ %i.ac, %middle.block172 ], [ %i.fa, %.lr.ph99 ]
  %i.eg = and i32 %.sroa.speculated, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.170.lcssa = phi ptr [ %.069110, %bb.d ], [ %.lcssa145, %.preheader.loopexit ] ; 4 uses
  %.066.lcssa = phi ptr [ %i.s, %bb.d ], [ %.lcssa146, %.preheader.loopexit ] ; 4 uses
  %.064.lcssa = phi i32 [ 0, %bb.d ], [ %i.eg, %.preheader.loopexit ] ; 4 uses
  %i.eh = icmp ult i32 %.064.lcssa, %.sroa.speculated
  br i1 %i.eh, label %.lr.ph106.preheader, label %._crit_edge107

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.ei = xor i32 %.064.lcssa, -1
  %i.ej = add i32 %.sroa.speculated, %i.ei        ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ej, 7
  br i1 %min.iters.check, label %.lr.ph106.preheader241, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.preheader
  %n.vec = and i64 %i.el, 8589934584              ; 5 uses
  %i.em = trunc i64 %n.vec to i32
  %i.en = add i32 %.064.lcssa, %i.em
  %i.eo = getelementptr i8, ptr %.066.lcssa, i64 %n.vec ; 2 uses
  %i.ep = shl nuw nsw i64 %n.vec, 2
  %i.eq = getelementptr i8, ptr %.170.lcssa, i64 %i.ep ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.066.lcssa, i64 %index ; 2 uses
  %i.er = shl i64 %index, 2
  %next.gep149 = getelementptr i8, ptr %.170.lcssa, i64 %i.er ; 3 uses
  %i.es = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !300
  %wide.load150 = load <4 x i8>, ptr %i.es, align 1, !tbaa !300
  %i.et = sitofp <4 x i8> %wide.load to <4 x float>
  %i.eu = sitofp <4 x i8> %wide.load150 to <4 x float>
  %i.ev = getelementptr i8, ptr %next.gep149, i64 16 ; 2 uses
  %wide.load151 = load <4 x float>, ptr %next.gep149, align 4, !tbaa !304
  %wide.load152 = load <4 x float>, ptr %i.ev, align 4, !tbaa !304
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %broadcast.splat, <4 x float> %wide.load151)
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %broadcast.splat, <4 x float> %wide.load152)
  store <4 x float> %i.ew, ptr %next.gep149, align 4, !tbaa !304
  store <4 x float> %i.ex, ptr %i.ev, align 4, !tbaa !304
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !3178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.el, %n.vec
  br i1 %cmp.n, label %._crit_edge107, label %.lr.ph106.preheader241

.lr.ph106.preheader241:                           ; preds = %.lr.ph106.preheader, %middle.block
  %.165105.ph = phi i32 [ %.064.lcssa, %.lr.ph106.preheader ], [ %i.en, %middle.block ]
  %.167104.ph = phi ptr [ %.066.lcssa, %.lr.ph106.preheader ], [ %i.eo, %middle.block ]
  %.2103.ph = phi ptr [ %.170.lcssa, %.lr.ph106.preheader ], [ %i.eq, %middle.block ]
  br label %.lr.ph106

.lr.ph99:                                         ; preds = %.lr.ph99.preheader242, %.lr.ph99
  %.06497 = phi i32 [ %i.ff, %.lr.ph99 ], [ %.06497.ph, %.lr.ph99.preheader242 ] ; 2 uses
  %.06696 = phi ptr [ %i.ez, %.lr.ph99 ], [ %.06696.ph, %.lr.ph99.preheader242 ] ; 2 uses
  %.17095 = phi ptr [ %i.fa, %.lr.ph99 ], [ %.17095.ph, %.lr.ph99.preheader242 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.06696, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.17095, i64 16 ; 2 uses
  %i.fb = load <4 x i8>, ptr %.06696, align 1, !tbaa !300
  %i.fc = sitofp <4 x i8> %i.fb to <4 x float>
  %i.fd = load <4 x float>, ptr %.17095, align 4, !tbaa !304
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.j, <4 x float> %i.fd)
  store <4 x float> %i.fe, ptr %.17095, align 4, !tbaa !304
  %i.ff = add nuw i32 %.06497, 4
  %4 = add nuw i32 %.06497, 7
  %i.fg = icmp ult i32 %4, %.sroa.speculated
  br i1 %i.fg, label %.lr.ph99, label %.preheader.loopexit, !llvm.loop !3179

.lr.ph106:                                        ; preds = %.lr.ph106.preheader241, %.lr.ph106
  %.165105 = phi i32 [ %i.fn, %.lr.ph106 ], [ %.165105.ph, %.lr.ph106.preheader241 ]
  %.167104 = phi ptr [ %i.fh, %.lr.ph106 ], [ %.167104.ph, %.lr.ph106.preheader241 ] ; 2 uses
  %.2103 = phi ptr [ %i.fk, %.lr.ph106 ], [ %.2103.ph, %.lr.ph106.preheader241 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.167104, i64 1 ; 2 uses
  %i.fi = load i8, ptr %.167104, align 1, !tbaa !300
  %i.fj = sitofp i8 %i.fi to float
  %i.fk = getelementptr inbounds nuw i8, ptr %.2103, i64 4 ; 2 uses
  %i.fl = load float, ptr %.2103, align 4, !tbaa !304
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fj, float %3, float %i.fl)
  store float %i.fm, ptr %.2103, align 4, !tbaa !304
  %i.fn = add nuw i32 %.165105, 1                 ; 2 uses
  %exitcond128.not = icmp eq i32 %i.fn, %.sroa.speculated
  br i1 %exitcond128.not, label %._crit_edge107, label %.lr.ph106, !llvm.loop !3180

._crit_edge107:                                   ; preds = %.lr.ph106, %middle.block, %.preheader
  %.2.lcssa = phi ptr [ %.170.lcssa, %.preheader ], [ %i.eq, %middle.block ], [ %i.fk, %.lr.ph106 ]
  %.167.lcssa = phi ptr [ %.066.lcssa, %.preheader ], [ %i.eo, %middle.block ], [ %i.fh, %.lr.ph106 ]
  store ptr %.167.lcssa, ptr %0, align 8, !tbaa !1516
  br label %bb.g

bb.e:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %i.fo = load ptr, ptr %0, align 8, !tbaa !1516  ; 7 uses
  %i.fp = icmp ugt i32 %.sroa.speculated, 3
  br i1 %i.fp, label %.lr.ph84.preheader, label %.preheader75

.lr.ph84.preheader:                               ; preds = %bb.e
  %i.fq = add i32 %.sroa.speculated, -4           ; 2 uses
  %i.fr = lshr i32 %i.fq, 2
  %narrow = add nuw nsw i32 %i.fr, 1
  %i.fs = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check198 = icmp ult i32 %i.fq, 12
  br i1 %min.iters.check198, label %.lr.ph84.preheader244, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph84.preheader
  %n.vec200 = and i64 %i.fs, 2147483644           ; 5 uses
  %i.ft = trunc nuw nsw i64 %n.vec200 to i32
  %i.fu = shl i32 %i.ft, 2
  %i.fv = shl nuw nsw i64 %n.vec200, 3
  %i.fw = getelementptr i8, ptr %i.fo, i64 %i.fv  ; 2 uses
  %i.fx = shl nuw nsw i64 %n.vec200, 4
  %i.fy = getelementptr i8, ptr %.069110, i64 %i.fx ; 2 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph199
  %index204 = phi i64 [ 0, %vector.ph199 ], [ %index.next214, %vector.body203 ] ; 3 uses
  %i.fz = shl i64 %index204, 3                    ; 4 uses
  %next.gep205 = getelementptr i8, ptr %i.fo, i64 %i.fz ; 4 uses
  %i.ga = getelementptr i8, ptr %i.fo, i64 %i.fz  ; 4 uses
  %next.gep206 = getelementptr i8, ptr %i.ga, i64 8
  %i.gb = getelementptr i8, ptr %i.fo, i64 %i.fz  ; 4 uses
  %next.gep207 = getelementptr i8, ptr %i.gb, i64 16
  %i.gc = getelementptr i8, ptr %i.fo, i64 %i.fz  ; 4 uses
  %next.gep208 = getelementptr i8, ptr %i.gc, i64 24
  %i.gd = shl i64 %index204, 4                    ; 4 uses
  %next.gep209 = getelementptr i8, ptr %.069110, i64 %i.gd ; 5 uses
  %i.ge = getelementptr i8, ptr %.069110, i64 %i.gd ; 4 uses
  %next.gep210 = getelementptr i8, ptr %i.ge, i64 16
  %i.gf = getelementptr i8, ptr %.069110, i64 %i.gd ; 4 uses
  %next.gep211 = getelementptr i8, ptr %i.gf, i64 32
  %i.gg = getelementptr i8, ptr %.069110, i64 %i.gd ; 4 uses
  %next.gep212 = getelementptr i8, ptr %i.gg, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %next.gep205, i64 2
  %i.gi = getelementptr i8, ptr %i.ga, i64 10
  %i.gj = getelementptr i8, ptr %i.gb, i64 18
  %i.gk = getelementptr i8, ptr %i.gc, i64 26
  %i.gl = load i16, ptr %next.gep205, align 1, !tbaa !283
  %i.gm = load i16, ptr %next.gep206, align 1, !tbaa !283
  %i.gn = load i16, ptr %next.gep207, align 1, !tbaa !283
  %i.go = load i16, ptr %next.gep208, align 1, !tbaa !283
  %i.gp = insertelement <4 x i16> poison, i16 %i.gl, i64 0
  %i.gq = insertelement <4 x i16> %i.gp, i16 %i.gm, i64 1
  %i.gr = insertelement <4 x i16> %i.gq, i16 %i.gn, i64 2
  %i.gs = insertelement <4 x i16> %i.gr, i16 %i.go, i64 3
  %i.gt = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.gs)
  %i.gu = sitofp <4 x i16> %i.gt to <4 x float>
  %i.gv = getelementptr inbounds nuw i8, ptr %next.gep209, i64 4
  %i.gw = getelementptr i8, ptr %i.ge, i64 20
  %i.gx = getelementptr i8, ptr %i.gf, i64 36
  %i.gy = getelementptr i8, ptr %i.gg, i64 52
  %i.gz = load float, ptr %next.gep209, align 4, !tbaa !304
  %i.ha = load float, ptr %next.gep210, align 4, !tbaa !304
  %i.hb = load float, ptr %next.gep211, align 4, !tbaa !304
  %i.hc = load float, ptr %next.gep212, align 4, !tbaa !304
  %i.hd = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 1
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 2
  %i.hg = insertelement <4 x float> %i.hf, float %i.hc, i64 3
  %i.hh = getelementptr inbounds nuw i8, ptr %next.gep205, i64 4
  %i.hi = getelementptr i8, ptr %i.ga, i64 12
  %i.hj = getelementptr i8, ptr %i.gb, i64 20
  %i.hk = getelementptr i8, ptr %i.gc, i64 28
  %i.hl = load i16, ptr %i.gh, align 1, !tbaa !283
  %i.hm = load i16, ptr %i.gi, align 1, !tbaa !283
  %i.hn = load i16, ptr %i.gj, align 1, !tbaa !283
  %i.ho = load i16, ptr %i.gk, align 1, !tbaa !283
  %i.hp = insertelement <4 x i16> poison, i16 %i.hl, i64 0
  %i.hq = insertelement <4 x i16> %i.hp, i16 %i.hm, i64 1
  %i.hr = insertelement <4 x i16> %i.hq, i16 %i.hn, i64 2
  %i.hs = insertelement <4 x i16> %i.hr, i16 %i.ho, i64 3
  %i.ht = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.hs)
  %i.hu = sitofp <4 x i16> %i.ht to <4 x float>
  %i.hv = getelementptr inbounds nuw i8, ptr %next.gep209, i64 8
  %i.hw = getelementptr i8, ptr %i.ge, i64 24
  %i.hx = getelementptr i8, ptr %i.gf, i64 40
  %i.hy = getelementptr i8, ptr %i.gg, i64 56
  %i.hz = load float, ptr %i.gv, align 4, !tbaa !304
  %i.ia = load float, ptr %i.gw, align 4, !tbaa !304
  %i.ib = load float, ptr %i.gx, align 4, !tbaa !304
  %i.ic = load float, ptr %i.gy, align 4, !tbaa !304
  %i.id = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ie = insertelement <4 x float> %i.id, float %i.ia, i64 1
  %i.if = insertelement <4 x float> %i.ie, float %i.ib, i64 2
  %i.ig = insertelement <4 x float> %i.if, float %i.ic, i64 3
  %i.ih = getelementptr inbounds nuw i8, ptr %next.gep205, i64 6
  %i.ii = getelementptr i8, ptr %i.ga, i64 14
  %i.ij = getelementptr i8, ptr %i.gb, i64 22
  %i.ik = getelementptr i8, ptr %i.gc, i64 30
  %i.il = load i16, ptr %i.hh, align 1, !tbaa !283
  %i.im = load i16, ptr %i.hi, align 1, !tbaa !283
  %i.in = load i16, ptr %i.hj, align 1, !tbaa !283
  %i.io = load i16, ptr %i.hk, align 1, !tbaa !283
  %i.ip = insertelement <4 x i16> poison, i16 %i.il, i64 0
  %i.iq = insertelement <4 x i16> %i.ip, i16 %i.im, i64 1
  %i.ir = insertelement <4 x i16> %i.iq, i16 %i.in, i64 2
  %i.is = insertelement <4 x i16> %i.ir, i16 %i.io, i64 3
  %i.it = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.is)
  %i.iu = sitofp <4 x i16> %i.it to <4 x float>
  %i.iv = getelementptr inbounds nuw i8, ptr %next.gep209, i64 12
  %i.iw = getelementptr i8, ptr %i.ge, i64 28
  %i.ix = getelementptr i8, ptr %i.gf, i64 44
  %i.iy = getelementptr i8, ptr %i.gg, i64 60
  %i.iz = load float, ptr %i.hv, align 4, !tbaa !304
  %i.ja = load float, ptr %i.hw, align 4, !tbaa !304
  %i.jb = load float, ptr %i.hx, align 4, !tbaa !304
  %i.jc = load float, ptr %i.hy, align 4, !tbaa !304
  %i.jd = insertelement <4 x float> poison, float %i.iz, i64 0
  %i.je = insertelement <4 x float> %i.jd, float %i.ja, i64 1
  %i.jf = insertelement <4 x float> %i.je, float %i.jb, i64 2
  %i.jg = insertelement <4 x float> %i.jf, float %i.jc, i64 3
  %i.jh = load i16, ptr %i.ih, align 1, !tbaa !283
  %i.ji = load i16, ptr %i.ii, align 1, !tbaa !283
  %i.jj = load i16, ptr %i.ij, align 1, !tbaa !283
  %i.jk = load i16, ptr %i.ik, align 1, !tbaa !283
  %i.jl = insertelement <4 x i16> poison, i16 %i.jh, i64 0
  %i.jm = insertelement <4 x i16> %i.jl, i16 %i.ji, i64 1
  %i.jn = insertelement <4 x i16> %i.jm, i16 %i.jj, i64 2
  %i.jo = insertelement <4 x i16> %i.jn, i16 %i.jk, i64 3
  %i.jp = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.jo)
  %i.jq = sitofp <4 x i16> %i.jp to <4 x float>
  %i.jr = load float, ptr %i.iv, align 4, !tbaa !304
  %i.js = load float, ptr %i.iw, align 4, !tbaa !304
  %i.jt = load float, ptr %i.ix, align 4, !tbaa !304
  %i.ju = load float, ptr %i.iy, align 4, !tbaa !304
  %i.jv = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jw = insertelement <4 x float> %i.jv, float %i.js, i64 1
  %i.jx = insertelement <4 x float> %i.jw, float %i.jt, i64 2
  %i.jy = insertelement <4 x float> %i.jx, float %i.ju, i64 3
  %i.jz = shufflevector <4 x float> %i.gu, <4 x float> %i.hu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ka = shufflevector <4 x float> %i.hg, <4 x float> %i.ig, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jz, <8 x float> %i.c, <8 x float> %i.ka)
  %i.kc = shufflevector <4 x float> %i.iu, <4 x float> %i.jq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kd = shufflevector <4 x float> %i.jg, <4 x float> %i.jy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ke = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.kc, <8 x float> %i.d, <8 x float> %i.kd)
  %interleaved.vec213 = shufflevector <8 x float> %i.kb, <8 x float> %i.ke, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec213, ptr %next.gep209, align 4, !tbaa !304
  %index.next214 = add nuw i64 %index204, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next214, %n.vec200
  br i1 %i.kf, label %middle.block215, label %vector.body203, !llvm.loop !3181

middle.block215:                                  ; preds = %vector.body203
  %cmp.n216 = icmp eq i64 %n.vec200, %i.fs
  br i1 %cmp.n216, label %.preheader75.loopexit, label %.lr.ph84.preheader244

.lr.ph84.preheader244:                            ; preds = %.lr.ph84.preheader, %middle.block215
  %.06182.ph = phi i32 [ 0, %.lr.ph84.preheader ], [ %i.fu, %middle.block215 ]
  %.06281.ph = phi ptr [ %i.fo, %.lr.ph84.preheader ], [ %i.fw, %middle.block215 ]
  %.380.ph = phi ptr [ %.069110, %.lr.ph84.preheader ], [ %i.fy, %middle.block215 ]
  br label %.lr.ph84

.preheader75.loopexit:                            ; preds = %.lr.ph84, %middle.block215
  %.lcssa142 = phi ptr [ %i.fw, %middle.block215 ], [ %i.ld, %.lr.ph84 ]
  %.lcssa141 = phi ptr [ %i.fy, %middle.block215 ], [ %i.le, %.lr.ph84 ]
  %i.kg = and i32 %.sroa.speculated, -4
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75.loopexit, %bb.e
  %.3.lcssa = phi ptr [ %.069110, %bb.e ], [ %.lcssa141, %.preheader75.loopexit ] ; 4 uses
  %.062.lcssa = phi ptr [ %i.fo, %bb.e ], [ %.lcssa142, %.preheader75.loopexit ] ; 4 uses
  %.061.lcssa = phi i32 [ 0, %bb.e ], [ %i.kg, %.preheader75.loopexit ] ; 4 uses
  %i.kh = icmp ult i32 %.061.lcssa, %.sroa.speculated
  br i1 %i.kh, label %.lr.ph91.preheader, label %._crit_edge92

.lr.ph91.preheader:                               ; preds = %.preheader75
  %i.ki = xor i32 %.061.lcssa, -1
  %i.kj = add i32 %.sroa.speculated, %i.ki        ; 2 uses
  %i.kk = zext i32 %i.kj to i64
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %min.iters.check178 = icmp ult i32 %i.kj, 7
  br i1 %min.iters.check178, label %.lr.ph91.preheader243, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph91.preheader
  %n.vec180 = and i64 %i.kl, 8589934584           ; 5 uses
  %i.km = trunc i64 %n.vec180 to i32
  %i.kn = add i32 %.061.lcssa, %i.km
  %i.ko = shl nuw nsw i64 %n.vec180, 1
  %i.kp = getelementptr i8, ptr %.062.lcssa, i64 %i.ko ; 2 uses
  %i.kq = shl nuw nsw i64 %n.vec180, 2
  %i.kr = getelementptr i8, ptr %.3.lcssa, i64 %i.kq ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph179
  %index184 = phi i64 [ 0, %vector.ph179 ], [ %index.next191, %vector.body183 ] ; 3 uses
  %i.ks = shl i64 %index184, 1
  %next.gep185 = getelementptr i8, ptr %.062.lcssa, i64 %i.ks ; 2 uses
  %i.kt = shl i64 %index184, 2
  %next.gep186 = getelementptr i8, ptr %.3.lcssa, i64 %i.kt ; 3 uses
  %i.ku = getelementptr i8, ptr %next.gep185, i64 8
  %wide.load187 = load <4 x i16>, ptr %next.gep185, align 1, !tbaa !283
  %wide.load188 = load <4 x i16>, ptr %i.ku, align 1, !tbaa !283
  %i.kv = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load187)
  %i.kw = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load188)
  %i.kx = sitofp <4 x i16> %i.kv to <4 x float>
  %i.ky = sitofp <4 x i16> %i.kw to <4 x float>
  %i.kz = getelementptr i8, ptr %next.gep186, i64 16 ; 2 uses
  %wide.load189 = load <4 x float>, ptr %next.gep186, align 4, !tbaa !304
  %wide.load190 = load <4 x float>, ptr %i.kz, align 4, !tbaa !304
  %i.la = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kx, <4 x float> %broadcast.splat182, <4 x float> %wide.load189)
  %i.lb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ky, <4 x float> %broadcast.splat182, <4 x float> %wide.load190)
  store <4 x float> %i.la, ptr %next.gep186, align 4, !tbaa !304
  store <4 x float> %i.lb, ptr %i.kz, align 4, !tbaa !304
  %index.next191 = add nuw i64 %index184, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next191, %n.vec180
  br i1 %i.lc, label %middle.block192, label %vector.body183, !llvm.loop !3182

middle.block192:                                  ; preds = %vector.body183
  %cmp.n193 = icmp eq i64 %i.kl, %n.vec180
  br i1 %cmp.n193, label %._crit_edge92, label %.lr.ph91.preheader243

.lr.ph91.preheader243:                            ; preds = %.lr.ph91.preheader, %middle.block192
  %.190.ph = phi i32 [ %.061.lcssa, %.lr.ph91.preheader ], [ %i.kn, %middle.block192 ]
  %.16389.ph = phi ptr [ %.062.lcssa, %.lr.ph91.preheader ], [ %i.kp, %middle.block192 ]
  %.488.ph = phi ptr [ %.3.lcssa, %.lr.ph91.preheader ], [ %i.kr, %middle.block192 ]
  br label %.lr.ph91

.lr.ph84:                                         ; preds = %.lr.ph84.preheader244, %.lr.ph84
  %.06182 = phi i32 [ %i.lk, %.lr.ph84 ], [ %.06182.ph, %.lr.ph84.preheader244 ] ; 2 uses
  %.06281 = phi ptr [ %i.ld, %.lr.ph84 ], [ %.06281.ph, %.lr.ph84.preheader244 ] ; 2 uses
  %.380 = phi ptr [ %i.le, %.lr.ph84 ], [ %.380.ph, %.lr.ph84.preheader244 ] ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.06281, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.380, i64 16 ; 2 uses
  %i.lf = load <4 x i16>, ptr %.06281, align 1, !tbaa !283
  %i.lg = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.lf)
  %i.lh = sitofp <4 x i16> %i.lg to <4 x float>
  %i.li = load <4 x float>, ptr %.380, align 4, !tbaa !304
  %i.lj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lh, <4 x float> %i.f, <4 x float> %i.li)
  store <4 x float> %i.lj, ptr %.380, align 4, !tbaa !304
  %i.lk = add nuw i32 %.06182, 4
  %5 = add nuw i32 %.06182, 7
  %i.ll = icmp ult i32 %5, %.sroa.speculated
  br i1 %i.ll, label %.lr.ph84, label %.preheader75.loopexit, !llvm.loop !3183

.lr.ph91:                                         ; preds = %.lr.ph91.preheader243, %.lr.ph91
  %.190 = phi i32 [ %i.lt, %.lr.ph91 ], [ %.190.ph, %.lr.ph91.preheader243 ]
  %.16389 = phi ptr [ %i.lm, %.lr.ph91 ], [ %.16389.ph, %.lr.ph91.preheader243 ] ; 2 uses
  %.488 = phi ptr [ %i.lq, %.lr.ph91 ], [ %.488.ph, %.lr.ph91.preheader243 ] ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.16389, i64 2 ; 2 uses
  %i.ln = load i16, ptr %.16389, align 1, !tbaa !283
  %i.lo = tail call noundef i16 @llvm.bswap.i16(i16 %i.ln)
  %i.lp = sitofp i16 %i.lo to float
  %i.lq = getelementptr inbounds nuw i8, ptr %.488, i64 4 ; 2 uses
  %i.lr = load float, ptr %.488, align 4, !tbaa !304
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.lp, float %3, float %i.lr)
  store float %i.ls, ptr %.488, align 4, !tbaa !304
  %i.lt = add nuw i32 %.190, 1                    ; 2 uses
  %exitcond127.not = icmp eq i32 %i.lt, %.sroa.speculated
  br i1 %exitcond127.not, label %._crit_edge92, label %.lr.ph91, !llvm.loop !3184

._crit_edge92:                                    ; preds = %.lr.ph91, %middle.block192, %.preheader75
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader75 ], [ %i.kr, %middle.block192 ], [ %i.lq, %.lr.ph91 ]
  %.163.lcssa = phi ptr [ %.062.lcssa, %.preheader75 ], [ %i.kp, %middle.block192 ], [ %i.lm, %.lr.ph91 ]
  store ptr %.163.lcssa, ptr %0, align 8, !tbaa !1516
  br label %bb.g

bb.f:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %i.lu = load ptr, ptr %0, align 8, !tbaa !1516  ; 4 uses
  %.not115 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.lv = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.o) ; 2 uses
  %i.lw = zext i32 %i.lv to i64                   ; 2 uses
  %min.iters.check221 = icmp ult i32 %i.lv, 8
  br i1 %min.iters.check221, label %.lr.ph.preheader245, label %vector.ph222

vector.ph222:                                     ; preds = %.lr.ph.preheader
  %n.vec223 = and i64 %i.lw, 4294967288           ; 4 uses
  %i.lx = trunc nuw i64 %n.vec223 to i32
  %i.ly = shl nuw nsw i64 %n.vec223, 2            ; 2 uses
  %i.lz = getelementptr i8, ptr %i.lu, i64 %i.ly  ; 2 uses
  %i.ma = getelementptr i8, ptr %.069110, i64 %i.ly ; 2 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph222
  %index227 = phi i64 [ 0, %vector.ph222 ], [ %index.next234, %vector.body226 ] ; 2 uses
  %i.mb = shl i64 %index227, 2                    ; 2 uses
  %next.gep228 = getelementptr i8, ptr %i.lu, i64 %i.mb ; 2 uses
  %next.gep229 = getelementptr i8, ptr %.069110, i64 %i.mb ; 3 uses
  %i.mc = getelementptr i8, ptr %next.gep228, i64 16
  %wide.load230 = load <4 x i32>, ptr %next.gep228, align 1, !tbaa !278
  %wide.load231 = load <4 x i32>, ptr %i.mc, align 1, !tbaa !278
  %i.md = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load230)
  %i.me = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load231)
  %i.mf = sitofp <4 x i32> %i.md to <4 x float>
  %i.mg = sitofp <4 x i32> %i.me to <4 x float>
  %i.mh = getelementptr i8, ptr %next.gep229, i64 16 ; 2 uses
  %wide.load232 = load <4 x float>, ptr %next.gep229, align 4, !tbaa !304
  %wide.load233 = load <4 x float>, ptr %i.mh, align 4, !tbaa !304
  %i.mi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> %broadcast.splat225, <4 x float> %wide.load232)
  %i.mj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mg, <4 x float> %broadcast.splat225, <4 x float> %wide.load233)
  store <4 x float> %i.mi, ptr %next.gep229, align 4, !tbaa !304
  store <4 x float> %i.mj, ptr %i.mh, align 4, !tbaa !304
  %index.next234 = add nuw i64 %index227, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next234, %n.vec223
  br i1 %i.mk, label %middle.block235, label %vector.body226, !llvm.loop !3185

middle.block235:                                  ; preds = %vector.body226
  %cmp.n236 = icmp eq i64 %n.vec223, %i.lw
  br i1 %cmp.n236, label %._crit_edge, label %.lr.ph.preheader245

.lr.ph.preheader245:                              ; preds = %.lr.ph.preheader, %middle.block235
  %.078.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.lx, %middle.block235 ]
  %.06077.ph = phi ptr [ %i.lu, %.lr.ph.preheader ], [ %i.lz, %middle.block235 ]
  %.576.ph = phi ptr [ %.069110, %.lr.ph.preheader ], [ %i.ma, %middle.block235 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block235, %bb.f
  %.5.lcssa = phi ptr [ %.069110, %bb.f ], [ %i.ma, %middle.block235 ], [ %i.mp, %.lr.ph ]
  %.060.lcssa = phi ptr [ %i.lu, %bb.f ], [ %i.lz, %middle.block235 ], [ %i.ml, %.lr.ph ]
  store ptr %.060.lcssa, ptr %0, align 8, !tbaa !1516
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader245, %.lr.ph
  %.078 = phi i32 [ %i.ms, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader245 ]
  %.06077 = phi ptr [ %i.ml, %.lr.ph ], [ %.06077.ph, %.lr.ph.preheader245 ] ; 2 uses
  %.576 = phi ptr [ %i.mp, %.lr.ph ], [ %.576.ph, %.lr.ph.preheader245 ] ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.06077, i64 4 ; 2 uses
  %i.mm = load i32, ptr %.06077, align 1, !tbaa !278
  %i.mn = tail call noundef i32 @llvm.bswap.i32(i32 %i.mm)
  %i.mo = sitofp i32 %i.mn to float
  %i.mp = getelementptr inbounds nuw i8, ptr %.576, i64 4 ; 2 uses
  %i.mq = load float, ptr %.576, align 4, !tbaa !304
  %i.mr = tail call float @llvm.fmuladd.f32(float %i.mo, float %3, float %i.mq)
  store float %i.mr, ptr %.576, align 4, !tbaa !304
  %i.ms = add nuw i32 %.078, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ms, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3186

bb.g:                                             ; preds = %._crit_edge, %._crit_edge92, %._crit_edge107, %bb.c, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %.6 = phi ptr [ %.069110, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread ], [ %i.r, %bb.c ], [ %.2.lcssa, %._crit_edge107 ], [ %.4.lcssa, %._crit_edge92 ], [ %.5.lcssa, %._crit_edge ]
  %i.mt = sub i32 %i.n, %.sroa.speculated         ; 2 uses
  store i32 %i.mt, ptr %i.a, align 8, !tbaa !1518
  %i.mu = add i32 %.sroa.speculated, %.068111     ; 2 uses
  %i.mv = icmp ult i32 %i.mu, %.sroa.2.8.extract.trunc
  br i1 %i.mv, label %bb.b, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._crit_edge, !llvm.loop !3187

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._crit_edge: ; preds = %bb.g, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !320    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !324
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !267

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !0

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !267

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not50 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not50, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !321
  tail call void @free(ptr noundef %i.m) #63
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !321  ; 3 uses
  br i1 %.not50, label %bb.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #65 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread54, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !322  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.o, i64 %i.v, i1 false), !alias.scope !3191
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.x = shl nuw i32 %.138, 2
  %i.y = zext i32 %i.x to i64
  %i.z = tail call noalias noundef ptr @realloc(ptr noundef %i.w, i64 noundef %i.y) #66 ; 2 uses
  %.not22 = icmp eq ptr %i.z, null
end_hunk_3
begin_hunk_4_@_ZL26hb_ot_get_glyph_h_advancesP9hb_font_tPvjPKjjPijS1_:bb.a
  %i.aq = zext i32 %4 to i64
  %i.ar = zext i32 %6 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph217, %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit
  %.099216 = phi i32 [ 0, %.lr.ph217 ], [ %i.bo, %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ]
  %.1103215 = phi ptr [ %3, %.lr.ph217 ], [ %i.bm, %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ] ; 2 uses
  %.2108214 = phi ptr [ %5, %.lr.ph217 ], [ %i.bn, %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ] ; 2 uses
  %i.as = load i32, ptr %.1103215, align 4, !tbaa !324 ; 2 uses
  %i.at = load i32, ptr %i.i, align 4, !tbaa !1547
  %i.au = icmp ult i32 %i.as, %i.at
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !275
  %i.ay = load i32, ptr %.19.ph.i.i.i, align 8, !tbaa !1546
  %i.az = add i32 %i.ay, -1
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.as, i32 %i.az)
  %i.ba = zext i32 %.sroa.speculated.i to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

bb.l:                                             ; preds = %bb.j
  %i.be = load i32, ptr %i.al, align 8, !tbaa !1554
  %.not.i116 = icmp eq i32 %i.be, 0
  br i1 %.not.i116, label %bb.m, label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit, !prof !267

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.am, align 8, !tbaa !1555
  %i.bg = trunc i32 %i.bf to i16
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.0.i117 = phi i16 [ %i.bd, %bb.k ], [ %i.bg, %bb.m ], [ 0, %bb.l ]
  %i.bh = sext i16 %.0.i117 to i64
  %i.bi = mul nsw i64 %i.ap, %i.bh
  %i.bj = add nsw i64 %i.bi, 32768
  %i.bk = lshr i64 %i.bj, 16
  %i.bl = trunc i64 %i.bk to i32
  store i32 %i.bl, ptr %.2108214, align 4, !tbaa !324
  %i.bm = getelementptr inbounds nuw i8, ptr %.1103215, i64 %i.aq
  %i.bn = getelementptr inbounds nuw i8, ptr %.2108214, i64 %i.ar
  %i.bo = add nuw i32 %.099216, 1                 ; 2 uses
  %exitcond233.not = icmp eq i32 %i.bo, %2
  br i1 %exitcond233.not, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.j, !llvm.loop !3527

bb.n:                                             ; preds = %bb.i
  tail call void @_ZNK12hb_ot_font_t12check_serialEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %0)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i

_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i:   ; preds = %bb.p, %bb.n
  %i.bq = load atomic ptr, ptr %i.bp acquire, align 8 ; 3 uses
  %.not.i118 = icmp eq ptr %i.bq, null
  br i1 %.not.i118, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i
  %calloc.i = tail call dereferenceable_or_null(1024) ptr @calloc(i64 1, i64 1024) ; 10 uses
  %.not11.i = icmp eq ptr %calloc.i, null
  br i1 %.not11.i, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o, %.preheader.i.i
  %.0.idx8.i.i.i = phi i64 [ %.0.add.i.i.i.7, %.preheader.i.i ], [ 0, %bb.o ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  store atomic i32 -1, ptr %.0.ptr.i.i.i monotonic, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store atomic i32 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store atomic i32 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store atomic i32 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store atomic i32 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store atomic i32 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i32 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  store atomic i32 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 4
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 32 ; 2 uses
  %.not.i.i.i119.7 = icmp eq i64 %.0.add.i.i.i.7, 1024
  br i1 %.not.i.i.i119.7, label %.loopexit, label %.preheader.i.i

bb.p:                                             ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i
  %i.by = cmpxchg weak ptr %i.bp, ptr %i.bq, ptr null acq_rel monotonic, align 8
  %i.bz = extractvalue { ptr, i1 } %i.by, 1
  br i1 %i.bz, label %.loopexit, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i

.loopexit:                                        ; preds = %bb.p, %.preheader.i.i
  %.1.ph.i.ph = phi ptr [ %calloc.i, %.preheader.i.i ], [ %i.bq, %bb.p ] ; 11 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.cb, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i120, ptr @_hb_NullPool, ptr %i.cb ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !275
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !276
  %i.cg = icmp ult i32 %i.cf, 20
  %spec.select.i.i1.i.i = select i1 %i.cg, ptr @_hb_NullPool, ptr %i.cd ; 3 uses
  %i.ch = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %.not196 = icmp eq i16 %i.ch, 0
  br i1 %.not196, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !278 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.cm
  %.0.i.i = select i1 %i.ck, ptr @_hb_NullPool, ptr %i.cn, !prof !267 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i: ; preds = %bb.u, %bb.q
  %i.cp = load atomic ptr, ptr %i.co acquire, align 8 ; 3 uses
  %.not.i121 = icmp eq ptr %i.cp, null
  br i1 %.not.i121, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !278 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.cr)
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cu
  %.0.i.i.i.i = select i1 %i.cs, ptr @_hb_NullPool, ptr %i.cv, !prof !267
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.cx = load i16, ptr %i.cw, align 1, !tbaa !283 ; 2 uses
  %i.cy = tail call noundef i16 @llvm.bswap.i16(i16 %i.cx) ; 3 uses
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %.not.i.i.i123 = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i.i123, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = zext i16 %i.cy to i64                   ; 5 uses
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 4
  %i.dd = tail call noalias noundef ptr @malloc(i64 noundef %i.dc) #65 ; 6 uses
  %.not16.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not16.i.i.i, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  store i32 %i.cz, ptr %i.dd, align 4, !tbaa !480
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 12 uses
  %i.df = icmp ugt i16 %i.cy, 3
  br i1 %i.df, label %.lr.ph.i25.i.i.i.preheader, label %.preheader.i17.i.i.i

.lr.ph.i25.i.i.i.preheader:                       ; preds = %bb.t
  %i.dg = add nsw i64 %i.da, -4                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 2                       ; 2 uses
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = icmp eq i64 %i.dh, 0
  br i1 %i.dj, label %.lr.ph.i25.i.i.i.epil.preheader, label %.lr.ph.i25.i.i.i.preheader.new

.lr.ph.i25.i.i.i.preheader.new:                   ; preds = %.lr.ph.i25.i.i.i.preheader
  %unroll_iter = and i64 %i.di, 9223372036854775806
  br label %.lr.ph.i25.i.i.i

.preheader.i17.i.loopexit.i.i.unr-lcssa:          ; preds = %.lr.ph.i25.i.i.i
  %i.dk = and i64 %i.dg, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i.i

.lr.ph.i25.i.i.i.epil.preheader:                  ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader ], [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod287 = trunc i64 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store atomic i32 -2147483648, ptr %i.dm monotonic, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store atomic i32 -2147483648, ptr %i.dn monotonic, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store atomic i32 -2147483648, ptr %i.do monotonic, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i.i

.preheader.i17.i.loopexit.i.i:                    ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i25.i.i.i.epil.preheader ]
  %i.dp = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i17.i.i.i

.preheader.i17.i.i.i:                             ; preds = %.preheader.i17.i.loopexit.i.i, %bb.t
  %.0.lcssa.i18.i.i.i = phi i32 [ 0, %bb.t ], [ %i.dp, %.preheader.i17.i.loopexit.i.i ] ; 2 uses
  %i.dq = icmp ult i32 %.0.lcssa.i18.i.i.i, %i.cz
  br i1 %i.dq, label %.lr.ph18.preheader.i19.i.i.i, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit

.lr.ph18.preheader.i19.i.i.i:                     ; preds = %.preheader.i17.i.i.i
  %i.dr = zext i32 %.0.lcssa.i18.i.i.i to i64     ; 4 uses
  %i.ds = sub nsw i64 %i.da, %i.dr
  %xtraiter288 = and i64 %i.ds, 7                 ; 2 uses
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol

.lr.ph18.i21.i.i.i.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i.i, %.lr.ph18.i21.i.i.i.prol
  %indvars.iv.i22.i.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ], [ %i.dr, %.lr.ph18.preheader.i19.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i.prol
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %indvars.iv.next.i23.i.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter288
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol, !llvm.loop !3528

.lr.ph18.i21.i.i.i.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i.i.prol, %.lr.ph18.preheader.i19.i.i.i
  %indvars.iv.i22.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph18.preheader.i19.i.i.i ], [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ]
  %i.du = sub nsw i64 %i.dr, %i.da
  %i.dv = icmp ugt i64 %i.du, -8
  br i1 %i.dv, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %.lr.ph.i25.i.i.i, %.lr.ph.i25.i.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i25.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i.i ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.dw monotonic, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store atomic i32 -2147483648, ptr %i.dy monotonic, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store atomic i32 -2147483648, ptr %i.dz monotonic, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store atomic i32 -2147483648, ptr %i.eb monotonic, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store atomic i32 -2147483648, ptr %i.ec monotonic, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store atomic i32 -2147483648, ptr %i.ed monotonic, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  store atomic i32 -2147483648, ptr %i.ee monotonic, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i25.i.i.i, !llvm.loop !5

.lr.ph18.i21.i.i.i:                               ; preds = %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i
  %indvars.iv.i22.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.7, %.lr.ph18.i21.i.i.i ], [ %indvars.iv.i22.i.i.i.unr, %.lr.ph18.i21.i.i.i.prol.loopexit ] ; 9 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store atomic i32 -2147483648, ptr %i.eh monotonic, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store atomic i32 -2147483648, ptr %i.ej monotonic, align 4
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store atomic i32 -2147483648, ptr %i.el monotonic, align 4
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store atomic i32 -2147483648, ptr %i.en monotonic, align 4
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  store atomic i32 -2147483648, ptr %i.ep monotonic, align 4
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store atomic i32 -2147483648, ptr %i.er monotonic, align 4
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i22.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  store atomic i32 -2147483648, ptr %i.et monotonic, align 4
  %indvars.iv.next.i23.i.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i.7, %i.da
  br i1 %exitcond.not.i24.i.i.i.7, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i, !llvm.loop !6

bb.u:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.eu = cmpxchg weak ptr %i.co, ptr %i.cp, ptr null acq_rel monotonic, align 8
  %i.ev = extractvalue { ptr, i1 } %i.eu, 1
  br i1 %i.ev, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit: ; preds = %bb.u, %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i, %bb.r, %bb.s, %.preheader.i17.i.i.i
  %.1.ph.i122 = phi ptr [ @_hb_NullPool, %bb.r ], [ %i.dd, %.lr.ph18.i21.i.i.i.prol.loopexit ], [ %i.dd, %.preheader.i17.i.i.i ], [ @_hb_NullPool, %bb.s ], [ %i.dd, %.lr.ph18.i21.i.i.i ], [ %i.cp, %bb.u ] ; 4 uses
  %.not221 = icmp eq i32 %2, 0
  br i1 %.not221, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ex = zext i32 %4 to i64
  %i.ey = zext i32 %6 to i64
  br label %bb.x

.critedge:                                        ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.ez = cmpxchg weak ptr %i.co, ptr null, ptr %.1.ph.i122 acq_rel monotonic, align 8
  %i.fa = extractvalue { ptr, i1 } %i.ez, 1
  %.not.i.i.i125 = icmp eq ptr %.1.ph.i122, @_hb_NullPool
  %or.cond.i = or i1 %.not.i.i.i125, %i.fa
  br i1 %or.cond.i, label %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %.1.ph.i122) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %bb.v, %.critedge
  %i.fb = cmpxchg weak ptr %i.bp, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.fc = extractvalue { ptr, i1 } %i.fb, 1
  br i1 %i.fc, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit
  tail call void @free(ptr noundef nonnull %.1.ph.i.ph) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit

bb.x:                                             ; preds = %.lr.ph, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit
  %.098209 = phi i32 [ 0, %.lr.ph ], [ %i.gf, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ]
  %.2104208 = phi ptr [ %3, %.lr.ph ], [ %i.gd, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ] ; 3 uses
  %.3109207 = phi ptr [ %5, %.lr.ph ], [ %i.ge, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ] ; 2 uses
  %i.fd = load i32, ptr %.2104208, align 4, !tbaa !324 ; 3 uses
  %i.fe = and i32 %i.fd, 255
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.ff
  %i.fh = load atomic i32, ptr %i.fg monotonic, align 4 ; 3 uses
  %i.fi = icmp eq i32 %i.fh, -1
  br i1 %i.fi, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = lshr i32 %i.fh, 16
  %i.fk = lshr i32 %i.fd, 8
  %.not.i127 = icmp eq i32 %i.fj, %i.fk
  br i1 %.not.i127, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fl = tail call noundef i32 @_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(40) %.19.ph.i.i.i, i32 noundef %i.fd, ptr noundef nonnull %0, ptr noundef nonnull %.1.ph.i122) ; 4 uses
  %i.fm = load i32, ptr %.2104208, align 4, !tbaa !324 ; 3 uses
  %i.fn = icmp ugt i32 %i.fm, 16777215
  %i.fo = icmp ugt i32 %i.fl, 65535
  %i.fp = or i1 %i.fo, %i.fn
  br i1 %i.fp, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, label %bb.aa, !prof !267

bb.aa:                                            ; preds = %bb.z
  %i.fq = and i32 %i.fm, 255
  %i.fr = shl nuw i32 %i.fm, 8
  %i.fs = and i32 %i.fr, -65536
  %i.ft = or disjoint i32 %i.fs, %i.fl
  %i.fu = zext nneg i32 %i.fq to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.fu
  store atomic i32 %i.ft, ptr %i.fv monotonic, align 4
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit

_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit:  ; preds = %bb.y, %bb.aa, %bb.z
  %.097 = phi i32 [ %i.fl, %bb.aa ], [ %i.fl, %bb.z ], [ %i.fh, %bb.y ]
  %i.fw = zext i32 %.097 to i64
  %i.fx = load i64, ptr %i.ew, align 8, !tbaa !1048
  %sext199 = shl i64 %i.fw, 48
  %i.fy = ashr exact i64 %sext199, 48
  %i.fz = mul nsw i64 %i.fy, %i.fx
  %i.ga = add nsw i64 %i.fz, 32768
  %i.gb = lshr i64 %i.ga, 16
  %i.gc = trunc i64 %i.gb to i32
  store i32 %i.gc, ptr %.3109207, align 4, !tbaa !324
  %i.gd = getelementptr inbounds nuw i8, ptr %.2104208, i64 %i.ex
  %i.ge = getelementptr inbounds nuw i8, ptr %.3109207, i64 %i.ey
  %i.gf = add nuw i32 %.098209, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.gf, %2
  br i1 %exitcond.not, label %.critedge, label %bb.x, !llvm.loop !3529

bb.ab:                                            ; preds = %.loopexit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 5 uses
  %i.gh = load atomic ptr, ptr %i.gg acquire, align 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not20.i.i.i, label %.lr.ph.i.i.i130, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i130:                                  ; preds = %bb.ab, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i131 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i131, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ac, !prof !267

bb.ac:                                            ; preds = %.lr.ph.i.i.i130
  %i.gj = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj21EE11call_createIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS4_Lj21EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.gg) ; 5 uses
  %.not10.i.i.i132 = icmp eq ptr %i.gj, null
  br i1 %.not10.i.i.i132, label %.thread.i.i.i, label %bb.ad, !prof !267

bb.ad:                                            ; preds = %bb.ac
  %i.gk = cmpxchg weak ptr %i.gg, ptr null, ptr %i.gj acq_rel monotonic, align 8
  %i.gl = extractvalue { ptr, i1 } %i.gk, 1
  br i1 %i.gl, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ae, !prof !268

.thread.i.i.i:                                    ; preds = %bb.ac
  %i.gm = cmpxchg weak ptr %i.gg, ptr null, ptr @_hb_NullPool acq_rel monotonic, align 8
  %i.gn = extractvalue { ptr, i1 } %i.gm, 1
  br i1 %i.gn, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, !prof !268

bb.ae:                                            ; preds = %bb.ad
  %.not3.i.i.i.i = icmp eq ptr %i.gj, @_hb_NullPool
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E7destroyEPS1_(ptr noundef nonnull %i.gj)
  br label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i

_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i: ; preds = %bb.af, %bb.ae, %.thread.i.i.i
  %i.go = load atomic ptr, ptr %i.gg acquire, align 8 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i133, label %.lr.ph.i.i.i130, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i130, %bb.ad, %.thread.i.i.i, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, %bb.ab
  %.19.ph.i.i.i129 = phi ptr [ %i.gh, %bb.ab ], [ @_hb_NullPool, %.lr.ph.i.i.i130 ], [ %i.go, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i ], [ @_hb_NullPool, %.thread.i.i.i ], [ %i.gj, %bb.ad ] ; 2 uses
  %i.gp = load ptr, ptr %.19.ph.i.i.i129, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.gp, null
  %spec.select.i.i.i.i.i135 = select i1 %.not.i.i.i.i.i134, ptr @_hb_NullPool, ptr %i.gp ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i135, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !275
  %i.gs = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i135, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !276
  %i.gu = icmp ult i32 %i.gt, 20
  %spec.select.i.i1.i.i.i = select i1 %i.gu, ptr @_hb_NullPool, ptr %i.gr
  %i.gv = load i32, ptr %spec.select.i.i1.i.i.i, align 1
  %.not197 = icmp eq i32 %i.gv, 0
  br i1 %.not197, label %bb.bf, label %bb.ag

bb.ag:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.gx = load atomic ptr, ptr %i.gw acquire, align 8 ; 2 uses
  %.not14.i.i.i136 = icmp eq ptr %i.gx, null
  br i1 %.not14.i.i.i136, label %.lr.ph.i.i.i138, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i138:                                  ; preds = %bb.ag, %bb.ak
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i139 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i139, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ah, !prof !267

bb.ah:                                            ; preds = %.lr.ph.i.i.i138
  %i.gz = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj15EE11call_createIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS4_Lj15EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.gw) ; 2 uses
  %.not10.i.i.i140 = icmp eq ptr %i.gz, null
  br i1 %.not10.i.i.i140, label %bb.ai, label %bb.aj, !prof !267

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.07.i.i.i141 = phi ptr [ @_hb_NullPool, %bb.ai ], [ %i.gz, %bb.ah ] ; 3 uses
  %i.ha = cmpxchg weak ptr %i.gw, ptr null, ptr %.07.i.i.i141 acq_rel monotonic, align 8
  %i.hb = extractvalue { ptr, i1 } %i.ha, 1
  br i1 %i.hb, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ak, !prof !268

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i141)
  %i.hc = load atomic ptr, ptr %i.gw acquire, align 8 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i142, label %.lr.ph.i.i.i138, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i138, %bb.aj, %bb.ak, %bb.ag
  %.19.ph.i.i.i137 = phi ptr [ %i.gx, %bb.ag ], [ @_hb_NullPool, %.lr.ph.i.i.i138 ], [ %i.hc, %bb.ak ], [ %.07.i.i.i141, %bb.aj ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i137, i64 28 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !348
  %.not9.i = icmp eq i32 %i.he, 0
  br i1 %.not9.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i137, i64 48 ; 3 uses
  %i.hg = load atomic ptr, ptr %i.hf acquire, align 8 ; 3 uses
  %.not.i143 = icmp eq ptr %i.hg, null
  br i1 %.not.i143, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = cmpxchg weak ptr %i.hf, ptr %i.hg, ptr null acq_rel monotonic, align 8
  %i.hi = extractvalue { ptr, i1 } %i.hh, 1
  br i1 %i.hi, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread187, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, !prof !268

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit: ; preds = %bb.al, %bb.am
  %i.hj = tail call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not115 = icmp eq ptr %i.hj, null
  br i1 %.not115, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread187, !prof !318

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %i.hk = cmpxchg weak ptr %i.bp, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.hl = extractvalue { ptr, i1 } %i.hk, 1
  br i1 %i.hl, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread.sink.split

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread187: ; preds = %bb.am, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %.1.i190 = phi ptr [ %i.hj, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit ], [ %i.hg, %bb.am ] ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i: ; preds = %bb.aq, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread187
  %i.hn = load atomic ptr, ptr %i.hm acquire, align 8 ; 3 uses
  %.not.i146 = icmp eq ptr %i.hn, null
  br i1 %.not.i146, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.ho = load ptr, ptr %.19.ph.i.i.i129, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ho, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.ho ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !275
  %i.hr = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !276
  %i.ht = icmp ult i32 %i.hs, 20
  %spec.select.i.i1.i.i.i.i = select i1 %i.ht, ptr @_hb_NullPool, ptr %i.hq
  %i.hu = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.hv = load i16, ptr %i.hu, align 1, !tbaa !283 ; 2 uses
  %i.hw = tail call noundef i16 @llvm.bswap.i16(i16 %i.hv) ; 2 uses
  %i.hx = tail call i16 @llvm.umin.i16(i16 %i.hw, i16 4096) ; 2 uses
  %.sroa.speculated.i.i = zext nneg i16 %i.hx to i32 ; 2 uses
  %.not.i1.i.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i1.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hy = zext nneg i16 %i.hx to i64              ; 5 uses
  %i.hz = shl nuw nsw i64 %i.hy, 2
  %i.ia = add nuw nsw i64 %i.hz, 4
  %i.ib = tail call noalias noundef ptr @malloc(i64 noundef %i.ia) #65 ; 6 uses
  %.not16.i.i.i148 = icmp eq ptr %i.ib, null
  br i1 %.not16.i.i.i148, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.ap, !prof !267

bb.ap:                                            ; preds = %bb.ao
  store i32 %.sroa.speculated.i.i, ptr %i.ib, align 4, !tbaa !480
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4 ; 10 uses
  %i.id = icmp ugt i16 %i.hw, 3
  br i1 %i.id, label %.lr.ph.i25.i.i.i156, label %.preheader.i17.i.i.i149

.preheader.i17.i.loopexit.i.i159:                 ; preds = %.lr.ph.i25.i.i.i156
  %i.ie = trunc nuw nsw i64 %indvars.iv.next.i.i158 to i32
  br label %.preheader.i17.i.i.i149

.preheader.i17.i.i.i149:                          ; preds = %.preheader.i17.i.loopexit.i.i159, %bb.ap
  %.0.lcssa.i18.i.i.i150 = phi i32 [ 0, %bb.ap ], [ %i.ie, %.preheader.i17.i.loopexit.i.i159 ] ; 2 uses
  %i.if = icmp ult i32 %.0.lcssa.i18.i.i.i150, %.sroa.speculated.i.i
  br i1 %i.if, label %.lr.ph18.preheader.i19.i.i.i151, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

.lr.ph18.preheader.i19.i.i.i151:                  ; preds = %.preheader.i17.i.i.i149
  %i.ig = zext i32 %.0.lcssa.i18.i.i.i150 to i64  ; 4 uses
  %i.ih = sub nsw i64 %i.hy, %i.ig
  %xtraiter290 = and i64 %i.ih, 7                 ; 2 uses
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.lr.ph18.i21.i.i.i152.prol.loopexit, label %.lr.ph18.i21.i.i.i152.prol

.lr.ph18.i21.i.i.i152.prol:                       ; preds = %.lr.ph18.preheader.i19.i.i.i151, %.lr.ph18.i21.i.i.i152.prol
  %indvars.iv.i22.i.i.i153.prol = phi i64 [ %indvars.iv.next.i23.i.i.i154.prol, %.lr.ph18.i21.i.i.i152.prol ], [ %i.ig, %.lr.ph18.preheader.i19.i.i.i151 ] ; 2 uses
  %prol.iter292 = phi i64 [ %prol.iter292.next, %.lr.ph18.i21.i.i.i152.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i151 ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153.prol
  store atomic i32 -2147483648, ptr %i.ii monotonic, align 4
  %indvars.iv.next.i23.i.i.i154.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i153.prol, 1 ; 2 uses
  %prol.iter292.next = add i64 %prol.iter292, 1   ; 2 uses
  %prol.iter292.cmp.not = icmp eq i64 %prol.iter292.next, %xtraiter290
  br i1 %prol.iter292.cmp.not, label %.lr.ph18.i21.i.i.i152.prol.loopexit, label %.lr.ph18.i21.i.i.i152.prol, !llvm.loop !3530

.lr.ph18.i21.i.i.i152.prol.loopexit:              ; preds = %.lr.ph18.i21.i.i.i152.prol, %.lr.ph18.preheader.i19.i.i.i151
  %indvars.iv.i22.i.i.i153.unr = phi i64 [ %i.ig, %.lr.ph18.preheader.i19.i.i.i151 ], [ %indvars.iv.next.i23.i.i.i154.prol, %.lr.ph18.i21.i.i.i152.prol ]
  %i.ij = sub nsw i64 %i.ig, %i.hy
  %i.ik = icmp ugt i64 %i.ij, -8
  br i1 %i.ik, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i152

.lr.ph.i25.i.i.i156:                              ; preds = %bb.ap, %.lr.ph.i25.i.i.i156
  %indvars.iv.i.i157 = phi i64 [ %indvars.iv.next.i.i158, %.lr.ph.i25.i.i.i156 ], [ 0, %bb.ap ] ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i.i157 ; 4 uses
  store atomic i32 -2147483648, ptr %i.il monotonic, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store atomic i32 -2147483648, ptr %i.im monotonic, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store atomic i32 -2147483648, ptr %i.in monotonic, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  store atomic i32 -2147483648, ptr %i.io monotonic, align 4
  %indvars.iv.next.i.i158 = add nuw nsw i64 %indvars.iv.i.i157, 4 ; 2 uses
  %10 = add nuw nsw i64 %indvars.iv.i.i157, 7
  %i.ip = icmp samesign ult i64 %10, %i.hy
  br i1 %i.ip, label %.lr.ph.i25.i.i.i156, label %.preheader.i17.i.loopexit.i.i159, !llvm.loop !5

.lr.ph18.i21.i.i.i152:                            ; preds = %.lr.ph18.i21.i.i.i152.prol.loopexit, %.lr.ph18.i21.i.i.i152
  %indvars.iv.i22.i.i.i153 = phi i64 [ %indvars.iv.next.i23.i.i.i154.7, %.lr.ph18.i21.i.i.i152 ], [ %indvars.iv.i22.i.i.i153.unr, %.lr.ph18.i21.i.i.i152.prol.loopexit ] ; 9 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  store atomic i32 -2147483648, ptr %i.iq monotonic, align 4
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store atomic i32 -2147483648, ptr %i.is monotonic, align 4
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store atomic i32 -2147483648, ptr %i.iu monotonic, align 4
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store atomic i32 -2147483648, ptr %i.iw monotonic, align 4
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store atomic i32 -2147483648, ptr %i.iy monotonic, align 4
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 20
  store atomic i32 -2147483648, ptr %i.ja monotonic, align 4
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  store atomic i32 -2147483648, ptr %i.jc monotonic, align 4
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.i22.i.i.i153
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 28
  store atomic i32 -2147483648, ptr %i.je monotonic, align 4
  %indvars.iv.next.i23.i.i.i154.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i153, 8 ; 2 uses
  %exitcond.not.i24.i.i.i155.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i154.7, %i.hy
  br i1 %exitcond.not.i24.i.i.i155.7, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i152, !llvm.loop !6

bb.aq:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.jf = cmpxchg weak ptr %i.hm, ptr %i.hn, ptr null acq_rel monotonic, align 8
  %i.jg = extractvalue { ptr, i1 } %i.jf, 1
  br i1 %i.jg, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit: ; preds = %bb.aq, %.lr.ph18.i21.i.i.i152.prol.loopexit, %.lr.ph18.i21.i.i.i152, %bb.an, %bb.ao, %.preheader.i17.i.i.i149
  %.1.ph.i147 = phi ptr [ @_hb_NullPool, %bb.an ], [ %i.ib, %.lr.ph18.i21.i.i.i152.prol.loopexit ], [ %i.ib, %.preheader.i17.i.i.i149 ], [ @_hb_NullPool, %bb.ao ], [ %i.ib, %.lr.ph18.i21.i.i.i152 ], [ %i.hn, %bb.aq ] ; 4 uses
  %.not222 = icmp eq i32 %2, 0
  br i1 %.not222, label %._crit_edge, label %.lr.ph213

.lr.ph213:                                        ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jk = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jo = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jq = zext i32 %4 to i64
  %i.jr = zext i32 %6 to i64
  br label %bb.au

._crit_edge:                                      ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.js = cmpxchg weak ptr %i.hm, ptr null, ptr %.1.ph.i147 acq_rel monotonic, align 8
  %i.jt = extractvalue { ptr, i1 } %i.js, 1
  %.not.i.i.i161 = icmp eq ptr %.1.ph.i147, @_hb_NullPool
  %or.cond.i162 = or i1 %.not.i.i.i161, %i.jt
  br i1 %or.cond.i162, label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %.1.ph.i147) #63
  br label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %bb.ar, %._crit_edge
  %i.ju = cmpxchg weak ptr %i.hf, ptr null, ptr %.1.i190 acq_rel monotonic, align 8
  %i.jv = extractvalue { ptr, i1 } %i.ju, 1
  br i1 %i.jv, label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, label %bb.as

bb.as:                                            ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  call void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.1.i190) #63
  call void @free(ptr noundef nonnull %.1.i190) #63
  br label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit

_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit: ; preds = %bb.as, %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  %i.jw = cmpxchg weak ptr %i.bp, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.jx = extractvalue { ptr, i1 } %i.jw, 1
  br i1 %i.jx, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit
  call void @free(ptr noundef nonnull %.1.ph.i.ph) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit

bb.au:                                            ; preds = %.lr.ph213, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174
  %.096212 = phi i32 [ 0, %.lr.ph213 ], [ %i.lu, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174 ]
  %.3105211 = phi ptr [ %3, %.lr.ph213 ], [ %i.ls, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174 ] ; 3 uses
  %.4110210 = phi ptr [ %5, %.lr.ph213 ], [ %i.lt, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174 ] ; 2 uses
  %i.jy = load i32, ptr %.3105211, align 4, !tbaa !324 ; 5 uses
  %i.jz = and i32 %i.jy, 255
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.ka
  %i.kc = load atomic i32, ptr %i.kb monotonic, align 4 ; 3 uses
  %i.kd = icmp eq i32 %i.kc, -1
  br i1 %i.kd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ke = lshr i32 %i.kc, 16
  %i.kf = lshr i32 %i.jy, 8
  %.not.i166 = icmp eq i32 %i.ke, %i.kf
  br i1 %.not.i166, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.kg = load i32, ptr %i.hd, align 4, !tbaa !348
  %.not.i169 = icmp ult i32 %i.jy, %i.kg
  br i1 %.not.i169, label %bb.ax, label %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.jh, align 4, !tbaa !304
  store ptr %0, ptr %9, align 8, !tbaa !470
  store ptr null, ptr %i.ji, align 8, !tbaa !471
  store ptr %8, ptr %i.jj, align 8, !tbaa !472
  store i8 0, ptr %i.jk, align 8, !tbaa !473
  %i.kh = load ptr, ptr %i.jl, align 8, !tbaa !309
  %i.ki = load i8, ptr %i.ai, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kk = load i32, ptr %i.jm, align 4, !tbaa !310
  %i.kl = zext i32 %i.kk to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.2.8.insert.ext.i.i = phi i64 [ %i.kl, %bb.ay ], [ 0, %bb.ax ]
  %i.km = call noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS0_19points_aggregator_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %.19.ph.i.i.i137, ptr noundef nonnull %0, i32 noundef %i.jy, ptr noundef nonnull byval(%"struct.OT::glyf_accelerator_t::points_aggregator_t") align 8 %9, ptr %i.kh, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.1.i190, ptr noundef nonnull %.1.ph.i147)
  br i1 %i.km, label %bb.bc, label %bb.ba, !prof !268

bb.ba:                                            ; preds = %bb.az
  %i.kn = load ptr, ptr %i.jn, align 8, !tbaa !264 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  %i.kp = load atomic i32, ptr %i.ko monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i, label %bb.bb, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.bb:                                            ; preds = %bb.ba
  %i.kq = call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.kn)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.bb, %bb.ba
  %.0.i.i171 = phi i32 [ %i.kq, %bb.bb ], [ %i.kp, %bb.ba ]
  %i.kr = lshr i32 %.0.i.i171, 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.ks = load float, ptr %i.jo, align 4, !tbaa !1558
  %i.kt = load float, ptr %8, align 16, !tbaa !1558
  %i.ku = fsub float %i.ks, %i.kt
  %i.kv = fadd float %i.ku, 5.000000e-01
  %i.kw = call noundef float @llvm.floor.f32(float %i.kv) ; 2 uses
  %i.kx = fcmp oge float %i.kw, 0.000000e+00
  %i.ky = select i1 %i.kx, float %i.kw, float 0.000000e+00 ; 2 uses
  %i.kz = fcmp ole float %i.ky, f0x4F000000
  %.sroa.speculated.i173 = select i1 %i.kz, float %i.ky, float f0x4F000000
  %i.la = fptoui float %.sroa.speculated.i173 to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZNK9hb_face_t8get_upemEv.exit.i
  %.0.i172 = phi i32 [ %i.kr, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ %i.la, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  %.pre = load i32, ptr %.3105211, align 4, !tbaa !324
  br label %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.aw, %bb.bd
  %i.lb = phi i32 [ %.pre, %bb.bd ], [ %i.jy, %bb.aw ] ; 3 uses
  %.1.i170 = phi i32 [ %.0.i172, %bb.bd ], [ 0, %bb.aw ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.lc = icmp ugt i32 %i.lb, 16777215
  %i.ld = icmp ugt i32 %.1.i170, 65535
  %i.le = or i1 %i.ld, %i.lc
  br i1 %i.le, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174, label %bb.be, !prof !267

bb.be:                                            ; preds = %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit
  %i.lf = and i32 %i.lb, 255
  %i.lg = shl nuw i32 %i.lb, 8
  %i.lh = and i32 %i.lg, -65536
  %i.li = or disjoint i32 %i.lh, %.1.i170
  %i.lj = zext nneg i32 %i.lf to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.lj
  store atomic i32 %i.li, ptr %i.lk monotonic, align 4
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174

_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit174: ; preds = %bb.av, %bb.be, %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit
  %.0 = phi i32 [ %.1.i170, %bb.be ], [ %.1.i170, %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit ], [ %i.kc, %bb.av ]
  %i.ll = zext i32 %.0 to i64
  %i.lm = load i64, ptr %i.jp, align 8, !tbaa !1048
  %sext198 = shl i64 %i.ll, 48
  %i.ln = ashr exact i64 %sext198, 48
  %i.lo = mul nsw i64 %i.ln, %i.lm
  %i.lp = add nsw i64 %i.lo, 32768
  %i.lq = lshr i64 %i.lp, 16
  %i.lr = trunc i64 %i.lq to i32
  store i32 %i.lr, ptr %.4110210, align 4, !tbaa !324
  %i.ls = getelementptr inbounds nuw i8, ptr %.3105211, i64 %i.jq
  %i.lt = getelementptr inbounds nuw i8, ptr %.4110210, i64 %i.jr
  %i.lu = add nuw i32 %.096212, 1                 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZL26hb_ot_get_glyph_v_advancesP9hb_font_tPvjPKjjPijS1_:bb.a
  %i.ai = zext i32 %6 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph211, %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit
  %.097210 = phi i32 [ 0, %.lr.ph211 ], [ %i.bg, %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ]
  %.1101209 = phi ptr [ %3, %.lr.ph211 ], [ %i.be, %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ] ; 2 uses
  %.2106208 = phi ptr [ %5, %.lr.ph211 ], [ %i.bf, %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ] ; 2 uses
  %i.aj = load i32, ptr %.1101209, align 4, !tbaa !324 ; 2 uses
  %i.ak = load i32, ptr %i.i, align 4, !tbaa !1553
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.am
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !275
  %i.ap = load i32, ptr %.19.ph.i.i.i, align 8, !tbaa !1552
  %i.aq = add i32 %i.ap, -1
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.aq)
  %i.ar = zext i32 %.sroa.speculated.i to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 1, !tbaa !283
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  br label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !1556
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.m, label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit, !prof !267

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.ad, align 8, !tbaa !1557
  %i.ax = trunc i32 %i.aw to i16
  br label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.0.i = phi i16 [ %i.au, %bb.k ], [ %i.ax, %bb.m ], [ 0, %bb.l ]
  %i.ay = sub i16 0, %.0.i
  %i.az = sext i16 %i.ay to i64
  %i.ba = mul nsw i64 %i.ag, %i.az
  %i.bb = add nsw i64 %i.ba, 32768
  %i.bc = lshr i64 %i.bb, 16
  %i.bd = trunc i64 %i.bc to i32
  store i32 %i.bd, ptr %.2106208, align 4, !tbaa !324
  %i.be = getelementptr inbounds nuw i8, ptr %.1101209, i64 %i.ah
  %i.bf = getelementptr inbounds nuw i8, ptr %.2106208, i64 %i.ai
  %i.bg = add nuw i32 %.097210, 1                 ; 2 uses
  %exitcond228.not = icmp eq i32 %i.bg, %2
  br i1 %exitcond228.not, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.j, !llvm.loop !3535

bb.n:                                             ; preds = %bb.i
  tail call void @_ZNK12hb_ot_font_t12check_serialEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %0)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i

_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i:   ; preds = %bb.p, %bb.n
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8 ; 3 uses
  %.not.i114 = icmp eq ptr %i.bi, null
  br i1 %.not.i114, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i
  %calloc.i = tail call dereferenceable_or_null(1024) ptr @calloc(i64 1, i64 1024) ; 10 uses
  %.not11.i = icmp eq ptr %calloc.i, null
  br i1 %.not11.i, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o, %.preheader.i.i
  %.0.idx8.i.i.i = phi i64 [ %.0.add.i.i.i.7, %.preheader.i.i ], [ 0, %bb.o ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  store atomic i32 -1, ptr %.0.ptr.i.i.i monotonic, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store atomic i32 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store atomic i32 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store atomic i32 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store atomic i32 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store atomic i32 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store atomic i32 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  store atomic i32 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 4
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 32 ; 2 uses
  %.not.i.i.i115.7 = icmp eq i64 %.0.add.i.i.i.7, 1024
  br i1 %.not.i.i.i115.7, label %.loopexit, label %.preheader.i.i

bb.p:                                             ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i
  %i.bq = cmpxchg weak ptr %i.bh, ptr %i.bi, ptr null acq_rel monotonic, align 8
  %i.br = extractvalue { ptr, i1 } %i.bq, 1
  br i1 %i.br, label %.loopexit, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EEC2Ev.exit.i

.loopexit:                                        ; preds = %bb.p, %.preheader.i.i
  %.1.ph.i.ph = phi ptr [ %calloc.i, %.preheader.i.i ], [ %i.bi, %bb.p ] ; 11 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.bt, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i116, ptr @_hb_NullPool, ptr %i.bt ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !275
  %i.bw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !276
  %i.by = icmp ult i32 %i.bx, 24
  %spec.select.i.i1.i.i = select i1 %i.by, ptr @_hb_NullPool, ptr %i.bv ; 3 uses
  %i.bz = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %.not192 = icmp eq i16 %i.bz, 0
  br i1 %.not192, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.ca = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !278 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cb)
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.ce
  %.0.i.i = select i1 %i.cc, ptr @_hb_NullPool, ptr %i.cf, !prof !267 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i: ; preds = %bb.u, %bb.q
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 3 uses
  %.not.i117 = icmp eq ptr %i.ch, null
  br i1 %.not.i117, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !278 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cm
  %.0.i.i.i.i = select i1 %i.ck, ptr @_hb_NullPool, ptr %i.cn, !prof !267
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !283 ; 2 uses
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp) ; 3 uses
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %.not.i.i.i119 = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i.i119, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = zext i16 %i.cq to i64                   ; 5 uses
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 4
  %i.cv = tail call noalias noundef ptr @malloc(i64 noundef %i.cu) #65 ; 6 uses
  %.not16.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not16.i.i.i, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !480
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 12 uses
  %i.cx = icmp ugt i16 %i.cq, 3
  br i1 %i.cx, label %.lr.ph.i25.i.i.i.preheader, label %.preheader.i17.i.i.i

.lr.ph.i25.i.i.i.preheader:                       ; preds = %bb.t
  %i.cy = add nsw i64 %i.cs, -4                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 2                       ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = icmp eq i64 %i.cz, 0
  br i1 %i.db, label %.lr.ph.i25.i.i.i.epil.preheader, label %.lr.ph.i25.i.i.i.preheader.new

.lr.ph.i25.i.i.i.preheader.new:                   ; preds = %.lr.ph.i25.i.i.i.preheader
  %unroll_iter = and i64 %i.da, 9223372036854775806
  br label %.lr.ph.i25.i.i.i

.preheader.i17.i.loopexit.i.i.unr-lcssa:          ; preds = %.lr.ph.i25.i.i.i
  %i.dc = and i64 %i.cy, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i.i

.lr.ph.i25.i.i.i.epil.preheader:                  ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader ], [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod278 = trunc i64 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod278)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.dd monotonic, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store atomic i32 -2147483648, ptr %i.de monotonic, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store atomic i32 -2147483648, ptr %i.df monotonic, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store atomic i32 -2147483648, ptr %i.dg monotonic, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i.i

.preheader.i17.i.loopexit.i.i:                    ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i25.i.i.i.epil.preheader ]
  %i.dh = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i17.i.i.i

.preheader.i17.i.i.i:                             ; preds = %.preheader.i17.i.loopexit.i.i, %bb.t
  %.0.lcssa.i18.i.i.i = phi i32 [ 0, %bb.t ], [ %i.dh, %.preheader.i17.i.loopexit.i.i ] ; 2 uses
  %i.di = icmp ult i32 %.0.lcssa.i18.i.i.i, %i.cr
  br i1 %i.di, label %.lr.ph18.preheader.i19.i.i.i, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit

.lr.ph18.preheader.i19.i.i.i:                     ; preds = %.preheader.i17.i.i.i
  %i.dj = zext i32 %.0.lcssa.i18.i.i.i to i64     ; 4 uses
  %i.dk = sub nsw i64 %i.cs, %i.dj
  %xtraiter279 = and i64 %i.dk, 7                 ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol

.lr.ph18.i21.i.i.i.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i.i, %.lr.ph18.i21.i.i.i.prol
  %indvars.iv.i22.i.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ], [ %i.dj, %.lr.ph18.preheader.i19.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i.prol
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %indvars.iv.next.i23.i.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter279
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol, !llvm.loop !3536

.lr.ph18.i21.i.i.i.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i.i.prol, %.lr.ph18.preheader.i19.i.i.i
  %indvars.iv.i22.i.i.i.unr = phi i64 [ %i.dj, %.lr.ph18.preheader.i19.i.i.i ], [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ]
  %i.dm = sub nsw i64 %i.dj, %i.cs
  %i.dn = icmp ugt i64 %i.dm, -8
  br i1 %i.dn, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %.lr.ph.i25.i.i.i, %.lr.ph.i25.i.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i25.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i.i ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.do monotonic, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store atomic i32 -2147483648, ptr %i.dp monotonic, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store atomic i32 -2147483648, ptr %i.dq monotonic, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store atomic i32 -2147483648, ptr %i.dr monotonic, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store atomic i32 -2147483648, ptr %i.du monotonic, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store atomic i32 -2147483648, ptr %i.dv monotonic, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  store atomic i32 -2147483648, ptr %i.dw monotonic, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i25.i.i.i, !llvm.loop !5

.lr.ph18.i21.i.i.i:                               ; preds = %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i
  %indvars.iv.i22.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.7, %.lr.ph18.i21.i.i.i ], [ %indvars.iv.i22.i.i.i.unr, %.lr.ph18.i21.i.i.i.prol.loopexit ] ; 9 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store atomic i32 -2147483648, ptr %i.dz monotonic, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store atomic i32 -2147483648, ptr %i.eb monotonic, align 4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store atomic i32 -2147483648, ptr %i.ed monotonic, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  store atomic i32 -2147483648, ptr %i.eh monotonic, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store atomic i32 -2147483648, ptr %i.ej monotonic, align 4
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i22.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  store atomic i32 -2147483648, ptr %i.el monotonic, align 4
  %indvars.iv.next.i23.i.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i.7, %i.cs
  br i1 %exitcond.not.i24.i.i.i.7, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i, !llvm.loop !6

bb.u:                                             ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.em = cmpxchg weak ptr %i.cg, ptr %i.ch, ptr null acq_rel monotonic, align 8
  %i.en = extractvalue { ptr, i1 } %i.em, 1
  br i1 %i.en, label %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit: ; preds = %bb.u, %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i, %bb.r, %bb.s, %.preheader.i17.i.i.i
  %.1.ph.i118 = phi ptr [ @_hb_NullPool, %bb.r ], [ %i.cv, %.lr.ph18.i21.i.i.i.prol.loopexit ], [ %i.cv, %.preheader.i17.i.i.i ], [ @_hb_NullPool, %bb.s ], [ %i.cv, %.lr.ph18.i21.i.i.i ], [ %i.ch, %bb.u ] ; 4 uses
  %.not217 = icmp eq i32 %2, 0
  br i1 %.not217, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ep = zext i32 %4 to i64
  %i.eq = zext i32 %6 to i64
  br label %bb.x

.critedge:                                        ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, %_ZNK12hb_ot_font_t17direction_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.er = cmpxchg weak ptr %i.cg, ptr null, ptr %.1.ph.i118 acq_rel monotonic, align 8
  %i.es = extractvalue { ptr, i1 } %i.er, 1
  %.not.i.i.i121 = icmp eq ptr %.1.ph.i118, @_hb_NullPool
  %or.cond.i = or i1 %.not.i.i.i121, %i.es
  br i1 %or.cond.i, label %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %.1.ph.i118) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %bb.v, %.critedge
  %i.et = cmpxchg weak ptr %i.bh, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.eu = extractvalue { ptr, i1 } %i.et, 1
  br i1 %i.eu, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK12hb_ot_font_t17direction_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit
  tail call void @free(ptr noundef nonnull %.1.ph.i.ph) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit

bb.x:                                             ; preds = %.lr.ph, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit
  %.096203 = phi i32 [ 0, %.lr.ph ], [ %i.fw, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ]
  %.2102202 = phi ptr [ %3, %.lr.ph ], [ %i.fu, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ] ; 3 uses
  %.3107201 = phi ptr [ %5, %.lr.ph ], [ %i.fv, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit ] ; 2 uses
  %i.ev = load i32, ptr %.2102202, align 4, !tbaa !324 ; 3 uses
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.ex
  %i.ez = load atomic i32, ptr %i.ey monotonic, align 4 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = lshr i32 %i.ez, 16
  %i.fc = lshr i32 %i.ev, 8
  %.not.i123 = icmp eq i32 %i.fb, %i.fc
  br i1 %.not.i123, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fd = tail call noundef i32 @_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(40) %.19.ph.i.i.i, i32 noundef %i.ev, ptr noundef nonnull %0, ptr noundef nonnull %.1.ph.i118) ; 4 uses
  %i.fe = load i32, ptr %.2102202, align 4, !tbaa !324 ; 3 uses
  %i.ff = icmp ugt i32 %i.fe, 16777215
  %i.fg = icmp ugt i32 %i.fd, 65535
  %i.fh = or i1 %i.fg, %i.ff
  br i1 %i.fh, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit, label %bb.aa, !prof !267

bb.aa:                                            ; preds = %bb.z
  %i.fi = and i32 %i.fe, 255
  %i.fj = shl nuw i32 %i.fe, 8
  %i.fk = and i32 %i.fj, -65536
  %i.fl = or disjoint i32 %i.fk, %i.fd
  %i.fm = zext nneg i32 %i.fi to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.fm
  store atomic i32 %i.fl, ptr %i.fn monotonic, align 4
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit

_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit:  ; preds = %bb.y, %bb.aa, %bb.z
  %.095 = phi i32 [ %i.fd, %bb.aa ], [ %i.fd, %bb.z ], [ %i.ez, %bb.y ]
  %i.fo = load i64, ptr %i.eo, align 8, !tbaa !1047
  %.095.neg = sub i32 0, %.095
  %.095.neg.z = zext i32 %.095.neg to i64
  %.neg194 = shl i64 %.095.neg.z, 48
  %i.fp = ashr exact i64 %.neg194, 48
  %i.fq = mul nsw i64 %i.fp, %i.fo
  %i.fr = add nsw i64 %i.fq, 32768
  %i.fs = lshr i64 %i.fr, 16
  %i.ft = trunc i64 %i.fs to i32
  store i32 %i.ft, ptr %.3107201, align 4, !tbaa !324
  %i.fu = getelementptr inbounds nuw i8, ptr %.2102202, i64 %i.ep
  %i.fv = getelementptr inbounds nuw i8, ptr %.3107201, i64 %i.eq
  %i.fw = add nuw i32 %.096203, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.fw, %2
  br i1 %exitcond.not, label %.critedge, label %bb.x, !llvm.loop !3537

bb.ab:                                            ; preds = %.loopexit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 5 uses
  %i.fy = load atomic ptr, ptr %i.fx acquire, align 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not20.i.i.i, label %.lr.ph.i.i.i126, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i126:                                  ; preds = %bb.ab, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i127 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i127, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ac, !prof !267

bb.ac:                                            ; preds = %.lr.ph.i.i.i126
  %i.ga = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj21EE11call_createIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS4_Lj21EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.fx) ; 5 uses
  %.not10.i.i.i128 = icmp eq ptr %i.ga, null
  br i1 %.not10.i.i.i128, label %.thread.i.i.i, label %bb.ad, !prof !267

bb.ad:                                            ; preds = %bb.ac
  %i.gb = cmpxchg weak ptr %i.fx, ptr null, ptr %i.ga acq_rel monotonic, align 8
  %i.gc = extractvalue { ptr, i1 } %i.gb, 1
  br i1 %i.gc, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ae, !prof !268

.thread.i.i.i:                                    ; preds = %bb.ac
  %i.gd = cmpxchg weak ptr %i.fx, ptr null, ptr @_hb_NullPool acq_rel monotonic, align 8
  %i.ge = extractvalue { ptr, i1 } %i.gd, 1
  br i1 %i.ge, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, !prof !268

bb.ae:                                            ; preds = %bb.ad
  %.not3.i.i.i.i = icmp eq ptr %i.ga, @_hb_NullPool
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E7destroyEPS1_(ptr noundef nonnull %i.ga)
  br label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i

_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i: ; preds = %bb.af, %bb.ae, %.thread.i.i.i
  %i.gf = load atomic ptr, ptr %i.fx acquire, align 8 ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i129, label %.lr.ph.i.i.i126, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i126, %bb.ad, %.thread.i.i.i, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, %bb.ab
  %.19.ph.i.i.i125 = phi ptr [ %i.fy, %bb.ab ], [ @_hb_NullPool, %.lr.ph.i.i.i126 ], [ %i.gf, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i ], [ @_hb_NullPool, %.thread.i.i.i ], [ %i.ga, %bb.ad ] ; 2 uses
  %i.gg = load ptr, ptr %.19.ph.i.i.i125, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.gg, null
  %spec.select.i.i.i.i.i131 = select i1 %.not.i.i.i.i.i130, ptr @_hb_NullPool, ptr %i.gg ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i131, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !275
  %i.gj = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i131, i64 24
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !276
  %i.gl = icmp ult i32 %i.gk, 20
  %spec.select.i.i1.i.i.i = select i1 %i.gl, ptr @_hb_NullPool, ptr %i.gi
  %i.gm = load i32, ptr %spec.select.i.i1.i.i.i, align 1
  %.not193 = icmp eq i32 %i.gm, 0
  br i1 %.not193, label %bb.be, label %bb.ag

bb.ag:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.go = load atomic ptr, ptr %i.gn acquire, align 8 ; 2 uses
  %.not14.i.i.i132 = icmp eq ptr %i.go, null
  br i1 %.not14.i.i.i132, label %.lr.ph.i.i.i134, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i134:                                  ; preds = %bb.ag, %bb.ak
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i135 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i135, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ah, !prof !267

bb.ah:                                            ; preds = %.lr.ph.i.i.i134
  %i.gq = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj15EE11call_createIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS4_Lj15EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.gn) ; 2 uses
  %.not10.i.i.i136 = icmp eq ptr %i.gq, null
  br i1 %.not10.i.i.i136, label %bb.ai, label %bb.aj, !prof !267

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.07.i.i.i137 = phi ptr [ @_hb_NullPool, %bb.ai ], [ %i.gq, %bb.ah ] ; 3 uses
  %i.gr = cmpxchg weak ptr %i.gn, ptr null, ptr %.07.i.i.i137 acq_rel monotonic, align 8
  %i.gs = extractvalue { ptr, i1 } %i.gr, 1
  br i1 %i.gs, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ak, !prof !268

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i137)
  %i.gt = load atomic ptr, ptr %i.gn acquire, align 8 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i138, label %.lr.ph.i.i.i134, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i134, %bb.aj, %bb.ak, %bb.ag
  %.19.ph.i.i.i133 = phi ptr [ %i.go, %bb.ag ], [ @_hb_NullPool, %.lr.ph.i.i.i134 ], [ %i.gt, %bb.ak ], [ %.07.i.i.i137, %bb.aj ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i133, i64 28 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !348
  %.not9.i = icmp eq i32 %i.gv, 0
  br i1 %.not9.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i133, i64 48 ; 3 uses
  %i.gx = load atomic ptr, ptr %i.gw acquire, align 8 ; 3 uses
  %.not.i139 = icmp eq ptr %i.gx, null
  br i1 %.not.i139, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gy = cmpxchg weak ptr %i.gw, ptr %i.gx, ptr null acq_rel monotonic, align 8
  %i.gz = extractvalue { ptr, i1 } %i.gy, 1
  br i1 %i.gz, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread183, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, !prof !268

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit: ; preds = %bb.al, %bb.am
  %i.ha = tail call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not113 = icmp eq ptr %i.ha, null
  br i1 %.not113, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread183, !prof !318

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %i.hb = cmpxchg weak ptr %i.bh, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.hc = extractvalue { ptr, i1 } %i.hb, 1
  br i1 %i.hc, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread, label %_ZNK12hb_ot_font_t17direction_cache_t21acquire_advance_cacheEv.exit.thread.sink.split

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread183: ; preds = %bb.am, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %.1.i186 = phi ptr [ %i.ha, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit ], [ %i.gx, %bb.am ] ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i: ; preds = %bb.aq, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread183
  %i.he = load atomic ptr, ptr %i.hd acquire, align 8 ; 3 uses
  %.not.i142 = icmp eq ptr %i.he, null
  br i1 %.not.i142, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.hf = load ptr, ptr %.19.ph.i.i.i125, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.hf ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !275
  %i.hi = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !276
  %i.hk = icmp ult i32 %i.hj, 20
  %spec.select.i.i1.i.i.i.i = select i1 %i.hk, ptr @_hb_NullPool, ptr %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.hm = load i16, ptr %i.hl, align 1, !tbaa !283 ; 2 uses
  %i.hn = tail call noundef i16 @llvm.bswap.i16(i16 %i.hm) ; 2 uses
  %i.ho = tail call i16 @llvm.umin.i16(i16 %i.hn, i16 4096) ; 2 uses
  %.sroa.speculated.i.i = zext nneg i16 %i.ho to i32 ; 2 uses
  %.not.i1.i.i = icmp eq i16 %i.hm, 0
  br i1 %.not.i1.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hp = zext nneg i16 %i.ho to i64              ; 5 uses
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 4
  %i.hs = tail call noalias noundef ptr @malloc(i64 noundef %i.hr) #65 ; 6 uses
  %.not16.i.i.i144 = icmp eq ptr %i.hs, null
  br i1 %.not16.i.i.i144, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.ap, !prof !267

bb.ap:                                            ; preds = %bb.ao
  store i32 %.sroa.speculated.i.i, ptr %i.hs, align 4, !tbaa !480
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 10 uses
  %i.hu = icmp ugt i16 %i.hn, 3
  br i1 %i.hu, label %.lr.ph.i25.i.i.i152, label %.preheader.i17.i.i.i145

.preheader.i17.i.loopexit.i.i155:                 ; preds = %.lr.ph.i25.i.i.i152
  %i.hv = trunc nuw nsw i64 %indvars.iv.next.i.i154 to i32
  br label %.preheader.i17.i.i.i145

.preheader.i17.i.i.i145:                          ; preds = %.preheader.i17.i.loopexit.i.i155, %bb.ap
  %.0.lcssa.i18.i.i.i146 = phi i32 [ 0, %bb.ap ], [ %i.hv, %.preheader.i17.i.loopexit.i.i155 ] ; 2 uses
  %i.hw = icmp ult i32 %.0.lcssa.i18.i.i.i146, %.sroa.speculated.i.i
  br i1 %i.hw, label %.lr.ph18.preheader.i19.i.i.i147, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

.lr.ph18.preheader.i19.i.i.i147:                  ; preds = %.preheader.i17.i.i.i145
  %i.hx = zext i32 %.0.lcssa.i18.i.i.i146 to i64  ; 4 uses
  %i.hy = sub nsw i64 %i.hp, %i.hx
  %xtraiter281 = and i64 %i.hy, 7                 ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %.lr.ph18.i21.i.i.i148.prol.loopexit, label %.lr.ph18.i21.i.i.i148.prol

.lr.ph18.i21.i.i.i148.prol:                       ; preds = %.lr.ph18.preheader.i19.i.i.i147, %.lr.ph18.i21.i.i.i148.prol
  %indvars.iv.i22.i.i.i149.prol = phi i64 [ %indvars.iv.next.i23.i.i.i150.prol, %.lr.ph18.i21.i.i.i148.prol ], [ %i.hx, %.lr.ph18.preheader.i19.i.i.i147 ] ; 2 uses
  %prol.iter283 = phi i64 [ %prol.iter283.next, %.lr.ph18.i21.i.i.i148.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i147 ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149.prol
  store atomic i32 -2147483648, ptr %i.hz monotonic, align 4
  %indvars.iv.next.i23.i.i.i150.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i149.prol, 1 ; 2 uses
  %prol.iter283.next = add i64 %prol.iter283, 1   ; 2 uses
  %prol.iter283.cmp.not = icmp eq i64 %prol.iter283.next, %xtraiter281
  br i1 %prol.iter283.cmp.not, label %.lr.ph18.i21.i.i.i148.prol.loopexit, label %.lr.ph18.i21.i.i.i148.prol, !llvm.loop !3538

.lr.ph18.i21.i.i.i148.prol.loopexit:              ; preds = %.lr.ph18.i21.i.i.i148.prol, %.lr.ph18.preheader.i19.i.i.i147
  %indvars.iv.i22.i.i.i149.unr = phi i64 [ %i.hx, %.lr.ph18.preheader.i19.i.i.i147 ], [ %indvars.iv.next.i23.i.i.i150.prol, %.lr.ph18.i21.i.i.i148.prol ]
  %i.ia = sub nsw i64 %i.hx, %i.hp
  %i.ib = icmp ugt i64 %i.ia, -8
  br i1 %i.ib, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i148

.lr.ph.i25.i.i.i152:                              ; preds = %bb.ap, %.lr.ph.i25.i.i.i152
  %indvars.iv.i.i153 = phi i64 [ %indvars.iv.next.i.i154, %.lr.ph.i25.i.i.i152 ], [ 0, %bb.ap ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i.i153 ; 4 uses
  store atomic i32 -2147483648, ptr %i.ic monotonic, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store atomic i32 -2147483648, ptr %i.id monotonic, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store atomic i32 -2147483648, ptr %i.ie monotonic, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store atomic i32 -2147483648, ptr %i.if monotonic, align 4
  %indvars.iv.next.i.i154 = add nuw nsw i64 %indvars.iv.i.i153, 4 ; 2 uses
  %11 = add nuw nsw i64 %indvars.iv.i.i153, 7
  %i.ig = icmp samesign ult i64 %11, %i.hp
  br i1 %i.ig, label %.lr.ph.i25.i.i.i152, label %.preheader.i17.i.loopexit.i.i155, !llvm.loop !5

.lr.ph18.i21.i.i.i148:                            ; preds = %.lr.ph18.i21.i.i.i148.prol.loopexit, %.lr.ph18.i21.i.i.i148
  %indvars.iv.i22.i.i.i149 = phi i64 [ %indvars.iv.next.i23.i.i.i150.7, %.lr.ph18.i21.i.i.i148 ], [ %indvars.iv.i22.i.i.i149.unr, %.lr.ph18.i21.i.i.i148.prol.loopexit ] ; 9 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  store atomic i32 -2147483648, ptr %i.ih monotonic, align 4
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store atomic i32 -2147483648, ptr %i.ij monotonic, align 4
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store atomic i32 -2147483648, ptr %i.il monotonic, align 4
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store atomic i32 -2147483648, ptr %i.in monotonic, align 4
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store atomic i32 -2147483648, ptr %i.ip monotonic, align 4
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 20
  store atomic i32 -2147483648, ptr %i.ir monotonic, align 4
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store atomic i32 -2147483648, ptr %i.it monotonic, align 4
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i22.i.i.i149
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 28
  store atomic i32 -2147483648, ptr %i.iv monotonic, align 4
  %indvars.iv.next.i23.i.i.i150.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i149, 8 ; 2 uses
  %exitcond.not.i24.i.i.i151.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i150.7, %i.hp
  br i1 %exitcond.not.i24.i.i.i151.7, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i148, !llvm.loop !6

bb.aq:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.iw = cmpxchg weak ptr %i.hd, ptr %i.he, ptr null acq_rel monotonic, align 8
  %i.ix = extractvalue { ptr, i1 } %i.iw, 1
  br i1 %i.ix, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit: ; preds = %bb.aq, %.lr.ph18.i21.i.i.i148.prol.loopexit, %.lr.ph18.i21.i.i.i148, %bb.an, %bb.ao, %.preheader.i17.i.i.i145
  %.1.ph.i143 = phi ptr [ @_hb_NullPool, %bb.an ], [ %i.hs, %.lr.ph18.i21.i.i.i148.prol.loopexit ], [ %i.hs, %.preheader.i17.i.i.i145 ], [ @_hb_NullPool, %bb.ao ], [ %i.hs, %.lr.ph18.i21.i.i.i148 ], [ %i.he, %bb.aq ] ; 4 uses
  %.not218 = icmp eq i32 %2, 0
  br i1 %.not218, label %._crit_edge, label %.lr.ph207

.lr.ph207:                                        ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.jg = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ji = zext i32 %4 to i64
  %i.jj = zext i32 %6 to i64
  br label %bb.au

._crit_edge:                                      ; preds = %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.jk = cmpxchg weak ptr %i.hd, ptr null, ptr %.1.ph.i143 acq_rel monotonic, align 8
  %i.jl = extractvalue { ptr, i1 } %i.jk, 1
  %.not.i.i.i157 = icmp eq ptr %.1.ph.i143, @_hb_NullPool
  %or.cond.i158 = or i1 %.not.i.i.i157, %i.jl
  br i1 %or.cond.i158, label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %.1.ph.i143) #63
  br label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %bb.ar, %._crit_edge
  %i.jm = cmpxchg weak ptr %i.gw, ptr null, ptr %.1.i186 acq_rel monotonic, align 8
  %i.jn = extractvalue { ptr, i1 } %i.jm, 1
  br i1 %i.jn, label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, label %bb.as

bb.as:                                            ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  call void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.1.i186) #63
  call void @free(ptr noundef nonnull %.1.i186) #63
  br label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit

_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit: ; preds = %bb.as, %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  %i.jo = cmpxchg weak ptr %i.bh, ptr null, ptr %.1.ph.i.ph acq_rel monotonic, align 8
  %i.jp = extractvalue { ptr, i1 } %i.jo, 1
  br i1 %i.jp, label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit
  call void @free(ptr noundef nonnull %.1.ph.i.ph) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t21release_advance_cacheEP10hb_cache_tILj24ELj16ELj8ELb1EE.exit

bb.au:                                            ; preds = %.lr.ph207, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170
  %.094206 = phi i32 [ 0, %.lr.ph207 ], [ %i.lk, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170 ]
  %.3103205 = phi ptr [ %3, %.lr.ph207 ], [ %i.li, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170 ] ; 3 uses
  %.4108204 = phi ptr [ %5, %.lr.ph207 ], [ %i.lj, %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170 ] ; 2 uses
  %i.jq = load i32, ptr %.3103205, align 4, !tbaa !324 ; 5 uses
  %i.jr = and i32 %i.jq, 255
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.js
  %i.ju = load atomic i32, ptr %i.jt monotonic, align 4 ; 3 uses
  %i.jv = icmp eq i32 %i.ju, -1
  br i1 %i.jv, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jw = lshr i32 %i.ju, 16
  %i.jx = lshr i32 %i.jq, 8
  %.not.i162 = icmp eq i32 %i.jw, %i.jx
  br i1 %.not.i162, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.jy = load i32, ptr %i.gu, align 4, !tbaa !348
  %.not.i165 = icmp ult i32 %i.jq, %i.jy
  br i1 %.not.i165, label %bb.ax, label %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.iy, align 4, !tbaa !304
  store ptr %0, ptr %9, align 8, !tbaa !470
  store ptr null, ptr %i.iz, align 8, !tbaa !471
  store ptr %8, ptr %i.ja, align 8, !tbaa !472
  store i8 0, ptr %i.jb, align 8, !tbaa !473
  %i.jz = load ptr, ptr %i.jc, align 8, !tbaa !309
  %i.ka = load i8, ptr %i.z, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kc = load i32, ptr %i.jd, align 4, !tbaa !310
  %i.kd = zext i32 %i.kc to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.2.8.insert.ext.i.i = phi i64 [ %i.kd, %bb.ay ], [ 0, %bb.ax ]
  %i.ke = call noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS0_19points_aggregator_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %.19.ph.i.i.i133, ptr noundef nonnull %0, i32 noundef %i.jq, ptr noundef nonnull byval(%"struct.OT::glyf_accelerator_t::points_aggregator_t") align 8 %9, ptr %i.jz, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.1.i186, ptr noundef nonnull %.1.ph.i143)
  br i1 %i.ke, label %bb.bc, label %bb.ba, !prof !268

bb.ba:                                            ; preds = %bb.az
  %i.kf = load ptr, ptr %i.je, align 8, !tbaa !264 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  %i.kh = load atomic i32, ptr %i.kg monotonic, align 4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i, label %bb.bb, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.bb:                                            ; preds = %bb.ba
  %i.ki = call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.kf)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

bb.bc:                                            ; preds = %bb.az
  %i.kj = load float, ptr %i.jf, align 4, !tbaa !1559
  %i.kk = load float, ptr %i.jg, align 8, !tbaa !1559
  %i.kl = fsub float %i.kj, %i.kk
  %i.km = fadd float %i.kl, 5.000000e-01
  %i.kn = call noundef float @llvm.floor.f32(float %i.km) ; 2 uses
  %i.ko = fcmp oge float %i.kn, 0.000000e+00
  %i.kp = select i1 %i.ko, float %i.kn, float 0.000000e+00 ; 2 uses
  %i.kq = fcmp ole float %i.kp, f0x4F000000
  %.sroa.speculated.i169 = select i1 %i.kq, float %i.kp, float f0x4F000000
  %i.kr = fptoui float %.sroa.speculated.i169 to i32
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.ba, %bb.bb, %bb.bc
  %.0.i168 = phi i32 [ %i.kr, %bb.bc ], [ %i.ki, %bb.bb ], [ %i.kh, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  %.pre = load i32, ptr %.3103205, align 4, !tbaa !324
  br label %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.aw, %_ZNK9hb_face_t8get_upemEv.exit.i
  %i.ks = phi i32 [ %.pre, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ %i.jq, %bb.aw ] ; 3 uses
  %.1.i166 = phi i32 [ %.0.i168, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ 0, %bb.aw ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.kt = icmp ugt i32 %i.ks, 16777215
  %i.ku = icmp ugt i32 %.1.i166, 65535
  %i.kv = or i1 %i.ku, %i.kt
  br i1 %i.kv, label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170, label %bb.bd, !prof !267

bb.bd:                                            ; preds = %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit
  %i.kw = and i32 %i.ks, 255
  %i.kx = shl nuw i32 %i.ks, 8
  %i.ky = and i32 %i.kx, -65536
  %i.kz = or disjoint i32 %i.ky, %.1.i166
  %i.la = zext nneg i32 %i.kw to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i.ph, i64 %i.la
  store atomic i32 %i.kz, ptr %i.lb monotonic, align 4
  br label %_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170

_ZN10hb_cache_tILj24ELj16ELj8ELb1EE3setEjj.exit170: ; preds = %bb.av, %bb.bd, %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit
  %.0 = phi i32 [ %.1.i166, %bb.bd ], [ %.1.i166, %_ZNK2OT18glyf_accelerator_t29get_advance_with_var_unscaledEjP9hb_font_tbR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit ], [ %i.ju, %bb.av ]
  %i.lc = load i64, ptr %i.jh, align 8, !tbaa !1047
  %.0.neg = sub i32 0, %.0
  %.0.neg.z = zext i32 %.0.neg to i64
  %.neg = shl i64 %.0.neg.z, 48
  %i.ld = ashr exact i64 %.neg, 48
  %i.le = mul nsw i64 %i.ld, %i.lc
  %i.lf = add nsw i64 %i.le, 32768
  %i.lg = lshr i64 %i.lf, 16
  %i.lh = trunc i64 %i.lg to i32
  store i32 %i.lh, ptr %.4108204, align 4, !tbaa !324
  %i.li = getelementptr inbounds nuw i8, ptr %.3103205, i64 %i.ji
  %i.lj = getelementptr inbounds nuw i8, ptr %.4108204, i64 %i.jj
  %i.lk = add nuw i32 %.094206, 1                 ; 2 uses
  %exitcond227.not = icmp eq i32 %i.lk, %2
  br i1 %exitcond227.not, label %._crit_edge, label %bb.au, !llvm.loop !3539

end_hunk_5
begin_hunk_6_@_ZL25hb_ot_get_glyph_v_originsP9hb_font_tPvjPKjjPijS4_jS1_:bb.a
  %i.di = icmp ult i32 %i.ck, %i.dh
  br i1 %i.di, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dj = add nsw i32 %i.db, -1
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %.not28.i.i.i.i = icmp eq i32 %i.ck, %i.dh
  br i1 %.not28.i.i.i.i, label %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = add nuw nsw i32 %i.db, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.223.i.i.i.i = phi i32 [ %i.dk, %bb.w ], [ %.0212.i.i.i.i, %bb.u ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0203.i.i.i.i, %bb.w ], [ %i.dj, %bb.u ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %_ZNK2OT4VORG12get_y_originEj.exit171, label %.lr.ph.i.i.i.i, !llvm.loop !3542

_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.v
  %.not.i178 = icmp samesign ult i32 %i.db, %.sroa.4.8.extract.trunc.i
  br i1 %.not.i178, label %bb.y, label %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit, !prof !268

bb.y:                                             ; preds = %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dc
  %.pre.pre = load i32, ptr %.0152350, align 4, !tbaa !324
  br label %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit

_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit: ; preds = %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, %bb.y
  %.pre = phi i32 [ %.pre.pre, %bb.y ], [ %i.ck, %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ]
  %.0.i179 = phi ptr [ %i.dl, %bb.y ], [ @_hb_NullPool, %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i179, i64 2
  br label %_ZNK2OT4VORG12get_y_originEj.exit171

_ZNK2OT4VORG12get_y_originEj.exit171:             ; preds = %bb.x, %bb.t, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit
  %.sink.in = phi ptr [ %i.dm, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ %i.cg, %bb.t ], [ %i.cg, %bb.x ]
  %i.dn = phi i32 [ %.pre, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ %i.ck, %bb.t ], [ %i.ck, %bb.x ] ; 3 uses
  %.sink = load i16, ptr %.sink.in, align 1, !tbaa !283
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %.sink)
  %i.dp = sitofp i16 %i.do to float
  %i.dq = load float, ptr %i.ch, align 4, !tbaa !618
  %i.dr = fmul float %i.dq, %i.dp
  %i.ds = fadd float %i.dr, 5.000000e-01
  %i.dt = tail call noundef float @llvm.floor.f32(float %i.ds)
  %i.du = fptosi float %i.dt to i32               ; 4 uses
  %i.dv = load i32, ptr %i.cd, align 4, !tbaa !954
  %i.dw = icmp slt i32 %i.dv, 0
  %i.dx = sub nsw i32 0, %i.du
  %i.dy = select i1 %i.dw, i32 %i.dx, i32 %i.du   ; 2 uses
  %i.dz = or i32 %i.dy, %i.dn
  %.not.i180 = icmp ult i32 %i.dz, 1048576
  br i1 %.not.i180, label %bb.z, label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit, !prof !268

bb.z:                                             ; preds = %_ZNK2OT4VORG12get_y_originEj.exit171
  %i.ea = and i32 %i.dn, 255
  %i.eb = shl nuw i32 %i.dn, 12
  %i.ec = and i32 %i.eb, -1048576
  %i.ed = or disjoint i32 %i.dy, %i.ec
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.ee
  store atomic i32 %i.ed, ptr %i.ef monotonic, align 4
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit

_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit:  ; preds = %bb.z, %_ZNK2OT4VORG12get_y_originEj.exit171, %bb.s
  %.0147 = phi i32 [ %i.cw, %bb.s ], [ %i.du, %_ZNK2OT4VORG12get_y_originEj.exit171 ], [ %i.du, %bb.z ]
  store i32 %.0147, ptr %.0155349, align 4, !tbaa !324
  %i.eg = getelementptr inbounds nuw i8, ptr %.0152350, i64 %i.ci
  %i.eh = getelementptr inbounds nuw i8, ptr %.0155349, i64 %i.cj
  %i.ei = add nuw i32 %.0148351, 1                ; 2 uses
  %exitcond384.not = icmp eq i32 %i.ei, %2
  br i1 %exitcond384.not, label %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.q, !llvm.loop !3543

bb.aa:                                            ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 4 uses
  %i.ek = load atomic ptr, ptr %i.ej acquire, align 8 ; 2 uses
  %.not14.i.i.i181 = icmp eq ptr %i.ek, null
  br i1 %.not14.i.i.i181, label %.lr.ph.i.i.i183, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i183:                                  ; preds = %bb.aa, %bb.ae
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i184 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i184, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit, label %bb.ab, !prof !267

bb.ab:                                            ; preds = %.lr.ph.i.i.i183
  %i.em = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj12EE11call_createIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS4_Lj12EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.ej) ; 2 uses
  %.not10.i.i.i185 = icmp eq ptr %i.em, null
  br i1 %.not10.i.i.i185, label %bb.ac, label %bb.ad, !prof !267

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.07.i.i.i186 = phi ptr [ @_hb_NullPool, %bb.ac ], [ %i.em, %bb.ab ] ; 3 uses
  %i.en = cmpxchg weak ptr %i.ej, ptr null, ptr %.07.i.i.i186 acq_rel monotonic, align 8
  %i.eo = extractvalue { ptr, i1 } %i.en, 1
  br i1 %i.eo, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit, label %bb.ae, !prof !268

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i186)
  %i.ep = load atomic ptr, ptr %i.ej acquire, align 8 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i187, label %.lr.ph.i.i.i183, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i183, %bb.ad, %bb.ae, %bb.aa
  %.19.ph.i.i.i182 = phi ptr [ %i.ek, %bb.aa ], [ @_hb_NullPool, %.lr.ph.i.i.i183 ], [ %i.ep, %bb.ae ], [ %.07.i.i.i186, %bb.ad ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i182, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i188 = icmp eq ptr %i.er, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i188, ptr @_hb_NullPool, ptr %i.er ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !275
  %i.eu = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !276
  %i.ew = icmp ult i32 %i.ev, 24
  %spec.select.i.i1.i.i = select i1 %i.ew, ptr @_hb_NullPool, ptr %i.et ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 1, !tbaa !278 ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 0
  %i.fa = tail call i32 @llvm.bswap.i32(i32 %i.ey)
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.fb
  %.0.i.i = select i1 %i.ez, ptr @_hb_NullPool, ptr %i.fc, !prof !267 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  br label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i: ; preds = %bb.ai, %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EptEv.exit
  %i.fe = load atomic ptr, ptr %i.fd acquire, align 8 ; 3 uses
  %.not.i189 = icmp eq ptr %i.fe, null
  br i1 %.not.i189, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.fg = load i32, ptr %i.ff, align 1, !tbaa !278 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = tail call i32 @llvm.bswap.i32(i32 %i.fg)
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.fj
  %.0.i.i.i.i = select i1 %i.fh, ptr @_hb_NullPool, ptr %i.fk, !prof !267
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.fm = load i16, ptr %i.fl, align 1, !tbaa !283 ; 2 uses
  %i.fn = tail call noundef i16 @llvm.bswap.i16(i16 %i.fm) ; 3 uses
  %i.fo = zext i16 %i.fn to i32                   ; 2 uses
  %.not.i.i.i191 = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i191, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = zext i16 %i.fn to i64                   ; 5 uses
  %i.fq = shl nuw nsw i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fq, 4
  %i.fs = tail call noalias noundef ptr @malloc(i64 noundef %i.fr) #65 ; 6 uses
  %.not16.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not16.i.i.i, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %bb.ah, !prof !267

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.fo, ptr %i.fs, align 4, !tbaa !480
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4 ; 12 uses
  %i.fu = icmp ugt i16 %i.fn, 3
  br i1 %i.fu, label %.lr.ph.i25.i.i.i.preheader, label %.preheader.i17.i.i.i

.lr.ph.i25.i.i.i.preheader:                       ; preds = %bb.ah
  %i.fv = add nsw i64 %i.fp, -4                   ; 2 uses
  %i.fw = lshr i64 %i.fv, 2                       ; 2 uses
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.lr.ph.i25.i.i.i.epil.preheader, label %.lr.ph.i25.i.i.i.preheader.new

.lr.ph.i25.i.i.i.preheader.new:                   ; preds = %.lr.ph.i25.i.i.i.preheader
  %unroll_iter507 = and i64 %i.fx, 9223372036854775806
  br label %.lr.ph.i25.i.i.i

.preheader.i17.i.loopexit.i.i.unr-lcssa:          ; preds = %.lr.ph.i25.i.i.i
  %i.fz = and i64 %i.fv, 4
  %lcmp.mod504.not.not = icmp eq i64 %i.fz, 0
  br i1 %lcmp.mod504.not.not, label %.lr.ph.i25.i.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i.i

.lr.ph.i25.i.i.i.epil.preheader:                  ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader ], [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod506 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod506)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.ga monotonic, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store atomic i32 -2147483648, ptr %i.gb monotonic, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store atomic i32 -2147483648, ptr %i.gc monotonic, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store atomic i32 -2147483648, ptr %i.gd monotonic, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i.i

.preheader.i17.i.loopexit.i.i:                    ; preds = %.preheader.i17.i.loopexit.i.i.unr-lcssa, %.lr.ph.i25.i.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.i17.i.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i25.i.i.i.epil.preheader ]
  %i.ge = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i17.i.i.i

.preheader.i17.i.i.i:                             ; preds = %.preheader.i17.i.loopexit.i.i, %bb.ah
  %.0.lcssa.i18.i.i.i = phi i32 [ 0, %bb.ah ], [ %i.ge, %.preheader.i17.i.loopexit.i.i ] ; 2 uses
  %i.gf = icmp ult i32 %.0.lcssa.i18.i.i.i, %i.fo
  br i1 %i.gf, label %.lr.ph18.preheader.i19.i.i.i, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit

.lr.ph18.preheader.i19.i.i.i:                     ; preds = %.preheader.i17.i.i.i
  %i.gg = zext i32 %.0.lcssa.i18.i.i.i to i64     ; 4 uses
  %i.gh = sub nsw i64 %i.fp, %i.gg
  %xtraiter509 = and i64 %i.gh, 7                 ; 2 uses
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  br i1 %lcmp.mod510.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol

.lr.ph18.i21.i.i.i.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i.i, %.lr.ph18.i21.i.i.i.prol
  %indvars.iv.i22.i.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ], [ %i.gg, %.lr.ph18.preheader.i19.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i.prol
  store atomic i32 -2147483648, ptr %i.gi monotonic, align 4
  %indvars.iv.next.i23.i.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter509
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol, !llvm.loop !3544

.lr.ph18.i21.i.i.i.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i.i.prol, %.lr.ph18.preheader.i19.i.i.i
  %indvars.iv.i22.i.i.i.unr = phi i64 [ %i.gg, %.lr.ph18.preheader.i19.i.i.i ], [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ]
  %i.gj = sub nsw i64 %i.gg, %i.fp
  %i.gk = icmp ugt i64 %i.gj, -8
  br i1 %i.gk, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %.lr.ph.i25.i.i.i, %.lr.ph.i25.i.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i25.i.i.i ] ; 3 uses
  %niter508 = phi i64 [ 0, %.lr.ph.i25.i.i.i.preheader.new ], [ %niter508.next.1, %.lr.ph.i25.i.i.i ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.gl monotonic, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store atomic i32 -2147483648, ptr %i.gm monotonic, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store atomic i32 -2147483648, ptr %i.gn monotonic, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store atomic i32 -2147483648, ptr %i.go monotonic, align 4
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i.i ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store atomic i32 -2147483648, ptr %i.gq monotonic, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  store atomic i32 -2147483648, ptr %i.gr monotonic, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store atomic i32 -2147483648, ptr %i.gs monotonic, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  store atomic i32 -2147483648, ptr %i.gt monotonic, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %niter508.next.1 = add i64 %niter508, 2         ; 2 uses
  %niter508.ncmp.1.not = icmp eq i64 %niter508.next.1, %unroll_iter507
  br i1 %niter508.ncmp.1.not, label %.preheader.i17.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i25.i.i.i, !llvm.loop !5

.lr.ph18.i21.i.i.i:                               ; preds = %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i
  %indvars.iv.i22.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.7, %.lr.ph18.i21.i.i.i ], [ %indvars.iv.i22.i.i.i.unr, %.lr.ph18.i21.i.i.i.prol.loopexit ] ; 9 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  store atomic i32 -2147483648, ptr %i.gu monotonic, align 4
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store atomic i32 -2147483648, ptr %i.gw monotonic, align 4
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store atomic i32 -2147483648, ptr %i.gy monotonic, align 4
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store atomic i32 -2147483648, ptr %i.ha monotonic, align 4
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store atomic i32 -2147483648, ptr %i.hc monotonic, align 4
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 20
  store atomic i32 -2147483648, ptr %i.he monotonic, align 4
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store atomic i32 -2147483648, ptr %i.hg monotonic, align 4
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i22.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 28
  store atomic i32 -2147483648, ptr %i.hi monotonic, align 4
  %indvars.iv.next.i23.i.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i.7, %i.fp
  br i1 %exitcond.not.i24.i.i.i.7, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %.lr.ph18.i21.i.i.i, !llvm.loop !6

bb.ai:                                            ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i
  %i.hj = cmpxchg weak ptr %i.fd, ptr %i.fe, ptr null acq_rel monotonic, align 8
  %i.hk = extractvalue { ptr, i1 } %i.hj, 1
  br i1 %i.hk, label %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit.i

_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit: ; preds = %bb.ai, %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i, %bb.af, %bb.ag, %.preheader.i17.i.i.i
  %.1.ph.i190 = phi ptr [ @_hb_NullPool, %bb.af ], [ %i.fs, %.lr.ph18.i21.i.i.i.prol.loopexit ], [ %i.fs, %.preheader.i17.i.i.i ], [ @_hb_NullPool, %bb.ag ], [ %i.fs, %.lr.ph18.i21.i.i.i ], [ %i.fe, %bb.ai ] ; 4 uses
  br i1 %.not368444, label %._crit_edge357, label %.lr.ph356

.lr.ph356:                                        ; preds = %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 6
  %i.hn = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.hr = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 20
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ht = zext i32 %4 to i64
  %i.hu = zext i32 %8 to i64
  br label %bb.ak

._crit_edge357:                                   ; preds = %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222, %_ZNK12hb_ot_font_t14origin_cache_t22acquire_varStore_cacheERKN2OT18ItemVariationStoreE.exit
  %i.hv = cmpxchg weak ptr %i.fd, ptr null, ptr %.1.ph.i190 acq_rel monotonic, align 8
  %i.hw = extractvalue { ptr, i1 } %i.hv, 1
  %.not.i.i.i193 = icmp eq ptr %.1.ph.i190, @_hb_NullPool
  %or.cond.i = or i1 %.not.i.i.i193, %i.hw
  br i1 %or.cond.i, label %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge357
  tail call void @free(ptr noundef nonnull %.1.ph.i190) #63
  br label %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit

bb.ak:                                            ; preds = %.lr.ph356, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222
  %.0146355 = phi i32 [ 0, %.lr.ph356 ], [ %i.lg, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222 ]
  %.1153354 = phi ptr [ %3, %.lr.ph356 ], [ %i.le, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222 ] ; 4 uses
  %.1156353 = phi ptr [ %7, %.lr.ph356 ], [ %i.lf, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222 ] ; 2 uses
  %i.hx = load i32, ptr %.1153354, align 4, !tbaa !324 ; 4 uses
  %i.hy = and i32 %i.hx, 255
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.hz
  %i.ib = load atomic i32, ptr %i.ia monotonic, align 4 ; 3 uses
  %i.ic = icmp eq i32 %i.ib, -1
  br i1 %i.ic, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.id = lshr i32 %i.ib, 20
  %i.ie = lshr i32 %i.hx, 8
  %.not.i194 = icmp eq i32 %i.id, %i.ie
  br i1 %.not.i194, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.if = and i32 %i.ib, 1048575                  ; 2 uses
  %i.ig = load i32, ptr %i.hl, align 4, !tbaa !954
  %i.ih = icmp slt i32 %i.ig, 0
  %i.ii = sub nsw i32 0, %i.if
  %i.ij = select i1 %i.ih, i32 %i.ii, i32 %i.if
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit222

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.ik = load i16, ptr %i.hm, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.not.i198 = icmp eq i16 %i.ik, 0
  br i1 %.not1.i.i.i.not.i198, label %_ZNK2OT4VORG12get_y_originEj.exit, label %.lr.ph.preheader.i.i.i.i199

.lr.ph.preheader.i.i.i.i199:                      ; preds = %bb.an
  %i.il = tail call noundef i16 @llvm.bswap.i16(i16 %i.ik)
  %.sroa.4.8.extract.trunc.i200 = zext i16 %i.il to i32 ; 2 uses
  %i.im = add nsw i32 %.sroa.4.8.extract.trunc.i200, -1
  br label %.lr.ph.i.i.i.i201

.lr.ph.i.i.i.i201:                                ; preds = %bb.ar, %.lr.ph.preheader.i.i.i.i199
  %.0203.i.i.i.i202 = phi i32 [ %.2.i.i.i.i206, %bb.ar ], [ %i.im, %.lr.ph.preheader.i.i.i.i199 ] ; 2 uses
  %.0212.i.i.i.i203 = phi i32 [ %.223.i.i.i.i205, %bb.ar ], [ 0, %.lr.ph.preheader.i.i.i.i199 ] ; 2 uses
  %i.in = add i32 %.0212.i.i.i.i203, %.0203.i.i.i.i202
  %i.io = lshr i32 %i.in, 1                       ; 4 uses
  %i.ip = zext nneg i32 %i.io to i64              ; 2 uses
  %i.iq = shl nuw nsw i64 %i.ip, 2
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 1, !tbaa !283
  %i.it = tail call noundef i16 @llvm.bswap.i16(i16 %i.is)
  %i.iu = zext i16 %i.it to i32                   ; 2 uses
  %i.iv = icmp ult i32 %i.hx, %i.iu
  br i1 %i.iv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i201
  %i.iw = add nsw i32 %i.io, -1
  br label %bb.ar

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i201
  %.not28.i.i.i.i204 = icmp eq i32 %i.hx, %i.iu
  br i1 %.not28.i.i.i.i204, label %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ix = add nuw nsw i32 %i.io, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.223.i.i.i.i205 = phi i32 [ %i.ix, %bb.aq ], [ %.0212.i.i.i.i203, %bb.ao ] ; 2 uses
  %.2.i.i.i.i206 = phi i32 [ %.0203.i.i.i.i202, %bb.aq ], [ %i.iw, %bb.ao ] ; 2 uses
  %.not.not.i.i.i.i207 = icmp sgt i32 %.223.i.i.i.i205, %.2.i.i.i.i206
  br i1 %.not.not.i.i.i.i207, label %_ZNK2OT4VORG12get_y_originEj.exit, label %.lr.ph.i.i.i.i201, !llvm.loop !3542

_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212: ; preds = %bb.ap
  %.not.i213 = icmp samesign ult i32 %i.io, %.sroa.4.8.extract.trunc.i200
  br i1 %.not.i213, label %bb.as, label %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215, !prof !268

bb.as:                                            ; preds = %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ip
  br label %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215

_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215: ; preds = %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212, %bb.as
  %.0.i214 = phi ptr [ %i.iy, %bb.as ], [ @_hb_NullPool, %_ZNK2OT13SortedArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit212 ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i214, i64 2
  br label %_ZNK2OT4VORG12get_y_originEj.exit

_ZNK2OT4VORG12get_y_originEj.exit:                ; preds = %bb.ar, %bb.an, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215
  %.sink463.in = phi ptr [ %i.iz, %_ZNK2OT7ArrayOfINS_16VertOriginMetricENS_7NumTypeILb1EtLj2EEEEixEi.exit215 ], [ %i.ho, %bb.an ], [ %i.ho, %bb.ar ]
  %.sink463 = load i16, ptr %.sink463.in, align 1, !tbaa !283
  %i.ja = tail call noundef i16 @llvm.bswap.i16(i16 %.sink463)
  %i.jb = sitofp i16 %i.ja to float               ; 4 uses
end_hunk_6
begin_hunk_7_@_ZL25hb_ot_get_glyph_v_originsP9hb_font_tPvjPKjjPijS4_jS1_:bb.a

bb.aw:                                            ; preds = %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit
  tail call void @free(ptr noundef nonnull %.1.ph.i) #63
  br label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit

bb.ax:                                            ; preds = %bb.o
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 4 uses
  %i.lk = load atomic ptr, ptr %i.lj acquire, align 8 ; 2 uses
  %.not14.i.i.i224 = icmp eq ptr %i.lk, null
  br i1 %.not14.i.i.i224, label %.lr.ph.i.i.i226, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i226:                                  ; preds = %bb.ax, %bb.bb
  %i.ll = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i227 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i227, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.ay, !prof !267

bb.ay:                                            ; preds = %.lr.ph.i.i.i226
  %i.lm = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj12EE11call_createIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS4_Lj12EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.lj) ; 2 uses
  %.not10.i.i.i228 = icmp eq ptr %i.lm, null
  br i1 %.not10.i.i.i228, label %bb.az, label %bb.ba, !prof !267

bb.az:                                            ; preds = %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.07.i.i.i229 = phi ptr [ @_hb_NullPool, %bb.az ], [ %i.lm, %bb.ay ] ; 3 uses
  %i.ln = cmpxchg weak ptr %i.lj, ptr null, ptr %.07.i.i.i229 acq_rel monotonic, align 8
  %i.lo = extractvalue { ptr, i1 } %i.ln, 1
  br i1 %i.lo, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bb, !prof !268

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZN16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i229)
  %i.lp = load atomic ptr, ptr %i.lj acquire, align 8 ; 2 uses
  %.not.i.i.i230 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i230, label %.lr.ph.i.i.i226, label %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i226, %bb.ba, %bb.bb, %bb.ax
  %.19.ph.i.i.i225 = phi ptr [ %i.lk, %bb.ax ], [ @_hb_NullPool, %.lr.ph.i.i.i226 ], [ %i.lp, %bb.bb ], [ %.07.i.i.i229, %bb.ba ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.lr = load atomic ptr, ptr %i.lq acquire, align 8 ; 2 uses
  %.not14.i.i.i231 = icmp eq ptr %i.lr, null
  br i1 %.not14.i.i.i231, label %.lr.ph.i.i.i233, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i233:                                  ; preds = %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, %bb.bf
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i234 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i.i234, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bc, !prof !267

bb.bc:                                            ; preds = %.lr.ph.i.i.i233
  %i.lt = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj15EE11call_createIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS4_Lj15EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.lq) ; 2 uses
  %.not10.i.i.i235 = icmp eq ptr %i.lt, null
  br i1 %.not10.i.i.i235, label %bb.bd, label %bb.be, !prof !267

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.07.i.i.i236 = phi ptr [ @_hb_NullPool, %bb.bd ], [ %i.lt, %bb.bc ] ; 3 uses
  %i.lu = cmpxchg weak ptr %i.lq, ptr null, ptr %.07.i.i.i236 acq_rel monotonic, align 8
  %i.lv = extractvalue { ptr, i1 } %i.lu, 1
  br i1 %i.lv, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bf, !prof !268

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i236)
  %i.lw = load atomic ptr, ptr %i.lq acquire, align 8 ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i237, label %.lr.ph.i.i.i233, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %bb.bf, %bb.be, %.lr.ph.i.i.i233, %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %.19.ph.i.i.i232 = phi ptr [ %i.lr, %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit ], [ @_hb_NullPool, %.lr.ph.i.i.i233 ], [ %i.lw, %bb.bf ], [ %.07.i.i.i236, %bb.be ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i225, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !1553
  %.not333 = icmp eq i32 %i.ly, 0
  br i1 %.not333, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit291, label %bb.bg

bb.bg:                                            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i232, i64 28 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !348
  %.not334 = icmp eq i32 %i.ma, 0
  br i1 %.not334, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit291, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mb = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i232, i64 48 ; 3 uses
  %i.mc = load atomic ptr, ptr %i.mb acquire, align 8 ; 3 uses
  %.not.i238 = icmp eq ptr %i.mc, null
  br i1 %.not.i238, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.md = cmpxchg weak ptr %i.mb, ptr %i.mc, ptr null acq_rel monotonic, align 8
  %i.me = extractvalue { ptr, i1 } %i.md, 1
  br i1 %i.me, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, !prof !268

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit: ; preds = %bb.bh, %bb.bi
  %i.mf = tail call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not166 = icmp eq ptr %i.mf, null
  br i1 %.not166, label %bb.bj, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, !prof !1623

bb.bj:                                            ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %i.mg = cmpxchg weak ptr %i.aw, ptr null, ptr %.1.ph.i acq_rel monotonic, align 8
  %i.mh = extractvalue { ptr, i1 } %i.mg, 1
  br i1 %i.mh, label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %.1.ph.i) #63
  br label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread: ; preds = %bb.bi, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %.1.i327 = phi ptr [ %i.mf, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit ], [ %i.mc, %bb.bi ] ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.bl, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

bb.bl:                                            ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 5 uses
  %i.mn = load atomic ptr, ptr %i.mm acquire, align 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not20.i.i.i, label %.lr.ph.i.i.i242, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i242:                                  ; preds = %bb.bl, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i
  %i.mo = load ptr, ptr %i.a, align 8, !tbaa !266
  %.not.i.i.i.i243 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i243, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bm, !prof !267

bb.bm:                                            ; preds = %.lr.ph.i.i.i242
  %i.mp = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj21EE11call_createIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS4_Lj21EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.mm) ; 5 uses
  %.not10.i.i.i244 = icmp eq ptr %i.mp, null
  br i1 %.not10.i.i.i244, label %.thread.i.i.i, label %bb.bn, !prof !267

bb.bn:                                            ; preds = %bb.bm
  %i.mq = cmpxchg weak ptr %i.mm, ptr null, ptr %i.mp acq_rel monotonic, align 8
  %i.mr = extractvalue { ptr, i1 } %i.mq, 1
  br i1 %i.mr, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.bo, !prof !268

.thread.i.i.i:                                    ; preds = %bb.bm
  %i.ms = cmpxchg weak ptr %i.mm, ptr null, ptr @_hb_NullPool acq_rel monotonic, align 8
  %i.mt = extractvalue { ptr, i1 } %i.ms, 1
  br i1 %i.mt, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, !prof !268

bb.bo:                                            ; preds = %bb.bn
  %.not3.i.i.i.i = icmp eq ptr %i.mp, @_hb_NullPool
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E7destroyEPS1_(ptr noundef nonnull %i.mp)
  br label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i

_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i: ; preds = %bb.bp, %bb.bo, %.thread.i.i.i
  %i.mu = load atomic ptr, ptr %i.mm acquire, align 8 ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i245, label %.lr.ph.i.i.i242, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i242, %bb.bn, %.thread.i.i.i, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, %bb.bl
  %.19.ph.i.i.i241 = phi ptr [ %i.mn, %bb.bl ], [ @_hb_NullPool, %.lr.ph.i.i.i242 ], [ %i.mu, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i ], [ @_hb_NullPool, %.thread.i.i.i ], [ %i.mp, %bb.bn ]
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i: ; preds = %bb.bt, %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.mv = load atomic ptr, ptr %i.ml acquire, align 8 ; 3 uses
  %.not.i246 = icmp eq ptr %i.mv, null
  br i1 %.not.i246, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.mw = load ptr, ptr %.19.ph.i.i.i241, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mw, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.mw ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !275
  %i.mz = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !276
  %i.nb = icmp ult i32 %i.na, 20
  %spec.select.i.i1.i.i.i.i = select i1 %i.nb, ptr @_hb_NullPool, ptr %i.my
  %i.nc = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.nd = load i16, ptr %i.nc, align 1, !tbaa !283 ; 2 uses
  %i.ne = tail call noundef i16 @llvm.bswap.i16(i16 %i.nd) ; 2 uses
  %i.nf = tail call i16 @llvm.umin.i16(i16 %i.ne, i16 4096) ; 2 uses
  %.sroa.speculated.i.i = zext nneg i16 %i.nf to i32 ; 2 uses
  %.not.i1.i.i = icmp eq i16 %i.nd, 0
  br i1 %.not.i1.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ng = zext nneg i16 %i.nf to i64              ; 5 uses
  %i.nh = shl nuw nsw i64 %i.ng, 2
  %i.ni = add nuw nsw i64 %i.nh, 4
  %i.nj = tail call noalias noundef ptr @malloc(i64 noundef %i.ni) #65 ; 6 uses
  %.not16.i.i.i248 = icmp eq ptr %i.nj, null
  br i1 %.not16.i.i.i248, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.bs, !prof !267

bb.bs:                                            ; preds = %bb.br
  store i32 %.sroa.speculated.i.i, ptr %i.nj, align 4, !tbaa !480
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 10 uses
  %i.nl = icmp ugt i16 %i.ne, 3
  br i1 %i.nl, label %.lr.ph.i25.i.i.i256, label %.preheader.i17.i.i.i249

.preheader.i17.i.loopexit.i.i259:                 ; preds = %.lr.ph.i25.i.i.i256
  %i.nm = trunc nuw nsw i64 %indvars.iv.next.i.i258 to i32
  br label %.preheader.i17.i.i.i249

.preheader.i17.i.i.i249:                          ; preds = %.preheader.i17.i.loopexit.i.i259, %bb.bs
  %.0.lcssa.i18.i.i.i250 = phi i32 [ 0, %bb.bs ], [ %i.nm, %.preheader.i17.i.loopexit.i.i259 ] ; 2 uses
  %i.nn = icmp ult i32 %.0.lcssa.i18.i.i.i250, %.sroa.speculated.i.i
  br i1 %i.nn, label %.lr.ph18.preheader.i19.i.i.i251, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

.lr.ph18.preheader.i19.i.i.i251:                  ; preds = %.preheader.i17.i.i.i249
  %i.no = zext i32 %.0.lcssa.i18.i.i.i250 to i64  ; 4 uses
  %i.np = sub nsw i64 %i.ng, %i.no
  %xtraiter511 = and i64 %i.np, 7                 ; 2 uses
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.lr.ph18.i21.i.i.i252.prol.loopexit, label %.lr.ph18.i21.i.i.i252.prol

.lr.ph18.i21.i.i.i252.prol:                       ; preds = %.lr.ph18.preheader.i19.i.i.i251, %.lr.ph18.i21.i.i.i252.prol
  %indvars.iv.i22.i.i.i253.prol = phi i64 [ %indvars.iv.next.i23.i.i.i254.prol, %.lr.ph18.i21.i.i.i252.prol ], [ %i.no, %.lr.ph18.preheader.i19.i.i.i251 ] ; 2 uses
  %prol.iter513 = phi i64 [ %prol.iter513.next, %.lr.ph18.i21.i.i.i252.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i251 ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253.prol
  store atomic i32 -2147483648, ptr %i.nq monotonic, align 4
  %indvars.iv.next.i23.i.i.i254.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i253.prol, 1 ; 2 uses
  %prol.iter513.next = add i64 %prol.iter513, 1   ; 2 uses
  %prol.iter513.cmp.not = icmp eq i64 %prol.iter513.next, %xtraiter511
  br i1 %prol.iter513.cmp.not, label %.lr.ph18.i21.i.i.i252.prol.loopexit, label %.lr.ph18.i21.i.i.i252.prol, !llvm.loop !3546

.lr.ph18.i21.i.i.i252.prol.loopexit:              ; preds = %.lr.ph18.i21.i.i.i252.prol, %.lr.ph18.preheader.i19.i.i.i251
  %indvars.iv.i22.i.i.i253.unr = phi i64 [ %i.no, %.lr.ph18.preheader.i19.i.i.i251 ], [ %indvars.iv.next.i23.i.i.i254.prol, %.lr.ph18.i21.i.i.i252.prol ]
  %i.nr = sub nsw i64 %i.no, %i.ng
  %i.ns = icmp ugt i64 %i.nr, -8
  br i1 %i.ns, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i252

.lr.ph.i25.i.i.i256:                              ; preds = %bb.bs, %.lr.ph.i25.i.i.i256
  %indvars.iv.i.i257 = phi i64 [ %indvars.iv.next.i.i258, %.lr.ph.i25.i.i.i256 ], [ 0, %bb.bs ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i.i257 ; 4 uses
  store atomic i32 -2147483648, ptr %i.nt monotonic, align 4
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  store atomic i32 -2147483648, ptr %i.nu monotonic, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store atomic i32 -2147483648, ptr %i.nv monotonic, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  store atomic i32 -2147483648, ptr %i.nw monotonic, align 4
  %indvars.iv.next.i.i258 = add nuw nsw i64 %indvars.iv.i.i257, 4 ; 2 uses
  %14 = add nuw nsw i64 %indvars.iv.i.i257, 7
  %i.nx = icmp samesign ult i64 %14, %i.ng
  br i1 %i.nx, label %.lr.ph.i25.i.i.i256, label %.preheader.i17.i.loopexit.i.i259, !llvm.loop !5

.lr.ph18.i21.i.i.i252:                            ; preds = %.lr.ph18.i21.i.i.i252.prol.loopexit, %.lr.ph18.i21.i.i.i252
  %indvars.iv.i22.i.i.i253 = phi i64 [ %indvars.iv.next.i23.i.i.i254.7, %.lr.ph18.i21.i.i.i252 ], [ %indvars.iv.i22.i.i.i253.unr, %.lr.ph18.i21.i.i.i252.prol.loopexit ] ; 9 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  store atomic i32 -2147483648, ptr %i.ny monotonic, align 4
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  store atomic i32 -2147483648, ptr %i.oa monotonic, align 4
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store atomic i32 -2147483648, ptr %i.oc monotonic, align 4
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  store atomic i32 -2147483648, ptr %i.oe monotonic, align 4
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store atomic i32 -2147483648, ptr %i.og monotonic, align 4
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  store atomic i32 -2147483648, ptr %i.oi monotonic, align 4
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  store atomic i32 -2147483648, ptr %i.ok monotonic, align 4
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i22.i.i.i253
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 28
  store atomic i32 -2147483648, ptr %i.om monotonic, align 4
  %indvars.iv.next.i23.i.i.i254.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i253, 8 ; 2 uses
  %exitcond.not.i24.i.i.i255.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i254.7, %i.ng
  br i1 %exitcond.not.i24.i.i.i255.7, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i252, !llvm.loop !6

bb.bt:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.on = cmpxchg weak ptr %i.ml, ptr %i.mv, ptr null acq_rel monotonic, align 8
  %i.oo = extractvalue { ptr, i1 } %i.on, 1
  br i1 %i.oo, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit: ; preds = %bb.bt, %.lr.ph18.i21.i.i.i252.prol.loopexit, %.lr.ph18.i21.i.i.i252, %.preheader.i17.i.i.i249, %bb.br, %bb.bq, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread
  %i.op = phi ptr [ null, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread ], [ @_hb_NullPool, %bb.bq ], [ %i.nj, %.lr.ph18.i21.i.i.i252.prol.loopexit ], [ %i.nj, %.preheader.i17.i.i.i249 ], [ @_hb_NullPool, %bb.br ], [ %i.nj, %.lr.ph18.i21.i.i.i252 ], [ %i.mv, %bb.bt ] ; 5 uses
  br i1 %.not368444, label %._crit_edge362, label %.lr.ph361

.lr.ph361:                                        ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.os = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.pa = zext i32 %4 to i64
  %i.pb = zext i32 %8 to i64
  br label %bb.bu

._crit_edge362:                                   ; preds = %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %.not167 = icmp eq ptr %i.op, null
  br i1 %.not167, label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.cg

bb.bu:                                            ; preds = %.lr.ph361, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269
  %.0144360 = phi i32 [ 0, %.lr.ph361 ], [ %i.qv, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269 ]
  %.2154359 = phi ptr [ %3, %.lr.ph361 ], [ %i.qt, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269 ] ; 3 uses
  %.2157358 = phi ptr [ %7, %.lr.ph361 ], [ %i.qu, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269 ] ; 2 uses
  %i.pc = load i32, ptr %.2154359, align 4, !tbaa !324 ; 5 uses
  %i.pd = and i32 %i.pc, 255
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.pe
  %i.pg = load atomic i32, ptr %i.pf monotonic, align 4 ; 3 uses
  %i.ph = icmp eq i32 %i.pg, -1
  br i1 %i.ph, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pi = lshr i32 %i.pg, 20
  %i.pj = lshr i32 %i.pc, 8
  %.not.i260 = icmp eq i32 %i.pi, %i.pj
  br i1 %.not.i260, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.pk = and i32 %i.pg, 1048575                  ; 2 uses
  %i.pl = load i32, ptr %i.oq, align 4, !tbaa !954
  %i.pm = icmp slt i32 %i.pl, 0
  %i.pn = sub nsw i32 0, %i.pk
  %i.po = select i1 %i.pm, i32 %i.pn, i32 %i.pk
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.pp = load i32, ptr %i.lz, align 4, !tbaa !348
  %.not.i263 = icmp ult i32 %i.pc, %i.pp
  br i1 %.not.i263, label %bb.by, label %_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit, !prof !268

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #63
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.or, align 4, !tbaa !304
  store ptr %0, ptr %11, align 8, !tbaa !470
  store ptr null, ptr %i.os, align 8, !tbaa !471
  store ptr %10, ptr %i.ot, align 8, !tbaa !472
  store i8 0, ptr %i.ou, align 8, !tbaa !473
  %i.pq = load ptr, ptr %i.ov, align 8, !tbaa !309
  %i.pr = load i8, ptr %i.mi, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.pt = load i32, ptr %i.ow, align 4, !tbaa !310
  %i.pu = zext i32 %i.pt to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.2.8.insert.ext.i.i = phi i64 [ %i.pu, %bb.bz ], [ 0, %bb.by ]
  %i.pv = call noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS0_19points_aggregator_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %.19.ph.i.i.i232, ptr noundef nonnull %0, i32 noundef %i.pc, ptr noundef nonnull byval(%"struct.OT::glyf_accelerator_t::points_aggregator_t") align 8 %11, ptr %i.pq, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.1.i327, ptr noundef %i.op)
  br i1 %i.pv, label %bb.cd, label %bb.cb, !prof !268

bb.cb:                                            ; preds = %bb.ca
  %i.pw = load ptr, ptr %i.ox, align 8, !tbaa !264 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 20
  %i.py = load atomic i32, ptr %i.px monotonic, align 4 ; 2 uses
  %.not.i.i265 = icmp eq i32 %i.py, 0
  br i1 %.not.i.i265, label %bb.cc, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.cc:                                            ; preds = %bb.cb
  %i.pz = call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.pw)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.cc, %bb.cb
  %.0.i.i266 = phi i32 [ %i.pz, %bb.cc ], [ %i.py, %bb.cb ]
  %i.qa = uitofp i32 %.0.i.i266 to float
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  %i.qb = load float, ptr %i.oy, align 4, !tbaa !1559
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZNK9hb_face_t8get_upemEv.exit.i
  %.0.i267 = phi float [ %i.qa, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ %i.qb, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #63
  %.pre388 = load i32, ptr %.2154359, align 4, !tbaa !324
  br label %_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.bx, %bb.ce
  %i.qc = phi i32 [ %.pre388, %bb.ce ], [ %i.pc, %bb.bx ] ; 3 uses
  %.1.i264 = phi float [ %.0.i267, %bb.ce ], [ 0.000000e+00, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.qd = load float, ptr %i.oz, align 4, !tbaa !618
  %i.qe = fmul float %.1.i264, %i.qd
  %i.qf = fadd float %i.qe, 5.000000e-01
  %i.qg = call noundef float @llvm.floor.f32(float %i.qf)
  %i.qh = fptosi float %i.qg to i32               ; 4 uses
  %i.qi = load i32, ptr %i.oq, align 4, !tbaa !954
  %i.qj = icmp slt i32 %i.qi, 0
  %i.qk = sub nsw i32 0, %i.qh
  %i.ql = select i1 %i.qj, i32 %i.qk, i32 %i.qh   ; 2 uses
  %i.qm = or i32 %i.ql, %i.qc
  %.not.i268 = icmp ult i32 %i.qm, 1048576
  br i1 %.not.i268, label %bb.cf, label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269, !prof !268

bb.cf:                                            ; preds = %_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit
  %i.qn = and i32 %i.qc, 255
  %i.qo = shl nuw i32 %i.qc, 12
  %i.qp = and i32 %i.qo, -1048576
  %i.qq = or disjoint i32 %i.ql, %i.qp
  %i.qr = zext nneg i32 %i.qn to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.qr
  store atomic i32 %i.qq, ptr %i.qs monotonic, align 4
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269

_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit269: ; preds = %bb.cf, %_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit, %bb.bw
  %.0143 = phi i32 [ %i.po, %bb.bw ], [ %i.qh, %_ZNK2OT18glyf_accelerator_t30get_v_origin_with_var_unscaledEjP9hb_font_tR17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE.exit ], [ %i.qh, %bb.cf ]
  store i32 %.0143, ptr %.2157358, align 4, !tbaa !324
  %i.qt = getelementptr inbounds nuw i8, ptr %.2154359, i64 %i.pa
  %i.qu = getelementptr inbounds nuw i8, ptr %.2157358, i64 %i.pb
  %i.qv = add nuw i32 %.0144360, 1                ; 2 uses
  %exitcond386.not = icmp eq i32 %i.qv, %2
  br i1 %exitcond386.not, label %._crit_edge362, label %bb.bu, !llvm.loop !3547

bb.cg:                                            ; preds = %._crit_edge362
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qx = cmpxchg weak ptr %i.qw, ptr null, ptr %i.op acq_rel monotonic, align 8
  %i.qy = extractvalue { ptr, i1 } %i.qx, 1
  %.not.i.i.i271 = icmp eq ptr %i.op, @_hb_NullPool
  %or.cond.i272 = or i1 %.not.i.i.i271, %i.qy
  br i1 %or.cond.i272, label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.op) #63
  br label %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit

_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit: ; preds = %._crit_edge362, %bb.cg, %bb.ch
  %i.qz = cmpxchg weak ptr %i.mb, ptr null, ptr %.1.i327 acq_rel monotonic, align 8
  %i.ra = extractvalue { ptr, i1 } %i.qz, 1
  br i1 %i.ra, label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  call void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.1.i327) #63
  call void @free(ptr noundef nonnull %.1.i327) #63
  br label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit

_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit: ; preds = %bb.ci, %_ZNK12hb_ot_font_t12draw_cache_t18release_gvar_cacheEPN2OT17hb_scalar_cache_tE.exit
  %i.rb = cmpxchg weak ptr %i.aw, ptr null, ptr %.1.ph.i acq_rel monotonic, align 8
end_hunk_7
begin_hunk_8_@_ZL25hb_ot_get_glyph_v_originsP9hb_font_tPvjPKjjPijS4_jS1_:bb.a
  br label %.critedge169

bb.cy:                                            ; preds = %.lr.ph366, %bb.dg
  %.0142365 = phi i32 [ 0, %.lr.ph366 ], [ %i.uk, %bb.dg ]
  %.3364 = phi ptr [ %3, %.lr.ph366 ], [ %i.ui, %bb.dg ] ; 3 uses
  %.3158363 = phi ptr [ %7, %.lr.ph366 ], [ %i.uj, %bb.dg ] ; 2 uses
  %i.tc = load i32, ptr %.3364, align 4, !tbaa !324 ; 3 uses
  %i.td = and i32 %i.tc, 255
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.te
  %i.tg = load atomic i32, ptr %i.tf monotonic, align 4 ; 3 uses
  %i.th = icmp eq i32 %i.tg, -1
  br i1 %i.th, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ti = lshr i32 %i.tg, 20
  %i.tj = lshr i32 %i.tc, 8
  %.not.i295 = icmp eq i32 %i.ti, %i.tj
  br i1 %.not.i295, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.tk = and i32 %i.tg, 1048575                  ; 2 uses
  %i.tl = load i32, ptr %i.sh, align 4, !tbaa !954
  %i.tm = icmp slt i32 %i.tl, 0
  %i.tn = sub nsw i32 0, %i.tk
  %i.to = select i1 %i.tm, i32 %i.tn, i32 %i.tk
  br label %bb.dg

bb.db:                                            ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.tp = call noundef i32 @_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_tb(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %i.tc, ptr noundef nonnull %13, i1 noundef zeroext true)
  %.not165 = icmp eq i32 %i.tp, 0
  br i1 %.not165, label %bb.dd, label %bb.dc, !prof !267

bb.dc:                                            ; preds = %bb.db
  %i.tq = load i32, ptr %i.sy, align 4, !tbaa !373
  %i.tr = load i32, ptr %i.sz, align 4, !tbaa !375
  %i.ts = add nsw i32 %i.sx, %i.tr
  %i.tt = ashr i32 %i.ts, 1
  %i.tu = add nsw i32 %i.tt, %i.tq
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.tv = load i32, ptr %12, align 4, !tbaa !1001
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0 = phi i32 [ %i.tu, %bb.dc ], [ %i.tv, %bb.dd ] ; 3 uses
  %i.tw = load i32, ptr %.3364, align 4, !tbaa !324 ; 3 uses
  %i.tx = load i32, ptr %i.sh, align 4, !tbaa !954
  %i.ty = icmp slt i32 %i.tx, 0
  %i.tz = sub nsw i32 0, %.0
  %i.ua = select i1 %i.ty, i32 %i.tz, i32 %.0     ; 2 uses
  %i.ub = or i32 %i.ua, %i.tw
  %.not.i298 = icmp ult i32 %i.ub, 1048576
  br i1 %.not.i298, label %bb.df, label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299, !prof !268

bb.df:                                            ; preds = %bb.de
  %i.uc = and i32 %i.tw, 255
  %i.ud = shl nuw i32 %i.tw, 12
  %i.ue = and i32 %i.ud, -1048576
  %i.uf = or disjoint i32 %i.ua, %i.ue
  %i.ug = zext nneg i32 %i.uc to i64
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.1.ph.i, i64 %i.ug
  store atomic i32 %i.uf, ptr %i.uh monotonic, align 4
  br label %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299

_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299: ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #63
  br label %bb.dg

bb.dg:                                            ; preds = %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299, %bb.da
  %.1 = phi i32 [ %i.to, %bb.da ], [ %.0, %_ZN10hb_cache_tILj20ELj20ELj8ELb1EE3setEjj.exit299 ]
  store i32 %.1, ptr %.3158363, align 4, !tbaa !324
  %i.ui = getelementptr inbounds nuw i8, ptr %.3364, i64 %i.ta
  %i.uj = getelementptr inbounds nuw i8, ptr %.3158363, i64 %i.tb
  %i.uk = add nuw i32 %.0142365, 1                ; 2 uses
  %exitcond387.not = icmp eq i32 %i.uk, %2
  br i1 %exitcond387.not, label %._crit_edge367, label %bb.cy, !llvm.loop !3548

.critedge169:                                     ; preds = %bb.ct, %._crit_edge367
  %i.ul = cmpxchg weak ptr %i.aw, ptr null, ptr %.1.ph.i acq_rel monotonic, align 8
  %i.um = extractvalue { ptr, i1 } %i.ul, 1
  br i1 %i.um, label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit, label %bb.dh

bb.dh:                                            ; preds = %.critedge169
  call void @free(ptr noundef nonnull %.1.ph.i) #63
  br label %_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit

_ZNK12hb_ot_font_t14origin_cache_t20release_origin_cacheEP10hb_cache_tILj20ELj20ELj8ELb1EE.exit: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit291, %bb.dh, %.critedge169, %bb.cj, %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, %bb.bk, %bb.bj, %bb.aw, %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit
  %.2 = phi i32 [ 0, %bb.bk ], [ 1, %bb.cj ], [ 1, %bb.aw ], [ 1, %_ZNK12hb_ot_font_t14origin_cache_t22release_varStore_cacheEPN2OT17hb_scalar_cache_tE.exit ], [ 0, %bb.bj ], [ 1, %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit ], [ 1, %bb.dh ], [ 1, %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit291 ], [ 1, %.critedge169 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL24hb_ot_draw_glyph_or_failP9hb_font_tPvjP15hb_draw_funcs_tS1_S1_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %6 = alloca %"struct.OT::glyf_impl::path_builder_t", align 8 ; 13 uses
  %7 = alloca %struct.hb_draw_session_t, align 8  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  store ptr %3, ptr %7, align 8, !tbaa !338
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !339
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !310
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK12hb_ot_font_t12check_serialEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %0)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1060   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 5 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not20.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !266
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.j = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj21EE11call_createIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS4_Lj21EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %.thread.i.i.i, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.k = cmpxchg weak ptr %i.g, ptr null, ptr %i.j acq_rel monotonic, align 8
  %i.l = extractvalue { ptr, i1 } %i.k, 1
  br i1 %i.l, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.e, !prof !268

.thread.i.i.i:                                    ; preds = %bb.c
  %i.m = cmpxchg weak ptr %i.g, ptr null, ptr @_hb_NullPool acq_rel monotonic, align 8
  %i.n = extractvalue { ptr, i1 } %i.m, 1
  br i1 %i.n, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, !prof !268

bb.e:                                             ; preds = %bb.d
  %.not3.i.i.i.i = icmp eq ptr %i.j, @_hb_NullPool
  br i1 %.not3.i.i.i.i, label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E7destroyEPS1_(ptr noundef nonnull %i.j)
  br label %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i

_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i: ; preds = %bb.f, %bb.e, %.thread.i.i.i
  %i.o = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.thread.i.i.i, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i, %bb.b
  %.19.ph.i.i.i = phi ptr [ %i.h, %bb.b ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.o, %_ZN16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_E10do_destroyEPS1_.exit.i.i.i ], [ @_hb_NullPool, %.thread.i.i.i ], [ %i.j, %bb.d ]
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i: ; preds = %bb.j, %_ZNK16hb_lazy_loader_tIN2OT18gvar_accelerator_tE21hb_face_lazy_loader_tIS1_Lj21EE9hb_face_tLj21ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.p = load atomic ptr, ptr %i.e acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.q = load ptr, ptr %.19.ph.i.i.i, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !275
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !276
  %i.v = icmp ult i32 %i.u, 20
  %spec.select.i.i1.i.i.i.i = select i1 %i.v, ptr @_hb_NullPool, ptr %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283  ; 2 uses
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x) ; 2 uses
  %i.z = tail call i16 @llvm.umin.i16(i16 %i.y, i16 4096) ; 2 uses
  %.sroa.speculated.i.i = zext nneg i16 %i.z to i32 ; 2 uses
  %.not.i1.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i1.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i16 %i.z to i64               ; 5 uses
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 4
  %i.ad = tail call noalias noundef ptr @malloc(i64 noundef %i.ac) #65 ; 6 uses
  %.not16.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not16.i.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  store i32 %.sroa.speculated.i.i, ptr %i.ad, align 4, !tbaa !480
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 10 uses
  %i.af = icmp ugt i16 %i.y, 3
  br i1 %i.af, label %.lr.ph.i25.i.i.i, label %.preheader.i17.i.i.i

.preheader.i17.i.loopexit.i.i:                    ; preds = %.lr.ph.i25.i.i.i
  %i.ag = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i17.i.i.i

.preheader.i17.i.i.i:                             ; preds = %.preheader.i17.i.loopexit.i.i, %bb.i
  %.0.lcssa.i18.i.i.i = phi i32 [ 0, %bb.i ], [ %i.ag, %.preheader.i17.i.loopexit.i.i ] ; 2 uses
  %i.ah = icmp ult i32 %.0.lcssa.i18.i.i.i, %.sroa.speculated.i.i
  br i1 %i.ah, label %.lr.ph18.preheader.i19.i.i.i, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit

.lr.ph18.preheader.i19.i.i.i:                     ; preds = %.preheader.i17.i.i.i
  %i.ai = zext i32 %.0.lcssa.i18.i.i.i to i64     ; 4 uses
  %i.aj = sub nsw i64 %i.aa, %i.ai
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol

.lr.ph18.i21.i.i.i.prol:                          ; preds = %.lr.ph18.preheader.i19.i.i.i, %.lr.ph18.i21.i.i.i.prol
  %indvars.iv.i22.i.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ], [ %i.ai, %.lr.ph18.preheader.i19.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i.i ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i.prol
  store atomic i32 -2147483648, ptr %i.ak monotonic, align 4
  %indvars.iv.next.i23.i.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.i.prol, !llvm.loop !3549

.lr.ph18.i21.i.i.i.prol.loopexit:                 ; preds = %.lr.ph18.i21.i.i.i.prol, %.lr.ph18.preheader.i19.i.i.i
  %indvars.iv.i22.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph18.preheader.i19.i.i.i ], [ %indvars.iv.next.i23.i.i.i.prol, %.lr.ph18.i21.i.i.i.prol ]
  %i.al = sub nsw i64 %i.ai, %i.aa
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i25.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i25.i.i.i ], [ 0, %bb.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.an monotonic, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store atomic i32 -2147483648, ptr %i.ao monotonic, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store atomic i32 -2147483648, ptr %i.ap monotonic, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store atomic i32 -2147483648, ptr %i.aq monotonic, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %8 = add nuw nsw i64 %indvars.iv.i.i, 7
  %i.ar = icmp samesign ult i64 %8, %i.aa
  br i1 %i.ar, label %.lr.ph.i25.i.i.i, label %.preheader.i17.i.loopexit.i.i, !llvm.loop !5

.lr.ph18.i21.i.i.i:                               ; preds = %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i
  %indvars.iv.i22.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i.7, %.lr.ph18.i21.i.i.i ], [ %indvars.iv.i22.i.i.i.unr, %.lr.ph18.i21.i.i.i.prol.loopexit ] ; 9 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  store atomic i32 -2147483648, ptr %i.as monotonic, align 4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store atomic i32 -2147483648, ptr %i.au monotonic, align 4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store atomic i32 -2147483648, ptr %i.aw monotonic, align 4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store atomic i32 -2147483648, ptr %i.ay monotonic, align 4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store atomic i32 -2147483648, ptr %i.ba monotonic, align 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  store atomic i32 -2147483648, ptr %i.bc monotonic, align 4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store atomic i32 -2147483648, ptr %i.be monotonic, align 4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i22.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store atomic i32 -2147483648, ptr %i.bg monotonic, align 4
  %indvars.iv.next.i23.i.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.i.7, %i.aa
  br i1 %exitcond.not.i24.i.i.i.7, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %.lr.ph18.i21.i.i.i, !llvm.loop !6

bb.j:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i
  %i.bh = cmpxchg weak ptr %i.e, ptr %i.p, ptr null acq_rel monotonic, align 8
  %i.bi = extractvalue { ptr, i1 } %i.bh, 1
  br i1 %i.bi, label %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t12create_cacheEv.exit.i

_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit: ; preds = %bb.j, %.lr.ph18.i21.i.i.i.prol.loopexit, %.lr.ph18.i21.i.i.i, %.preheader.i17.i.i.i, %bb.h, %bb.g, %bb.a
  %.052 = phi ptr [ null, %bb.a ], [ @_hb_NullPool, %bb.g ], [ %i.ad, %.lr.ph18.i21.i.i.i.prol.loopexit ], [ %i.ad, %.preheader.i17.i.i.i ], [ @_hb_NullPool, %bb.h ], [ %i.ad, %.lr.ph18.i21.i.i.i ], [ %i.p, %bb.j ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !264 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 288 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bn = load atomic ptr, ptr %i.bl acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i18, label %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i18:                                   ; preds = %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit, %bb.n
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !266
  %.not.i.i.i.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i19, label %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit, label %bb.k, !prof !267

bb.k:                                             ; preds = %.lr.ph.i.i.i18
  %i.bp = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj23EE11call_createIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS4_Lj23EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) ; 2 uses
  %.not10.i.i.i20 = icmp eq ptr %i.bp, null
  br i1 %.not10.i.i.i20, label %bb.l, label %bb.m, !prof !267

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.l ], [ %i.bp, %bb.k ] ; 3 uses
  %i.bq = cmpxchg weak ptr %i.bl, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.br = extractvalue { ptr, i1 } %i.bq, 1
  br i1 %i.br, label %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit, label %bb.n, !prof !268

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.bs = load atomic ptr, ptr %i.bl acquire, align 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i21, label %.lr.ph.i.i.i18, label %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i18, %bb.m, %bb.n, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit
  %.19.ph.i.i.i17 = phi ptr [ %i.bn, %_ZNK12hb_ot_font_t12draw_cache_t18acquire_gvar_cacheERKN2OT18gvar_accelerator_tE.exit ], [ @_hb_NullPool, %.lr.ph.i.i.i18 ], [ %i.bs, %bb.n ], [ %.07.i.i.i, %bb.m ]
  %i.bt = call noundef zeroext i1 @_ZNK2OT4VARC13accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_t(ptr noundef nonnull align 8 dereferenceable(16) %.19.ph.i.i.i17, ptr noundef %0, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %7)
  br i1 %i.bt, label %bb.ai, label %bb.o

bb.o:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18VARC_accelerator_tE21hb_face_lazy_loader_tIS1_Lj23EE9hb_face_tLj23ES1_EptEv.exit
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !264 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 224 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bx = load atomic ptr, ptr %i.bv acquire, align 8 ; 2 uses
  %.not14.i.i.i22 = icmp eq ptr %i.bx, null
  br i1 %.not14.i.i.i22, label %.lr.ph.i.i.i24, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i24:                                   ; preds = %bb.o, %bb.s
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !266
  %.not.i.i.i.i25 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i25, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit, label %bb.p, !prof !267

bb.p:                                             ; preds = %.lr.ph.i.i.i24
  %i.bz = call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj15EE11call_createIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS4_Lj15EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %i.bz, null
  br i1 %.not10.i.i.i26, label %bb.q, label %bb.r, !prof !267

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.07.i.i.i27 = phi ptr [ @_hb_NullPool, %bb.q ], [ %i.bz, %bb.p ] ; 3 uses
  %i.ca = cmpxchg weak ptr %i.bv, ptr null, ptr %.07.i.i.i27 acq_rel monotonic, align 8
  %i.cb = extractvalue { ptr, i1 } %i.ca, 1
  br i1 %i.cb, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit, label %bb.s, !prof !268

bb.s:                                             ; preds = %bb.r
  call void @_ZN16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i27)
  %i.cc = load atomic ptr, ptr %i.bv acquire, align 8 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i28, label %.lr.ph.i.i.i24, label %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i24, %bb.r, %bb.s, %bb.o
  %.19.ph.i.i.i23 = phi ptr [ %i.bx, %bb.o ], [ @_hb_NullPool, %.lr.ph.i.i.i24 ], [ %i.cc, %bb.s ], [ %.07.i.i.i27, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cd = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i23, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !348
  %.not20.i = icmp eq i32 %i.ce, 0
  br i1 %.not20.i, label %_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread54, label %bb.t

_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread54: ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.x

bb.t:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18glyf_accelerator_tE21hb_face_lazy_loader_tIS1_Lj15EE9hb_face_tLj15ES1_EptEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i23, i64 48 ; 3 uses
  %i.cg = load atomic ptr, ptr %i.cf acquire, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = cmpxchg weak ptr %i.cf, ptr %i.cg, ptr null acq_rel monotonic, align 8
  %i.ci = extractvalue { ptr, i1 } %i.ch, 1
  br i1 %i.ci, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i, !prof !268

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i: ; preds = %bb.u, %bb.t
  %i.cj = call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not.i29 = icmp eq ptr %i.cj, null
  br i1 %.not.i29, label %_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i, !prof !466

_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread: ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ai

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i: ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i, %bb.u
  %.1.i19.i = phi ptr [ %i.cj, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.i ], [ %i.cg, %bb.u ] ; 4 uses
  store ptr %0, ptr %6, align 8, !tbaa !351
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.ck, align 8, !tbaa !352
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.cl, align 8, !tbaa !353
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 0, ptr %i.cm, align 4, !tbaa !353
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.cn, align 8, !tbaa !353
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i8 0, ptr %i.co, align 4, !tbaa !353
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i8 0, ptr %i.cp, align 8, !tbaa !353
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !309
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i
  %i.cv = load i32, ptr %i.c, align 4, !tbaa !310
  %i.cw = zext i32 %i.cv to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i
  %.sroa.2.8.insert.ext.i.i = phi i64 [ %i.cw, %bb.v ], [ 0, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread.i ]
  %i.cx = call noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS_9glyf_impl14path_builder_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %.19.ph.i.i.i23, ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull byval(%"struct.OT::glyf_impl::path_builder_t") align 8 %6, ptr %i.cr, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.1.i19.i, ptr noundef %.052) ; 2 uses
  %i.cy = cmpxchg weak ptr %i.cf, ptr null, ptr %.1.i19.i acq_rel monotonic, align 8
  %i.cz = extractvalue { ptr, i1 } %i.cy, 1
  br i1 %i.cz, label %_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit, label %.split

.split:                                           ; preds = %bb.w
  call void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.1.i19.i) #63
  call void @free(ptr noundef nonnull %.1.i19.i) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.cx, label %bb.ai, label %bb.x

_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.cx, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %.split, %_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit.thread54, %_ZNK2OT18glyf_accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPNS_17hb_scalar_cache_tE.exit
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !264 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 240 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dd = load atomic ptr, ptr %i.db acquire, align 8 ; 2 uses
  %.not14.i.i.i30 = icmp eq ptr %i.dd, null
  br i1 %.not14.i.i.i30, label %.lr.ph.i.i.i32, label %_ZNK16hb_lazy_loader_tIN2OT18cff2_accelerator_tE21hb_face_lazy_loader_tIS1_Lj17EE9hb_face_tLj17ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i32:                                   ; preds = %bb.x, %bb.ab
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !266
  %.not.i.i.i.i33 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i33, label %_ZNK16hb_lazy_loader_tIN2OT18cff2_accelerator_tE21hb_face_lazy_loader_tIS1_Lj17EE9hb_face_tLj17ES1_EptEv.exit, label %bb.y, !prof !267

bb.y:                                             ; preds = %.lr.ph.i.i.i32
end_hunk_8
