Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-439b9fb270738648.jiff_core.802705cc72501606-cgu.0?download=true
inline.NumInlined: 202
inline.NumDeleted: 113
begin_hunk_0_@_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone5parse:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %switch.i.i.i.i29.i.i = icmp samesign ult i8 %i.mo, 2
  br i1 %switch.i.i.i.i29.i.i, label %.thread41.i, label %bb.dc

bb.dc:                                            ; preds = %.thread.i.i
  %.val1.i.i.i.i30.i.i = load i64, ptr %i.it, align 8, !alias.scope !457, !noalias !450, !noundef !5 ; 2 uses
  %i.mp = icmp eq i64 %.val1.i.i.i.i30.i.i, 0
  br i1 %i.mp, label %.thread41.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.val.i.i.i.i31.i.i = load ptr, ptr %i.is, align 8, !alias.scope !457, !noalias !450, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i31.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i30.i.i, i64 noundef 1) #16, !noalias !457
  br label %.thread41.i

bb.de:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %switch.i.i.i.i33.i.i = icmp samesign ult i8 %i.ko, 2
  br i1 %switch.i.i.i.i33.i.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.val1.i.i.i.i34.i.i = load i64, ptr %i.it, align 8, !alias.scope !474, !noalias !450, !noundef !5 ; 2 uses
  %i.mq = icmp eq i64 %.val1.i.i.i.i34.i.i, 0
  br i1 %i.mq, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val.i.i.i.i35.i.i = load ptr, ptr %i.is, align 8, !alias.scope !474, !noalias !450, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i35.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i34.i.i, i64 noundef 1) #16, !noalias !474
  br label %bb.dh

.loopexit.i137:                                   ; preds = %bb.ca
  %lpad.loopexit.i138 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i141:                          ; preds = %bb.dl
  %lpad.loopexit.split-lp.i142 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i141, %.loopexit.i137, %bb.ch, %bb.cg, %bb.cf
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi52.i, %bb.cf ], [ %lpad.phi52.i, %bb.ch ], [ %lpad.phi52.i, %bb.cg ], [ %lpad.loopexit.i138, %.loopexit.i137 ], [ %lpad.loopexit.split-lp.i142, %.loopexit.split-lp.i141 ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.o) #18
  br label %bb.gb

.thread41.i:                                      ; preds = %bb.dd, %bb.dc, %.thread.i.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !450
  br label %.thread.i

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !450
  %exitcond.i = icmp eq i64 %i.jd, 301
  br i1 %exitcond.i, label %bb.dk, label %bb.bz

.thread.i:                                        ; preds = %bb.bz, %.thread41.i
  %switch.i.i.i19.i = icmp samesign ult i8 %i.hg, 2
  %i.mr = icmp eq i64 %.sroa.9.0.i.i, 0
  %or.cond45.i = select i1 %switch.i.i.i19.i, i1 true, i1 %i.mr
  br i1 %or.cond45.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i22.i, label %bb.di

bb.di:                                            ; preds = %.thread.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i, i64 noundef range(i64 1, 0) %.sroa.9.0.i.i, i64 noundef 1) #16, !noalias !475
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i22.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i22.i: ; preds = %bb.di, %.thread.i
  br i1 %.not.i.i135, label %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit.sink.split, label %bb.dj

bb.dj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i22.i
  %switch.i.i.i.i.i23.i = icmp samesign ult i8 %i.ht, 2
  %i.ms = icmp eq i64 %.sroa.5.sroa.0.sroa.5.0.i.i, 0
  %or.cond46.i = select i1 %switch.i.i.i.i.i23.i, i1 true, i1 %i.ms
  br i1 %or.cond46.i, label %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit.sink.split, label %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit.sink.split.sink.split

bb.dk:                                            ; preds = %bb.dh
  %i.mt = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !444 ; 2 uses
  %i.mu = icmp ult i64 %i.mt, 6
  call void @llvm.assume(i1 %i.mu)
  %i.mv = icmp samesign ugt i64 %i.mt, 1
  br i1 %i.mv, label %bb.dl, label %bb.bw

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !444
  store ptr @49, ptr %i.n, align 8, !noalias !444
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !444
  store ptr @21, ptr %i.m, align 8, !noalias !444
  %i.mw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 27, ptr %i.mw, align 8, !noalias !444
  %i.mx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @21, ptr %i.mx, align 8, !noalias !444
  %i.my = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 27, ptr %i.my, align 8, !noalias !444
  %i.mz = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @51, ptr %i.mz, align 8, !noalias !444
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsb09rMIQFAXO_9jiff_core(ptr noundef nonnull @50, ptr noundef nonnull %i.n, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.dm unwind label %.loopexit.split-lp.i141

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !444
  br label %bb.bw

_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit.thread: ; preds = %bb.ad, %bb.ae, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsb09rMIQFAXO_9jiff_core.exit97.i.i, %bb.af, %bb.ag, %bb.ah, %bb.ac, %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113, %_RNvMs1_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB5_6Header14data_block_len.exit.i, %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit
  %.sroa.10203.0237 = phi i64 [ %.sroa.10203.0.copyload, %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit ], [ 2051, %bb.ad ], [ 1027, %bb.ae ], [ 1539, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsb09rMIQFAXO_9jiff_core.exit97.i.i ], [ 1283, %bb.af ], [ 2563, %bb.ag ], [ 2307, %bb.ah ], [ %.sroa.7.0223.sink.i, %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone22parse_transition_types.exit.thread.i113 ], [ 7, %_RNvMs1_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB5_6Header14data_block_len.exit.i ], [ %i.du, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16204)
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10203.0237, ptr %i.na, align 8
  store i64 2, ptr %0, align 8
  br label %bb.fz

bb.dn:                                            ; preds = %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone7parse64.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.589, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.16204, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16204)
  br label %bb.bh

.loopexit:                                        ; preds = %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.ea
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ez, %bb.fa, %bb.bl, %bb.ed, %bb.eg, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE6expectBL_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit.sink.split.sink.split: ; preds = %bb.dj, %bb.by
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.sroa.4.0.i.i, i64 noundef range(i64 1, 0) %.sroa.5.sroa.0.sroa.5.0.i.i, i64 noundef 1) #16, !noalias !5
  br label %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit.sink.split

_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit.sink.split: ; preds = %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit.sink.split.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i22.i, %bb.dj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EEBG_.exit.i13.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !444
  br label %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit

_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit: ; preds = %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit.sink.split, %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ab, i64 224 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !alias.scope !476, !noundef !5 ; 4 uses
  %.not.i143 = icmp eq i64 %i.nc, 0
  br i1 %.not.i143, label %.invoke, label %bb.do

bb.do:                                            ; preds = %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ab, i64 216 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !alias.scope !476, !nonnull !5, !noundef !5 ; 2 uses
  store i8 0, ptr %i.ne, align 1, !noalias !476
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ng = load i64, ptr %i.nf, align 8, !alias.scope !476, !noundef !5 ; 6 uses
  %.not23.i = icmp eq i64 %i.ng, 0
  br i1 %.not23.i, label %.invoke, label %bb.dp

.invoke:                                          ; preds = %bb.eb, %.noexc158, %.noexc155, %.noexc154, %.noexc151, %.noexc150, %bb.ds, %bb.dr, %bb.dq, %bb.ee, %bb.dp, %bb.do, %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit
  %i.nh = phi i64 [ %i.pr, %bb.ee ], [ 0, %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit ], [ 0, %bb.do ], [ 0, %bb.dp ], [ %.sroa.01.067.i, %bb.eb ], [ %i.nc, %bb.dq ], [ %i.og, %bb.dr ], [ %i.om, %bb.ds ], [ %.sroa.01.067.i, %.noexc150 ], [ %.sroa.01.067.i, %.noexc151 ], [ %.sroa.01.067.i, %.noexc154 ], [ %.sroa.01.067.i, %.noexc155 ], [ %.sroa.01.067.i, %.noexc158 ]
  %i.ni = phi i64 [ %i.ps, %bb.ee ], [ 0, %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit ], [ 0, %bb.do ], [ 0, %bb.dp ], [ %i.nn, %bb.eb ], [ %i.nc, %bb.dq ], [ %i.nz, %bb.dr ], [ %i.nz, %bb.ds ], [ %i.ng, %.noexc150 ], [ %i.nn, %.noexc151 ], [ %i.ng, %.noexc154 ], [ %i.nn, %.noexc155 ], [ %i.ng, %.noexc158 ]
  %i.nj = phi ptr [ @45, %bb.ee ], [ @31, %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone6fatten.exit ], [ @32, %bb.do ], [ @33, %bb.dp ], [ @42, %bb.eb ], [ @34, %bb.dq ], [ @35, %bb.dr ], [ @36, %bb.ds ], [ @37, %.noexc150 ], [ @38, %.noexc151 ], [ @39, %.noexc154 ], [ @40, %.noexc155 ], [ @41, %.noexc158 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.nh, i64 noundef %i.ni, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nj) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.dp:                                            ; preds = %bb.do
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.nl = load ptr, ptr %i.nk, align 8, !alias.scope !476, !nonnull !5, !noundef !5 ; 4 uses
  store i64 -2814467188323254272, ptr %i.nl, align 8, !noalias !476
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.nn = load i64, ptr %i.nm, align 8, !alias.scope !476, !noundef !5 ; 7 uses
  %.not24.i = icmp eq i64 %i.nn, 0
  br i1 %.not24.i, label %.invoke, label %.split.i

.split.i:                                         ; preds = %bb.dp
  %i.no = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !476, !nonnull !5, !noundef !5 ; 2 uses
  store i64 -2814467188323254272, ptr %i.np, align 8, !noalias !476
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ab, i64 152 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !noundef !5 ; 3 uses
  %i.ns = icmp ult i64 %i.nr, 1152921504606846976
  call void @llvm.assume(i1 %i.ns)
  %i.nt = icmp samesign ugt i64 %i.nr, 1
  br i1 %i.nt, label %.lr.ph.i, label %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone34verify_posix_time_zone_consistency.exit.thread

.lr.ph.i:                                         ; preds = %.split.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ab, i64 144 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !alias.scope !476, !nonnull !5, !noundef !5
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ab, i64 120 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !alias.scope !476, !nonnull !5 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !alias.scope !476 ; 4 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dz, %.lr.ph.i
  %.sroa.01.067.i = phi i64 [ 1, %.lr.ph.i ], [ %i.oa, %bb.dz ] ; 19 uses
  %i.oa = add nuw nsw i64 %.sroa.01.067.i, 1      ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %.sroa.01.067.i
  %i.oc = load i64, ptr %i.ob, align 8, !noalias !476, !noundef !5 ; 5 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.067.i, %i.nc
  br i1 %exitcond.not.i, label %.invoke, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.od = getelementptr [2 x i8], ptr %i.ne, i64 %.sroa.01.067.i ; 5 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 1
  %i.of = load i8, ptr %i.oe, align 1, !noalias !476, !noundef !5
  %i.og = zext i8 %i.of to i64                    ; 3 uses
  %i.oh = icmp ugt i64 %i.nz, %i.og
  br i1 %i.oh, label %bb.ds, label %.invoke

bb.ds:                                            ; preds = %bb.dr
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.og
  %i.oj = load i32, ptr %i.oi, align 4, !noalias !476, !noundef !5 ; 5 uses
  %i.ok = getelementptr i8, ptr %i.od, i64 -1
  %i.ol = load i8, ptr %i.ok, align 1, !noalias !476, !noundef !5
  %i.om = zext i8 %i.ol to i64                    ; 3 uses
  %i.on = icmp ugt i64 %i.nz, %i.om
  br i1 %i.on, label %bb.dt, label %.invoke

bb.dt:                                            ; preds = %bb.ds
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.om
  %i.op = load i32, ptr %i.oo, align 4, !noalias !476, !noundef !5 ; 4 uses
  %i.oq = icmp eq i32 %i.op, %i.oj
  br i1 %i.oq, label %bb.ea, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.or = icmp slt i32 %i.op, %i.oj
  %i.os = icmp ult i64 %.sroa.01.067.i, %i.ng     ; 2 uses
  br i1 %i.or, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i8 2, ptr %i.od, align 1, !noalias !476
  %i.ot = invoke noundef i64 @_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp11to_datetime(i64 noundef %i.oc, i32 noundef %i.oj)
          to label %.noexc150 unwind label %.loopexit

.noexc150:                                        ; preds = %bb.dv
  br i1 %i.os, label %bb.dw, label %.invoke

bb.dw:                                            ; preds = %.noexc150
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.sroa.01.067.i
  store i64 %i.ot, ptr %i.ou, align 8, !noalias !476
  %i.ov = invoke noundef i64 @_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp11to_datetime(i64 noundef %i.oc, i32 noundef %i.op)
          to label %.noexc151 unwind label %.loopexit

.noexc151:                                        ; preds = %bb.dw
  %i.ow = icmp ult i64 %.sroa.01.067.i, %i.nn
  br i1 %i.ow, label %bb.dz, label %.invoke

bb.dx:                                            ; preds = %bb.du
  store i8 1, ptr %i.od, align 1, !noalias !476
  %i.ox = invoke noundef i64 @_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp11to_datetime(i64 noundef %i.oc, i32 noundef %i.op)
          to label %.noexc154 unwind label %.loopexit

.noexc154:                                        ; preds = %bb.dx
  br i1 %i.os, label %bb.dy, label %.invoke

bb.dy:                                            ; preds = %.noexc154
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.sroa.01.067.i
  store i64 %i.ox, ptr %i.oy, align 8, !noalias !476
  %i.oz = invoke noundef i64 @_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp11to_datetime(i64 noundef %i.oc, i32 noundef %i.oj)
          to label %.noexc155 unwind label %.loopexit

.noexc155:                                        ; preds = %bb.dy
  %i.pa = icmp ult i64 %.sroa.01.067.i, %i.nn
  br i1 %i.pa, label %bb.dz, label %.invoke

bb.dz:                                            ; preds = %bb.eb, %.noexc155, %.noexc151
  %.sink.i = phi i64 [ %i.pc, %bb.eb ], [ %i.ov, %.noexc151 ], [ %i.oz, %.noexc155 ]
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %.sroa.01.067.i
  store i64 %.sink.i, ptr %i.pb, align 8, !noalias !476
  %exitcond93.not.i = icmp eq i64 %i.oa, %i.nr
  br i1 %exitcond93.not.i, label %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone34add_civil_datetimes_to_transitions.exit, label %bb.dq

bb.ea:                                            ; preds = %bb.dt
  %i.pc = invoke noundef i64 @_RNvMs2_NtNtCsb09rMIQFAXO_9jiff_core2tz4tzifNtB5_9Timestamp11to_datetime(i64 noundef %i.oc, i32 noundef %i.oj)
          to label %.noexc158 unwind label %.loopexit ; 2 uses

.noexc158:                                        ; preds = %bb.ea
  store i8 0, ptr %i.od, align 1, !noalias !476
  %i.pd = icmp ult i64 %.sroa.01.067.i, %i.ng
  br i1 %i.pd, label %bb.eb, label %.invoke

bb.eb:                                            ; preds = %.noexc158
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.sroa.01.067.i
  store i64 %i.pc, ptr %i.pe, align 8, !noalias !476
  %i.pf = icmp ult i64 %.sroa.01.067.i, %i.nn
  br i1 %i.pf, label %bb.dz, label %.invoke

_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone34add_civil_datetimes_to_transitions.exit: ; preds = %bb.dz
  %.pr = load i64, ptr %i.nq, align 8, !alias.scope !477 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.pg = icmp ult i64 %.pr, 1152921504606846976
  call void @llvm.assume(i1 %i.pg)
  %i.ph = icmp samesign ult i64 %.pr, 2
  %i.pi = load i8, ptr %i.hf, align 8, !range !4
  %.not.i161 = icmp eq i8 %i.pi, -1
  %or.cond = select i1 %i.ph, i1 true, i1 %.not.i161
  br i1 %or.cond, label %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone34verify_posix_time_zone_consistency.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %_RNvMs_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone34add_civil_datetimes_to_transitions.exit
  %i.pj = load ptr, ptr %i.nu, align 8, !alias.scope !477, !nonnull !5, !noundef !5
  %i.pk = getelementptr [8 x i8], ptr %i.pj, i64 %.pr
  %i.pl = getelementptr i8, ptr %i.pk, i64 -8
  %i.pm = load i64, ptr %i.nb, align 8, !alias.scope !477, !noundef !5 ; 2 uses
  %.not17.i = icmp eq i64 %i.pm, 0
  br i1 %.not17.i, label %bb.ed, label %bb.ee, !prof !10

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20
          to label %.noexc168 unwind label %.loopexit.split-lp

.noexc168:                                        ; preds = %bb.ed
  unreachable

bb.ee:                                            ; preds = %bb.ec
  %i.pn = load ptr, ptr %i.nd, align 8, !alias.scope !477, !nonnull !5, !noundef !5
  %i.po = getelementptr [2 x i8], ptr %i.pn, i64 %i.pm
  %i.pp = getelementptr i8, ptr %i.po, i64 -1
  %i.pq = load i8, ptr %i.pp, align 1, !noalias !477, !noundef !5
  %i.pr = zext i8 %i.pq to i64                    ; 3 uses
  %i.ps = load i64, ptr %i.ny, align 8, !alias.scope !477, !noundef !5 ; 2 uses
  %i.pt = icmp ugt i64 %i.ps, %i.pr
  br i1 %i.pt, label %bb.ef, label %.invoke

bb.ef:                                            ; preds = %bb.ee
  %i.pu = load ptr, ptr %i.nw, align 8, !alias.scope !477, !nonnull !5, !noundef !5
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.pr ; 3 uses
  %i.pw = load i64, ptr %i.pl, align 8, !noalias !477, !noundef !5 ; 2 uses
  %i.px = add i64 %i.pw, 377705023201
  %or.cond.i162 = icmp ult i64 %i.px, 631107230402
  br i1 %or.cond.i162, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE6expectBL_.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !478
  store i32 7167, ptr %i.i, align 4, !noalias !478
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 28, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #20
          to label %.noexc170 unwind label %.loopexit.split-lp

.noexc170:                                        ; preds = %bb.eg
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE6expectBL_.exit.i: ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !477
  invoke void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone14to_offset_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hf, i64 noundef %i.pw, i32 noundef 0)
          to label %.noexc171 unwind label %.loopexit.split-lp

.noexc171:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE6expectBL_.exit.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.pz = load i32, ptr %i.py, align 8, !noalias !477, !noundef !5
  %i.qa = load i32, ptr %i.pv, align 4, !noundef !5
  %.not18.i = icmp eq i32 %i.pz, %i.qa
  br i1 %.not18.i, label %bb.eh, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE6expectBL_.exit._crit_edge.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE6expectBL_.exit._crit_edge.i: ; preds = %.noexc171
  %.pre.i163 = load i8, ptr %i.j, align 8, !range !7, !alias.scope !479, !noalias !477
  br label %bb.ey

bb.eh:                                            ; preds = %.noexc171
  %i.qb = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.qc = load i8, ptr %i.qb, align 4, !range !458, !noalias !477, !noundef !5
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 6
  %i.qe = load i8, ptr %i.qd, align 2, !range !458, !noundef !5
  %.not19.i = icmp eq i8 %i.qc, %i.qe
  %.pre34.i = load i8, ptr %i.j, align 8, !range !7, !noalias !477 ; 6 uses
  br i1 %.not19.i, label %bb.ei, label %bb.ey

bb.ei:                                            ; preds = %bb.eh
  switch i8 %.pre34.i, label %default.unreachable [
    i8 0, label %bb.ej
    i8 1, label %bb.ek
    i8 2, label %bb.el
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.qf = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.qg = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.qh = load i8, ptr %i.qg, align 1, !noalias !477, !noundef !5
  %i.qi = zext i8 %i.qh to i64
  br label %bb.em

bb.ek:                                            ; preds = %bb.ei
  %i.qj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !477, !nonnull !5, !noundef !5
  %i.ql = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.qm = load i64, ptr %i.ql, align 8, !noalias !477, !noundef !5
  br label %bb.em

bb.el:                                            ; preds = %bb.ei
  %i.qn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !noalias !477, !nonnull !5, !noundef !5
  %i.qp = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.qq = load i64, ptr %i.qp, align 8, !noalias !477, !noundef !5
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej
  %.sroa.4.0.i = phi i64 [ %i.qi, %bb.ej ], [ %i.qm, %bb.ek ], [ %i.qq, %bb.el ] ; 2 uses
  %.sroa.03.0.i = phi ptr [ %i.qf, %bb.ej ], [ %i.qk, %bb.ek ], [ %i.qo, %bb.el ]
  %.val21.i = load i64, ptr %.sroa.589.0..sroa_idx, align 8, !alias.scope !477, !noundef !5 ; 2 uses
  %i.qr = getelementptr i8, ptr %i.pv, i64 4
  %.val22.i = load i8, ptr %i.qr, align 4, !noundef !5
  %i.qs = zext i8 %.val22.i to i64                ; 3 uses
  %i.qt = icmp ugt i64 %.val21.i, %i.qs
  br i1 %i.qt, label %bb.en, label %bb.eo

end_hunk_0
