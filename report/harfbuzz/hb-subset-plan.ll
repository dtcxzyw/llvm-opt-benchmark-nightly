Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan?download=true
inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t:bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.k = load i16, ptr %0, align 1, !tbaa !44     ; 2 uses
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = icmp eq i16 %i.k, 0
  br i1 %i.m, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext i16 %i.l to i32
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 5 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = load i32, ptr %i.g, align 8, !tbaa !515
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.not6 = icmp ugt i64 %i.t, %i.v
  br i1 %.not6, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.a, align 1, !tbaa !10    ; 4 uses
  %i.x = add i8 %i.w, -1
  %or.cond = icmp ult i8 %i.x, 4
  br i1 %or.cond, label %bb.e, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = zext nneg i8 %i.w to i32
  %i.z = mul nuw nsw i32 %i.o, %i.y               ; 2 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !513
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = sub i64 %i.ab, %i.r
  %i.ad = trunc i64 %i.ac to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.z, %i.ad
  br i1 %.not12.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !516
  %i.ag = sub i32 %i.af, %i.z                     ; 3 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !516
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
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10
  %i.ap = zext i8 %i.ao to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.aj
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !44
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.i:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.aj ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !73
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !73
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = or disjoint i32 %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !73
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.j:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aj
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !8
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
  store i32 %i.bo, ptr %i.ae, align 4, !tbaa !516
  %i.bp = icmp sgt i32 %i.bo, 0
  br label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread: ; preds = %bb.k, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit, %bb.e, %bb.b, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, %bb.d, %bb.c, %bb.a
  %i.bq = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit ], [ %i.bp, %bb.k ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit ]
  ret i1 %i.bq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv(ptr noundef nonnull align 1 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !44     ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 2 uses
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
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.c
  %i.n = load i16, ptr %i.m, align 1, !tbaa !44
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [3 x i8], ptr %i.i, i64 %i.c ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !73
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !73
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !73
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.c
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !8
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
  %i.a = load i16, ptr %0, align 1, !tbaa !44
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %.critedge, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
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
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %i.m = zext i8 %i.l to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !44
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !44
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.w = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.w ; 6 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !73
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !73
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !73
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !73
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !73
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !73
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.ax = zext nneg i32 %1 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !8
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !8
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.ba, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.j, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.r, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aj, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.bd, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.m, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.v, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aw, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.be = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.be, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, !prof !664

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.bf = load i16, ptr %0, align 1, !tbaa !44
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
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !10
  %i.bk = zext i8 %i.bj to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bl = zext i16 %i.bg to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !44
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = zext i16 %i.bo to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bq = zext i16 %i.bg to i64
  %i.br = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.bq ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !73
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !73
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = or disjoint i32 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !73
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.bz, %i.cc
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.ce = zext i16 %i.bg to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !8
  %i.ch = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.ch, %bb.f ], [ %i.bk, %bb.c ], [ %i.bp, %bb.d ], [ %i.cd, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread ]
  %i.ci = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.ci, label %.critedge, label %bb.g, !prof !36

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
define internal fastcc noundef nonnull align 1 dereferenceable(6) ptr @_ZN3CFFL20StructAtOffsetOrNullINS_12CFF1FDSelectEJRKN2OT7NumTypeILb1EtLj2EEEEEERKT_PKviR21hb_sanitize_context_tDpOT0_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(62) %2, i16 %.0.val) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !514
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !515
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
  br i1 %.not.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.d, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.q = load i8, ptr %i.b, align 1, !tbaa !10
  switch i8 %i.q, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread [
    i8 0, label %bb.e
    i8 3, label %.split
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !514
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.o, %i.s
  %i.u = load i32, ptr %i.h, align 8, !tbaa !515
  %i.v = zext i32 %i.u to i64
  %.not.i.i = icmp ugt i64 %i.t, %i.v
  br i1 %.not.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.f, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !344  ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !514
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.o, %i.z
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !515
  %i.ac = zext i32 %i.ab to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.g, !prof !518

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !513
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.o
  %i.ag = trunc i64 %i.af to i32
  %.not12.i.i.i.i.i = icmp ugt i32 %i.x, %i.ag
  br i1 %.not12.i.i.i.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit, !prof !518

.split:                                           ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.ah = tail call noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(5) %i.n, ptr noundef nonnull %2, i32 noundef %i.m)
  br i1 %i.ah, label %bb.h, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread

_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !516
  %i.ak = sub i32 %i.aj, %i.x                     ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !516
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
  store i32 0, ptr %1, align 8, !tbaa !647
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store ptr @_hb_NullPool, ptr %i.b, align 8, !tbaa !648
  %.pre = load ptr, ptr %0, align 8, !tbaa !665   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.pre4 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !618
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre6 = load i32, ptr %.phi.trans.insert5, align 8, !tbaa !628
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
