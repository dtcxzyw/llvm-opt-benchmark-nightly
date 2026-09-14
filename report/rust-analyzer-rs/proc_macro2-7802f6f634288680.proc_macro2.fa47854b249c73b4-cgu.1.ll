Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro2-7802f6f634288680.proc_macro2.fa47854b249c73b4-cgu.1?download=true
inline.NumInlined: 292
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCsluekWoTk8SK_11proc_macro25parse12token_stream:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.649.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.42.i.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.42.i.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.23.20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.415.i.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.bu = phi i64 [ %1, %bb.a ], [ %.be, %.backedge.backedge ] ; 2 uses
  %i.bv = phi ptr [ %0, %bb.a ], [ %.be708, %.backedge.backedge ] ; 2 uses
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %.noexc56.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.backedge, %bb.x
  %.sroa.0.069.i = phi ptr [ %.sroa.0.1.i, %bb.x ], [ %i.bv, %.backedge ] ; 40 uses
  %.sroa.21.067.i = phi i64 [ %.sroa.21.1.i, %bb.x ], [ %i.bu, %.backedge ] ; 43 uses
  %i.bx = load i8, ptr %.sroa.0.069.i, align 1, !noundef !5 ; 6 uses
  switch i8 %i.bx, label %bb.aa [
    i8 47, label %bb.b
    i8 32, label %bb.y
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.by = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.b
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.bz = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc46:                                         ; preds = %bb.c
  br i1 %i.bz, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.noexc49, %.noexc48, %.noexc
  %i.ca = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %bb.d
  br i1 %i.ca, label %bb.i, label %bb.h

bb.e:                                             ; preds = %.noexc46
  %i.cb = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc48:                                         ; preds = %bb.e
  br i1 %i.cb, label %bb.f, label %bb.d

bb.f:                                             ; preds = %.noexc48, %.noexc46
  %i.cc = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 3)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %bb.f
  br i1 %i.cc, label %bb.d, label %bb.g

bb.g:                                             ; preds = %.noexc49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !407
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse25take_until_newline_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc50:                                         ; preds = %bb.g
  %i.cd = load ptr, ptr %i.ag, align 8, !noalias !407, !nonnull !5, !noundef !5
  %i.ce = load i64, ptr %i.as, align 8, !noalias !407, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !407
  br label %bb.x

bb.h:                                             ; preds = %.noexc47
  %i.cf = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc51:                                         ; preds = %bb.h
  br i1 %i.cf, label %bb.k, label %.noexc56.thread

bb.i:                                             ; preds = %.noexc47
  %.not.i.i.i = icmp ugt i64 %.sroa.21.067.i, 4
  br i1 %.not.i.i.i, label %bb.j, label %.split3.i.i.i

.split3.i.i.i:                                    ; preds = %bb.i
  %i.cg = icmp eq i64 %.sroa.21.067.i, 4
  br i1 %i.cg, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i, label %.loopexit230.invoke

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !408, !noalias !409, !noundef !5
  %i.cj = icmp sgt i8 %i.ci, -65
  br i1 %i.cj, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i: ; preds = %bb.j, %.split3.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 4
  %i.cl = add i64 %.sroa.21.067.i, -4
  br label %bb.x

bb.k:                                             ; preds = %.noexc51
  %i.cm = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %bb.k
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc53
  %i.cn = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc54:                                         ; preds = %bb.l
  br i1 %i.cn, label %bb.m, label %.noexc56.thread

bb.m:                                             ; preds = %.noexc54, %.noexc53
  %i.co = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 3)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc55:                                         ; preds = %bb.m
  br i1 %i.co, label %.noexc56.thread, label %bb.n

bb.n:                                             ; preds = %.noexc55
  %i.cp = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc148:                                        ; preds = %bb.n
  br i1 %i.cp, label %bb.o, label %.noexc56.thread

bb.o:                                             ; preds = %.noexc148
  %i.cq = add i64 %.sroa.21.067.i, -1             ; 2 uses
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %.noexc56.thread, label %.lr.ph.i141

.lr.ph.i141:                                      ; preds = %bb.o, %.thread.i142
  %.sroa.0.034.i = phi i64 [ %.sroa.0.1.i143, %.thread.i142 ], [ 0, %bb.o ] ; 4 uses
  %.sroa.03.033.i = phi i64 [ %i.da, %.thread.i142 ], [ 0, %bb.o ] ; 9 uses
  %i.cr = icmp ult i64 %.sroa.03.033.i, %.sroa.21.067.i
  br i1 %i.cr, label %bb.p, label %.invoke

bb.p:                                             ; preds = %.lr.ph.i141
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %.sroa.03.033.i
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !410, !noalias !411, !noundef !5
  switch i8 %i.ct, label %.thread.i142 [
    i8 47, label %bb.q
    i8 42, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.cu = add nuw i64 %.sroa.03.033.i, 1          ; 4 uses
  %i.cv = icmp ult i64 %i.cu, %.sroa.21.067.i
  br i1 %i.cv, label %bb.r, label %.invoke

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !410, !noalias !411, !noundef !5
  %i.cy = icmp eq i8 %i.cx, 42                    ; 2 uses
  %spec.select.i = select i1 %i.cy, i64 %i.cu, i64 %.sroa.03.033.i
  %i.cz = zext i1 %i.cy to i64
  %spec.select26.i = add i64 %.sroa.0.034.i, %i.cz
  br label %.thread.i142

.thread.i142:                                     ; preds = %bb.u, %bb.t, %bb.r, %bb.p
  %.sroa.03.1.i = phi i64 [ %spec.select.i, %bb.r ], [ %.sroa.03.033.i, %bb.p ], [ %.sroa.03.033.i, %bb.t ], [ %i.dc, %bb.u ]
  %.sroa.0.1.i143 = phi i64 [ %spec.select26.i, %bb.r ], [ %.sroa.0.034.i, %bb.p ], [ %.sroa.0.034.i, %bb.t ], [ %i.dj, %bb.u ]
  %i.da = add i64 %.sroa.03.1.i, 1                ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cq
  br i1 %i.db, label %.lr.ph.i141, label %.noexc56.thread

bb.s:                                             ; preds = %bb.p
  %i.dc = add nuw i64 %.sroa.03.033.i, 1          ; 4 uses
  %i.dd = icmp ult i64 %i.dc, %.sroa.21.067.i
  br i1 %i.dd, label %bb.t, label %.invoke

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !410, !noalias !411, !noundef !5
  %i.dg = icmp eq i8 %i.df, 47
  br i1 %i.dg, label %bb.u, label %.thread.i142

.invoke:                                          ; preds = %bb.s, %bb.q, %.lr.ph.i141
  %i.dh = phi i64 [ %i.cu, %bb.q ], [ %.sroa.03.033.i, %.lr.ph.i141 ], [ %i.dc, %bb.s ]
  %i.di = phi ptr [ @16, %bb.q ], [ @15, %.lr.ph.i141 ], [ @17, %bb.s ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.dj = add i64 %.sroa.0.034.i, -1              ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.v, label %.thread.i142

bb.v:                                             ; preds = %bb.u
  %i.dl = add nuw i64 %.sroa.03.033.i, 2          ; 4 uses
  %.not.i.i.i144 = icmp ult i64 %i.dl, %.sroa.21.067.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.dl ; 3 uses
  br i1 %.not.i.i.i144, label %bb.w, label %.noexc56.thread

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !412, !noalias !413, !noundef !5
  %i.do = icmp sgt i8 %i.dn, -65
  br i1 %i.do, label %.noexc56.thread171, label %.loopexit230.invoke

.loopexit230.invoke:                              ; preds = %.split3.i.i.i95, %bb.dw, %bb.cm, %bb.bd, %bb.be, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i, %bb.ay, %bb.az, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i, %.split.i.i.i, %bb.au, %.split3.i.i52.i.i, %bb.as, %.split3.i.i.i.i, %bb.an, %.split3.i.i12.i, %bb.ak, %bb.z, %bb.w, %.split3.i.i.i, %bb.j, %bb.bn
  %i.dp = phi ptr [ %.sroa.0.069.i, %.split3.i.i12.i ], [ %.sroa.05.0.i, %bb.bn ], [ %.sroa.0.069.i, %bb.j ], [ %.sroa.0.069.i, %.split3.i.i.i ], [ %.sroa.0.069.i, %bb.w ], [ %.sroa.0.069.i, %bb.z ], [ %.sroa.0.069.i, %bb.ak ], [ %.sroa.0.061.i, %.split3.i.i52.i.i ], [ %.sroa.0.061.i, %.split3.i.i.i.i ], [ %.sroa.0.061.i, %.split3.i.i.i95 ], [ %.sroa.0.061.i, %bb.dw ], [ %.sroa.0.061.i, %bb.an ], [ %.sroa.0.061.i, %bb.as ], [ %.sroa.0.061.i, %bb.au ], [ %.sroa.544.0.copyload.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ %.sroa.544.0.copyload.i.i, %bb.az ], [ %.sroa.0.061.i, %bb.cm ], [ %.sroa.534.0.copyload.i.i, %bb.be ], [ %.sroa.534.0.copyload.i.i, %bb.bd ], [ %.sroa.544.0.copyload.i.i, %bb.ay ], [ %.sroa.534.0.copyload.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %.sroa.0.061.i, %.split.i.i.i ]
  %i.dq = phi i64 [ %.sroa.21.067.i, %.split3.i.i12.i ], [ %.sroa.710.0.i, %bb.bn ], [ %.sroa.21.067.i, %bb.j ], [ %.sroa.21.067.i, %.split3.i.i.i ], [ %.sroa.21.067.i, %bb.w ], [ %.sroa.21.067.i, %bb.z ], [ %.sroa.21.067.i, %bb.ak ], [ %.sroa.21.066.i, %.split3.i.i52.i.i ], [ %.sroa.21.066.i, %.split3.i.i.i.i ], [ %.sroa.21.066.i, %.split3.i.i.i95 ], [ %.sroa.21.066.i, %bb.dw ], [ %.sroa.21.066.i, %bb.an ], [ %.sroa.21.066.i, %bb.as ], [ %.sroa.21.066.i, %bb.au ], [ %.sroa.645.0.copyload.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ %.sroa.645.0.copyload.i.i, %bb.az ], [ %.sroa.21.066.i, %bb.cm ], [ %.sroa.635.0.copyload.i.i, %bb.be ], [ %.sroa.635.0.copyload.i.i, %bb.bd ], [ %.sroa.645.0.copyload.i.i, %bb.ay ], [ %.sroa.635.0.copyload.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %.sroa.21.066.i, %.split.i.i.i ]
  %i.dr = phi i64 [ 0, %.split3.i.i12.i ], [ %i.jc, %bb.bn ], [ 0, %bb.j ], [ 0, %.split3.i.i.i ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.ak ], [ 0, %.split3.i.i52.i.i ], [ 0, %.split3.i.i.i.i ], [ 0, %.split3.i.i.i95 ], [ 0, %bb.dw ], [ 0, %bb.an ], [ 0, %bb.as ], [ 3, %bb.au ], [ 3, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ 3, %bb.az ], [ 0, %bb.cm ], [ 3, %bb.be ], [ 3, %bb.bd ], [ 3, %bb.ay ], [ 3, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ 3, %.split.i.i.i ]
  %i.ds = phi i64 [ %.sroa.02.0.i, %.split3.i.i12.i ], [ %.sroa.710.0.i, %bb.bn ], [ %.sroa.02.0.i, %bb.ak ], [ 1, %bb.z ], [ %i.dl, %bb.w ], [ 4, %.split3.i.i.i ], [ 4, %bb.j ], [ 3, %.split3.i.i52.i.i ], [ 3, %.split3.i.i.i.i ], [ 11, %.split3.i.i.i95 ], [ 11, %bb.dw ], [ 3, %bb.an ], [ 3, %bb.as ], [ %.sroa.21.066.i, %bb.au ], [ %i.hp, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ %i.hp, %bb.az ], [ 1, %bb.cm ], [ %i.ib, %bb.be ], [ %i.ib, %bb.bd ], [ %i.hp, %bb.ay ], [ %i.ib, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %.sroa.21.066.i, %.split.i.i.i ]
  %i.dt = phi ptr [ @3, %.split3.i.i12.i ], [ @12, %bb.bn ], [ @3, %bb.j ], [ @3, %.split3.i.i.i ], [ @3, %bb.w ], [ @3, %bb.z ], [ @3, %bb.ak ], [ @3, %.split3.i.i52.i.i ], [ @3, %.split3.i.i.i.i ], [ @3, %.split3.i.i.i95 ], [ @3, %bb.dw ], [ @3, %bb.an ], [ @3, %bb.as ], [ @28, %bb.au ], [ @29, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ @29, %bb.az ], [ @3, %bb.cm ], [ @30, %bb.be ], [ @30, %bb.bd ], [ @29, %bb.ay ], [ @30, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ @28, %.split.i.i.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef %i.dq, i64 noundef %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #19
          to label %.loopexit230.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit230.cont:                                ; preds = %.loopexit230.invoke
  unreachable

.noexc56.thread171:                               ; preds = %bb.w
  %i.du = sub nuw i64 %.sroa.21.067.i, %i.dl
  br label %bb.x

bb.x:                                             ; preds = %.noexc56.thread171, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i, %.noexc50
  %.sroa.21.1.i = phi i64 [ %i.ea, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i ], [ %i.gi, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i ], [ %i.cl, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i ], [ %i.ce, %.noexc50 ], [ %i.du, %.noexc56.thread171 ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %i.dz, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i ], [ %i.gh, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i ], [ %i.ck, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i ], [ %i.cd, %.noexc50 ], [ %i.dm, %.noexc56.thread171 ] ; 2 uses
  %i.dv = icmp eq i64 %.sroa.21.1.i, 0
  br i1 %i.dv, label %.noexc56.thread, label %.lr.ph.i

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i
  %.not.i.i7.i = icmp ugt i64 %.sroa.21.067.i, 1
  br i1 %.not.i.i7.i, label %bb.z, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !414, !noalias !415, !noundef !5
  %i.dy = icmp sgt i8 %i.dx, -65
  br i1 %i.dy, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i: ; preds = %bb.z, %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 1
  %i.ea = add i64 %.sroa.21.067.i, -1
  br label %bb.x

bb.aa:                                            ; preds = %.lr.ph.i
  %i.eb = add i8 %i.bx, -9
  %or.cond.i = icmp ult i8 %i.eb, 5
  br i1 %or.cond.i, label %bb.y, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = icmp sgt i8 %i.bx, -1
  br i1 %i.ec, label %.noexc56.thread, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i: ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 1
  %i.ee = and i8 %i.bx, 31
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = icmp samesign ne i64 %.sroa.21.067.i, 1
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i8, ptr %i.ed, align 1, !noalias !416, !noundef !5
  %i.ei = shl nuw nsw i32 %i.ef, 6
  %i.ej = and i8 %i.eh, 63
  %i.ek = zext nneg i8 %i.ej to i32               ; 2 uses
  %i.el = or disjoint i32 %i.ei, %i.ek
  %i.em = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.em, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i, label %bb.ac

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 2
  %i.eo = icmp samesign ne i64 %.sroa.21.067.i, 2
  call void @llvm.assume(i1 %i.eo)
  %i.ep = load i8, ptr %i.en, align 1, !noalias !416, !noundef !5
  %i.eq = shl nuw nsw i32 %i.ek, 6
  %i.er = and i8 %i.ep, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eq, %i.es            ; 2 uses
  %i.eu = shl nuw nsw i32 %i.ef, 12
  %i.ev = or disjoint i32 %i.et, %i.eu
  %i.ew = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.ew, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i, label %bb.ac

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 3
  %i.ey = icmp samesign ne i64 %.sroa.21.067.i, 3
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i8, ptr %i.ex, align 1, !noalias !416, !noundef !5
  %i.fa = shl nuw nsw i32 %i.ef, 18
  %i.fb = and i32 %i.fa, 1835008
  %i.fc = shl nuw nsw i32 %i.et, 6
  %i.fd = and i8 %i.ez, 63
  %i.fe = zext nneg i8 %i.fd to i32
  %i.ff = or disjoint i32 %i.fc, %i.fe
  %i.fg = or disjoint i32 %i.ff, %i.fb
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ev, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i ], [ %i.fg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i ], [ %i.el, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i ] ; 12 uses
  %i.fh = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.fh)
  %switch.tableidx = add nsw i32 %.sroa.4.0.i.ph.i, -9 ; 2 uses
  %i.fi = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.fi, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.thread53.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fj = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 133
  br i1 %i.fj, label %.noexc56.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fk = lshr i32 %.sroa.4.0.i.ph.i, 8
  switch i32 %i.fk, label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i [
    i32 0, label %bb.ah
    i32 22, label %bb.af
    i32 32, label %bb.ai
    i32 48, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.fl = icmp eq i32 %.sroa.4.0.i.ph.i, 5760
  %i.fm = zext i1 %i.fl to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fn = icmp eq i32 %.sroa.4.0.i.ph.i, 12288
  %i.fo = zext i1 %i.fn to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.fp = and i32 %.sroa.4.0.i.ph.i, 255
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !407, !noundef !5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.ft = and i32 %.sroa.4.0.i.ph.i, 255
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !407, !noundef !5
  %i.fx = lshr i8 %i.fw, 1
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i

_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sroa.0.0.i.i.i = phi i8 [ %i.fo, %bb.ag ], [ %i.fs, %bb.ah ], [ %i.fm, %bb.af ], [ %i.fx, %bb.ai ], [ 0, %bb.ae ]
  %i.fy = trunc i8 %.sroa.0.0.i.i.i to i1
  %i.fz = icmp eq i32 %.sroa.4.0.i.ph.i, 8206
  %or.cond2.i.i = or i1 %i.fz, %i.fy
  br i1 %or.cond2.i.i, label %bb.aj, label %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i

_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i: ; preds = %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i
  %i.ga = icmp eq i32 %.sroa.4.0.i.ph.i, 8207
  br i1 %i.ga, label %.thread54.thread.i, label %.noexc56.thread

bb.aj:                                            ; preds = %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i
  %i.gb = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.gb, label %.thread53.i, label %.thread54.i

.thread54.i:                                      ; preds = %bb.aj
  %i.gc = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  br i1 %i.gc, label %.thread54.thread.i, label %.thread53.i

.thread54.thread.i:                               ; preds = %.thread54.i, %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i
  br label %.thread53.i

.thread53.i:                                      ; preds = %bb.ac, %.thread54.thread.i, %.thread54.i, %bb.aj
  %.sroa.02.0.i = phi i64 [ 2, %bb.aj ], [ 3, %.thread54.thread.i ], [ 4, %.thread54.i ], [ 1, %bb.ac ] ; 7 uses
  %.not.i.i11.i = icmp ult i64 %.sroa.02.0.i, %.sroa.21.067.i
  br i1 %.not.i.i11.i, label %bb.ak, label %.split3.i.i12.i

.split3.i.i12.i:                                  ; preds = %.thread53.i
  %i.gd = icmp eq i64 %.sroa.02.0.i, %.sroa.21.067.i
  br i1 %i.gd, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i, label %.loopexit230.invoke

bb.ak:                                            ; preds = %.thread53.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %.sroa.02.0.i
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !417, !noalias !418, !noundef !5
  %i.gg = icmp sgt i8 %i.gf, -65
  br i1 %i.gg, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i: ; preds = %bb.ak, %.split3.i.i12.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %.sroa.02.0.i
  %i.gi = sub i64 %.sroa.21.067.i, %.sroa.02.0.i
  br label %bb.x

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.eq, %bb.ej, %bb.eh, %bb.cz, %bb.da, %bb.co, %bb.bq, %bb.bt, %bb.ca, %bb.ce, %bb.cf, %bb.et, %bb.em
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ej ], [ %i.mx, %bb.et ], [ %i.mw, %bb.eq ], [ %lpad.phi238, %bb.em ], [ %i.kr, %bb.cz ], [ %lpad.thr_comm.i, %bb.bt ], [ %i.kc, %bb.co ], [ %i.mp, %bb.eh ], [ %.pn.pn75.i, %bb.bq ], [ %.pn.pn.pn70.i, %bb.ce ], [ %i.jm, %bb.ca ], [ %.pn.pn.pn70.i, %bb.cf ], [ %i.kr, %bb.da ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit224, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit227, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit232, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp233, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.011.1 = phi i1 [ true, %bb.ej ], [ true, %bb.et ], [ true, %bb.eq ], [ %.sroa.011.4.ph, %bb.em ], [ true, %bb.cz ], [ true, %bb.bt ], [ false, %bb.co ], [ true, %bb.eh ], [ true, %bb.bq ], [ true, %bb.ce ], [ true, %bb.ca ], [ true, %bb.cf ], [ true, %bb.da ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.011.2.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #21
          to label %bb.fb unwind label %bb.en

.loopexit:                                        ; preds = %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  %lpad.loopexit224 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %bb.n
  %lpad.loopexit227 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i96, %_RNvNtCsluekWoTk8SK_11proc_macro25parse5ident.exit.thread.i, %_RNvNtCsluekWoTk8SK_11proc_macro25parse5ident.exit.i, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %_RNvNtCsluekWoTk8SK_11proc_macro25parse5punct.exit.i.thread, %.noexc100, %bb.cw, %bb.cv, %bb.cs, %bb.cr, %bb.cj, %bb.bz, %bb.by, %.noexc82, %bb.bp, %bb.bo, %.noexc78, %_RINvMNtCshzWfHUSfYae_4core3stre4findcECsluekWoTk8SK_11proc_macro2.exit.thread.i, %bb.bb, %bb.aw, %bb.av, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i, %bb.aq, %bb.ap, %bb.ao, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i, %bb.al, %.noexc56.thread
  %lpad.loopexit232 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.loopexit230.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec12RcVecBuilderNtBG_9TokenTreeEEBG_.exit.i, %bb.dx, %bb.ex
  %.sroa.011.2.ph.ph.ph.ph = phi i1 [ false, %bb.ex ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec12RcVecBuilderNtBG_9TokenTreeEEBG_.exit.i ], [ true, %.loopexit230.invoke ], [ true, %bb.dx ], [ true, %.invoke ]
  %lpad.loopexit.split-lp233 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc56.thread:                                  ; preds = %bb.o, %.noexc148, %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i, %bb.ad, %bb.ab, %bb.x, %.noexc55, %.noexc54, %.noexc51, %bb.v, %.thread.i142, %.backedge
  %.sroa.21.066.i = phi i64 [ %.sroa.21.067.i, %.thread.i142 ], [ 0, %.backedge ], [ %.sroa.21.067.i, %.noexc148 ], [ 1, %bb.o ], [ %.sroa.21.067.i, %.noexc51 ], [ %.sroa.21.067.i, %.noexc54 ], [ %.sroa.21.067.i, %.noexc55 ], [ %.sroa.21.067.i, %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i ], [ %.sroa.21.067.i, %bb.ab ], [ 0, %bb.x ], [ %.sroa.21.067.i, %bb.ad ], [ 0, %bb.v ] ; 50 uses
  %.sroa.0.061.i = phi ptr [ %.sroa.0.069.i, %.thread.i142 ], [ %i.bv, %.backedge ], [ %.sroa.0.069.i, %.noexc148 ], [ %.sroa.0.069.i, %bb.o ], [ %.sroa.0.069.i, %.noexc51 ], [ %.sroa.0.069.i, %.noexc54 ], [ %.sroa.0.069.i, %.noexc55 ], [ %.sroa.0.069.i, %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i ], [ %.sroa.0.069.i, %bb.ab ], [ %.sroa.0.1.i, %bb.x ], [ %.sroa.0.069.i, %bb.ad ], [ %i.dm, %bb.v ] ; 45 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.061.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.gj = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 3)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc61:                                         ; preds = %.noexc56.thread
  br i1 %i.gj, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc61
  %i.gk = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 3)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.al
  br i1 %i.gk, label %bb.ap, label %bb.ao

bb.am:                                            ; preds = %.noexc61
  %.not.i.i.i.i = icmp ugt i64 %.sroa.21.066.i, 3
  br i1 %.not.i.i.i.i, label %bb.an, label %.split3.i.i.i.i

.split3.i.i.i.i:                                  ; preds = %bb.am
  %i.gl = icmp eq i64 %.sroa.21.066.i, 3
  br i1 %i.gl, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i, label %.loopexit230.invoke

bb.an:                                            ; preds = %bb.am
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !421, !noalias !422, !noundef !5
  %i.go = icmp sgt i8 %i.gn, -65
  br i1 %i.go, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i: ; preds = %bb.an, %.split3.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  %i.gq = add i64 %.sroa.21.066.i, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !423
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse25take_until_newline_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gp, i64 noundef %i.gq)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc64:                                         ; preds = %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i
  %i.gr = load ptr, ptr %i.p, align 8, !noalias !423, !nonnull !5, !noundef !5
  %i.gs = load i64, ptr %i.ax, align 8, !noalias !423, !noundef !5
  %i.gt = load ptr, ptr %i.ay, align 8, !noalias !423, !nonnull !5, !noundef !5
  %i.gu = load i64, ptr %i.az, align 8, !noalias !423, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !423
  br label %_RNvNtCsluekWoTk8SK_11proc_macro25parse20doc_comment_contents.exit.i

bb.ao:                                            ; preds = %.noexc62
  %i.gv = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc65:                                         ; preds = %bb.ao
  br i1 %i.gv, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %.noexc62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !423
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse13block_comment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc66:                                         ; preds = %bb.ap
  %i.gw = load ptr, ptr %i.o, align 8, !noalias !423, !noundef !5 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.bc, label %bb.bd

bb.aq:                                            ; preds = %.noexc65
  %i.gy = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc67:                                         ; preds = %bb.aq
  br i1 %i.gy, label %bb.at, label %.thread178

bb.ar:                                            ; preds = %.noexc65
  %.not.i.i51.i.i = icmp ugt i64 %.sroa.21.066.i, 3
  br i1 %.not.i.i51.i.i, label %bb.as, label %.split3.i.i52.i.i

.split3.i.i52.i.i:                                ; preds = %bb.ar
  %i.gz = icmp eq i64 %.sroa.21.066.i, 3
  br i1 %i.gz, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i, label %.loopexit230.invoke

bb.as:                                            ; preds = %bb.ar
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.hc = icmp sgt i8 %i.hb, -65
  br i1 %i.hc, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i: ; preds = %bb.as, %.split3.i.i52.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3 ; 2 uses
  %i.he = add i64 %.sroa.21.066.i, -3             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !426
  store i32 47, ptr %i.k, align 4, !noalias !426
  %i.hf = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc69:                                         ; preds = %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !426
  br i1 %i.hf, label %.thread178.thread, label %bb.bb

bb.at:                                            ; preds = %.noexc67
  %.not.i.i.i59 = icmp ugt i64 %.sroa.21.066.i, 3
  br i1 %.not.i.i.i59, label %bb.au, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.at
  %i.hg = icmp eq i64 %.sroa.21.066.i, 3
  br i1 %i.hg, label %bb.av, label %.loopexit230.invoke

bb.au:                                            ; preds = %bb.at
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !427, !noalias !428, !noundef !5
  %i.hj = icmp sgt i8 %i.hi, -65
  br i1 %i.hj, label %bb.av, label %.loopexit230.invoke

bb.av:                                            ; preds = %bb.au, %.split.i.i.i
  %i.hk = add i64 %.sroa.21.066.i, -3
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !423
  store i32 42, ptr %i.l, align 4, !noalias !423
  %i.hm = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hl, i64 noundef %i.hk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc70:                                         ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !423
  br i1 %i.hm, label %.thread178.thread, label %bb.aw

bb.aw:                                            ; preds = %.noexc70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !423
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse13block_comment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc72:                                         ; preds = %bb.aw
  %i.hn = load ptr, ptr %i.m, align 8, !noalias !423, !noundef !5 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !423
  br label %.thread178.thread

bb.ay:                                            ; preds = %.noexc72
  %.sroa.443.0.copyload.i.i = load i64, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !noalias !423
  %.sroa.544.0.copyload.i.i = load ptr, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !noalias !423, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.645.0.copyload.i.i = load i64, ptr %.sroa.645.0..sroa_idx.i.i, align 8, !noalias !423 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !423
  %i.hp = add i64 %.sroa.645.0.copyload.i.i, -2   ; 4 uses
  %or.cond.i48.i.i = icmp ult i64 %.sroa.645.0.copyload.i.i, 5
  br i1 %or.cond.i48.i.i, label %.loopexit230.invoke, label %bb.az, !prof !429

bb.az:                                            ; preds = %bb.ay
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.544.0.copyload.i.i, i64 3 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !alias.scope !430, !noalias !428, !noundef !5
  %i.hs = icmp sgt i8 %i.hr, -65
  br i1 %i.hs, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i, label %.loopexit230.invoke, !prof !431

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i: ; preds = %bb.az
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.544.0.copyload.i.i, i64 %i.hp
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !430, !noalias !428, !noundef !5
  %i.hv = icmp sgt i8 %i.hu, -65
  br i1 %i.hv, label %bb.ba, label %.loopexit230.invoke, !prof !432

bb.ba:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i
  %i.hw = add i64 %.sroa.645.0.copyload.i.i, -5
  br label %_RNvNtCsluekWoTk8SK_11proc_macro25parse20doc_comment_contents.exit.i

bb.bb:                                            ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !423
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse25take_until_newline_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.he)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc74:                                         ; preds = %bb.bb
  %i.hx = load ptr, ptr %i.n, align 8, !noalias !423, !nonnull !5, !noundef !5
  %i.hy = load i64, ptr %i.au, align 8, !noalias !423, !noundef !5
  %i.hz = load ptr, ptr %i.av, align 8, !noalias !423, !nonnull !5, !noundef !5
  %i.ia = load i64, ptr %i.aw, align 8, !noalias !423, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !423
  br label %_RNvNtCsluekWoTk8SK_11proc_macro25parse20doc_comment_contents.exit.i

bb.bc:                                            ; preds = %.noexc66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !423
  br label %.thread178

bb.bd:                                            ; preds = %.noexc66
  %.sroa.433.0.copyload.i.i = load i64, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !noalias !423
  %.sroa.534.0.copyload.i.i = load ptr, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !noalias !423, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.635.0.copyload.i.i = load i64, ptr %.sroa.635.0..sroa_idx.i.i, align 8, !noalias !423 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !423
  %i.ib = add i64 %.sroa.635.0.copyload.i.i, -2   ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %.sroa.635.0.copyload.i.i, 5
  br i1 %or.cond.i.i.i, label %.loopexit230.invoke, label %bb.be, !prof !429

bb.be:                                            ; preds = %bb.bd
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.534.0.copyload.i.i, i64 3 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !433, !noalias !428, !noundef !5
  %i.ie = icmp sgt i8 %i.id, -65
  br i1 %i.ie, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i, label %.loopexit230.invoke, !prof !431

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i: ; preds = %bb.be
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.534.0.copyload.i.i, i64 %i.ib
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !433, !noalias !428, !noundef !5
  %i.ih = icmp sgt i8 %i.ig, -65
end_hunk_0
begin_hunk_1_@_RNvNtCsluekWoTk8SK_11proc_macro25parse12token_stream:bb.a
bb.eq:                                            ; preds = %bb.er
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.er:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false)
  invoke void @_RNvMs1_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_18TokenStreamBuilder22push_token_from_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.es unwind label %bb.eq

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %.backedge.backedge

bb.et:                                            ; preds = %bb.ep
  %i.mx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsluekWoTk8SK_11proc_macro29TokenTreeEBD_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #21
          to label %.body unwind label %bb.en

.loopexit707:                                     ; preds = %bb.eb, %bb.ci, %bb.eo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback18TokenStreamBuilderEBF_.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtBI_8fallback18TokenStreamBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %.loopexit707
  %i.my = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtBP_8fallback18TokenStreamBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body130.thread unwind label %bb.ew

bb.ev:                                            ; preds = %.loopexit707
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtBP_8fallback18TokenStreamBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_.exit unwind label %.body130.thread221

.body130.thread221:                               ; preds = %bb.ev
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.body130.thread

bb.ew:                                            ; preds = %bb.eu
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ex:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.nb = invoke noundef nonnull ptr @_RNvMs1_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_18TokenStreamBuilder5build(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an)
          to label %bb.ey unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtBI_8fallback18TokenStreamBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_.exit137 unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.nc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtBP_8fallback18TokenStreamBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.fa

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_.exit137: ; preds = %bb.ey
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtBP_8fallback18TokenStreamBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.fb:                                            ; preds = %.body
  br i1 %.sroa.011.1, label %.body130.thread, label %common.resume

bb.fc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback18TokenStreamBuilderEBF_.exit140, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_.exit137
  %.sroa.0.2 = phi ptr [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback18TokenStreamBuilderEBF_.exit140 ], [ %i.nb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_.exit137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  ret ptr %.sroa.0.2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_.exit: ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback18TokenStreamBuilderEBF_.exit140 unwind label %bb.fd

bb.fd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_.exit
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.fb, %.body130.thread, %bb.ez, %bb.fd
  %common.resume.op = phi { ptr, i32 } [ %i.ne, %bb.fd ], [ %i.nc, %bb.ez ], [ %.pn44215, %.body130.thread ], [ %.pn, %bb.fb ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback18TokenStreamBuilderEBF_.exit140: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_.exit
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %bb.fc

.body130.thread:                                  ; preds = %bb.eu, %.body130.thread221, %bb.fb
  %.pn44215 = phi { ptr, i32 } [ %i.mz, %.body130.thread221 ], [ %.pn, %bb.fb ], [ %i.my, %bb.eu ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback18TokenStreamBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #21
          to label %common.resume unwind label %bb.en
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse13block_comment(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2), !noalias !472
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = add i64 %2, -1                           ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.r, %._crit_edge, %bb.b
  ret void

._crit_edge:                                      ; preds = %.thread, %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.thread
  %.sroa.0.034 = phi i64 [ %.sroa.0.1, %.thread ], [ 0, %bb.c ] ; 4 uses
  %.sroa.03.033 = phi i64 [ %i.l, %.thread ], [ 0, %bb.c ] ; 9 uses
  %i.c = icmp ult i64 %.sroa.03.033, %2
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.033
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  switch i8 %i.e, label %.thread [
    i8 47, label %bb.g
    i8 42, label %bb.j
  ]

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.033, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = add nuw i64 %.sroa.03.033, 1             ; 4 uses
  %i.g = icmp ult i64 %i.f, %2
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  %i.j = icmp eq i8 %i.i, 42                      ; 2 uses
  %spec.select = select i1 %i.j, i64 %i.f, i64 %.sroa.03.033
  %i.k = zext i1 %i.j to i64
  %spec.select26 = add i64 %.sroa.0.034, %i.k
  br label %.thread

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

.thread:                                          ; preds = %bb.h, %bb.e, %bb.m, %bb.k
  %.sroa.03.1 = phi i64 [ %spec.select, %bb.h ], [ %.sroa.03.033, %bb.e ], [ %.sroa.03.033, %bb.k ], [ %i.n, %bb.m ]
  %.sroa.0.1 = phi i64 [ %spec.select26, %bb.h ], [ %.sroa.0.034, %bb.e ], [ %.sroa.0.034, %bb.k ], [ %i.s, %bb.m ]
  %i.l = add i64 %.sroa.03.1, 1                   ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.b
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %bb.e
  %i.n = add nuw i64 %.sroa.03.033, 1             ; 4 uses
  %i.o = icmp ult i64 %i.n, %2
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !noundef !5
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %bb.m, label %.thread

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.s = add i64 %.sroa.0.034, -1                 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.u = add i64 %.sroa.03.033, 2                 ; 9 uses
  %.not.i.i = icmp ult i64 %i.u, %2
  br i1 %.not.i.i, label %bb.o, label %.split3.i.i

.split3.i.i:                                      ; preds = %bb.n
  %i.v = icmp eq i64 %i.u, %2
  br i1 %i.v, label %.split.i, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !473, !noalias !474, !noundef !5
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.split3.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19, !noalias !475
  unreachable

.split.i:                                         ; preds = %.split3.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.ab = sub i64 %2, %i.u
  %i.ac = load i8, ptr %i.aa, align 1, !alias.scope !476, !noundef !5
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.split.i, %bb.q
  %i.ae = phi i64 [ %i.ab, %bb.q ], [ 0, %.split.i ]
  %i.af = phi ptr [ %i.aa, %bb.q ], [ %i.z, %.split.i ]
  store ptr %i.af, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.d

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse13ident_not_raw(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = icmp samesign eq i64 %2, 0
  br i1 %i.c, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = load i8, ptr %1, align 1, !noalias !492, !noundef !5 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i: ; preds = %bb.b
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.d, align 1, !noalias !492, !noundef !5
  %i.l = shl nuw nsw i32 %i.h, 6
  %i.m = and i8 %i.k, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = icmp samesign ugt i8 %i.e, -33
  br i1 %i.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i8 %i.e to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i
  %i.r = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.t = load i8, ptr %i.j, align 1, !noalias !492, !noundef !5
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i
  %i.ab = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !492, !noundef !5
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i, %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i
  %.sroa.026.0 = phi ptr [ %i.d, %bb.c ], [ %i.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i ], [ %i.s, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i ], [ %i.j, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i ] ; 2 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.q, %bb.c ], [ %i.ak, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i ], [ %i.z, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i ], [ %i.o, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i ] ; 2 uses
  %i.al = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.al)
  %i.am = tail call noundef zeroext i1 @_RNvNtCsluekWoTk8SK_11proc_macro28fallback14is_ident_start(i32 noundef %.sroa.4.0.i.ph.i)
  br i1 %i.am, label %.preheader.preheader, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread

.preheader.preheader:                             ; preds = %bb.d
  %i.an = ptrtoint ptr %.sroa.026.0 to i64
  %i.ao = sub i64 %i.an, %i.b
  br label %.preheader

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %bb.a, %bb.d
  store ptr null, ptr %0, align 8
  br label %bb.m

.preheader:                                       ; preds = %.preheader.preheader, %bb.g
  %.sroa.029.0 = phi ptr [ %.sroa.029.1, %bb.g ], [ %.sroa.026.0, %.preheader.preheader ] ; 7 uses
  %.sroa.1030.0 = phi i64 [ %i.cc, %bb.g ], [ %i.ao, %.preheader.preheader ] ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.029.0 to i64
  %i.aq = icmp eq ptr %.sroa.029.0, %i.a
  br i1 %i.aq, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit24.thread, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 1 ; 3 uses
  %i.as = load i8, ptr %.sroa.029.0, align 1, !noalias !493, !noundef !5 ; 5 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i18

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i18: ; preds = %bb.e
  %i.au = and i8 %i.as, 31
  %i.av = zext nneg i8 %i.au to i32               ; 3 uses
  %i.aw = icmp ne ptr %i.ar, %i.a
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 2 ; 3 uses
  %i.ay = load i8, ptr %i.ar, align 1, !noalias !493, !noundef !5
  %i.az = shl nuw nsw i32 %i.av, 6
  %i.ba = and i8 %i.ay, 63
  %i.bb = zext nneg i8 %i.ba to i32               ; 2 uses
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = icmp samesign ugt i8 %i.as, -33
  br i1 %i.bd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i22, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = zext nneg i8 %i.as to i32
  br label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i22: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i18
  %i.bf = icmp ne ptr %i.ax, %i.a
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 3 ; 3 uses
  %i.bh = load i8, ptr %i.ax, align 1, !noalias !493, !noundef !5
  %i.bi = shl nuw nsw i32 %i.bb, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk            ; 2 uses
  %i.bm = shl nuw nsw i32 %i.av, 12
  %i.bn = or disjoint i32 %i.bl, %i.bm
  %i.bo = icmp samesign ugt i8 %i.as, -17
  br i1 %i.bo, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i23, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i23: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i22
  %i.bp = icmp ne ptr %i.bg, %i.a
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 4
  %i.br = load i8, ptr %i.bg, align 1, !noalias !493, !noundef !5
  %i.bs = shl nuw nsw i32 %i.av, 18
  %i.bt = and i32 %i.bs, 1835008
  %i.bu = shl nuw nsw i32 %i.bl, 6
  %i.bv = and i8 %i.br, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw
  %i.by = or disjoint i32 %i.bx, %i.bt
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i23, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i22, %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i18
  %.sroa.029.1 = phi ptr [ %i.ar, %bb.f ], [ %i.bq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i23 ], [ %i.bg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i22 ], [ %i.ax, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i18 ] ; 2 uses
  %.sroa.4.0.i.ph.i19 = phi i32 [ %i.be, %bb.f ], [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i23 ], [ %i.bn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i22 ], [ %i.bc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i18 ] ; 2 uses
  %i.bz = icmp samesign ult i32 %.sroa.4.0.i.ph.i19, 1114112
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = ptrtoint ptr %.sroa.029.1 to i64
  %i.cb = sub i64 %.sroa.1030.0, %i.ap
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = tail call noundef zeroext i1 @_RNvNtCsluekWoTk8SK_11proc_macro28fallback17is_ident_continue(i32 noundef %.sroa.4.0.i.ph.i19)
  br i1 %i.cd, label %.preheader, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit24.thread

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit24.thread: ; preds = %.preheader, %bb.g
  %.sroa.08.0 = phi i64 [ %.sroa.1030.0, %bb.g ], [ %2, %.preheader ] ; 10 uses
  %i.ce = icmp eq i64 %.sroa.08.0, 0
  br i1 %i.ce, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit24.thread
  %.not.i.i = icmp ult i64 %.sroa.08.0, %2
  br i1 %.not.i.i, label %bb.i, label %.split3.i.i
end_hunk_1
