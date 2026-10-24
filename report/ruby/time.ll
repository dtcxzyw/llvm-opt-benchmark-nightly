Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/time?download=true
inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@time_init_now:bb.a

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i9
  %i.l = getelementptr i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !18

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.015.i.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i10 = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i10, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.u = getelementptr i8, ptr %.015.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %i.w = icmp eq ptr %i.v, @time_data_type
  br i1 %i.w, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

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
  %i.ab = load i64, ptr @rb_eTypeError, align 8, !tbaa !17
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
  %i.ag = load i64, ptr %3, align 8, !tbaa !30    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31 ; 4 uses
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
  store i64 %.0.i, ptr %.1.i.i, align 8, !tbaa !27
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
  %.val.i.i = load i32, ptr %i.f, align 4, !tbaa !53
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %bb.b
  %i.g = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.e) #21
  %.not3.i.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i.i, label %bb.c, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %bb.b, %rb_enc_str_asciicompat_p.exit
  %i.h = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.144) #19
  unreachable

bb.c:                                             ; preds = %rb_enc_str_asciicompat_p.exit
  %i.i = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.i, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 7 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 4 uses
  %i.p = getelementptr i8, ptr %i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !55   ; 6 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %i.q     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.n, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.s = icmp eq i64 %4, 4
  br i1 %i.s, label %rb_num2ull_inline.exit, label %bb.e

bb.e:                                             ; preds = %RSTRING_END.exit
  %i.t = trunc i64 %4 to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = ashr i64 %4, 1
  br label %rb_num2ull_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i64 @rb_num2ull(i64 noundef %4) #18
  br label %rb_num2ull_inline.exit

rb_num2ull_inline.exit:                           ; preds = %bb.g, %bb.f, %RSTRING_END.exit
  %i.w = phi i64 [ -1, %RSTRING_END.exit ], [ %i.u, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.x = icmp ult ptr %i.n, %i.r
  br i1 %i.x, label %bb.h, label %bb.k

bb.h:                                             ; preds = %rb_num2ull_inline.exit
  %i.y = load i8, ptr %i.n, align 1, !tbaa !51    ; 2 uses
  %6 = sext i8 %i.y to i32
  %7 = icmp ne i8 %i.y, 32
  %8 = add nsw i32 %6, -14
  %9 = icmp ult i32 %8, -5
  %narrow.i.not = select i1 %7, i1 %9, i1 false
  br i1 %narrow.i.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.r, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !51   ; 2 uses
  %10 = sext i8 %i.aa to i32
  %11 = icmp ne i8 %i.aa, 32
  %12 = add nsw i32 %10, -14
  %13 = icmp ult i32 %12, -5
  %narrow.i136.not = select i1 %11, i1 %13, i1 false
  br i1 %narrow.i136.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.145, i64 noundef %i.c) #19
  unreachable

bb.k:                                             ; preds = %bb.i, %rb_num2ull_inline.exit
  %i.ac = ptrtoint ptr %i.r to i64                ; 8 uses
  %i.ad = ptrtoint ptr %i.n to i64
  %i.ae = call i64 @rb_int_parse_cstr(ptr noundef %i.n, i64 noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef 1) #18 ; 4 uses
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ag, ptr noundef nonnull @.str.145, i64 noundef %i.c) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.ak = trunc nuw nsw i64 %i.ah to i32
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.am = sub nsw i64 0, %i.ah
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.146, i32 noundef %i.ak, ptr noundef %i.an) #19
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !60  ; 6 uses
  %i.ap = icmp eq ptr %i.ao, %i.r
  br i1 %i.ap, label %.thread147, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ac, %i.aq
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %bb.q, label %.critedge2

bb.q:                                             ; preds = %bb.p
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !51
  %i.au = icmp eq i8 %i.at, 45
  br i1 %i.au, label %bb.r, label %.critedge2

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %i.ao, i64 1
  %i.aw = call fastcc i32 @two_digits(ptr noundef %i.av, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.20) ; 13 uses
  %i.ax = icmp ugt i32 %i.aw, 15
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ay, ptr noundef nonnull @.str.105) #19
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !60  ; 5 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ac, %i.ba
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %.critedge2

bb.u:                                             ; preds = %bb.t
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !51
  %i.be = icmp eq i8 %i.bd, 45
  br i1 %i.be, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr i8, ptr %i.az, i64 1
  %i.bg = call fastcc i32 @two_digits(ptr noundef %i.bf, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.21) ; 11 uses
  %i.bh = icmp ugt i32 %i.bg, 31
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bi, ptr noundef nonnull @.str.106) #19
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !60  ; 7 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.ac, %i.bk                    ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %bb.x
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !51
  switch i8 %i.bn, label %.critedge2 [
    i8 32, label %bb.z
    i8 84, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.bo = getelementptr i8, ptr %i.bj, i64 1      ; 12 uses
  %.not = icmp eq i64 %i.bl, 1
  br i1 %.not, label %.critedge2, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !51
  %i.bq = add i8 %i.bp, -58
  %i.br = icmp ult i8 %i.bq, -10
  br i1 %i.br, label %.critedge2, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = call fastcc i32 @two_digits(ptr noundef nonnull %i.bo, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.22) ; 7 uses
  %i.bt = icmp ugt i32 %i.bs, 31
  br i1 %i.bt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bu = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bu, ptr noundef nonnull @.str.107) #19
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !60  ; 5 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.ac, %i.bw
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !51
  switch i8 %i.bz, label %bb.ag [
    i8 46, label %bb.af
    i8 58, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.cb = getelementptr i8, ptr %i.bv, i64 1
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bo to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ca, ptr noundef nonnull @.str.147, i32 noundef %i.cf, ptr noundef nonnull %i.bo) #19
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cg = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.ch = getelementptr i8, ptr %i.bv, i64 1
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.bo to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @.str.148, i32 noundef %i.cl, ptr noundef nonnull %i.bo) #19
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cm = getelementptr i8, ptr %i.bv, i64 1
  %i.cn = call fastcc i32 @two_digits(ptr noundef %i.cm, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.23) ; 7 uses
  %i.co = icmp ugt i32 %i.cn, 63
  br i1 %i.co, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cp = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cp, ptr noundef nonnull @.str.108) #19
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !60  ; 5 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.ac, %i.cr
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !51
  switch i8 %i.cu, label %bb.am [
    i8 46, label %bb.al
    i8 58, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cv = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.cw = getelementptr i8, ptr %i.cq, i64 1
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.bo to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cv, ptr noundef nonnull @.str.149, i32 noundef %i.da, ptr noundef nonnull %i.bo) #19
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.db = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.dc = getelementptr i8, ptr %i.cq, i64 1
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.bo to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.db, ptr noundef nonnull @.str.150, i32 noundef %i.dg, ptr noundef nonnull %i.bo) #19
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.dh = getelementptr i8, ptr %i.cq, i64 1
  %i.di = call fastcc i32 @two_digits(ptr noundef %i.dh, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.24) ; 7 uses
  %i.dj = icmp ugt i32 %i.di, 63
  br i1 %i.dj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dk = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dk, ptr noundef nonnull @.str.109) #19
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !60  ; 5 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.ac, %i.dm
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %bb.aq, label %.critedge2

bb.aq:                                            ; preds = %bb.ap
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !51
  %i.dq = icmp eq i8 %i.dp, 46
  br i1 %i.dq, label %bb.ar, label %.critedge2

bb.ar:                                            ; preds = %bb.aq
  %i.dr = getelementptr i8, ptr %i.dl, i64 1      ; 5 uses
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !60
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ac, %i.ds                    ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !17
  %i.du = icmp ne i64 %i.w, 0
  %i.dv = icmp sgt i64 %i.dt, 0
  %or.cond189 = and i1 %i.du, %i.dv
  br i1 %or.cond189, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %storemerge190 = phi i64 [ %i.ea, %bb.as ], [ 0, %bb.ar ] ; 4 uses
  %i.dw = getelementptr i8, ptr %i.dr, i64 %storemerge190
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !51
  %i.dy = add i8 %i.dx, -58
  %i.dz = icmp ult i8 %i.dy, -10
  br i1 %i.dz, label %.critedge, label %bb.as

bb.as:                                            ; preds = %.lr.ph
  %i.ea = add nuw nsw i64 %storemerge190, 1       ; 5 uses
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !17
  %i.eb = icmp ult i64 %i.ea, %i.w
  %i.ec = icmp slt i64 %i.ea, %i.dt
  %or.cond = and i1 %i.eb, %i.ec
  br i1 %or.cond, label %.lr.ph, label %.critedge.thread254, !llvm.loop !90

.critedge:                                        ; preds = %.lr.ph
  %.not129 = icmp eq i64 %storemerge190, 0
  br i1 %.not129, label %.critedge.thread, label %.critedge.thread254

.critedge.thread:                                 ; preds = %bb.ar, %.critedge
  %i.ed = call ptr @rb_enc_get(i64 noundef %i.c) #18
  %i.ee = call i32 @rb_enc_precise_mbclen(ptr noundef %i.dr, ptr noundef %i.r, ptr noundef %i.ed) #18
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.ef = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.bo to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %i.el = add i32 %spec.store.select, %i.ek
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ef, ptr noundef nonnull @.str.151, i32 noundef %i.el, ptr noundef nonnull %i.bo) #19
  unreachable

.critedge.thread254:                              ; preds = %bb.as, %.critedge
  %storemerge.lcssa257 = phi i64 [ %storemerge190, %.critedge ], [ %i.ea, %bb.as ]
  %i.em = call i64 @rb_int_parse_cstr(ptr noundef %i.dr, i64 noundef %storemerge.lcssa257, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef 0) #18 ; 4 uses
  %i.en = icmp eq i64 %i.em, 4
  %.promoted195.pre = load ptr, ptr %i.a, align 8, !tbaa !60 ; 6 uses
  br i1 %i.en, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %.critedge.thread254
  %i.eo = icmp ult ptr %.promoted195.pre, %i.r
  br i1 %i.eo, label %.lr.ph193.preheader, label %.critedge2

.lr.ph193.preheader:                              ; preds = %.preheader
  %.promoted207 = ptrtoaddr ptr %.promoted195.pre to i64
  %i.ep = add i64 %i.q, %i.o
  %i.eq = sub i64 %i.ep, %.promoted207
  %scevgep = getelementptr i8, ptr %.promoted195.pre, i64 %i.eq ; 2 uses
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %bb.at
  %i.er = phi ptr [ %i.eu, %bb.at ], [ %.promoted195.pre, %.lr.ph193.preheader ] ; 3 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !51
  %14 = sext i8 %i.es to i32
  %15 = add nsw i32 %14, -58
  %i.et = icmp ult i32 %15, -10
  br i1 %i.et, label %.critedge2, label %bb.at

bb.at:                                            ; preds = %.lr.ph193
  %i.eu = getelementptr i8, ptr %i.er, i64 1      ; 3 uses
  store ptr %i.eu, ptr %i.a, align 8, !tbaa !60
  %exitcond.not = icmp eq ptr %i.eu, %scevgep
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph193, !llvm.loop !91

.critedge2:                                       ; preds = %bb.at, %.lr.ph193, %bb.y, %.preheader, %bb.z, %bb.x, %bb.aa, %.critedge.thread254, %bb.aq, %bb.ap, %bb.t, %bb.u, %bb.p, %bb.q
  %.promoted195 = phi ptr [ %i.ao, %bb.p ], [ %i.bj, %bb.y ], [ %i.dl, %bb.ap ], [ %i.az, %bb.u ], [ %i.az, %bb.t ], [ %i.ao, %bb.q ], [ %i.bj, %bb.aa ], [ %.promoted195.pre, %.critedge.thread254 ], [ %i.bj, %bb.x ], [ %i.bj, %bb.z ], [ %i.dl, %bb.aq ], [ %.promoted195.pre, %.preheader ], [ %scevgep, %bb.at ], [ %i.er, %.lr.ph193 ] ; 6 uses
  %.2105 = phi i64 [ 4, %bb.p ], [ 4, %bb.y ], [ 4, %bb.ap ], [ 4, %bb.u ], [ 4, %bb.t ], [ 4, %bb.q ], [ 4, %bb.aa ], [ 4, %.critedge.thread254 ], [ 4, %bb.x ], [ 4, %bb.z ], [ 4, %bb.aq ], [ %i.em, %.preheader ], [ %i.em, %.lr.ph193 ], [ %i.em, %bb.at ] ; 4 uses
  %.0101 = phi i32 [ -1, %bb.p ], [ %i.aw, %bb.y ], [ %i.aw, %bb.ap ], [ %i.aw, %bb.u ], [ %i.aw, %bb.t ], [ -1, %bb.q ], [ %i.aw, %bb.aa ], [ %i.aw, %.critedge.thread254 ], [ %i.aw, %bb.x ], [ %i.aw, %bb.z ], [ %i.aw, %bb.aq ], [ %i.aw, %.preheader ], [ %i.aw, %.lr.ph193 ], [ %i.aw, %bb.at ] ; 3 uses
  %.099 = phi i32 [ -1, %bb.p ], [ %i.bg, %bb.y ], [ %i.bg, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ %i.bg, %bb.aa ], [ %i.bg, %.critedge.thread254 ], [ %i.bg, %bb.x ], [ %i.bg, %bb.z ], [ %i.bg, %bb.aq ], [ %i.bg, %.preheader ], [ %i.bg, %.lr.ph193 ], [ %i.bg, %bb.at ] ; 3 uses
  %.197 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.bs, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.bs, %.critedge.thread254 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.bs, %bb.aq ], [ %i.bs, %.preheader ], [ %i.bs, %.lr.ph193 ], [ %i.bs, %bb.at ] ; 4 uses
  %.194 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.cn, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.cn, %.critedge.thread254 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.cn, %bb.aq ], [ %i.cn, %.preheader ], [ %i.cn, %.lr.ph193 ], [ %i.cn, %bb.at ] ; 3 uses
  %.192 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.di, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.di, %.critedge.thread254 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.di, %bb.aq ], [ %i.di, %.preheader ], [ %i.di, %.lr.ph193 ], [ %i.di, %bb.at ] ; 3 uses
  %.promoted195208 = ptrtoaddr ptr %.promoted195 to i64 ; 2 uses
  %i.ev = icmp ult ptr %.promoted195, %i.r
  br i1 %i.ev, label %.lr.ph196.preheader, label %.critedge4

.lr.ph196.preheader:                              ; preds = %.critedge2
  %i.ew = add i64 %i.q, %i.o
  %i.ex = sub i64 %i.ew, %.promoted195208
  %scevgep209 = getelementptr i8, ptr %.promoted195, i64 %i.ex ; 2 uses
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %bb.au
  %i.ey = phi ptr [ %i.fa, %bb.au ], [ %.promoted195, %.lr.ph196.preheader ] ; 4 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !51  ; 2 uses
  %16 = sext i8 %i.ez to i32
  %17 = icmp ne i8 %i.ez, 32
  %18 = add nsw i32 %16, -14
  %19 = icmp ult i32 %18, -5
  %narrow.i137.not = select i1 %17, i1 %19, i1 false
  br i1 %narrow.i137.not, label %.critedge4.loopexit, label %bb.au

bb.au:                                            ; preds = %.lr.ph196
  %i.fa = getelementptr i8, ptr %i.ey, i64 1      ; 4 uses
  store ptr %i.fa, ptr %i.a, align 8, !tbaa !60
  %exitcond210.not = icmp eq ptr %i.fa, %scevgep209
  br i1 %exitcond210.not, label %.critedge4.loopexit, label %.lr.ph196, !llvm.loop !92

.critedge4.loopexit:                              ; preds = %bb.au, %.lr.ph196
  %.promoted200220 = phi ptr [ %i.ey, %.lr.ph196 ], [ %i.fa, %bb.au ] ; 2 uses
  %.lcssa188.ph = phi ptr [ %i.ey, %.lr.ph196 ], [ %scevgep209, %bb.au ]
  %.pre = ptrtoaddr ptr %.promoted200220 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.promoted200211.pre-phi = phi i64 [ %.pre, %.critedge4.loopexit ], [ %.promoted195208, %.critedge2 ] ; 2 uses
  %.promoted200 = phi ptr [ %.promoted200220, %.critedge4.loopexit ], [ %.promoted195, %.critedge2 ] ; 5 uses
  %.lcssa188 = phi ptr [ %.lcssa188.ph, %.critedge4.loopexit ], [ %.promoted195, %.critedge2 ] ; 2 uses
  %i.fb = icmp ult ptr %.promoted200, %i.r
  br i1 %i.fb, label %.lr.ph201.preheader, label %.critedge6

.lr.ph201.preheader:                              ; preds = %.critedge4
  %i.fc = add i64 %i.q, %i.o
  %i.fd = sub i64 %i.fc, %.promoted200211.pre-phi
  %scevgep212 = getelementptr i8, ptr %.promoted200, i64 %i.fd ; 2 uses
  br label %.lr.ph201

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %bb.av
  %i.fe = phi ptr [ %i.fg, %bb.av ], [ %.promoted200, %.lr.ph201.preheader ] ; 4 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !51  ; 2 uses
  %20 = sext i8 %i.ff to i32
  %21 = icmp ne i8 %i.ff, 32
  %22 = add nsw i32 %20, -14
  %23 = icmp ult i32 %22, -5
  %narrow.i138.not = select i1 %21, i1 %23, i1 false
  br i1 %narrow.i138.not, label %bb.av, label %.critedge6.loopexit

bb.av:                                            ; preds = %.lr.ph201
  %i.fg = getelementptr i8, ptr %i.fe, i64 1      ; 4 uses
  store ptr %i.fg, ptr %i.a, align 8, !tbaa !60
  %exitcond213.not = icmp eq ptr %i.fg, %scevgep212
  br i1 %exitcond213.not, label %.critedge6.loopexit, label %.lr.ph201, !llvm.loop !93

.critedge6.loopexit:                              ; preds = %bb.av, %.lr.ph201
  %.promoted205222 = phi ptr [ %i.fe, %.lr.ph201 ], [ %i.fg, %bb.av ] ; 2 uses
  %.lcssa.ph = phi ptr [ %i.fe, %.lr.ph201 ], [ %scevgep212, %bb.av ]
  %.pre223 = ptrtoaddr ptr %.promoted205222 to i64
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge4
  %.promoted205214.pre-phi = phi i64 [ %.pre223, %.critedge6.loopexit ], [ %.promoted200211.pre-phi, %.critedge4 ]
  %.promoted205 = phi ptr [ %.promoted205222, %.critedge6.loopexit ], [ %.promoted200, %.critedge4 ] ; 3 uses
  %.lcssa = phi ptr [ %.lcssa.ph, %.critedge6.loopexit ], [ %.promoted200, %.critedge4 ] ; 2 uses
  %i.fh = icmp ult ptr %.promoted205, %i.r
  br i1 %i.fh, label %.lr.ph206.preheader, label %.critedge8

.lr.ph206.preheader:                              ; preds = %.critedge6
  %i.fi = add i64 %i.q, %i.o
  %i.fj = sub i64 %i.fi, %.promoted205214.pre-phi
  %scevgep215 = getelementptr i8, ptr %.promoted205, i64 %i.fj
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %bb.aw
  %i.fk = phi ptr [ %i.fm, %bb.aw ], [ %.promoted205, %.lr.ph206.preheader ] ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !51  ; 2 uses
  %24 = sext i8 %i.fl to i32
  %25 = icmp ne i8 %i.fl, 32
  %26 = add nsw i32 %24, -14
  %27 = icmp ult i32 %26, -5
  %narrow.i139.not = select i1 %25, i1 %27, i1 false
  br i1 %narrow.i139.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph206
  %i.fm = getelementptr i8, ptr %i.fk, i64 1      ; 3 uses
  store ptr %i.fm, ptr %i.a, align 8, !tbaa !60
  %exitcond216.not = icmp eq ptr %i.fm, %scevgep215
  br i1 %exitcond216.not, label %.critedge8, label %.lr.ph206, !llvm.loop !94

bb.ax:                                            ; preds = %.lr.ph206
  %i.fn = call fastcc i64 @rbimpl_str_new_cstr()  ; 2 uses
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.ac, %i.fp
  %i.fr = call i64 @rb_str_cat(i64 noundef %i.fn, ptr noundef %i.fo, i64 noundef %i.fq) #18 ; 0 uses
  %i.fs = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.ft = call i64 @rb_exc_new_str(i64 noundef %i.fs, i64 noundef %i.fn) #18
  call void @rb_exc_raise(i64 noundef %i.ft) #19
  unreachable

.critedge8:                                       ; preds = %bb.aw, %.critedge6
  %i.fu = icmp ugt ptr %.lcssa, %.lcssa188
  br i1 %i.fu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.critedge8
  %i.fv = ptrtoint ptr %.lcssa188 to i64          ; 2 uses
  %i.fw = sub i64 %i.fv, %i.ad
  %i.fx = ptrtoint ptr %.lcssa to i64
  %i.fy = sub i64 %i.fx, %i.fv
  %i.fz = call i64 @rb_str_subseq(i64 noundef %i.c, i64 noundef %i.fw, i64 noundef %i.fy) #18
  br label %bb.bb

bb.az:                                            ; preds = %.critedge8
  %i.ga = icmp eq i32 %.197, -1
  br i1 %i.ga, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gb = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gb, ptr noundef nonnull @.str.153) #19
  unreachable

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %.090 = phi i64 [ %i.fz, %bb.ay ], [ %3, %bb.az ] ; 3 uses
  %i.gc = icmp eq i64 %.2105, 4
  br i1 %i.gc, label %.thread147, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gd = load i64, ptr %i.b, align 8, !tbaa !17  ; 4 uses
  %i.ge = icmp ult i64 %i.gd, 9
  br i1 %i.ge, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gf = sub nuw nsw i64 9, %i.gd
  %i.gg = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.gf) #18
  %i.gh = call i64 @rb_int_mul(i64 noundef %.2105, i64 noundef %i.gg) #18
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %.not134 = icmp eq i64 %i.gd, 9
  br i1 %.not134, label %.thread168, label %bb.bf

.thread168:                                       ; preds = %bb.be
  store i64 %i.ae, ptr %5, align 8, !tbaa !59
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.gj = add i64 %i.gd, -9
  %i.gk = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.gj) #18
  %i.gl = call i64 @rb_rational_new(i64 noundef %.2105, i64 noundef %i.gk) #18
  br label %bb.bg

.thread147:                                       ; preds = %bb.o, %bb.bb
  %.1102.ph = phi i32 [ %.0101, %bb.bb ], [ -1, %bb.o ]
  %.1100.ph = phi i32 [ %.099, %bb.bb ], [ -1, %bb.o ]
  %.298.ph = phi i32 [ %.197, %bb.bb ], [ -1, %bb.o ]
  %.295.ph = phi i32 [ %.194, %bb.bb ], [ -1, %bb.o ]
  %.2.ph = phi i32 [ %.192, %bb.bb ], [ -1, %bb.o ]
  %.1.ph = phi i64 [ %.090, %bb.bb ], [ %3, %bb.o ]
  store i64 %i.ae, ptr %5, align 8, !tbaa !59
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.3 = phi i64 [ %i.gl, %bb.bf ], [ %i.gh, %bb.bd ]
  %.3.fr = freeze i64 %.3                         ; 2 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !59
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = icmp eq i64 %.3.fr, 4
  %spec.select = select i1 %i.go, i64 1, i64 %.3.fr
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread147, %.thread168
  %i.gp = phi ptr [ %i.gi, %.thread168 ], [ %i.gn, %bb.bg ], [ %i.gm, %.thread147 ]
  %.1166 = phi i64 [ %.090, %.thread168 ], [ %.090, %bb.bg ], [ %.1.ph, %.thread147 ]
  %.2164 = phi i32 [ %.192, %.thread168 ], [ %.192, %bb.bg ], [ %.2.ph, %.thread147 ]
  %.295162 = phi i32 [ %.194, %.thread168 ], [ %.194, %bb.bg ], [ %.295.ph, %.thread147 ]
  %.298160 = phi i32 [ %.197, %.thread168 ], [ %.197, %bb.bg ], [ %.298.ph, %.thread147 ]
  %.1100158 = phi i32 [ %.099, %.thread168 ], [ %.099, %bb.bg ], [ %.1100.ph, %.thread147 ] ; 2 uses
  %.1102156 = phi i32 [ %.0101, %.thread168 ], [ %.0101, %bb.bg ], [ %.1102.ph, %.thread147 ] ; 2 uses
  %i.gq = phi i64 [ %.2105, %.thread168 ], [ %spec.select, %bb.bg ], [ 1, %.thread147 ]
  store i64 %i.gq, ptr %i.gp, align 8, !tbaa !57
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.gr, align 8, !tbaa !61
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gt = load i64, ptr @str_empty, align 8, !tbaa !17
  store i64 %i.gt, ptr %i.gs, align 8, !tbaa !58
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gv = icmp slt i32 %.1102156, 0
  %i.gw = shl i32 %.1102156, 9
  %i.gx = and i32 %i.gw, 7680
  %i.gy = select i1 %i.gv, i32 512, i32 %i.gx
  %i.gz = icmp slt i32 %.1100158, 0
  %i.ha = shl i32 %.1100158, 13
  %i.hb = and i32 %i.ha, 253952
  %i.hc = select i1 %i.gz, i32 8192, i32 %i.hb
  %i.hd = call i32 @llvm.smax.i32(i32 %.298160, i32 0)
  %i.he = shl i32 %i.hd, 18
  %i.hf = and i32 %i.he, 8126464
  %i.hg = call i32 @llvm.smax.i32(i32 %.295162, i32 0)
  %i.hh = shl i32 %i.hg, 23
  %i.hi = and i32 %i.hh, 528482304
  %i.hj = or disjoint i32 %i.hf, %i.hi
  %i.hk = or disjoint i32 %i.hj, %i.hc
  %i.hl = or disjoint i32 %i.hk, %i.gy
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = call i32 @llvm.smax.i32(i32 %.2164, i32 0)
  %i.ho = and i32 %i.hn, 63
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 32
  %i.hr = or disjoint i64 %i.hq, %i.hm
  %i.hs = or disjoint i64 %i.hr, 1924145348608
  store i64 %i.hs, ptr %i.gu, align 8
  %i.ht = call fastcc i64 @time_init_vtm(i64 noundef %1, ptr noundef nonnull byval(%struct.vtm) align 8 %5, i64 noundef %.1166) ; 0 uses
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
  %i.c = load i64, ptr @str_empty, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.c, ptr %i.d, align 8, !tbaa !58
  %i.e = icmp eq i64 %2, 0
  %i.f = and i64 %2, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.i = inttoptr i64 %2 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
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
  store i64 %.0.i, ptr %9, align 8, !tbaa !59
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !33
  %i.ab = and i64 %i.aa, 31
end_hunk_0
begin_hunk_1_@tm_initialize:bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  br i1 %i.f, label %RTYPEDDATA_GET_DATA.exit, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %rb_check_arity.exit, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.g, %rb_check_arity.exit ] ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 40       ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, -61572651155457
  %i.m = or disjoint i64 %i.l, 8796093022208
  store i64 %i.m, ptr %i.j, align 8
  store i64 %i.b, ptr %i.i, align 8, !tbaa !27
  %i.n = trunc i64 %i.b to i1
  br i1 %i.n, label %time_set_timew.exit, label %bb.d

bb.d:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.o = icmp eq i64 %i.b, 0
  %i.p = and i64 %i.b, 6
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %time_set_timew.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.b) #18
  br label %time_set_timew.exit

time_set_timew.exit:                              ; preds = %RTYPEDDATA_GET_DATA.exit, %bb.d, %bb.e
  %i.s = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46   ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %rb_obj_written.exit.i, label %bb.f

bb.f:                                             ; preds = %time_set_timew.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.t) #18
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.f, %time_set_timew.exit
  %i.y = getelementptr i8, ptr %i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47   ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = and i64 %i.z, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %rb_obj_written.exit8.i, label %bb.g

bb.g:                                             ; preds = %rb_obj_written.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.z) #18
  br label %rb_obj_written.exit8.i

rb_obj_written.exit8.i:                           ; preds = %bb.g, %rb_obj_written.exit.i
  %i.ae = getelementptr i8, ptr %i.i, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = and i64 %i.af, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rb_obj_written.exit9.i, label %bb.h

bb.h:                                             ; preds = %rb_obj_written.exit8.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.af) #18
  br label %rb_obj_written.exit9.i

rb_obj_written.exit9.i:                           ; preds = %bb.h, %rb_obj_written.exit8.i
  %i.ak = getelementptr i8, ptr %i.i, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = and i64 %i.al, 7
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = or i1 %i.am, %i.ao
  br i1 %i.ap, label %time_set_vtm.exit, label %bb.i

bb.i:                                             ; preds = %rb_obj_written.exit9.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.al) #18
  br label %time_set_vtm.exit

time_set_vtm.exit:                                ; preds = %rb_obj_written.exit9.i, %bb.i
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @tm_to_time(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !32

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !34

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !18

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 61572651155456
  %.not.i = icmp eq i64 %i.w, 26388279066624
  br i1 %.not.i, label %bb.e, label %get_timeval.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !17
  %i.y = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.92, i64 noundef %i.y) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.z = load i64, ptr @rb_cTime, align 8, !tbaa !17
  %i.aa = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.z, i64 noundef 48, ptr noundef nonnull @time_data_type) #18 ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 24     ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ae = trunc i64 %i.ad to i1
  %i.af = getelementptr i8, ptr %i.ab, i64 32     ; 4 uses
  br i1 %i.ae, label %time_s_alloc.exit, label %bb.f

bb.f:                                             ; preds = %get_timeval.exit
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  br label %time_s_alloc.exit

time_s_alloc.exit:                                ; preds = %get_timeval.exit, %bb.f
  %i.ah = phi ptr [ %i.ag, %bb.f ], [ %i.af, %get_timeval.exit ] ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 40     ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, -131941395333121
  %i.al = or disjoint i64 %i.ak, 26388279066624
  store i64 %i.al, ptr %i.ai, align 8
  store i64 1, ptr %i.ah, align 8, !tbaa !27
  %i.am = getelementptr i8, ptr %i.ah, i64 32
  store i64 4, ptr %i.am, align 8, !tbaa !28
  %i.an = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %RTYPEDDATA_GET_DATA.exit, label %bb.g

bb.g:                                             ; preds = %time_s_alloc.exit
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %time_s_alloc.exit, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.g ], [ %i.af, %time_s_alloc.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %.1.i.i, i64 48, i1 false), !tbaa.struct !102
  ret i64 %i.aa
}

declare void @rb_alias(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1936, 870) i32 @two_digits(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = icmp slt i64 %i.c, 2
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !51
  %4 = sext i8 %i.e to i32
  %5 = add nsw i32 %4, -58
  %i.f = icmp ult i32 %5, -10
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !51
  %6 = sext i8 %i.h to i32
  %7 = add nsw i32 %6, -58
  %i.i = icmp ult i32 %7, -10
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq i64 %i.c, 2
  br i1 %.not23, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !51
  %8 = sext i8 %i.k to i32
  %9 = add nsw i32 %8, -58
  %i.l = icmp ult i32 %9, -10
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %i.m = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.154, ptr noundef %3) #18 ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !51    ; 2 uses
  switch i8 %i.o, label %bb.h [
    i8 45, label %bb.g
    i8 58, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = zext nneg i8 %i.o to i32
  %i.q = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.m, ptr noundef nonnull @.str.155, i32 noundef %i.p) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.r = tail call i64 @llvm.smin.i64(i64 %i.c, i64 10)
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, 1
  %i.u = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.m, ptr noundef nonnull @.str.156, i32 noundef %i.t, ptr noundef nonnull %i.n) #18 ; 0 uses
  %i.v = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.w = tail call i64 @rb_exc_new_str(i64 noundef %i.v, i64 noundef %i.m) #18
  tail call void @rb_exc_raise(i64 noundef %i.w) #19
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr i8, ptr %0, i64 2
  store ptr %i.x, ptr %2, align 8, !tbaa !60
  %i.y = load i8, ptr %0, align 1, !tbaa !51
  %i.z = sext i8 %i.y to i32
  %i.aa = mul nsw i32 %i.z, 10
  %i.ab = load i8, ptr %i.g, align 1, !tbaa !51
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -528
  %i.ae = add nsw i32 %i.ad, %i.aa
  ret i32 %i.ae
}

declare i32 @rb_enc_precise_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rbimpl_str_new_cstr() unnamed_addr #16 {
bb.a:
  %i.a = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.152, i64 noundef 16) #18
  ret i64 %i.a
}

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #3

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_int_mul(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, 0) i64 @time_init_vtm(i64 noundef returned %0, ptr nofree noundef byval(%struct.vtm) align 8 captures(none) initializes((16, 24)) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = or i64 %i.d, 6597069766656
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store i64 4, ptr %i.f, align 8, !tbaa !61
  %i.g = icmp eq i64 %2, 4
  br i1 %i.g, label %maybe_tzobj_p.exit.thread83, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @time_init_vtm.rbimpl_id, align 8, !tbaa !17 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.32, i64 noundef 3) #18 ; 3 uses
  store i64 %i.h, ptr @time_init_vtm.rbimpl_id, align 8, !tbaa !17
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !1

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i64 [ %.pr.i, %bb.b ], [ %i.h, %.lr.ph.i ]
  %i.i = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #18
  %i.j = icmp eq i64 %2, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rbimpl_intern_const.exit
  %i.k = and i64 %i.d, -6597069766657
  %i.l = or disjoint i64 %i.k, 2199023255552
  store i64 %i.l, ptr %i.c, align 8
  br label %maybe_tzobj_p.exit.thread83

bb.d:                                             ; preds = %rbimpl_intern_const.exit
  %.pr.i55 = load i64, ptr @time_init_vtm.rbimpl_id.157, align 8, !tbaa !17 ; 2 uses
  %.not4.i56 = icmp eq i64 %.pr.i55, 0
  br i1 %.not4.i56, label %.lr.ph.i58, label %rbimpl_intern_const.exit60

.lr.ph.i58:                                       ; preds = %bb.d, %.lr.ph.i58
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.158, i64 noundef 3) #18 ; 3 uses
  store i64 %i.m, ptr @time_init_vtm.rbimpl_id.157, align 8, !tbaa !17
  %.not.i59 = icmp eq i64 %i.m, 0
  br i1 %.not.i59, label %.lr.ph.i58, label %rbimpl_intern_const.exit60, !llvm.loop !1

rbimpl_intern_const.exit60:                       ; preds = %.lr.ph.i58, %bb.d
  %.lcssa.i57 = phi i64 [ %.pr.i55, %bb.d ], [ %i.m, %.lr.ph.i58 ]
  %i.n = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i57) #18
  %i.o = icmp eq i64 %2, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_intern_const.exit60
  %i.p = and i64 %i.d, -6597069766657
  store i64 %i.p, ptr %i.c, align 8
  br label %maybe_tzobj_p.exit.thread83

bb.f:                                             ; preds = %rbimpl_intern_const.exit60
  %i.q = trunc i64 %2 to i1
  br i1 %i.q, label %maybe_tzobj_p.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq i64 %2, 0
  %i.s = and i64 %2, 6
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %maybe_tzobj_p.exit.thread83, label %rb_integer_type_p.exit.i

rb_integer_type_p.exit.i:                         ; preds = %bb.g
  %i.v = inttoptr i64 %2 to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  %.fr10.i = freeze i64 %i.w
  %i.x = and i64 %.fr10.i, 31
  switch i64 %i.x, label %maybe_tzobj_p.exit.thread83 [
    i64 10, label %maybe_tzobj_p.exit.thread
    i64 5, label %maybe_tzobj_p.exit.thread
  ]

maybe_tzobj_p.exit.thread:                        ; preds = %rb_integer_type_p.exit.i, %rb_integer_type_p.exit.i, %bb.f
  %i.y = tail call fastcc i64 @utc_offset_arg(i64 noundef %2) ; 3 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %maybe_tzobj_p.exit.thread
  %i.aa = icmp eq i64 %i.y, 36                    ; 2 uses
  %i.ab = select i1 %i.aa, i64 1, i64 %i.y
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !61
  br label %maybe_tzobj_p.exit.thread83

bb.i:                                             ; preds = %maybe_tzobj_p.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8, !tbaa !17
  %i.ac = icmp eq i64 %0, 0
  %i.ad = and i64 %0, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = inttoptr i64 %0 to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  br label %find_timezone.exit

bb.k:                                             ; preds = %bb.i
  switch i64 %0, label %bb.n [
    i64 0, label %find_timezone.exit
    i64 4, label %bb.l
    i64 20, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  br label %find_timezone.exit

bb.m:                                             ; preds = %bb.k
  br label %find_timezone.exit

bb.n:                                             ; preds = %bb.k
  %i.ai = trunc i64 %0 to i1
  br i1 %i.ai, label %find_timezone.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = and i64 %0, 254
  %i.ak = icmp eq i64 %i.aj, 12
  %spec.select.i.i = select i1 %i.ak, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %find_timezone.exit

find_timezone.exit:                               ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.in.i.i = phi ptr [ %i.ah, %bb.j ], [ @rb_cNilClass, %bb.l ], [ @rb_cTrueClass, %bb.m ], [ @rb_cFalseClass, %bb.k ], [ @rb_cInteger, %bb.n ], [ %spec.select.i.i, %bb.o ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !17
  %i.al = load i64, ptr @id_find_timezone, align 8, !tbaa !17
  %i.am = call i64 @rb_check_funcall_default(i64 noundef %.0.i.i, i64 noundef %i.al, i32 noundef 1, ptr noundef nonnull %i.b, i64 noundef 4) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = icmp eq i64 %i.am, 4
  br i1 %i.an, label %bb.p, label %maybe_tzobj_p.exit.thread83

bb.p:                                             ; preds = %find_timezone.exit
  call fastcc void @invalid_utc_offset(i64 noundef %2) #20
  unreachable

maybe_tzobj_p.exit.thread83:                      ; preds = %rb_integer_type_p.exit.i, %bb.g, %bb.c, %find_timezone.exit, %bb.h, %bb.e, %bb.a
  %.051 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ %i.aa, %bb.h ], [ false, %find_timezone.exit ], [ false, %rb_integer_type_p.exit.i ], [ false, %bb.g ]
end_hunk_1
