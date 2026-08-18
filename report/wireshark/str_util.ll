inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@isdigit_string:bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not6.not.not, %bb.b ], [ %.not6.not.not, %bb.c ]
  ret i1 %.not.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @ws_ascii_strcasestr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %0) #25 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef %1) #25 ; 3 uses
  %.not13 = icmp ult i64 %i.a, %i.b
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.in = phi i64 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %.01014 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.c = tail call i32 @g_ascii_strncasecmp(ptr noundef %.01014, ptr noundef %1, i64 noundef %i.b)
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = add i64 %.in, -1                         ; 2 uses
  %i.e = getelementptr i8, ptr %.01014, i64 1
  %.not = icmp ult i64 %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.01014, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define ptr @ws_memrchr(ptr nofree noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @memrchr(ptr noundef %0, i32 noundef %1, i64 noundef %2) #25
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn memory(read) uwtable
define ptr @ws_strchrnul(ptr nofree noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call ptr @strchrnul(ptr noundef %0, i32 noundef %1) #25
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read)
declare ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @format_units(ptr noundef %0, double noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_strbuf_new(ptr noundef %0, ptr noundef null) ; 7 uses
  %i.b = tail call double @llvm.fabs.f64(double %1) ; 6 uses
  %i.c = and i16 %3, 2
  %.not.i.not = icmp eq i16 %i.c, 0               ; 5 uses
  %i.d = select i1 %.not.i.not, i32 6, i32 0      ; 6 uses
  %i.e = load ptr, ptr @thousands_grouping_fmt, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @wmem_strbuf_new(ptr noundef null, ptr noundef null) ; 3 uses
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.g, ptr noundef nonnull @.str.47, i32 noundef 22)
  %i.h = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.g)
  %i.i = tail call i32 @g_strcmp0(ptr noundef %i.h, ptr noundef nonnull @.str.48)
  %i.j = icmp eq i32 %i.i, 0                      ; 2 uses
  %.str.49..str.51.i = select i1 %i.j, ptr @.str.49, ptr @.str.51
  %.str.50..str.52.i = select i1 %i.j, ptr @.str.50, ptr @.str.52
  store ptr %.str.49..str.51.i, ptr @thousands_grouping_fmt, align 8
  store ptr %.str.50..str.52.i, ptr @thousands_grouping_fmt_flt, align 8
  tail call void @wmem_strbuf_destroy(ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (sub norm) */ i32 408)
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %4, 0
  %i.l = select i1 %i.k, double 1.000000e+01, double 1.000000e+00 ; 2 uses
  %i.m = fcmp olt double %i.b, 1.000000e+00
  %i.n = select i1 %.not.i.not, double 1.000000e+03, double 1.024000e+03 ; 3 uses
  br i1 %i.m, label %.preheader.preheader, label %.preheader85

.preheader.preheader:                             ; preds = %bb.d
  br i1 %.not.i.not, label %.lr.ph129, label %.loopexit84

.preheader85:                                     ; preds = %bb.d
  %i.o = fmul nnan double %i.l, %i.n              ; 2 uses
  %i.p = fcmp ult double %i.b, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader85
  %i.q = select i1 %.not.i.not, i32 12, i32 6
  br label %bb.f

.preheader:                                       ; preds = %.lr.ph129
  %i.r = icmp eq i32 %i.t, 0
  br i1 %i.r, label %.loopexit84, label %.lr.ph129, !llvm.loop !23

.lr.ph129:                                        ; preds = %.preheader.preheader, %.preheader
  %.06895128 = phi double [ %i.s, %.preheader ], [ %i.b, %.preheader.preheader ]
  %.06496127 = phi i32 [ %i.t, %.preheader ], [ %i.d, %.preheader.preheader ]
  %i.s = fmul double %i.n, %.06895128             ; 3 uses
  %i.t = add nsw i32 %.06496127, -1               ; 3 uses
  %i.u = fcmp olt double %i.s, %i.l
  br i1 %i.u, label %.preheader, label %.loopexit, !llvm.loop !23

bb.e:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %i.x, %i.q
  br i1 %i.v, label %.loopexit84, label %bb.f, !llvm.loop !24

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.16992126 = phi double [ %i.b, %.lr.ph ], [ %i.w, %bb.e ]
  %.16593125 = phi i32 [ %i.d, %.lr.ph ], [ %i.x, %bb.e ]
  %i.w = fdiv double %.16992126, %i.n             ; 3 uses
  %i.x = add i32 %.16593125, 1                    ; 3 uses
  %i.y = fcmp ult double %i.w, %i.o
  br i1 %i.y, label %.loopexit, label %bb.e, !llvm.loop !24

.loopexit84:                                      ; preds = %bb.e, %.preheader, %.preheader.preheader
  %i.z = add i32 %4, 1
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.a, ptr noundef nonnull @.str.2, i32 noundef %i.z, double noundef %1)
  br label %truncate_numeric_strbuf.exit

.loopexit:                                        ; preds = %bb.f, %.lr.ph129, %.preheader85, %bb.c
  %.371.ph = phi double [ %i.b, %bb.c ], [ %i.s, %.lr.ph129 ], [ %i.b, %.preheader85 ], [ %i.w, %bb.f ]
  %.3.ph = phi i32 [ %i.d, %bb.c ], [ %i.t, %.lr.ph129 ], [ %i.d, %.preheader85 ], [ %i.x, %bb.f ] ; 3 uses
  %i.aa = icmp eq i32 %.3.ph, %i.d                ; 2 uses
  %i.ab = tail call double @llvm.copysign.f64(double %.371.ph, double %1)
  %i.ac = load ptr, ptr @thousands_grouping_fmt_flt, align 8
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.a, ptr noundef %i.ac, i32 noundef %4, double noundef %i.ab)
  %i.ad = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.a) ; 2 uses
  %i.ae = load ptr, ptr @decimal_point, align 8   ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.ag = tail call ptr @localeconv() #24
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.ah, ptr @decimal_point, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.ai = phi ptr [ %i.ah, %bb.g ], [ %i.ae, %.loopexit ]
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %i.ak = sext i8 %i.aj to i32
  %i.al = tail call ptr @strchr(ptr noundef %i.ad, i32 noundef %i.ak) #25 ; 4 uses
  %.not.i74 = icmp eq ptr %i.al, null
  br i1 %.not.i74, label %truncate_numeric_strbuf.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.am = icmp sgt i32 %4, -1
  br i1 %i.am, label %.lr.ph.preheader.i, label %._crit_edge.i.preheader

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %narrow.i = add nuw i32 %4, 1
  %i.an = zext i32 %narrow.i to i64
  %scevgep.i = getelementptr i8, ptr %i.al, i64 %i.an
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.020.i = phi i32 [ %i.aq, %bb.i ], [ %4, %.lr.ph.preheader.i ] ; 2 uses
  %.01519.i = phi ptr [ %i.ar, %bb.i ], [ %i.al, %.lr.ph.preheader.i ] ; 3 uses
  %i.ao = load i8, ptr %.01519.i, align 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %._crit_edge.i.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.aq = add nsw i32 %.020.i, -1
  %i.ar = getelementptr i8, ptr %.01519.i, i64 1
  %i.as = icmp sgt i32 %.020.i, 0
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i.preheader, !llvm.loop !25

._crit_edge.i.preheader:                          ; preds = %bb.i, %.lr.ph.i, %.preheader.i
  %.015.pn.i.ph = phi ptr [ %i.al, %.preheader.i ], [ %.01519.i, %.lr.ph.i ], [ %scevgep.i, %bb.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %.015.pn.i = phi ptr [ %.1.i, %._crit_edge.i ], [ %.015.pn.i.ph, %._crit_edge.i.preheader ] ; 2 uses
  %.1.i = getelementptr i8, ptr %.015.pn.i, i64 -1 ; 3 uses
  %i.at = load i8, ptr %.1.i, align 1             ; 2 uses
  %i.au = icmp eq i8 %i.at, 48
  br i1 %i.au, label %._crit_edge.i, label %bb.j, !llvm.loop !26

bb.j:                                             ; preds = %._crit_edge.i
  %.not18.i = icmp eq i8 %i.at, %i.aj
  %spec.select.i = select i1 %.not18.i, ptr %.1.i, ptr %.015.pn.i
  %i.av = ptrtoint ptr %spec.select.i to i64
  %i.aw = ptrtoint ptr %i.ad to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @wmem_strbuf_truncate(ptr noundef %i.a, i64 noundef %i.ax)
  br label %truncate_numeric_strbuf.exit

truncate_numeric_strbuf.exit:                     ; preds = %bb.j, %bb.h, %.loopexit84
  %.171 = phi i1 [ false, %.loopexit84 ], [ %i.aa, %bb.h ], [ %i.aa, %bb.j ] ; 11 uses
  %.4 = phi i32 [ %i.d, %.loopexit84 ], [ %.3.ph, %bb.h ], [ %.3.ph, %bb.j ]
  %i.ay = select i1 %.not.i.not, ptr @prefix_parameters_for_flags.si_prefixes, ptr @prefix_parameters_for_flags.iec_prefixes
  %i.az = sext i32 %.4 to i64
  %i.ba = getelementptr [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef %i.bb)
  switch i32 %2, label %bb.v [
    i32 0, label %bb.w
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
    i32 8, label %bb.r
    i32 9, label %bb.s
    i32 10, label %bb.t
    i32 11, label %bb.u
  ]

bb.k:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bc = select i1 %.171, ptr @.str.3, ptr @.str.4
  br label %.sink.split

bb.l:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bd = select i1 %.171, ptr @.str.5, ptr @.str.6
  br label %.sink.split

bb.m:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.be = select i1 %.171, ptr @.str.7, ptr @.str.8
  br label %.sink.split

bb.n:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bf = select i1 %.171, ptr @.str.9, ptr @.str.10
  br label %.sink.split

bb.o:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bg = select i1 %.171, ptr @.str.11, ptr @.str.12
  br label %.sink.split

bb.p:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bh = select i1 %.171, ptr @.str.13, ptr @.str.14
  br label %.sink.split

bb.q:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bi = select i1 %.171, ptr @.str.15, ptr @.str.16
  br label %.sink.split

bb.r:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bj = select i1 %.171, ptr @.str.17, ptr @.str.18
  br label %.sink.split

bb.s:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bk = select i1 %.171, ptr @.str.19, ptr @.str.20
  br label %.sink.split

bb.t:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bl = select i1 %.171, ptr @.str.21, ptr @.str.22
  br label %.sink.split

bb.u:                                             ; preds = %truncate_numeric_strbuf.exit
  %i.bm = select i1 %.171, ptr @.str.23, ptr @.str.24
  br label %.sink.split

bb.v:                                             ; preds = %truncate_numeric_strbuf.exit
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull @.str.25, i64 noundef 604, ptr noundef nonnull @__func__.format_units, ptr noundef nonnull @.str.26) #28
  unreachable

.sink.split:                                      ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.sink = phi ptr [ %i.bm, %bb.u ], [ %i.bl, %bb.t ], [ %i.bk, %bb.s ], [ %i.bj, %bb.r ], [ %i.bi, %bb.q ], [ %i.bh, %bb.p ], [ %i.bg, %bb.o ], [ %i.bf, %bb.n ], [ %i.be, %bb.m ], [ %i.bd, %bb.l ], [ %i.bc, %bb.k ]
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef nonnull %.sink)
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %truncate_numeric_strbuf.exit
  %i.bn = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.a)
  %i.bo = tail call ptr @g_strchomp(ptr noundef %i.bn)
  ret ptr %i.bo
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #13

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_finalize(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_strchomp(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @format_size_wmem(ptr noundef %0, i64 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_strbuf_new(ptr noundef %0, ptr noundef null) ; 4 uses
  %i.b = and i16 %3, 2
  %.not.i = icmp eq i16 %i.b, 0                   ; 4 uses
  %i.c = load ptr, ptr @thousands_grouping_fmt, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @wmem_strbuf_new(ptr noundef null, ptr noundef null) ; 3 uses
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.e, ptr noundef nonnull @.str.47, i32 noundef 22)
  %i.f = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.e)
  %i.g = tail call i32 @g_strcmp0(ptr noundef %i.f, ptr noundef nonnull @.str.48)
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %.str.49..str.51.i = select i1 %i.h, ptr @.str.49, ptr @.str.51
  %.str.50..str.52.i = select i1 %i.h, ptr @.str.50, ptr @.str.52
  store ptr %.str.49..str.51.i, ptr @thousands_grouping_fmt, align 8
  store ptr %.str.50..str.52.i, ptr @thousands_grouping_fmt_flt, align 8
  tail call void @wmem_strbuf_destroy(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = select i1 %.not.i, i32 6, i32 0          ; 3 uses
  %i.j = select i1 %.not.i, i32 1000, i32 1024    ; 2 uses
  %i.k = mul nuw nsw i32 %i.j, 10
  %i.l = zext nneg i32 %i.k to i64
  %i.m = zext nneg i32 %i.j to i64
  %i.n = select i1 %.not.i, i32 13, i32 7         ; 3 uses
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  %i.p = or disjoint i32 %i.i, 1                  ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = udiv i64 9223372036854775807, %i.l
  br label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %i.s = add nuw nsw i32 %i.u, 1                  ; 2 uses
  %i.t = icmp samesign ult i32 %i.s, %i.n
  br i1 %i.t, label %.lr.ph, label %.critedge, !llvm.loop !27

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.u = phi i32 [ %i.s, %bb.d ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %.052 = phi i64 [ %i.w, %bb.d ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.04551 = phi i32 [ %i.u, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.v = icmp slt i64 %.052, %i.r
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.w = mul i64 %.052, %i.m                      ; 3 uses
  %i.x = mul i64 %i.w, 10
  %.not = icmp slt i64 %1, %i.x
  br i1 %.not, label %..critedge_crit_edge57, label %bb.d, !llvm.loop !27

..critedge_crit_edge57:                           ; preds = %bb.e
  br label %.critedge, !llvm.loop !27

.critedge:                                        ; preds = %bb.d, %.lr.ph, %..critedge_crit_edge57, %bb.c
  %.0.lcssa = phi i64 [ 1, %bb.c ], [ %.052, %..critedge_crit_edge57 ], [ %i.w, %bb.d ], [ %.052, %.lr.ph ]
  %.045.lcssa = phi i32 [ %i.o, %bb.c ], [ %.04551, %..critedge_crit_edge57 ], [ %i.o, %bb.d ], [ %.04551, %.lr.ph ] ; 2 uses
  %i.y = load ptr, ptr @thousands_grouping_fmt, align 8
  %i.z = sdiv i64 %1, %.0.lcssa
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.a, ptr noundef %i.y, i64 noundef %i.z)
  %i.aa = select i1 %.not.i, ptr @prefix_parameters_for_flags.si_prefixes, ptr @prefix_parameters_for_flags.iec_prefixes
  %i.ab = sext i32 %.045.lcssa to i64
  %i.ac = getelementptr [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef %i.ad)
  %i.ae = icmp eq i32 %.045.lcssa, %i.i           ; 11 uses
  switch i32 %2, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 11, label %bb.p
  ]

bb.f:                                             ; preds = %.critedge
  %i.af = select i1 %i.ae, ptr @.str.3, ptr @.str.4
  br label %.sink.split

bb.g:                                             ; preds = %.critedge
  %i.ag = select i1 %i.ae, ptr @.str.5, ptr @.str.6
  br label %.sink.split

bb.h:                                             ; preds = %.critedge
  %i.ah = select i1 %i.ae, ptr @.str.7, ptr @.str.8
  br label %.sink.split

bb.i:                                             ; preds = %.critedge
  %i.ai = select i1 %i.ae, ptr @.str.9, ptr @.str.10
  br label %.sink.split

bb.j:                                             ; preds = %.critedge
  %i.aj = select i1 %i.ae, ptr @.str.11, ptr @.str.12
  br label %.sink.split

bb.k:                                             ; preds = %.critedge
  %i.ak = select i1 %i.ae, ptr @.str.13, ptr @.str.14
  br label %.sink.split

bb.l:                                             ; preds = %.critedge
  %i.al = select i1 %i.ae, ptr @.str.15, ptr @.str.16
  br label %.sink.split

bb.m:                                             ; preds = %.critedge
  %i.am = select i1 %i.ae, ptr @.str.17, ptr @.str.18
  br label %.sink.split

bb.n:                                             ; preds = %.critedge
  %i.an = select i1 %i.ae, ptr @.str.19, ptr @.str.20
  br label %.sink.split

bb.o:                                             ; preds = %.critedge
  %i.ao = select i1 %i.ae, ptr @.str.21, ptr @.str.22
  br label %.sink.split

bb.p:                                             ; preds = %.critedge
  %i.ap = select i1 %i.ae, ptr @.str.23, ptr @.str.24
  br label %.sink.split

bb.q:                                             ; preds = %.critedge
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull @.str.25, i64 noundef 689, ptr noundef nonnull @__func__.format_size_wmem, ptr noundef nonnull @.str.26) #28
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink = phi ptr [ %i.ap, %bb.p ], [ %i.ao, %bb.o ], [ %i.an, %bb.n ], [ %i.am, %bb.m ], [ %i.al, %bb.l ], [ %i.ak, %bb.k ], [ %i.aj, %bb.j ], [ %i.ai, %bb.i ], [ %i.ah, %bb.h ], [ %i.ag, %bb.g ], [ %i.af, %bb.f ]
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef nonnull %.sink)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.critedge
  %i.aq = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.a)
  %i.ar = tail call ptr @g_strchomp(ptr noundef %i.aq)
  ret ptr %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define signext i8 @printable_char_or_period(i8 noundef signext %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr @g_ascii_table, align 8
  %i.b = zext i8 %0 to i64
  %i.c = getelementptr [2 x i8], ptr %i.a, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 64
  %.not = icmp eq i16 %i.e, 0
  %i.f = select i1 %.not, i8 46, i8 %0
end_hunk_0
begin_hunk_1_@ws_escape_csv:bb.a

bb.ah:                                            ; preds = %bb.ag
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext %3)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i13 = icmp eq i64 %i.a, 0
  br i1 %.not.i13, label %._crit_edge.i19, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.ai
  br i1 %i.d, label %.lr.ph.split.i20, label %.lr.ph.split.us.i15

.lr.ph.split.us.i15:                              ; preds = %.lr.ph.i14, %escape_null.exit38
  %.058.us.i16 = phi i64 [ %i.s, %escape_null.exit38 ], [ 0, %.lr.ph.i14 ] ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 %.058.us.i16
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.aj, label %escape_null.exit38

bb.aj:                                            ; preds = %.lr.ph.split.us.i15
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext 92)
  br label %escape_null.exit38

escape_null.exit38:                               ; preds = %.lr.ph.split.us.i15, %bb.aj
  %.sink.i17 = phi i8 [ 48, %bb.aj ], [ %i.q, %.lr.ph.split.us.i15 ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext %.sink.i17)
  %i.s = add nuw i64 %.058.us.i16, 1              ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %i.s, %i.a
  br i1 %exitcond.not.i18, label %._crit_edge.i19, label %.lr.ph.split.us.i15, !llvm.loop !28

.lr.ph.split.i20:                                 ; preds = %.lr.ph.i14
  br i1 %4, label %.lr.ph.split.split.us.i26, label %.lr.ph.split.split.i21

.lr.ph.split.split.us.i26:                        ; preds = %.lr.ph.split.i20, %bb.ak
  %.058.us59.i27 = phi i64 [ %i.x, %bb.ak ], [ 0, %.lr.ph.split.i20 ] ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %.058.us59.i27
  %i.u = load i8, ptr %i.t, align 1               ; 3 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %.sink.split99, label %escape_null.exit37

escape_null.exit37:                               ; preds = %.lr.ph.split.split.us.i26
  %i.w = icmp eq i8 %i.u, %3
  br i1 %i.w, label %.sink.split99, label %bb.ak

.sink.split99:                                    ; preds = %.lr.ph.split.split.us.i26, %escape_null.exit37
  %.sink100 = phi i8 [ %3, %escape_null.exit37 ], [ 92, %.lr.ph.split.split.us.i26 ]
  %.sink76.i28.ph = phi i8 [ %3, %escape_null.exit37 ], [ 48, %.lr.ph.split.split.us.i26 ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext %.sink100)
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split99, %escape_null.exit37
  %.sink76.i28 = phi i8 [ %i.u, %escape_null.exit37 ], [ %.sink76.i28.ph, %.sink.split99 ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext %.sink76.i28)
  %i.x = add nuw i64 %.058.us59.i27, 1            ; 2 uses
  %exitcond66.not.i29 = icmp eq i64 %i.x, %i.a
  br i1 %exitcond66.not.i29, label %._crit_edge.i19, label %.lr.ph.split.split.us.i26, !llvm.loop !28

.lr.ph.split.split.i21:                           ; preds = %.lr.ph.split.i20, %bb.am
  %.058.i22 = phi i64 [ %i.ac, %bb.am ], [ 0, %.lr.ph.split.i20 ] ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %.058.i22
  %i.z = load i8, ptr %i.y, align 1               ; 4 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.sink.split101, label %escape_null.exit

escape_null.exit:                                 ; preds = %.lr.ph.split.split.i21
  %i.ab = icmp eq i8 %i.z, %3
  br i1 %i.ab, label %.sink.split101, label %bb.al

bb.al:                                            ; preds = %escape_null.exit
  %.not62.i23 = icmp eq i8 %i.z, 92
  br i1 %.not62.i23, label %.sink.split101, label %bb.am

.sink.split101:                                   ; preds = %bb.al, %escape_null.exit, %.lr.ph.split.split.i21
  %.sink77.i24.ph = phi i8 [ 48, %.lr.ph.split.split.i21 ], [ %3, %escape_null.exit ], [ 92, %bb.al ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext 92)
  br label %bb.am

bb.am:                                            ; preds = %.sink.split101, %bb.al
  %.sink77.i24 = phi i8 [ %i.z, %bb.al ], [ %.sink77.i24.ph, %.sink.split101 ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext %.sink77.i24)
  %i.ac = add nuw i64 %.058.i22, 1                ; 2 uses
  %exitcond65.not.i25 = icmp eq i64 %i.ac, %i.a
  br i1 %exitcond65.not.i25, label %._crit_edge.i19, label %.lr.ph.split.split.i21, !llvm.loop !28

._crit_edge.i19:                                  ; preds = %escape_null.exit38, %bb.am, %bb.ak, %bb.ai
  br i1 %or.cond.i, label %escape_string_len.exit.sink.split, label %escape_string_len.exit

escape_string_len.exit.sink.split:                ; preds = %._crit_edge.i19, %._crit_edge.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext %3)
  br label %escape_string_len.exit

escape_string_len.exit:                           ; preds = %escape_string_len.exit.sink.split, %._crit_edge.i19, %._crit_edge.i
  %i.ad = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.c)
  ret ptr %i.ad
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @ws_strerrorname_r(i32 noundef %0, ptr noundef returned %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strerrorname_np(i32 noundef %0) #24 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @g_strlcpy(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %2) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef %2, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.27, i32 noundef %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @strerrorname_np(i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @ws_strdup_underline(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1
  %i.c = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %i.b) ; 4 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext 94)
  %i.d = icmp ugt i64 %2, 1
  br i1 %i.d, label %.lr.ph20, label %._crit_edge21

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01417 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.b ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext 32)
  %i.e = add i32 %.01417, 1                       ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp sgt i64 %1, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge21:                                    ; preds = %.lr.ph20, %._crit_edge
  %i.h = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.c)
  br label %bb.c

.lr.ph20:                                         ; preds = %._crit_edge, %.lr.ph20
  %.018 = phi i64 [ %i.i, %.lr.ph20 ], [ %2, %._crit_edge ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext 126)
  %i.i = add i64 %.018, -1                        ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.lr.ph20, label %._crit_edge21, !llvm.loop !30

bb.c:                                             ; preds = %bb.a, %._crit_edge21
  %.015 = phi ptr [ %i.h, %._crit_edge21 ], [ null, %bb.a ]
  ret ptr %.015
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new_sized(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_c(ptr noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @format_text(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @format_text_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @format_text_internal(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @wmem_alloc(ptr noundef %0, i64 noundef 128) #26 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 %2         ; 7 uses
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %.lr.ph797, label %._crit_edge798.thread

.lr.ph797:                                        ; preds = %bb.a
  %i.d = load ptr, ptr @g_ascii_table, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph797, %bb.dx
  %.0423794 = phi i64 [ 0, %.lr.ph797 ], [ %.2425, %bb.dx ] ; 6 uses
  %.0433793 = phi ptr [ %1, %.lr.ph797 ], [ %.1434, %bb.dx ] ; 2 uses
  %.0435792 = phi i32 [ 0, %.lr.ph797 ], [ %.5, %bb.dx ] ; 4 uses
  %.0440791 = phi i32 [ 128, %.lr.ph797 ], [ %.25, %bb.dx ] ; 6 uses
  %.0447790 = phi ptr [ %i.a, %.lr.ph797 ], [ %.15462, %bb.dx ] ; 8 uses
  %i.e = phi i64 [ 128, %.lr.ph797 ], [ %i.qd, %bb.dx ] ; 3 uses
  %i.f = phi i64 [ 128, %.lr.ph797 ], [ %i.qc, %bb.dx ] ; 3 uses
  %.0465789 = phi ptr [ %1, %.lr.ph797 ], [ %.4469, %bb.dx ] ; 8 uses
  %i.g = getelementptr i8, ptr %.0465789, i64 1   ; 25 uses
  %i.h = load i8, ptr %.0465789, align 1          ; 10 uses
  %i.i = zext i8 %i.h to i32                      ; 6 uses
  %i.j = add i8 %i.h, -32
  %or.cond = icmp ult i8 %i.j, 95
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.0423794, 1
  br label %bb.dx

bb.d:                                             ; preds = %bb.b
  %.not507.a = icmp eq i64 %.0423794, 0
  br i1 %.not507.a, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i32 %.0435792 to i64                ; 6 uses
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = add i64 %i.m, %.0423794                  ; 2 uses
  %i.o = zext i32 %.0440791 to i64
  %.not508.a = icmp ult i64 %i.n, %i.o
  br i1 %.not508.a, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i32 %.0440791, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %.0447790, i64 %i.l
  store i8 0, ptr %i.q, align 1
  br label %.thread581

bb.h:                                             ; preds = %bb.f
  %i.r = shl nuw i32 %.0440791, 1                 ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 4 uses
  %.not509.a = icmp ult i64 %i.n, %i.s
  br i1 %.not509.a, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = add nuw nsw i64 %i.l, 2
  %i.u = sub nsw i64 %i.t, %i.s
  %i.v = add i64 %i.u, %.0423794
  %i.w = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.s, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  %i.z = icmp ugt i64 %i.y, 4294967295
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %bb.j, label %._crit_edge871

._crit_edge871:                                   ; preds = %bb.i
  %i.ab = trunc nuw i64 %i.y to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.0447790, i64 %i.l
  store i8 0, ptr %i.ac, align 1
  br label %.thread581

bb.k:                                             ; preds = %._crit_edge871, %bb.h
  %.pre-phi874 = phi i64 [ %i.y, %._crit_edge871 ], [ %i.s, %bb.h ] ; 3 uses
  %.1441 = phi i32 [ %i.ab, %._crit_edge871 ], [ %i.r, %bb.h ]
  %i.ad = tail call ptr @wmem_realloc(ptr noundef %0, ptr noundef %.0447790, i64 noundef %.pre-phi874) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %i.ae = phi i64 [ %.pre-phi874, %bb.k ], [ %i.f, %bb.e ]
  %i.af = phi i64 [ %.pre-phi874, %bb.k ], [ %i.e, %bb.e ] ; 2 uses
  %.1448 = phi ptr [ %i.ad, %bb.k ], [ %.0447790, %bb.e ] ; 2 uses
  %.2442 = phi i32 [ %.1441, %bb.k ], [ %.0440791, %bb.e ]
  %i.ag = getelementptr i8, ptr %.1448, i64 %i.l
  %i.ah = tail call i64 @llvm.usub.sat.i64(i64 %i.af, i64 %i.l)
  %i.ai = tail call ptr @__memcpy_chk(ptr noundef %i.ag, ptr noundef %.0433793, i64 noundef range(i64 1, 0) %.0423794, i64 noundef %i.ah) #24, !alias.scope !31 ; 0 uses
  %i.aj = trunc i64 %.0423794 to i32
  %i.ak = add i32 %.0435792, %i.aj
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %i.al = phi i64 [ %i.ae, %bb.l ], [ %i.f, %bb.d ] ; 7 uses
  %i.am = phi i64 [ %i.af, %bb.l ], [ %i.e, %bb.d ] ; 7 uses
  %.2449 = phi ptr [ %.1448, %bb.l ], [ %.0447790, %bb.d ] ; 42 uses
  %.3443 = phi i32 [ %.2442, %bb.l ], [ %.0440791, %bb.d ] ; 28 uses
  %.1436 = phi i32 [ %i.ak, %bb.l ], [ %.0435792, %bb.d ] ; 73 uses
  br i1 %3, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.an = zext i8 %i.h to i64
  %i.ao = getelementptr [2 x i8], ptr %i.d, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = and i16 %i.ap, 256
  %.not510.a = icmp eq i16 %i.aq, 0
  br i1 %.not510.a, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add i32 %.1436, 2                       ; 2 uses
  %.not532 = icmp ult i32 %i.ar, %.3443
  br i1 %.not532, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = icmp slt i32 %.3443, 0
  %i.at = shl i32 %.3443, 1                       ; 4 uses
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = zext i32 %.1436 to i64
  %i.av = getelementptr i8, ptr %.2449, i64 %i.au
  store i8 0, ptr %i.av, align 1
  br label %.thread581

bb.r:                                             ; preds = %bb.p
  %.not533 = icmp ult i32 %i.ar, %i.at
  br i1 %.not533, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = add i32 %.1436, 3
  %i.ax = sub i32 %i.aw, %i.at
  %i.ay = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.at, i32 %i.ax) ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 1
  %i.ba = extractvalue { i32, i1 } %i.ay, 0
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bb = zext i32 %.1436 to i64
  %i.bc = getelementptr i8, ptr %.2449, i64 %i.bb
  store i8 0, ptr %i.bc, align 1
  br label %.thread581

bb.u:                                             ; preds = %bb.s, %bb.r
  %.4444 = phi i32 [ %i.ba, %bb.s ], [ %i.at, %bb.r ] ; 2 uses
  %i.bd = zext i32 %.4444 to i64                  ; 3 uses
  %i.be = tail call ptr @wmem_realloc(ptr noundef %0, ptr noundef %.2449, i64 noundef %i.bd) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  %i.bf = phi i64 [ %i.bd, %bb.u ], [ %i.al, %bb.o ]
  %i.bg = phi i64 [ %i.bd, %bb.u ], [ %i.am, %bb.o ]
  %.3450 = phi ptr [ %i.be, %bb.u ], [ %.2449, %bb.o ] ; 2 uses
  %.5445 = phi i32 [ %.4444, %bb.u ], [ %.3443, %bb.o ]
  %i.bh = zext i32 %.1436 to i64
  %i.bi = getelementptr i8, ptr %.3450, i64 %i.bh
  store i8 32, ptr %i.bi, align 1
  %i.bj = add i32 %.1436, 1
  br label %bb.dx

bb.w:                                             ; preds = %bb.n, %bb.m
  %i.bk = icmp sgt i8 %i.h, -1
  br i1 %i.bk, label %bb.x, label %bb.au

bb.x:                                             ; preds = %bb.w
  %i.bl = add i32 %.1436, 3                       ; 3 uses
  %.not528.a = icmp ult i32 %i.bl, %.3443
  br i1 %.not528.a, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = icmp slt i32 %.3443, 0
  %i.bn = shl i32 %.3443, 1                       ; 4 uses
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bo = zext i32 %.1436 to i64
  %i.bp = getelementptr i8, ptr %.2449, i64 %i.bo
  store i8 0, ptr %i.bp, align 1
  br label %.thread581

bb.aa:                                            ; preds = %bb.y
  %.not529 = icmp ult i32 %i.bl, %i.bn
  br i1 %.not529, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add i32 %.1436, 4
  %i.br = sub i32 %i.bq, %i.bn
  %i.bs = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bn, i32 %i.br) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  br i1 %i.bt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bv = zext i32 %.1436 to i64
  %i.bw = getelementptr i8, ptr %.2449, i64 %i.bv
  store i8 0, ptr %i.bw, align 1
  br label %.thread581

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.6446 = phi i32 [ %i.bu, %bb.ab ], [ %i.bn, %bb.aa ] ; 2 uses
  %i.bx = zext i32 %.6446 to i64                  ; 3 uses
  %i.by = tail call ptr @wmem_realloc(ptr noundef %0, ptr noundef %.2449, i64 noundef %i.bx) #29
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.x
  %i.bz = phi i64 [ %i.bx, %bb.ad ], [ %i.al, %bb.x ] ; 8 uses
  %i.ca = phi i64 [ %i.bx, %bb.ad ], [ %i.am, %bb.x ] ; 8 uses
  %.4451 = phi ptr [ %i.by, %bb.ad ], [ %.2449, %bb.x ] ; 21 uses
  %.7 = phi i32 [ %.6446, %bb.ad ], [ %.3443, %bb.x ] ; 11 uses
  %i.cb = zext i32 %.1436 to i64
  %i.cc = getelementptr i8, ptr %.4451, i64 %i.cb
  store i8 92, ptr %i.cc, align 1
  %i.cd = add i32 %.1436, 1                       ; 10 uses
  switch i8 %i.h, label %bb.am [
    i8 7, label %bb.af
    i8 8, label %bb.ag
    i8 12, label %bb.ah
    i8 10, label %bb.ai
    i8 13, label %bb.aj
    i8 9, label %bb.ak
    i8 11, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %.4451, i64 %i.ce
  store i8 97, ptr %i.cf, align 1
  %i.cg = add i32 %.1436, 2
  br label %bb.dx

bb.ag:                                            ; preds = %bb.ae
  %i.ch = zext i32 %i.cd to i64
  %i.ci = getelementptr i8, ptr %.4451, i64 %i.ch
  store i8 98, ptr %i.ci, align 1
  %i.cj = add i32 %.1436, 2
  br label %bb.dx

bb.ah:                                            ; preds = %bb.ae
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr i8, ptr %.4451, i64 %i.ck
  store i8 102, ptr %i.cl, align 1
  %i.cm = add i32 %.1436, 2
  br label %bb.dx

bb.ai:                                            ; preds = %bb.ae
  %i.cn = zext i32 %i.cd to i64
  %i.co = getelementptr i8, ptr %.4451, i64 %i.cn
  store i8 110, ptr %i.co, align 1
  %i.cp = add i32 %.1436, 2
  br label %bb.dx

bb.aj:                                            ; preds = %bb.ae
  %i.cq = zext i32 %i.cd to i64
  %i.cr = getelementptr i8, ptr %.4451, i64 %i.cq
  store i8 114, ptr %i.cr, align 1
  %i.cs = add i32 %.1436, 2
  br label %bb.dx

bb.ak:                                            ; preds = %bb.ae
  %i.ct = zext i32 %i.cd to i64
  %i.cu = getelementptr i8, ptr %.4451, i64 %i.ct
  store i8 116, ptr %i.cu, align 1
  %i.cv = add i32 %.1436, 2
  br label %bb.dx

bb.al:                                            ; preds = %bb.ae
  %i.cw = zext i32 %i.cd to i64
  %i.cx = getelementptr i8, ptr %.4451, i64 %i.cw
  store i8 118, ptr %i.cx, align 1
  %i.cy = add i32 %.1436, 2
  br label %bb.dx

bb.am:                                            ; preds = %bb.ae
  %i.cz = add i32 %.1436, 5                       ; 2 uses
  %.not530 = icmp ult i32 %i.cz, %.7
  br i1 %.not530, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.da = icmp slt i32 %.7, 0
  %i.db = shl i32 %.7, 1                          ; 4 uses
  br i1 %i.da, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dc = zext i32 %i.cd to i64
  %i.dd = getelementptr i8, ptr %.4451, i64 %i.dc
  store i8 0, ptr %i.dd, align 1
  br label %.thread581

bb.ap:                                            ; preds = %bb.an
  %.not531 = icmp ult i32 %i.cz, %i.db
  br i1 %.not531, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.de = add i32 %.1436, 6
  %i.df = sub i32 %i.de, %i.db
  %i.dg = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.db, i32 %i.df) ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.dg, 1
  %i.di = extractvalue { i32, i1 } %i.dg, 0
  br i1 %i.dh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dj = zext i32 %i.cd to i64
  %i.dk = getelementptr i8, ptr %.4451, i64 %i.dj
  store i8 0, ptr %i.dk, align 1
  br label %.thread581

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.8 = phi i32 [ %i.di, %bb.aq ], [ %i.db, %bb.ap ] ; 2 uses
  %i.dl = zext i32 %.8 to i64                     ; 3 uses
  %i.dm = tail call ptr @wmem_realloc(ptr noundef %0, ptr noundef %.4451, i64 noundef %i.dl) #29
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.am
  %i.dn = phi i64 [ %i.dl, %bb.as ], [ %i.bz, %bb.am ]
  %i.do = phi i64 [ %i.dl, %bb.as ], [ %i.ca, %bb.am ]
  %.5452 = phi ptr [ %i.dm, %bb.as ], [ %.4451, %bb.am ] ; 4 uses
  %.9 = phi i32 [ %.8, %bb.as ], [ %.7, %bb.am ]
  %i.dp = lshr i8 %i.h, 6
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = zext i32 %i.cd to i64
  %i.ds = getelementptr i8, ptr %.5452, i64 %i.dr
  store i8 %i.dq, ptr %i.ds, align 1
  %i.dt = add i32 %.1436, 2
  %i.du = lshr i8 %i.h, 3
  %i.dv = and i8 %i.du, 7
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = zext i32 %i.dt to i64
  %i.dy = getelementptr i8, ptr %.5452, i64 %i.dx
  store i8 %i.dw, ptr %i.dy, align 1
  %i.dz = and i8 %i.h, 7
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = zext i32 %i.bl to i64
  %i.ec = getelementptr i8, ptr %.5452, i64 %i.eb
  store i8 %i.ea, ptr %i.ec, align 1
  %i.ed = add i32 %.1436, 4
  br label %bb.dx

bb.au:                                            ; preds = %bb.w
  %i.ee = and i32 %i.i, 224
  %i.ef = icmp eq i32 %i.ee, 192                  ; 2 uses
  br i1 %i.ef, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = and i32 %i.i, 240
  %i.eh = icmp eq i32 %i.eg, 224
  br i1 %i.eh, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ei = and i32 %i.i, 248
  %i.ej = icmp eq i32 %i.ei, 240
  br i1 %i.ej, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ek = and i32 %i.i, 252
  %i.el = icmp eq i32 %i.ek, 248
  br i1 %i.el, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.em = and i32 %i.i, 254
  %i.en = icmp eq i32 %i.em, 252
  br i1 %i.en, label %.thread, label %.thread542

.thread:                                          ; preds = %bb.aw, %bb.av, %bb.au, %bb.ax, %bb.ay
  %.0416538 = phi i32 [ 1, %bb.ay ], [ 7, %bb.aw ], [ 15, %bb.av ], [ 31, %bb.au ], [ 3, %bb.ax ]
  %exitcond.not.1 = phi i1 [ false, %bb.ay ], [ false, %bb.aw ], [ true, %bb.av ], [ false, %bb.au ], [ false, %bb.ax ]
  %exitcond.not.2 = phi i1 [ false, %bb.ay ], [ true, %bb.aw ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.ax ]
  %exitcond.not.3 = phi i1 [ false, %bb.ay ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.au ], [ true, %bb.ax ]
  %exitcond.not.4 = phi i1 [ true, %bb.ay ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.ax ]
  %.0420539 = phi i64 [ 5, %bb.ay ], [ 3, %bb.aw ], [ 2, %bb.av ], [ 1, %bb.au ], [ 4, %bb.ax ]
  %i.eo = getelementptr i8, ptr %.0465789, i64 %.0420539
  %scevgep869 = getelementptr i8, ptr %i.eo, i64 1
  %.not5111049 = icmp ult ptr %i.g, %i.b
  br i1 %.not5111049, label %.lr.ph1053, label %._crit_edge1057

.lr.ph1053:                                       ; preds = %.thread
  %4 = and i32 %.0416538, %i.i
  %i.ep = load i8, ptr %i.g, align 1              ; 4 uses
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = and i32 %i.eq, 192
  %.not512.a = icmp eq i32 %i.er, 128
  br i1 %.not512.a, label %bb.bm, label %._crit_edge1057

bb.az:                                            ; preds = %bb.bm
  %i.es = getelementptr i8, ptr %.0465789, i64 2  ; 4 uses
  %.not511.a = icmp ult ptr %i.es, %i.b
  br i1 %.not511.a, label %bb.ba, label %._crit_edge1057

bb.ba:                                            ; preds = %bb.az
  %i.et = load i8, ptr %i.es, align 1             ; 4 uses
  %i.eu = zext i8 %i.et to i32                    ; 2 uses
  %i.ev = and i32 %i.eu, 192
  %.not512.1 = icmp eq i32 %i.ev, 128
  br i1 %.not512.1, label %bb.bb, label %._crit_edge1057

bb.bb:                                            ; preds = %bb.ba
  %i.ew = shl nuw nsw i32 %i.fx, 6
  %i.ex = and i32 %i.eu, 63
  %i.ey = or disjoint i32 %i.ex, %i.ew            ; 2 uses
  br i1 %exitcond.not.1, label %._crit_edge1054, label %bb.bc, !llvm.loop !35

bb.bc:                                            ; preds = %bb.bb
  %i.ez = getelementptr i8, ptr %.0465789, i64 3  ; 4 uses
  %.not511.1 = icmp ult ptr %i.ez, %i.b
  br i1 %.not511.1, label %bb.bd, label %._crit_edge1057

bb.bd:                                            ; preds = %bb.bc
  %i.fa = load i8, ptr %i.ez, align 1             ; 4 uses
  %i.fb = zext i8 %i.fa to i32                    ; 2 uses
  %i.fc = and i32 %i.fb, 192
  %.not512.2 = icmp eq i32 %i.fc, 128
  br i1 %.not512.2, label %bb.be, label %._crit_edge1057

bb.be:                                            ; preds = %bb.bd
  %i.fd = shl nuw nsw i32 %i.ey, 6
  %i.fe = and i32 %i.fb, 63
  %i.ff = or disjoint i32 %i.fe, %i.fd            ; 2 uses
  br i1 %exitcond.not.2, label %._crit_edge1054, label %bb.bf, !llvm.loop !35

bb.bf:                                            ; preds = %bb.be
  %i.fg = getelementptr i8, ptr %.0465789, i64 4  ; 4 uses
  %.not511.2 = icmp ult ptr %i.fg, %i.b
  br i1 %.not511.2, label %bb.bg, label %._crit_edge1057

bb.bg:                                            ; preds = %bb.bf
  %i.fh = load i8, ptr %i.fg, align 1             ; 4 uses
  %i.fi = zext i8 %i.fh to i32                    ; 2 uses
  %i.fj = and i32 %i.fi, 192
  %.not512.3 = icmp eq i32 %i.fj, 128
  br i1 %.not512.3, label %bb.bh, label %._crit_edge1057

bb.bh:                                            ; preds = %bb.bg
  %i.fk = shl i32 %i.ff, 6
  %i.fl = and i32 %i.fi, 63
  %i.fm = or disjoint i32 %i.fl, %i.fk            ; 2 uses
  br i1 %exitcond.not.3, label %._crit_edge1054, label %bb.bi, !llvm.loop !35

bb.bi:                                            ; preds = %bb.bh
  %i.fn = getelementptr i8, ptr %.0465789, i64 5  ; 4 uses
  %.not511.3 = icmp ult ptr %i.fn, %i.b
  br i1 %.not511.3, label %bb.bj, label %._crit_edge1057

bb.bj:                                            ; preds = %bb.bi
  %i.fo = load i8, ptr %i.fn, align 1             ; 4 uses
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = and i32 %i.fp, 192
  %.not512.4 = icmp eq i32 %i.fq, 128
  br i1 %.not512.4, label %bb.bk, label %._crit_edge1057

bb.bk:                                            ; preds = %bb.bj
  %i.fr = shl i32 %i.fm, 6
  %i.fs = and i32 %i.fp, 63
  %i.ft = or disjoint i32 %i.fs, %i.fr
  br i1 %exitcond.not.4, label %._crit_edge1054, label %bb.bl, !llvm.loop !35

bb.bl:                                            ; preds = %bb.bk
  %i.fu = getelementptr i8, ptr %.0465789, i64 6
  br label %._crit_edge1057

bb.bm:                                            ; preds = %.lr.ph1053
  %i.fv = shl nuw nsw i32 %4, 6
  %i.fw = and i32 %i.eq, 63
  %i.fx = or disjoint i32 %i.fw, %i.fv            ; 2 uses
  br i1 %i.ef, label %._crit_edge1054, label %bb.az, !llvm.loop !35

._crit_edge1054:                                  ; preds = %bb.bk, %bb.bh, %bb.be, %bb.bb, %bb.bm
  %.lcssa1066 = phi i8 [ %i.ep, %bb.bm ], [ %i.et, %bb.bb ], [ %i.fa, %bb.be ], [ %i.fh, %bb.bh ], [ %i.fo, %bb.bk ]
  %.lcssa = phi i32 [ %i.fx, %bb.bm ], [ %i.ey, %bb.bb ], [ %i.ff, %bb.be ], [ %i.fm, %bb.bh ], [ %i.ft, %bb.bk ]
  br label %._crit_edge1057, !llvm.loop !35

._crit_edge1057:                                  ; preds = %.lr.ph1053, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.bf, %bb.bg, %bb.bi, %bb.bj, %bb.bl, %._crit_edge1054, %.thread
  %.1466.lcssa = phi ptr [ %scevgep869, %._crit_edge1054 ], [ %i.g, %.thread ], [ %i.es, %bb.az ], [ %i.g, %.lr.ph1053 ], [ %i.es, %bb.ba ], [ %i.ez, %bb.bc ], [ %i.ez, %bb.bd ], [ %i.fg, %bb.bf ], [ %i.fg, %bb.bg ], [ %i.fn, %bb.bi ], [ %i.fn, %bb.bj ], [ %i.fu, %bb.bl ] ; 6 uses
  %.1427.a = phi i8 [ %.lcssa1066, %._crit_edge1054 ], [ %i.h, %.thread ], [ %i.ep, %bb.az ], [ %i.ep, %.lr.ph1053 ], [ %i.et, %bb.ba ], [ %i.et, %bb.bc ], [ %i.fa, %bb.bd ], [ %i.fa, %bb.bf ], [ %i.fh, %bb.bg ], [ %i.fh, %bb.bi ], [ %i.fo, %bb.bj ], [ %i.fo, %bb.bl ]
  %.1 = phi i32 [ %.lcssa, %._crit_edge1054 ], [ 65533, %.thread ], [ 65533, %bb.bl ], [ 65533, %bb.bj ], [ 65533, %bb.bi ], [ 65533, %bb.bg ], [ 65533, %bb.bf ], [ 65533, %bb.bd ], [ 65533, %bb.bc ], [ 65533, %bb.ba ], [ 65533, %bb.az ], [ 65533, %.lr.ph1053 ] ; 6 uses
  %i.fy = tail call i32 @g_unichar_validate(i32 noundef %.1) #27
  %.not513.a = icmp eq i32 %i.fy, 0
  %spec.store.select = select i1 %.not513.a, i32 65533, i32 %.1 ; 8 uses
  %i.fz = tail call i32 @g_unichar_isprint(i32 noundef %spec.store.select) #27
  %.not514.a = icmp eq i32 %i.fz, 0
  br i1 %.not514.a, label %bb.bz, label %bb.bn

.thread542:                                       ; preds = %bb.ay
  %i.ga = tail call i32 @g_unichar_isprint(i32 noundef 65533) #27
  %.not514547 = icmp eq i32 %i.ga, 0
  br i1 %.not514547, label %bb.bz, label %.thread576

bb.bn:                                            ; preds = %._crit_edge1057
  %i.gb = icmp ult i32 %spec.store.select, 128
  br i1 %i.gb, label %.thread576, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gc = icmp ult i32 %spec.store.select, 2048
  br i1 %i.gc, label %.thread576, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = icmp ult i32 %spec.store.select, 65536
  br i1 %i.gd, label %.thread576, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ge = icmp ult i32 %spec.store.select, 2097152
  br i1 %i.ge, label %.thread576, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gf = icmp ult i32 %spec.store.select, 67108864 ; 2 uses
  %.535 = select i1 %i.gf, i32 5, i32 6
  %.536 = select i1 %i.gf, i32 248, i32 252
  br label %.thread576

.thread576:                                       ; preds = %.thread542, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %.2467554566 = phi ptr [ %.1466.lcssa, %bb.bq ], [ %.1466.lcssa, %bb.bn ], [ %.1466.lcssa, %bb.bo ], [ %.1466.lcssa, %bb.bp ], [ %.1466.lcssa, %bb.br ], [ %i.g, %.thread542 ]
  %.2557564 = phi i32 [ %.1, %bb.bq ], [ %.1, %bb.bn ], [ %.1, %bb.bo ], [ %spec.store.select, %bb.bp ], [ %.1, %bb.br ], [ 65533, %.thread542 ] ; 7 uses
  %.1421 = phi i32 [ 4, %bb.bq ], [ 1, %bb.bn ], [ 2, %bb.bo ], [ 3, %bb.bp ], [ %.535, %bb.br ], [ 3, %.thread542 ] ; 13 uses
  %.0414 = phi i32 [ 240, %bb.bq ], [ 0, %bb.bn ], [ 192, %bb.bo ], [ 224, %bb.bp ], [ %.536, %bb.br ], [ 224, %.thread542 ]
  %i.gg = add i32 %.1436, 1
  %i.gh = add i32 %i.gg, %.1421                   ; 2 uses
  %.not526 = icmp ult i32 %i.gh, %.3443
  br i1 %.not526, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %.thread576
  %i.gi = icmp slt i32 %.3443, 0
  %i.gj = shl i32 %.3443, 1                       ; 4 uses
  br i1 %i.gi, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gk = zext i32 %.1436 to i64
  %i.gl = getelementptr i8, ptr %.2449, i64 %i.gk
  store i8 0, ptr %i.gl, align 1
  br label %.thread581

bb.bu:                                            ; preds = %bb.bs
  %.not527 = icmp ult i32 %i.gh, %i.gj
  br i1 %.not527, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gm = add i32 %.1436, 2
  %i.gn = sub i32 %i.gm, %i.gj
  %i.go = add i32 %i.gn, %.1421
  %i.gp = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.gj, i32 %i.go) ; 2 uses
  %i.gq = extractvalue { i32, i1 } %i.gp, 1
  %i.gr = extractvalue { i32, i1 } %i.gp, 0
  br i1 %i.gq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.gs = zext i32 %.1436 to i64
  %i.gt = getelementptr i8, ptr %.2449, i64 %i.gs
  store i8 0, ptr %i.gt, align 1
  br label %.thread581

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %.10 = phi i32 [ %i.gr, %bb.bv ], [ %i.gj, %bb.bu ] ; 2 uses
  %i.gu = zext i32 %.10 to i64                    ; 3 uses
  %i.gv = tail call ptr @wmem_realloc(ptr noundef %0, ptr noundef %.2449, i64 noundef %i.gu) #29
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.thread576
  %i.gw = phi i64 [ %i.gu, %bb.bx ], [ %i.al, %.thread576 ]
  %i.gx = phi i64 [ %i.gu, %bb.bx ], [ %i.am, %.thread576 ]
  %.6453 = phi ptr [ %i.gv, %bb.bx ], [ %.2449, %.thread576 ] ; 6 uses
  %.11 = phi i32 [ %.10, %bb.bx ], [ %.3443, %.thread576 ]
  %i.gy = icmp samesign ugt i32 %.1421, 1
  br i1 %i.gy, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %bb.by
  %.3.lcssa = phi i32 [ %.2557564, %bb.by ], [ %i.hh, %.lr.ph ], [ %i.ho, %.lr.ph.1 ], [ %i.hw, %.lr.ph.2 ], [ %i.id, %.lr.ph.3 ], [ %i.il, %.lr.ph.4 ]
  %i.gz = or i32 %.3.lcssa, %.0414
  %i.ha = trunc i32 %i.gz to i8
  br label %bb.dw

.lr.ph:                                           ; preds = %bb.by
  %indvars.iv.next = add nsw i32 %.1421, -1
  %i.hb = trunc i32 %.2557564 to i8
  %i.hc = and i8 %i.hb, 63
  %i.hd = or disjoint i8 %i.hc, -128
  %i.he = add i32 %.1436, %indvars.iv.next
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr i8, ptr %.6453, i64 %i.hf
  store i8 %i.hd, ptr %i.hg, align 1
  %i.hh = lshr i32 %.2557564, 6                   ; 2 uses
  %.not1131 = icmp eq i32 %.1421, 2
  br i1 %.not1131, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %indvars.iv.next.1 = add nsw i32 %.1421, -2
  %i.hi = trunc i32 %i.hh to i8
  %i.hj = and i8 %i.hi, 63
  %i.hk = or disjoint i8 %i.hj, -128
  %i.hl = add i32 %.1436, %indvars.iv.next.1
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr i8, ptr %.6453, i64 %i.hm
  store i8 %i.hk, ptr %i.hn, align 1
  %i.ho = lshr i32 %.2557564, 12                  ; 2 uses
  %i.hp = icmp samesign ugt i32 %.1421, 3
  br i1 %i.hp, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %indvars.iv.next.2 = add nsw i32 %.1421, -3
  %i.hq = trunc i32 %i.ho to i8
  %i.hr = and i8 %i.hq, 63
  %i.hs = or disjoint i8 %i.hr, -128
  %i.ht = add i32 %.1436, %indvars.iv.next.2
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr i8, ptr %.6453, i64 %i.hu
  store i8 %i.hs, ptr %i.hv, align 1
  %i.hw = lshr i32 %.2557564, 18                  ; 2 uses
  %.not1132 = icmp eq i32 %.1421, 4
  br i1 %.not1132, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %indvars.iv.next.3 = add nsw i32 %.1421, -4
  %i.hx = trunc i32 %i.hw to i8
  %i.hy = and i8 %i.hx, 63
  %i.hz = or disjoint i8 %i.hy, -128
  %i.ia = add i32 %.1436, %indvars.iv.next.3
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %.6453, i64 %i.ib
  store i8 %i.hz, ptr %i.ic, align 1
  %i.id = lshr i32 %.2557564, 24                  ; 2 uses
  %i.ie = icmp samesign ugt i32 %.1421, 5
  br i1 %i.ie, label %.lr.ph.4, label %._crit_edge

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %indvars.iv.next.4 = add nsw i32 %.1421, -5
  %i.if = trunc nuw i32 %i.id to i8
  %i.ig = and i8 %i.if, 63
  %i.ih = or disjoint i8 %i.ig, -128
  %i.ii = add i32 %.1436, %indvars.iv.next.4
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr i8, ptr %.6453, i64 %i.ij
  store i8 %i.ih, ptr %i.ik, align 1
  %i.il = lshr i32 %.2557564, 30
  br label %._crit_edge

bb.bz:                                            ; preds = %.thread542, %._crit_edge1057
  %.2558 = phi i32 [ 65533, %.thread542 ], [ %spec.store.select, %._crit_edge1057 ] ; 14 uses
  %.2428556 = phi i8 [ %i.h, %.thread542 ], [ %.1427.a, %._crit_edge1057 ] ; 5 uses
  %.2467555 = phi ptr [ %i.g, %.thread542 ], [ %.1466.lcssa, %._crit_edge1057 ] ; 12 uses
  br i1 %3, label %bb.ca, label %bb.ci

bb.ca:                                            ; preds = %bb.bz
  %i.im = tail call i32 @g_unichar_isspace(i32 noundef %.2558) #27
  %.not515.a = icmp eq i32 %i.im, 0
  br i1 %.not515.a, label %bb.ci, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.in = add i32 %.1436, 2                       ; 2 uses
  %.not524 = icmp ult i32 %i.in, %.3443
  br i1 %.not524, label %bb.dw, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.io = icmp slt i32 %.3443, 0
  %i.ip = shl i32 %.3443, 1                       ; 4 uses
  br i1 %i.io, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.iq = zext i32 %.1436 to i64
  %i.ir = getelementptr i8, ptr %.2449, i64 %i.iq
  store i8 0, ptr %i.ir, align 1
  br label %.thread581

bb.ce:                                            ; preds = %bb.cc
  %.not525 = icmp ult i32 %i.in, %i.ip
end_hunk_1
