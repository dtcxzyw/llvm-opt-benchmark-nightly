Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever-6a1231da06082d3a.markup5ever.74f9fa4e4cb8210a-cgu.0?download=true
inline.NumInlined: 135
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue15pop_except_from:bb.a

bb.k:                                             ; preds = %bb.f, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.x, %bb.g ], [ 0, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !4 ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  %i.ai = icmp eq i32 %i.ae, 0
  br i1 %i.ai, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread70, %bb.k
  %i.aj = phi ptr [ %i.z, %.thread70 ], [ %i.ah, %bb.k ]
  %.sroa.0.0.i74 = phi ptr [ %i.y, %.thread70 ], [ %i.ag, %bb.k ]
  %.sroa.4.0.i73 = phi i32 [ %i.aa, %.thread70 ], [ %i.ae, %bb.k ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %.sroa.0.02.i = phi i32 [ %i.aq, %bb.m ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.02.01.i = phi ptr [ %i.ak, %bb.m ], [ %.sroa.0.0.i74, %.lr.ph.preheader.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 1 ; 2 uses
  %i.al = load i8, ptr %.sroa.02.01.i, align 1, !alias.scope !121, !noundef !4 ; 2 uses
  %i.am = icmp ugt i8 %i.al, 63
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = zext nneg i8 %i.al to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %2
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.m, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.aq = add nuw i32 %.sroa.0.02.i, 1
  %i.ar = icmp eq ptr %i.ak, %i.aj
  br i1 %i.ar, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit, label %.lr.ph.i

_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit: ; preds = %bb.m, %bb.l
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.02.i, %bb.l ], [ %.sroa.4.0.i73, %bb.m ] ; 9 uses
  %.not21 = icmp eq i32 %.sroa.0.0.lcssa.i, 0
  br i1 %.not21, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %bb.n

_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread: ; preds = %bb.d, %bb.k, %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.as = tail call fastcc noundef i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) ; 4 uses
  %.not22 = icmp eq i32 %i.as, -1
  br i1 %.not22, label %bb.z, label %bb.w, !prof !7

bb.n:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.at = icmp ult i32 %.sroa.0.0.lcssa.i, 9
  br i1 %i.at, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = and i64 %i.o, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.p, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !122, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !noalias !122
  %i.az = getelementptr i8, ptr %i.n, i64 1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  store ptr %i.az, ptr %i.m, align 8, !noalias !122
  store i32 0, ptr %i.aw, align 4, !noalias !122
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.p, %bb.o
  %i.ba = phi ptr [ %i.n, %bb.o ], [ %i.az, %bb.p ]
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1     ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !122, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %bb.q, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, !prof !7

bb.q:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.be = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !122, !nonnull !4, !noundef !4
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !122, !noundef !4
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
          to label %.noexc unwind label %bb.ab, !noalias !122

.noexc:                                           ; preds = %bb.q
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bg = add nuw i64 %i.bc, 1
  store i64 %i.bg, ptr %i.bb, align 8, !noalias !122
  %i.bh = load ptr, ptr %i.m, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr i8, ptr %i.bh, i64 %i.bk  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !122, !noundef !4
  %i.bo = ptrtoint ptr %i.bl to i64
  %.not.i.i = and i64 %i.bo, 1
  %i.bp = xor i64 %.not.i.i, 1
  %i.bq = getelementptr i8, ptr %i.bl, i64 %i.bp  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %.sroa.4.0.insert.ext.i = zext i32 %i.bn to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.02.0.insert.ext.i = zext i32 %.sroa.0.0.lcssa.i to i64
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.02.0.insert.ext.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.r:                                             ; preds = %bb.n
  br i1 %i.q, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = and i64 %i.o, 1
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr i8, ptr %i.n, i64 %i.bs
  %i.bu = trunc i64 %i.o to i1
  br i1 %i.bu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !124, !noundef !4
  %i.bx = zext i32 %i.bw to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sroa.01.0.i.i.i = phi i64 [ %i.bx, %bb.t ], [ 0, %bb.s ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.0.0.i3.i = phi ptr [ %i.ca, %bb.v ], [ %i.by, %bb.u ]
  %i.cb = zext nneg i32 %.sroa.0.0.lcssa.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.cc = inttoptr i64 %i.cb to ptr
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.0.i3.i, i64 range(i64 0, 9) %i.cb, i1 false), !noalias !126
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.w:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  %i.cd = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, inttoptr (i64 15 to ptr)
  br i1 %i.ce, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = icmp ult ptr %i.cd, inttoptr (i64 9 to ptr)
  br i1 %i.cf, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !noundef !4
  %i.ci = zext i32 %i.ch to i64
  br label %bb.aj

bb.z:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.am, %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load i64, ptr %1, align 8, !noundef !4
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %1, align 8
  br label %bb.ap

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i
  %.pre-phi = phi i64 [ %i.o, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bi, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 6 uses
  %i.cm = phi ptr [ %i.n, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bh, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 8 uses
  %.sroa.563.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  %.sroa.062.0 = phi ptr [ %i.cc, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bq, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.cn = icmp eq ptr %i.cm, inttoptr (i64 15 to ptr)
  br i1 %i.cn, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.co = icmp ult ptr %i.cm, inttoptr (i64 9 to ptr) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !alias.scope !127
  %i.cr = trunc nuw nsw i64 %.pre-phi to i32
  %.sroa.0.0.i39 = select i1 %i.co, i32 %i.cr, i32 %i.cq
  %i.cs = sub i32 %.sroa.0.0.i39, %.sroa.0.0.lcssa.i ; 3 uses
  %i.ct = icmp ult i32 %i.cs, 9
  br i1 %i.ct, label %bb.af, label %bb.ad

.thread.i:                                        ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.cu = sub i32 0, %.sroa.0.0.lcssa.i           ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 9
  br i1 %i.cv, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.ad

bb.ad:                                            ; preds = %.thread.i, %bb.ac
  %i.cw = and i64 %.pre-phi, 1
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !alias.scope !127 ; 2 uses
  br i1 %i.cx, label %bb.ae, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !noalias !127
  %i.db = getelementptr i8, ptr %i.cm, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  store ptr %i.db, ptr %i.m, align 8, !alias.scope !127
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40: ; preds = %bb.ae, %bb.ad
  %i.dc = phi ptr [ %i.db, %bb.ae ], [ %i.cm, %bb.ad ]
  %i.dd = phi i32 [ 0, %bb.ae ], [ %i.cz, %bb.ad ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.df = add i32 %i.dd, %.sroa.0.0.lcssa.i
  %3 = load i32, ptr %i.de, align 8, !alias.scope !127, !noundef !4
  %4 = sub i32 %3, %.sroa.0.0.lcssa.i             ; 2 uses
  %5 = zext i32 %4 to i64
  %6 = zext i32 %i.df to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  store i64 %8, ptr %i.de, align 8, !alias.scope !127
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

bb.af:                                            ; preds = %bb.ac
  br i1 %i.co, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = and i64 %.pre-phi, 1
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr i8, ptr %i.cm, i64 %i.dh
  %i.dj = trunc i64 %.pre-phi to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !alias.scope !127
  %i.dm = zext i32 %i.dl to i64
  %.sroa.01.0.i.i.i41 = select i1 %i.dj, i64 %i.dm, i64 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.01.0.i.i.i41
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42: ; preds = %bb.ag, %bb.af, %.thread.i
  %i.dp = phi i32 [ %i.cs, %bb.ag ], [ %i.cu, %.thread.i ], [ %i.cs, %bb.af ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.do, %bb.ag ], [ inttoptr (i64 1 to ptr), %.thread.i ], [ %i.cp, %bb.af ]
  %i.dq = zext i32 %.sroa.0.0.lcssa.i to i64
  %i.dr = zext nneg i32 %i.dp to i64              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dt = icmp eq i32 %i.dp, 0
  %i.du = inttoptr i64 %i.dr to ptr
  %i.dv = select i1 %i.dt, ptr inttoptr (i64 15 to ptr), ptr %i.du ; 2 uses
  store i64 0, ptr %.sroa.4.i.i38, align 8, !noalias !128
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i38, ptr nonnull readonly align 1 %i.ds, i64 range(i64 0, 9) %i.dr, i1 false), !noalias !129
  %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i38, align 8, !noalias !128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dw = icmp ult ptr %i.cm, inttoptr (i64 16 to ptr)
  br i1 %i.dw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  %i.dx = and i64 %.pre-phi, 1
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr i8, ptr %i.cm, i64 %i.dy  ; 5 uses
  %i.ea = trunc i64 %.pre-phi to i1               ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.0.0.in.i.i.i.i = select i1 %i.ea, ptr %i.eb, ptr %i.ec
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !130, !noundef !4
  br i1 %i.ea, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dz) ]
  br label %.sink.split.i.i.i

bb.ah:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.ed = load i64, ptr %i.dz, align 8, !noalias !131, !noundef !4 ; 2 uses
  %i.ee = add i64 %i.ed, -1
  store i64 %i.ee, ptr %i.dz, align 8, !noalias !131
  %i.ef = icmp eq i64 %i.ed, 1
  br i1 %i.ef, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

.sink.split.i.i.i:                                ; preds = %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dz, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !131
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %.sink.split.i.i.i, %bb.ah, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  store ptr %i.dv, ptr %i.m, align 8, !alias.scope !127
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !127
  %i.eg = trunc i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40
  %i.eh = phi i32 [ %i.eg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %4, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ]
  %i.ei = phi ptr [ %i.dv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.dc, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ] ; 3 uses
  %i.ej = icmp eq ptr %i.ei, inttoptr (i64 15 to ptr)
  br i1 %i.ej, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = icmp ult ptr %i.ei, inttoptr (i64 9 to ptr)
  %i.em = zext i32 %i.eh to i64
  %spec.select = select i1 %i.el, i64 %i.ek, i64 %i.em
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit, %bb.w, %bb.y, %bb.x
  %.sroa.5.sroa.0.0 = phi i32 [ %i.as, %bb.w ], [ %i.as, %bb.x ], [ %i.as, %bb.y ], [ undef, %bb.ai ], [ undef, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ %.sroa.062.0, %bb.ai ], [ %.sroa.062.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.5.0 = phi i64 [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ %.sroa.563.0, %bb.ai ], [ %.sroa.563.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.4.0.i45.pn = phi i64 [ 0, %bb.w ], [ 1, %bb.x ], [ %i.ci, %bb.y ], [ %spec.select, %bb.ai ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.01.0 = phi i32 [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 1, %bb.ai ], [ 1, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.01.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx6, align 4
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %i.en = load i64, ptr %1, align 8, !noundef !4
  %i.eo = add i64 %i.en, 1                        ; 2 uses
  store i64 %i.eo, ptr %1, align 8
  %.sroa.014.0.in = icmp eq i64 %.sroa.4.0.i45.pn, 0
  br i1 %.sroa.014.0.in, label %bb.ak, label %bb.j

bb.ak:                                            ; preds = %bb.aj
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.al, label %bb.am, !prof !6

bb.al:                                            ; preds = %bb.ak
  store i64 -1, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.eq = load i64, ptr %i.e, align 8, !alias.scope !132, !noundef !4 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.aa unwind label %bb.h

bb.an:                                            ; preds = %bb.al
  %i.es = load i64, ptr %i.g, align 8, !alias.scope !132, !noundef !4 ; 2 uses
  %i.et = add i64 %i.es, 1                        ; 2 uses
  %i.eu = load i64, ptr %i.d, align 8, !range !5, !alias.scope !132, !noundef !4 ; 3 uses
  %.not.i48 = icmp ult i64 %i.et, %i.eu
  %i.ev = select i1 %.not.i48, i64 0, i64 %i.eu
  %.sroa.0.0.i49 = sub nuw i64 %i.et, %i.ev
  store i64 %.sroa.0.0.i49, ptr %i.g, align 8, !alias.scope !132
  %i.ew = add i64 %i.eq, -1                       ; 2 uses
  store i64 %i.ew, ptr %i.e, align 8, !alias.scope !132
  %i.ex = icmp ult i64 %i.ew, %i.eu
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load ptr, ptr %i.k, align 8, !alias.scope !132, !nonnull !4, !noundef !4
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.es ; 2 uses
  %.sroa.465.8.copyload = load ptr, ptr %i.ez, align 8, !noalias !132, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.666.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %.sroa.666.8.copyload = load i32, ptr %.sroa.666.8..sroa_idx, align 4, !noalias !132
  %i.fa = icmp ult ptr %.sroa.465.8.copyload, inttoptr (i64 16 to ptr)
  br i1 %i.fa, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50: ; preds = %bb.an
  %i.fb = ptrtoint ptr %.sroa.465.8.copyload to i64 ; 2 uses
  %i.fc = and i64 %i.fb, 1
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr i8, ptr %.sroa.465.8.copyload, i64 %i.fd ; 5 uses
  %i.ff = trunc i64 %i.fb to i1
  br i1 %i.ff, label %bb.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  br label %.sink.split.i.i.i54

bb.ao:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.0.0.i.i.i.i52.then.val = load i32, ptr %i.fg, align 4, !noalias !133, !noundef !4
  %i.fh = load i64, ptr %i.fe, align 8, !noalias !134, !noundef !4 ; 2 uses
  %i.fi = add i64 %i.fh, -1
  store i64 %i.fi, ptr %i.fe, align 8, !noalias !134
  %i.fj = icmp eq i64 %i.fh, 1
  br i1 %i.fj, label %.sink.split.i.i.i54, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread

.sink.split.i.i.i54:                              ; preds = %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53
  %.sroa.0.0.i.i.i.i5281 = phi i32 [ %.sroa.0.0.i.i.i.i52.then.val, %bb.ao ], [ %.sroa.666.8.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53 ]
  %.sink.in.in.in.i.i.i55 = zext i32 %.sroa.0.0.i.i.i.i5281 to i64
  %.sink.in.in.i.i.i56 = add nuw nsw i64 %.sink.in.in.in.i.i.i55, 15
  %.sink.in.i.i.i57 = and i64 %.sink.in.in.i.i.i56, 8589934576
  %.sink.i.i.i58 = add nuw nsw i64 %.sink.in.i.i.i57, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fe, i64 noundef %.sink.i.i.i58, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !134
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread: ; preds = %bb.al, %bb.an, %bb.ao, %.sink.split.i.i.i54
  %i.fk = load i64, ptr %1, align 8, !noundef !4
  %i.fl = add i64 %i.fk, 1
  br label %.sink.split

bb.ap:                                            ; preds = %bb.h, %bb.ab
  %.pn26.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.cj, %bb.ab ]
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue20peek_front_chunk_mut(ptr noundef nonnull align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20
  unreachable

_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !137, !noundef !4 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !5, !alias.scope !137, !noundef !4 ; 2 uses
  %.not3.i.i = icmp ult i64 %i.h, %i.i
  %i.j = select i1 %.not3.i.i, i64 0, i64 %i.i
  %.sroa.01.0.i.i = sub nuw i64 %i.h, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !137, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.0.i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.m, %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 -1, 1114112) i32 @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue4next(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !range !5, !noundef !4 ; 2 uses
  %.not8 = icmp ult i64 %i.g, %i.h
  %i.i = select i1 %.not8, i64 0, i64 %i.h
  %.sroa.05.0 = sub nuw i64 %i.g, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.sroa.05.0 ; 3 uses
  %i.m = tail call fastcc noundef i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.l) ; 3 uses
  %.not9 = icmp eq i32 %i.m, -1
  br i1 %.not9, label %bb.j, label %bb.g, !prof !7

.sink.split.sink.split:                           ; preds = %bb.o, %bb.p, %.sink.split.i.i.i, %bb.m, %bb.h
  %i.n = load i64, ptr %0, align 8, !noundef !4
  %i.o = add i64 %i.n, 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.b
  %.sink = phi i64 [ 0, %bb.b ], [ %i.o, %.sink.split.sink.split ]
  %.sroa.0.0.ph = phi i32 [ -1, %bb.b ], [ %i.m, %.sink.split.sink.split ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.i
  %.sroa.0.0 = phi i32 [ %i.m, %bb.i ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i32 %.sroa.0.0

bb.f:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load i64, ptr %0, align 8, !noundef !4
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %0, align 8
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp eq ptr %i.s, inttoptr (i64 15 to ptr)
  br i1 %i.t, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.u = load i64, ptr %0, align 8, !noundef !4
  %i.v = add i64 %i.u, 1                          ; 2 uses
  store i64 %i.v, ptr %0, align 8
  br label %bb.l
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue9swap_with:bb.a
  store i64 %i.p, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %0, align 8, !noundef !4
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %0, align 8
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i32 -1, 1114112) i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca i64, align 8              ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 10 uses
  %i.c = icmp eq ptr %i.a, inttoptr (i64 15 to ptr)
  br i1 %i.c, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %i.a, inttoptr (i64 9 to ptr)
  br i1 %i.d, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  br label %bb.c

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.b
  %i.g = and i64 %i.b, 1
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr i8, ptr %i.a, i64 %i.h
  %i.j = trunc i64 %i.b to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %.sroa.01.0.i.i = select i1 %i.j, i64 %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit
  %i.u = phi ptr [ %i.f, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48 ], [ %i.s, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit ] ; 4 uses
  %.sroa.0.0.i52 = phi ptr [ %i.e, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48 ], [ %i.r, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit ] ; 6 uses
  %i.v = ptrtoint ptr %.sroa.0.0.i52 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 1 ; 2 uses
  %i.x = load i8, ptr %.sroa.0.0.i52, align 1, !noalias !217, !noundef !4 ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i: ; preds = %bb.c
  %i.z = and i8 %i.x, 31
  %i.aa = zext nneg i8 %i.z to i32                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.w, align 1, !noalias !217, !noundef !4
  %i.ad = shl nuw nsw i32 %i.aa, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.x, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = zext nneg i8 %i.x to i32
  br label %bb.e

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.ab, align 1, !noalias !217, !noundef !4
  %i.al = shl nuw nsw i32 %i.af, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.aa, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.x, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i, label %bb.e

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 4
  %i.at = load i8, ptr %i.aj, align 1, !noalias !217, !noundef !4
  %i.au = shl nuw nsw i32 %i.aa, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.ao, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i, %bb.d, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i
  %.sroa.0.029 = phi ptr [ %i.w, %bb.d ], [ %i.as, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i ], [ %i.aj, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ai, %bb.d ], [ %i.ba, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i ], [ %i.aq, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i ], [ %i.ag, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i ] ; 5 uses
  %i.bb = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = ptrtoint ptr %.sroa.0.029 to i64
  %i.bd = sub i64 %i.bc, %i.v                     ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.029, %i.u
  br i1 %i.be, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load i8, ptr %.sroa.0.029, align 1, !noalias !218, !noundef !4 ; 3 uses
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %bb.g, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i11

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i11: ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 1
  %i.bi = icmp ne ptr %i.bh, %i.u
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ugt i8 %i.bf, -33
  br i1 %i.bj, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i15, label %bb.g

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i15: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i11
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 2
  %i.bl = icmp ne ptr %i.bk, %i.u
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp samesign ugt i8 %i.bf, -17
  br i1 %i.bm, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i16, label %bb.g

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i16: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i15
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 3
  %i.bo = icmp ne ptr %i.bn, %i.u
  tail call void @llvm.assume(i1 %i.bo)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i16, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i15, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i11
  %i.bp = trunc i64 %i.bd to i32                  ; 5 uses
  %.not9 = icmp eq i32 %i.bp, 0
  br i1 %.not9, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.j

_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %bb.e, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit, %bb.g
  %.sroa.0.1 = phi i32 [ %.sroa.4.0.i.ph.i, %bb.g ], [ -1, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit ], [ %.sroa.4.0.i.ph.i, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.bq = icmp ult ptr %i.a, inttoptr (i64 16 to ptr)
  br i1 %i.bq, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread
  %i.br = and i64 %i.b, 1
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr i8, ptr %i.a, i64 %i.bs   ; 4 uses
  %i.bu = trunc i64 %i.b to i1
  br i1 %i.bu, label %bb.i, label %bb.h

_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread: ; preds = %bb.a, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread
  %.sroa.0.154 = phi i32 [ %.sroa.0.1, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread ], [ -1, %bb.a ]
  store ptr inttoptr (i64 15 to ptr), ptr %0, align 8, !alias.scope !219
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

bb.h:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bv, align 8, !alias.scope !219
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

bb.i:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.0.0.i.i.i.i = load i32, ptr %i.bw, align 4, !noalias !220, !noundef !4
  %i.bx = load i64, ptr %i.bt, align 8, !noalias !221, !noundef !4 ; 2 uses
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.bt, align 8, !noalias !221
  %i.bz = icmp eq i64 %i.bx, 1
  br i1 %i.bz, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

.sink.split.i.i.i:                                ; preds = %bb.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !221
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %.sink.split.i.i.i, %bb.i
  store ptr inttoptr (i64 15 to ptr), ptr %0, align 8, !alias.scope !219
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.57.0..sroa_idx8.i, align 8, !alias.scope !219
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ca = icmp ult ptr %i.a, inttoptr (i64 9 to ptr) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !222
  %i.cd = trunc nuw nsw i64 %i.b to i32
  %.sroa.0.0.i18 = select i1 %i.ca, i32 %i.cd, i32 %i.cc ; 2 uses
  %i.ce = sub i32 %.sroa.0.0.i18, %i.bp           ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 9
  %i.cg = and i64 %i.b, 1                         ; 2 uses
  br i1 %i.cf, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp eq i64 %i.cg, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !alias.scope !222 ; 2 uses
  br i1 %i.ch, label %bb.l, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.cj, ptr %i.ck, align 8, !noalias !222
  %i.cl = getelementptr i8, ptr %i.a, i64 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  store ptr %i.cl, ptr %0, align 8, !alias.scope !222
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.l, %bb.k
  %i.cm = phi i32 [ 0, %bb.l ], [ %i.cj, %bb.k ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.co = add i32 %i.cm, %i.bp
  %1 = load i32, ptr %i.cn, align 8, !alias.scope !222, !noundef !4
  %2 = sub i32 %1, %i.bp
  %3 = zext i32 %2 to i64
  %4 = zext i32 %i.co to i64
  %5 = shl nuw i64 %4, 32
  %6 = or disjoint i64 %5, %3
  store i64 %6, ptr %i.cn, align 8, !alias.scope !222
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.j
  %i.cp = sub nsw i64 0, %i.cg
  %i.cq = getelementptr i8, ptr %i.a, i64 %i.cp
  %i.cr = trunc i64 %i.b to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = zext i32 %i.ct to i64
  %.sroa.01.0.i.i.i = select i1 %i.cr, i64 %i.cu, i64 0
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.i.i = select i1 %i.ca, ptr %i.cb, ptr %i.cw
  %i.cx = and i64 %i.bd, 4294967295
  %i.cy = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.da = icmp eq i32 %.sroa.0.0.i18, %i.bp
  %i.db = inttoptr i64 %i.cy to ptr
  %i.dc = select i1 %i.da, ptr inttoptr (i64 15 to ptr), ptr %i.db
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 1 %i.cz, i64 range(i64 0, 9) %i.cy, i1 false), !noalias !224
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %i.dd = icmp ult ptr %i.a, inttoptr (i64 16 to ptr)
  br i1 %i.dd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i
  %i.de = and i64 %i.b, 1
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr i8, ptr %i.a, i64 %i.df   ; 5 uses
  %i.dh = trunc i64 %i.b to i1                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.in.i.i.i.i = select i1 %i.dh, ptr %i.di, ptr %i.dj
  %.sroa.0.0.i.i.i.i19 = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !225, !noundef !4
  br i1 %i.dh, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  br label %.sink.split.i.i.i20

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.dk = load i64, ptr %i.dg, align 8, !noalias !226, !noundef !4 ; 2 uses
  %i.dl = add i64 %i.dk, -1
  store i64 %i.dl, ptr %i.dg, align 8, !noalias !226
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %.sink.split.i.i.i20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25

.sink.split.i.i.i20:                              ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i21 = zext i32 %.sroa.0.0.i.i.i.i19 to i64
  %.sink.in.in.i.i.i22 = add nuw nsw i64 %.sink.in.in.in.i.i.i21, 15
  %.sink.in.i.i.i23 = and i64 %.sink.in.in.i.i.i22, 8589934576
  %.sink.i.i.i24 = add nuw nsw i64 %.sink.in.i.i.i23, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef %.sink.i.i.i24, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !226
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25: ; preds = %.sink.split.i.i.i20, %bb.m, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i
  store ptr %i.dc, ptr %0, align 8, !alias.scope !222
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !222
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %bb.h, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.0.154, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread ], [ %.sroa.0.1, %bb.h ], [ %.sroa.4.0.i.ph.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.4.0.i.ph.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25 ]
  ret i32 %.sroa.0.2
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_12ExpandedNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.d = load i64, ptr %i.c, align 8, !range !9, !alias.scope !229, !noundef !4 ; 4 uses
  %i.e = trunc i64 %i.d to i8
  %i.f = and i8 %i.e, 3
  switch i8 %i.f, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.d to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !229, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.d, 4
  %i.k = and i64 %i.j, 15
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.d, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !229, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !229, !nonnull !4, !align !8, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !229, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20, !noalias !229
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.4.0.i = phi i64 [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.r, %bb.f ]
  %i.s = icmp eq i64 %.sroa.4.0.i, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCsa2F6HLACPlS_11markup5ever, ptr %.sroa.418.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_7Display3fmtCsa2F6HLACPlS_11markup5ever, ptr %.sroa.422.0..sroa_idx, align 8
  %i.v = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !align !8, !noundef !4
  %i.y = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_7Display3fmtCsa2F6HLACPlS_11markup5ever, ptr %.sroa.43.0..sroa_idx, align 8
  %i.z = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !8, !noundef !4
  %i.ac = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noundef nonnull @21, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.1.in = phi i1 [ %i.ac, %bb.i ], [ %i.y, %bb.h ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_7Display3fmtCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !237, !noundef !4 ; 4 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !238, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsa2F6HLACPlS_11markup5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsa2F6HLACPlS_11markup5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !238, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !238, !nonnull !4, !align !8, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !238, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsa2F6HLACPlS_11markup5ever.exit

bb.g:                                             ; preds = %bb.e
end_hunk_1
