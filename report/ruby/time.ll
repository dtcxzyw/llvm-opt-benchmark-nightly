inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@time_init_now:bb.a
RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !43

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %1) #19
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i9, label %bb.b, !prof !44

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %1) #18
  %.pre = load i64, ptr %i.d, align 8, !tbaa !30
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i.i9

rbimpl_RB_TYPE_P_fastpath.exit.i.i9:              ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  %i.k = and i64 %i.j, 95
  %or.cond.not.i.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !31

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i9
  %i.l = getelementptr i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i10 = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i10, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.u = getelementptr i8, ptr %.016.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = icmp eq ptr %i.v, @time_data_type
  br i1 %i.w, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i9
  %i.x = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.e, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.x, %.critedge.i.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %.1.i.i, i64 40    ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 61572651155456
  %.not.i = icmp eq i64 %i.aa, 26388279066624
  br i1 %.not.i, label %get_new_timeval.exit, label %bb.f

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.ab = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.ac = tail call i64 @rb_obj_class(i64 noundef %1) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.117, i64 noundef %i.ac) #19
  unreachable

get_new_timeval.exit:                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.ad = and i64 %i.z, -131941395333121
  store i64 %i.ad, ptr %i.y, align 8
  %i.ae = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %3) #18
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.g, label %rb_timespec_now.exit

bb.g:                                             ; preds = %get_new_timeval.exit
  call void @rb_sys_fail(ptr noundef nonnull @.str) #19
  unreachable

rb_timespec_now.exit:                             ; preds = %get_new_timeval.exit
  %i.ag = load i64, ptr %3, align 8, !tbaa !26    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28 ; 4 uses
  %i.aj = add i64 %i.ag, 4611686018427387904
  %or.cond.i.i11 = icmp sgt i64 %i.aj, -1
  br i1 %or.cond.i.i11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_timespec_now.exit
  %i.ak = shl nsw i64 %i.ag, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %rb_long2num_inline.exit.i

bb.i:                                             ; preds = %rb_timespec_now.exit
  %i.am = call i64 @rb_int2big(i64 noundef %i.ag) #18
  br label %rb_long2num_inline.exit.i

rb_long2num_inline.exit.i:                        ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.al, %bb.h ], [ %i.am, %bb.i ]
  %i.an = call fastcc i64 @wmul(i64 noundef %.0.i.i, i64 noundef 2000000001) ; 2 uses
  %.not.i12 = icmp eq i64 %i.ai, 0
  br i1 %.not.i12, label %timenano2timew.exit, label %bb.j

bb.j:                                             ; preds = %rb_long2num_inline.exit.i
  %i.ao = add i64 %i.ai, 4611686018427387904
  %or.cond.i6.i = icmp sgt i64 %i.ao, -1
  br i1 %or.cond.i6.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = shl nsw i64 %i.ai, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %rb_long2num_inline.exit8.i

bb.l:                                             ; preds = %bb.j
  %i.ar = call i64 @rb_int2big(i64 noundef %i.ai) #18
  br label %rb_long2num_inline.exit8.i

rb_long2num_inline.exit8.i:                       ; preds = %bb.l, %bb.k
  %.0.i7.i = phi i64 [ %i.aq, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = call fastcc i64 @wadd(i64 noundef %i.an, i64 noundef %.0.i7.i)
  br label %timenano2timew.exit

timenano2timew.exit:                              ; preds = %rb_long2num_inline.exit.i, %rb_long2num_inline.exit8.i
  %.0.i = phi i64 [ %i.as, %rb_long2num_inline.exit8.i ], [ %i.an, %rb_long2num_inline.exit.i ] ; 5 uses
  store i64 %.0.i, ptr %.1.i.i, align 8, !tbaa !22
  %i.at = trunc i64 %.0.i to i1
  br i1 %i.at, label %time_set_timew.exit, label %bb.m

bb.m:                                             ; preds = %timenano2timew.exit
  %i.au = icmp eq i64 %.0.i, 0
  %i.av = and i64 %.0.i, 6
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = or i1 %i.au, %i.aw
  br i1 %i.ax, label %time_set_timew.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %.0.i) #18
  br label %time_set_timew.exit

time_set_timew.exit:                              ; preds = %timenano2timew.exit, %bb.m, %bb.n
  %i.ay = icmp eq i64 %2, 4
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %time_set_timew.exit
  %i.az = call fastcc i64 @time_zonelocal(i64 noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %time_set_timew.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @time_init_parse(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 25 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %5 = alloca %struct.vtm, align 8                ; 10 uses
  %i.c = tail call i64 @rb_check_string_type(i64 noundef %2) #18 ; 7 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.bi, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @rb_enc_get(i64 noundef %i.c) #18 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 20
  %.val.i.i = load i32, ptr %i.f, align 4, !tbaa !54
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %bb.b
  %i.g = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.e) #21
  %.not3.i.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i.i, label %bb.c, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %bb.b, %rb_enc_str_asciicompat_p.exit
  %i.h = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.144) #19
  unreachable

bb.c:                                             ; preds = %rb_enc_str_asciicompat_p.exit
  %i.i = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.i, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 7 uses
  %6 = ptrtoaddr ptr %i.n to i64                  ; 4 uses
  %i.o = getelementptr i8, ptr %i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56   ; 6 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.n, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.r = icmp eq i64 %4, 4
  br i1 %i.r, label %rb_num2ull_inline.exit, label %bb.e

bb.e:                                             ; preds = %RSTRING_END.exit
  %i.s = trunc i64 %4 to i1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = ashr i64 %4, 1
  br label %rb_num2ull_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i64 @rb_num2ull(i64 noundef %4) #18
  br label %rb_num2ull_inline.exit

rb_num2ull_inline.exit:                           ; preds = %bb.g, %bb.f, %RSTRING_END.exit
  %i.v = phi i64 [ -1, %RSTRING_END.exit ], [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %i.w = icmp ult ptr %i.n, %i.q
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %rb_num2ull_inline.exit
  %i.x = load i8, ptr %i.n, align 1, !tbaa !53    ; 2 uses
  %i.y = sext i8 %i.x to i32
  %i.z = icmp ne i8 %i.x, 32
  %i.aa = add nsw i32 %i.y, -14
  %i.ab = icmp ult i32 %i.aa, -5
  %narrow.i.not = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %narrow.i.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.q, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !53  ; 2 uses
  %i.ae = sext i8 %i.ad to i32
  %i.af = icmp ne i8 %i.ad, 32
  %i.ag = add nsw i32 %i.ae, -14
  %i.ah = icmp ult i32 %i.ag, -5
  %narrow.i136.not = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %narrow.i136.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.145, i64 noundef %i.c) #19
  unreachable

bb.k:                                             ; preds = %bb.i, %rb_num2ull_inline.exit
  %i.aj = ptrtoint ptr %i.q to i64                ; 8 uses
  %7 = ptrtoint ptr %i.n to i64
  %i.ak = call i64 @rb_int_parse_cstr(ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef 1) #18 ; 4 uses
  %i.al = icmp eq i64 %i.ak, 4
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.am, ptr noundef nonnull @.str.145, i64 noundef %i.c) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.ao = icmp ult i64 %i.an, 4
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.aq = trunc nuw nsw i64 %i.an to i32
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.as = sub nsw i64 0, %i.an
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.146, i32 noundef %i.aq, ptr noundef %i.at) #19
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !69  ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.q
  br i1 %i.av, label %.thread149, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.aj, %i.aw
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %.critedge2

bb.q:                                             ; preds = %bb.p
  %i.az = load i8, ptr %i.au, align 1, !tbaa !53
  %i.ba = icmp eq i8 %i.az, 45
  br i1 %i.ba, label %bb.r, label %.critedge2

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr i8, ptr %i.au, i64 1
  %i.bc = call fastcc i32 @two_digits(ptr noundef %i.bb, ptr noundef %i.q, ptr noundef %i.a, ptr noundef nonnull @.str.20) ; 13 uses
  %i.bd = icmp ugt i32 %i.bc, 15
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @.str.105) #19
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !69  ; 5 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.aj, %i.bg
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %bb.u, label %.critedge2

bb.u:                                             ; preds = %bb.t
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !53
  %i.bk = icmp eq i8 %i.bj, 45
  br i1 %i.bk, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr i8, ptr %i.bf, i64 1
  %i.bm = call fastcc i32 @two_digits(ptr noundef %i.bl, ptr noundef %i.q, ptr noundef %i.a, ptr noundef nonnull @.str.21) ; 11 uses
  %i.bn = icmp ugt i32 %i.bm, 31
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bo, ptr noundef nonnull @.str.106) #19
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !69  ; 7 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.aj, %i.bq                    ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %bb.x
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !53
  switch i8 %i.bt, label %.critedge2 [
    i8 32, label %bb.z
    i8 84, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.bu = getelementptr i8, ptr %i.bp, i64 1      ; 12 uses
  %.not = icmp eq i64 %i.br, 1
  br i1 %.not, label %.critedge2, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !53
  %i.bw = add i8 %i.bv, -58
  %i.bx = icmp ult i8 %i.bw, -10
  br i1 %i.bx, label %.critedge2, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = call fastcc i32 @two_digits(ptr noundef nonnull %i.bu, ptr noundef %i.q, ptr noundef %i.a, ptr noundef nonnull @.str.22) ; 7 uses
  %i.bz = icmp ugt i32 %i.by, 31
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ca, ptr noundef nonnull @.str.107) #19
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !69  ; 5 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.aj, %i.cc
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !53
  switch i8 %i.cf, label %bb.ag [
    i8 46, label %bb.af
    i8 58, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.cg = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.ch = getelementptr i8, ptr %i.cb, i64 1
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.bu to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @.str.147, i32 noundef %i.cl, ptr noundef nonnull %i.bu) #19
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cm = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.cn = getelementptr i8, ptr %i.cb, i64 1
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.bu to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cm, ptr noundef nonnull @.str.148, i32 noundef %i.cr, ptr noundef nonnull %i.bu) #19
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cs = getelementptr i8, ptr %i.cb, i64 1
  %i.ct = call fastcc i32 @two_digits(ptr noundef %i.cs, ptr noundef %i.q, ptr noundef %i.a, ptr noundef nonnull @.str.23) ; 7 uses
  %i.cu = icmp ugt i32 %i.ct, 63
  br i1 %i.cu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cv = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cv, ptr noundef nonnull @.str.108) #19
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !69  ; 5 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.aj, %i.cx
  %i.cz = icmp sgt i64 %i.cy, 0
  br i1 %i.cz, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !53
  switch i8 %i.da, label %bb.am [
    i8 46, label %bb.al
    i8 58, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.db = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.dc = getelementptr i8, ptr %i.cw, i64 1
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.bu to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.db, ptr noundef nonnull @.str.149, i32 noundef %i.dg, ptr noundef nonnull %i.bu) #19
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.dh = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.di = getelementptr i8, ptr %i.cw, i64 1
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.bu to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = trunc i64 %i.dl to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dh, ptr noundef nonnull @.str.150, i32 noundef %i.dm, ptr noundef nonnull %i.bu) #19
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.dn = getelementptr i8, ptr %i.cw, i64 1
  %i.do = call fastcc i32 @two_digits(ptr noundef %i.dn, ptr noundef %i.q, ptr noundef %i.a, ptr noundef nonnull @.str.24) ; 7 uses
  %i.dp = icmp ugt i32 %i.do, 63
  br i1 %i.dp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dq = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dq, ptr noundef nonnull @.str.109) #19
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !69  ; 5 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.aj, %i.ds
  %i.du = icmp sgt i64 %i.dt, 0
  br i1 %i.du, label %bb.aq, label %.critedge2

bb.aq:                                            ; preds = %bb.ap
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !53
  %i.dw = icmp eq i8 %i.dv, 46
  br i1 %i.dw, label %bb.ar, label %.critedge2

bb.ar:                                            ; preds = %bb.aq
  %i.dx = getelementptr i8, ptr %i.dr, i64 1      ; 5 uses
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !69
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = sub i64 %i.aj, %i.dy                    ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.ea = icmp ne i64 %i.v, 0
  %i.eb = icmp sgt i64 %i.dz, 0
  %or.cond192 = and i1 %i.ea, %i.eb
  br i1 %or.cond192, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %storemerge193 = phi i64 [ %i.eg, %bb.as ], [ 0, %bb.ar ] ; 4 uses
  %i.ec = getelementptr i8, ptr %i.dx, i64 %storemerge193
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !53
  %i.ee = add i8 %i.ed, -58
  %i.ef = icmp ult i8 %i.ee, -10
  br i1 %i.ef, label %.critedge, label %bb.as

bb.as:                                            ; preds = %.lr.ph
  %i.eg = add nuw nsw i64 %storemerge193, 1       ; 5 uses
  store i64 %i.eg, ptr %i.b, align 8, !tbaa !13
  %i.eh = icmp ult i64 %i.eg, %i.v
  %i.ei = icmp slt i64 %i.eg, %i.dz
  %or.cond = and i1 %i.eh, %i.ei
  br i1 %or.cond, label %.lr.ph, label %.critedge.thread257, !llvm.loop !72

.critedge:                                        ; preds = %.lr.ph
  %.not129 = icmp eq i64 %storemerge193, 0
  br i1 %.not129, label %.critedge.thread, label %.critedge.thread257

.critedge.thread:                                 ; preds = %bb.ar, %.critedge
  %i.ej = call ptr @rb_enc_get(i64 noundef %i.c) #18
  %i.ek = call i32 @rb_enc_precise_mbclen(ptr noundef %i.dx, ptr noundef %i.q, ptr noundef %i.ej) #18
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ek, i32 0)
  %i.el = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.bu to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = trunc i64 %i.ep to i32
  %i.er = add i32 %spec.store.select, %i.eq
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.el, ptr noundef nonnull @.str.151, i32 noundef %i.er, ptr noundef nonnull %i.bu) #19
  unreachable

.critedge.thread257:                              ; preds = %bb.as, %.critedge
  %storemerge.lcssa260 = phi i64 [ %storemerge193, %.critedge ], [ %i.eg, %bb.as ]
  %i.es = call i64 @rb_int_parse_cstr(ptr noundef %i.dx, i64 noundef %storemerge.lcssa260, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef 0) #18 ; 4 uses
  %i.et = icmp eq i64 %i.es, 4
  %.promoted198.pre = load ptr, ptr %i.a, align 8, !tbaa !69 ; 6 uses
  br i1 %i.et, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %.critedge.thread257
  %i.eu = icmp ult ptr %.promoted198.pre, %i.q
  br i1 %i.eu, label %.lr.ph196.preheader, label %.critedge2

.lr.ph196.preheader:                              ; preds = %.preheader
  %.promoted210 = ptrtoaddr ptr %.promoted198.pre to i64
  %i.ev = add i64 %i.p, %6
  %i.ew = sub i64 %i.ev, %.promoted210
  %scevgep = getelementptr i8, ptr %.promoted198.pre, i64 %i.ew ; 2 uses
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %bb.at
  %i.ex = phi ptr [ %i.fc, %bb.at ], [ %.promoted198.pre, %.lr.ph196.preheader ] ; 3 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !53
  %i.ez = sext i8 %i.ey to i32
  %i.fa = add nsw i32 %i.ez, -58
  %i.fb = icmp ult i32 %i.fa, -10
  br i1 %i.fb, label %.critedge2, label %bb.at

bb.at:                                            ; preds = %.lr.ph196
  %i.fc = getelementptr i8, ptr %i.ex, i64 1      ; 3 uses
  store ptr %i.fc, ptr %i.a, align 8, !tbaa !69
  %exitcond.not = icmp eq ptr %i.fc, %scevgep
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph196, !llvm.loop !73

.critedge2:                                       ; preds = %bb.at, %.lr.ph196, %bb.y, %.preheader, %bb.z, %bb.x, %bb.aa, %.critedge.thread257, %bb.aq, %bb.ap, %bb.t, %bb.u, %bb.p, %bb.q
  %.promoted198 = phi ptr [ %i.au, %bb.p ], [ %i.bp, %bb.y ], [ %i.dr, %bb.ap ], [ %i.bf, %bb.u ], [ %i.bf, %bb.t ], [ %i.au, %bb.q ], [ %i.bp, %bb.aa ], [ %.promoted198.pre, %.critedge.thread257 ], [ %i.bp, %bb.x ], [ %i.bp, %bb.z ], [ %i.dr, %bb.aq ], [ %.promoted198.pre, %.preheader ], [ %scevgep, %bb.at ], [ %i.ex, %.lr.ph196 ] ; 6 uses
  %.1104 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.ct, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.ct, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.ct, %bb.aq ], [ %i.ct, %.preheader ], [ %i.ct, %.lr.ph196 ], [ %i.ct, %bb.at ] ; 3 uses
  %.1101 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.do, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.do, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.do, %bb.aq ], [ %i.do, %.preheader ], [ %i.do, %.lr.ph196 ], [ %i.do, %bb.at ] ; 3 uses
  %.198 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.by, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.by, %.critedge.thread257 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.by, %bb.aq ], [ %i.by, %.preheader ], [ %i.by, %.lr.ph196 ], [ %i.by, %bb.at ] ; 4 uses
  %.095 = phi i32 [ -1, %bb.p ], [ %i.bm, %bb.y ], [ %i.bm, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ %i.bm, %bb.aa ], [ %i.bm, %.critedge.thread257 ], [ %i.bm, %bb.x ], [ %i.bm, %bb.z ], [ %i.bm, %bb.aq ], [ %i.bm, %.preheader ], [ %i.bm, %.lr.ph196 ], [ %i.bm, %bb.at ] ; 3 uses
  %.093 = phi i32 [ -1, %bb.p ], [ %i.bc, %bb.y ], [ %i.bc, %bb.ap ], [ %i.bc, %bb.u ], [ %i.bc, %bb.t ], [ -1, %bb.q ], [ %i.bc, %bb.aa ], [ %i.bc, %.critedge.thread257 ], [ %i.bc, %bb.x ], [ %i.bc, %bb.z ], [ %i.bc, %bb.aq ], [ %i.bc, %.preheader ], [ %i.bc, %.lr.ph196 ], [ %i.bc, %bb.at ] ; 3 uses
  %.2 = phi i64 [ 4, %bb.p ], [ 4, %bb.y ], [ 4, %bb.ap ], [ 4, %bb.u ], [ 4, %bb.t ], [ 4, %bb.q ], [ 4, %bb.aa ], [ 4, %.critedge.thread257 ], [ 4, %bb.x ], [ 4, %bb.z ], [ 4, %bb.aq ], [ %i.es, %.preheader ], [ %i.es, %.lr.ph196 ], [ %i.es, %bb.at ] ; 4 uses
  %.promoted198211 = ptrtoaddr ptr %.promoted198 to i64 ; 2 uses
  %i.fd = icmp ult ptr %.promoted198, %i.q
  br i1 %i.fd, label %.lr.ph199.preheader, label %.critedge4

.lr.ph199.preheader:                              ; preds = %.critedge2
  %i.fe = add i64 %i.p, %6
  %i.ff = sub i64 %i.fe, %.promoted198211
  %scevgep212 = getelementptr i8, ptr %.promoted198, i64 %i.ff ; 2 uses
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %bb.au
  %i.fg = phi ptr [ %i.fm, %bb.au ], [ %.promoted198, %.lr.ph199.preheader ] ; 4 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !53  ; 2 uses
  %i.fi = sext i8 %i.fh to i32
  %i.fj = icmp ne i8 %i.fh, 32
  %i.fk = add nsw i32 %i.fi, -14
  %i.fl = icmp ult i32 %i.fk, -5
  %narrow.i137.not = select i1 %i.fj, i1 %i.fl, i1 false
  br i1 %narrow.i137.not, label %.critedge4.loopexit, label %bb.au

bb.au:                                            ; preds = %.lr.ph199
  %i.fm = getelementptr i8, ptr %i.fg, i64 1      ; 4 uses
  store ptr %i.fm, ptr %i.a, align 8, !tbaa !69
  %exitcond213.not = icmp eq ptr %i.fm, %scevgep212
  br i1 %exitcond213.not, label %.critedge4.loopexit, label %.lr.ph199, !llvm.loop !74

.critedge4.loopexit:                              ; preds = %bb.au, %.lr.ph199
  %.promoted203223 = phi ptr [ %i.fg, %.lr.ph199 ], [ %i.fm, %bb.au ] ; 2 uses
  %.lcssa191.ph = phi ptr [ %i.fg, %.lr.ph199 ], [ %scevgep212, %bb.au ]
  %.pre = ptrtoaddr ptr %.promoted203223 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.promoted203214.pre-phi = phi i64 [ %.pre, %.critedge4.loopexit ], [ %.promoted198211, %.critedge2 ] ; 2 uses
  %.promoted203 = phi ptr [ %.promoted203223, %.critedge4.loopexit ], [ %.promoted198, %.critedge2 ] ; 5 uses
  %.lcssa191 = phi ptr [ %.lcssa191.ph, %.critedge4.loopexit ], [ %.promoted198, %.critedge2 ] ; 2 uses
  %i.fn = icmp ult ptr %.promoted203, %i.q
  br i1 %i.fn, label %.lr.ph204.preheader, label %.critedge6

.lr.ph204.preheader:                              ; preds = %.critedge4
  %i.fo = add i64 %i.p, %6
  %i.fp = sub i64 %i.fo, %.promoted203214.pre-phi
  %scevgep215 = getelementptr i8, ptr %.promoted203, i64 %i.fp ; 2 uses
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.av
  %i.fq = phi ptr [ %i.fw, %bb.av ], [ %.promoted203, %.lr.ph204.preheader ] ; 4 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !53  ; 2 uses
  %i.fs = sext i8 %i.fr to i32
  %i.ft = icmp ne i8 %i.fr, 32
  %i.fu = add nsw i32 %i.fs, -14
  %i.fv = icmp ult i32 %i.fu, -5
  %narrow.i138.not = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %narrow.i138.not, label %bb.av, label %.critedge6.loopexit

bb.av:                                            ; preds = %.lr.ph204
  %i.fw = getelementptr i8, ptr %i.fq, i64 1      ; 4 uses
  store ptr %i.fw, ptr %i.a, align 8, !tbaa !69
  %exitcond216.not = icmp eq ptr %i.fw, %scevgep215
  br i1 %exitcond216.not, label %.critedge6.loopexit, label %.lr.ph204, !llvm.loop !75

.critedge6.loopexit:                              ; preds = %bb.av, %.lr.ph204
  %.promoted208225 = phi ptr [ %i.fq, %.lr.ph204 ], [ %i.fw, %bb.av ] ; 2 uses
  %.lcssa.ph = phi ptr [ %i.fq, %.lr.ph204 ], [ %scevgep215, %bb.av ]
  %.pre226 = ptrtoaddr ptr %.promoted208225 to i64
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge4
  %.promoted208217.pre-phi = phi i64 [ %.pre226, %.critedge6.loopexit ], [ %.promoted203214.pre-phi, %.critedge4 ]
  %.promoted208 = phi ptr [ %.promoted208225, %.critedge6.loopexit ], [ %.promoted203, %.critedge4 ] ; 3 uses
  %.lcssa = phi ptr [ %.lcssa.ph, %.critedge6.loopexit ], [ %.promoted203, %.critedge4 ] ; 2 uses
  %i.fx = icmp ult ptr %.promoted208, %i.q
  br i1 %i.fx, label %.lr.ph209.preheader, label %.critedge8

.lr.ph209.preheader:                              ; preds = %.critedge6
  %i.fy = add i64 %i.p, %6
  %i.fz = sub i64 %i.fy, %.promoted208217.pre-phi
  %scevgep218 = getelementptr i8, ptr %.promoted208, i64 %i.fz
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %bb.aw
  %i.ga = phi ptr [ %i.gg, %bb.aw ], [ %.promoted208, %.lr.ph209.preheader ] ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !53  ; 2 uses
  %i.gc = sext i8 %i.gb to i32
  %i.gd = icmp ne i8 %i.gb, 32
  %i.ge = add nsw i32 %i.gc, -14
  %i.gf = icmp ult i32 %i.ge, -5
  %narrow.i139.not = select i1 %i.gd, i1 %i.gf, i1 false
  br i1 %narrow.i139.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph209
  %i.gg = getelementptr i8, ptr %i.ga, i64 1      ; 3 uses
  store ptr %i.gg, ptr %i.a, align 8, !tbaa !69
  %exitcond219.not = icmp eq ptr %i.gg, %scevgep218
  br i1 %exitcond219.not, label %.critedge8, label %.lr.ph209, !llvm.loop !76

bb.ax:                                            ; preds = %.lr.ph209
  %i.gh = call fastcc i64 @rbimpl_str_new_cstr()  ; 2 uses
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = sub i64 %i.aj, %i.gj
  %i.gl = call i64 @rb_str_cat(i64 noundef %i.gh, ptr noundef %i.gi, i64 noundef %i.gk) #18 ; 0 uses
  %i.gm = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.gn = call i64 @rb_exc_new_str(i64 noundef %i.gm, i64 noundef %i.gh) #18
  call void @rb_exc_raise(i64 noundef %i.gn) #19
  unreachable

.critedge8:                                       ; preds = %bb.aw, %.critedge6
  %i.go = icmp ugt ptr %.lcssa, %.lcssa191
  br i1 %i.go, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.critedge8
  %i.gp = ptrtoint ptr %.lcssa191 to i64          ; 2 uses
  %i.gq = sub i64 %i.gp, %7
  %i.gr = ptrtoint ptr %.lcssa to i64
  %i.gs = sub i64 %i.gr, %i.gp
  %i.gt = call i64 @rb_str_subseq(i64 noundef %i.c, i64 noundef %i.gq, i64 noundef %i.gs) #18
  br label %bb.bb

bb.az:                                            ; preds = %.critedge8
  %i.gu = icmp eq i32 %.198, -1
  br i1 %i.gu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gv, ptr noundef nonnull @.str.153) #19
  unreachable

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %.090 = phi i64 [ %i.gt, %bb.ay ], [ %3, %bb.az ] ; 3 uses
  %i.gw = icmp eq i64 %.2, 4
  br i1 %i.gw, label %.thread149, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  %i.gy = icmp ult i64 %i.gx, 9
  br i1 %i.gy, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gz = sub nuw nsw i64 9, %i.gx
  %i.ha = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.gz) #18
  %i.hb = call i64 @rb_int_mul(i64 noundef %.2, i64 noundef %i.ha) #18
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %.not134 = icmp eq i64 %i.gx, 9
  br i1 %.not134, label %.thread170, label %bb.bf

.thread170:                                       ; preds = %bb.be
  store i64 %i.ak, ptr %5, align 8, !tbaa !65
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.hd = add i64 %i.gx, -9
  %i.he = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.hd) #18
  %i.hf = call i64 @rb_rational_new(i64 noundef %.2, i64 noundef %i.he) #18
  br label %bb.bg

.thread149:                                       ; preds = %bb.o, %bb.bb
  %.2105.ph = phi i32 [ %.1104, %bb.bb ], [ -1, %bb.o ]
  %.2102.ph = phi i32 [ %.1101, %bb.bb ], [ -1, %bb.o ]
  %.299.ph = phi i32 [ %.198, %bb.bb ], [ -1, %bb.o ]
  %.196.ph = phi i32 [ %.095, %bb.bb ], [ -1, %bb.o ]
  %.194.ph = phi i32 [ %.093, %bb.bb ], [ -1, %bb.o ]
  %.1.ph = phi i64 [ %.090, %bb.bb ], [ %3, %bb.o ]
  store i64 %i.ak, ptr %5, align 8, !tbaa !65
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.3 = phi i64 [ %i.hf, %bb.bf ], [ %i.hb, %bb.bd ]
  %.3.fr = freeze i64 %.3                         ; 2 uses
  store i64 %i.ak, ptr %5, align 8, !tbaa !65
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hi = icmp eq i64 %.3.fr, 4
  %spec.select = select i1 %i.hi, i64 1, i64 %.3.fr
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread149, %.thread170
  %i.hj = phi ptr [ %i.hc, %.thread170 ], [ %i.hh, %bb.bg ], [ %i.hg, %.thread149 ]
  %.1168 = phi i64 [ %.090, %.thread170 ], [ %.090, %bb.bg ], [ %.1.ph, %.thread149 ]
  %.194166 = phi i32 [ %.093, %.thread170 ], [ %.093, %bb.bg ], [ %.194.ph, %.thread149 ]
  %.196164 = phi i32 [ %.095, %.thread170 ], [ %.095, %bb.bg ], [ %.196.ph, %.thread149 ]
  %.299162 = phi i32 [ %.198, %.thread170 ], [ %.198, %bb.bg ], [ %.299.ph, %.thread149 ]
  %.2102160 = phi i32 [ %.1101, %.thread170 ], [ %.1101, %bb.bg ], [ %.2102.ph, %.thread149 ]
  %.2105158 = phi i32 [ %.1104, %.thread170 ], [ %.1104, %bb.bg ], [ %.2105.ph, %.thread149 ]
  %i.hk = phi i64 [ %.2, %.thread170 ], [ %spec.select, %bb.bg ], [ 1, %.thread149 ]
  %.196164.fr = freeze i32 %.196164               ; 2 uses
  %.194166.fr = freeze i32 %.194166               ; 2 uses
  store i64 %i.hk, ptr %i.hj, align 8, !tbaa !66
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.hl, align 8, !tbaa !70
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hn = load i64, ptr @str_empty, align 8, !tbaa !13
  store i64 %i.hn, ptr %i.hm, align 8, !tbaa !71
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hp = icmp slt i32 %.194166.fr, 0
  %i.hq = shl i32 %.194166.fr, 9
  %i.hr = and i32 %i.hq, 7680
  %spec.select181 = select i1 %i.hp, i32 512, i32 %i.hr
  %i.hs = icmp slt i32 %.196164.fr, 0
  %i.ht = shl i32 %.196164.fr, 13
  %i.hu = and i32 %i.ht, 253952
  %i.hv = select i1 %i.hs, i32 8192, i32 %i.hu
  %i.hw = or disjoint i32 %i.hv, %spec.select181
  %i.hx = call i32 @llvm.smax.i32(i32 %.299162, i32 0)
  %i.hy = shl i32 %i.hx, 18
  %i.hz = and i32 %i.hy, 8126464
  %i.ia = or disjoint i32 %i.hw, %i.hz
  %i.ib = call i32 @llvm.smax.i32(i32 %.2105158, i32 0)
  %i.ic = shl i32 %i.ib, 23
  %i.id = and i32 %i.ic, 528482304
  %i.ie = or disjoint i32 %i.ia, %i.id
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = call i32 @llvm.smax.i32(i32 %.2102160, i32 0)
  %i.ih = and i32 %i.ig, 63
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, 32
  %i.ik = or disjoint i64 %i.ij, %i.if
  %i.il = or disjoint i64 %i.ik, 1924145348608
  store i64 %i.il, ptr %i.ho, align 8
  %i.im = call fastcc i64 @time_init_vtm(i64 noundef %1, ptr noundef nonnull byval(%struct.vtm) align 8 %5, i64 noundef %.1168) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bi

bb.bi:                                            ; preds = %bb.a, %bb.bh
  %.0 = phi i64 [ %1, %bb.bh ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @time_init_args(ptr nofree readnone captures(none) %0, i64 noundef returned %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #1 {
bb.a:
  %9 = alloca %struct.vtm, align 8                ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.c = load i64, ptr @str_empty, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.c, ptr %i.d, align 8, !tbaa !71
  %i.e = icmp eq i64 %2, 0
  %i.f = and i64 %2, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.i = inttoptr i64 %2 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 5
  br i1 %i.l, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.m = tail call i64 @rb_str_to_inum(i64 noundef %2, i32 noundef 10, i32 noundef 1) #18
  br label %obj2vint.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.n = tail call i64 @rb_to_int(i64 noundef %2) #18
  br label %obj2vint.exit

obj2vint.exit:                                    ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.m, %bb.b ], [ %i.n, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  store i64 %.0.i, ptr %9, align 8, !tbaa !65
  %i.o = icmp eq i64 %3, 4
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %obj2vint.exit
  %i.p = tail call fastcc i32 @month_arg(i64 noundef %3)
  %i.q = shl nuw nsw i32 %i.p, 9
  %i.r = zext nneg i32 %i.q to i64
  %i.s = or disjoint i64 %i.r, 1924145348608
  br label %bb.d

bb.d:                                             ; preds = %obj2vint.exit, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ 1924145349120, %obj2vint.exit ] ; 2 uses
  store i64 %i.t, ptr %i.b, align 8
  %i.u = icmp eq i64 %4, 4
  br i1 %i.u, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %4, 0
  %i.w = and i64 %4, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.e
  %i.z = inttoptr i64 %4 to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ad = tail call i64 @rb_str_to_inum(i64 noundef %4, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.e
  %.0.i.i = phi i64 [ %i.ad, %bb.f ], [ %4, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %4, %bb.e ] ; 3 uses
  %i.ae = trunc i64 %.0.i.i to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.af = tail call i64 @rb_fix2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ag = tail call i64 @rb_num2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

obj2int.exit.i:                                   ; preds = %bb.h, %bb.g
end_hunk_0
