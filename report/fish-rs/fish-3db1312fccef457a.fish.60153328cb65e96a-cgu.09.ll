Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2082
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvMs1_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen5write:bb.a
bb.cx:                                            ; preds = %.lr.ph1646
  %i.nx = icmp ult i32 %i.nt, 1114112
  call void @llvm.assume(i1 %i.nx)
  %i.ny = icmp eq i32 %i.nt, 10
  %i.nz = add i64 %.sroa.01.0.i.i161.i1645, -1    ; 4 uses
  br i1 %i.ny, label %bb.cz, label %.preheader.i

bb.cy:                                            ; preds = %bb.cw
  %i.oa = icmp eq i64 %.sroa.08.0.i621, 0
  br i1 %i.oa, label %.invoke614.i, label %bb.dd

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.ob = load i64, ptr %i.mx, align 8, !alias.scope !1360, !noalias !1361, !noundef !13 ; 2 uses
  %i.oc = icmp ult i64 %i.nz, %i.ob
  br i1 %i.oc, label %bb.da, label %.invoke610.i

bb.da:                                            ; preds = %bb.cz
  %i.od = load ptr, ptr %i.my, align 8, !alias.scope !1360, !noalias !1361, !nonnull !13, !noundef !13
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.nz
  %i.of = load i32, ptr %i.oe, align 4, !noalias !1362, !noundef !13 ; 2 uses
  %i.og = icmp sgt i32 %i.of, -1
  br i1 %i.og, label %_RNvYNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts1_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceB8_.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1363
  store i8 3, ptr %i.bc, align 1, !noalias !1363
  br label %.split.i.i171.invoke.i

_RNvYNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts1_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceB8_.exit.i: ; preds = %bb.da
  %i.oh = zext nneg i32 %i.of to i64
  %i.oi = shl nuw nsw i64 %i.oh, 2
  br label %.loopexit334.i

.loopexit334.i:                                   ; preds = %.preheader.i, %.preheader.i.preheader, %_RNvYNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts1_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceB8_.exit.i
  %.sroa.019.0.i = phi i64 [ %i.oi, %_RNvYNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts1_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceB8_.exit.i ], [ 0, %.preheader.i.preheader ], [ 0, %.preheader.i ]
  %i.oj = add i64 %.sroa.019.0.i, %.sroa.0.0.i145.i.lcssa ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %.sroa.0.0.i145.i.lcssa
  br i1 %i.ok, label %.invoke612.i, label %bb.dc

bb.dc:                                            ; preds = %_RNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts1_0B5_.exit.i, %.loopexit334.i
  %.sroa.018.0.i = phi i64 [ %i.ox, %_RNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts1_0B5_.exit.i ], [ %i.oj, %.loopexit334.i ]
  %i.ol = add i64 %.sroa.018.0.i, %i.ju           ; 3 uses
  %i.om = icmp ult i64 %i.ol, %i.ju
  br i1 %i.om, label %.invoke612.i, label %bb.dg

bb.dd:                                            ; preds = %bb.cy
  %i.on = add i64 %.sroa.08.0.i621, -1            ; 3 uses
  %i.oo = load i64, ptr %i.mx, align 8, !alias.scope !1292, !noalias !1361, !noundef !13 ; 2 uses
  %i.op = icmp ult i64 %i.on, %i.oo
  br i1 %i.op, label %bb.de, label %.invoke610.i

bb.de:                                            ; preds = %bb.dd
  %i.oq = load ptr, ptr %i.my, align 8, !alias.scope !1292, !noalias !1361, !nonnull !13, !noundef !13
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.on
  %i.os = load i32, ptr %i.or, align 4, !noalias !1303, !noundef !13 ; 2 uses
  %i.ot = icmp sgt i32 %i.os, -1
  br i1 %i.ot, label %_RNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts1_0B5_.exit.i, label %bb.df

.invoke610.i:                                     ; preds = %bb.dd, %bb.cz
  %i.ou = phi i64 [ %i.nz, %bb.cz ], [ %i.on, %bb.dd ]
  %i.ov = phi i64 [ %i.ob, %bb.cz ], [ %i.oo, %bb.dd ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ou, i64 noundef %i.ov, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #38
          to label %.cont611.i unwind label %.loopexit.split-lp331.loopexit.split-lp.i, !noalias !1303

.cont611.i:                                       ; preds = %.invoke610.i
  unreachable

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1367
  store i8 3, ptr %i.bb, align 1, !noalias !1367
  br label %.split.i.i171.invoke.i

_RNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts1_0B5_.exit.i: ; preds = %bb.de
  %i.ow = zext nneg i32 %i.os to i64
  %i.ox = shl nuw nsw i64 %i.ow, 2
  br label %bb.dc

bb.dg:                                            ; preds = %bb.dc
  %i.oy = udiv i64 %i.ol, %i.cv                   ; 2 uses
  %i.oz = urem i64 %i.ol, %i.cv
  %i.pa = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i622, i64 %i.oy) ; 3 uses
  %.not95.i = icmp ugt i64 %.sroa.0.0.i622, %i.oy
  br i1 %.not95.i, label %bb.dh, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter5SplitcNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1F_.exit.thread.i

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %.idx1677.a = shl nuw nsw i64 %.sroa.5.1.i.ph.i.i, 2
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.5244.0.i619, i64 %.idx1677.a
  %i.pc = icmp eq i64 %.sroa.5.1.i.ph.i.i, 0
  br i1 %i.pc, label %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.thread.i, label %.lr.ph1652

bb.di:                                            ; preds = %bb.dp
  %i.pd = icmp eq ptr %i.pe, %i.pb
  br i1 %i.pd, label %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.thread.i, label %.lr.ph1652

.lr.ph1652:                                       ; preds = %bb.dh, %bb.di
  %.sroa.0.0.i170.i1650 = phi i64 [ %.sroa.0.2.i.i, %bb.di ], [ %i.oz, %bb.dh ] ; 3 uses
  %.sroa.02.0.i169.i1649 = phi i64 [ %.sroa.02.1.i.i, %bb.di ], [ 1, %bb.dh ] ; 3 uses
  %.sroa.0.015.i.i1648 = phi ptr [ %i.pe, %bb.di ], [ %.sroa.5244.0.i619, %bb.dh ] ; 2 uses
  %.sroa.8.0.i.i1647 = phi i64 [ %i.pn, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i1648, i64 4 ; 2 uses
  %i.pf = load i32, ptr %.sroa.0.015.i.i1648, align 4, !alias.scope !1374, !noalias !1375, !noundef !13 ; 6 uses
  %i.pg = xor i32 %i.pf, 55296
  %i.ph = add i32 %i.pg, -1114112
  %i.pi = icmp ult i32 %i.ph, -1112064
  br i1 %i.pi, label %.split.i.i171.i, label %bb.dj

.split.i.i171.i:                                  ; preds = %.lr.ph1652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1379
  store i32 %i.pf, ptr %i.ba, align 4, !noalias !1379
  br label %.split.i.i171.invoke.i

.split.i.i171.invoke.i:                           ; preds = %.split.i.i171.i, %bb.df, %bb.db, %.split.i.i.i163.i
  %i.pj = phi ptr [ %i.ba, %.split.i.i171.i ], [ %i.bb, %bb.df ], [ %i.bc, %bb.db ], [ %i.bd, %.split.i.i.i163.i ]
  %i.pk = phi ptr [ @83, %.split.i.i171.i ], [ @76, %bb.df ], [ @76, %bb.db ], [ @83, %.split.i.i.i163.i ]
  %i.pl = phi ptr [ @797, %.split.i.i171.i ], [ @67, %bb.df ], [ @67, %bb.db ], [ @800, %.split.i.i.i163.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.pj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.pk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pl) #38
          to label %.split.i.i171.cont.i unwind label %.loopexit.split-lp331.loopexit.split-lp.i, !noalias !1303

.split.i.i171.cont.i:                             ; preds = %.split.i.i171.invoke.i
  unreachable

bb.dj:                                            ; preds = %.lr.ph1652
  %i.pm = icmp ult i32 %i.pf, 1114112
  call void @llvm.assume(i1 %i.pm)
  %i.pn = add nuw nsw i64 %.sroa.8.0.i.i1647, 1
  %i.po = icmp samesign ult i32 %i.pf, 32
  %i.pp = or disjoint i32 %i.pf, 9216
  %spec.select.i.i.i.i.i = select i1 %i.po, i32 %i.pp, i32 %i.pf
  %i.pq = invoke { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef %spec.select.i.i.i.i.i)
          to label %.noexc173.i unwind label %.loopexit330.i, !noalias !1303 ; 2 uses

.noexc173.i:                                      ; preds = %bb.dj
  %i.pr = extractvalue { i64, i64 } %i.pq, 0
  %i.ps = trunc nuw i64 %i.pr to i1
  %i.pt = extractvalue { i64, i64 } %i.pq, 1
  %.sroa.0.0.i14.i.i = select i1 %i.ps, i64 %i.pt, i64 0 ; 2 uses
  %i.pu = add i64 %.sroa.0.0.i14.i.i, %.sroa.0.0.i170.i1650 ; 3 uses
  %i.pv = icmp ult i64 %i.pu, %.sroa.0.0.i170.i1650
  br i1 %i.pv, label %.invoke608.i, label %bb.dk

bb.dk:                                            ; preds = %.noexc173.i
  %.not13.i.i = icmp ult i64 %i.pu, %i.cv
  br i1 %.not13.i.i, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dn, %bb.dk
  %.sroa.02.1.i.i = phi i64 [ %i.py, %bb.dn ], [ %.sroa.02.0.i169.i1649, %bb.dk ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ 0, %bb.dn ], [ %.sroa.0.0.i170.i1650, %bb.dk ] ; 3 uses
  %i.pw = icmp eq i64 %i.pu, %i.cv
  br i1 %i.pw, label %bb.dp, label %bb.do

bb.dm:                                            ; preds = %bb.dk
  %i.px = icmp eq i64 %.sroa.02.0.i169.i1649, -1
  br i1 %i.px, label %.invoke608.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.py = add nuw i64 %.sroa.02.0.i169.i1649, 1
  br label %bb.dl

bb.do:                                            ; preds = %bb.dl
  %i.pz = add i64 %.sroa.0.1.i.i, %.sroa.0.0.i14.i.i ; 2 uses
  %i.qa = icmp ult i64 %i.pz, %.sroa.0.1.i.i
  br i1 %i.qa, label %.invoke608.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.1.i.i, %bb.dl ], [ %i.pz, %bb.do ]
  %i.qb = icmp ugt i64 %.sroa.02.1.i.i, %i.pa
  br i1 %i.qb, label %bb.dq, label %bb.di

.invoke608.i:                                     ; preds = %.loopexit.i.i.i, %bb.do, %bb.dm, %.noexc173.i, %bb.cp
  %i.qc = phi ptr [ @643, %bb.dm ], [ @68, %bb.cp ], [ @644, %bb.do ], [ @642, %.noexc173.i ], [ @817, %.loopexit.i.i.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qc) #38
          to label %.cont609.i unwind label %.loopexit.split-lp331.loopexit.split-lp.i, !noalias !1303

.cont609.i:                                       ; preds = %.invoke608.i
  unreachable

bb.dq:                                            ; preds = %bb.dp
  %i.qd = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt8slice_toCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.5244.0.i619, i64 noundef %.sroa.5.1.i.ph.i.i, i64 noundef %.sroa.8.0.i.i1647)
          to label %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.i unwind label %.loopexit.split-lp331.loopexit.i, !noalias !1303 ; 2 uses

_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.i: ; preds = %bb.dq
  %i.qe = extractvalue { ptr, i64 } %i.qd, 0      ; 2 uses
  %i.qf = extractvalue { ptr, i64 } %i.qd, 1      ; 2 uses
  %.not96.i = icmp eq ptr %i.qe, null
  br i1 %.not96.i, label %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.thread.i, label %bb.dr

bb.dr:                                            ; preds = %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.i
  %i.qg = load i64, ptr %i.ms, align 8, !alias.scope !1382, !noalias !1385, !noundef !13 ; 3 uses
  %i.qh = load i64, ptr %i.bo, align 8, !range !14, !alias.scope !1382, !noalias !1385, !noundef !13
  %i.qi = icmp eq i64 %i.qg, %i.qh
  br i1 %i.qi, label %bb.ds, label %bb.dx

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo) #37
          to label %bb.dx unwind label %.loopexit.split-lp331.loopexit.split-lp.i, !noalias !1303

_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.thread.i: ; preds = %bb.di, %bb.dh, %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.i
  %.sroa.6.0310.i = phi i64 [ %i.qf, %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.i ], [ 1, %bb.dh ], [ %.sroa.02.1.i.i, %bb.di ] ; 2 uses
  %i.qj = sub i64 %i.pa, %.sroa.6.0310.i
  %i.qk = icmp ult i64 %i.pa, %.sroa.6.0310.i
  br i1 %i.qk, label %.invoke614.i, label %bb.dt

bb.dt:                                            ; preds = %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.thread.i
  %i.ql = load i64, ptr %i.ms, align 8, !alias.scope !1387, !noalias !1390, !noundef !13 ; 3 uses
  %i.qm = load i64, ptr %i.bo, align 8, !range !14, !alias.scope !1387, !noalias !1390, !noundef !13
  %i.qn = icmp eq i64 %i.ql, %i.qm
  br i1 %i.qn, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo) #37
          to label %bb.dv unwind label %.loopexit.split-lp331.loopexit.i, !noalias !1303

.invoke614.i:                                     ; preds = %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.thread.i, %bb.cy
  %i.qo = phi ptr [ @482, %bb.cy ], [ @484, %_RNvNvNtCs8frGy5WneL6_4fish6screen14compute_layout38consumed_lines_or_truncated_suggestion.exit.thread.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qo) #40
          to label %.cont615.i unwind label %.loopexit.split-lp331.loopexit.split-lp.i, !noalias !1303

.cont615.i:                                       ; preds = %.invoke614.i
  unreachable

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.qp = load ptr, ptr %i.mr, align 8, !alias.scope !1387, !noalias !1390, !nonnull !13, !noundef !13
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %i.ql ; 2 uses
  store ptr %.sroa.5244.0.i619, ptr %i.qq, align 8, !noalias !1392, !captures !1393
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store i64 %.sroa.5.1.i.ph.i.i, ptr %i.qr, align 8, !noalias !1303
  %i.qs = add i64 %i.ql, 1                        ; 3 uses
  store i64 %i.qs, ptr %i.ms, align 8, !alias.scope !1387, !noalias !1390
  %i.qt = icmp eq i64 %.sroa.5.1.i.ph.i.i, -1
  br i1 %i.qt, label %.invoke612.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qu = add i64 %.sroa.08.0.i621, 1
  %i.qv = add i64 %i.qu, %.sroa.5.1.i.ph.i.i      ; 2 uses
  %i.qw = icmp ult i64 %i.qv, %.sroa.08.0.i621
  br i1 %i.qw, label %.invoke612.i, label %bb.cr

.invoke612.i:                                     ; preds = %bb.dw, %bb.dv, %bb.dc, %.loopexit334.i
  %i.qx = phi ptr [ @485, %bb.dv ], [ @483, %bb.dc ], [ @481, %.loopexit334.i ], [ @486, %bb.dw ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qx) #40
          to label %.cont613.i unwind label %.loopexit.split-lp331.loopexit.split-lp.i, !noalias !1303

.cont613.i:                                       ; preds = %.invoke612.i
  unreachable

bb.dx:                                            ; preds = %bb.ds, %bb.dr
  %i.qy = load ptr, ptr %i.mr, align 8, !alias.scope !1382, !noalias !1385, !nonnull !13, !noundef !13
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %i.qg ; 2 uses
  store ptr %i.qe, ptr %i.qz, align 8, !noalias !1394, !captures !1393
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store i64 %i.qf, ptr %i.ra, align 8, !noalias !1303
  %i.rb = add i64 %i.qg, 1                        ; 2 uses
  store i64 %i.rb, ptr %i.ms, align 8, !alias.scope !1382, !noalias !1385
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter5SplitcNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1F_.exit.thread.i

bb.dy:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter5SplitcNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1F_.exit.thread.i
  %.not97.i = icmp eq i64 %i.no, 0
  %i.rc = load ptr, ptr %i.mr, align 8, !noalias !1296, !nonnull !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  br i1 %.not97.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE6map_orjNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts3_0EB1J_.exit.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.val.i182.i = load ptr, ptr %i.rc, align 8, !alias.scope !1395, !noalias !1303, !nonnull !13, !align !887, !noundef !13 ; 2 uses
  %i.rd = getelementptr i8, ptr %i.rc, i64 8
  %.val4.i183.i = load i64, ptr %i.rd, align 8, !alias.scope !1395, !noalias !1303, !noundef !13 ; 2 uses
  %.idx1678.a = shl nuw nsw i64 %.val4.i183.i, 2
  %i.re = getelementptr inbounds nuw i8, ptr %.val.i182.i, i64 %.idx1678.a
  %i.rf = icmp eq i64 %.val4.i183.i, 0
  br i1 %i.rf, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE6map_orjNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts3_0EB1J_.exit.i, label %.lr.ph1657

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldcjjNvNtCs8frGy5WneL6_4fish6screen22wcwidth_rendered_min_0NCINvXsK_NtNtB8_6traits5accumjNtB1Y_3Sum3sumINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32BX_EE0E0B11_.exit.i.i.i.i: ; preds = %.noexc186.i
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i1654, i64 4 ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.re
  br i1 %i.rh, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE6map_orjNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts3_0EB1J_.exit.i, label %.lr.ph1657

.lr.ph1657:                                       ; preds = %bb.dz, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldcjjNvNtCs8frGy5WneL6_4fish6screen22wcwidth_rendered_min_0NCINvXsK_NtNtB8_6traits5accumjNtB1Y_3Sum3sumINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32BX_EE0E0B11_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i1655 = phi i64 [ %i.rt, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldcjjNvNtCs8frGy5WneL6_4fish6screen22wcwidth_rendered_min_0NCINvXsK_NtNtB8_6traits5accumjNtB1Y_3Sum3sumINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32BX_EE0E0B11_.exit.i.i.i.i ], [ 0, %bb.dz ] ; 2 uses
  %.sroa.0.05.i.i.i.i1654 = phi ptr [ %i.rg, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldcjjNvNtCs8frGy5WneL6_4fish6screen22wcwidth_rendered_min_0NCINvXsK_NtNtB8_6traits5accumjNtB1Y_3Sum3sumINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32BX_EE0E0B11_.exit.i.i.i.i ], [ %.val.i182.i, %bb.dz ] ; 2 uses
  %i.ri = load i32, ptr %.sroa.0.05.i.i.i.i1654, align 4, !noalias !1398, !noundef !13 ; 6 uses
  %i.rj = xor i32 %i.ri, 55296
  %i.rk = add i32 %i.rj, -1114112
  %i.rl = icmp ult i32 %i.rk, -1112064
  br i1 %i.rl, label %.split.i.i.i.i.i, label %bb.ea

.split.i.i.i.i.i:                                 ; preds = %.lr.ph1657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1401
  store i32 %i.ri, ptr %i.az, align 4, !noalias !1401
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @797) #38
          to label %.noexc185.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1303

.noexc185.i:                                      ; preds = %.split.i.i.i.i.i
  unreachable

bb.ea:                                            ; preds = %.lr.ph1657
  %i.rm = icmp ult i32 %i.ri, 1114112
  call void @llvm.assume(i1 %i.rm)
  %i.rn = icmp samesign ult i32 %i.ri, 32
  %i.ro = or disjoint i32 %i.ri, 9216
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.rn, i32 %i.ro, i32 %i.ri
  %i.rp = invoke { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef %spec.select.i.i.i.i.i.i.i.i.i)
          to label %.noexc186.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1303 ; 2 uses

.noexc186.i:                                      ; preds = %bb.ea
  %i.rq = extractvalue { i64, i64 } %i.rp, 0
  %i.rr = trunc nuw i64 %i.rq to i1
  %i.rs = extractvalue { i64, i64 } %i.rp, 1
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.rr, i64 %i.rs, i64 0
  %i.rt = add i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i1655 ; 3 uses
  %i.ru = icmp ult i64 %i.rt, %.sroa.0.0.i.i.i.i1655
  br i1 %i.ru, label %bb.eb, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldcjjNvNtCs8frGy5WneL6_4fish6screen22wcwidth_rendered_min_0NCINvXsK_NtNtB8_6traits5accumjNtB1Y_3Sum3sumINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32BX_EE0E0B11_.exit.i.i.i.i

bb.eb:                                            ; preds = %.noexc186.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #38
          to label %.noexc187.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1303

.noexc187.i:                                      ; preds = %bb.eb
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i196.i: ; preds = %bb.fg, %bb.en
  %eh.lpad-body199.i = phi { ptr, i32 } [ %i.up, %bb.fg ], [ %i.st, %bb.en ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !1296
  br label %.loopexit.split-lp331.i

.loopexit.loopexit.i:                             ; preds = %bb.fu, %bb.fr
  %lpad.loopexit466.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.ei
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ea
  %lpad.loopexit327.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit468.invoke.i, %.invoke616.i, %bb.fe, %bb.fa, %bb.ex, %bb.ew, %bb.et, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1o_.exit.i, %bb.es, %bb.er, %.invoke618.i, %bb.eb, %.split.i.i.i.i.i
  %.sroa.040.7.ph.ph.i = phi i8 [ %.sroa.040.8.i, %bb.ew ], [ 1, %.invoke618.i ], [ %.sroa.040.8.i, %.loopexit468.invoke.i ], [ %.sroa.040.8.i, %bb.et ], [ %.sroa.040.8.i, %bb.er ], [ 1, %.split.i.i.i.i.i ], [ %.sroa.040.8.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1o_.exit.i ], [ %.sroa.040.8.i, %bb.es ], [ 1, %bb.eb ], [ %.sroa.040.8.i, %bb.ex ], [ %.sroa.040.8.i, %bb.fe ], [ %.sroa.040.8.i, %.invoke616.i ], [ %.sroa.040.8.i, %bb.fa ]
  %lpad.loopexit.split-lp328.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE6map_orjNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts3_0EB1J_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldcjjNvNtCs8frGy5WneL6_4fish6screen22wcwidth_rendered_min_0NCINvXsK_NtNtB8_6traits5accumjNtB1Y_3Sum3sumINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32BX_EE0E0B11_.exit.i.i.i.i, %bb.dz, %bb.dy, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter5SplitcNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1F_.exit.thread.i
  %.sroa.029.0.i = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter5SplitcNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1F_.exit.thread.i ], [ 0, %bb.dy ], [ 0, %bb.dz ], [ %i.rt, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldcjjNvNtCs8frGy5WneL6_4fish6screen22wcwidth_rendered_min_0NCINvXsK_NtNtB8_6traits5accumjNtB1Y_3Sum3sumINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32BX_EE0E0B11_.exit.i.i.i.i ]
  %i.rv = add i64 %.sroa.0.0.i.i.lcssa, %i.ju     ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %i.ju
  br i1 %i.rw, label %.invoke618.i, label %bb.ec

bb.ec:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE6map_orjNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts3_0EB1J_.exit.i
  %i.rx = add i64 %.sroa.029.0.i, %i.rv           ; 3 uses
  %i.ry = icmp ult i64 %i.rx, %i.rv
  br i1 %i.ry, label %.invoke618.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rz = add i64 %i.rx, %i.jw                    ; 2 uses
  %i.sa = icmp ult i64 %i.rz, %i.rx
  br i1 %i.sa, label %.invoke618.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.not98.i = icmp ugt i64 %i.rz, %i.cv
  br i1 %.not98.i, label %.peel.begin.i, label %bb.ef

.invoke618.i:                                     ; preds = %bb.ed, %bb.ec, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE6map_orjNCNvNtCs8frGy5WneL6_4fish6screen14compute_layouts3_0EB1J_.exit.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #40
          to label %.cont619.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1303

.cont619.i:                                       ; preds = %.invoke618.i
  unreachable

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !1296
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i189.i unwind label %bb.eg, !noalias !1303

bb.eg:                                            ; preds = %bb.ef
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %.body190.i unwind label %bb.eh, !noalias !1303

bb.eh:                                            ; preds = %bb.eg
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !noalias !1303
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i189.i: ; preds = %bb.ef
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit193.i unwind label %bb.ek, !noalias !1303

.peel.begin.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit193.i, %bb.ee
  %.sroa.040.8.i = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit193.i ], [ 1, %bb.ee ] ; 18 uses
  %i.sd = load ptr, ptr %i.mr, align 8, !noalias !1296, !nonnull !13, !noundef !13 ; 5 uses
  %i.se = load i64, ptr %i.ms, align 8, !noalias !1296, !noundef !13 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.se, 4
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx.i
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen5write:bb.a

bb.kn:                                            ; preds = %bb.kl
  %i.aiy = load i64, ptr %i.aip, align 8, !noalias !1529, !noundef !13
  %i.aiz = add i64 %i.aiy, 1
  store i64 %i.aiz, ptr %i.aip, align 8, !noalias !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1502
  store i8 23, ptr %i.am, align 8, !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.aja = load ptr, ptr %i.aed, align 8, !alias.scope !1534, !noalias !1535, !nonnull !13, !align !418, !noundef !13 ; 7 uses
  %i.ajb = load i64, ptr %i.aja, align 8, !noalias !1537, !noundef !13
  %i.ajc = icmp eq i64 %i.ajb, 0
  br i1 %i.ajc, label %bb.ko, label %.invoke2506.i.i.i, !prof !419

bb.ko:                                            ; preds = %bb.kn
  store i64 -1, ptr %i.aja, align 8, !noalias !1537
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.aje = invoke noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13write_command(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ajd, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.am)
          to label %bb.kq unwind label %bb.kp, !noalias !1538 ; 0 uses

bb.kp:                                            ; preds = %bb.ko
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  %i.ajg = load i64, ptr %i.aja, align 8, !noalias !1537, !noundef !13
  %i.ajh = add i64 %i.ajg, 1
  store i64 %i.ajh, ptr %i.aja, align 8, !noalias !1537
  br label %.body306.i.i.i

bb.kq:                                            ; preds = %bb.ko
  %i.aji = load i64, ptr %i.aja, align 8, !noalias !1537, !noundef !13
  %i.ajj = add i64 %i.aji, 1
  store i64 %i.ajj, ptr %i.aja, align 8, !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1502
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef %i.aeq, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.kr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

bb.kr:                                            ; preds = %bb.kq
  %i.ajk = load i64, ptr %i.ad, align 8, !range !527, !noalias !1502, !noundef !13
  %i.ajl = trunc nuw i64 %i.ajk to i1
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ajn = load i64, ptr %i.ajm, align 8, !range !528, !noalias !1502, !noundef !13 ; 4 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %i.ajl, label %bb.ks, label %bb.kt, !prof !420

bb.ks:                                            ; preds = %bb.kr
  %i.ajp = load i64, ptr %i.ajo, align 8, !noalias !1502
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.md, %bb.ks
  %i.ajq = phi i64 [ %i.ajn, %bb.ks ], [ %i.aoc, %bb.md ]
  %i.ajr = phi i64 [ %i.ajp, %bb.ks ], [ %i.aoe, %bb.md ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ajq, i64 %i.ajr) #40
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.kt:                                            ; preds = %bb.kr
  %i.ajs = load ptr, ptr %i.ajo, align 8, !noalias !1502, !nonnull !13, !noundef !13 ; 3 uses
  %i.ajt = icmp ule i64 %i.aeq, %i.ajn
  call void @llvm.assume(i1 %i.ajt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1502
  %.not259.i.i.i = icmp eq i64 %i.aeq, 0
  br i1 %.not259.i.i.i, label %bb.ku, label %bb.ky

bb.ku:                                            ; preds = %bb.ky, %bb.kt
  %i.aju = load i64, ptr %i.ain, align 8, !range !381, !alias.scope !1539, !noalias !1517, !noundef !13
  %i.ajv = icmp eq i64 %i.aju, -1
  br i1 %i.ajv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ain)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.kw, !noalias !1497

bb.kw:                                            ; preds = %bb.kv
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ain)
          to label %.body319.i.i.i unwind label %bb.kx, !noalias !1497

bb.kx:                                            ; preds = %bb.kw
  %i.ajx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !noalias !1497
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.kv
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ain)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.kz, !noalias !1497

bb.ky:                                            ; preds = %bb.kt
  %i.ajy = shl nuw nsw i64 %i.aeq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ajs, ptr nonnull readonly align 4 %i.aeo, i64 %i.ajy, i1 false), !noalias !1497
  br label %bb.ku

bb.kz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %.body319.i.i.i

.body319.i.i.i:                                   ; preds = %bb.kz, %bb.kw
  %eh.lpad-body320.i.i.i = phi { ptr, i32 } [ %i.ajz, %bb.kz ], [ %i.ajw, %bb.kw ]
  store i64 %i.ajn, ptr %i.ain, align 8, !alias.scope !1516, !noalias !1517
  %.sroa.5193.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.ajs, ptr %.sroa.5193.0..sroa_idx.i.i.i, align 8, !alias.scope !1516, !noalias !1517
  %.sroa.6196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.aeq, ptr %.sroa.6196.0..sroa_idx.i.i.i, align 8, !alias.scope !1516, !noalias !1517
  br label %.body306.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i, %bb.ku
  store i64 %i.ajn, ptr %i.ain, align 8, !alias.scope !1516, !noalias !1517
  %.sroa.5193.0..sroa_idx194.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.ajs, ptr %.sroa.5193.0..sroa_idx194.i.i.i, align 8, !alias.scope !1516, !noalias !1517
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.ml, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i
  %.sink2513.i.i.i = phi i64 [ 160, %bb.ml ], [ 184, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.aop, %bb.ml ], [ %i.aeq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i ]
  %.sroa.052.0480487.ph.i.i.i = phi i1 [ %spec.select276.i.i.i, %bb.ml ], [ %.sroa.052.04801794.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i ]
  %.sroa.568.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2513.i.i.i
  store i64 %.sink.i.i.i, ptr %.sroa.568.0..sroa_idx.i.i.i, align 8, !alias.scope !1516, !noalias !1517
  br label %bb.la

bb.la:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit341.i.i.i, %.sink.split.i.i.i, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit.thread1788.i.i.i
  %.sroa.052.0480487.i.i.i = phi i1 [ %spec.select276.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit341.i.i.i ], [ %.sroa.052.04801794.i.i.i, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit.thread1788.i.i.i ], [ %.sroa.052.0480487.ph.i.i.i, %.sink.split.i.i.i ]
  %..i.i.i = zext i1 %.sroa.052.0480487.i.i.i to i64
  %i.aka = add nuw i64 %i.ahj, %..i.i.i           ; 2 uses
  %i.akb = load i64, ptr %i.wn, align 8, !alias.scope !1516, !noalias !1517, !noundef !13 ; 3 uses
  %i.akc = icmp ult i64 %i.akb, 230584300921369396
  call void @llvm.assume(i1 %i.akc)
  %i.akd = icmp ult i64 %i.aka, %i.akb
  br i1 %i.akd, label %.lr.ph1090.i.i.i, label %._crit_edge1091.i.i.i

.lr.ph1090.i.i.i:                                 ; preds = %bb.la
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ake = trunc nuw i8 %spec.select.i.i.i187 to i1
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.akh = icmp ult i64 %i.agr, 2
  %i.aki = add i64 %i.agr, -2
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.akq = trunc nuw i8 %.sroa.0.0.i.i.i186 to i1
  %or.cond273.i.i.i = and i1 %i.agw, %i.akq
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aks = icmp ne i64 %i.agh, 0
  %i.akt = icmp ult i64 %i.agr, %i.agh
  %i.aku = sub nuw i64 %i.agr, %i.agh
  br label %bb.mm

bb.lb:                                            ; preds = %bb.lu
  unreachable

bb.lc:                                            ; preds = %bb.ki, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit.thread.i.i.i
  %.sroa.054.0489491.i.i.i = phi i1 [ true, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit.thread.i.i.i ], [ %.sroa.054.0.i.i.i, %bb.ki ]
  invoke fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen4move(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0, i64 noundef 0, i64 noundef %i.ahj)
          to label %bb.le unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

bb.ld:                                            ; preds = %bb.ki, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit.thread.i.i.i
  %.sroa.054.0489492.i.i.i = phi i1 [ true, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit.thread.i.i.i ], [ %.sroa.054.0.i.i.i, %bb.ki ] ; 3 uses
  invoke fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen4move(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0, i64 noundef 0, i64 noundef 0)
          to label %bb.lg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

bb.le:                                            ; preds = %bb.lc
  %i.akv = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.akw = load i64, ptr %i.akv, align 8, !noalias !1502, !noundef !13 ; 2 uses
  %.not260.i.i.i = icmp eq i64 %i.akw, 0
  br i1 %.not260.i.i.i, label %.invoke2494.i.i.i, label %bb.lf, !prof !420

.invoke2494.i.i.i:                                ; preds = %bb.si, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit392.thread503.i.i.i, %bb.le
  %i.akx = phi ptr [ @205, %bb.le ], [ @213, %bb.si ], [ @208, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit392.thread503.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akx) #40
          to label %.cont2495.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

.cont2495.i.i.i:                                  ; preds = %.invoke2494.i.i.i
  unreachable

bb.lf:                                            ; preds = %bb.le
  %i.aky = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.akz = load ptr, ptr %i.aky, align 8, !noalias !1502, !nonnull !13, !noundef !13
  %i.ala = getelementptr [8 x i8], ptr %i.akz, i64 %i.akw
  %i.alb = getelementptr i8, ptr %i.ala, i64 -8
  %i.alc = load i64, ptr %i.alb, align 8, !noalias !1497, !noundef !13
  br label %.thread496.i.i.i

.thread496.i.i.i:                                 ; preds = %.peel.begin.i.i.i, %bb.lf
  %.sroa.054.0489490.i.i.i = phi i1 [ %.sroa.054.0489491.i.i.i, %bb.lf ], [ %.sroa.054.0489492.i.i.i, %.peel.begin.i.i.i ]
  %.sroa.060.0.i.i.i = phi i64 [ %i.alc, %bb.lf ], [ %i.alo, %.peel.begin.i.i.i ] ; 2 uses
  %i.ald = icmp ult i64 %i.aeq, %.sroa.060.0.i.i.i
  br i1 %i.ald, label %.invoke2500.i.i.i, label %.thread496.i.thread.i.i, !prof !1542

bb.lg:                                            ; preds = %bb.ld
  %i.ale = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.alf = load i64, ptr %i.ale, align 8, !noalias !1502, !noundef !13 ; 6 uses
  %i.alg = icmp ult i64 %i.alf, 1152921504606846976
  call void @llvm.assume(i1 %i.alg)
  %i.alh = load i64, ptr %i.aec, align 8, !alias.scope !1516, !noalias !1517, !noundef !13 ; 3 uses
  %i.ali = sub i64 %i.alf, %i.alh                 ; 5 uses
  %i.alj = icmp ult i64 %i.alf, %i.alh
  br i1 %i.alj, label %.invoke2496.i.i.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.alk = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %21 = icmp ult i64 %i.ali, %i.alf
  br i1 %21, label %bb.li, label %.invoke2498.i.i.i

.invoke2496.i.i.i:                                ; preds = %bb.sj, %bb.pe, %bb.lg
  %i.all = phi ptr [ @206, %bb.lg ], [ @214, %bb.sj ], [ @209, %bb.pe ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.all) #40
          to label %.cont2497.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

.cont2497.i.i.i:                                  ; preds = %.invoke2496.i.i.i
  unreachable

bb.li:                                            ; preds = %bb.lh
  %i.alm = load ptr, ptr %i.alk, align 8, !noalias !1502, !nonnull !13, !noundef !13
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.alm, i64 %i.ali
  %i.alo = load i64, ptr %i.aln, align 8, !noalias !1497, !noundef !13 ; 4 uses
  %i.alp = icmp eq i64 %i.alh, 1
  br i1 %i.alp, label %bb.lj, label %bb.ln

.invoke2498.i.i.i:                                ; preds = %bb.rs, %._crit_edge.i.i, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit392.thread.i.i.i, %bb.ow, %bb.ob, %bb.oa, %bb.nw, %bb.nu, %bb.pj, %bb.rq, %bb.qr, %bb.qq, %bb.ql, %bb.qk, %bb.lh
  %i.alq = phi i64 [ %.sroa.0199.01087.i.i.i, %bb.pj ], [ %i.ali, %bb.lh ], [ %.sroa.0116.11076.i.i.i, %bb.qr ], [ %.sroa.0199.01087.i.i.i, %bb.rq ], [ %.sroa.0199.01087.i.i.i, %bb.qq ], [ %.sroa.0116.11076.i.i.i, %bb.ql ], [ %.sroa.0199.01087.i.i.i, %bb.qk ], [ %.sroa.0199.01087.i.i.i, %bb.nu ], [ %.sroa.0199.01087.i.i.i, %bb.nw ], [ %.sroa.0199.01087.i.i.i, %bb.oa ], [ %.sroa.0199.01087.i.i.i, %bb.ob ], [ %.sroa.0199.01087.i.i.i, %bb.ow ], [ %.sroa.0199.01087.i.i.i, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit392.thread.i.i.i ], [ %.sroa.0199.01087.i.i.i, %._crit_edge.i.i ], [ %.sroa.0199.01087.i.i.i, %bb.rs ]
  %i.alr = phi i64 [ %.pre1718.i.i.i, %bb.pj ], [ %i.alf, %bb.lh ], [ %i.azw, %bb.qr ], [ %i.bcz, %bb.rq ], [ %i.azr, %bb.qq ], [ %i.azd, %bb.ql ], [ %i.ayy, %bb.qk ], [ %i.asc, %bb.oa ], [ %i.ars, %bb.nw ], [ %.pre1717.pre.i.i.i, %bb.nu ], [ %i.bde, %bb.rs ], [ %i.awe, %._crit_edge.i.i ], [ %i.avp, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit392.thread.i.i.i ], [ %i.asa, %bb.ow ], [ %i.ase, %bb.ob ]
  %i.als = phi ptr [ @168, %bb.pj ], [ @207, %bb.lh ], [ @210, %bb.qr ], [ @168, %bb.rq ], [ @168, %bb.qq ], [ @52, %bb.ql ], [ @168, %bb.qk ], [ @168, %bb.nu ], [ @168, %bb.nw ], [ @168, %bb.oa ], [ @168, %bb.ob ], [ @168, %bb.ow ], [ @168, %_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen11should_wrap.exit392.thread.i.i.i ], [ @168, %._crit_edge.i.i ], [ @168, %bb.rs ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.alq, i64 noundef %i.alr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.als) #40
          to label %.cont2499.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

.cont2499.i.i.i:                                  ; preds = %.invoke2498.i.i.i
  unreachable

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1502
  store i8 22, ptr %i.ar, align 8, !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %i.alt = load ptr, ptr %i.aed, align 8, !alias.scope !1546, !noalias !1547, !nonnull !13, !align !418, !noundef !13 ; 7 uses
  %i.alu = load i64, ptr %i.alt, align 8, !noalias !1549, !noundef !13
  %i.alv = icmp eq i64 %i.alu, 0
  br i1 %i.alv, label %bb.lk, label %.invoke2506.i.i.i, !prof !419

bb.lk:                                            ; preds = %bb.lj
  store i64 -1, ptr %i.alt, align 8, !noalias !1549
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alx = invoke noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13write_command(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.alw, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ar)
          to label %bb.lm unwind label %bb.ll, !noalias !1550 ; 0 uses

bb.ll:                                            ; preds = %bb.lk
  %i.aly = landingpad { ptr, i32 }
          cleanup
  %i.alz = load i64, ptr %i.alt, align 8, !noalias !1549, !noundef !13
  %i.ama = add i64 %i.alz, 1
  store i64 %i.ama, ptr %i.alt, align 8, !noalias !1549
  br label %.body306.i.i.i

bb.lm:                                            ; preds = %bb.lk
  %i.amb = load i64, ptr %i.alt, align 8, !noalias !1549, !noundef !13
  %i.amc = add i64 %i.amb, 1
  store i64 %i.amc, ptr %i.alt, align 8, !noalias !1549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1502
  %.pre.i.i.i195 = load i64, ptr %i.ale, align 8, !noalias !1502
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.li
  %i.amd = phi i64 [ %i.alf, %bb.li ], [ %.pre.i.i.i195, %bb.lm ] ; 5 uses
  %i.ame = add nuw nsw i64 %i.ali, 1              ; 3 uses
  %.not261.i.i.i = icmp ult i64 %i.ali, %i.amd
  br i1 %.not261.i.i.i, label %.peel.begin.i.i.i, label %bb.lu, !prof !419

.peel.begin.i.i.i:                                ; preds = %bb.ln
  %i.amf = load ptr, ptr %i.alk, align 8, !noalias !1502, !nonnull !13, !noundef !13 ; 2 uses
  %.idx1679 = shl nuw nsw i64 %i.ame, 3           ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 %.idx1679 ; 2 uses
  %.idx1680 = shl nuw nsw i64 %i.amd, 3           ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amf, i64 %.idx1680
  %i.ami = icmp samesign eq i64 %i.ame, %i.amd
  br i1 %i.ami, label %.thread496.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %.peel.begin.i.i.i
  %i.amj = load i64, ptr %i.amg, align 8, !noalias !1497, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1502
  store i8 1, ptr %i.aq, align 8, !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.amk = load ptr, ptr %i.aed, align 8, !alias.scope !1554, !noalias !1555, !nonnull !13, !align !418, !noundef !13 ; 6 uses
  %i.aml = load i64, ptr %i.amk, align 8, !noalias !1557, !noundef !13
  %i.amm = icmp eq i64 %i.aml, 0
  br i1 %i.amm, label %bb.lp, label %.invoke2506.i.i.i, !prof !419

bb.lp:                                            ; preds = %bb.lo
  store i64 -1, ptr %i.amk, align 8, !noalias !1557
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  %i.amo = invoke noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13write_command(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.amn, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.lq unwind label %.loopexit.split-lp.i.i.i, !noalias !1558 ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.amp = load i64, ptr %i.amk, align 8, !noalias !1557, !noundef !13
  %i.amq = add i64 %i.amp, 1
  store i64 %i.amq, ptr %i.amk, align 8, !noalias !1557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1502
  store i8 22, ptr %i.ap, align 8, !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.amr = load ptr, ptr %i.aed, align 8, !alias.scope !1562, !noalias !1563, !nonnull !13, !align !418, !noundef !13 ; 7 uses
  %i.ams = load i64, ptr %i.amr, align 8, !noalias !1565, !noundef !13
  %i.amt = icmp eq i64 %i.ams, 0
  br i1 %i.amt, label %bb.lr, label %.invoke2506.i.i.i, !prof !419

bb.lr:                                            ; preds = %bb.lq
  store i64 -1, ptr %i.amr, align 8, !noalias !1565
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  %i.amv = invoke noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13write_command(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.amu, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.ls unwind label %bb.su, !noalias !1566 ; 0 uses

bb.ls:                                            ; preds = %bb.lr
  %i.amw = load i64, ptr %i.amr, align 8, !noalias !1565, !noundef !13
  %i.amx = add i64 %i.amw, 1
  store i64 %i.amx, ptr %i.amr, align 8, !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1502
  %i.amy = icmp ult i64 %i.amj, %i.alo
  %.not267.peel.i.i.i = icmp ugt i64 %i.amj, %i.aeq
  %or.cond275.peel.i.i.i = or i1 %i.amy, %.not267.peel.i.i.i
  br i1 %or.cond275.peel.i.i.i, label %.invoke2500.i.i.i, label %bb.lt, !prof !1261

bb.lt:                                            ; preds = %bb.ls
  %i.amz = sub nuw i64 %i.amj, %i.alo
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %i.alo
  %.val283.peel.i.i.i = load ptr, ptr %i.aed, align 8, !alias.scope !1516, !noalias !1517, !nonnull !13, !align !418, !noundef !13
  invoke fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen9write_str(ptr nonnull %.val283.peel.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ana, i64 noundef %i.amz)
          to label %.peel.next.i.i.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i, !noalias !1497

.peel.next.i.i.i.preheader:                       ; preds = %bb.lt
  %i.anb = add nuw nsw i64 %.idx1679, 8
  %i.anc = icmp samesign eq i64 %i.anb, %.idx1680
  br i1 %i.anc, label %.thread496.i.thread.i.i, label %.lr.ph1673

.lr.ph1673:                                       ; preds = %.peel.next.i.i.i.preheader
  %.sroa.0473.0.i.i.i1670.a = getelementptr inbounds nuw i8, ptr %i.amg, i64 8
  br label %bb.lv

bb.lu:                                            ; preds = %bb.ln
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.ame, i64 noundef %i.amd, i64 noundef %i.amd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #40
          to label %bb.lb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

.peel.next.i.i.i:                                 ; preds = %bb.sw
  %.sroa.0473.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0473.0.i.i.i1672, i64 8 ; 2 uses
  %i.and = icmp eq ptr %.sroa.0473.0.i.i.i, %i.amh
  br i1 %i.and, label %.thread496.i.thread.i.i, label %bb.lv, !llvm.loop !1567

bb.lv:                                            ; preds = %.lr.ph1673, %.peel.next.i.i.i
  %.sroa.0473.0.i.i.i1672 = phi ptr [ %.sroa.0473.0.i.i.i1670.a, %.lr.ph1673 ], [ %.sroa.0473.0.i.i.i, %.peel.next.i.i.i ] ; 2 uses
  %.sroa.060.1.i.i.i1671 = phi i64 [ %i.amj, %.lr.ph1673 ], [ %i.ane, %.peel.next.i.i.i ] ; 3 uses
  %i.ane = load i64, ptr %.sroa.0473.0.i.i.i1672, align 8, !noalias !1497, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1502
  store i8 1, ptr %i.aq, align 8, !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  %i.anf = load ptr, ptr %i.aed, align 8, !alias.scope !1570, !noalias !1555, !nonnull !13, !align !418, !noundef !13 ; 6 uses
  %i.ang = load i64, ptr %i.anf, align 8, !noalias !1571, !noundef !13
  %i.anh = icmp eq i64 %i.ang, 0
  br i1 %i.anh, label %bb.lw, label %.invoke2506.i.i.i, !prof !419

bb.lw:                                            ; preds = %bb.lv
  store i64 -1, ptr %i.anf, align 8, !noalias !1571
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.anj = invoke noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13write_command(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ani, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.sv unwind label %.loopexit1699.i.i.i, !noalias !1572 ; 0 uses

.loopexit1699.i.i.i:                              ; preds = %bb.lw
  %lpad.loopexit1700.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lx

.loopexit.split-lp.i.i.i:                         ; preds = %bb.lp
  %lpad.loopexit.split-lp1701.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lx

bb.lx:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit1699.i.i.i
  %.lcssa1691.i.i.i = phi ptr [ %i.anf, %.loopexit1699.i.i.i ], [ %i.amk, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit1700.i.i.i, %.loopexit1699.i.i.i ], [ %lpad.loopexit.split-lp1701.i.i.i, %.loopexit.split-lp.i.i.i ]
  %i.ank = load i64, ptr %.lcssa1691.i.i.i, align 8, !noalias !1571, !noundef !13
  %i.anl = add i64 %i.ank, 1
  store i64 %i.anl, ptr %.lcssa1691.i.i.i, align 8, !noalias !1571
  br label %.body306.i.i.i

.invoke2500.i.i.i:                                ; preds = %bb.sv, %bb.ls, %.thread496.i.i.i
  %i.anm = phi ptr [ @217, %.thread496.i.i.i ], [ @218, %bb.ls ], [ @218, %bb.sv ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.anm) #40
          to label %.cont2501.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

.cont2501.i.i.i:                                  ; preds = %.invoke2500.i.i.i
  unreachable

.thread496.i.thread.i.i:                          ; preds = %.peel.next.i.i.i, %.peel.next.i.i.i.preheader, %.thread496.i.i.i
  %.sroa.060.0.i6.i.i = phi i64 [ %.sroa.060.0.i.i.i, %.thread496.i.i.i ], [ %i.amj, %.peel.next.i.i.i.preheader ], [ %i.ane, %.peel.next.i.i.i ] ; 2 uses
  %.sroa.054.0489490.i5.i.i = phi i1 [ %.sroa.054.0489490.i.i.i, %.thread496.i.i.i ], [ %.sroa.054.0489492.i.i.i, %.peel.next.i.i.i.preheader ], [ %.sroa.054.0489492.i.i.i, %.peel.next.i.i.i ]
  %i.ann = sub nuw i64 %i.aeq, %.sroa.060.0.i6.i.i
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %.sroa.060.0.i6.i.i
  %.val286.i.i.i = load ptr, ptr %i.aed, align 8, !alias.scope !1516, !noalias !1517, !nonnull !13, !align !418, !noundef !13
  invoke fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen9write_str(ptr nonnull %.val286.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ano, i64 noundef %i.ann)
          to label %bb.ly unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1497

bb.ly:                                            ; preds = %.thread496.i.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1502
  store i8 23, ptr %i.ao, align 8, !noalias !1502
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %i.anp = load ptr, ptr %i.aed, align 8, !alias.scope !1576, !noalias !1577, !nonnull !13, !align !418, !noundef !13 ; 7 uses
end_hunk_1
