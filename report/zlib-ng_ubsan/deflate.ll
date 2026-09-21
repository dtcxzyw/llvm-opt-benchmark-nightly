Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/deflate?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0_@zng_deflateCopy:bb.a

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @778, i64 %i.o) #8, !nosanitize !13
  br label %bb.dd, !nosanitize !13

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !88
  br i1 %i.r, label %bb.df, label %bb.de, !prof !12, !nosanitize !13

bb.de:                                            ; preds = %bb.dd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @779, i64 %i.o) #8, !nosanitize !13
  br label %bb.df, !nosanitize !13

bb.df:                                            ; preds = %bb.dd, %bb.de
  %i.cx = load ptr, ptr %i.cl, align 8, !tbaa !47
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %i.cu, i64 %i.da ; 2 uses
  %i.dc = ptrtoint ptr %i.cu to i64, !nosanitize !13 ; 3 uses
  %i.dd = add i64 %i.da, %i.dc, !nosanitize !13   ; 3 uses
  %i.de = icmp ne ptr %i.cu, null, !nosanitize !13
  %i.df = icmp eq i64 %i.dd, 0
  %i.dg = xor i1 %i.de, %i.df
  %i.dh = icmp uge i64 %i.dd, %i.dc, !nosanitize !13
  %i.di = icmp slt i64 %i.da, 0
  %i.dj = xor i1 %i.di, %i.dh
  %i.dk = and i1 %i.dg, %i.dj, !nosanitize !13
  br i1 %i.dk, label %bb.dh, label %bb.dg, !prof !12, !nosanitize !13

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @780, i64 %i.dc, i64 %i.dd) #8, !nosanitize !13
  br label %bb.dh, !nosanitize !13

bb.dh:                                            ; preds = %bb.dg, %bb.df
  br i1 %i.at, label %.critedge, label %bb.di, !prof !12, !nosanitize !13

bb.di:                                            ; preds = %bb.dh
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @781, i64 %i.ar) #8, !nosanitize !13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.db, ptr %i.dl, align 16, !tbaa !88
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @782, i64 %i.ar) #8, !nosanitize !13
  br label %bb.dj, !nosanitize !13

.critedge:                                        ; preds = %bb.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.db, ptr %i.dm, align 16, !tbaa !88
  br label %bb.dj

bb.dj:                                            ; preds = %.critedge, %bb.di
  %i.dn = load ptr, ptr %i.bi, align 8, !tbaa !47 ; 3 uses
  br i1 %i.at, label %bb.dl, label %bb.dk, !prof !12, !nosanitize !13

bb.dk:                                            ; preds = %bb.dj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @783, i64 %i.ar) #8, !nosanitize !13
  br label %bb.dl, !nosanitize !13

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %i.do = load i32, ptr %i.cn, align 4, !tbaa !56 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.dn, label %bb.dm, !prof !12, !nosanitize !13

bb.dm:                                            ; preds = %bb.dl
  %i.dq = zext i32 %i.do to i64, !nosanitize !13
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @784, i64 %i.dq, i64 1) #9, !nosanitize !13
  br label %bb.dn, !nosanitize !13

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.dr = shl i32 %i.do, 1
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ds ; 2 uses
  %i.du = ptrtoint ptr %i.dn to i64, !nosanitize !13 ; 3 uses
  %i.dv = add i64 %i.ds, %i.du, !nosanitize !13   ; 3 uses
  %i.dw = icmp ne ptr %i.dn, null, !nosanitize !13
  %i.dx = icmp eq i64 %i.dv, 0
  %i.dy = xor i1 %i.dw, %i.dx
  %i.dz = icmp uge i64 %i.dv, %i.du, !nosanitize !13
  %i.ea = and i1 %i.dz, %i.dy, !nosanitize !13
  br i1 %i.ea, label %bb.dp, label %bb.do, !prof !12, !nosanitize !13

bb.do:                                            ; preds = %bb.dn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @785, i64 %i.du, i64 %i.dv) #8, !nosanitize !13
  br label %bb.dp, !nosanitize !13

bb.dp:                                            ; preds = %bb.do, %bb.dn
  br i1 %i.at, label %.critedge75, label %bb.dq, !prof !12, !nosanitize !13

bb.dq:                                            ; preds = %bb.dp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @786, i64 %i.ar) #8, !nosanitize !13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ai, i64 5936
  store ptr %i.dt, ptr %i.eb, align 16, !tbaa !58
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @787, i64 %i.ar) #8, !nosanitize !13
  br label %bb.dr, !nosanitize !13

.critedge75:                                      ; preds = %bb.dp
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ai, i64 5936
  store ptr %i.dt, ptr %i.ec, align 16, !tbaa !58
  br label %bb.dr

bb.dr:                                            ; preds = %.critedge75, %bb.dq
  %i.ed = load ptr, ptr %i.bi, align 8, !tbaa !47 ; 3 uses
  br i1 %i.at, label %bb.dt, label %bb.ds, !prof !12, !nosanitize !13

bb.ds:                                            ; preds = %bb.dr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @788, i64 %i.ar) #8, !nosanitize !13
  br label %bb.dt, !nosanitize !13

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %i.ee = load i32, ptr %i.cn, align 4, !tbaa !56 ; 3 uses
  %i.ef = icmp ult i32 %i.ee, 1073741824
  br i1 %i.ef, label %bb.dv, label %bb.du, !prof !12, !nosanitize !13

bb.du:                                            ; preds = %bb.dt
  %i.eg = zext i32 %i.ee to i64, !nosanitize !13
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @789, i64 %i.eg, i64 2) #9, !nosanitize !13
  br label %bb.dv, !nosanitize !13

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.eh = shl i32 %i.ee, 2
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ei ; 2 uses
  %i.ek = ptrtoint ptr %i.ed to i64, !nosanitize !13 ; 3 uses
  %i.el = add i64 %i.ei, %i.ek, !nosanitize !13   ; 3 uses
  %i.em = icmp ne ptr %i.ed, null, !nosanitize !13
  %i.en = icmp eq i64 %i.el, 0
  %i.eo = xor i1 %i.em, %i.en
  %i.ep = icmp uge i64 %i.el, %i.ek, !nosanitize !13
  %i.eq = and i1 %i.ep, %i.eo, !nosanitize !13
  br i1 %i.eq, label %bb.dx, label %bb.dw, !prof !12, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @790, i64 %i.ek, i64 %i.el) #8, !nosanitize !13
  br label %bb.dx, !nosanitize !13

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  br i1 %i.at, label %.thread.critedge, label %bb.dy, !prof !12, !nosanitize !13

bb.dy:                                            ; preds = %bb.dx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @791, i64 %i.ar) #8, !nosanitize !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.ai, i64 5944
  store ptr %i.ej, ptr %i.er, align 8, !tbaa !59
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @792, i64 %i.ar) #8, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @793, i64 %i.ar) #8, !nosanitize !13
  br label %.thread, !nosanitize !13

.thread.critedge:                                 ; preds = %bb.dx
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 5944
  store ptr %i.ej, ptr %i.es, align 8, !tbaa !59
  br label %.thread

.thread:                                          ; preds = %.thread.critedge, %bb.dy
  %i.et = getelementptr inbounds nuw i8, ptr %i.ai, i64 260
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ai, i64 2952
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !161
  br i1 %i.at, label %.thread69.critedge, label %.thread68, !prof !12, !nosanitize !13

.thread68:                                        ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @794, i64 %i.ar) #8, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @795, i64 %i.ar) #8, !nosanitize !13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ai, i64 2552
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ai, i64 2976
  store ptr %i.ev, ptr %i.ew, align 32, !tbaa !162
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @796, i64 %i.ar) #8, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @797, i64 %i.ar) #8, !nosanitize !13
  br label %.thread69, !nosanitize !13

.thread69.critedge:                               ; preds = %.thread
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ai, i64 2552
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ai, i64 2976
  store ptr %i.ex, ptr %i.ey, align 32, !tbaa !162
  br label %.thread69

.thread69:                                        ; preds = %.thread69.critedge, %.thread68
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ai, i64 2796
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ai, i64 3000
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !163
  br label %bb.dz

bb.dz:                                            ; preds = %bb.bi, %.thread69, %bb.l, %bb.a
  %.1 = phi i32 [ -2, %bb.a ], [ 0, %.thread69 ], [ -4, %bb.bi ], [ -4, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @zng_deflateSetParams(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !108 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !109
  %.not68 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !13  ; 3 uses
  %3 = icmp ne ptr %1, null, !nosanitize !13      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.03860 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.h ] ; 4 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03860 ; 2 uses
  %i.f = add i64 %.03860, 288230376151711744
  %i.g = icmp ult i64 %i.f, 576460752303423488
  %i.h = shl i64 %.03860, 5
  %i.i = add i64 %i.h, %i.d, !nosanitize !13      ; 3 uses
  %4 = icmp eq i64 %i.i, 0
  %5 = xor i1 %3, %4
  %i.j = icmp uge i64 %i.i, %i.d, !nosanitize !13
  %6 = and i1 %i.g, %i.j, !nosanitize !13
  %i.k = and i1 %5, %6, !nosanitize !13
  br i1 %i.k, label %bb.d, label %bb.c, !prof !12, !nosanitize !13

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @907, i64 %i.d, i64 %i.i) #8, !nosanitize !13
  br label %bb.d, !nosanitize !13

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = ptrtoint ptr %i.e to i64, !nosanitize !13 ; 2 uses
  %i.m = and i64 %i.l, 7, !nosanitize !13
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !13
  %7 = and i1 %3, %i.n
  br i1 %7, label %bb.f, label %bb.e, !prof !12, !nosanitize !13

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @909, i64 %i.l) #8, !nosanitize !13
  br label %bb.f, !nosanitize !13

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64, !nosanitize !13 ; 2 uses
  %i.q = and i64 %i.p, 7, !nosanitize !13
  %i.r = icmp eq i64 %i.q, 0, !nosanitize !13
  br i1 %i.r, label %bb.h, label %bb.g, !prof !12, !nosanitize !13

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @910, i64 %i.p) #8, !nosanitize !13
  br label %bb.h, !nosanitize !13

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.o, align 8, !tbaa !111
  %i.s = add nuw i64 %.03860, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.t = call fastcc i32 @deflateStateCheck(ptr noundef %0)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.i, label %._crit_edge66.thread90

bb.i:                                             ; preds = %._crit_edge
  %i.u = icmp ne ptr %0, null, !nosanitize !13
  %i.v = ptrtoint ptr %0 to i64, !nosanitize !13  ; 2 uses
  %i.w = and i64 %i.v, 7, !nosanitize !13
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !13
  %i.y = and i1 %i.u, %i.x, !nosanitize !13
  br i1 %i.y, label %bb.k, label %bb.j, !prof !12, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @911, i64 %i.v) #8, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64, !nosanitize !13 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !13
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !13
  br i1 %i.ac, label %bb.m, label %bb.l, !prof !12, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @912, i64 %i.aa) #8, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !48  ; 9 uses
  br i1 %.not68, label %._crit_edge66.thread, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.m
  %i.ae = ptrtoint ptr %1 to i64, !nosanitize !13 ; 6 uses
  %i.af = icmp ne ptr %1, null, !nosanitize !13   ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.thread84, %.lr.ph65
  %i.ag = phi i1 [ false, %.thread84 ], [ true, %.lr.ph65 ]
  %.03562.ph = phi i32 [ %.03562, %.thread84 ], [ 0, %.lr.ph65 ]
  %.13961.ph = phi i64 [ %i.be, %.thread84 ], [ 0, %.lr.ph65 ]
  br label %bb.n

bb.n:                                             ; preds = %.outer, %bb.ai
  %.03562 = phi i32 [ %.13659, %bb.ai ], [ %.03562.ph, %.outer ] ; 2 uses
  %.13961 = phi i64 [ %i.bd, %bb.ai ], [ %.13961.ph, %.outer ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.13961 ; 5 uses
  %i.ai = add i64 %.13961, 288230376151711744
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  %i.ak = shl i64 %.13961, 5
  %i.al = add i64 %i.ak, %i.ae, !nosanitize !13   ; 6 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = xor i1 %i.af, %i.am
  %i.ao = icmp uge i64 %i.al, %i.ae, !nosanitize !13
  %i.ap = and i1 %i.aj, %i.ao, !nosanitize !13
  %i.aq = and i1 %i.an, %i.ap, !nosanitize !13    ; 6 uses
  br i1 %i.aq, label %bb.p, label %bb.o, !prof !12, !nosanitize !13

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @913, i64 %i.ae, i64 %i.al) #8, !nosanitize !13
  br label %bb.p, !nosanitize !13

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ar = ptrtoint ptr %i.ah to i64, !nosanitize !13 ; 5 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !13
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !13   ; 4 uses
  %i.au = and i1 %i.af, %i.at, !nosanitize !13
  br i1 %i.au, label %bb.r, label %bb.q, !prof !12, !nosanitize !13

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @914, i64 %i.ar) #8, !nosanitize !13
  br label %bb.r, !nosanitize !13

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.av = and i1 %i.af, %i.at, !nosanitize !13
  br i1 %i.av, label %bb.t, label %bb.s, !prof !12, !nosanitize !13

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @916, i64 %i.ar) #8, !nosanitize !13
  br label %bb.t, !nosanitize !13

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = load i32, ptr %i.ah, align 8, !tbaa !112
  switch i32 %i.aw, label %bb.x [
    i32 0, label %bb.u
    i32 1, label %bb.v
    i32 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %i.aq, label %bb.ab, label %.sink.split, !prof !12, !nosanitize !13

bb.v:                                             ; preds = %bb.t
  br i1 %i.aq, label %bb.ab, label %.sink.split, !prof !12, !nosanitize !13

bb.w:                                             ; preds = %bb.t
  br i1 %i.aq, label %bb.ab, label %.sink.split, !prof !12, !nosanitize !13

bb.x:                                             ; preds = %bb.t
  br i1 %i.aq, label %bb.z, label %bb.y, !prof !12, !nosanitize !13

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @920, i64 %i.ae, i64 %i.al) #8, !nosanitize !13
  br label %bb.z, !nosanitize !13

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.at, label %.thread, label %bb.aa, !prof !12, !nosanitize !13

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @921, i64 %i.ar) #8, !nosanitize !13
  br label %.thread, !nosanitize !13

.thread:                                          ; preds = %bb.aa, %bb.z
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 -6, ptr %i.ax, align 8, !tbaa !111
  br label %bb.ai

.sink.split:                                      ; preds = %bb.w, %bb.v, %bb.u
  %.sink107 = phi ptr [ @918, %bb.v ], [ @917, %bb.u ], [ @919, %bb.w ]
  %.sink.ph = phi ptr [ %i.b, %bb.v ], [ %i.a, %bb.u ], [ %i.c, %bb.w ]
  call void @__ubsan_handle_pointer_overflow(ptr nonnull %.sink107, i64 %i.ae, i64 %i.al) #8, !nosanitize !13
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.w, %bb.v, %bb.u
  %.sink = phi ptr [ %i.b, %bb.v ], [ %i.a, %bb.u ], [ %i.c, %bb.w ], [ %.sink.ph, %.sink.split ]
  %i.ay = call fastcc i32 @deflateSetParamPre(ptr noundef %.sink, ptr noundef nonnull %i.ah)
  %.not55 = icmp eq i32 %i.ay, 0
  br i1 %.not55, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.aq, label %bb.ae, label %bb.ad, !prof !12, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @922, i64 %i.ae, i64 %i.al) #8, !nosanitize !13
  br label %bb.ae, !nosanitize !13

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.at, label %bb.ag, label %bb.af, !prof !12, !nosanitize !13

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @923, i64 %i.ar) #8, !nosanitize !13
  br label %bb.ag, !nosanitize !13

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64, !nosanitize !13 ; 2 uses
  %i.bb = and i64 %i.ba, 7, !nosanitize !13
  %i.bc = icmp eq i64 %i.bb, 0, !nosanitize !13
  br i1 %i.bc, label %.thread84, label %bb.ah, !prof !12, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @924, i64 %i.ba) #8, !nosanitize !13
  br label %.thread84, !nosanitize !13

bb.ai:                                            ; preds = %bb.ab, %.thread
  %.13659 = phi i32 [ 1, %.thread ], [ %.03562, %bb.ab ] ; 2 uses
  %i.bd = add nuw i64 %.13961, 1                  ; 2 uses
  %exitcond70.not = icmp eq i64 %i.bd, %2
  br i1 %exitcond70.not, label %._crit_edge66, label %bb.n, !llvm.loop !165

.thread84:                                        ; preds = %bb.ag, %bb.ah
  store i32 -5, ptr %i.az, align 8, !tbaa !111
  %i.be = add nuw i64 %.13961, 1                  ; 2 uses
  %exitcond70.not87 = icmp eq i64 %i.be, %2
  br i1 %exitcond70.not87, label %._crit_edge66.thread90, label %.outer, !llvm.loop !165

._crit_edge66:                                    ; preds = %bb.ai
  %i.bf = icmp eq i32 %.13659, 0
  %i.bg = select i1 %i.bf, i32 0, i32 -6
  br i1 %i.ag, label %._crit_edge66.thread, label %._crit_edge66.thread90

._crit_edge66.thread:                             ; preds = %bb.m, %._crit_edge66
  %.035.lcssa83 = phi i32 [ %i.bg, %._crit_edge66 ], [ 0, %bb.m ] ; 2 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !109 ; 4 uses
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = load ptr, ptr %i.b, align 8
  %i.bk = icmp ne ptr %i.bj, null
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bk
  br i1 %or.cond, label %bb.aj, label %bb.bs

bb.aj:                                            ; preds = %._crit_edge66.thread
  %i.bl = icmp eq ptr %i.bh, null
  br i1 %i.bl, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.bm = icmp ne ptr %i.ad, null, !nosanitize !13
  %i.bn = ptrtoint ptr %i.ad to i64, !nosanitize !13 ; 2 uses
  %i.bo = and i64 %i.bn, 63, !nosanitize !13
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !13
  %i.bq = and i1 %i.bm, %i.bp, !nosanitize !13
  br i1 %i.bq, label %bb.am, label %bb.al, !prof !12, !nosanitize !13

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @925, i64 %i.bn) #8, !nosanitize !13
  br label %bb.am, !nosanitize !13

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 176 ; 3 uses
  %i.bs = ptrtoint ptr %i.br to i64, !nosanitize !13 ; 2 uses
  %i.bt = and i64 %i.bs, 15, !nosanitize !13
  %i.bu = icmp eq i64 %i.bt, 0, !nosanitize !13
  br i1 %i.bu, label %bb.au, label %bb.an, !prof !12, !nosanitize !13

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @926, i64 %i.bs) #8, !nosanitize !13
  br label %bb.au, !nosanitize !13

bb.ao:                                            ; preds = %bb.aj
  %i.bv = ptrtoint ptr %i.bh to i64, !nosanitize !13 ; 2 uses
  %i.bw = and i64 %i.bv, 7, !nosanitize !13
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !13
  br i1 %i.bx, label %bb.aq, label %bb.ap, !prof !12, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @927, i64 %i.bv) #8, !nosanitize !13
  br label %bb.aq, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64, !nosanitize !13 ; 2 uses
  %i.ca = and i64 %i.bz, 7, !nosanitize !13
  %i.cb = icmp eq i64 %i.ca, 0, !nosanitize !13
  br i1 %i.cb, label %bb.as, label %bb.ar, !prof !12, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @928, i64 %i.bz) #8, !nosanitize !13
  br label %bb.as, !nosanitize !13

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !113 ; 4 uses
  %i.cd = icmp ne ptr %i.cc, null, !nosanitize !13
  %i.ce = ptrtoint ptr %i.cc to i64, !nosanitize !13 ; 2 uses
  %i.cf = and i64 %i.ce, 3, !nosanitize !13
  %i.cg = icmp eq i64 %i.cf, 0, !nosanitize !13
  %i.ch = and i1 %i.cd, %i.cg, !nosanitize !13
  br i1 %i.ch, label %bb.au, label %bb.at, !prof !12, !nosanitize !13

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @929, i64 %i.ce) #8, !nosanitize !13
  br label %bb.au, !nosanitize !13

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.am, %bb.an
  %.in = phi ptr [ %i.br, %bb.am ], [ %i.br, %bb.an ], [ %i.cc, %bb.at ], [ %i.cc, %bb.as ]
  %i.ci = load i32, ptr %.in, align 4, !tbaa !85
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !109 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.cl = icmp ne ptr %i.ad, null, !nosanitize !13
  %i.cm = ptrtoint ptr %i.ad to i64, !nosanitize !13 ; 2 uses
  %i.cn = and i64 %i.cm, 63, !nosanitize !13
  %i.co = icmp eq i64 %i.cn, 0, !nosanitize !13
  %i.cp = and i1 %i.cl, %i.co, !nosanitize !13
  br i1 %i.cp, label %bb.ax, label %bb.aw, !prof !12, !nosanitize !13

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @930, i64 %i.cm) #8, !nosanitize !13
  br label %bb.ax, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 180 ; 3 uses
  %i.cr = ptrtoint ptr %i.cq to i64, !nosanitize !13 ; 2 uses
  %i.cs = and i64 %i.cr, 3, !nosanitize !13
  %i.ct = icmp eq i64 %i.cs, 0, !nosanitize !13
  br i1 %i.ct, label %bb.bf, label %bb.ay, !prof !12, !nosanitize !13

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @931, i64 %i.cr) #8, !nosanitize !13
  br label %bb.bf, !nosanitize !13

bb.az:                                            ; preds = %bb.au
  %i.cu = ptrtoint ptr %i.cj to i64, !nosanitize !13 ; 2 uses
  %i.cv = and i64 %i.cu, 7, !nosanitize !13
  %i.cw = icmp eq i64 %i.cv, 0, !nosanitize !13
  br i1 %i.cw, label %bb.bb, label %bb.ba, !prof !12, !nosanitize !13

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @932, i64 %i.cu) #8, !nosanitize !13
  br label %bb.bb, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64, !nosanitize !13 ; 2 uses
  %i.cz = and i64 %i.cy, 7, !nosanitize !13
  %i.da = icmp eq i64 %i.cz, 0, !nosanitize !13
  br i1 %i.da, label %bb.bd, label %bb.bc, !prof !12, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @933, i64 %i.cy) #8, !nosanitize !13
  br label %bb.bd, !nosanitize !13

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !113 ; 4 uses
  %i.dc = icmp ne ptr %i.db, null, !nosanitize !13
  %i.dd = ptrtoint ptr %i.db to i64, !nosanitize !13 ; 2 uses
  %i.de = and i64 %i.dd, 3, !nosanitize !13
  %i.df = icmp eq i64 %i.de, 0, !nosanitize !13
  %i.dg = and i1 %i.dc, %i.df, !nosanitize !13
  br i1 %i.dg, label %bb.bf, label %bb.be, !prof !12, !nosanitize !13

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @934, i64 %i.dd) #8, !nosanitize !13
  br label %bb.bf, !nosanitize !13

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.ax, %bb.ay
  %.in48 = phi ptr [ %i.cq, %bb.ax ], [ %i.cq, %bb.ay ], [ %i.db, %bb.be ], [ %i.db, %bb.bd ]
  %i.dh = load i32, ptr %.in48, align 4, !tbaa !85
  %i.di = call i32 @zng_deflateParams(ptr noundef %0, i32 noundef %i.ci, i32 noundef %i.dh)
  %.not49 = icmp eq i32 %i.di, 0
  br i1 %.not49, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !109 ; 3 uses
  %.not50 = icmp eq ptr %i.dj, null
  br i1 %.not50, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dk = ptrtoint ptr %i.dj to i64, !nosanitize !13 ; 2 uses
  %i.dl = and i64 %i.dk, 7, !nosanitize !13
  %i.dm = icmp eq i64 %i.dl, 0, !nosanitize !13
  br i1 %i.dm, label %bb.bj, label %bb.bi, !prof !12, !nosanitize !13

bb.bi:                                            ; preds = %bb.bh
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @935, i64 %i.dk) #8, !nosanitize !13
  br label %bb.bj, !nosanitize !13

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.do = ptrtoint ptr %i.dn to i64, !nosanitize !13 ; 2 uses
  %i.dp = and i64 %i.do, 7, !nosanitize !13
  %i.dq = icmp eq i64 %i.dp, 0, !nosanitize !13
  br i1 %i.dq, label %bb.bl, label %bb.bk, !prof !12, !nosanitize !13

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @936, i64 %i.do) #8, !nosanitize !13
  br label %bb.bl, !nosanitize !13

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  store i32 -2, ptr %i.dn, align 8, !tbaa !111
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !109 ; 3 uses
  %.not51 = icmp eq ptr %i.dr, null
  br i1 %.not51, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ds = ptrtoint ptr %i.dr to i64, !nosanitize !13 ; 2 uses
  %i.dt = and i64 %i.ds, 7, !nosanitize !13
  %i.du = icmp eq i64 %i.dt, 0, !nosanitize !13
  br i1 %i.du, label %bb.bp, label %bb.bo, !prof !12, !nosanitize !13

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @937, i64 %i.ds) #8, !nosanitize !13
  br label %bb.bp, !nosanitize !13

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64, !nosanitize !13 ; 2 uses
  %i.dx = and i64 %i.dw, 7, !nosanitize !13
  %i.dy = icmp eq i64 %i.dx, 0, !nosanitize !13
  br i1 %i.dy, label %bb.br, label %bb.bq, !prof !12, !nosanitize !13

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @938, i64 %i.dw) #8, !nosanitize !13
  br label %bb.br, !nosanitize !13

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store i32 -2, ptr %i.dv, align 8, !tbaa !111
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bf, %bb.br, %bb.bm, %._crit_edge66.thread
  %.1 = phi i32 [ %.035.lcssa83, %._crit_edge66.thread ], [ -2, %bb.bm ], [ -2, %bb.br ], [ %.035.lcssa83, %bb.bf ] ; 2 uses
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !109 ; 3 uses
  %.not52 = icmp eq ptr %i.dz, null
  br i1 %.not52, label %._crit_edge66.thread90, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ea = ptrtoint ptr %i.dz to i64, !nosanitize !13 ; 2 uses
  %i.eb = and i64 %i.ea, 7, !nosanitize !13
  %i.ec = icmp eq i64 %i.eb, 0, !nosanitize !13
  br i1 %i.ec, label %bb.bv, label %bb.bu, !prof !12, !nosanitize !13

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @939, i64 %i.ea) #8, !nosanitize !13
  br label %bb.bv, !nosanitize !13

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64, !nosanitize !13 ; 2 uses
  %i.ef = and i64 %i.ee, 7, !nosanitize !13
  %i.eg = icmp eq i64 %i.ef, 0, !nosanitize !13
  br i1 %i.eg, label %bb.bx, label %bb.bw, !prof !12, !nosanitize !13

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @940, i64 %i.ee) #8, !nosanitize !13
  br label %bb.bx, !nosanitize !13

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !113 ; 3 uses
  %i.ei = icmp ne ptr %i.eh, null, !nosanitize !13
  %i.ej = ptrtoint ptr %i.eh to i64, !nosanitize !13 ; 2 uses
  %i.ek = and i64 %i.ej, 3, !nosanitize !13
  %i.el = icmp eq i64 %i.ek, 0, !nosanitize !13
  %i.em = and i1 %i.ei, %i.el, !nosanitize !13
  br i1 %i.em, label %bb.bz, label %bb.by, !prof !12, !nosanitize !13

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @941, i64 %i.ej) #8, !nosanitize !13
  br label %bb.bz, !nosanitize !13

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.en = load i32, ptr %i.eh, align 4, !tbaa !85
  %i.eo = icmp ne ptr %i.ad, null, !nosanitize !13
  %i.ep = ptrtoint ptr %i.ad to i64, !nosanitize !13 ; 2 uses
  %i.eq = and i64 %i.ep, 63, !nosanitize !13
  %i.er = icmp eq i64 %i.eq, 0, !nosanitize !13
  %i.es = and i1 %i.eo, %i.er, !nosanitize !13
  br i1 %i.es, label %bb.cb, label %bb.ca, !prof !12, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @942, i64 %i.ep) #8, !nosanitize !13
  br label %bb.cb, !nosanitize !13

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.et = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  %i.eu = ptrtoint ptr %i.et to i64, !nosanitize !13 ; 2 uses
  %i.ev = and i64 %i.eu, 7, !nosanitize !13
  %i.ew = icmp eq i64 %i.ev, 0, !nosanitize !13
  br i1 %i.ew, label %bb.cd, label %bb.cc, !prof !12, !nosanitize !13

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @943, i64 %i.eu) #8, !nosanitize !13
  br label %bb.cd, !nosanitize !13

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.en, ptr %i.et, align 8, !tbaa !62
  br label %._crit_edge66.thread90

._crit_edge66.thread90:                           ; preds = %.thread84, %bb.bs, %bb.cd, %._crit_edge66, %._crit_edge
  %.040 = phi i32 [ %.1, %bb.bs ], [ -2, %._crit_edge ], [ -5, %._crit_edge66 ], [ %.1, %bb.cd ], [ -5, %.thread84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @deflateSetParamPre(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 !func_sanitize !166 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !13
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !13  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13
  %i.e = and i1 %i.a, %i.d, !nosanitize !13
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1140, i64 %i.b) #8, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !13 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !13
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !13
  br i1 %i.i, label %bb.e, label %bb.d, !prof !12, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1141, i64 %i.g) #8, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i64, ptr %i.f, align 8, !tbaa !114
  %i.k = icmp ult i64 %i.j, 4
  %i.l = zext i1 %i.k to i32                      ; 2 uses
  %i.m = ptrtoint ptr %0 to i64, !nosanitize !13  ; 4 uses
  %i.n = and i64 %i.m, 7, !nosanitize !13
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !13     ; 2 uses
  br i1 %i.o, label %bb.f, label %.thread, !prof !12, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.thread13, label %bb.h

.thread:                                          ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1143, i64 %i.m) #8, !nosanitize !13
  %i.q = load ptr, ptr %0, align 8, !tbaa !109
  %.not6 = icmp eq ptr %i.q, null
  br i1 %.not6, label %.thread8, label %bb.g

bb.g:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1144, i64 %i.m) #8, !nosanitize !13
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %bb.h, !nosanitize !13

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.r = phi ptr [ %i.p, %bb.f ], [ %.pre, %bb.g ] ; 3 uses
  %i.s = icmp ne ptr %i.r, null, !nosanitize !13
  %i.t = ptrtoint ptr %i.r to i64, !nosanitize !13 ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !13
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !13
  %i.w = and i1 %i.s, %i.v, !nosanitize !13
  br i1 %i.w, label %bb.j, label %bb.i, !prof !12, !nosanitize !13

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1145, i64 %i.t) #8, !nosanitize !13
  br label %bb.j, !nosanitize !13

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64, !nosanitize !13 ; 2 uses
  %i.z = and i64 %i.y, 7, !nosanitize !13
  %i.aa = icmp eq i64 %i.z, 0, !nosanitize !13
  br i1 %i.aa, label %bb.l, label %bb.k, !prof !12, !nosanitize !13

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1146, i64 %i.y) #8, !nosanitize !13
  br label %bb.l, !nosanitize !13

bb.l:                                             ; preds = %bb.j, %bb.k
  store i32 -5, ptr %i.x, align 8, !tbaa !111
  br i1 %i.o, label %.thread13, label %.thread8, !prof !167, !nosanitize !13

.thread8:                                         ; preds = %.thread, %bb.l
  %.010 = phi i32 [ 1, %bb.l ], [ %i.l, %.thread ]
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @1147, i64 %i.m) #8, !nosanitize !13
  br label %.thread13, !nosanitize !13

.thread13:                                        ; preds = %bb.f, %.thread8, %bb.l
  %.011 = phi i32 [ %.010, %.thread8 ], [ 1, %bb.l ], [ %i.l, %bb.f ]
  store ptr %1, ptr %0, align 8, !tbaa !109
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @zng_deflateGetParams(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !108 {
bb.a:
  %.not55 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64, !nosanitize !13  ; 3 uses
  %3 = icmp ne ptr %1, null, !nosanitize !13      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.04147 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.h ] ; 4 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04147 ; 2 uses
  %i.c = add i64 %.04147, 288230376151711744
  %i.d = icmp ult i64 %i.c, 576460752303423488
  %i.e = shl i64 %.04147, 5
  %i.f = add i64 %i.e, %i.a, !nosanitize !13      ; 3 uses
  %4 = icmp eq i64 %i.f, 0
  %5 = xor i1 %3, %4
  %i.g = icmp uge i64 %i.f, %i.a, !nosanitize !13
  %6 = and i1 %i.d, %i.g, !nosanitize !13
  %i.h = and i1 %5, %6, !nosanitize !13
  br i1 %i.h, label %bb.d, label %bb.c, !prof !12, !nosanitize !13

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @944, i64 %i.a, i64 %i.f) #8, !nosanitize !13
  br label %bb.d, !nosanitize !13

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = ptrtoint ptr %i.b to i64, !nosanitize !13 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !13
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !13
  %7 = and i1 %3, %i.k
  br i1 %7, label %bb.f, label %bb.e, !prof !12, !nosanitize !13

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @945, i64 %i.i) #8, !nosanitize !13
  br label %bb.f, !nosanitize !13

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64, !nosanitize !13 ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !13
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !13
  br i1 %i.o, label %bb.h, label %bb.g, !prof !12, !nosanitize !13

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @946, i64 %i.m) #8, !nosanitize !13
  br label %bb.h, !nosanitize !13

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.l, align 8, !tbaa !111
  %i.p = add nuw i64 %.04147, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.q = call fastcc i32 @deflateStateCheck(ptr noundef %0)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %._crit_edge53

bb.i:                                             ; preds = %._crit_edge
  %i.r = icmp ne ptr %0, null, !nosanitize !13
  %i.s = ptrtoint ptr %0 to i64, !nosanitize !13  ; 2 uses
  %i.t = and i64 %i.s, 7, !nosanitize !13
  %i.u = icmp eq i64 %i.t, 0, !nosanitize !13
  %i.v = and i1 %i.r, %i.u, !nosanitize !13
  br i1 %i.v, label %bb.k, label %bb.j, !prof !12, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @947, i64 %i.s) #8, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64, !nosanitize !13 ; 2 uses
  %i.y = and i64 %i.x, 7, !nosanitize !13
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !13
  br i1 %i.z, label %bb.m, label %bb.l, !prof !12, !nosanitize !13

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @948, i64 %i.x) #8, !nosanitize !13
  br label %bb.m, !nosanitize !13

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not55, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.m
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !48  ; 5 uses
  %i.ab = ptrtoint ptr %1 to i64, !nosanitize !13 ; 14 uses
  %i.ac = icmp ne ptr %1, null, !nosanitize !13   ; 3 uses
  %i.ad = icmp ne ptr %i.aa, null
  %i.ae = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.af = and i64 %i.ae, 63
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = and i1 %i.ad, %i.ag                     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = and i64 %i.aj, 7
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 180 ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = and i64 %i.an, 3
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 176 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = and i64 %i.ar, 15
  %i.at = icmp eq i64 %i.as, 0
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph52, %bb.co
  %.050 = phi i32 [ 0, %.lr.ph52 ], [ %.1, %bb.co ] ; 6 uses
  %.03949 = phi i32 [ 0, %.lr.ph52 ], [ %spec.select, %bb.co ]
  %.14248 = phi i64 [ 0, %.lr.ph52 ], [ %i.cy, %bb.co ] ; 4 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.14248 ; 13 uses
  %i.av = add i64 %.14248, 288230376151711744
  %i.aw = icmp ult i64 %i.av, 576460752303423488
  %i.ax = shl i64 %.14248, 5
  %i.ay = add i64 %i.ax, %i.ab, !nosanitize !13   ; 14 uses
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = xor i1 %i.ac, %i.az
  %i.bb = icmp uge i64 %i.ay, %i.ab, !nosanitize !13
  %i.bc = and i1 %i.aw, %i.bb, !nosanitize !13
  %i.bd = and i1 %i.ba, %i.bc, !nosanitize !13    ; 12 uses
  br i1 %i.bd, label %bb.p, label %bb.o, !prof !12, !nosanitize !13

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @949, i64 %i.ab, i64 %i.ay) #8, !nosanitize !13
  br label %bb.p, !nosanitize !13

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.be = ptrtoint ptr %i.au to i64, !nosanitize !13 ; 14 uses
  %i.bf = and i64 %i.be, 7, !nosanitize !13
  %i.bg = icmp eq i64 %i.bf, 0, !nosanitize !13   ; 13 uses
  %i.bh = and i1 %i.ac, %i.bg, !nosanitize !13
  br i1 %i.bh, label %bb.r, label %bb.q, !prof !12, !nosanitize !13

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @950, i64 %i.be) #8, !nosanitize !13
  br label %bb.r, !nosanitize !13

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = and i1 %i.ac, %i.bg, !nosanitize !13
  br i1 %i.bi, label %bb.t, label %bb.s, !prof !12, !nosanitize !13

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @951, i64 %i.be) #8, !nosanitize !13
  br label %bb.t, !nosanitize !13

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !112
  switch i32 %i.bj, label %bb.cf [
    i32 0, label %bb.u
    i32 1, label %bb.ap
    i32 2, label %bb.bk
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %i.bd, label %bb.w, label %bb.v, !prof !12, !nosanitize !13

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @952, i64 %i.ab, i64 %i.ay) #8, !nosanitize !13
  br label %bb.w, !nosanitize !13

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.bg, label %bb.y, label %bb.x, !prof !12, !nosanitize !13

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @953, i64 %i.be) #8, !nosanitize !13
  br label %bb.y, !nosanitize !13

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !114
  %i.bm = icmp ult i64 %i.bl, 4
  br i1 %i.bm, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  br i1 %i.bd, label %bb.ab, label %bb.aa, !prof !12, !nosanitize !13

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @954, i64 %i.ab, i64 %i.ay) #8, !nosanitize !13
  br label %bb.ab, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.bg, label %bb.ad, label %bb.ac, !prof !12, !nosanitize !13

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @955, i64 %i.be) #8, !nosanitize !13
  br label %bb.ad, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i32 -5, ptr %i.bn, align 8, !tbaa !111
  br label %bb.ck

bb.ae:                                            ; preds = %bb.y
  br i1 %i.ah, label %bb.ag, label %bb.af, !prof !12, !nosanitize !13

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @956, i64 %i.ae) #8, !nosanitize !13
  br label %bb.ag, !nosanitize !13

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.at, label %bb.ai, label %bb.ah, !prof !12, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @957, i64 %i.ar) #8, !nosanitize !13
  br label %bb.ai, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bo = load i32, ptr %i.aq, align 16, !tbaa !60
  br i1 %i.bd, label %bb.ak, label %bb.aj, !prof !12, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @958, i64 %i.ab, i64 %i.ay) #8, !nosanitize !13
  br label %bb.ak, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.bg, label %bb.am, label %bb.al, !prof !12, !nosanitize !13

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @959, i64 %i.be) #8, !nosanitize !13
  br label %bb.am, !nosanitize !13

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !113 ; 3 uses
  %i.br = icmp ne ptr %i.bq, null, !nosanitize !13
  %i.bs = ptrtoint ptr %i.bq to i64, !nosanitize !13 ; 2 uses
  %i.bt = and i64 %i.bs, 3, !nosanitize !13
  %i.bu = icmp eq i64 %i.bt, 0, !nosanitize !13
  %i.bv = and i1 %i.br, %i.bu, !nosanitize !13
  br i1 %i.bv, label %bb.ao, label %bb.an, !prof !12, !nosanitize !13

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @960, i64 %i.bs) #8, !nosanitize !13
  br label %bb.ao, !nosanitize !13

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !85
  br label %bb.ck

bb.ap:                                            ; preds = %bb.t
  br i1 %i.bd, label %bb.ar, label %bb.aq, !prof !12, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @961, i64 %i.ab, i64 %i.ay) #8, !nosanitize !13
  br label %bb.ar, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.bg, label %bb.at, label %bb.as, !prof !12, !nosanitize !13

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @962, i64 %i.be) #8, !nosanitize !13
  br label %bb.at, !nosanitize !13

end_hunk_0
