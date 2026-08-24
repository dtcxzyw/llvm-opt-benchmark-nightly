Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/jiff-40853fb6ac434a7c.jiff.3ee8fab6f2ec3df8-cgu.07?download=true
inline.NumInlined: 177
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter35print_posix_time_offset_seconds_wtr:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = load ptr, ptr %i.ce, align 8, !alias.scope !1103, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.pre-phi59
  store i8 58, ptr %i.ci, align 1, !noalias !1103
  %i.cj = add i16 %i.cf, 1
  store i16 %i.cj, ptr %i.cg, align 8, !alias.scope !1103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.ck = load ptr, ptr %1, align 8, !alias.scope !1109, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i16, ptr %i.cl, align 8, !noalias !1109, !noundef !4 ; 2 uses
  %i.cn = zext i16 %i.cm to i64                   ; 2 uses
  %i.co = add nuw nsw i64 %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !1109, !noundef !4 ; 2 uses
  %i.cr = icmp ugt i64 %i.co, %i.cq
  br i1 %i.cr, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread, !prof !41

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit: ; preds = %.thread
  %i.cs = tail call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = extractvalue { i64, ptr } %i.cs, 1
  br i1 %i.cu, label %bb.w, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread_crit_edge

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread_crit_edge: ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit
  %.pre27 = load ptr, ptr %1, align 8, !alias.scope !1106 ; 3 uses
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %.pre27, i64 8
  %.pre29 = load i64, ptr %.phi.trans.insert28, align 8, !alias.scope !1112
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %.pre27, i64 16
  %.pre31 = load i16, ptr %.phi.trans.insert30, align 8, !alias.scope !1112 ; 2 uses
  %.pre44 = zext i16 %.pre31 to i64
  br label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread: ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread_crit_edge, %.thread
  %.pre-phi45 = phi i64 [ %.pre44, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread_crit_edge ], [ %i.cn, %.thread ] ; 2 uses
  %i.cw = phi i16 [ %.pre31, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread_crit_edge ], [ %i.cm, %.thread ]
  %i.cx = phi i64 [ %.pre29, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread_crit_edge ], [ %i.cq, %.thread ]
  %i.cy = phi ptr [ %.pre27, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread_crit_edge ], [ %i.ck, %.thread ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.cz = sub nuw i64 %i.cx, %.pre-phi45
  %i.da = icmp ugt i64 %i.cz, 1
  br i1 %i.da, label %bb.p, label %bb.o, !prof !38

bb.o:                                             ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13, !noalias !1112
  unreachable

bb.p:                                             ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.thread
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load ptr, ptr %i.cy, align 8, !alias.scope !1112, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.pre-phi45 ; 2 uses
  %i.de = shl nuw nsw i32 %i.c, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @5, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !1115, !noundef !4
  store i8 %i.dh, ptr %i.dd, align 1, !noalias !1112
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !1115, !noundef !4
  store i8 %i.dk, ptr %i.di, align 1, !noalias !1112
  %i.dl = add i16 %i.cw, 2
  store i16 %i.dl, ptr %i.db, align 8, !alias.scope !1112
  br i1 %i.bq, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %i.dm = load ptr, ptr %1, align 8, !alias.scope !1116, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !noalias !1116, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i16, ptr %i.dp, align 8, !noalias !1116, !noundef !4 ; 2 uses
  %i.dr = zext i16 %i.dq to i64                   ; 2 uses
  %i.ds = icmp eq i64 %i.do, %i.dr
  br i1 %i.ds, label %bb.r, label %.thread60, !prof !41

bb.r:                                             ; preds = %bb.q
  %i.dt = tail call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.du = extractvalue { i64, ptr } %i.dt, 0
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.pre33 = load ptr, ptr %1, align 8, !alias.scope !1116 ; 3 uses
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %.pre33, i64 8
  %.pre35 = load i64, ptr %.phi.trans.insert34, align 8, !alias.scope !1119
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %.pre33, i64 16
  %.pre37 = load i16, ptr %.phi.trans.insert36, align 8, !alias.scope !1119 ; 2 uses
  %.pre46 = zext i16 %.pre37 to i64               ; 2 uses
  %i.dw = icmp eq i64 %.pre35, %.pre46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  br i1 %i.dw, label %bb.t, label %.thread60, !prof !267

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !1119
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.dx = extractvalue { i64, ptr } %i.dt, 1
  br label %bb.w

.thread60:                                        ; preds = %bb.q, %bb.s
  %i.dy = phi ptr [ %.pre33, %bb.s ], [ %i.dm, %bb.q ] ; 2 uses
  %i.dz = phi i16 [ %.pre37, %bb.s ], [ %i.dq, %bb.q ]
  %.pre-phi4763 = phi i64 [ %.pre46, %bb.s ], [ %i.dr, %bb.q ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load ptr, ptr %i.dy, align 8, !alias.scope !1119, !nonnull !4, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.pre-phi4763
  store i8 58, ptr %i.ec, align 1, !noalias !1119
  %i.ed = add i16 %i.dz, 1
  store i16 %i.ed, ptr %i.ea, align 8, !alias.scope !1119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.ee = load ptr, ptr %1, align 8, !alias.scope !1125, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i16, ptr %i.ef, align 8, !noalias !1125, !noundef !4 ; 2 uses
  %i.eh = zext i16 %i.eg to i64                   ; 2 uses
  %i.ei = add nuw nsw i64 %i.eh, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !1125, !noundef !4 ; 2 uses
  %i.el = icmp ugt i64 %i.ei, %i.ek
  br i1 %i.el, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread, !prof !41

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37: ; preds = %.thread60
  %i.em = tail call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.em, 0
  %i.eo = trunc nuw i64 %i.en to i1
  %i.ep = extractvalue { i64, ptr } %i.em, 1
  br i1 %i.eo, label %bb.w, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread_crit_edge

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread_crit_edge: ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37
  %.pre38 = load ptr, ptr %1, align 8, !alias.scope !1122 ; 3 uses
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %.pre38, i64 8
  %.pre40 = load i64, ptr %.phi.trans.insert39, align 8, !alias.scope !1128
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %.pre38, i64 16
  %.pre42 = load i16, ptr %.phi.trans.insert41, align 8, !alias.scope !1128 ; 2 uses
  %.pre48 = zext i16 %.pre42 to i64
  br label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread: ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread_crit_edge, %.thread60
  %.pre-phi49 = phi i64 [ %.pre48, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread_crit_edge ], [ %i.eh, %.thread60 ] ; 2 uses
  %i.eq = phi i16 [ %.pre42, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread_crit_edge ], [ %i.eg, %.thread60 ]
  %i.er = phi i64 [ %.pre40, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread_crit_edge ], [ %i.ek, %.thread60 ]
  %i.es = phi ptr [ %.pre38, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37._RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread_crit_edge ], [ %i.ee, %.thread60 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.et = sub nuw i64 %i.er, %.pre-phi49
  %i.eu = icmp ugt i64 %i.et, 1
  br i1 %i.eu, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2mEBa_.exit, label %bb.v, !prof !38

bb.v:                                             ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13, !noalias !1128
  unreachable

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2mEBa_.exit: ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ew = load ptr, ptr %i.es, align 8, !alias.scope !1128, !nonnull !4, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.pre-phi49 ; 2 uses
  %i.ey = shl nuw nsw i32 %i.d, 1
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @5, i64 %i.ez ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !noalias !1131, !noundef !4
  store i8 %i.fb, ptr %i.ex, align 1, !noalias !1128
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !noalias !1131, !noundef !4
  store i8 %i.fe, ptr %i.fc, align 1, !noalias !1128
  %i.ff = add i16 %i.eq, 2
  store i16 %i.ff, ptr %i.ev, align 8, !alias.scope !1128
  br label %bb.w

bb.w:                                             ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2mEBa_.exit, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.i, %bb.i, %bb.p, %bb.u, %bb.n
  %.sroa.7.0 = phi ptr [ undef, %bb.i ], [ %i.cv, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit ], [ %i.cd, %bb.n ], [ %i.ag, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.i ], [ %i.dx, %bb.u ], [ undef, %bb.p ], [ undef, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2mEBa_.exit ], [ %i.ep, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37 ]
  %.sroa.0.0 = phi i64 [ 0, %bb.i ], [ 1, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit ], [ 1, %bb.n ], [ 1, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit.i ], [ 1, %bb.u ], [ 0, %bb.p ], [ 0, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2mEBa_.exit ], [ 1, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit37 ]
  %i.fg = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.fh = insertvalue { i64, ptr } %i.fg, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.fh
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, -2147483648) i32 @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter9separator(i32 %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i8 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.46.0.insert.ext = zext nneg i8 %1 to i32
  %.sroa.46.0.insert.shift = shl nuw nsw i32 %.sroa.46.0.insert.ext, 24
  %i.b = and i32 %0, 16777215
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.46.0.insert.shift, %i.b
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter10print_span(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  %i.b = alloca [78 x i8], align 1                ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %0, align 8               ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i8, ptr %i.c, align 4, !range !1135, !alias.scope !1132, !noalias !1136, !noundef !4
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit78.i, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit76.i

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit78.i: ; preds = %bb.a
  store i8 45, ptr %i.b, align 1, !noalias !1138
  br label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit76.i

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit76.i: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit78.i, %bb.a
  %i.f = phi i16 [ 1, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit78.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  store i8 80, ptr %i.h, align 1, !noalias !1141
  %i.i = add nuw nsw i16 %i.f, 1                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load i16, ptr %i.j, align 8, !alias.scope !1132, !noalias !1136, !noundef !4 ; 10 uses
  %i.l = and i16 %i.k, 512
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit76.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.o = load i16, ptr %i.n, align 2, !alias.scope !1132, !noalias !1136, !noundef !4 ; 5 uses
  %i.p = icmp ult i16 %i.o, 10
  br i1 %i.p, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit85.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i16 %i.o, 100
  br i1 %i.q, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit85.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i16 %i.o, 1000
  br i1 %i.r, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit85.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ult i16 %i.o, 10000
  %spec.select.i = select i1 %i.s, i8 4, i8 5
  br label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit85.i

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit85.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i84.i = phi i8 [ %spec.select.i, %bb.e ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ] ; 2 uses
  %i.t = zext nneg i8 %.sroa.0.0.i84.i to i64
  %i.u = zext nneg i16 %i.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u
  br label %.preheader20.i

.preheader20.i:                                   ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit85.i, %.preheader20.i
  %.sroa.0.0.i3323.i = phi i16 [ %i.ab, %.preheader20.i ], [ %i.o, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit85.i ] ; 2 uses
  %.sroa.03.0.i3222.i = phi i64 [ %i.w, %.preheader20.i ], [ %i.t, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit85.i ]
  %i.w = add nsw i64 %.sroa.03.0.i3222.i, -1      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = urem i16 %.sroa.0.0.i3323.i, 10
  %i.z = trunc nuw nsw i16 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  store i8 %i.aa, ptr %i.x, align 1, !noalias !1144
  %i.ab = udiv i16 %.sroa.0.0.i3323.i, 10
  %.not8.i34.i = icmp eq i64 %i.w, 0
  br i1 %.not8.i34.i, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_inttEBa_.exit.i, label %.preheader20.i

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_inttEBa_.exit.i: ; preds = %.preheader20.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1147, !noundef !4 ; 2 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit74.i, label %bb.f, !prof !38

bb.f:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_inttEBa_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1148
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit74.i: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_inttEBa_.exit.i
  %i.af = zext nneg i8 %.sroa.0.0.i84.i to i16
  %i.ag = add nuw nsw i16 %i.i, %i.af             ; 2 uses
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah
  store i8 %i.ad, ptr %i.ai, align 1, !noalias !1148
  %i.aj = add nuw nsw i16 %i.ag, 1
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit74.i, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit76.i
  %.sroa.9.0 = phi i16 [ %i.i, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit76.i ], [ %i.aj, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit74.i ] ; 3 uses
  %i.ak = and i16 %i.k, 256
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !1132, !noalias !1136, !noundef !4 ; 8 uses
  %i.ao = icmp ult i32 %i.an, 10
  br i1 %i.ao, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp ult i32 %i.an, 100
  br i1 %i.ap, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ult i32 %i.an, 1000
  br i1 %i.aq, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp ult i32 %i.an, 10000
  br i1 %i.ar, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i, label %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit.i

_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit.i: ; preds = %bb.k
  %i.as = icmp ugt i32 %i.an, 99999               ; 2 uses
  %i.at = udiv i32 %i.an, 100000
  %.sroa.05.1.i.i = select i1 %i.as, i32 5, i32 0
  %.sroa.0.1.i.i = select i1 %i.as, i32 %i.at, i32 %i.an ; 4 uses
  %i.au = add nuw nsw i32 %.sroa.0.1.i.i, 393206
  %i.av = add nuw nsw i32 %.sroa.0.1.i.i, 524188
  %i.aw = and i32 %i.au, %i.av
  %i.ax = add nuw nsw i32 %.sroa.0.1.i.i, 916504
  %i.ay = add nuw nsw i32 %.sroa.0.1.i.i, 514288
  %i.az = and i32 %i.ax, %i.ay
  %i.ba = xor i32 %i.aw, %i.az
  %i.bb = lshr i32 %i.ba, 17
  %i.bc = add nuw nsw i32 %i.bb, %.sroa.05.1.i.i  ; 2 uses
  %i.bd = icmp samesign ult i32 %i.bc, 20
  tail call void @llvm.assume(i1 %i.bd), !noalias !1151
  %i.be = trunc nuw nsw i32 %i.bc to i8
  %i.bf = add nuw nsw i8 %i.be, 1
  br label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i: ; preds = %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit.i, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i86.i = phi i8 [ %i.bf, %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit.i ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ] ; 2 uses
  %i.bg = zext nneg i8 %.sroa.0.0.i86.i to i64
  %i.bh = zext nneg i16 %.sroa.9.0 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bh
  br label %.preheader19.i

.preheader19.i:                                   ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i, %.preheader19.i
  %.sroa.0.0.i2825.i = phi i32 [ %i.bo, %.preheader19.i ], [ %i.an, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i ] ; 2 uses
  %.sroa.03.0.i2724.i = phi i64 [ %i.bj, %.preheader19.i ], [ %i.bg, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit87.i ]
  %i.bj = add nsw i64 %.sroa.03.0.i2724.i, -1     ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = urem i32 %.sroa.0.0.i2825.i, 10
  %i.bm = trunc nuw nsw i32 %i.bl to i8
  %i.bn = or disjoint i8 %i.bm, 48
  store i8 %i.bn, ptr %i.bk, align 1, !noalias !1154
  %i.bo = udiv i32 %.sroa.0.0.i2825.i, 10
  %.not8.i29.i = icmp eq i64 %i.bj, 0
  br i1 %.not8.i29.i, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit30.i, label %.preheader19.i

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit30.i: ; preds = %.preheader19.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !1147, !noundef !4 ; 2 uses
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit72.i, label %bb.l, !prof !38

bb.l:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit30.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1155
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit72.i: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit30.i
  %i.bs = zext nneg i8 %.sroa.0.0.i86.i to i16
  %i.bt = add nuw nsw i16 %.sroa.9.0, %i.bs       ; 2 uses
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu
  store i8 %i.bq, ptr %i.bv, align 1, !noalias !1155
  %i.bw = add nuw nsw i16 %i.bt, 1
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit72.i, %bb.g
  %.sroa.9.1 = phi i16 [ %.sroa.9.0, %bb.g ], [ %i.bw, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit72.i ] ; 3 uses
  %i.bx = and i16 %i.k, 128
  %i.by = icmp eq i16 %i.bx, 0
  br i1 %i.by, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !1132, !noalias !1136, !noundef !4 ; 8 uses
  %i.cb = icmp ult i32 %i.ca, 10
  br i1 %i.cb, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = icmp ult i32 %i.ca, 100
  br i1 %i.cc, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp ult i32 %i.ca, 1000
  br i1 %i.cd, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = icmp ult i32 %i.ca, 10000
  br i1 %i.ce, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i, label %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit99.i

_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit99.i: ; preds = %bb.q
  %i.cf = icmp ugt i32 %i.ca, 99999               ; 2 uses
  %i.cg = udiv i32 %i.ca, 100000
  %.sroa.05.1.i97.i = select i1 %i.cf, i32 5, i32 0
  %.sroa.0.1.i98.i = select i1 %i.cf, i32 %i.cg, i32 %i.ca ; 4 uses
  %i.ch = add nuw nsw i32 %.sroa.0.1.i98.i, 393206
  %i.ci = add nuw nsw i32 %.sroa.0.1.i98.i, 524188
  %i.cj = and i32 %i.ch, %i.ci
  %i.ck = add nuw nsw i32 %.sroa.0.1.i98.i, 916504
  %i.cl = add nuw nsw i32 %.sroa.0.1.i98.i, 514288
  %i.cm = and i32 %i.ck, %i.cl
  %i.cn = xor i32 %i.cj, %i.cm
  %i.co = lshr i32 %i.cn, 17
  %i.cp = add nuw nsw i32 %i.co, %.sroa.05.1.i97.i ; 2 uses
  %i.cq = icmp samesign ult i32 %i.cp, 20
  tail call void @llvm.assume(i1 %i.cq), !noalias !1158
  %i.cr = trunc nuw nsw i32 %i.cp to i8
  %i.cs = add nuw nsw i8 %i.cr, 1
  br label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i: ; preds = %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit99.i, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0.0.i88.i = phi i8 [ %i.cs, %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit99.i ], [ 1, %bb.n ], [ 2, %bb.o ], [ 3, %bb.p ], [ 4, %bb.q ] ; 2 uses
  %i.ct = zext nneg i8 %.sroa.0.0.i88.i to i64
  %i.cu = zext nneg i16 %.sroa.9.1 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cu
  br label %.preheader18.i

.preheader18.i:                                   ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i, %.preheader18.i
  %.sroa.0.0.i2327.i = phi i32 [ %i.db, %.preheader18.i ], [ %i.ca, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i ] ; 2 uses
  %.sroa.03.0.i2226.i = phi i64 [ %i.cw, %.preheader18.i ], [ %i.ct, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit89.i ]
  %i.cw = add nsw i64 %.sroa.03.0.i2226.i, -1     ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %i.cy = urem i32 %.sroa.0.0.i2327.i, 10
  %i.cz = trunc nuw nsw i32 %i.cy to i8
  %i.da = or disjoint i8 %i.cz, 48
  store i8 %i.da, ptr %i.cx, align 1, !noalias !1161
  %i.db = udiv i32 %.sroa.0.0.i2327.i, 10
  %.not8.i24.i = icmp eq i64 %i.cw, 0
  br i1 %.not8.i24.i, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit25.i, label %.preheader18.i

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit25.i: ; preds = %.preheader18.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.val, i64 7
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !1147, !noundef !4 ; 2 uses
  %i.de = icmp sgt i8 %i.dd, -1
  br i1 %i.de, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit70.i, label %bb.r, !prof !38

bb.r:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit25.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1162
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit70.i: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit25.i
  %i.df = zext nneg i8 %.sroa.0.0.i88.i to i16
  %i.dg = add nuw nsw i16 %.sroa.9.1, %i.df       ; 2 uses
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dh
  store i8 %i.dd, ptr %i.di, align 1, !noalias !1162
  %i.dj = add nuw nsw i16 %i.dg, 1
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit70.i, %bb.m
  %.sroa.9.2 = phi i16 [ %.sroa.9.1, %bb.m ], [ %i.dj, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit70.i ] ; 3 uses
  %i.dk = and i16 %i.k, 64
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !alias.scope !1132, !noalias !1136, !noundef !4 ; 8 uses
  %i.do = icmp ult i32 %i.dn, 10
  br i1 %i.do, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = icmp ult i32 %i.dn, 100
  br i1 %i.dp, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = icmp ult i32 %i.dn, 1000
  br i1 %i.dq, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = icmp ult i32 %i.dn, 10000
  br i1 %i.dr, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i, label %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit103.i

_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit103.i: ; preds = %bb.w
  %i.ds = icmp ugt i32 %i.dn, 99999               ; 2 uses
  %i.dt = udiv i32 %i.dn, 100000
  %.sroa.05.1.i101.i = select i1 %i.ds, i32 5, i32 0
  %.sroa.0.1.i102.i = select i1 %i.ds, i32 %i.dt, i32 %i.dn ; 4 uses
  %i.du = add nuw nsw i32 %.sroa.0.1.i102.i, 393206
  %i.dv = add nuw nsw i32 %.sroa.0.1.i102.i, 524188
  %i.dw = and i32 %i.du, %i.dv
  %i.dx = add nuw nsw i32 %.sroa.0.1.i102.i, 916504
  %i.dy = add nuw nsw i32 %.sroa.0.1.i102.i, 514288
  %i.dz = and i32 %i.dx, %i.dy
  %i.ea = xor i32 %i.dw, %i.dz
  %i.eb = lshr i32 %i.ea, 17
  %i.ec = add nuw nsw i32 %i.eb, %.sroa.05.1.i101.i ; 2 uses
  %i.ed = icmp samesign ult i32 %i.ec, 20
  tail call void @llvm.assume(i1 %i.ed), !noalias !1165
  %i.ee = trunc nuw nsw i32 %i.ec to i8
  %i.ef = add nuw nsw i8 %i.ee, 1
  br label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i: ; preds = %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit103.i, %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i90.i = phi i8 [ %i.ef, %_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl.exit103.i ], [ 1, %bb.t ], [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ] ; 2 uses
  %i.eg = zext nneg i8 %.sroa.0.0.i90.i to i64
  %i.eh = zext nneg i16 %.sroa.9.2 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eh
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i, %.preheader17.i
  %.sroa.0.0.i1829.i = phi i32 [ %i.eo, %.preheader17.i ], [ %i.dn, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i ] ; 2 uses
  %.sroa.03.0.i1728.i = phi i64 [ %i.ej, %.preheader17.i ], [ %i.eg, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit91.i ]
  %i.ej = add nsw i64 %.sroa.03.0.i1728.i, -1     ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.el = urem i32 %.sroa.0.0.i1829.i, 10
  %i.em = trunc nuw nsw i32 %i.el to i8
  %i.en = or disjoint i8 %i.em, 48
  store i8 %i.en, ptr %i.ek, align 1, !noalias !1168
  %i.eo = udiv i32 %.sroa.0.0.i1829.i, 10
  %.not8.i19.i = icmp eq i64 %i.ej, 0
  br i1 %.not8.i19.i, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit20.i, label %.preheader17.i

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit20.i: ; preds = %.preheader17.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.val, i64 6
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !1147, !noundef !4 ; 2 uses
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit68.i, label %bb.x, !prof !38

bb.x:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit20.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1169
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit68.i: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit20.i
  %i.es = zext nneg i8 %.sroa.0.0.i90.i to i16
  %i.et = add nuw nsw i16 %.sroa.9.2, %i.es       ; 2 uses
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eu
  store i8 %i.eq, ptr %i.ev, align 1, !noalias !1169
  %i.ew = add nuw nsw i16 %i.et, 1
  br label %bb.y

bb.y:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit68.i, %bb.s
  %.sroa.9.3 = phi i16 [ %.sroa.9.2, %bb.s ], [ %i.ew, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit68.i ] ; 6 uses
  %i.ex = and i16 %i.k, 63
  %i.ey = icmp eq i16 %i.ex, 0
  br i1 %i.ey, label %bb.z, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit66.i

bb.z:                                             ; preds = %bb.y
  %i.ez = and i16 %i.k, 960
  %i.fa = icmp eq i16 %i.ez, 0
  br i1 %i.fa, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit64.i, label %_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit66.i: ; preds = %bb.y
  %i.fb = zext nneg i16 %.sroa.9.3 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fb
  store i8 84, ptr %i.fc, align 1, !noalias !1172
  %i.fd = add nuw nsw i16 %.sroa.9.3, 1           ; 3 uses
  %i.fe = and i16 %i.k, 32
  %i.ff = icmp eq i16 %i.fe, 0
  br i1 %i.ff, label %bb.ah, label %bb.ab

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit64.i: ; preds = %bb.z
  %i.fg = zext nneg i16 %.sroa.9.3 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fg
  store i8 84, ptr %i.fh, align 1, !noalias !1175
  %4 = zext nneg i16 %.sroa.9.3 to i64
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 %4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 48, ptr %i.fi, align 1, !noalias !1178
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !1147, !noundef !4 ; 2 uses
  %i.fl = icmp sgt i8 %i.fk, -1
  br i1 %i.fl, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit60.i, label %bb.aa, !prof !38

bb.aa:                                            ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit64.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1181
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit60.i: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit64.i
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.fk, ptr %i.fm, align 1, !noalias !1181
  %i.fn = add nuw nsw i16 %.sroa.9.3, 3
  br label %_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit

bb.ab:                                            ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit66.i
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fp = load i32, ptr %i.fo, align 4, !alias.scope !1132, !noalias !1136, !noundef !4 ; 6 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = icmp ult i32 %i.fp, 10
  br i1 %i.fr, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = icmp ult i32 %i.fp, 100
  br i1 %i.fs, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ft = icmp ult i32 %i.fp, 1000
  br i1 %i.ft, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fu = icmp ult i32 %i.fp, 10000
  br i1 %i.fu, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = tail call fastcc noundef i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl(i64 noundef %i.fq), !noalias !1184 ; 2 uses
  %i.fw = icmp samesign ult i32 %i.fv, 20
  tail call void @llvm.assume(i1 %i.fw), !noalias !1184
  %i.fx = trunc nuw nsw i32 %i.fv to i8
  %i.fy = add nuw nsw i8 %i.fx, 1
  br label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sroa.0.0.i92.i = phi i8 [ %i.fy, %bb.af ], [ 1, %bb.ab ], [ 2, %bb.ac ], [ 3, %bb.ad ], [ 4, %bb.ae ] ; 2 uses
  %i.fz = zext nneg i8 %.sroa.0.0.i92.i to i64
  %i.ga = zext nneg i16 %i.fd to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ga
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i, %.preheader16.i
  %.sroa.0.0.i31.i = phi i32 [ %i.gh, %.preheader16.i ], [ %i.fp, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i ] ; 2 uses
  %.sroa.03.0.i30.i = phi i64 [ %i.gc, %.preheader16.i ], [ %i.fz, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit93.i ]
  %i.gc = add nsw i64 %.sroa.03.0.i30.i, -1       ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gc
  %i.ge = urem i32 %.sroa.0.0.i31.i, 10
  %i.gf = trunc nuw nsw i32 %i.ge to i8
  %i.gg = or disjoint i8 %i.gf, 48
  store i8 %i.gg, ptr %i.gd, align 1, !noalias !1187
  %i.gh = udiv i32 %.sroa.0.0.i31.i, 10
  %.not8.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not8.i.i, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit.i, label %.preheader16.i

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit.i: ; preds = %.preheader16.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.val, i64 5
  %i.gj = load i8, ptr %i.gi, align 1, !noalias !1147, !noundef !4 ; 2 uses
  %i.gk = icmp sgt i8 %i.gj, -1
  br i1 %i.gk, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit58.i, label %bb.ag, !prof !38

bb.ag:                                            ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1188
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit58.i: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit.i
  %i.gl = zext nneg i8 %.sroa.0.0.i92.i to i16
  %i.gm = add nuw nsw i16 %i.fd, %i.gl            ; 2 uses
  %i.gn = zext nneg i16 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gn
  store i8 %i.gj, ptr %i.go, align 1, !noalias !1188
  %i.gp = add nuw nsw i16 %i.gm, 1
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit58.i, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit66.i
  %.sroa.9.4 = phi i16 [ %i.fd, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit66.i ], [ %i.gp, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit58.i ] ; 3 uses
  %i.gq = and i16 %i.k, 16
  %i.gr = icmp eq i16 %i.gq, 0
  br i1 %i.gr, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gs = load i64, ptr %1, align 8, !alias.scope !1132, !noalias !1136, !noundef !4 ; 6 uses
  %i.gt = icmp ult i64 %i.gs, 10
  br i1 %i.gt, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = icmp ult i64 %i.gs, 100
  br i1 %i.gu, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gv = icmp ult i64 %i.gs, 1000
  br i1 %i.gv, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gw = icmp ult i64 %i.gs, 10000
  br i1 %i.gw, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gx = tail call fastcc noundef i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core3num3imp9int_log108u64_impl(i64 noundef %i.gs), !noalias !1191 ; 2 uses
  %i.gy = icmp samesign ult i32 %i.gx, 20
  tail call void @llvm.assume(i1 %i.gy), !noalias !1191
  %i.gz = trunc nuw nsw i32 %i.gx to i8
  %i.ha = add nuw nsw i8 %i.gz, 1
  br label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i

_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.sroa.0.0.i79.i = phi i8 [ %i.ha, %bb.am ], [ 1, %bb.ai ], [ 2, %bb.aj ], [ 3, %bb.ak ], [ 4, %bb.al ] ; 2 uses
  %i.hb = zext nneg i8 %.sroa.0.0.i79.i to i64    ; 2 uses
  %i.hc = zext nneg i16 %.sroa.9.4 to i64         ; 2 uses
  %i.hd = sub nuw nsw i64 78, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hc
  %.not.i44.i = icmp samesign ult i64 %i.hd, %i.hb
  br i1 %.not.i44.i, label %bb.an, label %.preheader15.i, !prof !48

bb.an:                                            ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13, !noalias !1194
  unreachable

.preheader15.i:                                   ; preds = %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i, %.preheader15.i
  %.sroa.0.0.i4633.i = phi i64 [ %i.hk, %.preheader15.i ], [ %i.gs, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i ] ; 2 uses
  %.sroa.03.0.i4532.i = phi i64 [ %i.hf, %.preheader15.i ], [ %i.hb, %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit.i ]
  %i.hf = add nsw i64 %.sroa.03.0.i4532.i, -1     ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hf
  %i.hh = urem i64 %.sroa.0.0.i4633.i, 10
  %i.hi = trunc nuw nsw i64 %i.hh to i8
  %i.hj = or disjoint i8 %i.hi, 48
  store i8 %i.hj, ptr %i.hg, align 1, !noalias !1194
  %i.hk = udiv i64 %.sroa.0.0.i4633.i, 10
  %.not8.i47.i = icmp eq i64 %i.hf, 0
  br i1 %.not8.i47.i, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit48.i, label %.preheader15.i

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit48.i: ; preds = %.preheader15.i
  %i.hl = zext nneg i8 %.sroa.0.0.i79.i to i16
  %i.hm = add nuw nsw i16 %.sroa.9.4, %i.hl       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ho = load i8, ptr %i.hn, align 1, !noalias !1147, !noundef !4 ; 2 uses
  %i.hp = icmp sgt i8 %i.ho, -1
  br i1 %i.hp, label %bb.ap, label %bb.ao, !prof !38

bb.ao:                                            ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit48.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !1195
  unreachable

bb.ap:                                            ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit48.i
  %.not.i55.i = icmp eq i16 %i.hm, 78
  br i1 %.not.i55.i, label %bb.aq, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit56.i, !prof !41

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !1195
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit56.i: ; preds = %bb.ap
  %i.hq = zext nneg i16 %i.hm to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hq
  store i8 %i.ho, ptr %i.hr, align 1, !noalias !1195
  %i.hs = add nuw nsw i16 %i.hm, 1
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit56.i, %bb.ah
  %.sroa.9.5 = phi i16 [ %.sroa.9.4, %bb.ah ], [ %i.hs, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit56.i ] ; 5 uses
  %i.ht = and i16 %i.k, 7
  %.not.i = icmp eq i16 %i.ht, 0                  ; 2 uses
  %i.hu = and i16 %i.k, 8
  %i.hv = icmp eq i16 %i.hu, 0
  br i1 %i.hv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.i, label %_RNvMs0_NtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit, label %bb.au

bb.at:                                            ; preds = %bb.ar
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !1132, !noalias !1136, !noundef !4 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !1132, !noalias !1136, !noundef !4 ; 2 uses
  %i.ia = udiv i64 %i.hz, 1000
  %i.ib = urem i64 %i.hz, 1000
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ic, 1000000
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !1132, !noalias !1136, !noundef !4 ; 2 uses
  %i.ig = udiv i64 %i.if, 1000000000
  %i.ih = urem i64 %i.if, 1000000000
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %i.ij = add i64 %i.ia, %i.hx                    ; 3 uses
  %i.ik = icmp ult i64 %i.ij, %i.hx
  br i1 %i.ik, label %bb.bi, label %bb.be, !prof !41

bb.av:                                            ; preds = %bb.at
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !1132, !noalias !1136, !noundef !4 ; 6 uses
  %i.in = icmp ult i64 %i.im, 10
  br i1 %i.in, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit81.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.io = icmp ult i64 %i.im, 100
  br i1 %i.io, label %_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt6buffer6digits.exit81.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ip = icmp ult i64 %i.im, 1000
end_hunk_0
