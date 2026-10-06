Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/string?download=true
inline.NumInlined: 2338
inline.NumDeleted: 197
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@rb_str_plus:bb.a
bb.j:                                             ; preds = %bb.i, %ruby_nonempty_memcpy.exit35
  %i.ax = tail call i32 @rb_enc_to_index(ptr noundef nonnull %i.p) #32
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !36
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 3145728
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !36
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 3145728                  ; 3 uses
  switch i32 %i.ba, label %bb.k [
    i32 1048576, label %RB_ENC_CODERANGE_AND.exit
    i32 2097152, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %RB_ENC_CODERANGE_AND.exit

bb.l:                                             ; preds = %bb.j
  %i.be = icmp eq i32 %i.bd, 1048576
  %..i = select i1 %i.be, i32 2097152, i32 %i.bd
  br label %RB_ENC_CODERANGE_AND.exit

RB_ENC_CODERANGE_AND.exit:                        ; preds = %bb.j, %bb.k, %bb.l
  %.0.i36 = phi i32 [ %i.bd, %bb.j ], [ 0, %bb.k ], [ %..i, %bb.l ]
  tail call void @rb_enc_set_index(i64 noundef %i.am, i32 noundef %i.ax) #28
  %i.bf = load i64, ptr %i.an, align 8, !tbaa !36
  %i.bg = and i64 %i.bf, -3145729
  %i.bh = zext nneg i32 %.0.i36 to i64
  %i.bi = or i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.an, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %i.a, ptr %i.c, align 8, !tbaa !64
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #28, !srcloc !113
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bk = load volatile i64, ptr %i.bj, align 8, !tbaa !48 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %i.b, ptr %i.d, align 8, !tbaa !64
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #28, !srcloc !114
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.bm = load volatile i64, ptr %i.bl, align 8, !tbaa !48 ; 0 uses
  ret i64 %i.am
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_string_value(ptr nofree noundef captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load volatile i64, ptr %0, align 8, !tbaa !48 ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = tail call i64 @rb_convert_type_with_id(i64 noundef %i.a, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.j, ptr %0, align 8, !tbaa !48
  br label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ %i.a, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  ret i64 %.0
}

declare ptr @rb_enc_check_str(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_str_opt_plus(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
RSTRING_PTR.exit:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = inttoptr i64 %1 to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 @rb_enc_get_index(i64 noundef %0) #28 ; 2 uses
  %i.h = tail call i32 @rb_enc_get_index(i64 noundef %1) #28 ; 2 uses
  %i.i = icmp slt i32 %i.g, 0
  %i.j = icmp slt i32 %i.h, 0
  %or.cond.not24.not28 = select i1 %i.i, i1 true, i1 %i.j
  %.not = icmp ne i32 %i.g, %i.h
  %or.cond17.not25 = select i1 %or.cond.not24.not28, i1 true, i1 %.not
  %i.k = sub i64 9223372036854775807, %i.f
  %i.l = icmp sgt i64 %i.c, %i.k
  %or.cond19 = select i1 %or.cond17.not25, i1 true, i1 %i.l
  br i1 %or.cond19, label %bb.b, label %bb.a

bb.a:                                             ; preds = %RSTRING_PTR.exit
  %i.m = tail call i64 @rb_str_plus(i64 noundef %0, i64 noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %RSTRING_PTR.exit, %bb.a
  %.0 = phi i64 [ %i.m, %bb.a ], [ 36, %RSTRING_PTR.exit ]
  ret i64 %.0
}

declare i32 @rb_enc_get_index(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_times(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  switch i64 %1, label %bb.d [
    i64 3, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.e = tail call fastcc i64 @str_duplicate(i64 noundef %i.d, i64 noundef %0)
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_cString, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  store volatile ptr %i.h, ptr %i.c, align 8, !tbaa !58
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.f, i64 noundef 5, i32 noundef 0, i64 noundef 40) #28 ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  store i64 0, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr i8, ptr %i.j, i64 24
  store i8 0, ptr %i.l, align 8, !tbaa !43
  tail call void @rb_enc_copy(i64 noundef %i.i, i64 noundef %0) #28
  br label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.m = trunc i64 %1 to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.o = tail call i64 @rb_num2long(i64 noundef %1) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.n, %bb.e ], [ %i.o, %bb.f ] ; 9 uses
  %i.p = icmp slt i64 %.0.i, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_num2long_inline.exit
  %i.q = load i64, ptr @rb_eArgError, align 8, !tbaa !48
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.6) #30
  unreachable

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.r = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38   ; 3 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr %i.r, align 8, !tbaa !36
  %i.w = and i64 %i.v, 8192
  %.not.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.r, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.i, %bb.j
  %i.z = phi ptr [ %i.y, %bb.j ], [ %i.x, %bb.i ]
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !43
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.p

bb.k:                                             ; preds = %RSTRING_PTR.exit
  %i.ac = tail call i64 @llvm.umax.i64(i64 %.0.i, i64 15)
  %spec.store.select.i.i = add nuw i64 %i.ac, 25  ; 2 uses
  %i.ad = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.store.select.i.i) #28
  %i.ae = load i64, ptr @rb_cString, align 8, !tbaa !48 ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.af = add nuw i64 %.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58
  store volatile ptr %i.ah, ptr %i.b, align 8, !tbaa !58
  %.0..0..0..0..0..0..0..0..i.i71 = load volatile ptr, ptr %i.b, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i71, i64 noundef %i.ae, i64 noundef 5, i32 noundef 0, i64 noundef %spec.store.select.i.i) #28 ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 4 uses
  %2 = getelementptr i8, ptr %i.aj, i64 16
  store i64 0, ptr %2, align 8, !tbaa !38
  %i.ak = getelementptr i8, ptr %i.aj, i64 24     ; 3 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !43
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.am = and i64 %i.al, 8192
  %.not.i72 = icmp eq i64 %i.am, 0
  br i1 %.not.i72, label %RSTRING_PTR.exit73, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !43
  br label %RSTRING_PTR.exit73

RSTRING_PTR.exit73:                               ; preds = %bb.l, %bb.m
  %i.ao = phi ptr [ %i.an, %bb.m ], [ %i.ak, %bb.l ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, i8 noundef 0, i64 noundef %i.af, i1 noundef false) #28
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58
  store volatile ptr %i.aq, ptr %i.a, align 8, !tbaa !58
  %.0..0..0..0..0..0..0..0..i.i74 = load volatile ptr, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i74, i64 noundef %i.ae, i64 noundef 8197, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr               ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr i8, ptr %i.as, i64 24
  %i.av = getelementptr i8, ptr %i.as, i64 32
  store i64 %.0.i, ptr %i.av, align 8, !tbaa !43
  %i.aw = add nuw i64 %.0.i, 1
  %i.ax = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.aw, i64 noundef 1) #33
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit73, %bb.n
  %.pre-phi = phi ptr [ %i.aj, %RSTRING_PTR.exit73 ], [ %i.as, %bb.n ]
  %.062 = phi i64 [ %i.ai, %RSTRING_PTR.exit73 ], [ %i.ar, %bb.n ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.pre-phi, i64 16
  store i64 %.0.i, ptr %i.ay, align 8, !tbaa !38
  tail call void @rb_enc_copy(i64 noundef %.062, i64 noundef %0) #28
  br label %bb.af

bb.p:                                             ; preds = %RSTRING_PTR.exit, %bb.h
  %.not = icmp eq i64 %.0.i, 0
  br i1 %.not, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = udiv i64 9223372036854775807, %.0.i
  %i.ba = icmp slt i64 %i.az, %i.t
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = load i64, ptr @rb_eArgError, align 8, !tbaa !48
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bb, ptr noundef nonnull @.str.7) #30
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bc = mul i64 %i.t, %.0.i                     ; 7 uses
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !36  ; 3 uses
  %i.be = and i64 %i.bd, 532676608
  %switch.i.i = icmp samesign ult i64 %i.be, 12582912
  br i1 %switch.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = trunc i64 %i.bd to i32
  %i.bg = lshr i32 %i.bf, 22
  %i.bh = and i32 %i.bg, 127                      ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 127
  br i1 %i.bi, label %bb.u, label %RB_ENCODING_GET.exit

bb.u:                                             ; preds = %bb.t
  %i.bj = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %bb.t, %bb.u
  %.0.i75 = phi i32 [ %i.bj, %bb.u ], [ %i.bh, %bb.t ]
  %i.bk = tail call ptr @rb_enc_from_index(i32 noundef %.0.i75) #28
  %i.bl = getelementptr i8, ptr %i.bk, i64 20
  %.val = load i32, ptr %i.bl, align 4, !tbaa !42
  %.pre = load i64, ptr %i.r, align 8, !tbaa !36
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %RB_ENCODING_GET.exit
  %i.bm = phi i64 [ %.pre, %RB_ENCODING_GET.exit ], [ %i.bd, %bb.s ]
  %i.bn = phi i32 [ %.val, %RB_ENCODING_GET.exit ], [ 1, %bb.s ] ; 2 uses
  %i.bo = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.bp = trunc i64 %i.bm to i32
  %i.bq = lshr i32 %i.bp, 22
  %i.br = and i32 %i.bq, 127                      ; 2 uses
  %i.bs = icmp eq i32 %i.br, 127
  br i1 %i.bs, label %bb.w, label %get_encoding.exit

bb.w:                                             ; preds = %bb.v
  %i.bt = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.v, %bb.w
  %.0.i.i = phi i32 [ %i.bt, %bb.w ], [ %i.br, %bb.v ]
  %i.bu = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28
  %i.bv = tail call fastcc i64 @str_enc_new(i64 noundef %i.bo, ptr noundef null, i64 noundef %i.bc, ptr noundef %i.bu) ; 3 uses
  %i.bw = inttoptr i64 %i.bv to ptr               ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !36
  %i.by = and i64 %i.bx, 8192
  %.not.i76 = icmp eq i64 %i.by, 0
  %i.bz = getelementptr i8, ptr %i.bw, i64 24     ; 2 uses
  br i1 %.not.i76, label %RSTRING_PTR.exit77, label %bb.x

bb.x:                                             ; preds = %get_encoding.exit
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  br label %RSTRING_PTR.exit77

RSTRING_PTR.exit77:                               ; preds = %get_encoding.exit, %bb.x
  %i.cb = phi ptr [ %i.ca, %bb.x ], [ %i.bz, %get_encoding.exit ] ; 6 uses
  %.not68 = icmp eq i64 %i.bc, 0
  br i1 %.not68, label %ruby_nonempty_memcpy.exit87, label %bb.y

bb.y:                                             ; preds = %RSTRING_PTR.exit77
  %i.cc = load i64, ptr %i.s, align 8, !tbaa !38  ; 5 uses
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !36
  %i.ce = and i64 %i.cd, 8192
  %.not.i78 = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr i8, ptr %i.r, i64 24      ; 2 uses
  br i1 %.not.i78, label %RSTRING_PTR.exit79, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43
  br label %RSTRING_PTR.exit79

RSTRING_PTR.exit79:                               ; preds = %bb.y, %bb.z
  %i.ch = phi ptr [ %i.cg, %bb.z ], [ %i.cf, %bb.y ]
  %.not.i80 = icmp eq i64 %i.cc, 0
  br i1 %.not.i80, label %ruby_nonempty_memcpy.exit, label %bb.aa

bb.aa:                                            ; preds = %RSTRING_PTR.exit79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cb, ptr noundef nonnull readonly align 1 %i.ch, i64 noundef range(i64 1, 0) %i.cc, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit79, %bb.aa
  %i.ci = sdiv i64 %i.bc, 2                       ; 2 uses
  %.not6988 = icmp sgt i64 %i.cc, %i.ci
  br i1 %.not6988, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ruby_nonempty_memcpy.exit, %ruby_nonempty_memcpy.exit84
  %.089 = phi i64 [ %i.ck, %ruby_nonempty_memcpy.exit84 ], [ %i.cc, %ruby_nonempty_memcpy.exit ] ; 4 uses
  %.not.i82 = icmp eq i64 %.089, 0
  br i1 %.not.i82, label %ruby_nonempty_memcpy.exit84, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.cj = getelementptr i8, ptr %i.cb, i64 %.089
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cj, ptr noundef nonnull readonly align 1 %i.cb, i64 noundef range(i64 1, 0) %.089, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit84

ruby_nonempty_memcpy.exit84:                      ; preds = %.lr.ph, %bb.ab
  %i.ck = shl i64 %.089, 1                        ; 3 uses
  %.not69 = icmp sgt i64 %i.ck, %i.ci
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %ruby_nonempty_memcpy.exit84, %ruby_nonempty_memcpy.exit
  %.0.lcssa = phi i64 [ %i.cc, %ruby_nonempty_memcpy.exit ], [ %i.ck, %ruby_nonempty_memcpy.exit84 ] ; 3 uses
  %.not.i85 = icmp eq i64 %i.bc, %.0.lcssa
  br i1 %.not.i85, label %ruby_nonempty_memcpy.exit87, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.cl = sub i64 %i.bc, %.0.lcssa
  %i.cm = getelementptr i8, ptr %i.cb, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cm, ptr noundef nonnull readonly align 1 %i.cb, i64 noundef range(i64 1, 0) %i.cl, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit87

ruby_nonempty_memcpy.exit87:                      ; preds = %bb.ac, %._crit_edge, %RSTRING_PTR.exit77
  %i.cn = getelementptr i8, ptr %i.bw, i64 16
  store i64 %i.bc, ptr %i.cn, align 8, !tbaa !38
  %i.co = getelementptr i8, ptr %i.cb, i64 %i.bc  ; 2 uses
  store i8 0, ptr %i.co, align 1, !tbaa !43
  %i.cp = icmp sgt i32 %i.bn, 1
  br i1 %i.cp, label %bb.ad, label %bb.ae, !prof !54

bb.ad:                                            ; preds = %ruby_nonempty_memcpy.exit87
  %i.cq = zext nneg i32 %i.bn to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.co, i8 noundef 0, i64 noundef %i.cq, i1 noundef false) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %ruby_nonempty_memcpy.exit87
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.bv, i64 noundef %0)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.o, %bb.c, %bb.b
  %.063 = phi i64 [ %i.e, %bb.b ], [ %i.i, %bb.c ], [ %.062, %bb.o ], [ %i.bv, %bb.ae ]
  ret i64 %.063
}

declare void @rb_enc_copy(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
end_hunk_0
