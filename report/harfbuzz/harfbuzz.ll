Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@_ZNK2OT4cff113accelerator_t11get_extentsEP9hb_font_tjP18hb_glyph_extents_tPl:bb.a
  %i.aq = trunc i32 %i.ag to i16
  %i.ar = insertelement <2 x i16> poison, i16 %i.aq, i64 0
  %i.as = insertelement <2 x i16> %i.ar, i16 %i.ap, i64 1
  %i.at = sitofp <2 x i16> %i.as to <2 x float>
  %i.au = fmul <2 x float> %i.ai, %i.at
  %i.av = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.au)
  %i.aw = sitofp <2 x i32> %i.ao to <2 x float>
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = fptosi <2 x float> %i.ax to <2 x i32>
  store <2 x i32> %i.ay, ptr %i.p, align 4, !tbaa !324
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
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
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 12 uses
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
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod18 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.t monotonic, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store atomic i32 -2147483648, ptr %i.u monotonic, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic i32 -2147483648, ptr %i.v monotonic, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store atomic i32 -2147483648, ptr %i.w monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i.loopexit.i

.preheader.i.loopexit.i:                          ; preds = %.preheader.i.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.x = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.x, %.preheader.i.loopexit.i ] ; 2 uses
  %i.y = icmp samesign ult i32 %.0.lcssa.i.i, %i.i
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
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i.i ] ; 3 uses
  %niter20 = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter20.next.1, %.lr.ph.i.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.ae monotonic, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store atomic i32 -2147483648, ptr %i.af monotonic, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store atomic i32 -2147483648, ptr %i.ag monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store atomic i32 -2147483648, ptr %i.ah monotonic, align 4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store atomic i32 -2147483648, ptr %i.aj monotonic, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store atomic i32 -2147483648, ptr %i.ak monotonic, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store atomic i32 -2147483648, ptr %i.al monotonic, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store atomic i32 -2147483648, ptr %i.am monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter20.next.1 = add i64 %niter20, 2           ; 2 uses
  %niter20.ncmp.1.not = icmp eq i64 %niter20.next.1, %unroll_iter19
  br i1 %niter20.ncmp.1.not, label %.preheader.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !5

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph18.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 9 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  store atomic i32 -2147483648, ptr %i.an monotonic, align 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store atomic i32 -2147483648, ptr %i.ap monotonic, align 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store atomic i32 -2147483648, ptr %i.ar monotonic, align 4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store atomic i32 -2147483648, ptr %i.at monotonic, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store atomic i32 -2147483648, ptr %i.av monotonic, align 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store atomic i32 -2147483648, ptr %i.ax monotonic, align 4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store atomic i32 -2147483648, ptr %i.az monotonic, align 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  store atomic i32 -2147483648, ptr %i.bb monotonic, align 4
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.7, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i.i, !llvm.loop !6

bb.d:                                             ; preds = %bb.b
  %i.bc = zext i16 %i.h to i64                    ; 4 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 4
  %i.bf = tail call noalias noundef ptr @malloc(i64 noundef %i.be) #65 ; 6 uses
  %.not16.i = icmp eq ptr %i.bf, null
  br i1 %.not16.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %i.bf, align 4, !tbaa !480
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 12 uses
  %i.bh = icmp ugt i16 %i.h, 3
  br i1 %i.bh, label %.lr.ph.i25.i.preheader, label %.preheader.i17.i

.lr.ph.i25.i.preheader:                           ; preds = %bb.e
  %2 = zext i16 %i.h to i64
  %i.bi = add nsw i64 %2, -4                      ; 2 uses
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
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.i25.i.preheader ], [ %indvars.iv.next.1, %.preheader.i17.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.bn monotonic, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store atomic i32 -2147483648, ptr %i.bo monotonic, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store atomic i32 -2147483648, ptr %i.bp monotonic, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store atomic i32 -2147483648, ptr %i.bq monotonic, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 4
  br label %.preheader.i17.i.loopexit

.preheader.i17.i.loopexit:                        ; preds = %.preheader.i17.i.loopexit.unr-lcssa, %.lr.ph.i25.i.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.preheader.i17.i.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.lr.ph.i25.i.epil.preheader ]
  %i.br = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %.preheader.i17.i

.preheader.i17.i:                                 ; preds = %.preheader.i17.i.loopexit, %bb.e
  %.0.lcssa.i18.i = phi i32 [ 0, %bb.e ], [ %i.br, %.preheader.i17.i.loopexit ] ; 2 uses
  %i.bs = icmp samesign ult i32 %.0.lcssa.i18.i, %i.i
  br i1 %i.bs, label %.lr.ph18.preheader.i19.i, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit

.lr.ph18.preheader.i19.i:                         ; preds = %.preheader.i17.i
  %i.bt = zext i32 %.0.lcssa.i18.i to i64         ; 4 uses
  %i.bu = sub nsw i64 %i.bc, %i.bt
  %xtraiter13 = and i64 %i.bu, 7                  ; 2 uses
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %.lr.ph18.i21.i.prol.loopexit, label %.lr.ph18.i21.i.prol

.lr.ph18.i21.i.prol:                              ; preds = %.lr.ph18.preheader.i19.i, %.lr.ph18.i21.i.prol
  %indvars.iv.i22.i.prol = phi i64 [ %indvars.iv.next.i23.i.prol, %.lr.ph18.i21.i.prol ], [ %i.bt, %.lr.ph18.preheader.i19.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.prol ], [ 0, %.lr.ph18.preheader.i19.i ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i.prol
  store atomic i32 -2147483648, ptr %i.bv monotonic, align 4
  %indvars.iv.next.i23.i.prol = add nuw nsw i64 %indvars.iv.i22.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter13
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.prol.loopexit, label %.lr.ph18.i21.i.prol, !llvm.loop !2156

.lr.ph18.i21.i.prol.loopexit:                     ; preds = %.lr.ph18.i21.i.prol, %.lr.ph18.preheader.i19.i
  %indvars.iv.i22.i.unr = phi i64 [ %i.bt, %.lr.ph18.preheader.i19.i ], [ %indvars.iv.next.i23.i.prol, %.lr.ph18.i21.i.prol ]
  %i.bw = sub nsw i64 %i.bt, %i.bc
  %i.bx = icmp ugt i64 %i.bw, -8
  br i1 %i.bx, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i21.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i, %.lr.ph.i25.i.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.i25.i.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.i25.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv ; 4 uses
  store atomic i32 -2147483648, ptr %i.by monotonic, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store atomic i32 -2147483648, ptr %i.bz monotonic, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store atomic i32 -2147483648, ptr %i.ca monotonic, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store atomic i32 -2147483648, ptr %i.cb monotonic, align 4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store atomic i32 -2147483648, ptr %i.cd monotonic, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  store atomic i32 -2147483648, ptr %i.ce monotonic, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store atomic i32 -2147483648, ptr %i.cf monotonic, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  store atomic i32 -2147483648, ptr %i.cg monotonic, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.unr-lcssa, label %.lr.ph.i25.i, !llvm.loop !5

.lr.ph18.i21.i:                                   ; preds = %.lr.ph18.i21.i.prol.loopexit, %.lr.ph18.i21.i
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i23.i.7, %.lr.ph18.i21.i ], [ %indvars.iv.i22.i.unr, %.lr.ph18.i21.i.prol.loopexit ] ; 9 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  store atomic i32 -2147483648, ptr %i.ch monotonic, align 4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store atomic i32 -2147483648, ptr %i.cj monotonic, align 4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store atomic i32 -2147483648, ptr %i.cl monotonic, align 4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store atomic i32 -2147483648, ptr %i.cn monotonic, align 4
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store atomic i32 -2147483648, ptr %i.cp monotonic, align 4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store atomic i32 -2147483648, ptr %i.cr monotonic, align 4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store atomic i32 -2147483648, ptr %i.ct monotonic, align 4
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i22.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  store atomic i32 -2147483648, ptr %i.cv monotonic, align 4
  %indvars.iv.next.i23.i.7 = add nuw nsw i64 %indvars.iv.i22.i, 8 ; 2 uses
  %exitcond.not.i24.i.7 = icmp eq i64 %indvars.iv.next.i23.i.7, %i.bc
  br i1 %exitcond.not.i24.i.7, label %_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit, label %.lr.ph18.i21.i, !llvm.loop !6

_ZN2OT17hb_scalar_cache_t6createEjPS0_.exit:      ; preds = %.lr.ph18.i21.i.prol.loopexit, %.lr.ph18.i21.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %bb.a, %.preheader.i.i, %bb.d, %.preheader.i17.i
  %.1.i = phi ptr [ @_hb_NullPool, %bb.a ], [ @_hb_NullPool, %bb.d ], [ %1, %.lr.ph18.i.i.prol.loopexit ], [ %1, %.preheader.i.i ], [ %i.bf, %.preheader.i17.i ], [ %1, %.lr.ph18.i.i ], [ %i.bf, %.lr.ph18.i21.i ], [ %i.bf, %.lr.ph18.i21.i.prol.loopexit ]
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
end_hunk_0
