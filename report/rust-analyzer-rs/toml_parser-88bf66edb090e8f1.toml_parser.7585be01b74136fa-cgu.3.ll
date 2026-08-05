inline.NumInlined: 92
inline.NumDeleted: 49
begin_hunk_0_@_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document20on_inline_table_open:bb.a
    i8 123, label %.thread60.thread90
    i8 125, label %.thread69
    i8 32, label %.loopexit95
    i8 35, label %.loopexit96
    i8 10, label %.loopexit97
    i8 39, label %bb.ai
    i8 34, label %bb.ai
    i8 1, label %bb.ai
    i8 2, label %bb.ai
    i8 3, label %bb.ai
    i8 4, label %._crit_edge
  ]

.thread60.thread90:                               ; preds = %bb.h
  store i64 -1, ptr %i.ab, align 8
  store ptr @36, ptr %.sroa.478.0..sroa_idx, align 8
  store i64 36, ptr %.sroa.579.0..sroa_idx, align 8
  store i64 1, ptr %i.i, align 8
  store i64 %.0.val, ptr %.sroa.575.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.582.0..sroa_idx, align 8
  br label %bb.af

.thread53.thread85:                               ; preds = %bb.h
  store i64 -1, ptr %i.ah, align 8
  store ptr @40, ptr %.sroa.4130.0..sroa_idx, align 8
  store i64 28, ptr %.sroa.5131.0..sroa_idx, align 8
  store i64 1, ptr %i.e, align 8
  store i64 %.0.val, ptr %.sroa.5127.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5134.0..sroa_idx, align 8
  br label %bb.ab

.thread.thread77:                                 ; preds = %bb.h
  store i64 -1, ptr %i.ax, align 8
  store ptr @36, ptr %.sroa.4104.0..sroa_idx, align 8
  store i64 36, ptr %.sroa.5105.0..sroa_idx, align 8
  store i64 1, ptr %i.g, align 8
  store i64 %.0.val, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5108.0..sroa_idx, align 8
  br label %bb.y

.thread60.thread:                                 ; preds = %bb.g
  store i64 -1, ptr %i.ab, align 8
  store ptr @36, ptr %.sroa.478.0..sroa_idx, align 8
  store i64 36, ptr %.sroa.579.0..sroa_idx, align 8
  store i64 1, ptr %i.i, align 8
  store i64 %.0.val, ptr %.sroa.575.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.582.0..sroa_idx, align 8
  br label %bb.af

.thread53.thread:                                 ; preds = %bb.g
  store i64 -1, ptr %i.ah, align 8
  store ptr @40, ptr %.sroa.4130.0..sroa_idx, align 8
  store i64 28, ptr %.sroa.5131.0..sroa_idx, align 8
  store i64 1, ptr %i.e, align 8
  store i64 %.0.val, ptr %.sroa.5127.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5134.0..sroa_idx, align 8
  br label %bb.ab

.thread.thread:                                   ; preds = %bb.g
  store i64 -1, ptr %i.ax, align 8
  store ptr @36, ptr %.sroa.4104.0..sroa_idx, align 8
  store i64 36, ptr %.sroa.5105.0..sroa_idx, align 8
  store i64 1, ptr %i.g, align 8
  store i64 %.0.val, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5108.0..sroa_idx, align 8
  br label %bb.y

._crit_edge:                                      ; preds = %bb.s, %bb.d, %bb.u, %bb.h, %bb.t, %bb.e, %bb.m, %bb.n, %bb.f, %bb.g, %.preheader
  %.sroa.0.0.lcssa = phi i8 [ 0, %.preheader ], [ 0, %bb.f ], [ 2, %bb.m ], [ 0, %bb.g ], [ 2, %bb.n ], [ 3, %bb.u ], [ 1, %bb.e ], [ 1, %bb.t ], [ %.sroa.0.016, %bb.d ], [ %.sroa.0.1, %bb.s ], [ 3, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.cy = load ptr, ptr %0, align 8, !alias.scope !272, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.o, align 8, !alias.scope !272, !nonnull !4, !align !5, !noundef !4
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = udiv i64 %i.dd, 24                      ; 3 uses
  %i.df = load i64, ptr %i.cz, align 8, !alias.scope !272, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.de, %i.df
  br i1 %.not.i, label %bb.i, label %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit, !prof !49

bb.i:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.de, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #9, !noalias !272
  unreachable

_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit: ; preds = %._crit_edge
  %i.dg = icmp ult i64 %i.dd, 24
  br i1 %i.dg, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit
  %.idx = mul nuw nsw i64 %i.de, 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i
  %i.di = phi ptr [ %i.dl, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i ], [ %i.dh, %.lr.ph.i.preheader ] ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dk = load i8, ptr %i.dj, align 8, !range !7, !alias.scope !275, !noalias !278, !noundef !4
  switch i8 %i.dk, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit [
    i8 32, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i
    i8 35, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i
    i8 10, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i
    i8 4, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i
  ]

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -24 ; 2 uses
  %i.dm = icmp eq ptr %i.cy, %i.dl
  br i1 %i.dm, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread, label %.lr.ph.i

default.unreachable35:                            ; preds = %.thread60, %.thread, %bb.q, %bb.o, %bb.j, %.preheader98, %bb.r
  unreachable

default.unreachable:                              ; preds = %.thread53, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.d, %bb.n, %bb.g
  unreachable

bb.j:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  switch i8 %.sroa.0.016, label %default.unreachable35 [
    i8 0, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %.loopexit102
    i8 3, label %bb.ai
  ]

bb.k:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %.promoted231, i64 24
  br label %bb.ag

.preheader98:                                     ; preds = %bb.g, %bb.d, %bb.h, %bb.e
  %.ph99 = phi ptr [ %i.cg, %bb.e ], [ %i.cb, %bb.d ], [ %i.ct, %bb.h ], [ %.promoted231, %bb.g ] ; 5 uses
  %.sroa.0.01636.ph = phi i8 [ 1, %bb.e ], [ %.sroa.0.016, %bb.d ], [ 3, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.promoted = load i64, ptr %i.p, align 8        ; 2 uses
  %.promoted228 = load ptr, ptr %i.o, align 8     ; 17 uses
  switch i8 %.sroa.0.01636.ph, label %default.unreachable35 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %.loopexit487
    i8 3, label %.loopexit487
  ]

bb.l:                                             ; preds = %.preheader98
  %i.do = load i64, ptr %.ph99, align 8, !noundef !4 ; 2 uses
  call void %i.bo(ptr noundef nonnull %1, i64 noundef %i.do, i64 noundef %i.do, i8 noundef 0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader98
  %i.dp = load i64, ptr %.ph99, align 8, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.ph99, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !4
  call void %i.bm(ptr noundef nonnull %1, i64 noundef %i.dp, i64 noundef %i.dr, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  %.not.jt2.peel = icmp eq i64 %.promoted, 0
  br i1 %.not.jt2.peel, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %.promoted228, i64 24
  %i.dt = add i64 %.promoted, -1
  store ptr %i.ds, ptr %i.o, align 8, !captures !6
  store i64 %i.dt, ptr %i.p, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %.promoted228, i64 16
  %i.dv = load i8, ptr %i.du, align 8, !range !7, !noundef !4
  switch i8 %i.dv, label %.loopexit [
    i8 46, label %.loopexit102
    i8 61, label %.loopexit487
    i8 44, label %.preheader93
    i8 91, label %.thread49
    i8 93, label %.thread56
    i8 123, label %.thread65
    i8 125, label %.thread73
    i8 32, label %.loopexit95
    i8 35, label %.loopexit96
    i8 10, label %.loopexit97
    i8 39, label %.loopexit102
    i8 34, label %.loopexit102
    i8 1, label %.loopexit102
    i8 2, label %.loopexit102
    i8 3, label %.loopexit102
    i8 4, label %._crit_edge
  ]

bb.o:                                             ; preds = %bb.d
  switch i8 %.sroa.0.016, label %default.unreachable35 [
    i8 0, label %.thread
    i8 1, label %.thread47
    i8 2, label %.thread49
    i8 3, label %.thread
  ], !prof !281

bb.p:                                             ; preds = %bb.d
  %i.dw = icmp eq i8 %.sroa.0.016, 2
  br i1 %i.dw, label %.thread56, label %.thread53

bb.q:                                             ; preds = %bb.d
  switch i8 %.sroa.0.016, label %default.unreachable35 [
    i8 0, label %.thread60
    i8 1, label %.thread63
    i8 2, label %.thread65
    i8 3, label %.thread60
  ], !prof !281

bb.r:                                             ; preds = %bb.d
  switch i8 %.sroa.0.016, label %default.unreachable35 [
    i8 0, label %.thread69
    i8 1, label %.thread71
    i8 2, label %.thread73
    i8 3, label %.thread69
  ]

.loopexit95:                                      ; preds = %bb.n, %bb.g, %bb.e, %bb.h, %bb.d
  %i.dx = phi ptr [ %i.cg, %bb.e ], [ %i.ct, %bb.h ], [ %i.cb, %bb.d ], [ %.promoted231, %bb.g ], [ %.promoted228, %bb.n ] ; 2 uses
  %.sroa.0.01642 = phi i8 [ 1, %bb.e ], [ 3, %bb.h ], [ %.sroa.0.016, %bb.d ], [ 0, %bb.g ], [ 2, %bb.n ]
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !4
  call void %i.u(ptr noundef nonnull %1, i64 noundef %i.dy, i64 noundef %i.ea, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.s

.loopexit96:                                      ; preds = %bb.n, %bb.g, %bb.e, %bb.h, %bb.d
  %i.eb = phi ptr [ %i.cg, %bb.e ], [ %i.ct, %bb.h ], [ %i.cb, %bb.d ], [ %.promoted231, %bb.g ], [ %.promoted228, %bb.n ] ; 2 uses
  %.sroa.0.01643 = phi i8 [ 1, %bb.e ], [ 3, %bb.h ], [ %.sroa.0.016, %bb.d ], [ 0, %bb.g ], [ 2, %bb.n ]
  %.val199 = load i64, ptr %i.eb, align 8, !noundef !4
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %.val200 = load i64, ptr %i.ec, align 8, !noundef !4
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document10on_comment(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 %.val199, i64 %.val200, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.s

.loopexit97:                                      ; preds = %bb.n, %bb.g, %bb.e, %bb.h, %bb.d
  %i.ed = phi ptr [ %i.cg, %bb.e ], [ %i.ct, %bb.h ], [ %i.cb, %bb.d ], [ %.promoted231, %bb.g ], [ %.promoted228, %bb.n ] ; 2 uses
  %.sroa.0.01644 = phi i8 [ 1, %bb.e ], [ 3, %bb.h ], [ %.sroa.0.016, %bb.d ], [ 0, %bb.g ], [ 2, %bb.n ]
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !4
  call void %i.s(ptr noundef nonnull %1, i64 noundef %i.ee, i64 noundef %i.eg, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.s

.loopexit487:                                     ; preds = %bb.n, %.preheader98, %.preheader98
  %.lcssa387 = phi ptr [ %.ph99, %.preheader98 ], [ %.ph99, %.preheader98 ], [ %.promoted228, %bb.n ] ; 3 uses
  %.sroa.0.01636.lcssa374 = phi i8 [ %.sroa.0.01636.ph, %.preheader98 ], [ %.sroa.0.01636.ph, %.preheader98 ], [ 2, %bb.n ] ; 2 uses
  store i64 -1, ptr %i.bh, align 8
  store ptr @33, ptr %.sroa.458.0..sroa_idx, align 8
  store i64 40, ptr %.sroa.559.0..sroa_idx, align 8
  store i64 1, ptr %i.j, align 8
  store i64 %.0.val, ptr %.sroa.555.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.562.0..sroa_idx, align 8
  %i.eh = icmp eq i8 %.sroa.0.01636.lcssa374, 3
  %. = select i1 %i.eh, ptr @19, ptr @16
  store ptr %., ptr %i.bi, align 8
  store i64 1, ptr %i.bj, align 8
  %i.ei = load i64, ptr %.lcssa387, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.bk, align 8
  store i64 %i.ei, ptr %.sroa.555.0..sroa_idx56, align 8
  store i64 %i.ei, ptr %.sroa.565.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.j) #8
  %i.ej = load i64, ptr %.lcssa387, align 8, !noundef !4
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa387, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !noundef !4
  call void %i.ag(ptr noundef nonnull %1, i64 noundef %i.ej, i64 noundef %i.el, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.af, %bb.ab, %bb.y, %switch.lookup, %.loopexit487, %.loopexit97, %.loopexit96, %.loopexit95
  %.sroa.0.1 = phi i8 [ %.sroa.0.01642, %.loopexit95 ], [ %.sroa.0.016395581, %bb.ab ], [ %.sroa.0.01636.lcssa374, %.loopexit487 ], [ %.sroa.0.01637.lcssa, %switch.lookup ], [ %.sroa.0.01644, %.loopexit97 ], [ %.sroa.0.01643, %.loopexit96 ], [ %.sroa.0.016406289, %bb.af ], [ %.sroa.0.016384676, %bb.y ] ; 2 uses
  %i.em = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.em, 0
  br i1 %.not, label %._crit_edge, label %bb.d

bb.t:                                             ; preds = %switch.lookup361, %bb.ak, %switch.lookup357, %bb.aj
  %i.en = call fastcc noundef zeroext i1 @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document12opt_dot_keys(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) ; 0 uses
  %i.eo = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %.not.jt1 = icmp eq i64 %i.eo, 0
  br i1 %.not.jt1, label %._crit_edge, label %bb.e

bb.u:                                             ; preds = %.loopexit102, %bb.ah, %.thread65, %.thread63, %.thread56, %.thread49, %.thread47
  %i.ep = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %.not.jt3 = icmp eq i64 %i.ep, 0
  br i1 %.not.jt3, label %._crit_edge, label %bb.h

switch.lookup:                                    ; preds = %bb.g, %.preheader93
  %.lcssa433 = phi ptr [ %.ph, %.preheader93 ], [ %.promoted231, %bb.g ] ; 3 uses
  %.sroa.0.01637.lcssa = phi i8 [ %.sroa.0.01637.ph, %.preheader93 ], [ 0, %bb.g ] ; 2 uses
  store i64 -1, ptr %i.bb, align 8
  store ptr @34, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 27, ptr %.sroa.546.0..sroa_idx, align 8
  store i64 1, ptr %i.k, align 8
  store i64 %.0.val, ptr %.sroa.543.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.549.0..sroa_idx, align 8
  %i.eq = zext nneg i8 %.sroa.0.01637.lcssa to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document20on_inline_table_open, i64 %i.eq
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %i.bc, align 8
  store i64 1, ptr %i.bd, align 8
  %i.er = load i64, ptr %.lcssa433, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.be, align 8
  store i64 %i.er, ptr %.sroa.543.0..sroa_idx44, align 8
  store i64 %i.er, ptr %.sroa.552.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.k) #8
  %i.es = load i64, ptr %.lcssa433, align 8, !noundef !4
  %i.et = getelementptr inbounds nuw i8, ptr %.lcssa433, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !noundef !4
  call void %i.ag(ptr noundef nonnull %1, i64 noundef %i.es, i64 noundef %i.eu, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.s

.thread:                                          ; preds = %bb.o, %bb.o
  store i64 -1, ptr %i.ax, align 8
  store ptr @36, ptr %.sroa.4104.0..sroa_idx, align 8
  store i64 36, ptr %.sroa.5105.0..sroa_idx, align 8
  store i64 1, ptr %i.g, align 8
  store i64 %.0.val, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5108.0..sroa_idx, align 8
  switch i8 %.sroa.0.016, label %default.unreachable35 [
    i8 0, label %bb.y
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
  ]

.thread47:                                        ; preds = %bb.e, %bb.o
  %i.ev = phi ptr [ %i.cb, %bb.o ], [ %i.cg, %bb.e ] ; 3 uses
  store i64 -1, ptr %i.at, align 8
  store ptr @35, ptr %.sroa.497.0..sroa_idx, align 8
  store i64 42, ptr %.sroa.598.0..sroa_idx, align 8
  store i64 1, ptr %i.f, align 8
  store i64 %.0.val, ptr %.sroa.594.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5114.0..sroa_idx, align 8
  store ptr @28, ptr %i.au, align 8
  store i64 1, ptr %i.av, align 8
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.aw, align 8
  store i64 %i.ew, ptr %.sroa.594.0..sroa_idx95, align 8
  store i64 %i.ew, ptr %.sroa.5117.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.f) #8
  %.val204 = load i64, ptr %i.ev, align 8, !noundef !4
  %i.ex = getelementptr i8, ptr %i.ev, i64 8
  %.val205 = load i64, ptr %i.ex, align 8, !noundef !4
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13on_array_open(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 %.val204, i64 %.val205, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.u

.thread49:                                        ; preds = %bb.n, %bb.o
  %i.ey = phi ptr [ %i.cb, %bb.o ], [ %.promoted228, %bb.n ] ; 2 uses
  %.val206 = load i64, ptr %i.ey, align 8, !noundef !4
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %.val207 = load i64, ptr %i.ez, align 8, !noundef !4
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13on_array_open(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 %.val206, i64 %.val207, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.u

bb.v:                                             ; preds = %.thread
  br label %bb.y

bb.w:                                             ; preds = %.thread
  br label %bb.y

bb.x:                                             ; preds = %.thread
  br label %bb.y

bb.y:                                             ; preds = %.thread.thread77, %.thread.thread, %.thread, %bb.x, %bb.w, %bb.v
  %i.fa = phi ptr [ %.promoted231, %.thread.thread ], [ %i.cb, %bb.v ], [ %i.cb, %bb.w ], [ %i.cb, %.thread ], [ %i.ct, %.thread.thread77 ], [ %i.cb, %bb.x ] ; 3 uses
  %.sroa.0.016384676 = phi i8 [ 0, %.thread.thread ], [ %.sroa.0.016, %bb.v ], [ %.sroa.0.016, %bb.w ], [ %.sroa.0.016, %.thread ], [ 3, %.thread.thread77 ], [ %.sroa.0.016, %bb.x ]
  %.sroa.025.0 = phi ptr [ @6, %.thread.thread ], [ @28, %bb.v ], [ @16, %bb.w ], [ @6, %.thread ], [ @19, %.thread.thread77 ], [ @19, %bb.x ]
  store ptr %.sroa.025.0, ptr %i.ay, align 8
  store i64 1, ptr %i.az, align 8
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.ba, align 8
  store i64 %i.fb, ptr %.sroa.5101.0..sroa_idx102, align 8
  store i64 %i.fb, ptr %.sroa.5111.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.g) #8
  %i.fc = load i64, ptr %i.fa, align 8, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !4
  call void %i.ag(ptr noundef nonnull %1, i64 noundef %i.fc, i64 noundef %i.fe, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document21ignore_to_value_close(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i8 noundef 93, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.s

.thread53:                                        ; preds = %bb.p
  store i64 -1, ptr %i.ah, align 8
  store ptr @40, ptr %.sroa.4130.0..sroa_idx, align 8
  store i64 28, ptr %.sroa.5131.0..sroa_idx, align 8
  store ptr null, ptr %i.ai, align 8
  store i64 1, ptr %i.e, align 8
  store i64 %.0.val, ptr %.sroa.5127.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5134.0..sroa_idx, align 8
  switch i8 %.sroa.0.016, label %default.unreachable [
    i8 0, label %bb.ab
    i8 1, label %bb.z
    i8 3, label %bb.aa
  ]

.thread56:                                        ; preds = %bb.n, %bb.p
  %i.ff = phi ptr [ %i.cb, %bb.p ], [ %.promoted228, %bb.n ] ; 2 uses
  store i64 -1, ptr %i.al, align 8
  store ptr @37, ptr %.sroa.4123.0..sroa_idx, align 8
  store i64 21, ptr %.sroa.5124.0..sroa_idx, align 8
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !4 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.d, align 8
  store i64 %i.fg, ptr %.sroa.5120.0..sroa_idx, align 8
  store i64 %i.fi, ptr %.sroa.5140.0..sroa_idx, align 8
  store ptr @39, ptr %i.am, align 8
  store i64 1, ptr %i.an, align 8
  store i64 1, ptr %i.ao, align 8
  store i64 %i.fg, ptr %.sroa.5120.0..sroa_idx121, align 8
  store i64 %i.fg, ptr %.sroa.5143.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d) #8
  %i.fj = call noundef zeroext i1 %i.aq(ptr noundef nonnull %1, i64 noundef %i.fg, i64 noundef %i.fg, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8 ; 0 uses
  call void %i.as(ptr noundef nonnull %1, i64 noundef %i.fg, i64 noundef %i.fi, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.u

bb.z:                                             ; preds = %.thread53
  br label %bb.ab

bb.aa:                                            ; preds = %.thread53
  br label %bb.ab

bb.ab:                                            ; preds = %.thread53.thread85, %.thread53.thread82, %.thread53.thread, %.thread53, %bb.aa, %bb.z
  %i.fk = phi ptr [ %i.cb, %bb.z ], [ %.promoted231, %.thread53.thread ], [ %i.cb, %.thread53 ], [ %i.cg, %.thread53.thread82 ], [ %i.ct, %.thread53.thread85 ], [ %i.cb, %bb.aa ] ; 3 uses
  %.sroa.0.016395581 = phi i8 [ %.sroa.0.016, %bb.z ], [ 0, %.thread53.thread ], [ %.sroa.0.016, %.thread53 ], [ 1, %.thread53.thread82 ], [ 3, %.thread53.thread85 ], [ %.sroa.0.016, %bb.aa ]
  %.sroa.029.0 = phi ptr [ @28, %bb.z ], [ @6, %.thread53.thread ], [ @6, %.thread53 ], [ @28, %.thread53.thread82 ], [ @19, %.thread53.thread85 ], [ @19, %bb.aa ]
  store ptr %.sroa.029.0, ptr %i.ai, align 8
  store i64 1, ptr %i.aj, align 8
  %i.fl = load i64, ptr %i.fk, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.ak, align 8
  store i64 %i.fl, ptr %.sroa.5127.0..sroa_idx128, align 8
  store i64 %i.fl, ptr %.sroa.5137.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e) #8
  %i.fm = load i64, ptr %i.fk, align 8, !noundef !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !4
  call void %i.ag(ptr noundef nonnull %1, i64 noundef %i.fm, i64 noundef %i.fo, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.s

.thread60:                                        ; preds = %bb.q, %bb.q
  store i64 -1, ptr %i.ab, align 8
  store ptr @36, ptr %.sroa.478.0..sroa_idx, align 8
  store i64 36, ptr %.sroa.579.0..sroa_idx, align 8
  store i64 1, ptr %i.i, align 8
  store i64 %.0.val, ptr %.sroa.575.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.582.0..sroa_idx, align 8
  switch i8 %.sroa.0.016, label %default.unreachable35 [
    i8 0, label %bb.af
    i8 1, label %bb.ac
    i8 2, label %bb.ad
    i8 3, label %bb.ae
  ]

.thread63:                                        ; preds = %bb.e, %bb.q
  %i.fp = phi ptr [ %i.cb, %bb.q ], [ %i.cg, %bb.e ] ; 3 uses
  store i64 -1, ptr %i.v, align 8
  store ptr @35, ptr %.sroa.471.0..sroa_idx, align 8
  store i64 42, ptr %.sroa.572.0..sroa_idx, align 8
  store i64 1, ptr %i.h, align 8
  store i64 %.0.val, ptr %.sroa.568.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.588.0..sroa_idx, align 8
  store ptr @28, ptr %i.w, align 8
  store i64 1, ptr %i.x, align 8
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.y, align 8
  store i64 %i.fq, ptr %.sroa.568.0..sroa_idx69, align 8
  store i64 %i.fq, ptr %.sroa.591.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.h) #8
  %.val208 = load i64, ptr %i.fp, align 8, !noundef !4
  %i.fr = getelementptr i8, ptr %i.fp, i64 8
  %.val209 = load i64, ptr %i.fr, align 8, !noundef !4
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document20on_inline_table_open(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 %.val208, i64 %.val209, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.u

.thread65:                                        ; preds = %bb.n, %bb.q
  %i.fs = phi ptr [ %i.cb, %bb.q ], [ %.promoted228, %bb.n ] ; 2 uses
  %.val210 = load i64, ptr %i.fs, align 8, !noundef !4
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %.val211 = load i64, ptr %i.ft, align 8, !noundef !4
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document20on_inline_table_open(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 %.val210, i64 %.val211, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.u

bb.ac:                                            ; preds = %.thread60
  br label %bb.af

bb.ad:                                            ; preds = %.thread60
  br label %bb.af

bb.ae:                                            ; preds = %.thread60
  br label %bb.af

bb.af:                                            ; preds = %.thread60.thread90, %.thread60.thread, %.thread60, %bb.ae, %bb.ad, %bb.ac
  %i.fu = phi ptr [ %.promoted231, %.thread60.thread ], [ %i.cb, %bb.ac ], [ %i.cb, %bb.ad ], [ %i.cb, %.thread60 ], [ %i.ct, %.thread60.thread90 ], [ %i.cb, %bb.ae ] ; 3 uses
  %.sroa.0.016406289 = phi i8 [ 0, %.thread60.thread ], [ %.sroa.0.016, %bb.ac ], [ %.sroa.0.016, %bb.ad ], [ %.sroa.0.016, %.thread60 ], [ 3, %.thread60.thread90 ], [ %.sroa.0.016, %bb.ae ]
  %.sroa.021.0 = phi ptr [ @6, %.thread60.thread ], [ @28, %bb.ac ], [ @16, %bb.ad ], [ @6, %.thread60 ], [ @19, %.thread60.thread90 ], [ @19, %bb.ae ]
  store ptr %.sroa.021.0, ptr %i.ac, align 8
  store i64 1, ptr %i.ad, align 8
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.ae, align 8
  store i64 %i.fv, ptr %.sroa.575.0..sroa_idx76, align 8
  store i64 %i.fv, ptr %.sroa.585.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.i) #8
  %i.fw = load i64, ptr %i.fu, align 8, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !4
  call void %i.ag(ptr noundef nonnull %1, i64 noundef %i.fw, i64 noundef %i.fy, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document21ignore_to_value_close(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i8 noundef 125, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.s

.thread69:                                        ; preds = %bb.h, %bb.g, %.thread73, %.thread71, %bb.r, %bb.r
  %i.fz = phi ptr [ %i.cb, %bb.r ], [ %i.gh, %.thread73 ], [ %i.gf, %.thread71 ], [ %i.cb, %bb.r ], [ %.promoted231, %bb.g ], [ %i.ct, %bb.h ] ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ge = load ptr, ptr %i.gd, align 8, !invariant.load !4, !nonnull !4
  call void %i.ge(ptr noundef nonnull %1, i64 noundef %i.ga, i64 noundef %i.gc, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.c

.thread71:                                        ; preds = %bb.e, %bb.r
  %i.gf = phi ptr [ %i.cb, %bb.r ], [ %i.cg, %bb.e ] ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !4 ; 4 uses
  call void %i.bm(ptr noundef nonnull %1, i64 noundef %i.gg, i64 noundef %i.gg, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  call void %.val198(ptr noundef nonnull %1, i64 noundef %i.gg, i64 noundef %i.gg, i8 noundef 39, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %.thread69

.thread73:                                        ; preds = %bb.n, %bb.r
  %i.gh = phi ptr [ %i.cb, %bb.r ], [ %.promoted228, %bb.n ] ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !noundef !4 ; 2 uses
  call void %.val198(ptr noundef nonnull %1, i64 noundef %i.gi, i64 noundef %i.gi, i8 noundef 39, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %.thread69

bb.ag:                                            ; preds = %bb.k, %bb.j
  %i.gj = phi i8 [ %i.cs, %bb.k ], [ %i.cf, %bb.j ] ; 2 uses
  %i.gk = phi ptr [ %i.dn, %bb.k ], [ %i.cc, %bb.j ]
  %i.gl = phi ptr [ %.promoted231, %bb.k ], [ %i.cb, %bb.j ] ; 2 uses
  %i.gm = icmp eq i8 %i.gj, 46
  %i.gn = load i64, ptr %i.gl, align 8, !noundef !4 ; 3 uses
  br i1 %i.gm, label %bb.aj, label %switch.lookup357

bb.ah:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.j
  %i.go = phi ptr [ %i.cb, %bb.j ], [ %i.cg, %bb.e ], [ %i.cg, %bb.e ], [ %i.cg, %bb.e ], [ %i.cg, %bb.e ], [ %i.cg, %bb.e ], [ %i.cg, %bb.e ] ; 2 uses
  store i64 -1, ptr %i.bv, align 8
  store ptr @35, ptr %.sroa.4156.0..sroa_idx, align 8
  store i64 42, ptr %.sroa.5157.0..sroa_idx, align 8
  store i64 1, ptr %i.c, align 8
  store i64 %.0.val, ptr %.sroa.5153.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5160.0..sroa_idx, align 8
  store ptr @28, ptr %i.bw, align 8
  store i64 1, ptr %i.bx, align 8
  %i.gp = load i64, ptr %i.go, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.by, align 8
  store i64 %i.gp, ptr %.sroa.5153.0..sroa_idx154, align 8
  store i64 %i.gp, ptr %.sroa.5163.0..sroa_idx, align 8
  call void %i.bz(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c) #8
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document9on_scalar(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.go, ptr noundef nonnull %1, ptr %.val198, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.u

.loopexit102:                                     ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.j
  %i.gq = phi ptr [ %i.cb, %bb.j ], [ %.promoted228, %bb.n ], [ %.promoted228, %bb.n ], [ %.promoted228, %bb.n ], [ %.promoted228, %bb.n ], [ %.promoted228, %bb.n ], [ %.promoted228, %bb.n ]
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document9on_scalar(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gq, ptr noundef nonnull %1, ptr %.val198, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.u

bb.ai:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.j
  %i.gr = phi i8 [ %i.cf, %bb.j ], [ %i.cx, %bb.h ], [ %i.cx, %bb.h ], [ %i.cx, %bb.h ], [ %i.cx, %bb.h ], [ %i.cx, %bb.h ], [ %i.cx, %bb.h ] ; 2 uses
  %i.gs = phi ptr [ %i.cc, %bb.j ], [ %i.cu, %bb.h ], [ %i.cu, %bb.h ], [ %i.cu, %bb.h ], [ %i.cu, %bb.h ], [ %i.cu, %bb.h ], [ %i.cu, %bb.h ]
  %i.gt = phi ptr [ %i.cb, %bb.j ], [ %i.ct, %bb.h ], [ %i.ct, %bb.h ], [ %i.ct, %bb.h ], [ %i.ct, %bb.h ], [ %i.ct, %bb.h ], [ %i.ct, %bb.h ] ; 3 uses
  store i64 -1, ptr %i.bp, align 8
  store ptr @41, ptr %.sroa.4149.0..sroa_idx, align 8
  store i64 37, ptr %.sroa.5150.0..sroa_idx, align 8
  store i64 1, ptr %i.b, align 8
  store i64 %.0.val, ptr %.sroa.5146.0..sroa_idx, align 8
  store i64 %.8.val, ptr %.sroa.5166.0..sroa_idx, align 8
  store ptr @19, ptr %i.bq, align 8
  store i64 1, ptr %i.br, align 8
  %i.gu = load i64, ptr %i.gt, align 8, !noundef !4 ; 4 uses
  store i64 1, ptr %i.bs, align 8
  store i64 %i.gu, ptr %.sroa.5146.0..sroa_idx147, align 8
  store i64 %i.gu, ptr %.sroa.5169.0..sroa_idx, align 8
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b) #8
  %i.gv = icmp eq i8 %i.gr, 46
  br i1 %i.gv, label %bb.ak, label %switch.lookup361

bb.aj:                                            ; preds = %bb.ag
  call void %i.bo(ptr noundef nonnull %1, i64 noundef %i.gn, i64 noundef %i.gn, i8 noundef 0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  %i.gw = load ptr, ptr %0, align 8, !alias.scope !282, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.gx = load i64, ptr %i.bt, align 8, !alias.scope !282, !noundef !4 ; 2 uses
  %i.gy = ptrtoint ptr %i.gk to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = udiv i64 %i.ha, 24
  %i.hc = add nsw i64 %i.hb, -1                   ; 2 uses
  %.pn.i = call i64 @llvm.umin.i64(i64 %i.hc, i64 %i.gx)
  %storemerge.i = call i64 @llvm.usub.sat.i64(i64 %i.gx, i64 %i.hc)
  %storemerge2.i = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %.pn.i
  store ptr %storemerge2.i, ptr %i.o, align 8, !alias.scope !282
  store i64 %storemerge.i, ptr %i.p, align 8, !alias.scope !282
  br label %bb.t

switch.lookup357:                                 ; preds = %bb.ag
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !noundef !4
  %i.hf = zext nneg i8 %i.gj to i64
  %i.hg = getelementptr i8, ptr @switch.table._RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document20on_inline_table_open.36, i64 %i.hf
  %switch.gep358 = getelementptr i8, ptr %i.hg, i64 -1
  %switch.load359 = load i8, ptr %switch.gep358, align 1
  call void %i.bo(ptr noundef nonnull %1, i64 noundef %i.gn, i64 noundef %i.he, i8 noundef %switch.load359, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.t

bb.ak:                                            ; preds = %bb.ai
  call void %i.bo(ptr noundef nonnull %1, i64 noundef %i.gu, i64 noundef %i.gu, i8 noundef 0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  %i.hh = load ptr, ptr %0, align 8, !alias.scope !285, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.hi = load i64, ptr %i.bt, align 8, !alias.scope !285, !noundef !4 ; 2 uses
  %i.hj = ptrtoint ptr %i.gs to i64
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = udiv i64 %i.hl, 24
  %i.hn = add nsw i64 %i.hm, -1                   ; 2 uses
  %.pn.i201 = call i64 @llvm.umin.i64(i64 %i.hn, i64 %i.hi)
  %storemerge.i202 = call i64 @llvm.usub.sat.i64(i64 %i.hi, i64 %i.hn)
  %storemerge2.i203 = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %.pn.i201
  store ptr %storemerge2.i203, ptr %i.o, align 8, !alias.scope !285
  store i64 %storemerge.i202, ptr %i.p, align 8, !alias.scope !285
  br label %bb.t

switch.lookup361:                                 ; preds = %bb.ai
  %i.ho = load i64, ptr %i.gt, align 8, !noundef !4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !noundef !4
  %i.hr = zext nneg i8 %i.gr to i64
  %i.hs = getelementptr i8, ptr @switch.table._RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document20on_inline_table_open.36, i64 %i.hr
  %switch.gep362 = getelementptr i8, ptr %i.hs, i64 -1
  %switch.load363 = load i8, ptr %switch.gep362, align 1
  call void %i.bo(ptr noundef nonnull %1, i64 noundef %i.ho, i64 noundef %i.hq, i8 noundef %switch.load363, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.t

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit: ; preds = %.lr.ph.i
  %i.ht = getelementptr inbounds i8, ptr %i.di, i64 -16
  %i.hu = load i64, ptr %i.ht, align 8, !noundef !4
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i, %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit
  %.sroa.0186.0 = phi i64 [ %i.hu, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit ], [ 0, %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_.exit.i ] ; 8 uses
  switch i8 %.sroa.0.0.lcssa, label %default.unreachable [
    i8 0, label %bb.al
    i8 1, label %bb.am
    i8 2, label %.sink.split
    i8 3, label %bb.al
  ]

.sink.split:                                      ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread, %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.hw = load ptr, ptr %i.hv, align 8, !invariant.load !4, !nonnull !4
  call void %i.hw(ptr noundef nonnull %1, i64 noundef %.sroa.0186.0, i64 noundef %.sroa.0186.0, i8 noundef 39, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.hx, align 8
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @42, ptr %.sroa.4177.0..sroa_idx, align 8
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 21, ptr %.sroa.5178.0..sroa_idx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5174.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.a, align 8
  store i64 %.0.val, ptr %.sroa.5174.0..sroa_idx, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.8.val, ptr %.sroa.5181.0..sroa_idx, align 8
  store ptr @44, ptr %i.hy, align 8
  store i64 1, ptr %i.hz, align 8
  store i64 1, ptr %i.ia, align 8
  store i64 %.sroa.0186.0, ptr %.sroa.5174.0..sroa_idx175, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.0186.0, ptr %.sroa.5184.0..sroa_idx, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !invariant.load !4, !nonnull !4
  call void %i.ic(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #8
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ie = load ptr, ptr %i.id, align 8, !invariant.load !4, !nonnull !4
  call void %i.ie(ptr noundef nonnull %1, i64 noundef %.sroa.0186.0, i64 noundef %.sroa.0186.0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.c

bb.am:                                            ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ig = load ptr, ptr %i.if, align 8, !invariant.load !4, !nonnull !4
  call void %i.ig(ptr noundef nonnull %1, i64 noundef %.sroa.0186.0, i64 noundef %.sroa.0186.0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %.sink.split
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document20on_missing_std_table(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 %.0.val, i64 %.8.val, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @45, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 18, ptr %.sroa.54.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.a, align 8
  store i64 %.0.val, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.8.val, ptr %.sroa.57.0..sroa_idx, align 8
  store ptr @39, ptr %i.c, align 8
  store i64 1, ptr %i.d, align 8
  store i64 1, ptr %i.e, align 8
  store i64 %.0.val, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.0.val, ptr %.sroa.510.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4
  call void %i.g(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !4, !nonnull !4
  call void %i.i(ptr noundef nonnull %1, i64 noundef %.0.val, i64 noundef %.8.val, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document17ignore_to_newline(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document21ignore_to_value_close(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef range(i8 93, 126) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %3, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not13 = icmp eq i64 %i.c, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4
  %i.h = icmp eq i8 %1, 125
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4 ; 5 uses
  %i.k = icmp eq i8 %1, 93
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.l = phi i64 [ %i.c, %.lr.ph ], [ %i.aq, %bb.l ]
  %.sroa.0.015 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.l ] ; 9 uses
  %.sroa.04.014 = phi i64 [ 0, %.lr.ph ], [ %.sroa.04.1, %bb.l ] ; 9 uses
  %i.m = load ptr, ptr %i.a, align 8, !nonnull !4, !align !5, !noundef !4 ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = add i64 %i.l, -1                         ; 8 uses
  store ptr %i.n, ptr %i.a, align 8, !captures !6
  store i64 %i.o, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !7, !noundef !4
  switch i8 %i.q, label %bb.c [
    i8 46, label %bb.d
    i8 61, label %bb.d
    i8 44, label %bb.d
    i8 91, label %bb.e
    i8 93, label %bb.f
    i8 123, label %bb.g
    i8 125, label %bb.h
    i8 32, label %bb.i
    i8 35, label %bb.j
    i8 10, label %bb.k
    i8 39, label %bb.d
    i8 34, label %bb.d
    i8 1, label %bb.d
    i8 2, label %bb.d
    i8 3, label %bb.d
    i8 4, label %.loopexit
  ]

.loopexit.sink.split:                             ; preds = %bb.h, %bb.f
  %.sink27 = phi i64 [ 80, %bb.f ], [ 64, %bb.h ]
  %i.r = load i64, ptr %i.m, align 8, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %.sink27
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.v(ptr noundef nonnull %2, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.b, %.loopexit.sink.split, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = load i64, ptr %i.m, align 8, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  tail call void %i.j(ptr noundef nonnull %2, i64 noundef %i.w, i64 noundef %i.y, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.m, align 8, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  tail call void %i.j(ptr noundef nonnull %2, i64 noundef %i.z, i64 noundef %i.ab, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8
  %i.ac = add i64 %.sroa.0.015, 1
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.ad = icmp eq i64 %.sroa.0.015, 0
  %or.cond = and i1 %i.k, %i.ad
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %i.m, align 8, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4
  tail call void %i.j(ptr noundef nonnull %2, i64 noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8
  %i.ah = add i64 %.sroa.04.014, 1
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.ai = icmp eq i64 %.sroa.04.014, 0
  %or.cond1 = and i1 %i.h, %i.ai
  br i1 %or.cond1, label %.loopexit.sink.split, label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.aj = load i64, ptr %i.m, align 8, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  tail call void %i.g(ptr noundef nonnull %2, i64 noundef %i.aj, i64 noundef %i.al, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %.val = load i64, ptr %i.m, align 8, !noundef !4
  %i.am = getelementptr i8, ptr %i.m, i64 8
  %.val9 = load i64, ptr %i.am, align 8, !noundef !4
  tail call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document10on_comment(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 %.val, i64 %.val9, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %5)
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.an = load i64, ptr %i.m, align 8, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4
  tail call void %i.e(ptr noundef nonnull %2, i64 noundef %i.an, i64 noundef %i.ap, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.d
  %i.aq = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.m ], [ %i.o, %bb.g ], [ %i.o, %bb.n ], [ %i.o, %bb.i ], [ %.pre, %bb.j ], [ %i.o, %bb.k ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.04.1 = phi i64 [ %.sroa.04.014, %bb.e ], [ %.sroa.04.014, %bb.m ], [ %i.ah, %bb.g ], [ %i.ay, %bb.n ], [ %.sroa.04.014, %bb.i ], [ %.sroa.04.014, %bb.j ], [ %.sroa.04.014, %bb.k ], [ %.sroa.04.014, %bb.d ]
  %.sroa.0.1 = phi i64 [ %i.ac, %bb.e ], [ %i.au, %bb.m ], [ %.sroa.0.015, %bb.g ], [ %.sroa.0.015, %bb.n ], [ %.sroa.0.015, %bb.i ], [ %.sroa.0.015, %bb.j ], [ %.sroa.0.015, %bb.k ], [ %.sroa.0.015, %bb.d ]
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.m:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %i.m, align 8, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  tail call void %i.j(ptr noundef nonnull %2, i64 noundef %i.ar, i64 noundef %i.at, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8
  %i.au = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.015, i64 1)
  br label %bb.l

bb.n:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.m, align 8, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4
  tail call void %i.j(ptr noundef nonnull %2, i64 noundef %i.av, i64 noundef %i.ax, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8
  %i.ay = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.04.014, i64 1)
  br label %bb.l
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_missing_expression_key(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 %.0.val, i64 %.8.val, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @46, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 22, ptr %.sroa.54.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.a, align 8
  store i64 %.0.val, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.8.val, ptr %.sroa.57.0..sroa_idx, align 8
  store ptr @6, ptr %i.c, align 8
  store i64 1, ptr %i.d, align 8
  store i64 1, ptr %i.e, align 8
  store i64 %.0.val, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.0.val, ptr %.sroa.510.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4
  call void %i.g(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !4, !nonnull !4
  call void %i.i(ptr noundef nonnull %1, i64 noundef %.0.val, i64 noundef %.8.val, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document17ignore_to_newline(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3key(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 11, 14) %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %4, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted = load ptr, ptr %i.b, align 8        ; 2 uses
  %.promoted60 = load i64, ptr %i.c, align 8      ; 2 uses
  %.not61 = icmp eq i64 %.promoted60, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4
  br label %bb.c

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.lcssa36 = phi ptr [ %.promoted, %bb.a ], [ %i.z, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.j = load ptr, ptr %0, align 8, !alias.scope !288, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = ptrtoint ptr %.lcssa36 to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = udiv i64 %i.n, 24                        ; 3 uses
  %i.p = load i64, ptr %i.k, align 8, !alias.scope !288, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.o, %i.p
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit, !prof !49

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #9, !noalias !288
  unreachable

_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit: ; preds = %._crit_edge
  %i.q = icmp ult i64 %i.n, 24
  br i1 %i.q, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit
  %.idx = mul nuw nsw i64 %i.o, 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i
  %i.s = phi ptr [ %i.t, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i ], [ %i.r, %.lr.ph.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.v = load i8, ptr %i.u, align 8, !range !7, !alias.scope !291, !noalias !294, !noundef !4
  switch i8 %i.v, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit [
    i8 32, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i
    i8 35, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i
    i8 10, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i
    i8 4, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i
  ]

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.w = icmp eq ptr %i.j, %i.t
  br i1 %i.w, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.z, %bb.h ] ; 8 uses
  %i.y = phi i64 [ %.promoted60, %.lr.ph ], [ %i.aa, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 4 uses
  %i.aa = add i64 %i.y, -1                        ; 3 uses
  store ptr %i.z, ptr %i.b, align 8, !captures !6
  store i64 %i.aa, ptr %i.c, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !7, !noundef !4 ; 5 uses
  switch i8 %i.ac, label %bb.e [
    i8 46, label %bb.f
    i8 61, label %bb.g
    i8 44, label %bb.g
    i8 91, label %bb.g
    i8 93, label %bb.g
    i8 123, label %bb.g
    i8 125, label %bb.g
    i8 32, label %bb.h
    i8 35, label %bb.g
    i8 10, label %bb.g
    i8 39, label %.loopexit
    i8 34, label %.loopexit
    i8 1, label %.loopexit
    i8 2, label %.loopexit
    i8 3, label %.loopexit131
    i8 4, label %bb.g
  ]

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit: ; preds = %.lr.ph.i
  %i.ad = load i64, ptr %i.t, align 8, !noundef !4
  %i.ae = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i, %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit
  %.sroa.03.0 = phi i64 [ %i.ad, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit ], [ 0, %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i ]
  %.sroa.5.0 = phi i64 [ %i.af, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit ], [ 0, %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_.exit.i ] ; 3 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %2, ptr %.sroa.515.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.a, align 8
  store i64 %.sroa.03.0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.518.0..sroa_idx, align 8
  store ptr @6, ptr %i.ah, align 8
  store i64 1, ptr %i.ai, align 8
  store i64 1, ptr %i.aj, align 8
  store i64 %.sroa.5.0, ptr %.sroa.512.0..sroa_idx13, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.0, ptr %.sroa.521.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !4, !nonnull !4
  call void %i.al(ptr noundef nonnull %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.loopexit, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread
  %.sroa.0.0 = phi i1 [ false, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread ], [ %i.bc, %.loopexit ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.am = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  tail call void %i.g(ptr noundef nonnull %3, i64 noundef %i.am, i64 noundef %i.am, i8 noundef 0, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.an = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  tail call void %i.g(ptr noundef nonnull %3, i64 noundef %i.an, i64 noundef %i.an, i8 noundef 0, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6) #8
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !297, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !297, !noundef !4 ; 2 uses
  %i.ar = ptrtoint ptr %i.z to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = udiv i64 %i.at, 24
  %i.av = add nsw i64 %i.au, -1                   ; 2 uses
  %.pn.i = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.aq)
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.av)
  %storemerge2.i = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pn.i
  store ptr %storemerge2.i, ptr %i.b, align 8, !alias.scope !297
  store i64 %storemerge.i, ptr %i.c, align 8, !alias.scope !297
  br label %bb.d

bb.h:                                             ; preds = %bb.c, %bb.f
  %.sink106 = phi ptr [ %i.i, %bb.f ], [ %i.e, %bb.c ]
  %i.aw = load i64, ptr %i.x, align 8, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  tail call void %.sink106(ptr noundef nonnull %3, i64 noundef %i.aw, i64 noundef %i.ay, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6) #8
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit131:                                     ; preds = %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %.loopexit131
  %.sroa.02.0 = phi i8 [ 0, %.loopexit131 ], [ %i.ac, %bb.c ], [ %i.ac, %bb.c ], [ %i.ac, %bb.c ], [ %i.ac, %bb.c ]
  %i.az = load i64, ptr %i.x, align 8, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !4
  tail call void %i.g(ptr noundef nonnull %3, i64 noundef %i.az, i64 noundef %i.bb, i8 noundef %.sroa.02.0, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6) #8
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document12opt_dot_keys(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %6)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document5value(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = alloca [88 x i8], align 8                ; 12 uses
  %i.c = alloca [88 x i8], align 8                ; 12 uses
  %i.d = alloca [88 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.promoted104 = load i64, ptr %i.f, align 8     ; 2 uses
  %.not105 = icmp eq i64 %.promoted104, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.522.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.432.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.lcssa80 = phi ptr [ %.promoted, %bb.a ], [ %i.ae, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.o = load ptr, ptr %0, align 8, !alias.scope !300, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %.lcssa80 to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = udiv i64 %i.s, 24                        ; 3 uses
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !300, !noundef !4 ; 2 uses
  %.not.i = icmp ugt i64 %i.t, %i.u
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit, !prof !49

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #9, !noalias !300
  unreachable

_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit: ; preds = %._crit_edge
  %i.v = icmp ult i64 %i.s, 24
  br i1 %i.v, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit
  %.idx = mul nuw nsw i64 %i.t, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i
  %i.x = phi ptr [ %i.y, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i ], [ %i.w, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.aa = load i8, ptr %i.z, align 8, !range !7, !alias.scope !303, !noalias !306, !noundef !4
  switch i8 %i.aa, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit [
    i8 32, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i
    i8 35, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i
    i8 10, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i
    i8 4, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i
  ]

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ab = icmp eq ptr %i.o, %i.y
  br i1 %i.ab, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.ac = phi ptr [ %.promoted, %.lr.ph ], [ %i.ae, %bb.e ] ; 14 uses
  %i.ad = phi i64 [ %.promoted104, %.lr.ph ], [ %i.af, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 4 uses
  %i.af = add i64 %i.ad, -1                       ; 3 uses
  store ptr %i.ae, ptr %i.e, align 8, !captures !6
  store i64 %i.af, ptr %i.f, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !7, !noundef !4
  switch i8 %i.ah, label %bb.f [
    i8 61, label %bb.e
    i8 46, label %bb.g
    i8 4, label %bb.h
    i8 44, label %bb.h
    i8 91, label %bb.i
    i8 93, label %bb.j
    i8 123, label %bb.k
    i8 125, label %bb.l
    i8 32, label %bb.h
    i8 35, label %bb.h
    i8 10, label %bb.h
    i8 39, label %bb.g
    i8 34, label %bb.g
    i8 1, label %bb.g
    i8 2, label %bb.g
    i8 3, label %bb.g
  ], !prof !309

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit: ; preds = %.lr.ph.i
  %i.ai = load i64, ptr %i.y, align 8, !noundef !4
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i, %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit
  %.sroa.5.0 = phi i64 [ %i.ak, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit ], [ 0, %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.ai, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit ], [ 0, %_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_.exit ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_.exit.i ]
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 -1, ptr %i.al, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @48, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 13, ptr %.sroa.513.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %i.d, align 8
  store i64 %.sroa.0.0, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.516.0..sroa_idx, align 8
  store ptr @16, ptr %i.am, align 8
  store i64 1, ptr %i.an, align 8
  store i64 1, ptr %i.ao, align 8
  store i64 %.sroa.5.0, ptr %.sroa.510.0..sroa_idx11, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.5.0, ptr %.sroa.519.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !4, !nonnull !4
  call void %i.aq(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_.exit.thread
  ret void

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %i.g, align 8
  store ptr @49, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 9, ptr %.sroa.526.0..sroa_idx, align 8
  %i.ar = load i64, ptr %i.ac, align 8, !noundef !4 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 3 uses
  store i64 1, ptr %i.c, align 8
  store i64 %i.ar, ptr %.sroa.522.0..sroa_idx, align 8
  store i64 %i.at, ptr %.sroa.432.0..sroa_idx, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  store i64 0, ptr %i.i, align 8
  store i64 1, ptr %i.j, align 8
  store i64 %i.ar, ptr %.sroa.522.0..sroa_idx23, align 8
  store i64 %i.at, ptr %.sroa.432.0..sroa_idx33, align 8
  call void %i.l(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c) #8
  call void %i.n(ptr noundef nonnull %1, i64 noundef %i.ar, i64 noundef %i.at, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val = load ptr, ptr %i.au, align 8
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document9on_scalar(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noundef nonnull %1, ptr %.val, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.d

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.av = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !4, !nonnull !4
  call void %i.ax(ptr noundef nonnull %1, i64 noundef %i.av, i64 noundef %i.av, i8 noundef 0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !310, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !310, !noundef !4 ; 2 uses
  %i.bb = ptrtoint ptr %i.ae to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = udiv i64 %i.bd, 24
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %.pn.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.ba)
  %storemerge.i = call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.bf)
  %storemerge2.i = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.pn.i
  store ptr %storemerge2.i, ptr %i.e, align 8, !alias.scope !310
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !310
  br label %bb.d

bb.i:                                             ; preds = %bb.c
  %.val63 = load i64, ptr %i.ac, align 8, !noundef !4
  %i.bg = getelementptr i8, ptr %i.ac, i64 8
  %.val64 = load i64, ptr %i.bg, align 8, !noundef !4
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13on_array_open(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 %.val63, i64 %.val64, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.d

bb.j:                                             ; preds = %bb.c
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.bh, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @37, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 21, ptr %.sroa.541.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.537.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bl = load i64, ptr %i.ac, align 8, !noundef !4 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.a, align 8
  store i64 %i.bl, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bn, ptr %.sroa.557.0..sroa_idx, align 8
  store ptr @39, ptr %i.bi, align 8
  store i64 1, ptr %i.bj, align 8
  store i64 1, ptr %i.bk, align 8
  store i64 %i.bl, ptr %.sroa.537.0..sroa_idx38, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.bl, ptr %.sroa.560.0..sroa_idx, align 8
  call void %i.l(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %1, i64 noundef %i.bl, i64 noundef %i.bl, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !4, !nonnull !4
  call void %i.bs(ptr noundef nonnull %1, i64 noundef %i.bl, i64 noundef %i.bn, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.d

bb.k:                                             ; preds = %bb.c
  %.val65 = load i64, ptr %i.ac, align 8, !noundef !4
  %i.bt = getelementptr i8, ptr %i.ac, i64 8
  %.val66 = load i64, ptr %i.bt, align 8, !noundef !4
  call fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document20on_inline_table_open(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 %.val65, i64 %.val66, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
  br label %bb.d

bb.l:                                             ; preds = %bb.c
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 -1, ptr %i.bu, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @20, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 28, ptr %.sroa.548.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.544.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.by = load i64, ptr %i.ac, align 8, !noundef !4 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 2 uses
  store i64 1, ptr %i.b, align 8
  store i64 %i.by, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ca, ptr %.sroa.551.0..sroa_idx, align 8
  store ptr @22, ptr %i.bv, align 8
  store i64 1, ptr %i.bw, align 8
  store i64 1, ptr %i.bx, align 8
  store i64 %i.by, ptr %.sroa.544.0..sroa_idx45, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.by, ptr %.sroa.554.0..sroa_idx, align 8
  call void %i.l(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b) #8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !4, !nonnull !4
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef nonnull %1, i64 noundef %i.by, i64 noundef %i.by, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8 ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !invariant.load !4, !nonnull !4
  call void %i.cf(ptr noundef nonnull %1, i64 noundef %i.by, i64 noundef %i.ca, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document9on_scalar(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %2, ptr nofree readonly captures(none) %.112.val, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noundef !4 ; 5 uses
  switch i8 %i.e, label %.loopexit1 [
    i8 46, label %.preheader
    i8 61, label %bb.b
    i8 44, label %bb.b
    i8 91, label %bb.b
    i8 93, label %bb.b
    i8 123, label %bb.b
    i8 125, label %bb.b
    i8 32, label %bb.b
    i8 35, label %bb.b
    i8 10, label %bb.b
    i8 39, label %.loopexit
    i8 34, label %.loopexit
    i8 1, label %.loopexit
    i8 2, label %.loopexit
    i8 3, label %.preheader
    i8 4, label %bb.b
  ], !prof !313

.preheader:                                       ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted3 = load i64, ptr %i.g, align 8       ; 2 uses
  %.not4 = icmp eq i64 %.promoted3, 0
  br i1 %.not4, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.promoted = load ptr, ptr %i.f, align 8
  br label %.lr.ph

.loopexit1:                                       ; preds = %.lr.ph, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #9
  unreachable

.loopexit:                                        ; preds = %.backedge, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.c, %bb.d, %bb.a, %bb.a, %bb.a, %.preheader, %bb.a
  %.sroa.6.1 = phi i64 [ %i.c, %bb.a ], [ %i.c, %bb.a ], [ %i.c, %bb.a ], [ %i.c, %bb.a ], [ %i.c, %.preheader ], [ %.sroa.6.0.be, %.backedge ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %.lr.ph ], [ %.sroa.6.05, %bb.c ], [ %.sroa.6.05, %bb.d ]
  %.sroa.0.0 = phi i8 [ %i.e, %bb.a ], [ %i.e, %bb.a ], [ %i.e, %bb.a ], [ %i.e, %bb.a ], [ 0, %.preheader ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.lr.ph ], [ 0, %.backedge ]
  tail call void %.112.val(ptr noundef nonnull %2, i64 noundef %i.a, i64 noundef %.sroa.6.1, i8 noundef %.sroa.0.0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.sroa.6.05 = phi i64 [ %.sroa.6.0.be, %.backedge ], [ %i.c, %.lr.ph.preheader ] ; 15 uses
  %i.h = phi ptr [ %i.p, %.backedge ], [ %.promoted, %.lr.ph.preheader ] ; 4 uses
  %i.i = phi i64 [ %i.q, %.backedge ], [ %.promoted3, %.lr.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !7, !noundef !4
  switch i8 %i.k, label %.loopexit1 [
    i8 46, label %.backedge
    i8 61, label %.loopexit
    i8 44, label %.loopexit
    i8 91, label %.loopexit
    i8 93, label %.loopexit
    i8 123, label %.loopexit
    i8 125, label %.loopexit
    i8 32, label %bb.c
    i8 35, label %.loopexit
    i8 10, label %.loopexit
    i8 39, label %.loopexit
    i8 34, label %.loopexit
    i8 1, label %.loopexit
    i8 2, label %.loopexit
    i8 3, label %.backedge
    i8 4, label %.loopexit
  ]

bb.c:                                             ; preds = %.lr.ph
  %.not7 = icmp eq i64 %i.i, 1
  br i1 %.not7, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !7, !noundef !4
  %i.n = icmp eq i8 %i.m, 3
  br i1 %i.n, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.d, %.lr.ph, %.lr.ph
  %.sink38 = phi i64 [ 8, %.lr.ph ], [ 8, %.lr.ph ], [ 32, %bb.d ]
  %.sink37 = phi i64 [ 24, %.lr.ph ], [ 24, %.lr.ph ], [ 48, %bb.d ]
  %.sink = phi i64 [ -1, %.lr.ph ], [ -1, %.lr.ph ], [ -2, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink38
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink37 ; 2 uses
  %i.q = add i64 %i.i, %.sink                     ; 3 uses
  %.sroa.6.0.be = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  store ptr %i.p, ptr %i.f, align 8
  store i64 %i.q, ptr %i.g, align 8
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document9parse_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %1, ptr %i.e, align 8
  %i.f = call fastcc noundef zeroext i1 @_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3key(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 11, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !314, !noalias !317, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.i = load i64, ptr %i.e, align 8, !alias.scope !314, !noalias !317, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !7, !noalias !319, !noundef !4
  %i.l = icmp eq i8 %i.k, 4
  br i1 %i.l, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.i, -1                         ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.n, align 8, !noalias !319
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @47, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !319
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 18, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !319
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load i64, ptr %i.h, align 8, !noalias !319, !noundef !4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !319, !noundef !4 ; 2 uses
  store i64 1, ptr %i.a, align 8, !noalias !319
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !319
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.t, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !319
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !noalias !319
  store i64 0, ptr %i.p, align 8, !noalias !319
  store i64 1, ptr %i.q, align 8, !noalias !319
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx4.i, align 8, !noalias !319
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.r, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !319
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !alias.scope !317, !noalias !314, !nonnull !4
  call void %i.v(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #8, !noalias !319, !inline_history !15
  call void %.val(ptr noundef nonnull %2, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8, !noalias !314, !inline_history !15
  %.not14.i815 = icmp eq i64 %i.m, 0
  br i1 %.not14.i815, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %.not14.i = icmp eq i64 %i.y, 0
  br i1 %.not14.i, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof.exit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.d, %thread-pre-split.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph.backedge
  %i.w = phi i64 [ %i.y, %.lr.ph.backedge ], [ %i.m, %bb.c ]
  %.pn = phi ptr [ %i.x, %.lr.ph.backedge ], [ %i.h, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pn, i64 24 ; 2 uses
  %i.y = add i64 %i.w, -1                         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !range !7, !noalias !314, !noundef !4
  %i.ab = icmp eq i8 %i.aa, 4
  br i1 %i.ab, label %bb.d, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %.lr.ph
  %i.ac = load i64, ptr %i.x, align 8, !noalias !314, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !314, !noundef !4
  call void %.val(ptr noundef nonnull %2, i64 noundef %i.ac, i64 noundef %i.ae, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) #8, !noalias !314, !inline_history !15
  %.not14.i8 = icmp eq i64 %i.y, 0
  br i1 %.not14.i8, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof.exit, label %.lr.ph.backedge

_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof.exit: ; preds = %thread-pre-split.i, %bb.d, %bb.c, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint }
attributes #9 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{!"address", !"read_provenance"}
!7 = !{i8 1, i8 126}
!8 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2000}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof: argument 0"}
!11 = distinct !{!11, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof: argument 1"}
!14 = !{!10, !13}
!15 = distinct !{null}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!18 = distinct !{!18, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!21 = distinct !{!21, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!22 = !{!20, !17}
!23 = !{!24}
!24 = distinct !{!24, !18, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!25 = !{!20, !17, !24}
!26 = !{!17, !24}
!27 = distinct !{null}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_12opt_dot_keys0EB6_: argument 0"}
!30 = distinct !{!30, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_12opt_dot_keys0EB6_"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek: argument 0"}
!33 = distinct !{!33, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!36 = distinct !{!36, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!39 = distinct !{!39, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!40 = !{!38, !35, !41}
!41 = distinct !{!41, !36, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!42 = !{!38, !35}
!43 = !{!41}
!44 = !{!35, !41}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_: argument 0"}
!48 = distinct !{!48, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_"}
!49 = !{!"branch_weights", i32 4001, i32 4000000}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document13on_array_open0E0B1B_: argument 0"}
!52 = distinct !{!52, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document13on_array_open0E0B1B_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document13on_array_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_: argument 0"}
!55 = distinct !{!55, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document13on_array_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8document: argument 0"}
!58 = distinct !{!58, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8document"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8document: argument 1"}
!61 = !{!62}
!62 = distinct !{!62, !58, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8document: argument 2"}
!63 = !{!57, !62}
!64 = !{!57, !60}
!65 = !{!60, !62}
!66 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 1, i32 2000, i32 1, i32 1, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document17on_expression_dot: argument 0"}
!69 = distinct !{!69, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document17on_expression_dot"}
!70 = !{!57, !60, !62}
!71 = !{!68, !72, !57, !60}
!72 = distinct !{!72, !69, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document17on_expression_dot: argument 1"}
!73 = distinct !{null, null}
!74 = !{!75, !68, !57}
!75 = distinct !{!75, !76, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek: argument 0"}
!76 = distinct !{!76, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek"}
!77 = !{!72, !78, !60, !62}
!78 = distinct !{!78, !69, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document17on_expression_dot: argument 2"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!81 = distinct !{!81, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!84 = distinct !{!84, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!85 = !{!68, !57}
!86 = !{!83, !80, !68, !57}
!87 = !{!88, !72, !78, !60, !62}
!88 = distinct !{!88, !81, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!89 = !{!83, !80, !88, !68, !72, !57, !60}
!90 = !{!80, !88, !68, !72, !57, !60}
!91 = !{!80, !68, !72, !57, !60}
!92 = distinct !{null, null, null}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_17on_expression_dot0EB6_: argument 0"}
!95 = distinct !{!95, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_17on_expression_dot0EB6_"}
!96 = !{!94, !68, !72, !57, !60}
!97 = !{!94, !68, !57}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 0"}
!100 = distinct !{!100, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep"}
!101 = !{!99, !102, !68, !72, !57, !60}
!102 = distinct !{!102, !100, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 1"}
!103 = distinct !{null, null, null}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!106 = distinct !{!106, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!109 = distinct !{!109, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!110 = !{!108, !105, !111, !99, !102, !68, !72, !57, !60}
!111 = distinct !{!111, !106, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!112 = !{!108, !105, !99, !68, !57}
!113 = !{!111, !102, !114, !72, !78, !60, !62}
!114 = distinct !{!114, !100, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 2"}
!115 = !{!105, !111, !99, !102, !68, !72, !57, !60}
!116 = !{!105, !99, !102, !68, !72, !57, !60}
!117 = distinct !{null, null, null, null}
!118 = !{!68, !72, !78, !57, !60, !62}
!119 = distinct !{null}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 0"}
!122 = distinct !{!122, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep"}
!123 = !{!121, !124, !57, !60}
!124 = distinct !{!124, !122, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 1"}
!125 = distinct !{null, null}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!128 = distinct !{!128, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!131 = distinct !{!131, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!132 = !{!130, !127, !133, !121, !124, !57, !60}
!133 = distinct !{!133, !128, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!134 = !{!130, !127, !121, !57}
!135 = !{!133, !124, !136, !60, !62}
!136 = distinct !{!136, !122, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 2"}
!137 = !{!127, !133, !121, !124, !57, !60}
!138 = !{!127, !121, !124, !57, !60}
!139 = distinct !{null, null, null}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8on_table: argument 0"}
!142 = distinct !{!142, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8on_table"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8on_table: argument 1"}
!145 = !{!146}
!146 = distinct !{!146, !142, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8on_table: argument 2"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_8on_table0EB6_: argument 0"}
!149 = distinct !{!149, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_8on_table0EB6_"}
!150 = !{!148, !141, !144, !146, !151, !57, !60}
!151 = distinct !{!151, !142, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document8on_table: argument 3"}
!152 = !{!148, !141, !57}
!153 = !{!144, !146, !151, !60, !62}
!154 = !{!141, !146, !151, !57, !60}
!155 = !{!146, !60}
!156 = !{!141, !144, !151, !57, !62}
!157 = !{!141, !144, !146, !57, !60}
!158 = distinct !{null, null}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!161 = distinct !{!161, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!164 = distinct !{!164, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!165 = !{!163, !160, !166, !141, !144, !146, !57, !60}
!166 = distinct !{!166, !161, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!167 = !{!163, !160, !141, !57}
!168 = !{!166, !144, !146, !151, !60, !62}
!169 = !{!160, !166, !141, !144, !146, !57, !60}
!170 = !{!160, !141, !144, !146, !57, !60}
!171 = distinct !{null, null, null}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!174 = distinct !{!174, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!177 = distinct !{!177, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!178 = !{!141, !57}
!179 = !{!176, !173, !141, !57}
!180 = !{!181, !144, !146, !151, !60, !62}
!181 = distinct !{!181, !174, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!182 = !{!176, !173, !181, !141, !144, !146, !57, !60}
!183 = !{!173, !181, !141, !144, !146, !57, !60}
!184 = !{!173, !141, !144, !146, !57, !60}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_8on_tables_0EB6_: argument 0"}
!187 = distinct !{!187, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_8on_tables_0EB6_"}
!188 = !{!186, !141, !144, !146, !57, !60}
!189 = !{!186, !141, !57}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_8on_tables0_0EB6_: argument 0"}
!192 = distinct !{!192, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_8on_tables0_0EB6_"}
!193 = !{!191, !141, !144, !146, !57, !60}
!194 = !{!191, !141, !57}
!195 = !{!141, !146, !57, !60}
!196 = !{!141, !144, !146, !151, !57, !60, !62}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_: argument 0"}
!199 = distinct !{!199, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_"}
!200 = !{!198, !57}
!201 = !{!144, !146, !60, !62}
!202 = !{!198, !144, !146, !57, !60}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document8on_tables1_0E0B1B_: argument 0"}
!205 = distinct !{!205, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document8on_tables1_0E0B1B_"}
!206 = !{!207, !141, !144, !146, !57, !60}
!207 = distinct !{!207, !208, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document8on_tables1_0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_: argument 0"}
!208 = distinct !{!208, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document8on_tables1_0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_"}
!209 = !{!210, !212}
!210 = distinct !{!210, !211, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof: argument 0"}
!211 = distinct !{!211, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof"}
!212 = distinct !{!212, !211, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof: argument 1"}
!213 = !{!210}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document10simple_key: argument 0"}
!216 = distinct !{!216, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document10simple_key"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document10simple_key: argument 1"}
!219 = !{!220}
!220 = distinct !{!220, !216, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document10simple_key: argument 2"}
!221 = !{!215, !218, !220}
!222 = !{!215, !218}
!223 = distinct !{null}
!224 = !{!218, !220}
!225 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof: argument 0"}
!228 = distinct !{!228, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof"}
!229 = !{!230}
!230 = distinct !{!230, !228, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof: argument 1"}
!231 = !{!215, !220}
!232 = !{!227, !230}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!235 = distinct !{!235, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!238 = distinct !{!238, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!239 = !{!237, !234}
!240 = !{!241}
!241 = distinct !{!241, !235, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!242 = !{!237, !234, !241}
!243 = !{!234, !241}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_17on_expression_key0EB6_: argument 0"}
!246 = distinct !{!246, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_17on_expression_key0EB6_"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 0"}
!249 = distinct !{!249, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep"}
!250 = !{!251}
!251 = distinct !{!251, !249, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 1"}
!252 = !{!248, !253}
!253 = distinct !{!253, !249, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document25on_expression_key_val_sep: argument 2"}
!254 = !{!248, !251}
!255 = distinct !{null}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 0"}
!258 = distinct !{!258, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_: argument 0"}
!261 = distinct !{!261, !"_RINvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document13next_token_ifNCNvB2_14opt_whitespace0EB6_"}
!262 = !{!260, !257, !263, !248, !251}
!263 = distinct !{!263, !258, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document14opt_whitespace: argument 1"}
!264 = !{!260, !257, !248}
!265 = !{!263, !251, !253}
!266 = !{!257, !263, !248, !251}
!267 = !{!257, !248, !251}
!268 = distinct !{null, null}
!269 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2000, i32 2000, i32 2000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2000}
!270 = distinct !{!270, !271}
!271 = !{!"llvm.loop.peeled.count", i32 1}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_: argument 0"}
!274 = distinct !{!274, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_"}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_: argument 0"}
!277 = distinct !{!277, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document20on_inline_table_open0E0B1B_"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_: argument 0"}
!280 = distinct !{!280, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document20on_inline_table_open0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_"}
!281 = !{!"branch_weights", i32 2, i32 0, i32 0, i32 2147483646, i32 0}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek: argument 0"}
!284 = distinct !{!284, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek: argument 0"}
!287 = distinct !{!287, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_: argument 0"}
!290 = distinct !{!290, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_: argument 0"}
!293 = distinct !{!293, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document3key0E0B1B_"}
!294 = !{!295}
!295 = distinct !{!295, !296, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_: argument 0"}
!296 = distinct !{!296, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document3key0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_"}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek: argument 0"}
!299 = distinct !{!299, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_: argument 0"}
!302 = distinct !{!302, !"_RNvMNtNtCsil5KYoyU2ra_6winnow6stream5tokenINtB2_10TokenSliceNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenE15previous_tokensB12_"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_: argument 0"}
!305 = distinct !{!305, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenNCNvNtNtB1B_6parser8document5value0E0B1B_"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_: argument 0"}
!308 = distinct !{!308, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsa5zhLZWy8nm_11toml_parser5lexer5token5TokenENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB1z_5rfind5checkRBJ_NCNvNtNtBP_6parser8document5value0E0INtNtNtBa_3ops12control_flow11ControlFlowB33_EEBP_"}
!309 = !{!"branch_weights", i32 1, i32 30001, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek: argument 0"}
!312 = distinct !{!312, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document4seek"}
!313 = !{!"branch_weights", i32 1, i32 2000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof: argument 0"}
!316 = distinct !{!316, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof"}
!317 = !{!318}
!318 = distinct !{!318, !316, !"_RNvNtNtCsa5zhLZWy8nm_11toml_parser6parser8document3eof: argument 1"}
!319 = !{!315, !318}
end_hunk_0
