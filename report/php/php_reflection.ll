Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_reflection?download=true
inline.NumInlined: 428
inline.NumDeleted: 70
begin_hunk_0_@zim_ReflectionProperty_setValue:bb.a
  store i32 %i.ah, ptr %i.aa, align 4, !tbaa !43
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %zend_string_release.exit84

bb.k:                                             ; preds = %bb.j
  %i.aj = and i32 %i.ad, 128
  %.not5.i83 = icmp eq i32 %i.aj, 0
  br i1 %.not5.i83, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.aa) #11
  br label %zend_string_release.exit84

bb.m:                                             ; preds = %bb.k
  call void @_efree(ptr noundef nonnull %i.aa) #11
  br label %zend_string_release.exit84

zend_string_release.exit84:                       ; preds = %bb.i, %bb.j, %bb.l, %bb.m
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !84
  %.not77 = icmp eq ptr %i.ak, null
  br i1 %.not77, label %bb.s, label %bb.v

bb.n:                                             ; preds = %bb.f
  %i.al = call ptr @get_active_function_or_method_name() #11 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.68, ptr noundef nonnull %i.am) #11
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !34 ; 2 uses
  %i.ap = and i32 %i.ao, 64
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.o, label %zend_string_release.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !43 ; 2 uses
  %i.ar = icmp ne i32 %i.aq, 0
  call void @llvm.assume(i1 %i.ar)
  %i.as = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.as, ptr %i.al, align 4, !tbaa !43
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %zend_string_release.exit

bb.p:                                             ; preds = %bb.o
  %i.au = and i32 %i.ao, 128
  %.not5.i = icmp eq i32 %i.au, 0
  br i1 %.not5.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.al) #11
  br label %zend_string_release.exit

bb.r:                                             ; preds = %bb.p
  call void @_efree(ptr noundef nonnull %i.al) #11
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.n, %bb.o, %bb.q, %bb.r
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !84
  %.not74 = icmp eq ptr %i.av, null
  br i1 %.not74, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.h, %zend_string_release.exit, %zend_string_release.exit84
  %i.aw = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !212
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.bb = call i32 @zend_update_static_property_ex(ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.ba) #11 ; 0 uses
  br label %bb.v

prop_get_flags.exit.thread:                       ; preds = %bb.e, %prop_get_flags.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !34
  %.not72 = icmp eq i32 %i.bd, 2
  br i1 %.not72, label %bb.u, label %bb.t, !prof !49

bb.t:                                             ; preds = %prop_get_flags.exit.thread
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef 2) #11
  br label %.critedge80

bb.u:                                             ; preds = %prop_get_flags.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !34
  %i.bh = icmp eq i8 %i.bg, 8
  br i1 %i.bh, label %.critedge.critedge, label %.critedge80, !prof !50

.critedge.critedge:                               ; preds = %bb.u
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !34 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !200
  %i.bl = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41
  store ptr %i.bm, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !121
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !228
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !212
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bu = tail call ptr %i.bq(ptr noundef %i.bi, ptr noundef %i.bs, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bt) #11 ; 0 uses
  store ptr %i.bk, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !200
  br label %bb.v

.critedge80:                                      ; preds = %bb.u, %bb.t
  %.067 = phi i32 [ 0, %bb.t ], [ 1, %bb.u ]
  %.066 = phi ptr [ null, %bb.t ], [ %i.be, %bb.u ]
  %.065 = phi i32 [ 0, %bb.t ], [ 18, %bb.u ]
  %.0 = phi i32 [ 1, %bb.t ], [ 9, %bb.u ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.0, i32 noundef %.067, ptr noundef null, i32 noundef %.065, ptr noundef %.066) #11
  br label %bb.v

bb.v:                                             ; preds = %.critedge.critedge, %bb.s, %.critedge80, %bb.g, %bb.c, %zend_string_release.exit84, %zend_string_release.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i32 @zend_parse_parameters_ex(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @get_active_function_or_method_name() local_unnamed_addr #2

declare i32 @zend_update_static_property_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_ReflectionProperty_getRawValue(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !34
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %.critedge, label %bb.d, !prof !50

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0106.ph = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  %.0103.ph = phi i32 [ 18, %bb.c ], [ 0, %bb.b ]
  %.0101.ph = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  %.0.ph = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.0106.ph, i32 noundef %.0.ph, ptr noundef null, i32 noundef %.0103.ph, ptr noundef %.0101.ph) #11
  br label %bb.af

.critedge:                                        ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.critedge
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !84 ; 2 uses
  %.not126 = icmp eq ptr %i.l, null
  br i1 %.not126, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = load ptr, ptr @reflection_exception_ptr, align 8, !tbaa !44
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.af, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.12) #11
  br label %bb.af

bb.h:                                             ; preds = %.critedge
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51   ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %instanceof_function.exit.thread, label %instanceof_function.exit

instanceof_function.exit:                         ; preds = %bb.h
  %i.w = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.s, ptr noundef %i.u) #11
  br i1 %i.w, label %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, label %bb.i

instanceof_function.exit.instanceof_function.exit.thread_crit_edge: ; preds = %instanceof_function.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre167 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %instanceof_function.exit.thread

bb.i:                                             ; preds = %instanceof_function.exit
  %i.x = load ptr, ptr @reflection_exception_ptr, align 8, !tbaa !44
  %i.y = tail call ptr @zend_throw_exception(ptr noundef %i.x, ptr noundef nonnull @.str.64, i64 noundef 0) #11 ; 0 uses
  br label %bb.af

instanceof_function.exit.thread:                  ; preds = %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, %bb.h
  %.val.a = phi ptr [ %.pre167, %instanceof_function.exit.instanceof_function.exit.thread_crit_edge ], [ %i.s, %bb.h ]
  %i.z = phi ptr [ %.pre, %instanceof_function.exit.instanceof_function.exit.thread_crit_edge ], [ %i.q, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112
  %3 = getelementptr i8, ptr %i.z, i64 16
  %i.ac = icmp eq ptr %i.ab, %.val.a
  br i1 %i.ac, label %bb.j, label %.critedge132

bb.j:                                             ; preds = %instanceof_function.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !112 ; 2 uses
  %i.af = icmp sgt ptr %i.ae, inttoptr (i64 15 to ptr)
  br i1 %i.af, label %bb.k, label %.critedge132, !prof !50

bb.k:                                             ; preds = %bb.j
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !34
  %.not117 = icmp eq i8 %i.aj, 0
  br i1 %.not117, label %.critedge132, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr %i.ai, align 8            ; 3 uses
  %i.al = and i32 %i.ak, 65280
  %.not118 = icmp eq i32 %i.al, 0
  br i1 %.not118, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = and i32 %i.ak, 255
  %i.an = icmp eq i32 %i.am, 10
  br i1 %i.an, label %bb.n, label %.sink.split, !prof !55

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.as = and i32 %i.ar, 65280
  %.not119 = icmp eq i32 %i.as, 0
  br i1 %.not119, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.sink191 = phi i32 [ %i.ar, %bb.n ], [ %i.ak, %bb.m ]
  %.sink.in = phi ptr [ %i.ap, %bb.n ], [ %i.ah, %bb.m ] ; 2 uses
  %i.at = and i32 %.sink191, 65280
  %i.au = icmp ne i32 %i.at, 0
  tail call void @llvm.assume(i1 %i.au)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !34 ; 2 uses
  %i.av = load i32, ptr %.sink, align 4, !tbaa !43
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %.sink, align 4, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l, %bb.n
  %.0104 = phi ptr [ %i.ah, %bb.l ], [ %i.ap, %bb.n ], [ %.sink.in, %.sink.split ] ; 2 uses
  %i.ax = load ptr, ptr %.0104, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %.0104, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !34
  store ptr %i.ax, ptr %1, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !34
  br label %bb.af

.critedge132:                                     ; preds = %bb.j, %bb.k, %instanceof_function.exit.thread
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !41
  %.val = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !211 ; 4 uses
  %.not.i136 = icmp eq ptr %i.bb, %.val
  %.not120 = icmp eq ptr %i.bc, null              ; 2 uses
  br i1 %.not.i136, label %reflection_property_get_effective_prop.exit, label %bb.p

bb.p:                                             ; preds = %.critedge132
  br i1 %.not120, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !196
  %i.bf = and i32 %i.be, 4
  %.not10.i = icmp eq i32 %i.bf, 0
  br i1 %.not10.i, label %bb.r, label %reflection_property_get_effective_prop.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !212
  %i.bj = tail call ptr @zend_hash_find(ptr noundef nonnull %i.bg, ptr noundef %i.bi) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %.critedge135, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34, !nonnull !54, !noundef !54
  br label %reflection_property_get_effective_prop.exit.thread

reflection_property_get_effective_prop.exit:      ; preds = %.critedge132
  br i1 %.not120, label %.critedge135, label %reflection_property_get_effective_prop.exit.thread

reflection_property_get_effective_prop.exit.thread: ; preds = %bb.s, %bb.q, %reflection_property_get_effective_prop.exit
  %.0.i137163 = phi ptr [ %i.bc, %reflection_property_get_effective_prop.exit ], [ %i.bk, %bb.s ], [ %i.bc, %bb.q ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i137163, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !196
  %i.bn = and i32 %i.bm, 16
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %.critedge134, label %bb.t, !prof !50

bb.t:                                             ; preds = %reflection_property_get_effective_prop.exit.thread
  %i.bo = load ptr, ptr @reflection_exception_ptr, align 8, !tbaa !44
  %i.bp = tail call ptr @zend_throw_exception(ptr noundef %i.bo, ptr noundef nonnull @.str.69, i64 noundef 0) #11 ; 0 uses
  br label %bb.af

.critedge134:                                     ; preds = %reflection_property_get_effective_prop.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i137163, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !225 ; 2 uses
  %.not121 = icmp eq ptr %i.br, null
  br i1 %.not121, label %.critedge135, label %bb.u

bb.u:                                             ; preds = %.critedge134
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !226
  %.not122 = icmp eq ptr %i.bs, null
  br i1 %.not122, label %.critedge135, label %bb.ae

.critedge135:                                     ; preds = %bb.r, %reflection_property_get_effective_prop.exit, %bb.u, %.critedge134
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !200
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !41
  store ptr %i.bu, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !200
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !121
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !227
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !212
  %i.cc = call ptr %i.bz(ptr noundef %i.bv, ptr noundef %i.cb, i32 noundef 0, ptr noundef nonnull %i.aa, ptr noundef nonnull %2) #11 ; 13 uses
  store ptr %i.bt, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !200
  %.not123 = icmp eq ptr %i.cc, %2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 8 uses
  br i1 %.not123, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.critedge135
  %i.ce = load i32, ptr %i.cd, align 8            ; 3 uses
  %i.cf = and i32 %i.ce, 65280
  %.not124 = icmp eq i32 %i.cf, 0
  br i1 %.not124, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = and i32 %i.ce, 255
  %i.ch = icmp eq i32 %i.cg, 10
  br i1 %i.ch, label %bb.x, label %.sink.split181, !prof !55

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.cm = and i32 %i.cl, 65280
  %.not125 = icmp eq i32 %i.cm, 0
  br i1 %.not125, label %bb.y, label %.sink.split181

.sink.split181:                                   ; preds = %bb.w, %bb.x
  %.sink194 = phi i32 [ %i.cl, %bb.x ], [ %i.ce, %bb.w ]
  %.sink185.in = phi ptr [ %i.cj, %bb.x ], [ %i.cc, %bb.w ] ; 2 uses
  %i.cn = and i32 %.sink194, 65280
  %i.co = icmp ne i32 %i.cn, 0
  call void @llvm.assume(i1 %i.co)
  %.sink185 = load ptr, ptr %.sink185.in, align 8, !tbaa !34 ; 2 uses
  %i.cp = load i32, ptr %.sink185, align 4, !tbaa !43
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %.sink185, align 4, !tbaa !43
  br label %bb.y

bb.y:                                             ; preds = %.sink.split181, %bb.v, %bb.x
  %.0102 = phi ptr [ %i.cc, %bb.v ], [ %i.cj, %bb.x ], [ %.sink185.in, %.sink.split181 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0102, i64 8
  br label %zend_unwrap_reference.exit

bb.z:                                             ; preds = %.critedge135
  %i.cs = load i8, ptr %i.cd, align 8, !tbaa !34
  %i.ct = icmp eq i8 %i.cs, 10
  br i1 %i.ct, label %bb.aa, label %zend_unwrap_reference.exit

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 5 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !43 ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !34
  store ptr %i.cy, ptr %i.cc, align 8, !tbaa !34
  store i32 %i.da, ptr %i.cd, align 8, !tbaa !34
  call void @_efree_32(ptr noundef nonnull %i.cu) #11
  br label %zend_unwrap_reference.exit

bb.ac:                                            ; preds = %bb.aa
  %i.db = icmp ne i32 %i.cv, 0
  call void @llvm.assume(i1 %i.db)
  %i.dc = add i32 %i.cv, -1
  store i32 %i.dc, ptr %i.cu, align 4, !tbaa !43
  %i.dd = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !34 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !34 ; 2 uses
  store ptr %i.df, ptr %i.cc, align 8, !tbaa !34
  store i32 %i.dh, ptr %i.cd, align 8, !tbaa !34
  %i.di = and i32 %i.dh, 65280
  %.not.i = icmp eq i32 %i.di, 0
  br i1 %.not.i, label %zend_unwrap_reference.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load i32, ptr %i.df, align 4, !tbaa !43
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !43
  br label %zend_unwrap_reference.exit

zend_unwrap_reference.exit:                       ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.y
  %.sink188.in = phi ptr [ %.0102, %bb.y ], [ %i.cc, %bb.ad ], [ %i.cc, %bb.ac ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.z ]
  %.sink186.in = phi ptr [ %i.cr, %bb.y ], [ %i.cd, %bb.ad ], [ %i.cd, %bb.ac ], [ %i.cd, %bb.ab ], [ %i.cd, %bb.z ]
  %.sink186 = load i32, ptr %.sink186.in, align 8, !tbaa !34
  %.sink188 = load ptr, ptr %.sink188.in, align 8, !tbaa !34
  store ptr %.sink188, ptr %1, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink186, ptr %i.dl, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.af

bb.ae:                                            ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !212
  %i.do = tail call ptr @zend_get_property_hook_trampoline(ptr noundef nonnull %.0.i137163, i32 noundef 0, ptr noundef %i.dn) #11
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !51
  tail call void @zend_call_known_function(ptr noundef %i.do, ptr noundef %i.dp, ptr noundef %i.dr, ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %bb.af

bb.af:                                            ; preds = %bb.o, %bb.d, %bb.t, %bb.ae, %zend_unwrap_reference.exit, %bb.f, %bb.i, %bb.g
  ret void
}

declare ptr @zend_get_property_hook_trampoline(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_ReflectionProperty_setRawValue(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !84 ; 2 uses
  %.not64 = icmp eq ptr %i.f, null
  br i1 %.not64, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = load ptr, ptr @reflection_exception_ptr, align 8, !tbaa !44
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %reflection_property_set_raw_value.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.12) #11
  br label %reflection_property_set_raw_value.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34
  %.not = icmp eq i32 %i.l, 2
  br i1 %.not, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef 2) #11
  br label %zend_parse_arg_object.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
end_hunk_0
