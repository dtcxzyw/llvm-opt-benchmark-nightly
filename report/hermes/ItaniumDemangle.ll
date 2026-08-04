inline.NumInlined: 2019
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvh16itanium_demangle14IntegerLiteral9printLeftER12OutputStream:bb.a
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.v, label %._ZN12OutputStream4growEm.exit_crit_edge.i52

._ZN12OutputStream4growEm.exit_crit_edge.i52:     ; preds = %bb.u
  %.pre6.i53 = load i64, ptr %i.dc, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i54

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i54:                ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i52, %bb.t
  %i.dk = phi i64 [ %i.dd, %bb.t ], [ %.pre6.i53, %._ZN12OutputStream4growEm.exit_crit_edge.i52 ]
  %i.dl = phi ptr [ %.pre.i50, %bb.t ], [ %i.di, %._ZN12OutputStream4growEm.exit_crit_edge.i52 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.cw, i64 %i.cz, i1 false)
  %i.dn = load i64, ptr %i.dc, align 8, !tbaa !44
  %i.do = add i64 %i.dn, %i.cz
  store i64 %i.do, ptr %i.dc, align 8, !tbaa !44
  br label %_ZN12OutputStreampLE10StringView.exit55

_ZN12OutputStreampLE10StringView.exit55:          ; preds = %_ZN12OutputStream4growEm.exit.i54, %_ZN12OutputStreampLE10StringView.exit41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle14IntegerLiteralD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle8BoolExpr9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !224, !range !111, !noundef !112
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %. = select i1 %i.c, ptr getelementptr inbounds nuw (i8, ptr @.str.94, i64 4), ptr getelementptr inbounds nuw (i8, ptr @.str.95, i64 5) ; 2 uses
  %.str.94..str.95 = select i1 %i.c, ptr @.str.94, ptr @.str.95 ; 3 uses
  %i.d = ptrtoint ptr %. to i64
  %i.e = ptrtoint ptr %.str.94..str.95 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq ptr %., %.str.94..str.95
  br i1 %i.g, label %_ZN12OutputStreampLE10StringView.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp ult i64 %i.j, %i.l
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !45  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = shl i64 %i.l, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.j) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.k, align 8
  %i.n = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !45
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.c
  %.pre6.i = load i64, ptr %i.h, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %bb.b
  %i.p = phi i64 [ %i.i, %bb.b ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.q = phi ptr [ %.pre.i, %bb.b ], [ %i.n, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %.str.94..str.95, i64 %i.f, i1 false)
  %i.s = load i64, ptr %i.h, align 8, !tbaa !44
  %i.t = add i64 %i.s, %i.f
  store i64 %i.t, ptr %i.h, align 8, !tbaa !44
  br label %_ZN12OutputStreampLE10StringView.exit

_ZN12OutputStreampLE10StringView.exit:            ; preds = %bb.a, %_ZN12OutputStream4growEm.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle8BoolExprD0Ev(ptr noundef nonnull align 8 dereferenceable(13) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle16FloatLiteralImplIfE9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 8
  br i1 %i.j, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %i.k = load <8 x i8>, ptr %i.c, align 1, !tbaa !7 ; 2 uses
  %i.l = shufflevector <8 x i8> %i.k, <8 x i8> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.m = sext <4 x i8> %i.l to <4 x i32>
  %i.n = add nsw <4 x i32> %i.m, splat (i32 -48)
  %i.o = icmp ult <4 x i32> %i.n, splat (i32 10)
  %i.p = select <4 x i1> %i.o, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.q = add <4 x i8> %i.p, %i.l
  %i.r = shufflevector <8 x i8> %i.k, <8 x i8> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %i.s = sext <4 x i8> %i.r to <4 x i16>
  %i.t = add nsw <4 x i16> %i.s, splat (i16 -48)
  %i.u = icmp ult <4 x i16> %i.t, splat (i16 10)
  %i.v = select <4 x i1> %i.u, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.w = add <4 x i8> %i.v, %i.r
  %i.x = shl <4 x i8> %i.w, splat (i8 4)
  %i.y = add <4 x i8> %i.q, %i.x
  %i.z = bitcast <4 x i8> %i.y to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.aa = fpext float %i.z to double
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 24, ptr noundef nonnull @.str.2, double noundef %i.aa) #19 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %_ZN12OutputStreampLE10StringView.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !44 ; 2 uses
  %i.ag = add i64 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp ult i64 %i.ag, %i.ai
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !45  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = shl i64 %i.ai, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ag) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.ah, align 8
  %i.ak = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !45
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.c
  %.pre6.i = load i64, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %bb.b
  %i.am = phi i64 [ %i.af, %bb.b ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.an = phi ptr [ %.pre.i, %bb.b ], [ %i.ak, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 16 %i.a, i64 %i.ac, i1 false)
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.aq = add i64 %i.ap, %i.ac
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN12OutputStreampLE10StringView.exit

_ZN12OutputStreampLE10StringView.exit:            ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %_ZN12OutputStream4growEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZN12OutputStreampLE10StringView.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle16FloatLiteralImplIfED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle16FloatLiteralImplIdE9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 16
  br i1 %i.j, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.k = load i8, ptr %.ptr.4, align 1, !tbaa !7  ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp23.4 = add nsw i32 %i.l, -48
  %isdigit24.4 = icmp ult i32 %isdigittmp23.4, 10
  %.v25.4 = select i1 %isdigit24.4, i8 -48, i8 -87
  %i.m = add i8 %.v25.4, %i.k
  %.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i8, ptr %.0.ptr.4, align 1, !tbaa !7 ; 2 uses
  %i.o = sext i8 %i.n to i32
  %isdigittmp.4 = add nsw i32 %i.o, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %.v.4 = select i1 %isdigit.4, i8 0, i8 9
  %i.p = add i8 %.v.4, %i.n
  %i.q = shl i8 %i.p, 4
  %i.r = add i8 %i.m, %i.q
  %.sroa.0.4.insert.ext = zext i8 %i.r to i64
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 24
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.s = load i8, ptr %.ptr.5, align 1, !tbaa !7  ; 2 uses
  %i.t = sext i8 %i.s to i32
  %isdigittmp23.5 = add nsw i32 %i.t, -48
  %isdigit24.5 = icmp ult i32 %isdigittmp23.5, 10
  %.v25.5 = select i1 %isdigit24.5, i8 -48, i8 -87
  %i.u = add i8 %.v25.5, %i.s
  %.0.ptr.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.v = load i8, ptr %.0.ptr.5, align 1, !tbaa !7 ; 2 uses
  %i.w = sext i8 %i.v to i32
  %isdigittmp.5 = add nsw i32 %i.w, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  %.v.5 = select i1 %isdigit.5, i8 0, i8 9
  %i.x = add i8 %.v.5, %i.v
  %i.y = shl i8 %i.x, 4
  %i.z = add i8 %i.u, %i.y
  %.sroa.0.5.insert.ext = zext i8 %i.z to i64
  %2 = load <8 x i8>, ptr %i.c, align 1, !tbaa !7 ; 2 uses
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aa = sext <4 x i8> %3 to <4 x i32>
  %i.ab = add nsw <4 x i32> %i.aa, splat (i32 -48)
  %i.ac = icmp ult <4 x i32> %i.ab, splat (i32 10)
  %i.ad = select <4 x i1> %i.ac, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.ae = add <4 x i8> %i.ad, %3
  %4 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.af = sext <4 x i8> %4 to <4 x i32>
  %i.ag = add nsw <4 x i32> %i.af, splat (i32 -48)
  %i.ah = icmp ult <4 x i32> %i.ag, splat (i32 10)
  %i.ai = select <4 x i1> %i.ah, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.aj = add <4 x i8> %i.ai, %4
  %i.ak = shl <4 x i8> %i.aj, splat (i8 4)
  %i.al = add <4 x i8> %i.ae, %i.ak               ; 4 uses
  %i.am = shl nuw nsw i64 %.sroa.0.5.insert.ext, 16
  %i.an = extractelement <4 x i8> %i.al, i64 2
  %.sroa.0.5.insert.ext53 = zext i8 %i.an to i64
  %.sroa.0.5.insert.shift54 = shl nuw nsw i64 %.sroa.0.5.insert.ext53, 40
  %i.ao = or disjoint i64 %i.am, %.sroa.0.5.insert.shift54
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.ap = load i8, ptr %.ptr.6, align 1, !tbaa !7 ; 2 uses
  %i.aq = sext i8 %i.ap to i32
  %isdigittmp23.6 = add nsw i32 %i.aq, -48
  %isdigit24.6 = icmp ult i32 %isdigittmp23.6, 10
  %.v25.6 = select i1 %isdigit24.6, i8 -48, i8 -87
  %i.ar = add i8 %.v25.6, %i.ap
  %.0.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.as = load i8, ptr %.0.ptr.6, align 1, !tbaa !7 ; 2 uses
  %i.at = sext i8 %i.as to i32
  %isdigittmp.6 = add nsw i32 %i.at, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %.v.6 = select i1 %isdigit.6, i8 0, i8 9
  %i.au = add i8 %.v.6, %i.as
  %i.av = shl i8 %i.au, 4
  %i.aw = add i8 %i.ar, %i.av
  %.sroa.0.6.insert.ext = zext i8 %i.aw to i64
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.ax = load i8, ptr %.ptr.7, align 1, !tbaa !7 ; 2 uses
  %i.ay = sext i8 %i.ax to i32
  %isdigittmp23.7 = add nsw i32 %i.ay, -48
  %isdigit24.7 = icmp ult i32 %isdigittmp23.7, 10
  %.v25.7 = select i1 %isdigit24.7, i8 -48, i8 -87
  %i.az = add i8 %.v25.7, %i.ax
  %.0.ptr.7 = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ba = load i8, ptr %.0.ptr.7, align 1, !tbaa !7 ; 2 uses
  %i.bb = sext i8 %i.ba to i32
  %isdigittmp.7 = add nsw i32 %i.bb, -48
  %isdigit.7 = icmp ult i32 %isdigittmp.7, 10
  %.v.7 = select i1 %isdigit.7, i8 0, i8 9
  %i.bc = add i8 %.v.7, %i.ba
  %i.bd = shl i8 %i.bc, 4
  %i.be = add i8 %i.az, %i.bd
  %.sroa.0.7.insert.ext = zext i8 %i.be to i64
  %i.bf = shl nuw nsw i64 %.sroa.0.6.insert.ext, 8
  %i.bg = extractelement <4 x i8> %i.al, i64 1
  %.sroa.0.6.insert.ext58 = zext i8 %i.bg to i64
  %.sroa.0.6.insert.shift59 = shl nuw nsw i64 %.sroa.0.6.insert.ext58, 48
  %i.bh = or disjoint i64 %i.bf, %.sroa.0.6.insert.shift59
  %i.bi = extractelement <4 x i8> %i.al, i64 0
  %.sroa.0.7.insert.ext63 = zext i8 %i.bi to i64
  %.sroa.0.7.insert.shift64 = shl nuw i64 %.sroa.0.7.insert.ext63, 56
  %i.bj = or disjoint i64 %.sroa.0.7.insert.shift64, %.sroa.0.7.insert.ext
  %.sroa.0.6.insert.insert61 = or disjoint i64 %i.bh, %i.bj
  %.sroa.0.5.insert.insert56 = or disjoint i64 %i.ao, %.sroa.0.6.insert.insert61
  %.sroa.0.3.insert.insert46 = or disjoint i64 %.sroa.0.5.insert.insert56, %.sroa.0.4.insert.shift
  %i.bk = extractelement <4 x i8> %i.al, i64 3
  %.sroa.0.4.insert.ext48 = zext i8 %i.bk to i64
  %.sroa.0.4.insert.shift49 = shl nuw nsw i64 %.sroa.0.4.insert.ext48, 32
  %.sroa.0.4.insert.insert51 = or disjoint i64 %.sroa.0.3.insert.insert46, %.sroa.0.4.insert.shift49
  %i.bl = bitcast i64 %.sroa.0.4.insert.insert51 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.bm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.3, double noundef %i.bl) #19 ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 3 uses
  %i.bo = icmp eq i32 %i.bm, 0
  br i1 %i.bo, label %_ZN12OutputStreampLE10StringView.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !44 ; 2 uses
  %i.br = add i64 %i.bq, %i.bn                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp ult i64 %i.br, %i.bt
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !45  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bu = shl i64 %i.bt, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.br) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.bs, align 8
  %i.bv = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.bv, ptr %1, align 8, !tbaa !45
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.d, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.c
  %.pre6.i = load i64, ptr %i.bp, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i, %bb.b
  %i.bx = phi i64 [ %i.bq, %bb.b ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.by = phi ptr [ %.pre.i, %bb.b ], [ %i.bv, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr nonnull align 16 %i.a, i64 %i.bn, i1 false)
  %i.ca = load i64, ptr %i.bp, align 8, !tbaa !44
  %i.cb = add i64 %i.ca, %i.bn
  store i64 %i.cb, ptr %i.bp, align 8, !tbaa !44
  br label %_ZN12OutputStreampLE10StringView.exit

_ZN12OutputStreampLE10StringView.exit:            ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %_ZN12OutputStream4growEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZN12OutputStreampLE10StringView.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh16itanium_demangle16FloatLiteralImplIdED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh16itanium_demangle16FloatLiteralImplIeE9printLeftER12OutputStream(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.i, 20
  br i1 %i.j, label %_ZSt7reverseIPcEvT_S1_.exit, label %bb.e

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %bb.a
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.k = load i8, ptr %.ptr.6, align 1, !tbaa !7  ; 2 uses
  %i.l = sext i8 %i.k to i32
  %isdigittmp23.6 = add nsw i32 %i.l, -48
  %isdigit24.6 = icmp ult i32 %isdigittmp23.6, 10
  %.v25.6 = select i1 %isdigit24.6, i8 -48, i8 -87
  %i.m = add i8 %.v25.6, %i.k
  %.0.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load i8, ptr %.0.ptr.6, align 1, !tbaa !7 ; 2 uses
  %i.o = sext i8 %i.n to i32
  %isdigittmp.6 = add nsw i32 %i.o, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %.v.6 = select i1 %isdigit.6, i8 0, i8 9
  %i.p = add i8 %.v.6, %i.n
  %i.q = shl i8 %i.p, 4
  %i.r = add i8 %i.m, %i.q
  %.sroa.0.6.insert.ext = zext i8 %i.r to i80
  %.sroa.0.6.insert.shift = shl nuw nsw i80 %.sroa.0.6.insert.ext, 48
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.s = load i8, ptr %.ptr.7, align 1, !tbaa !7  ; 2 uses
  %i.t = sext i8 %i.s to i32
  %isdigittmp23.7 = add nsw i32 %i.t, -48
  %isdigit24.7 = icmp ult i32 %isdigittmp23.7, 10
  %.v25.7 = select i1 %isdigit24.7, i8 -48, i8 -87
  %i.u = add i8 %.v25.7, %i.s
  %.0.ptr.7 = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.v = load i8, ptr %.0.ptr.7, align 1, !tbaa !7 ; 2 uses
  %i.w = sext i8 %i.v to i32
  %isdigittmp.7 = add nsw i32 %i.w, -48
  %isdigit.7 = icmp ult i32 %isdigittmp.7, 10
  %.v.7 = select i1 %isdigit.7, i8 0, i8 9
  %i.x = add i8 %.v.7, %i.v
  %i.y = shl i8 %i.x, 4
  %i.z = add i8 %i.u, %i.y
  %.sroa.0.7.insert.ext = zext i8 %i.z to i80
  %.sroa.0.7.insert.shift = shl nuw nsw i80 %.sroa.0.7.insert.ext, 56
  %i.aa = or disjoint i80 %.sroa.0.6.insert.shift, %.sroa.0.7.insert.shift
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ab = load i8, ptr %.ptr.4, align 1, !tbaa !7 ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %isdigittmp23.4 = add nsw i32 %i.ac, -48
  %isdigit24.4 = icmp ult i32 %isdigittmp23.4, 10
  %.v25.4 = select i1 %isdigit24.4, i8 -48, i8 -87
  %i.ad = add i8 %.v25.4, %i.ab
  %.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i8, ptr %.0.ptr.4, align 1, !tbaa !7 ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %isdigittmp.4 = add nsw i32 %i.af, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %.v.4 = select i1 %isdigit.4, i8 0, i8 9
  %i.ag = add i8 %.v.4, %i.ae
  %i.ah = shl i8 %i.ag, 4
  %i.ai = add i8 %i.ad, %i.ah
  %.sroa.0.4.insert.ext = zext i8 %i.ai to i80    ; 2 uses
  %.sroa.0.4.insert.shift = shl nuw nsw i80 %.sroa.0.4.insert.ext, 32
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.aj = load i8, ptr %.ptr.5, align 1, !tbaa !7 ; 2 uses
  %i.ak = sext i8 %i.aj to i32
  %isdigittmp23.5 = add nsw i32 %i.ak, -48
  %isdigit24.5 = icmp ult i32 %isdigittmp23.5, 10
  %.v25.5 = select i1 %isdigit24.5, i8 -48, i8 -87
  %i.al = add i8 %.v25.5, %i.aj
  %.0.ptr.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.am = load i8, ptr %.0.ptr.5, align 1, !tbaa !7 ; 2 uses
  %i.an = sext i8 %i.am to i32
  %isdigittmp.5 = add nsw i32 %i.an, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
end_hunk_0
