inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_cstr_to_dbl_raise:bb.a
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = icmp eq i32 %i.cy, 34
  br i1 %i.cz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.b to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 20
  %.1123 = select i1 %i.de, ptr @.str.154, ptr @.str.73
  %.1120180 = call i64 @llvm.smin.i64(i64 %i.dd, i64 20)
  %.1120 = trunc i64 %.1120180 to i32
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.155, i32 noundef %.1120, ptr noundef nonnull %i.b, ptr noundef nonnull %.1123) #21
  %i.df = call ptr @rb_errno_ptr() #21
  store i32 0, ptr %i.df, align 4, !tbaa !7
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.not138, label %.critedge.thread168, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !91  ; 4 uses
  %.not146 = icmp eq ptr %i.dg, null
  %i.dh = icmp eq ptr %i.b, %i.dg
  %or.cond157 = or i1 %.not146, %i.dh
  br i1 %or.cond157, label %.critedge.thread163, label %.preheader

.preheader:                                       ; preds = %bb.an
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !34  ; 2 uses
  %.not147212 = icmp eq i8 %i.di, 0
  br i1 %.not147212, label %.critedge.thread168, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader, %bb.ao
  %i.dj = phi i8 [ %i.dq, %bb.ao ], [ %i.di, %.preheader ] ; 2 uses
  %i.dk = phi ptr [ %i.dp, %bb.ao ], [ %i.dg, %.preheader ]
  %i.dl = sext i8 %i.dj to i32
  %i.dm = icmp ne i8 %i.dj, 32
  %i.dn = add nsw i32 %i.dl, -14
  %i.do = icmp ult i32 %i.dn, -5
  %narrow.i160.not = select i1 %i.dm, i1 %i.do, i1 false
  br i1 %narrow.i160.not, label %.critedge.thread163, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph213
  %i.dp = getelementptr i8, ptr %i.dk, i64 1      ; 3 uses
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !91
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !34  ; 2 uses
  %.not147 = icmp eq i8 %i.dq, 0
  br i1 %.not147, label %.critedge.thread168, label %.lr.ph213, !llvm.loop !97

.critedge.thread163:                              ; preds = %.lr.ph213, %bb.ab, %bb.an, %bb.af, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ar

.critedge.thread168:                              ; preds = %bb.ao, %.preheader, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ap

.critedge:                                        ; preds = %bb.aj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.av

bb.ap:                                            ; preds = %.critedge.thread168, %bb.h
  %.1126 = phi double [ %i.cw, %.critedge.thread168 ], [ %i.k, %bb.h ]
  %.15 = phi ptr [ %i.b, %.critedge.thread168 ], [ %.0103, %bb.h ]
  %i.dr = call ptr @rb_errno_ptr() #21
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.dt = icmp eq i32 %i.ds, 34
  br i1 %i.dt, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.du = call ptr @rb_errno_ptr() #21
  store i32 0, ptr %i.du, align 4, !tbaa !7
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %.15 to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 20
  %.2124 = select i1 %i.dz, ptr @.str.154, ptr @.str.73
  %.2121183 = call i64 @llvm.smin.i64(i64 %i.dy, i64 20)
  %.2121 = trunc i64 %.2121183 to i32
  %i.ea = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ea, ptr noundef nonnull @.str.155, i32 noundef %.2121, ptr noundef nonnull %0, ptr noundef nonnull %.2124) #22
  unreachable

bb.ar:                                            ; preds = %.critedge.thread163, %bb.g
  %.not150 = icmp eq i32 %3, 0
  br i1 %.not150, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eb = call i64 @rb_enc_str_new_cstr(ptr noundef nonnull %0, ptr noundef %1) #21
  %i.ec = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ec, ptr noundef nonnull @.str.156, i64 noundef %i.eb) #22
  unreachable

bb.at:                                            ; preds = %bb.ar
  %.not151 = icmp eq ptr %4, null
  br i1 %.not151, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 1, ptr %4, align 4, !tbaa !7
  br label %bb.av

bb.av:                                            ; preds = %.critedge, %bb.at, %bb.au, %bb.ap, %bb.g, %bb.c, %bb.c, %bb.a
  %.1 = phi double [ %.1126, %bb.ap ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %.critedge ], [ %i.k, %bb.g ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.au ], [ 0.000000e+00, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret double %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @rb_str_to_dbl(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc double @rb_str_to_dbl_raise(i64 noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef null)
  ret double %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @rb_str_to_dbl_raise(i64 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.d = call i64 @rb_string_value(ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_must_asciicompat(i64 noundef %i.e) #21
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.j, %bb.a ] ; 5 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !98   ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %.not29 = icmp eq i32 %1, 0
  br i1 %.not29, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @memchr(ptr noundef nonnull %i.l, i32 noundef 0, i64 noundef %i.n) #24
  %.not30 = icmp eq ptr %i.o, null
  br i1 %.not30, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.157) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !7
  br label %bb.p

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr i8, ptr %i.l, i64 %i.n
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %.not31 = icmp eq i8 %i.r, 0
  br i1 %.not31, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i64 %i.n, 1                          ; 3 uses
  %i.t = icmp ult i64 %i.s, 1024
  br i1 %i.t, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  %i.u = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.b, i64 noundef %i.s) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.v = alloca i8, i64 %i.s, align 16            ; 2 uses
  %.not.i35 = icmp eq i64 %i.n, 0
  br i1 %.not.i35, label %ruby_nonempty_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.w = phi ptr [ %i.u, %.thread ], [ %i.v, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.w, ptr noundef nonnull readonly align 1 %i.l, i64 noundef range(i64 1, 0) %i.n, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.k, %bb.l
  %i.x = phi ptr [ %i.v, %bb.k ], [ %i.w, %bb.l ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %i.n
  store i8 0, ptr %i.y, align 1, !tbaa !34
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %ruby_nonempty_memcpy.exit, %RSTRING_PTR.exit
  %i.z = phi i64 [ %.pre, %ruby_nonempty_memcpy.exit ], [ %i.f, %bb.i ], [ %i.f, %RSTRING_PTR.exit ]
  %.024 = phi ptr [ %i.x, %ruby_nonempty_memcpy.exit ], [ %i.l, %bb.i ], [ null, %RSTRING_PTR.exit ]
  %i.aa = call ptr @rb_enc_get(i64 noundef %i.z) #21
  %i.ab = call fastcc double @rb_cstr_to_dbl_raise(ptr noundef %.024, ptr noundef %i.aa, i32 noundef %1, i32 noundef %2, ptr noundef %3) ; 2 uses
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !11
  %.not32 = icmp eq i64 %i.ac, 0
  br i1 %.not32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.a, ptr %i.c, align 8, !tbaa !100
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !101
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.ae = load volatile i64, ptr %i.ad, align 8, !tbaa !11 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.g, %bb.h
  %.0 = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ], [ %i.ab, %bb.o ], [ %i.ab, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret double %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_Float(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @rb_convert_to_float(i64 noundef %0, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_convert_to_float(i64 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.d = call fastcc i32 @to_float(ptr noundef %i.a, i32 noundef %1)
  switch i32 %i.d, label %bb.p [
    i32 4, label %bb.b
    i32 5, label %bb.c
    i32 0, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  br label %rb_float_new_inline.exit15

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11
  %i.g = call fastcc double @rb_str_to_dbl_raise(i64 noundef %i.f, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 2 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !7
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.e, label %rb_float_new_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.i = bitcast double %i.g to i64               ; 5 uses
  %cond.i = icmp eq i64 %i.i, 3458764513820540928
  br i1 %cond.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i64 %i.i, 60
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = and i32 %i.k, 7
  %i.m = add nsw i32 %i.l, -5
  %i.n = icmp ult i32 %i.m, -2
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.i, i64 range(i64 3458764513820540929, 3458764513820540928) %i.i, i64 3)
  %i.p = and i64 %i.o, -4
  %i.q = or disjoint i64 %i.p, 2
  br label %rb_float_new_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp eq i64 %i.i, 0
  br i1 %i.r, label %rb_float_new_inline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.s = call i64 @rb_float_new_in_heap(double noundef %i.g) #21
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.i, %bb.h, %bb.g, %bb.d
  %i.t = phi i64 [ 4, %bb.d ], [ %i.q, %bb.g ], [ %i.s, %bb.i ], [ -9223372036854775806, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %rb_float_new_inline.exit15

bb.j:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.a, align 8, !tbaa !11
  %i.v = tail call fastcc double @rb_str_to_dbl_raise(i64 noundef %i.u, i32 noundef 1, i32 noundef 1, ptr noundef null) ; 2 uses
  %i.w = bitcast double %i.v to i64               ; 5 uses
  %cond.i13 = icmp eq i64 %i.w, 3458764513820540928
  br i1 %cond.i13, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = lshr i64 %i.w, 60
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 7
  %i.aa = add nsw i32 %i.z, -5
  %i.ab = icmp ult i32 %i.aa, -2
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.w, i64 range(i64 3458764513820540929, 3458764513820540928) %i.w, i64 3)
  %i.ad = and i64 %i.ac, -4
  %i.ae = or disjoint i64 %i.ad, 2
  br label %rb_float_new_inline.exit15

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.w, 0
  br i1 %i.af, label %rb_float_new_inline.exit15, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ag = tail call i64 @rb_float_new_in_heap(double noundef %i.v) #21
  br label %rb_float_new_inline.exit15

bb.o:                                             ; preds = %bb.a
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = and i64 %i.ah, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  %i.am = icmp eq i32 %1, 0
  %or.cond.not = and i1 %i.am, %i.al
  br i1 %or.cond.not, label %rb_float_new_inline.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  %.not11 = icmp eq i32 %1, 0
  br i1 %.not11, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.an = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ao = call i64 @rb_protect(ptr noundef nonnull @convert_type_to_float_protected, i64 noundef %i.an, ptr noundef nonnull %i.c) #21
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !7
  %.not12 = icmp eq i32 %i.ap, 0
  br i1 %.not12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @rb_set_errinfo(i64 noundef 4) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %rb_float_new_inline.exit15

bb.t:                                             ; preds = %bb.p
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ar = tail call i64 @rb_convert_type_with_id(i64 noundef %i.aq, i32 noundef 4, ptr noundef nonnull @.str.19, i64 noundef 3409)
  br label %rb_float_new_inline.exit15

rb_float_new_inline.exit15:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.o, %bb.t, %bb.s, %rb_float_new_inline.exit, %bb.b
  %.0 = phi i64 [ %i.ar, %bb.t ], [ %i.ao, %bb.s ], [ %i.e, %bb.b ], [ 4, %bb.o ], [ %i.t, %rb_float_new_inline.exit ], [ %i.ae, %bb.l ], [ %i.ag, %bb.n ], [ -9223372036854775806, %bb.m ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_to_float(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = call fastcc i32 @to_float(ptr noundef %i.a, i32 noundef 1)
  %cond = icmp eq i32 %i.b, 4
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  br i1 %cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.e = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.c, i64 noundef %i.d)
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %numeric_to_float.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.g = tail call i64 @rb_obj_class(i64 noundef %i.c)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.158, i64 noundef %i.g) #22
  unreachable

numeric_to_float.exit:                            ; preds = %bb.b
  %i.h = tail call i64 @rb_convert_type_with_id(i64 noundef %i.c, i32 noundef 4, ptr noundef nonnull @.str.19, i64 noundef 3409)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %numeric_to_float.exit
  %.0 = phi i64 [ %i.h, %numeric_to_float.exit ], [ %i.c, %bb.a ]
end_hunk_0
