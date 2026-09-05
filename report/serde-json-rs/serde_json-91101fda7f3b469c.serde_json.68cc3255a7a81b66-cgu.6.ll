Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.6?download=true
inline.NumInlined: 76
inline.NumDeleted: 57
begin_hunk_0_@_RNvNtCs8ZPNfZ0ciAA_10serde_json5error10make_error:bb.a
  %i.bz = load i8, ptr %i.by, align 1, !noalias !111, !noundef !4
  %i.ca = icmp slt i8 %i.bz, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i
  %i.cb = icmp ne i64 %i.bj, 3
  tail call void @llvm.assume(i1 %i.cb)
  br label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br i1 %i.r, label %bb.ad, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

.split114.us.i.i.i.invoke:                        ; preds = %.split.i.i, %bb.ag, %.split.i45.i, %bb.ar, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i, %bb.bg, %bb.aw, %bb.ba, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i, %.split.i40.i, %bb.al, %.split.i.i.us.i.peel.i.i, %bb.b, %.split.i.i.us.i.i.i, %bb.k
  %i.cc = phi ptr [ %i.e, %bb.aw ], [ %i.m, %.split.i.i.us.i.peel.i.i ], [ %i.e, %bb.ba ], [ %i.e, %.split.i40.i ], [ %i.e, %bb.bg ], [ %i.m, %bb.k ], [ %i.m, %.split.i.i.us.i.i.i ], [ %i.m, %bb.b ], [ %i.e, %.split.i45.i ], [ %i.e, %bb.al ], [ %i.e, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.e, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.e, %bb.ar ], [ %i.e, %bb.ag ], [ %i.e, %.split.i.i ]
  %i.cd = phi i64 [ %i.g, %bb.aw ], [ %i.o, %.split.i.i.us.i.peel.i.i ], [ %i.g, %bb.ba ], [ %i.g, %.split.i40.i ], [ %i.g, %bb.bg ], [ %i.o, %bb.k ], [ %i.o, %.split.i.i.us.i.i.i ], [ %i.o, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.al ], [ %i.g, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.g, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.ar ], [ %i.g, %bb.ag ], [ %i.g, %.split.i.i ]
  %i.ce = phi i64 [ %i.hd, %bb.aw ], [ 0, %.split.i.i.us.i.peel.i.i ], [ %i.hd, %bb.ba ], [ %.sroa.03.0.lcssa168.i, %.split.i40.i ], [ %i.hu, %bb.bg ], [ 0, %bb.k ], [ 0, %.split.i.i.us.i.i.i ], [ 0, %bb.b ], [ %.sroa.010.0.i, %.split.i45.i ], [ %.sroa.03.0.lcssa168.i, %bb.al ], [ %i.hu, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.hd, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %.sroa.010.0.i, %bb.ar ], [ %.sroa.03.0.i, %bb.ag ], [ %.sroa.03.0.i, %.split.i.i ]
  %i.cf = phi i64 [ %.sroa.03.0.lcssa168.i, %bb.aw ], [ %.promoted104.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.sroa.03.0.lcssa168.i, %bb.ba ], [ %i.g, %.split.i40.i ], [ %.sroa.010.0.lcssa165214.i, %bb.bg ], [ %i.bj, %bb.k ], [ %i.bj, %.split.i.i.us.i.i.i ], [ %.promoted104.i.i.i, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.al ], [ %.sroa.010.0.lcssa165214.i, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %.sroa.03.0.lcssa168.i, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.ar ], [ %i.g, %bb.ag ], [ %i.g, %.split.i.i ]
  %i.cg = phi ptr [ @11, %bb.aw ], [ @49, %.split.i.i.us.i.peel.i.i ], [ @11, %bb.ba ], [ @8, %.split.i40.i ], [ @12, %bb.bg ], [ @49, %bb.k ], [ @49, %.split.i.i.us.i.i.i ], [ @49, %bb.b ], [ @10, %.split.i45.i ], [ @8, %bb.al ], [ @12, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ @11, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ @10, %bb.ar ], [ @7, %bb.ag ], [ @7, %.split.i.i ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.cd, i64 noundef %i.ce, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg) #19
          to label %.split114.us.i.i.i.cont unwind label %bb.bs

.split114.us.i.i.i.cont:                          ; preds = %.split114.us.i.i.i.invoke
  unreachable

default.unreachable:                              ; preds = %.noexc
  unreachable

bb.m:                                             ; preds = %.noexc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !103, !noalias !105, !noundef !4 ; 4 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i, label %bb.o

bb.n:                                             ; preds = %.noexc
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !103, !noalias !105, !noundef !4
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !103, !noalias !105, !nonnull !4, !noundef !4 ; 10 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !103, !noalias !105, !noundef !4 ; 11 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !103, !noalias !105, !nonnull !4, !noundef !4 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !103, !noalias !105, !noundef !4 ; 14 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br i1 %i.cm, label %bb.z, label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !103, !noalias !105, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ci, %i.cx
  br i1 %.not.i.i.i, label %bb.p, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i, !prof !112

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ci, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
          to label %.noexc7 unwind label %bb.bs

.noexc7:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %.promoted.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !116, !noalias !117 ; 2 uses
  %i.cy = sub i64 %.promoted.i.i.i.i, %i.cu       ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cq
  br i1 %i.cz, label %.lr.ph.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !116, !noalias !117, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !116, !noalias !117 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !116, !noalias !117 ; 2 uses
  %umax71.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 range(i64 0, -9223372036854775808) %i.cu) ; 2 uses
  %.promoted36.i.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !116, !noalias !117
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.sink99.i.i24.i.i = phi i64 [ %.sink99.i.i.i.i, %bb.s ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.dh = phi i64 [ %.sink98.i.i.i.i, %bb.s ], [ %.promoted36.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.di = phi i64 [ %i.dq, %bb.s ], [ %i.cy, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !114, !noalias !118, !noundef !4
  %i.dl = and i8 %i.dk, 63
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.db
  %.not.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.dh) ; 2 uses
  %.not19.i.i.i.i191 = icmp eq i64 %i.dp, 0
  br i1 %.not19.i.i.i.i191, label %.preheader46.i.i.i.i, label %.lr.ph

bb.s:                                             ; preds = %bb.y, %bb.w, %.lr.ph.split.i.i.i.i
  %.sink99.i.i.i.i = phi i64 [ %i.ek, %bb.y ], [ %i.ed, %bb.w ], [ %i.di, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.sink98.i.i.i.i = phi i64 [ %i.cu, %bb.y ], [ %i.dg, %bb.w ], [ %i.cu, %.lr.ph.split.i.i.i.i ]
  %i.dq = sub i64 %.sink99.i.i.i.i, %i.cu         ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.cq
  br i1 %i.dr, label %.lr.ph.split.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

bb.t:                                             ; preds = %bb.x
  %.not19.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not19.i.i.i.i, label %.preheader46.i.i.i.i, label %.lr.ph

.preheader46.i.i.i.i:                             ; preds = %bb.t, %bb.r
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.dd)
  %exitcond.not.i.i.i.i193.not = icmp ult i64 %i.dd, %i.dh
  br i1 %exitcond.not.i.i.i.i193.not, label %.lr.ph195, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %.sroa.2.0.i.i.i.i192 = phi i64 [ %i.ds, %bb.t ], [ %i.dp, %bb.r ]
  %i.ds = add i64 %.sroa.2.0.i.i.i.i192, -1       ; 7 uses
  %i.dt = icmp ult i64 %i.ds, %i.cu
  br i1 %i.dt, label %bb.x, label %.split43.i.i.i.i.invoke

bb.u:                                             ; preds = %bb.v
  %i.du = add i64 %.sroa.09.0.i.i.i.i194, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.du, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph195

.lr.ph195:                                        ; preds = %.preheader46.i.i.i.i, %bb.u
  %.sroa.09.0.i.i.i.i194 = phi i64 [ %i.du, %bb.u ], [ %i.dd, %.preheader46.i.i.i.i ] ; 4 uses
  %exitcond70.not.i.i.i.i = icmp eq i64 %.sroa.09.0.i.i.i.i194, %umax71.i.i.i.i
  br i1 %exitcond70.not.i.i.i.i, label %.split43.i.i.i.i.invoke, label %bb.v

bb.v:                                             ; preds = %.lr.ph195
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.09.0.i.i.i.i194
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !115, !noalias !119, !noundef !4
  %i.dx = add i64 %.sroa.09.0.i.i.i.i194, %i.di   ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cq
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !114, !noalias !118, !noundef !4
  %.not20.i.i.i.i = icmp eq i8 %i.dw, %i.ea
  br i1 %.not20.i.i.i.i, label %bb.u, label %bb.w

.split43.i.i.i.i.invoke:                          ; preds = %.lr.ph, %.lr.ph195, %.lr.ph.split.us.i.i.i.i, %.lr.ph.split.us.i.i.preheader.i.i
  %i.eb = phi i64 [ %i.et, %.lr.ph.split.us.i.i.i.i ], [ %umax71.i.i.i.i, %.lr.ph195 ], [ %i.et, %.lr.ph.split.us.i.i.preheader.i.i ], [ %i.ds, %.lr.ph ]
  %i.ec = phi ptr [ @2, %.lr.ph.split.us.i.i.i.i ], [ @1, %.lr.ph195 ], [ @2, %.lr.ph.split.us.i.i.preheader.i.i ], [ @2, %.lr.ph ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec) #19
          to label %.split43.i.i.i.i.cont unwind label %bb.bs

.split43.i.i.i.i.cont:                            ; preds = %.split43.i.i.i.i.invoke
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ed = sub i64 %.sink99.i.i24.i.i, %i.dg
  br label %bb.s

bb.x:                                             ; preds = %.lr.ph
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ds
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !115, !noalias !119, !noundef !4
  %i.eg = add nuw i64 %i.ds, %i.di                ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.cq
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !114, !noalias !118, !noundef !4
  %.not21.i.i.i.i = icmp eq i8 %i.ef, %i.ej
  br i1 %.not21.i.i.i.i, label %bb.t, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.neg.i.i.i.i = sub i64 %.sink99.i.i24.i.i, %i.dd
  %i.ek = add i64 %.neg.i.i.i.i, %i.ds
  br label %bb.s

bb.z:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %.promoted.i6.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !123, !noalias !124 ; 3 uses
  %i.el = sub i64 %.promoted.i6.i.i.i, %i.cu      ; 5 uses
  %i.em = icmp ult i64 %i.el, %i.cq
  br i1 %i.em, label %.lr.ph.i9.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i9.i.i.i:                                  ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !123, !noalias !124, !noundef !4 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !123, !noalias !124
  %.fr159.i.i.i = freeze i64 %i.eq                ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !123, !noalias !124 ; 2 uses
  %umax71.i10.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr159.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cu) ; 3 uses
  %i.et = add i64 %.fr159.i.i.i, -1               ; 3 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.et, %i.cu
  br i1 %.first_iter.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.preheader, label %.lr.ph.i9.split.i.i.i

.lr.ph.split.us.i.us.i.i.i.preheader:             ; preds = %.lr.ph.i9.i.i.i
  %.not19.us.i.us.us.i.i.i202 = icmp eq i64 %.fr159.i.i.i, 0
  %exitcond72.not.i.us.i.i.i205.not = icmp ult i64 %.fr159.i.i.i, %i.cu
  br label %.lr.ph.split.us.i.us.i.i.i

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.us.i.i.i.preheader, %.split.us.us.i.i.i
  %.sink.i12.us.i36.i.i = phi i64 [ %.sink.i12.us.i.i.i, %.split.us.us.i.i.i ], [ %.promoted.i6.i.i.i, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 2 uses
  %i.eu = phi i64 [ %.neg.us.i.us.i.i.i, %.split.us.us.i.i.i ], [ %i.el, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %i.ex = and i8 %i.ew, 63
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = and i64 %i.ez, %i.eo
  %.not.us.i.us.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.us.i.us.i.i.i, label %.split.us.us.i.i.i, label %.preheader45.i.us.us.i.i.i.preheader

.preheader45.i.us.us.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.us.i.i.i
  br i1 %.not19.us.i.us.us.i.i.i202, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph207.a

.preheader.i.us.i.i.i.a:                          ; preds = %.lr.ph207.a
  %exitcond72.not.i.us.i.i.i.a = icmp eq i64 %1, 0
  br i1 %exitcond72.not.i.us.i.i.i.a, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph207.a

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader.i.us.i.i.i.a, %.preheader45.i.us.us.i.i.i.preheader
  br i1 %exitcond72.not.i.us.i.i.i205.not, label %.lr.ph204, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.lr.ph207.a:                                      ; preds = %.preheader45.i.us.us.i.i.i.preheader, %.preheader.i.us.i.i.i.a
  %.sroa.09.0.us.i.us.i.i.i206.a = phi i64 [ %1, %.preheader.i.us.i.i.i.a ], [ %.fr159.i.i.i, %.preheader45.i.us.us.i.i.i.preheader ]
  %1 = add i64 %.sroa.09.0.us.i.us.i.i.i206.a, -1 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cs, i64 %1
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !122, !noalias !126, !noundef !4
  %i.fd = add i64 %1, %i.eu                       ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.cq
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fd
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %.not20.us.i.us.i.i.i.a = icmp eq i8 %i.fc, %i.fg
  br i1 %.not20.us.i.us.i.i.i.a, label %.preheader.i.us.i.i.i.a, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph207.a
  %i.fh = sub i64 %.sink.i12.us.i36.i.i, %.fr159.i.i.i
  %2 = add i64 %i.fh, %1
  br label %.split.us.us.i.i.i

.preheader45.i.us.us.i.i.i:                       ; preds = %.lr.ph204
  %3 = add i64 %.sroa.2.0.us.i.us.us.i.i.i203, 1  ; 2 uses
  %.not19.us.i.us.us.i.i.i = icmp eq i64 %3, %umax71.i10.i.i.i
  br i1 %.not19.us.i.us.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph204

.lr.ph204:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader45.i.us.us.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i203 = phi i64 [ %3, %.preheader45.i.us.us.i.i.i ], [ %.fr159.i.i.i, %.preheader.i.us.i.i.i.preheader ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.2.0.us.i.us.us.i.i.i203
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !122, !noalias !126, !noundef !4
  %i.fk = add i64 %.sroa.2.0.us.i.us.us.i.i.i203, %i.eu ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.cq
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fk
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %.not21.us.i.us.us.i.i.i = icmp eq i8 %i.fj, %i.fn
  br i1 %.not21.us.i.us.us.i.i.i, label %.preheader45.i.us.us.i.i.i, label %4

4:                                                ; preds = %.lr.ph204
  %5 = sub i64 %.sink.i12.us.i36.i.i, %i.es
  br label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %4, %bb.aa, %.lr.ph.split.us.i.us.i.i.i
  %.sink.i12.us.i.i.i = phi i64 [ %2, %bb.aa ], [ %5, %4 ], [ %i.eu, %.lr.ph.split.us.i.us.i.i.i ] ; 2 uses
  %.neg.us.i.us.i.i.i = sub i64 %.sink.i12.us.i.i.i, %i.cu ; 2 uses
  %6 = icmp ult i64 %.neg.us.i.us.i.i.i, %i.cq
  br i1 %6, label %.lr.ph.split.us.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i9.split.i.i.i:                            ; preds = %.lr.ph.i9.i.i.i
  %.not19.us.i.i.i.i = icmp eq i64 %.fr159.i.i.i, 0
  br i1 %.not19.us.i.i.i.i, label %.lr.ph.split.us.i.us92.i.i.i.preheader, label %.lr.ph.split.us.i.i.preheader.i.i

.lr.ph.split.us.i.us92.i.i.i.preheader:           ; preds = %.lr.ph.i9.split.i.i.i
  %exitcond72.not.i.us96.i.i.i197 = icmp eq i64 %umax71.i10.i.i.i, 0
  br label %.lr.ph.split.us.i.us92.i.i.i

.lr.ph.split.us.i.i.preheader.i.i:                ; preds = %.lr.ph.i9.split.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.el
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %i.fq = and i8 %i.fp, 63
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = and i64 %i.fs, %i.eo
  %.not.us.i.i34.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.us.i.i34.i.i, label %.lr.ph.i.i, label %.split43.i.i.i.i.invoke

.lr.ph.split.us.i.us92.i.i.i:                     ; preds = %.lr.ph.split.us.i.us92.i.i.i.preheader, %bb.ac
  %i.fu = phi i64 [ %i.gk, %bb.ac ], [ %i.el, %.lr.ph.split.us.i.us92.i.i.i.preheader ] ; 5 uses
  %i.fv = phi i64 [ %.sink.i12.us98.i.i.i, %bb.ac ], [ %.promoted.i6.i.i.i, %.lr.ph.split.us.i.us92.i.i.i.preheader ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fu
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = and i64 %i.ga, %i.eo
  %.not.us.i.us93.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.us.i.us93.i.i.i, label %bb.ac, label %.preheader.i.us94.i.i.i.preheader

.preheader.i.us94.i.i.i.preheader:                ; preds = %.lr.ph.split.us.i.us92.i.i.i
  br i1 %exitcond72.not.i.us96.i.i.i197, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph199

.preheader.i.us94.i.i.i:                          ; preds = %.lr.ph199
  %i.gc = add i64 %.sroa.09.0.us.i.us95.i.i.i198, 1 ; 2 uses
  %exitcond72.not.i.us96.i.i.i = icmp eq i64 %i.gc, %umax71.i10.i.i.i
  br i1 %exitcond72.not.i.us96.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph199

.lr.ph199:                                        ; preds = %.preheader.i.us94.i.i.i.preheader, %.preheader.i.us94.i.i.i
  %.sroa.09.0.us.i.us95.i.i.i198 = phi i64 [ %i.gc, %.preheader.i.us94.i.i.i ], [ 0, %.preheader.i.us94.i.i.i.preheader ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.09.0.us.i.us95.i.i.i198
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !122, !noalias !126, !noundef !4
  %i.gf = add nuw i64 %.sroa.09.0.us.i.us95.i.i.i198, %i.fu ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.cq
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.gf
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %.not20.us.i.us97.i.i.i = icmp eq i8 %i.ge, %i.gi
  br i1 %.not20.us.i.us97.i.i.i, label %.preheader.i.us94.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph199
  %i.gj = sub i64 %i.fv, %i.es
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.us.i.us92.i.i.i
  %.sink.i12.us98.i.i.i = phi i64 [ %i.fu, %.lr.ph.split.us.i.us92.i.i.i ], [ %i.gj, %bb.ab ] ; 2 uses
  %i.gk = sub i64 %.sink.i12.us98.i.i.i, %i.cu    ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.cq
  br i1 %i.gl, label %.lr.ph.split.us.i.us92.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.gt
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !121, !noalias !125, !noundef !4
  %i.go = and i8 %i.gn, 63
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = and i64 %i.gq, %i.eo
  %.not.us.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not.us.i.i.i.i, label %.lr.ph.i.i, label %.split43.i.i.i.i.invoke

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i.i.preheader.i.i, %.lr.ph.split.us.i.i.i.i
  %i.gs = phi i64 [ %i.gt, %.lr.ph.split.us.i.i.i.i ], [ %i.el, %.lr.ph.split.us.i.i.preheader.i.i ]
  %i.gt = sub i64 %i.gs, %i.cu                    ; 3 uses
  %i.gu = icmp ult i64 %i.gt, %i.cq
  br i1 %i.gu, label %.lr.ph.split.us.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i: ; preds = %bb.s, %.lr.ph.i.i, %bb.ac, %.split.us.us.i.i.i, %bb.z, %bb.q, %bb.m, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i: ; preds = %.preheader46.i.i.i.i, %bb.u, %.preheader.i.us94.i.i.i.preheader, %.preheader.i.us94.i.i.i, %.preheader.i.us.i.i.i.preheader, %.preheader45.i.us.us.i.i.i, %bb.l, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i, %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i, %bb.g
  %.sroa.4.1.i.ph.i = phi i64 [ %i.bj, %bb.l ], [ 0, %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i ], [ %i.di, %bb.u ], [ %.promoted104.i.i.i, %bb.g ], [ %i.eu, %.preheader.i.us.i.i.i.preheader ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i ], [ %i.fu, %.preheader.i.us94.i.i.i.preheader ], [ %i.eu, %.preheader45.i.us.us.i.i.i ], [ %i.fu, %.preheader.i.us94.i.i.i ], [ %i.di, %.preheader46.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %bb.ad

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.o
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gw = load i8, ptr %i.gv, align 8, !alias.scope !103, !noalias !105, !noundef !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !103, !noalias !105, !nonnull !4, !noundef !4
  %i.gz = invoke { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr15memrchr_aligned(i8 noundef %i.gw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gy, i64 noundef %i.ci)
          to label %.noexc11 unwind label %bb.bs  ; 2 uses

.noexc11:                                         ; preds = %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i
  %i.ha = extractvalue { i64, i64 } %i.gz, 0
  %i.hb = trunc nuw i64 %i.ha to i1
  %i.hc = extractvalue { i64, i64 } %i.gz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br i1 %i.hb, label %bb.ad, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

bb.ad:                                            ; preds = %.noexc11, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, %.split.us.i.i.i
  %.sroa.4.1.i88.i = phi i64 [ %.sroa.4.1.i.ph.i, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i ], [ %i.hc, %.noexc11 ], [ 0, %.split.us.i.i.i ] ; 6 uses
  %i.hd = add i64 %.sroa.4.1.i88.i, 9             ; 10 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.am, %bb.ad
  %.sroa.03.0.i = phi i64 [ %i.hd, %bb.ad ], [ %i.hq, %bb.am ] ; 10 uses
  %i.he = icmp eq i64 %.sroa.03.0.i, 0            ; 2 uses
  br i1 %i.he, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i = icmp ult i64 %.sroa.03.0.i, %i.g
  br i1 %.not.i.i, label %bb.ag, label %.split.i.i

.split.i.i:                                       ; preds = %bb.af
  %i.hf = icmp eq i64 %.sroa.03.0.i, %i.g
  br i1 %i.hf, label %bb.ah, label %.split114.us.i.i.i.invoke

bb.ag:                                            ; preds = %bb.af
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.i
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !127, !noalias !128, !noundef !4
  %i.hi = icmp sgt i8 %i.hh, -65
  br i1 %i.hi, label %bb.ah, label %.split114.us.i.i.i.invoke

bb.ah:                                            ; preds = %bb.ag, %.split.i.i, %bb.ae
  %.not31.i = icmp eq i64 %i.g, %.sroa.03.0.i
  br i1 %.not31.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.i
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !128, !noundef !4
  %i.hl = add i8 %i.hk, -48
  %or.cond.i = icmp ult i8 %i.hl, 10
  br i1 %or.cond.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.03.0.lcssa168.i = phi i64 [ %.sroa.03.0.i, %bb.ai ], [ %i.g, %bb.ah ] ; 15 uses
  br i1 %i.he, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i39.i = icmp ult i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %.not.i39.i, label %bb.al, label %.split.i40.i

.split.i40.i:                                     ; preds = %bb.ak
  %i.hm = icmp eq i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %i.hm, label %bb.an, label %.split114.us.i.i.i.invoke

bb.al:                                            ; preds = %bb.ak
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.lcssa168.i
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !129, !noalias !128, !noundef !4
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.an, label %.split114.us.i.i.i.invoke

bb.am:                                            ; preds = %bb.ai
  %i.hq = add i64 %.sroa.03.0.i, 1
  br label %bb.ae

bb.an:                                            ; preds = %bb.al, %.split.i40.i, %bb.aj
  %i.hr = sub nuw i64 %i.g, %.sroa.03.0.lcssa168.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.lcssa168.i ; 2 uses
  %i.ht = invoke noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.hr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 8)
          to label %.noexc13 unwind label %bb.bs

.noexc13:                                         ; preds = %bb.an
  br i1 %i.ht, label %bb.ao, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

bb.ao:                                            ; preds = %.noexc13
  %i.hu = add i64 %.sroa.03.0.lcssa168.i, 8       ; 9 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %bb.ao
  %.sroa.010.0.i = phi i64 [ %i.hu, %bb.ao ], [ %i.ig, %bb.av ] ; 11 uses
  %i.hv = icmp eq i64 %.sroa.010.0.i, 0
  br i1 %i.hv, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not.i44.i = icmp ult i64 %.sroa.010.0.i, %i.g
  br i1 %.not.i44.i, label %bb.ar, label %.split.i45.i

.split.i45.i:                                     ; preds = %bb.aq
  %i.hw = icmp eq i64 %.sroa.010.0.i, %i.g
  br i1 %i.hw, label %bb.as, label %.split114.us.i.i.i.invoke

bb.ar:                                            ; preds = %bb.aq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.010.0.i
  %i.hy = load i8, ptr %i.hx, align 1, !alias.scope !130, !noalias !128, !noundef !4
  %i.hz = icmp sgt i8 %i.hy, -65
  br i1 %i.hz, label %bb.as, label %.split114.us.i.i.i.invoke

bb.as:                                            ; preds = %bb.ar, %.split.i45.i, %bb.ap
  %.not34.i = icmp eq i64 %i.g, %.sroa.010.0.i
  br i1 %.not34.i, label %.thread.i, label %bb.at

.thread.i:                                        ; preds = %bb.as
  %i.ia = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.ia)
  br label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.010.0.i
  %i.ic = load i8, ptr %i.ib, align 1, !noalias !128, !noundef !4
  %i.id = add i8 %i.ic, -48
  %or.cond1.i = icmp ult i8 %i.id, 10
  br i1 %or.cond1.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ie = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.ie)
  %i.if = icmp ult i64 %.sroa.010.0.i, %i.g
  br i1 %i.if, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit, label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ig = add i64 %.sroa.010.0.i, 1
  br label %bb.ap

bb.aw:                                            ; preds = %bb.au, %.thread.i
  %.sroa.010.0.lcssa165214.i = phi i64 [ %i.g, %.thread.i ], [ %.sroa.010.0.i, %bb.au ] ; 5 uses
  %i.ih = icmp ugt i64 %i.hd, %.sroa.03.0.lcssa168.i
  %i.ii = icmp ugt i64 %.sroa.03.0.lcssa168.i, %i.g
  %or.cond.i35.i = or i1 %i.ih, %i.ii
  br i1 %or.cond.i35.i, label %.split114.us.i.i.i.invoke, label %bb.ax, !prof !131

bb.ax:                                            ; preds = %bb.aw
  %i.ij = icmp eq i64 %i.hd, %i.g
  br i1 %i.ij, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ik = icmp eq i64 %i.hd, 0
  br i1 %i.ik, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.il = icmp eq i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %i.il, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i

bb.ba:                                            ; preds = %bb.ay
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hd
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !132, !noalias !128, !noundef !4
  %i.io = icmp sgt i8 %i.in, -65
  br i1 %i.io, label %bb.az, label %.split114.us.i.i.i.invoke, !prof !133

_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i: ; preds = %bb.az
  %i.ip = load i8, ptr %i.hs, align 1, !alias.scope !132, !noalias !128, !noundef !4
  %i.iq = icmp sgt i8 %i.ip, -65
  br i1 %i.iq, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %.split114.us.i.i.i.invoke, !prof !134

_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i: ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i, %bb.az, %bb.ax
  %i.ir = sub nuw i64 %.sroa.03.0.lcssa168.i, %i.hd ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hd ; 3 uses
  switch i64 %i.ir, label %thread-pre-split.i.i [
    i64 0, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !135, !noalias !136, !noundef !4 ; 2 uses
  switch i8 %i.it, label %bb.bc [
    i8 43, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
    i8 45, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
  ]

thread-pre-split.i.i:                             ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i
  %.pr.i.i = load i8, ptr %i.is, align 1, !alias.scope !135, !noalias !136
  br label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split.i.i, %bb.bb
  %i.iu = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.it, %bb.bb ]
  %cond.i.i = icmp eq i8 %i.iu, 43                ; 2 uses
  %i.iv = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.ir, %i.iv      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i49.i = getelementptr inbounds nuw i8, ptr %i.is, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.iw = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.iw, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.bc
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i50.i

.preheader56.i.i:                                 ; preds = %bb.bd
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i212, i64 1
  %i.iy = add nsw i64 %.sroa.15.1.i.i211, -1      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.iy, 0
end_hunk_0
