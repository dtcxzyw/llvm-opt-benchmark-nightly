Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/str_util?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@format_units:bb.a
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
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i.preheader, !llvm.loop !26

._crit_edge.i.preheader:                          ; preds = %bb.i, %.lr.ph.i, %.preheader.i
  %.015.pn.i.ph = phi ptr [ %i.al, %.preheader.i ], [ %.01519.i, %.lr.ph.i ], [ %scevgep.i, %bb.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %.015.pn.i = phi ptr [ %.1.i, %._crit_edge.i ], [ %.015.pn.i.ph, %._crit_edge.i.preheader ] ; 2 uses
  %.1.i = getelementptr i8, ptr %.015.pn.i, i64 -1 ; 3 uses
  %i.at = load i8, ptr %.1.i, align 1             ; 2 uses
  %i.au = icmp eq i8 %i.at, 48
  br i1 %i.au, label %._crit_edge.i, label %bb.j, !llvm.loop !27

bb.j:                                             ; preds = %._crit_edge.i
  %.not18.i = icmp eq i8 %i.at, %i.aj
  %spec.select.i = select i1 %.not18.i, ptr %.1.i, ptr %.015.pn.i
  %i.av = ptrtoint ptr %spec.select.i to i64
  %i.aw = ptrtoint ptr %i.ad to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @wmem_strbuf_truncate(ptr noundef %i.a, i64 noundef %i.ax)
  br label %truncate_numeric_strbuf.exit

truncate_numeric_strbuf.exit:                     ; preds = %bb.j, %bb.h, %.loopexit80
  %.171 = phi i1 [ false, %.loopexit80 ], [ %i.aa, %bb.h ], [ %i.aa, %bb.j ] ; 11 uses
  %.4 = phi i32 [ %i.d, %.loopexit80 ], [ %.3.ph, %bb.h ], [ %.3.ph, %bb.j ]
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
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef @.str, i32 noundef 7, ptr noundef @.str.25, i64 noundef 604, ptr noundef @__func__.format_units, ptr noundef @.str.26) #28
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
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.e, ptr noundef @.str.47, i32 noundef 22)
  %i.f = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.e)
  %i.g = tail call i32 @g_strcmp0(ptr noundef %i.f, ptr noundef @.str.48)
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
  %4 = add nsw i32 %i.n, -1                       ; 2 uses
  %i.o = or disjoint i32 %i.i, 1                  ; 2 uses
  %5 = icmp samesign ult i32 %i.o, %i.n
  br i1 %5, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.p = udiv i64 9223372036854775807, %i.l
  br label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %i.q = add nuw nsw i32 %i.r, 1                  ; 2 uses
  %6 = icmp samesign ult i32 %i.q, %i.n
  br i1 %6, label %.lr.ph, label %.critedge, !llvm.loop !28

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.r = phi i32 [ %i.q, %bb.d ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.049 = phi i64 [ %i.t, %bb.d ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.04548 = phi i32 [ %i.r, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.s = icmp slt i64 %.049, %i.p
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.t = mul i64 %.049, %i.m                      ; 3 uses
  %i.u = mul i64 %i.t, 10
  %.not = icmp slt i64 %1, %i.u
  br i1 %.not, label %..critedge_crit_edge54, label %bb.d, !llvm.loop !28

..critedge_crit_edge54:                           ; preds = %bb.e
  br label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %bb.d, %.lr.ph, %..critedge_crit_edge54, %bb.c
  %.0.lcssa = phi i64 [ 1, %bb.c ], [ %.049, %..critedge_crit_edge54 ], [ %i.t, %bb.d ], [ %.049, %.lr.ph ]
  %.045.lcssa = phi i32 [ %4, %bb.c ], [ %.04548, %..critedge_crit_edge54 ], [ %4, %bb.d ], [ %.04548, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr @thousands_grouping_fmt, align 8
  %i.w = sdiv i64 %1, %.0.lcssa
  tail call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.a, ptr noundef %i.v, i64 noundef %i.w)
  %i.x = select i1 %.not.i, ptr @prefix_parameters_for_flags.si_prefixes, ptr @prefix_parameters_for_flags.iec_prefixes
  %i.y = sext i32 %.045.lcssa to i64
  %i.z = getelementptr [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef %i.aa)
  %i.ab = icmp eq i32 %.045.lcssa, %i.i           ; 11 uses
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
  %i.ac = select i1 %i.ab, ptr @.str.3, ptr @.str.4
  br label %.sink.split

bb.g:                                             ; preds = %.critedge
  %i.ad = select i1 %i.ab, ptr @.str.5, ptr @.str.6
  br label %.sink.split

bb.h:                                             ; preds = %.critedge
  %i.ae = select i1 %i.ab, ptr @.str.7, ptr @.str.8
  br label %.sink.split

bb.i:                                             ; preds = %.critedge
  %i.af = select i1 %i.ab, ptr @.str.9, ptr @.str.10
  br label %.sink.split

bb.j:                                             ; preds = %.critedge
  %i.ag = select i1 %i.ab, ptr @.str.11, ptr @.str.12
  br label %.sink.split

bb.k:                                             ; preds = %.critedge
  %i.ah = select i1 %i.ab, ptr @.str.13, ptr @.str.14
  br label %.sink.split

bb.l:                                             ; preds = %.critedge
  %i.ai = select i1 %i.ab, ptr @.str.15, ptr @.str.16
  br label %.sink.split

bb.m:                                             ; preds = %.critedge
  %i.aj = select i1 %i.ab, ptr @.str.17, ptr @.str.18
  br label %.sink.split

bb.n:                                             ; preds = %.critedge
  %i.ak = select i1 %i.ab, ptr @.str.19, ptr @.str.20
  br label %.sink.split

bb.o:                                             ; preds = %.critedge
  %i.al = select i1 %i.ab, ptr @.str.21, ptr @.str.22
  br label %.sink.split

bb.p:                                             ; preds = %.critedge
  %i.am = select i1 %i.ab, ptr @.str.23, ptr @.str.24
  br label %.sink.split

bb.q:                                             ; preds = %.critedge
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef @.str, i32 noundef 7, ptr noundef @.str.25, i64 noundef 689, ptr noundef @__func__.format_size_wmem, ptr noundef @.str.26) #28
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink = phi ptr [ %i.am, %bb.p ], [ %i.al, %bb.o ], [ %i.ak, %bb.n ], [ %i.aj, %bb.m ], [ %i.ai, %bb.l ], [ %i.ah, %bb.k ], [ %i.ag, %bb.j ], [ %i.af, %bb.i ], [ %i.ae, %bb.h ], [ %i.ad, %bb.g ], [ %i.ac, %bb.f ]
  tail call void @wmem_strbuf_append(ptr noundef %i.a, ptr noundef nonnull %.sink)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.critedge
  %i.an = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.a)
  %i.ao = tail call ptr @g_strchomp(ptr noundef %i.an)
  ret ptr %i.ao
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
  ret i8 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @ws_escape_string_len(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef readonly %1) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]   ; 4 uses
  %i.d = add i64 %i.c, 2
  %spec.select.i = select i1 %3, i64 %i.d, i64 %i.c
  %i.e = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %spec.select.i) ; 5 uses
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext 34)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %bb.e, %bb.n
  %.058.i = phi i64 [ %i.h, %bb.n ], [ 0, %bb.e ] ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %.058.i
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  switch i8 %i.g, label %bb.n [
    i8 7, label %bb.m
    i8 8, label %.sink.split
    i8 12, label %bb.f
    i8 10, label %bb.g
    i8 13, label %bb.h
    i8 9, label %bb.i
    i8 11, label %bb.j
    i8 92, label %bb.k
    i8 0, label %bb.l
    i8 34, label %bb.k
  ]

bb.f:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.i:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.j:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.k:                                             ; preds = %.lr.ph.split.split.i, %.lr.ph.split.split.i
  br label %.sink.split

bb.l:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

bb.m:                                             ; preds = %.lr.ph.split.split.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.lr.ph.split.split.i
  %.sink77.i.ph = phi i8 [ 98, %.lr.ph.split.split.i ], [ 97, %bb.m ], [ 48, %bb.l ], [ 102, %bb.f ], [ 110, %bb.g ], [ 114, %bb.h ], [ 116, %bb.i ], [ 118, %bb.j ], [ %i.g, %bb.k ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext 92)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %.lr.ph.split.split.i
  %.sink77.i = phi i8 [ %i.g, %.lr.ph.split.split.i ], [ %.sink77.i.ph, %.sink.split ]
  tail call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext %.sink77.i)
  %i.h = add nuw i64 %.058.i, 1                   ; 2 uses
  %exitcond65.not.i = icmp eq i64 %i.h, %i.c
  br i1 %exitcond65.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.n, %bb.e
  br i1 %3, label %bb.o, label %escape_string_len.exit

bb.o:                                             ; preds = %._crit_edge.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext 34)
  br label %escape_string_len.exit

escape_string_len.exit:                           ; preds = %._crit_edge.i, %bb.o
  %i.i = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.e)
  ret ptr %i.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @ws_escape_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef readonly %1) #25 ; 4 uses
  %i.b = add i64 %i.a, 2
  %spec.select.i = select i1 %2, i64 %i.b, i64 %i.a
  %i.c = tail call ptr @wmem_strbuf_new_sized(ptr noundef %0, i64 noundef %spec.select.i) ; 5 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @wmem_strbuf_append_c(ptr noundef %i.c, i8 noundef signext 34)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
