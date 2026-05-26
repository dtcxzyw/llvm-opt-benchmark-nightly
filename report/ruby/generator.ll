inline.NumInlined: 364
inline.NumDeleted: 88
begin_hunk_0_@fbuffer_realloc:bb.a
; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @rb_float_value(i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str(ptr noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 5 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %fbuffer_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %fbuffer_append_reserved.exit.i, !prof !71

bb.c:                                             ; preds = %bb.b
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.f)
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i

fbuffer_append_reserved.exit.i:                   ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.q = load i64, ptr %i.i, align 8, !tbaa !81
  %i.r = add i64 %i.q, %i.f
  store i64 %i.r, ptr %i.i, align 8, !tbaa !81
  br label %fbuffer_append.exit

fbuffer_append.exit:                              ; preds = %bb.a, %fbuffer_append_reserved.exit.i
  ret void
}

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @generate_json_string(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 15 uses
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
  %i.r = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62) ; 3 uses
  %i.s = icmp ult i64 %i.r, 10
  %switch.maskindex = trunc i64 %i.r to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond102 = select i1 %i.s, i1 %switch.lobit, i1 false
  br i1 %or.cond102, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = trunc i64 %0 to i1
  br i1 %i.t, label %rb_type.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = and i64 %0, 254
  %i.v = icmp eq i64 %i.u, 12
  %spec.select.i = select i1 %i.v, i32 20, i32 4
  br label %rb_type.exit

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.json_object_i, i64 %i.r
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rb_type.exit

rb_type.exit:                                     ; preds = %switch.lookup, %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.q, %bb.b ], [ %spec.select.i, %bb.e ], [ 21, %bb.d ], [ %switch.load, %switch.lookup ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !96, !range !48, !noundef !49
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_type.exit
  store i8 0, ptr %i.w, align 4, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.0.i, ptr %i.z, align 8, !tbaa !95
  br label %bb.i

bb.g:                                             ; preds = %rb_type.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %fbuffer_append_char.exit, !prof !71

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.e, i64 noundef 1)
  %.pre.i = load i64, ptr %i.ac, align 8, !tbaa !81
  br label %fbuffer_append_char.exit

fbuffer_append_char.exit:                         ; preds = %bb.g, %bb.h
  %i.af = phi i64 [ %i.ad, %bb.g ], [ %.pre.i, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 44, ptr %i.ai, align 1, !tbaa !79
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !81
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !81
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %fbuffer_append_char.exit, %bb.f
  %i.al = phi ptr [ %.pre, %fbuffer_append_char.exit ], [ %i.g, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %.not61 = icmp eq i64 %i.an, 0
  br i1 %.not61, label %bb.k, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @fbuffer_append_str(ptr noundef %i.e, i64 noundef %i.an)
  %.pre91 = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = phi ptr [ %.pre91, %bb.j ], [ %i.al, %bb.i ]
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !39 ; 2 uses
  %.not62 = icmp eq i64 %i.ap, 0
  br i1 %.not62, label %.peel.begin, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @fbuffer_append_str_repeat(ptr noundef %i.e, i64 noundef %i.ap, i64 noundef %i.i)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.l, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  switch i32 %.0.i, label %bb.m [
    i32 5, label %.loopexit
    i32 20, label %.loopexit88
  ]

bb.m:                                             ; preds = %.peel.begin
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !64  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load i8, ptr %i.as, align 8, !tbaa !50, !range !48, !noundef !49
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  br i1 %i.au, label %bb.n, label %.loopexit89

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !46 ; 2 uses
  %i.ax = and i64 %i.aw, -5
  %.not72.peel = icmp eq i64 %i.ax, 0
  br i1 %.not72.peel, label %.loopexit90, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %0, ptr %i.a, align 16, !tbaa !10
  store i64 20, ptr %i.aq, align 8, !tbaa !10
  %i.ay = call i64 @rb_proc_call_with_block(i64 noundef %i.aw, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #24
  %.fr101 = freeze i64 %i.ay                      ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.az = icmp eq i64 %.fr101, 0
  %i.ba = and i64 %.fr101, 7
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = or i1 %i.az, %i.bb
  br i1 %i.bc, label %bb.p, label %rb_type.exit69.peel

bb.p:                                             ; preds = %bb.o
  %i.bd = call i64 @llvm.fshl.i64(i64 %.fr101, i64 %.fr101, i64 62)
  switch i64 %i.bd, label %bb.q [
    i64 0, label %rb_type.exit69.peel.thread
    i64 1, label %rb_type.exit69.peel.thread
    i64 5, label %rb_type.exit69.peel.thread
    i64 9, label %rb_type.exit69.peel.thread
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = and i64 %.fr101, 255
  %or.cond = icmp eq i64 %i.be, 12
  br i1 %or.cond, label %.loopexit88, label %rb_type.exit69.peel.thread

rb_type.exit69.peel:                              ; preds = %bb.o
  %i.bf = inttoptr i64 %.fr101 to ptr
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 31
  switch i32 %i.bi, label %rb_type.exit69.peel.thread [
    i32 5, label %.loopexit
    i32 20, label %.loopexit88
  ]

.loopexit:                                        ; preds = %rb_type.exit69.peel, %.peel.begin
  %.058.lcssa = phi i64 [ %0, %.peel.begin ], [ %.fr101, %rb_type.exit69.peel ] ; 3 uses
  %.0.lcssa = phi i1 [ false, %.peel.begin ], [ true, %rb_type.exit69.peel ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !95
  %.not64 = icmp eq i32 %i.bk, 5
  br i1 %.not64, label %bb.s, label %bb.r, !prof !27

bb.r:                                             ; preds = %.loopexit
  call fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %i.bl = inttoptr i64 %.058.lcssa to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !86
  %i.bo = load i64, ptr @rb_cString, align 8, !tbaa !10
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.w, label %bb.t, !prof !27

bb.t:                                             ; preds = %bb.s
  %i.bq = call fastcc i64 @convert_string_subclass(i64 noundef %.058.lcssa)
  br label %bb.w

.loopexit88:                                      ; preds = %bb.q, %rb_type.exit69.peel, %.peel.begin
  %.058.lcssa84 = phi i64 [ %0, %.peel.begin ], [ %.fr101, %rb_type.exit69.peel ], [ %.fr101, %bb.q ]
  %.0.lcssa80 = phi i1 [ false, %.peel.begin ], [ true, %rb_type.exit69.peel ], [ true, %bb.q ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !95
  %.not63 = icmp eq i32 %i.bs, 20
  br i1 %.not63, label %bb.v, label %bb.u, !prof !27

bb.u:                                             ; preds = %.loopexit88
  call fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit88
  %i.bt = call i64 @rb_sym2str(i64 noundef %.058.lcssa84) #24
  br label %bb.w

rb_type.exit69.peel.thread:                       ; preds = %bb.p, %bb.p, %bb.p, %bb.q, %bb.p, %rb_type.exit69.peel
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !50, !range !48, !noundef !49
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.loopexit90, label %.loopexit89

.loopexit90:                                      ; preds = %rb_type.exit69.peel.thread, %bb.n
  %.058.lcssa86 = phi i64 [ %0, %bb.n ], [ %.fr101, %rb_type.exit69.peel.thread ] ; 2 uses
  %i.by = call fastcc i64 @rb_class_of(i64 noundef %.058.lcssa86) #30
  call void (i64, ptr, ...) @raise_generator_error(i64 noundef %.058.lcssa86, ptr noundef nonnull @.str.83, i64 noundef %i.by) #29
  unreachable

.loopexit89:                                      ; preds = %rb_type.exit69.peel.thread, %bb.m
  %.058.lcssa85 = phi i64 [ %0, %bb.m ], [ %.fr101, %rb_type.exit69.peel.thread ]
  %i.bz = call i64 @rb_convert_type(i64 noundef %.058.lcssa85, i32 noundef 5, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.59) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.t, %.loopexit89, %bb.v
  %.083 = phi i1 [ %i.au, %.loopexit89 ], [ %.0.lcssa80, %bb.v ], [ %.0.lcssa, %bb.t ], [ %.0.lcssa, %bb.s ]
  %.056 = phi i64 [ %i.bz, %.loopexit89 ], [ %i.bt, %bb.v ], [ %i.bq, %bb.t ], [ %.058.lcssa, %bb.s ]
  %i.ca = call fastcc i64 @ensure_valid_encoding(ptr noundef nonnull %i.d, i64 noundef %.056, i1 noundef zeroext %.083, i1 noundef zeroext true) ; 3 uses
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !86
  %i.ce = load i64, ptr @rb_cString, align 8, !tbaa !10
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.x, label %bb.y, !prof !27

bb.x:                                             ; preds = %bb.w
  call fastcc void @raw_generate_json_string(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.ca)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @generate_json(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.ca)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !43
  %.not65 = icmp eq i64 %i.ch, 0
  br i1 %.not65, label %bb.ab, label %bb.aa, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !43
  call fastcc void @fbuffer_append_str(ptr noundef %i.e, i64 noundef %i.ck)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !81 ; 2 uses
  %i.cp = icmp eq i64 %i.cm, %i.co
  br i1 %i.cp, label %bb.ac, label %fbuffer_append_char.exit71, !prof !71

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.e, i64 noundef 1)
  %.pre.i70 = load i64, ptr %i.cn, align 8, !tbaa !81
  br label %fbuffer_append_char.exit71

fbuffer_append_char.exit71:                       ; preds = %bb.ab, %bb.ac
  %i.cq = phi i64 [ %i.co, %bb.ab ], [ %.pre.i70, %bb.ac ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !58
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 58, ptr %i.ct, align 1, !tbaa !79
  %i.cu = load i64, ptr %i.cn, align 8, !tbaa !81
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.cn, align 8, !tbaa !81
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !42
  %.not66 = icmp eq i64 %i.cx, 0
  br i1 %.not66, label %bb.ae, label %bb.ad, !prof !27

bb.ad:                                            ; preds = %fbuffer_append_char.exit71
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !42
  call fastcc void @fbuffer_append_str(ptr noundef nonnull %i.e, i64 noundef %i.da)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %fbuffer_append_char.exit71
  call void @generate_json(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str_repeat(ptr noundef captures(none) %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 8 uses
  %i.g = mul i64 %i.f, %2                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.b, label %fbuffer_inc_capa.exit, !prof !71

bb.b:                                             ; preds = %bb.a
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.g)
  br label %fbuffer_inc_capa.exit

fbuffer_inc_capa.exit:                            ; preds = %bb.a, %bb.b
  %.not7 = icmp eq i64 %2, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %fbuffer_inc_capa.exit
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not.i.i, label %._crit_edge, label %fbuffer_append_reserved.exit.preheader

fbuffer_append_reserved.exit.preheader:           ; preds = %.lr.ph
  %.pre = load i64, ptr %i.j, align 8, !tbaa !81  ; 2 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fbuffer_append_reserved.exit.prol.loopexit, label %fbuffer_append_reserved.exit.prol

fbuffer_append_reserved.exit.prol:                ; preds = %fbuffer_append_reserved.exit.preheader
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.pre
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.q = load i64, ptr %i.j, align 8, !tbaa !81
  %i.r = add i64 %i.q, %i.f                       ; 2 uses
  store i64 %i.r, ptr %i.j, align 8, !tbaa !81
  %i.s = add nsw i64 %2, -1
  br label %fbuffer_append_reserved.exit.prol.loopexit

fbuffer_append_reserved.exit.prol.loopexit:       ; preds = %fbuffer_append_reserved.exit.prol, %fbuffer_append_reserved.exit.preheader
  %.unr = phi i64 [ %.pre, %fbuffer_append_reserved.exit.preheader ], [ %i.r, %fbuffer_append_reserved.exit.prol ]
  %.08.unr = phi i64 [ %2, %fbuffer_append_reserved.exit.preheader ], [ %i.s, %fbuffer_append_reserved.exit.prol ]
  %i.t = icmp eq i64 %2, 1
  br i1 %i.t, label %._crit_edge, label %fbuffer_append_reserved.exit

fbuffer_append_reserved.exit:                     ; preds = %fbuffer_append_reserved.exit.prol.loopexit, %fbuffer_append_reserved.exit
  %i.u = phi i64 [ %i.ac, %fbuffer_append_reserved.exit ], [ %.unr, %fbuffer_append_reserved.exit.prol.loopexit ]
  %.08 = phi i64 [ %i.ad, %fbuffer_append_reserved.exit ], [ %.08.unr, %fbuffer_append_reserved.exit.prol.loopexit ]
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.x = load i64, ptr %i.j, align 8, !tbaa !81
  %i.y = add i64 %i.x, %i.f                       ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !tbaa !81
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !81
  %i.ac = add i64 %i.ab, %i.f                     ; 2 uses
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !81
  %i.ad = add i64 %.08, -2                        ; 2 uses
  %.not.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.1, label %._crit_edge, label %fbuffer_append_reserved.exit

._crit_edge:                                      ; preds = %fbuffer_append_reserved.exit.prol.loopexit, %fbuffer_append_reserved.exit, %.lr.ph, %fbuffer_inc_capa.exit
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !97, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.i, 2
  %i.k = select i1 %i.j, i64 20, i64 0
  %i.l = load i64, ptr @mJSON, align 8, !tbaa !10
  %.pr.i = load i64, ptr @json_inspect_hash_with_mixed_keys.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.84, i64 noundef 18) #24 ; 3 uses
  store i64 %i.m, ptr @json_inspect_hash_with_mixed_keys.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i64 [ %.pr.i, %bb.c ], [ %i.m, %.lr.ph.i ]
  %i.n = load i64, ptr %0, align 8, !tbaa !91
  %i.o = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.l, i64 noundef %.lcssa.i, i32 noundef 2, i64 noundef %i.n, i64 noundef %i.k) #24 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %rbimpl_intern_const.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 1, -7) i64 @convert_string_subclass(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.b = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.a, i32 noundef 0) #24 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
end_hunk_0
