inline.NumInlined: 2019
inline.NumDeleted: 419
begin_hunk_0_@_ZNK4llvh16itanium_demangle14IntegerLiteral9printLeftER12OutputStream:bb.a
  %i.as = load i64, ptr %i.i, align 8, !tbaa !44
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.i, align 8, !tbaa !44
  br label %_ZN12OutputStreampLE10StringView.exit27

_ZN12OutputStreampLE10StringView.exit27:          ; preds = %_ZN12OutputStream4growEm.exit.i26, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !229 ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7
  %i.ax = icmp eq i8 %i.aw, 110
  br i1 %i.ax, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN12OutputStreampLE10StringView.exit27
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !44 ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %.not.i.i28 = icmp ult i64 %i.ba, %i.bc
  %.pre.i29 = load ptr, ptr %1, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i28, label %_ZN12OutputStream4growEm.exit.i33, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = shl i64 %i.bc, 1
  %spec.store.select.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.ba) ; 2 uses
  store i64 %spec.store.select.i.i30, ptr %i.bb, align 8
  %i.be = tail call ptr @realloc(ptr noundef %.pre.i29, i64 noundef %spec.store.select.i.i30) #22 ; 3 uses
  store ptr %i.be, ptr %1, align 8, !tbaa !45
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.l, label %._ZN12OutputStream4growEm.exit_crit_edge.i31

._ZN12OutputStream4growEm.exit_crit_edge.i31:     ; preds = %bb.k
  %.pre6.i32 = load i64, ptr %i.ay, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i33

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i33:                ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i31, %bb.j
  %i.bg = phi i64 [ %i.az, %bb.j ], [ %.pre6.i32, %._ZN12OutputStream4growEm.exit_crit_edge.i31 ]
  %i.bh = phi ptr [ %.pre.i29, %bb.j ], [ %i.be, %._ZN12OutputStream4growEm.exit_crit_edge.i31 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 45, ptr %i.bi, align 1
  %i.bj = load i64, ptr %i.ay, align 8, !tbaa !44
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  store i64 %i.bk, ptr %i.ay, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !228 ; 3 uses
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !229 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = icmp ne ptr %i.bm, %i.bn
  %spec.select.i = zext i1 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %spec.select.i ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.bo, %i.br                    ; 3 uses
  %i.bt = icmp eq ptr %i.bm, %i.bq
  br i1 %i.bt, label %_ZN12OutputStreampLE10StringView.exit41, label %bb.m

bb.m:                                             ; preds = %_ZN12OutputStream4growEm.exit.i33
  %i.bu = add i64 %i.bk, %i.bs                    ; 2 uses
  %i.bv = load i64, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %.not.i.i35 = icmp ult i64 %i.bu, %i.bv
  %.pre.i36 = load ptr, ptr %1, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i35, label %_ZN12OutputStream4growEm.exit.i40, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = shl i64 %i.bv, 1
  %spec.store.select.i.i37 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bu) ; 2 uses
  store i64 %spec.store.select.i.i37, ptr %i.bb, align 8
  %i.bx = tail call ptr @realloc(ptr noundef %.pre.i36, i64 noundef %spec.store.select.i.i37) #22 ; 3 uses
  store ptr %i.bx, ptr %1, align 8, !tbaa !45
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.o, label %._ZN12OutputStream4growEm.exit_crit_edge.i38

._ZN12OutputStream4growEm.exit_crit_edge.i38:     ; preds = %bb.n
  %.pre6.i39 = load i64, ptr %i.ay, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i40

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i40:                ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i38, %bb.m
  %i.bz = phi i64 [ %i.bk, %bb.m ], [ %.pre6.i39, %._ZN12OutputStream4growEm.exit_crit_edge.i38 ]
  %i.ca = phi ptr [ %.pre.i36, %bb.m ], [ %i.bx, %._ZN12OutputStream4growEm.exit_crit_edge.i38 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  %i.cc = load i64, ptr %i.ay, align 8, !tbaa !44
  %i.cd = add i64 %i.cc, %i.bs
  store i64 %i.cd, ptr %i.ay, align 8, !tbaa !44
  br label %_ZN12OutputStreampLE10StringView.exit41

bb.p:                                             ; preds = %_ZN12OutputStreampLE10StringView.exit27
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.22.0.copyload to i64
  %i.cf = ptrtoint ptr %i.av to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = icmp eq ptr %.sroa.22.0.copyload, %i.av
  br i1 %i.ch, label %_ZN12OutputStreampLE10StringView.exit41, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !44 ; 2 uses
  %i.ck = add i64 %i.cj, %i.cg                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !46 ; 2 uses
  %.not.i.i42 = icmp ult i64 %i.ck, %i.cm
  %.pre.i43 = load ptr, ptr %1, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i42, label %_ZN12OutputStream4growEm.exit.i47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = shl i64 %i.cm, 1
  %spec.store.select.i.i44 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.ck) ; 2 uses
  store i64 %spec.store.select.i.i44, ptr %i.cl, align 8
  %i.co = tail call ptr @realloc(ptr noundef %.pre.i43, i64 noundef %spec.store.select.i.i44) #22 ; 3 uses
  store ptr %i.co, ptr %1, align 8, !tbaa !45
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.s, label %._ZN12OutputStream4growEm.exit_crit_edge.i45

._ZN12OutputStream4growEm.exit_crit_edge.i45:     ; preds = %bb.r
  %.pre6.i46 = load i64, ptr %i.ci, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i47

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i47:                ; preds = %._ZN12OutputStream4growEm.exit_crit_edge.i45, %bb.q
  %i.cq = phi i64 [ %i.cj, %bb.q ], [ %.pre6.i46, %._ZN12OutputStream4growEm.exit_crit_edge.i45 ]
  %i.cr = phi ptr [ %.pre.i43, %bb.q ], [ %i.co, %._ZN12OutputStream4growEm.exit_crit_edge.i45 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cs, ptr nonnull align 1 %i.av, i64 %i.cg, i1 false)
  %i.ct = load i64, ptr %i.ci, align 8, !tbaa !44
  %i.cu = add i64 %i.ct, %i.cg
  store i64 %i.cu, ptr %i.ci, align 8, !tbaa !44
  br label %_ZN12OutputStreampLE10StringView.exit41

_ZN12OutputStreampLE10StringView.exit41:          ; preds = %_ZN12OutputStream4growEm.exit.i47, %bb.p, %_ZN12OutputStream4growEm.exit.i40, %_ZN12OutputStream4growEm.exit.i33
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !228 ; 2 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !229 ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp ugt i64 %i.cz, 3
  %i.db = icmp eq ptr %i.cv, %i.cw
  %or.cond = or i1 %i.da, %i.db
  br i1 %or.cond, label %_ZN12OutputStreampLE10StringView.exit55, label %bb.t

bb.t:                                             ; preds = %_ZN12OutputStreampLE10StringView.exit41
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !44 ; 2 uses
  %i.de = add i64 %i.dd, %i.cz                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !46 ; 2 uses
  %.not.i.i49 = icmp ult i64 %i.de, %i.dg
  %.pre.i50 = load ptr, ptr %1, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i49, label %_ZN12OutputStream4growEm.exit.i54, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = shl i64 %i.dg, 1
  %spec.store.select.i.i51 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.de) ; 2 uses
  store i64 %spec.store.select.i.i51, ptr %i.df, align 8
  %i.di = tail call ptr @realloc(ptr noundef %.pre.i50, i64 noundef %spec.store.select.i.i51) #22 ; 3 uses
  store ptr %i.di, ptr %1, align 8, !tbaa !45
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
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %3 = load i8, ptr %2, align 4, !tbaa !224, !range !111, !noundef !112
  %4 = trunc nuw i8 %3 to i1                      ; 2 uses
  %.str.94..str.95 = select i1 %4, ptr @.str.94, ptr @.str.95 ; 2 uses
  %5 = select i1 %4, i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @.str.94, i64 4) to i64), i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @.str.95, i64 5) to i64)
  %6 = ptrtoint ptr %.str.94..str.95 to i64
  %7 = sub i64 %5, %6                             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = add i64 %i.b, %7                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !45  ; 2 uses
  br i1 %.not.i.i, label %_ZN12OutputStream4growEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %i.e, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.d, align 8
  %i.g = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %spec.store.select.i.i) #22 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !45
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %._ZN12OutputStream4growEm.exit_crit_edge.i

._ZN12OutputStream4growEm.exit_crit_edge.i:       ; preds = %bb.b
  %.pre6.i = load i64, ptr %i.a, align 8, !tbaa !44
  br label %_ZN12OutputStream4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12OutputStream4growEm.exit.i:                  ; preds = %bb.a, %._ZN12OutputStream4growEm.exit_crit_edge.i
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre6.i, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.j = phi ptr [ %.pre.i, %bb.a ], [ %i.g, %._ZN12OutputStream4growEm.exit_crit_edge.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %.str.94..str.95, i64 %7, i1 false)
  %i.l = load i64, ptr %i.a, align 8, !tbaa !44
  %i.m = add i64 %i.l, %7
  store i64 %i.m, ptr %i.a, align 8, !tbaa !44
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
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 16 %i.a, i64 %i.ac, i1 false)
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 12 uses
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
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aa = load i8, ptr %.ptr, align 1, !tbaa !7
  %i.ab = load i8, ptr %i.c, align 1, !tbaa !7
  %i.ac = load <6 x i8>, ptr %.0.ptr.1, align 1, !tbaa !7 ; 2 uses
  %i.ad = shufflevector <6 x i8> %i.ac, <6 x i8> poison, <4 x i32> <i32 poison, i32 1, i32 3, i32 5>
  %i.ae = insertelement <4 x i8> %i.ad, i8 %i.aa, i64 0 ; 2 uses
  %i.af = sext <4 x i8> %i.ae to <4 x i32>
  %i.ag = add nsw <4 x i32> %i.af, splat (i32 -48)
  %i.ah = icmp ult <4 x i32> %i.ag, splat (i32 10)
  %i.ai = select <4 x i1> %i.ah, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.aj = add <4 x i8> %i.ai, %i.ae
  %i.ak = shufflevector <6 x i8> %i.ac, <6 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 4>
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.ab, i64 0 ; 2 uses
  %i.am = sext <4 x i8> %i.al to <4 x i32>
  %i.an = add nsw <4 x i32> %i.am, splat (i32 -48)
  %i.ao = icmp ult <4 x i32> %i.an, splat (i32 10)
  %i.ap = select <4 x i1> %i.ao, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.aq = add <4 x i8> %i.ap, %i.al
  %i.ar = shl <4 x i8> %i.aq, splat (i8 4)
  %i.as = add <4 x i8> %i.aj, %i.ar               ; 4 uses
  %i.at = shl nuw nsw i64 %.sroa.0.5.insert.ext, 16
  %i.au = extractelement <4 x i8> %i.as, i64 2
  %.sroa.0.5.insert.ext53 = zext i8 %i.au to i64
  %.sroa.0.5.insert.shift54 = shl nuw nsw i64 %.sroa.0.5.insert.ext53, 40
  %i.av = or disjoint i64 %i.at, %.sroa.0.5.insert.shift54
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.aw = load i8, ptr %.ptr.6, align 1, !tbaa !7 ; 2 uses
  %i.ax = sext i8 %i.aw to i32
  %isdigittmp23.6 = add nsw i32 %i.ax, -48
  %isdigit24.6 = icmp ult i32 %isdigittmp23.6, 10
  %.v25.6 = select i1 %isdigit24.6, i8 -48, i8 -87
  %i.ay = add i8 %.v25.6, %i.aw
  %.0.ptr.6 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.az = load i8, ptr %.0.ptr.6, align 1, !tbaa !7 ; 2 uses
  %i.ba = sext i8 %i.az to i32
  %isdigittmp.6 = add nsw i32 %i.ba, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
end_hunk_0
