Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/generator?download=true
inline.NumInlined: 364
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@fbuffer_realloc:bb.a
  store ptr %i.h, ptr %i.f, align 8, !tbaa !58
  store i32 0, ptr %0, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !79   ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %i.g, i64 %i.j, i1 false)
  br label %ruby_nonempty_memcpy.exit

bb.e:                                             ; preds = %bb.b
  %i.k = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.g, i64 noundef %1, i64 noundef 1) #32
  store ptr %i.k, ptr %i.f, align 8, !tbaa !58
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.d, %bb.c, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.a
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @rb_float_value(i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 5 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %fbuffer_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !79   ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %fbuffer_append_reserved.exit.i, !prof !71

bb.c:                                             ; preds = %bb.b
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.f)
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !79
  br label %fbuffer_append_reserved.exit.i

fbuffer_append_reserved.exit.i:                   ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.q = load i64, ptr %i.i, align 8, !tbaa !79
  %i.r = add i64 %i.q, %i.f
  store i64 %i.r, ptr %i.i, align 8, !tbaa !79
  br label %fbuffer_append.exit

fbuffer_append.exit:                              ; preds = %bb.a, %fbuffer_append_reserved.exit.i
  ret void
}

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @generate_json_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @ensure_valid_encoding(ptr noundef %1, i64 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call fastcc void @raw_generate_json_string(ptr noundef %0, ptr noundef %1, i64 noundef %i.a)
  ret void
}

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @json_object_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %0 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31
  br label %rb_type.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %0, 37
  %switch.shifted = lshr i64 68720525329, %0
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond102 = select i1 %i.r, i1 %switch.lobit, i1 false
  br i1 %or.cond102, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = trunc i64 %0 to i1
  br i1 %i.s, label %rb_type.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %0, 254
  %i.u = icmp eq i64 %i.t, 12
  %spec.select.i = select i1 %i.u, i32 20, i32 4
  br label %rb_type.exit

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.json_object_i, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %rb_type.exit

rb_type.exit:                                     ; preds = %switch.lookup, %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.q, %bb.b ], [ %spec.select.i, %bb.e ], [ 21, %bb.d ], [ %switch.ext, %switch.lookup ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !89, !range !48, !noundef !49
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_type.exit
  store i8 0, ptr %i.v, align 4, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !88
  br label %bb.i

bb.g:                                             ; preds = %rb_type.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79 ; 2 uses
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %fbuffer_append_char.exit, !prof !71

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.e, i64 noundef 1)
  %.pre.i = load i64, ptr %i.ab, align 8, !tbaa !79
  br label %fbuffer_append_char.exit

fbuffer_append_char.exit:                         ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ac, %bb.g ], [ %.pre.i, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 44, ptr %i.ah, align 1, !tbaa !78
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !79
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !79
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %fbuffer_append_char.exit, %bb.f
  %i.ak = phi ptr [ %.pre, %fbuffer_append_char.exit ], [ %i.g, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %.not61 = icmp eq i64 %i.am, 0
  br i1 %.not61, label %bb.k, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @fbuffer_append_str(ptr noundef %i.e, i64 noundef %i.am)
  %.pre91 = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi ptr [ %.pre91, %bb.j ], [ %i.ak, %bb.i ]
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %.not62 = icmp eq i64 %i.ao, 0
  br i1 %.not62, label %.peel.begin, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @fbuffer_append_str_repeat(ptr noundef %i.e, i64 noundef %i.ao, i64 noundef %i.i)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  switch i32 %.0.i, label %bb.m [
    i32 5, label %.loopexit
    i32 20, label %.loopexit88
  ]

bb.m:                                             ; preds = %.peel.begin
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !64  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !50, !range !48, !noundef !49
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  br i1 %i.at, label %bb.n, label %.loopexit89

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  %i.aw = and i64 %i.av, -5
  %.not72.peel = icmp eq i64 %i.aw, 0
  br i1 %.not72.peel, label %.loopexit90, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  store i64 20, ptr %i.ap, align 8, !tbaa !11
  %i.ax = call i64 @rb_proc_call_with_block(i64 noundef %i.av, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #24 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %rb_type.exit69.peel

bb.p:                                             ; preds = %bb.o
  switch i64 %i.ax, label %bb.q [
    i64 0, label %rb_type.exit69.peel.thread
    i64 4, label %rb_type.exit69.peel.thread
    i64 20, label %rb_type.exit69.peel.thread
    i64 36, label %rb_type.exit69.peel.thread
  ]

bb.q:                                             ; preds = %bb.p
  %i.bc = and i64 %i.ax, 255
  %or.cond = icmp eq i64 %i.bc, 12
  br i1 %or.cond, label %.loopexit88, label %rb_type.exit69.peel.thread

rb_type.exit69.peel:                              ; preds = %bb.o
  %i.bd = inttoptr i64 %i.ax to ptr
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i32 %i.bf, 31
  switch i32 %i.bg, label %rb_type.exit69.peel.thread [
    i32 5, label %.loopexit
    i32 20, label %.loopexit88
  ]

.loopexit:                                        ; preds = %rb_type.exit69.peel, %.peel.begin
  %.058.lcssa = phi i64 [ %0, %.peel.begin ], [ %i.ax, %rb_type.exit69.peel ] ; 3 uses
  %.0.lcssa = phi i1 [ false, %.peel.begin ], [ true, %rb_type.exit69.peel ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !88
  %.not64 = icmp eq i32 %i.bi, 5
  br i1 %.not64, label %bb.s, label %bb.r, !prof !27

bb.r:                                             ; preds = %.loopexit
  call fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %i.bj = inttoptr i64 %.058.lcssa to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !81
  %i.bm = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.w, label %bb.t, !prof !27

bb.t:                                             ; preds = %bb.s
  %i.bo = call fastcc i64 @convert_string_subclass(i64 noundef %.058.lcssa)
  br label %bb.w

.loopexit88:                                      ; preds = %bb.q, %rb_type.exit69.peel, %.peel.begin
  %.058.lcssa84 = phi i64 [ %0, %.peel.begin ], [ %i.ax, %rb_type.exit69.peel ], [ %i.ax, %bb.q ]
  %.0.lcssa80 = phi i1 [ false, %.peel.begin ], [ true, %rb_type.exit69.peel ], [ true, %bb.q ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !88
  %.not63 = icmp eq i32 %i.bq, 20
  br i1 %.not63, label %bb.v, label %bb.u, !prof !27

bb.u:                                             ; preds = %.loopexit88
  call fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit88
  %i.br = call i64 @rb_sym2str(i64 noundef %.058.lcssa84) #24
  br label %bb.w

rb_type.exit69.peel.thread:                       ; preds = %bb.p, %bb.p, %bb.p, %bb.q, %bb.p, %rb_type.exit69.peel
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !50, !range !48, !noundef !49
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.loopexit90, label %.loopexit89

.loopexit90:                                      ; preds = %rb_type.exit69.peel.thread, %bb.n
  %.058.lcssa86 = phi i64 [ %0, %bb.n ], [ %i.ax, %rb_type.exit69.peel.thread ] ; 2 uses
  %i.bw = call fastcc i64 @rb_class_of(i64 noundef %.058.lcssa86) #30
  call void (i64, ptr, ...) @raise_generator_error(i64 noundef %.058.lcssa86, ptr noundef nonnull @.str.83, i64 noundef %i.bw) #29
  unreachable

.loopexit89:                                      ; preds = %rb_type.exit69.peel.thread, %bb.m
  %.058.lcssa85 = phi i64 [ %0, %bb.m ], [ %i.ax, %rb_type.exit69.peel.thread ]
  %i.bx = call i64 @rb_convert_type(i64 noundef %.058.lcssa85, i32 noundef 5, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.59) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.t, %.loopexit89, %bb.v
  %.083 = phi i1 [ %i.at, %.loopexit89 ], [ %.0.lcssa80, %bb.v ], [ %.0.lcssa, %bb.t ], [ %.0.lcssa, %bb.s ]
  %.056 = phi i64 [ %i.bx, %.loopexit89 ], [ %i.br, %bb.v ], [ %i.bo, %bb.t ], [ %.058.lcssa, %bb.s ]
  %i.by = call fastcc i64 @ensure_valid_encoding(ptr noundef nonnull %i.d, i64 noundef %.056, i1 noundef zeroext %.083, i1 noundef zeroext true) ; 3 uses
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !81
  %i.cc = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.x, label %bb.y, !prof !27

bb.x:                                             ; preds = %bb.w
  call fastcc void @raw_generate_json_string(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.by)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @generate_json(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.by)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !43
  %.not65 = icmp eq i64 %i.cf, 0
  br i1 %.not65, label %bb.ab, label %bb.aa, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !43
  call fastcc void @fbuffer_append_str(ptr noundef %i.e, i64 noundef %i.ci)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !79 ; 2 uses
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.ac, label %fbuffer_append_char.exit71, !prof !71

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.e, i64 noundef 1)
  %.pre.i70 = load i64, ptr %i.cl, align 8, !tbaa !79
  br label %fbuffer_append_char.exit71

fbuffer_append_char.exit71:                       ; preds = %bb.ab, %bb.ac
  %i.co = phi i64 [ %i.cm, %bb.ab ], [ %.pre.i70, %bb.ac ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !58
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  store i8 58, ptr %i.cr, align 1, !tbaa !78
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !79
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !42
  %.not66 = icmp eq i64 %i.cv, 0
  br i1 %.not66, label %bb.ae, label %bb.ad, !prof !27

bb.ad:                                            ; preds = %fbuffer_append_char.exit71
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !42
  call fastcc void @fbuffer_append_str(ptr noundef nonnull %i.e, i64 noundef %i.cy)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %fbuffer_append_char.exit71
  call void @generate_json(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str_repeat(ptr nofree noundef captures(none) %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 8 uses
  %i.g = mul i64 %i.f, %2                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.b, label %fbuffer_inc_capa.exit, !prof !71

bb.b:                                             ; preds = %bb.a
end_hunk_0
