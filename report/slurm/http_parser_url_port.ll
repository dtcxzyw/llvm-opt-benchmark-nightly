Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/http_parser_url_port?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@parse_url:bb.a
  ]

bb.ah:                                            ; preds = %bb.ab
  %i.dx = icmp eq i8 %i.dl, 58
  br i1 %i.dx, label %.thread.i, label %_parse_url_char.exit.thread77

bb.ai:                                            ; preds = %bb.ab
  %i.dy = icmp eq i8 %i.dl, 93
  br i1 %i.dy, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab
  %i.dz = add i8 %i.dl, -48
  %or.cond80.i.i = icmp ult i8 %i.dz, 10
  br i1 %or.cond80.i.i, label %bb.as, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ea = or i8 %i.dl, 32                         ; 2 uses
  %i.eb = icmp ugt i8 %i.ea, 96
  br i1 %i.eb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ec = icmp ult i8 %i.ea, 103
  br i1 %i.ec, label %bb.as, label %bb.an

bb.am:                                            ; preds = %bb.ak
  switch i8 %i.dl, label %bb.an [
    i8 58, label %bb.as
    i8 46, label %bb.as
  ]

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ed = icmp eq i32 %.04379.i, 7
  %i.ee = icmp eq i8 %i.dl, 37
  %or.cond87.i.i = and i1 %i.ed, %i.ee
  br i1 %or.cond87.i.i, label %bb.av, label %_parse_url_char.exit.thread77

bb.ao:                                            ; preds = %bb.ab
  %i.ef = icmp eq i8 %i.dl, 93
  br i1 %i.ef, label %.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ab
  %i.eg = or i8 %i.dl, 32
  %i.eh = add i8 %i.eg, -97
  %or.cond191.i.i = icmp ult i8 %i.eh, 26
  %i.ei = add i8 %i.dl, -48
  %or.cond91.i.i = icmp ult i8 %i.ei, 10
  %or.cond196.i.i = or i1 %or.cond91.i.i, %or.cond191.i.i
  br i1 %or.cond196.i.i, label %bb.av, label %switch.early.test192.i.i

switch.early.test192.i.i:                         ; preds = %bb.ap
  switch i8 %i.dl, label %_parse_url_char.exit.thread77 [
    i8 126, label %bb.av
    i8 95, label %bb.av
    i8 46, label %bb.av
    i8 45, label %bb.av
    i8 37, label %bb.av
  ]

bb.aq:                                            ; preds = %bb.ab, %bb.ab
  %i.ej = add i8 %i.dl, -48
  %or.cond115.i.i = icmp ult i8 %i.ej, 10
  br i1 %or.cond115.i.i, label %bb.aw, label %_parse_url_char.exit.thread77

bb.ar:                                            ; preds = %switch.early.test187.i.i, %switch.early.test187.i.i, %switch.early.test187.i.i, %bb.af
  %i.ek = ptrtoint ptr %.04280.i to i64
  %i.el = sub i64 %i.ek, %i.de
  %i.em = trunc i64 %i.el to i16
  store i16 %i.em, ptr %i.cv, align 2
  br label %.thread75.i

.thread75.i:                                      ; preds = %bb.ar, %switch.early.test189.i.i, %switch.early.test189.i.i, %switch.early.test189.i.i, %bb.ag
  %i.en = add i16 %i.dk, 1                        ; 2 uses
  store i16 %i.en, ptr %i.cy, align 2
  br label %.thread.i

bb.as:                                            ; preds = %bb.am, %bb.am, %bb.al, %bb.aj
  %.not49.i = icmp eq i32 %.04379.i, 7
  br i1 %.not49.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = ptrtoint ptr %.04280.i to i64
  %i.ep = sub i64 %i.eo, %i.de
  %i.eq = trunc i64 %i.ep to i16
  store i16 %i.eq, ptr %i.cv, align 2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.er = add i16 %i.dk, 1                        ; 2 uses
  store i16 %i.er, ptr %i.cy, align 2
  br label %.thread.i

bb.av:                                            ; preds = %switch.early.test192.i.i, %switch.early.test192.i.i, %switch.early.test192.i.i, %switch.early.test192.i.i, %switch.early.test192.i.i, %bb.ap, %bb.an
  %.0.i.ph.ph66.i = phi i32 [ 10, %bb.ap ], [ 9, %bb.an ], [ 10, %switch.early.test192.i.i ], [ 10, %switch.early.test192.i.i ], [ 10, %switch.early.test192.i.i ], [ 10, %switch.early.test192.i.i ], [ 10, %switch.early.test192.i.i ]
  %i.es = add i16 %i.dk, 1                        ; 2 uses
  store i16 %i.es, ptr %i.cy, align 2
  br label %.thread.i

bb.aw:                                            ; preds = %bb.aq
  %.not48.i = icmp eq i32 %.04379.i, 12
  br i1 %.not48.i, label %._crit_edge82.i, label %bb.ax

._crit_edge82.i:                                  ; preds = %bb.aw
  %.pre.i = load i16, ptr %i.dg, align 2
  %i.et = add i16 %.pre.i, 1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.eu = ptrtoint ptr %.04280.i to i64
  %i.ev = sub i64 %i.eu, %i.de
  %i.ew = trunc i64 %i.ev to i16
  store i16 %i.ew, ptr %i.df, align 2
  %i.ex = or i16 %i.dj, 4                         ; 2 uses
  store i16 %i.ex, ptr %3, align 2
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge82.i
  %i.ey = phi i16 [ %i.dj, %._crit_edge82.i ], [ %i.ex, %bb.ax ]
  %i.ez = phi i16 [ %i.et, %._crit_edge82.i ], [ 1, %bb.ax ]
  store i16 %i.ez, ptr %i.dg, align 2
  br label %.thread.i

bb.az:                                            ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.ad
  %.not47.i = icmp eq i32 %.04379.i, 3
  br i1 %.not47.i, label %._crit_edge83.i, label %bb.ba

._crit_edge83.i:                                  ; preds = %bb.az
  %.pre84.i = load i16, ptr %i.di, align 2
  %i.fa = add i16 %.pre84.i, 1
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fb = ptrtoint ptr %.04280.i to i64
  %i.fc = sub i64 %i.fb, %i.de
  %i.fd = trunc i64 %i.fc to i16
  store i16 %i.fd, ptr %i.dh, align 2
  %i.fe = or i16 %i.dj, 64                        ; 2 uses
  store i16 %i.fe, ptr %3, align 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge83.i
  %i.ff = phi i16 [ %i.dj, %._crit_edge83.i ], [ %i.fe, %bb.ba ]
  %i.fg = phi i16 [ %i.fa, %._crit_edge83.i ], [ 1, %bb.ba ]
  store i16 %i.fg, ptr %i.di, align 2
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bb, %bb.ay, %bb.av, %bb.au, %.thread75.i, %bb.ao, %bb.ai, %bb.ah, %switch.early.test189.i.i, %bb.ae, %bb.ac
  %i.fh = phi i16 [ %i.ff, %bb.bb ], [ %i.dj, %.thread75.i ], [ %i.dj, %bb.au ], [ %i.dj, %bb.av ], [ %i.ey, %bb.ay ], [ %i.dj, %bb.ac ], [ %i.dj, %bb.ae ], [ %i.dj, %bb.ao ], [ %i.dj, %bb.ai ], [ %i.dj, %bb.ah ], [ %i.dj, %switch.early.test189.i.i ] ; 2 uses
  %i.fi = phi i16 [ %i.dk, %bb.bb ], [ %i.en, %.thread75.i ], [ %i.er, %bb.au ], [ %i.es, %bb.av ], [ %i.dk, %bb.ay ], [ %i.dk, %bb.ac ], [ %i.dk, %bb.ae ], [ %i.dk, %bb.ao ], [ %i.dk, %bb.ai ], [ %i.dk, %bb.ah ], [ %i.dk, %switch.early.test189.i.i ]
  %.0.i.ph56.i = phi i32 [ 3, %bb.bb ], [ 6, %.thread75.i ], [ 7, %bb.au ], [ %.0.i.ph.ph66.i, %bb.av ], [ 12, %bb.ay ], [ 4, %bb.ac ], [ 5, %bb.ae ], [ 8, %bb.ao ], [ 8, %bb.ai ], [ 11, %bb.ah ], [ 11, %switch.early.test189.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.04280.i, i64 1 ; 2 uses
  %i.fk = icmp ult ptr %i.fj, %i.dd
  br i1 %i.fk, label %bb.ab, label %._crit_edge.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %.thread.i, %bb.aa
  %i.fl = phi i16 [ %i.cs, %bb.aa ], [ %i.fh, %.thread.i ]
  %.043.lcssa.i = phi i32 [ %i.db, %bb.aa ], [ %.0.i.ph56.i, %.thread.i ]
  %switch.tableidx = add i32 %.043.lcssa.i, -2    ; 2 uses
  %i.fm = icmp ult i32 %switch.tableidx, 10
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 943, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond173 = select i1 %i.fm, i1 %switch.lobit, i1 false
  br i1 %or.cond173, label %_parse_url_char.exit.thread77, label %_parse_host.exit

default.unreachable.i:                            ; preds = %bb.ab
  unreachable

_parse_host.exit:                                 ; preds = %._crit_edge.i, %bb.z
  %i.fn = phi i16 [ %i.fl, %._crit_edge.i ], [ %i.cs, %bb.z ] ; 2 uses
  br i1 %.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_parse_host.exit
  %.not66 = icmp eq i16 %i.fn, 6
  br i1 %.not66, label %.thread, label %_parse_url_char.exit.thread77

bb.bd:                                            ; preds = %_parse_host.exit
  %i.fo = and i16 %i.fn, 4
  %.not67 = icmp eq i16 %i.fo, 0
  br i1 %.not67, label %_parse_url_char.exit.thread77, label %.thread

.thread:                                          ; preds = %bb.bc, %bb.bd
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.fs = load i16, ptr %i.fr, align 2            ; 2 uses
  %i.ft = zext i16 %i.fq to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ft ; 2 uses
  %i.fv = zext i16 %i.fs to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  %.not68114.not = icmp eq i16 %i.fs, 0
  br i1 %.not68114.not, label %._crit_edge119, label %.lr.ph118

bb.be:                                            ; preds = %.lr.ph118
  %i.fx = getelementptr inbounds nuw i8, ptr %.051115, i64 1 ; 2 uses
  %.not68 = icmp ult ptr %i.fx, %i.fw
  br i1 %.not68, label %.lr.ph118, label %._crit_edge119.loopexit, !llvm.loop !10

.lr.ph118:                                        ; preds = %.thread, %bb.be
  %.0116 = phi i64 [ %i.gc, %bb.be ], [ 0, %.thread ]
  %.051115 = phi ptr [ %i.fx, %bb.be ], [ %i.fu, %.thread ] ; 2 uses
  %i.fy = mul nsw i64 %.0116, 10
  %i.fz = load i8, ptr %.051115, align 1
  %i.ga = sext i8 %i.fz to i64
  %i.gb = add nsw i64 %i.fy, -48
  %i.gc = add nsw i64 %i.gb, %i.ga                ; 3 uses
  %i.gd = icmp ugt i64 %i.gc, 65535
  br i1 %i.gd, label %_parse_url_char.exit.thread77, label %bb.be

._crit_edge119.loopexit:                          ; preds = %bb.be
  %i.ge = trunc nuw i64 %i.gc to i16
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge119.loopexit, %.thread
  %.0.lcssa = phi i16 [ 0, %.thread ], [ %i.ge, %._crit_edge119.loopexit ]
  store i16 %.0.lcssa, ptr %i.b, align 2
  br label %_parse_url_char.exit.thread77

default.unreachable:                              ; preds = %bb.h
  unreachable

_parse_url_char.exit.thread77:                    ; preds = %_parse_url_char.exit, %bb.w, %bb.j, %bb.l, %bb.m, %bb.n, %switch.early.test.i, %bb.o, %bb.b, %bb.b, %bb.b, %bb.g, %bb.g, %bb.g, %bb.f, %bb.f, %bb.f, %bb.e, %bb.e, %bb.e, %bb.d, %bb.d, %bb.d, %bb.c, %bb.c, %bb.c, %bb.aq, %switch.early.test192.i.i, %bb.an, %bb.ah, %switch.early.test189.i.i, %switch.early.test187.i.i, %switch.early.test.i.i, %.lr.ph118, %._crit_edge.i, %bb.bd, %._crit_edge119, %bb.bc, %._crit_edge, %bb.a
  %.160 = phi i32 [ 1, %.lr.ph118 ], [ 0, %bb.bd ], [ 1, %bb.a ], [ 1, %bb.aq ], [ 1, %._crit_edge ], [ 1, %._crit_edge.i ], [ 1, %bb.bc ], [ 0, %._crit_edge119 ], [ 1, %switch.early.test.i.i ], [ 1, %switch.early.test187.i.i ], [ 1, %switch.early.test189.i.i ], [ 1, %bb.ah ], [ 1, %bb.an ], [ 1, %switch.early.test192.i.i ], [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.d ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.f ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.g ], [ 1, %bb.g ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.o ], [ 1, %switch.early.test.i ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.j ], [ 1, %bb.w ], [ 1, %_parse_url_char.exit ]
  ret i32 %.160
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !11, !12}
!9 = distinct !{!9, !11, !12}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
