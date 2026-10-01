Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/column?download=true
inline.NumInlined: 36
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@col_finalize:bb.a
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = call ptr @g_regex_split(ptr noundef %i.q, ptr noundef nonnull %.pr, i32 noundef 0) ; 4 uses
  %i.s = call i32 @g_strv_length(ptr noundef %i.r)
  %.not171 = icmp eq i32 %i.s, 0
  br i1 %.not171, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.i, i64 40       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not157 = icmp eq ptr %i.v, null
  br i1 %.not157, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.v, align 1
  %.not158 = icmp eq i8 %i.w, 0
  br i1 %.not158, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call zeroext i1 @dfilter_compile_full(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 38, ptr noundef nonnull @__func__.col_finalize)
  br i1 %i.x, label %g_strdup_inline.exit, label %bb.k

g_strdup_inline.exit:                             ; preds = %bb.h
  %i.y = call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #14 ; 4 uses
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = call noalias ptr @g_strdup(ptr noundef %i.z)
  store ptr %i.aa, ptr %i.y, align 8
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = call ptr @proto_registrar_get_byname(ptr noundef %i.ad) ; 2 uses
  %.not159 = icmp eq ptr %i.ae, null
  br i1 %.not159, label %bb.j, label %bb.i

bb.i:                                             ; preds = %g_strdup_inline.exit
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.y, i64 16
  store i32 %i.ag, ptr %i.ah, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %g_strdup_inline.exit
  %i.ai = load ptr, ptr %i.t, align 8
  %i.aj = call ptr @g_slist_append(ptr noundef %i.ai, ptr noundef %i.y)
  store ptr %i.aj, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.j, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = call i32 @g_strv_length(ptr noundef %i.r)
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.f, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.k, %bb.e
  call void @g_strfreev(ptr noundef %i.r)
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  store ptr null, ptr %i.l, align 8
  %i.an = getelementptr i8, ptr %i.i, i64 32
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.i, i64 48
  store ptr null, ptr %i.ao, align 8
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %._crit_edge, %bb.d
  %i.ap = call noalias dereferenceable_or_null(49) ptr @g_malloc0(i64 noundef 49) #14 ; 9 uses
  %i.aq = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = load i32, ptr %i.i, align 8             ; 3 uses
  %or.cond.i160 = icmp ult i32 %i.ar, 49
  br i1 %or.cond.i160, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.as
  store i8 1, ptr %i.at, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  switch i32 %i.ar, label %get_column_format_matches.exit [
    i32 38, label %bb.p
    i32 40, label %bb.q
    i32 41, label %bb.r
    i32 11, label %bb.s
    i32 7, label %bb.t
    i32 8, label %bb.u
    i32 17, label %.sink.split.i
    i32 16, label %bb.v
    i32 31, label %bb.w
    i32 30, label %bb.x
    i32 39, label %bb.y
    i32 12, label %bb.z
  ]

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr i8, ptr %i.ap, i64 20
  store i8 1, ptr %i.au, align 1
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.av = getelementptr i8, ptr %i.ap, i64 20
  store i8 1, ptr %i.av, align 1
  br label %.sink.split.i

bb.r:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %i.ap, i64 21
  store i8 1, ptr %i.aw, align 1
  br label %.sink.split.i

bb.s:                                             ; preds = %bb.o
  %i.ax = getelementptr i8, ptr %i.ap, i64 18
  store i8 1, ptr %i.ax, align 1
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.ap, i64 18
  store i8 1, ptr %i.ay, align 1
  br label %.sink.split.i

bb.u:                                             ; preds = %bb.o
  %i.az = getelementptr i8, ptr %i.ap, i64 19
  store i8 1, ptr %i.az, align 1
  br label %.sink.split.i

bb.v:                                             ; preds = %bb.o
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.o
  br label %.sink.split.i

bb.x:                                             ; preds = %bb.o
  br label %.sink.split.i

bb.y:                                             ; preds = %bb.o
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.o
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.sink23.i = phi i64 [ 9, %bb.z ], [ 42, %bb.y ], [ 26, %bb.x ], [ 28, %bb.w ], [ 18, %bb.v ], [ 28, %bb.p ], [ 27, %bb.u ], [ 26, %bb.t ], [ 26, %bb.s ], [ 29, %bb.r ], [ 28, %bb.q ], [ 20, %bb.o ]
  %i.ba = getelementptr i8, ptr %i.ap, i64 %.sink23.i
  store i8 1, ptr %i.ba, align 1
  br label %get_column_format_matches.exit

get_column_format_matches.exit:                   ; preds = %bb.o, %.sink.split.i
  %i.bb = getelementptr i8, ptr %i.i, i64 56
  store ptr null, ptr %i.bb, align 8
  %i.bc = load i32, ptr %i.i, align 8
  %i.bd = icmp eq i32 %i.bc, 25
  %i.be = getelementptr i8, ptr %i.i, i64 64
  %. = select i1 %i.bd, i64 4096, i64 2048        ; 2 uses
  %i.bf = call noalias dereferenceable_or_null(2048) ptr @g_malloc(i64 noundef %.) #14
  store ptr %i.bf, ptr %i.be, align 8
  %i.bg = call noalias dereferenceable_or_null(2048) ptr @g_malloc(i64 noundef %.) #14
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv174
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %i.g, align 8
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv174
  store ptr @.str.152, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.f, align 8
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv174
  %i.bn = load ptr, ptr %i.bm, align 8
  store i8 0, ptr %i.bn, align 1
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 3 uses
  %i.bo = load i32, ptr %i.b, align 8
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next175, %i.bp
  br i1 %i.bq, label %bb.b, label %._crit_edge166, !llvm.loop !18

._crit_edge166:                                   ; preds = %get_column_format_matches.exit, %bb.a
  %.0146.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next175, %get_column_format_matches.exit ] ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %.0146.lcssa
  store ptr null, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %0, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %.0146.lcssa
  store ptr null, ptr %i.bw, align 8
  %i.bx = load i32, ptr %i.b, align 8
  %.not172 = icmp eq i32 %i.bx, 0
  br i1 %.not172, label %._crit_edge169, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge166
  %i.by = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 24
  %i.ca = getelementptr i8, ptr %0, i64 32
  %.pre183.pre = load ptr, ptr %i.by, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ae
  %.pre183 = phi ptr [ %.pre183.pre, %.preheader.lr.ph ], [ %.pre183184, %bb.ae ] ; 2 uses
  %indvars.iv180 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next181, %bb.ae ] ; 4 uses
  %.pre.a = trunc nuw i64 %indvars.iv180 to i32
  %i.cb = trunc nuw i64 %indvars.iv180 to i32     ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader, %bb.ad
  %.pre183185 = phi ptr [ %.pre183, %.preheader ], [ %.pre183184, %bb.ad ]
  %1 = phi ptr [ %.pre183, %.preheader ], [ %2, %bb.ad ] ; 2 uses
  %indvars.iv177 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next178, %bb.ad ] ; 4 uses
  %i.cc = getelementptr [88 x i8], ptr %1, i64 %indvars.iv180
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %i.ce, i64 %indvars.iv177
  %i.cg = load i8, ptr %i.cf, align 1, !range !8, !noundef !9
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ci = load ptr, ptr %i.bz, align 8
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv177 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %bb.ac, label %._crit_edge183

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.cb, ptr %i.cj, align 4
  br label %._crit_edge183

._crit_edge183:                                   ; preds = %bb.ab, %bb.ac
  %.pre-phi = phi i32 [ %i.cb, %bb.ac ], [ %.pre.a, %bb.ab ]
  %i.cm = load ptr, ptr %i.ca, align 8
  %i.cn = getelementptr [4 x i8], ptr %i.cm, i64 %indvars.iv177
  store i32 %.pre-phi, ptr %i.cn, align 4
  %.pre = load ptr, ptr %i.by, align 8            ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %._crit_edge183
  %.pre183184 = phi ptr [ %.pre183185, %bb.aa ], [ %.pre, %._crit_edge183 ] ; 2 uses
  %2 = phi ptr [ %1, %bb.aa ], [ %.pre, %._crit_edge183 ]
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next178, 49
  br i1 %exitcond.not, label %bb.ae, label %bb.aa, !llvm.loop !19

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %i.co = load i32, ptr %i.b, align 8
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp samesign ult i64 %indvars.iv.next181, %i.cp
  br i1 %i.cq, label %.preheader, label %._crit_edge169, !llvm.loop !20

._crit_edge169:                                   ; preds = %bb.ae, %._crit_edge166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dfilter_compile_full(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_regex_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare ptr @proto_registrar_get_byname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_slist_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @build_column_format_array(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  tail call void @col_setup(ptr noundef %0, i32 noundef %1)
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr [88 x i8], ptr %i.d, i64 %indvars.iv ; 8 uses
  %i.f = load ptr, ptr @prefs, align 8
  %i.g = trunc nuw i64 %indvars.iv to i32         ; 4 uses
  %i.h = tail call ptr @g_list_nth(ptr noundef %i.f, i32 noundef %i.g) ; 2 uses
  %.not.i25 = icmp eq ptr %i.h, null
  br i1 %.not.i25, label %get_column_format.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  br label %get_column_format.exit

get_column_format.exit:                           ; preds = %bb.b, %bb.c
  %.0.i26 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.b ]
  store i32 %.0.i26, ptr %i.e, align 8
  %i.l = load ptr, ptr @prefs, align 8
  %i.m = tail call ptr @g_list_nth(ptr noundef %i.l, i32 noundef %i.g) ; 2 uses
  %.not.i27 = icmp eq ptr %i.m, null
  br i1 %.not.i27, label %get_column_title.exit, label %bb.d

bb.d:                                             ; preds = %get_column_format.exit
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %get_column_title.exit

get_column_title.exit:                            ; preds = %get_column_format.exit, %bb.d
  %.0.i28 = phi ptr [ %i.o, %bb.d ], [ null, %get_column_format.exit ]
  %i.p = tail call noalias ptr @g_strdup(ptr noundef %.0.i28)
  %i.q = getelementptr i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load i32, ptr %i.e, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 4
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %get_column_title.exit
  %i.t = load ptr, ptr @prefs, align 8
  %i.u = tail call ptr @g_list_nth(ptr noundef %i.t, i32 noundef %i.g) ; 2 uses
  %.not.i29 = icmp eq ptr %i.u, null
  br i1 %.not.i29, label %get_column_custom_fields.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  br label %get_column_custom_fields.exit

get_column_custom_fields.exit:                    ; preds = %bb.e, %bb.f
  %.0.i30 = phi ptr [ %i.x, %bb.f ], [ null, %bb.e ]
  %i.y = tail call noalias ptr @g_strdup(ptr noundef %.0.i30)
  %i.z = getelementptr i8, ptr %i.e, i64 24
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr @prefs, align 8
  %i.ab = tail call ptr @g_list_nth(ptr noundef %i.aa, i32 noundef %i.g) ; 2 uses
  %.not.i31 = icmp eq ptr %i.ab, null
  br i1 %.not.i31, label %get_column_custom_occurrence.exit, label %bb.g

bb.g:                                             ; preds = %get_column_custom_fields.exit
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  br label %get_column_custom_occurrence.exit

get_column_custom_occurrence.exit:                ; preds = %get_column_custom_fields.exit, %bb.g
  %.0.i32 = phi i32 [ %i.ae, %bb.g ], [ 0, %get_column_custom_fields.exit ]
  %i.af = getelementptr i8, ptr %i.e, i64 32
  store i32 %.0.i32, ptr %i.af, align 8
  %.pre = load i32, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %get_column_custom_occurrence.exit, %get_column_title.exit
  %i.ag = phi i32 [ %.pre, %get_column_custom_occurrence.exit ], [ %i.r, %get_column_title.exit ]
  %i.ah = tail call ptr @try_val_to_str(i32 noundef %i.ag, ptr noundef nonnull @col_format_abbrev.alist_vals)
  %i.ai = tail call i32 @proto_registrar_get_id_byname(ptr noundef %i.ah)
  %i.aj = getelementptr i8, ptr %i.e, i64 80
  store i32 %i.ai, ptr %i.aj, align 8
  br i1 %2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.e, i64 72
  store i32 0, ptr %i.ak, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr %i.a, align 8
  %i.am = zext i32 %i.al to i64
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.j, %bb.a
  tail call void @col_finalize(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @col_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @proto_registrar_get_id_byname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @column_register_fields() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.hf_register_info, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  %i.a = load i32, ptr @proto_cols, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @proto_get_id_by_filter_name(ptr noundef nonnull @.str.173) ; 2 uses
  store i32 %i.c, ptr @proto_cols, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.173)
  store i32 %i.e, ptr @proto_cols, align 4
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.f = load ptr, ptr @hf_cols, align 8          ; 2 uses
  %.not.i51 = icmp eq ptr %i.f, null
  br i1 %.not.i51, label %column_deregister_fields.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.thread
  %i.g = load i32, ptr @hf_cols_cleanup, align 4
  %.not5.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr @hf_cols, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.h = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.f, %.preheader.i ]
  tail call void @proto_add_deregistered_data(ptr noundef %i.h)
  store ptr null, ptr @hf_cols, align 8
  store i32 0, ptr @hf_cols_cleanup, align 4
  br label %column_deregister_fields.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.i = load i32, ptr @proto_cols, align 4
  %i.j = load ptr, ptr @hf_cols, align 8
  %i.k = getelementptr [80 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 4
  tail call void @proto_deregister_field(i32 noundef %i.i, i32 noundef %i.m)
end_hunk_0
