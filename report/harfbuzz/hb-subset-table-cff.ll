inline.NumInlined: 7369
inline.NumDeleted: 3187
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t:bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.k = load i16, ptr %0, align 1, !tbaa !255    ; 2 uses
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = icmp eq i16 %i.k, 0
  br i1 %i.m, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext i16 %i.l to i32
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 5 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = load i32, ptr %i.g, align 8, !tbaa !248
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.not6 = icmp ugt i64 %i.t, %i.v
  br i1 %.not6, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.a, align 1, !tbaa !251   ; 4 uses
  %i.x = add i8 %i.w, -1
  %or.cond = icmp ult i8 %i.x, 4
  br i1 %or.cond, label %bb.e, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = zext nneg i8 %i.w to i32
  %i.z = mul nuw nsw i32 %i.o, %i.y               ; 2 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = sub i64 %i.ab, %i.r
  %i.ad = trunc i64 %i.ac to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.z, %i.ad
  br i1 %.not12.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !249
  %i.ag = sub i32 %i.af, %i.z                     ; 3 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !249
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.f:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit
  %i.ai = zext nneg i8 %i.w to i64
  %i.aj = zext i16 %i.l to i64                    ; 5 uses
  %i.ak = add nuw nsw i64 %i.aj, 1
  %i.al = mul nuw nsw i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  switch i8 %i.w, label %default.unreachable [
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !251
  %i.ap = zext i8 %i.ao to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.aj
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !255
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.i:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.aj ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !257
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !257
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = or disjoint i32 %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !257
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.j:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aj
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !258
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %i.bi)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

default.unreachable:                              ; preds = %bb.f
  unreachable

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.bj, %bb.j ], [ %i.ap, %bb.g ], [ %i.at, %bb.h ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bk = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.bl = sub i64 %i.bk, %i.s
  %.not.i = icmp ugt i64 %i.bl, %i.v
  %i.bm = sub i64 %i.ab, %i.bk
  %i.bn = trunc i64 %i.bm to i32
  %.not12.i = icmp ugt i32 %.0.i, %i.bn
  %or.cond10 = select i1 %.not.i, i1 true, i1 %.not12.i
  br i1 %or.cond10, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit
  %i.bo = sub i32 %i.ag, %.0.i                    ; 2 uses
  store i32 %i.bo, ptr %i.ae, align 4, !tbaa !249
  %i.bp = icmp sgt i32 %i.bo, 0
  br label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread: ; preds = %bb.k, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit, %bb.e, %bb.b, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, %bb.d, %bb.c, %bb.a
  %i.bq = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit ], [ %i.bp, %bb.k ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit ]
  ret i1 %i.bq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv(ptr noundef nonnull align 1 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !255    ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !251   ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = add nuw nsw i64 %i.c, 1
  %i.h = mul nuw nsw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  %i.k = load i8, ptr %i.j, align 1, !tbaa !251
  %i.l = zext i8 %i.k to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.c
  %i.n = load i16, ptr %i.m, align 1, !tbaa !255
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [3 x i8], ptr %i.i, i64 %i.c ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !257
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !257
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !257
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.c
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !258
  %i.af = tail call noundef i32 @llvm.bswap.i32(i32 %i.ae)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.af, %bb.f ], [ %i.l, %bb.c ], [ %i.p, %bb.d ], [ %i.ac, %bb.e ], [ 0, %bb.b ]
  %i.ag = add i32 %.0.i, -1
  %i.ah = zext i32 %i.ag to i64
  %narrow = add nuw nsw i64 %i.h, 3
  %i.ai = add nuw nsw i64 %narrow, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit
  %.0 = phi i64 [ %i.ai, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit ], [ 2, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !255
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %.critedge, !prof !75

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !251   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 8 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread [
    i8 1, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread
    i8 2, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17
    i8 3, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20
    i8 4, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  ]

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread: ; preds = %bb.b
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !251
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !251
  %i.m = zext i8 %i.l to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !255
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !255
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.w = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.w ; 6 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !257
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !257
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !257
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !257
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !257
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !257
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.ax = zext nneg i32 %1 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !258
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !258
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.ba, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.j, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.r, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aj, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.bd, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.m, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.v, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aw, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.be = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.be, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, !prof !309

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.bf = load i16, ptr %0, align 1, !tbaa !255
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf) ; 5 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !251
  %i.bk = zext i8 %i.bj to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bl = zext i16 %i.bg to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !255
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = zext i16 %i.bo to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bq = zext i16 %i.bg to i64
  %i.br = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.bq ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !257
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !257
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = or disjoint i32 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !257
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.bz, %i.cc
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.ce = zext i16 %i.bg to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !258
  %i.ch = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.ch, %bb.f ], [ %i.bk, %bb.c ], [ %i.bp, %bb.d ], [ %i.cd, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread ]
  %i.ci = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.ci, label %.critedge, label %bb.g, !prof !74

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13
  %i.cj = zext i8 %i.e to i64
  %i.ck = zext i16 %i.bg to i64
  %i.cl = add nuw nsw i64 %i.ck, 1
  %i.cm = mul nuw nsw i64 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.co = zext i32 %.0.i1628 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = sub i32 %.0.i1029, %.0.i1628
  %.sroa.6.8.insert.ext = zext i32 %i.cq to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.cp, %bb.g ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ %.sroa.6.8.insert.ext, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 1 dereferenceable(6) ptr @_ZN3CFFL20StructAtOffsetOrNullINS_12CFF1FDSelectEJRKN2OT7NumTypeILb1EtLj2EEEEEERKT_PKviR21hb_sanitize_context_tDpOT0_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(62) %2, i16 %.0.val) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !248
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.not2 = icmp ugt i64 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  br i1 %.not2, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %.0.val)
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.p = sub i64 %i.o, %i.f
  %.not.i = icmp ugt i64 %i.p, %i.j
  br i1 %.not.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.q = load i8, ptr %i.b, align 1, !tbaa !251
  switch i8 %i.q, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread [
    i8 0, label %bb.e
    i8 3, label %.split
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.o, %i.s
  %i.u = load i32, ptr %i.h, align 8, !tbaa !248
  %i.v = zext i32 %i.u to i64
  %.not.i.i = icmp ugt i64 %i.t, %i.v
  br i1 %.not.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.f, !prof !74

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !239  ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.o, %i.z
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !248
  %i.ac = zext i32 %i.ab to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.g, !prof !261

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !246
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.o
  %i.ag = trunc i64 %i.af to i32
  %.not12.i.i.i.i.i = icmp ugt i32 %i.x, %i.ag
  br i1 %.not12.i.i.i.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit, !prof !261

.split:                                           ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.ah = tail call noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(5) %i.n, ptr noundef nonnull %2, i32 noundef %i.m)
  br i1 %i.ah, label %bb.h, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread

_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !249
  %i.ak = sub i32 %i.aj, %i.x                     ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !249
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread

_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread: ; preds = %bb.g, %bb.e, %bb.f, %bb.d, %bb.c, %.split, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.b, %bb.a, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread
  %.2 = phi ptr [ %i.b, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit ], [ @_hb_NullPool, %bb.a ], [ @_hb_NullPool, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread ], [ @_hb_NullPool, %bb.b ], [ %i.b, %.split ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF18dict_interpreter_tINS_32cff1_private_dict_opset_subset_tENS_31cff1_private_dict_values_base_tINS_8op_str_tEEENS_12interp_env_tINS_8number_tEEEE9interpretERS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %1, align 8, !tbaa !291
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store ptr @_hb_NullPool, ptr %i.b, align 8, !tbaa !292
  %.pre = load ptr, ptr %0, align 8, !tbaa !310   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.pre4 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !262
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre6 = load i32, ptr %.phi.trans.insert5, align 8, !tbaa !272
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit, %bb.a
  %i.c = phi i32 [ %i.x, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ %.pre6, %bb.a ] ; 2 uses
  %i.d = phi i32 [ %i.v, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ %.pre4, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.t, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %.not = icmp ugt i32 %i.g, %i.c                 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZNK5graph20LigatureSubstFormat111clone_rangeERNS_24gsubgpos_graph_context_tEj11hb_vector_tIjLb0EEjj:bb.a
  %.sroa.422.0.extract.trunc = trunc nuw nsw i64 %.sroa.422.0.extract.shift to i32
  %i.ew = add i32 %.0135326, %.sroa.021.0.extract.trunc
  %.sroa.speculated248 = call i32 @llvm.umax.i32(i32 %i.ew, i32 %.0135326) ; 2 uses
  %i.ex = add i32 %.0135326, %.sroa.422.0.extract.trunc
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ex, i32 %i.cp) ; 2 uses
  %.not149 = icmp ult i32 %.sroa.speculated248, %4
  %.not150 = icmp ugt i32 %.sroa.speculated, %5
  %or.cond308 = select i1 %.not149, i1 true, i1 %.not150
  br i1 %or.cond308, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ey, i32 %.0119328) ; 2 uses
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !543, !nonnull !312, !align !313
  %i.fa = load i16, ptr %i.d, align 1, !tbaa !255
  %i.fb = call noundef i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fc = zext i16 %i.fb to i64
  %.not.i169 = icmp samesign ult i64 %indvars.iv, %i.fc
  br i1 %.not.i169, label %bb.x, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171, !prof !75

bb.x:                                             ; preds = %bb.w
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171: ; preds = %bb.w, %bb.x
  %.0.i170 = phi ptr [ %i.fd, %bb.x ], [ @_hb_NullPool, %bb.w ]
  %i.fe = load i16, ptr %i.v, align 1, !tbaa !255
  %i.ff = call noundef i16 @llvm.bswap.i16(i16 %i.fe)
  %i.fg = zext i16 %i.ff to i32
  %.not.i172 = icmp ult i32 %.0128327, %i.fg
  br i1 %.not.i172, label %bb.z, label %bb.y, !prof !75

bb.y:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

bb.z:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.fh = zext nneg i32 %.0128327 to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.fh
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.y, %bb.z
  %.0.i173 = phi ptr [ @_hb_CrapPool, %bb.y ], [ %i.fi, %bb.z ]
  %i.fj = call noundef i32 @_ZN5graph7graph_t10move_childIN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEEEjjPKT_jSE_(ptr noundef nonnull align 8 dereferenceable(88) %i.ez, i32 noundef %2, ptr noundef nonnull %.0.i170, i32 noundef %i.j, ptr noundef nonnull %.0.i173) ; 2 uses
  %i.fk = load i16, ptr %i.dc, align 1, !tbaa !255
  %i.fl = call noundef i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = load i32, ptr %i.dq, align 4, !tbaa !448 ; 5 uses
  %.not.i174 = icmp ult i32 %i.fn, %i.fm
  br i1 %.not.i174, label %bb.aa, label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

bb.aa:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.fo = sub nuw nsw i32 %i.fm, %i.fn
  %i.fp = load ptr, ptr %i.do, align 8, !tbaa !407 ; 5 uses
  %.not.i.i.i.i.i175 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i.i.i175, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, label %bb.ab, !prof !74

bb.ab:                                            ; preds = %bb.aa
  %.sroa.2.8.insert.ext.i.i.i.i = zext nneg i32 %i.fn to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopIN22hb_serialize_context_t8object_t6link_tEZN10hb_array_tIS2_E6_qsortIS2_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS2_E11hb_priorityILj1EEEUlRKS2_SH_E_EvPS7_mT0_(ptr noundef %i.fp, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i.i)
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx.i.i.i.i.i.i
  %.not1.i.i.i.i.i = icmp eq i32 %i.fn, 1
  br i1 %.not1.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.ab
  %.01518.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.critedge.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %.01519.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i ], [ %.01518.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.fr = icmp ugt ptr %.01519.i.i.i.i.i.i, %i.fp
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.ac
  %.016.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.ac ], [ %.01519.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 7 uses
  %i.fs = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !443 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !443 ; 2 uses
  %i.fw = sub i32 %i.ft, %i.fv
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ft, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 8
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = sub i32 %i.fy, %i.ga
  %.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 %i.gb, i32 %i.fw
  %i.gc = icmp sgt i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.gc, label %bb.ac, label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.gd = icmp ult ptr %.015.i.i.i.i.i.i, %i.fq
  br i1 %i.gd, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, !llvm.loop !852

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ge = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.ge, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ge, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !440
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i.i, align 4
  %i.gf = icmp ugt ptr %i.ge, %i.fp
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !llvm.loop !853

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.ab, %bb.aa
  %i.gg = load ptr, ptr %i.do, align 8, !tbaa !407 ; 2 uses
  %i.gh = load i32, ptr %i.dq, align 4, !tbaa !406 ; 3 uses
  %.not1920.i = icmp eq i32 %i.gh, 0
  br i1 %.not1920.i, label %._crit_edge.i, label %.lr.ph.i177.preheader

.lr.ph.i177.preheader:                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gi = zext i32 %i.gh to i64
  %.idx.i176 = mul nuw nsw i64 %i.gi, 12
  %i.gj = add nsw i64 %.idx.i176, -12             ; 2 uses
  %i.gk = udiv i64 %i.gj, 12
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %xtraiter444 = and i64 %i.gl, 7                 ; 3 uses
  %i.gm = icmp ult i64 %i.gj, 84
  br i1 %i.gm, label %.lr.ph.i177.epil.preheader, label %.lr.ph.i177.preheader.new

.lr.ph.i177.preheader.new:                        ; preds = %.lr.ph.i177.preheader
  %unroll_iter447 = and i64 %i.gl, 4611686018427387896
  br label %.lr.ph.i177

._crit_edge.loopexit.i178.unr-lcssa:              ; preds = %.lr.ph.i177
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil.preheader

.lr.ph.i177.epil.preheader:                       ; preds = %._crit_edge.loopexit.i178.unr-lcssa, %.lr.ph.i177.preheader
  %.022.i.epil.init = phi ptr [ %i.gg, %.lr.ph.i177.preheader ], [ %i.ho, %._crit_edge.loopexit.i178.unr-lcssa ]
  %.01821.i.epil.init = phi i32 [ 2, %.lr.ph.i177.preheader ], [ %i.hn, %._crit_edge.loopexit.i178.unr-lcssa ]
  %lcmp.mod446 = icmp ne i64 %xtraiter444, 0
  call void @llvm.assume(i1 %lcmp.mod446)
  br label %.lr.ph.i177.epil

.lr.ph.i177.epil:                                 ; preds = %.lr.ph.i177.epil, %.lr.ph.i177.epil.preheader
  %.022.i.epil = phi ptr [ %i.gp, %.lr.ph.i177.epil ], [ %.022.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %.01821.i.epil = phi i32 [ %i.go, %.lr.ph.i177.epil ], [ %.01821.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i177.epil ], [ 0, %.lr.ph.i177.epil.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 4
  store i32 %.01821.i.epil, ptr %i.gn, align 4, !tbaa !443
  %i.go = add i32 %.01821.i.epil, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter444
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil, !llvm.loop !1875

._crit_edge.loopexit.i178:                        ; preds = %.lr.ph.i177.epil, %._crit_edge.loopexit.i178.unr-lcssa
  %i.gq = trunc i32 %i.gh to i16
  %i.gr = call i16 @llvm.bswap.i16(i16 %i.gq)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i178, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gs = phi i16 [ %i.gr, %._crit_edge.loopexit.i178 ], [ 0, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i ]
  store i16 %i.gs, ptr %i.dc, align 1, !tbaa !257
  %i.gt = shl nuw nsw i32 %i.fo, 1
  %i.gu = load ptr, ptr %i.dd, align 8, !tbaa !434
  %i.gv = zext nneg i32 %i.gt to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 %i.gw
  store ptr %i.gx, ptr %i.dd, align 8, !tbaa !434
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.i177.preheader.new
  %.022.i = phi ptr [ %i.gg, %.lr.ph.i177.preheader.new ], [ %i.ho, %.lr.ph.i177 ] ; 9 uses
  %.01821.i = phi i32 [ 2, %.lr.ph.i177.preheader.new ], [ %i.hn, %.lr.ph.i177 ] ; 9 uses
  %niter448 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %niter448.next.7, %.lr.ph.i177 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  store i32 %.01821.i, ptr %i.gy, align 4, !tbaa !443
  %i.gz = add nuw nsw i32 %.01821.i, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !443
  %i.hb = add nuw nsw i32 %.01821.i, 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.022.i, i64 28
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !443
  %i.hd = add nuw nsw i32 %.01821.i, 6
  %i.he = getelementptr inbounds nuw i8, ptr %.022.i, i64 40
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !443
  %i.hf = add nuw nsw i32 %.01821.i, 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.022.i, i64 52
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !443
  %i.hh = add nuw nsw i32 %.01821.i, 10
  %i.hi = getelementptr inbounds nuw i8, ptr %.022.i, i64 64
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !443
  %i.hj = add nuw nsw i32 %.01821.i, 12
  %i.hk = getelementptr inbounds nuw i8, ptr %.022.i, i64 76
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !443
  %i.hl = add i32 %.01821.i, 14
  %i.hm = getelementptr inbounds nuw i8, ptr %.022.i, i64 88
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !443
  %i.hn = add i32 %.01821.i, 16                   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.022.i, i64 96 ; 2 uses
  %niter448.next.7 = add i64 %niter448, 8         ; 2 uses
  %niter448.ncmp.7 = icmp eq i64 %niter448.next.7, %unroll_iter447
  br i1 %niter448.ncmp.7, label %._crit_edge.loopexit.i178.unr-lcssa, label %.lr.ph.i177

bb.ad:                                            ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %.sroa.speculated266 = call i32 @llvm.umax.i32(i32 %4, i32 %.sroa.speculated248)
  %i.hp = sub nuw i32 %.sroa.speculated266, %.0135326 ; 2 uses
  %.sroa.speculated257 = call i32 @llvm.umin.i32(i32 %5, i32 %.sroa.speculated)
  %i.hq = sub i32 %.sroa.speculated257, %.0135326 ; 2 uses
  %i.hr = sub i32 %i.hq, %i.hp                    ; 2 uses
  %i.hs = shl i32 %i.hr, 1
  %i.ht = add i32 %i.hs, 2
  %i.hu = call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %i.ht) #15 ; 8 uses
  %i.hv = icmp eq i32 %i.hu, -1
  br i1 %i.hv, label %.thread307, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hw = load ptr, ptr %i.l, align 8, !tbaa !543, !nonnull !312, !align !313 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !473
  %.not.i.i.i181 = icmp ult i32 %i.hu, %i.hy
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = zext i32 %i.hu to i64
  %i.ic = getelementptr inbounds nuw [216 x i8], ptr %i.ia, i64 %i.ib
  %.0.i.i.i182 = select i1 %.not.i.i.i181, ptr %i.ic, ptr @_hb_NullPool, !prof !75
  %i.id = load ptr, ptr %.0.i.i.i182, align 8, !tbaa !435
  %i.ie = trunc i32 %i.hr to i16
  %i.if = call i16 @llvm.bswap.i16(i16 %i.ie)
  store i16 %i.if, ptr %i.id, align 1, !tbaa !257
  %i.ig = load ptr, ptr %i.l, align 8, !tbaa !543, !nonnull !312, !align !313
  %i.ih = shl i32 %i.hp, 1
  %i.ii = add i32 %i.ih, 2
  %i.ij = shl i32 %i.hq, 1
  %i.ik = add i32 %i.ij, 2
  call void @_ZN5graph7graph_t13move_childrenIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEvjjjjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ig, i32 noundef %i.cv, i32 noundef %i.ii, i32 noundef %i.ik, i32 noundef %i.hu, i32 noundef 2)
  %i.il = trunc nuw i64 %indvars.iv to i32
  %spec.select154 = call i32 @llvm.umin.i32(i32 %i.il, i32 %.0119328)
  %i.im = load ptr, ptr %i.l, align 8, !tbaa !543, !nonnull !312, !align !313 ; 3 uses
  %i.in = load i16, ptr %i.v, align 1, !tbaa !255
  %i.io = call noundef i16 @llvm.bswap.i16(i16 %i.in)
  %i.ip = zext i16 %i.io to i32
  %.not.i183 = icmp ult i32 %.0128327, %i.ip
  br i1 %.not.i183, label %bb.ag, label %bb.af, !prof !75

bb.af:                                            ; preds = %bb.ae
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

bb.ag:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.iq = zext nneg i32 %.0128327 to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.iq
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185: ; preds = %bb.af, %bb.ag
  %.0.i184 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.ir, %bb.ag ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !473
  %.not.i.i186 = icmp ult i32 %i.j, %i.it
  br i1 %.not.i.i186, label %bb.ai, label %bb.ah, !prof !75

bb.ah:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.ai:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !482
  %i.iw = getelementptr inbounds nuw [216 x i8], ptr %i.iv, i64 %i.r
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i187 = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.iw, %bb.ai ] ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 20 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !406 ; 2 uses
  %i.iz = add i32 %i.iy, 1                        ; 5 uses
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.an, label %bb.aj, !prof !74

bb.aj:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 16
  %i.jc = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i32 noundef %i.iz, i1 noundef zeroext false)
  br i1 %i.jc, label %bb.ak, label %bb.an, !prof !350

bb.ak:                                            ; preds = %bb.aj
  %i.jd = load i32, ptr %i.ix, align 4, !tbaa !406 ; 3 uses
  %i.je = icmp ugt i32 %i.iz, %i.jd
  br i1 %i.je, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.jf = sub nuw nsw i32 %i.iz, %i.jd
  %i.jg = mul i32 %i.jf, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.am, !prof !74

bb.am:                                            ; preds = %bb.al
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !407
  %i.jj = zext nneg i32 %i.jd to i64
  %i.jk = getelementptr inbounds nuw [12 x i8], ptr %i.ji, i64 %i.jj
  %i.jl = zext i32 %i.jg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.jk, i8 0, i64 %i.jl, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !406
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !407
  %i.jo = zext i32 %i.iy to i64
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %i.jn, i64 %i.jo
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.ao, %bb.an
  %.0.i10.i = phi ptr [ @_hb_CrapPool, %bb.an ], [ %i.jp, %bb.ao ] ; 4 uses
  %i.jq = load i32, ptr %.0.i10.i, align 4
  %i.jr = and i32 %i.jq, -8
  %i.js = or disjoint i32 %i.jr, 2
  store i32 %i.js, ptr %.0.i10.i, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 8
  store i32 %i.hu, ptr %i.jt, align 4, !tbaa !441
  %i.ju = load ptr, ptr %.0.i.i187, align 8, !tbaa !550
  %i.jv = ptrtoint ptr %.0.i184 to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 4
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !443
  %i.ka = load i32, ptr %i.is, align 4, !tbaa !473
  %.not.i11.i = icmp ult i32 %i.hu, %i.ka
  br i1 %.not.i11.i, label %bb.aq, label %bb.ap, !prof !75

bb.ap:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !482
  %i.kd = zext i32 %i.hu to i64
  %i.ke = getelementptr inbounds nuw [216 x i8], ptr %i.kc, i64 %i.kd
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i12.i = phi ptr [ @_hb_CrapPool, %bb.ap ], [ %i.ke, %bb.aq ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i12.i, i32 noundef %i.j, i1 noundef zeroext false)
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit: ; preds = %bb.ar, %._crit_edge.i, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %.4123 = phi i32 [ %spec.select154, %bb.ar ], [ %spec.select, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ %spec.select, %._crit_edge.i ] ; 2 uses
  %.0110 = phi i32 [ %i.hu, %bb.ar ], [ %i.fj, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ %i.fj, %._crit_edge.i ] ; 8 uses
  %.2130 = add i32 %.0128327, 1                   ; 2 uses
  %i.kf = load ptr, ptr %i.l, align 8, !tbaa !543, !nonnull !312, !align !313 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !473
  %.not.i188 = icmp ult i32 %.0110, %i.kh
  br i1 %.not.i188, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190, !prof !75

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread: ; preds = %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !482
  %i.kk = zext i32 %.0110 to i64
  %i.kl = getelementptr inbounds nuw [216 x i8], ptr %i.kj, i64 %i.kk
  br label %bb.as

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190: ; preds = %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre346 = load ptr, ptr %i.l, align 8, !tbaa !543 ; 2 uses
  %.phi.trans.insert347 = getelementptr inbounds nuw i8, ptr %.pre346, i64 4
  %.pre348 = load i32, ptr %.phi.trans.insert347, align 4, !tbaa !473
  %i.km = icmp ult i32 %.0110, %.pre348
  br i1 %i.km, label %bb.as, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192, !prof !276

bb.as:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190
  %.0.i189407 = phi ptr [ %i.kl, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ]
  %i.kn = phi ptr [ %i.kf, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread ], [ %.pre346, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !482
  %i.kq = zext i32 %.0110 to i64
  %i.kr = getelementptr inbounds nuw [216 x i8], ptr %i.kp, i64 %i.kq
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190, %bb.as
  %.0.i189406 = phi ptr [ %.0.i189407, %bb.as ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ] ; 2 uses
  %.0.i.i193 = phi ptr [ %i.kr, %bb.as ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i193, i64 40
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !407 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i193, i64 36 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !406 ; 2 uses
  %i.kw = zext i32 %i.kv to i64
  %.idx.i194 = mul nuw nsw i64 %i.kw, 12
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx.i194
  %.not16.i = icmp eq i32 %i.kv, 0
  br i1 %.not16.i, label %_ZNK5graph20LigatureSubstFormat119clear_virtual_linksERNS_24gsubgpos_graph_context_tEj.exit, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit15.i
  %.017.i = phi ptr [ %i.lh, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit15.i ], [ %i.kt, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192 ] ; 2 uses
  %i.ky = load ptr, ptr %i.l, align 8, !tbaa !543, !nonnull !312, !align !313 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !441 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !473
  %.not.i13.i = icmp ult i32 %i.la, %i.lc
end_hunk_1
