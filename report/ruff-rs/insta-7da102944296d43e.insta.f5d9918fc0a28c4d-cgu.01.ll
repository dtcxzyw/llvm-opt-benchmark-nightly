Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.01?download=true
inline.NumInlined: 445
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtCsl6EuCK7xub1_5insta8snapshotNtB5_8Snapshot9from_file:bb.a
  %i.aj = alloca [192 x i8], align 16             ; 17 uses
  %i.ak = alloca [192 x i8], align 16             ; 9 uses
  %i.al = alloca [64 x i8], align 16              ; 4 uses
  %i.am = alloca [192 x i8], align 16             ; 15 uses
  %i.an = alloca [24 x i8], align 8               ; 26 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [48 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File4openRNtNtB8_4path4PathECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.aq = load i32, ptr %i.ao, align 8, !range !16, !noundef !4
  %i.ar = trunc nuw i32 %i.aq to i1
  br i1 %i.ar, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.at, ptr %i.k, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.au = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 321) 8, i64 noundef range(i64 8, 17) 8) #23 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.c, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3newCsl6EuCK7xub1_5insta.exit190, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #21
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #20
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body310, %.body310.thread, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.d ], [ %.pn169394, %.body310.thread ], [ %.pn169, %.body310 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE3newCsl6EuCK7xub1_5insta.exit190: ; preds = %bb.b
  store ptr %i.at, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.au, ptr %0, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @19, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 -1, ptr %i.az, align 8
  br label %bb.gb

bb.f:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !range !8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @_RNvMNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB2_9BufReaderNtNtB8_2fs4FileE13with_capacityCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ap, i64 noundef 8192, i32 noundef %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 0, ptr %i.an, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 15 uses
  store i64 0, ptr %.sroa.574.0..sroa_idx, align 8
  %i.bc = invoke { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileENtB2_7BufRead9read_line0ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ap)
          to label %bb.h unwind label %.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %.body
  %i.bd = trunc nuw i8 %.sroa.064.1 to i1
  br i1 %i.bd, label %.thread, label %.body310

.loopexit:                                        ; preds = %.preheader, %bb.cj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.f, %bb.m, %bb.bz, %.loopexit396, %.split.i272, %bb.cm, %bb.cr, %bb.ez
  %.sroa.066.1.ph = phi i8 [ 1, %.split.i272 ], [ 1, %bb.cm ], [ 1, %.loopexit396 ], [ 1, %bb.cr ], [ %.sroa.066.5, %bb.ez ], [ 1, %bb.f ], [ 1, %bb.m ], [ 1, %bb.bz ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.be = extractvalue { i64, ptr } %i.bc, 0
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bg = extractvalue { i64, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.bg, ptr %i.l, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.bh = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 321) 8, i64 noundef range(i64 8, 17) 8) #23 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.j, label %bb.gk, !prof !5

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #21
          to label %.noexc193 unwind label %bb.k

.noexc193:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #20
          to label %.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bl = load ptr, ptr %.sroa.473.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.bm = load i64, ptr %.sroa.574.0..sroa_idx, align 8, !noundef !4
  %i.bn = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef %i.bm)
          to label %bb.n unwind label %.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bo = extractvalue { ptr, i64 } %i.bn, 1
  %i.bp = icmp eq i64 %i.bo, 3
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = extractvalue { ptr, i64 } %i.bn, 0      ; 2 uses
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = xor i16 %i.br, 11565
  %i.bt = getelementptr i8, ptr %i.bq, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i16
  %i.bw = xor i16 %i.bv, 45
  %i.bx = or i16 %i.bs, %i.bw
  %i.by = icmp ne i16 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 7 uses
  store i64 -1, ptr %i.cb, align 8, !alias.scope !277
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i32 0, ptr %i.cc, align 16, !alias.scope !277
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store i64 -1, ptr %i.cd, align 16, !alias.scope !277
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 120 ; 7 uses
  store i64 -1, ptr %i.ce, align 8, !alias.scope !277
  store i8 -1, ptr %i.aj, align 16, !alias.scope !277
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  store i64 -1, ptr %i.cf, align 16, !alias.scope !277
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  store i64 -1, ptr %i.cg, align 8, !alias.scope !277
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.5117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %.sroa.6120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.aj, i64 88 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.5103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.aj, i64 128 ; 2 uses
  %.sroa.6106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.aj, i64 136 ; 2 uses
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl6EuCK7xub1_5insta.exit243.thread

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl6EuCK7xub1_5insta.exit243.thread: ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl6EuCK7xub1_5insta.exit243.thread.backedge, %bb.p
  store i64 0, ptr %.sroa.574.0..sroa_idx, align 8
  %i.cn = invoke { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileENtB2_7BufRead9read_line0ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ap)
          to label %bb.q unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit ; 2 uses

.body183:                                         ; preds = %.loopexit.split-lp398.loopexit.split-lp.loopexit, %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp398.loopexit, %bb.bc, %bb.al, %bb.af, %bb.t, %bb.bf, %bb.ah, %bb.ad
  %.pn156 = phi { ptr, i32 } [ %.pn154, %bb.bf ], [ %i.dq, %bb.ah ], [ %i.dk, %bb.ad ], [ %i.dw, %bb.al ], [ %i.ct, %bb.t ], [ %i.dn, %bb.af ], [ %i.fx, %bb.bc ], [ %lpad.loopexit.split-lp406, %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit402, %.loopexit.split-lp398.loopexit ], [ %lpad.loopexit405, %.loopexit.split-lp398.loopexit.split-lp.loopexit ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsl6EuCK7xub1_5insta8snapshot8MetaDataEBF_(ptr noalias noundef align 16 dereferenceable(192) %i.aj) #20
          to label %.thread unwind label %bb.ao

.loopexit.split-lp398.loopexit:                   ; preds = %bb.aq
  %lpad.loopexit402 = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.loopexit.split-lp398.loopexit.split-lp.loopexit: ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl6EuCK7xub1_5insta.exit243.thread, %bb.aa, %bb.av, %bb.aw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsl6EuCK7xub1_5insta.exit.i255
  %lpad.loopexit405 = landingpad { ptr, i32 }
          cleanup
  br label %.body183

.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit, %.split.i, %bb.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsl6EuCK7xub1_5insta.exit.i
  %lpad.loopexit.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %.body183

bb.q:                                             ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl6EuCK7xub1_5insta.exit243.thread
  %i.co = extractvalue { i64, ptr } %i.cn, 0
  %i.cp = extractvalue { i64, ptr } %i.cn, 1      ; 4 uses
  %i.cq = trunc nuw i64 %i.co to i1
  br i1 %i.cq, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.cp, ptr %i.m, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.cr = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 321) 8, i64 noundef range(i64 8, 17) 8) #23 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.s, label %bb.bz, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #21
          to label %.noexc195 unwind label %bb.t

.noexc195:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #20
          to label %.body183 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.cv = icmp eq ptr %i.cp, null
  br i1 %i.cv, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.ab, %bb.v
  %i.cw = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cx = load i64, ptr %.sroa.574.0..sroa_idx, align 8, !noundef !4 ; 5 uses
  %i.cy = icmp sgt i64 %i.cx, -1
  call void @llvm.assume(i1 %i.cy)
  %i.cz = sub nsw i64 %i.cx, %i.cw                ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.not.i = icmp ult i64 %i.cx, %i.cw
  br i1 %.not.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = icmp ne i64 %i.cx, %i.cw
  %.not2.i = icmp samesign ult i64 %i.cz, %i.cx
  %or.cond.i = select i1 %i.da, i1 %.not2.i, i1 false
  br i1 %or.cond.i, label %bb.y, label %.split.i

.split.i:                                         ; preds = %bb.y, %bb.x
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE8truncateCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.cz)
          to label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.db = load ptr, ptr %.sroa.473.0..sroa_idx, align 8, !alias.scope !278, !noalias !279, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !280, !noundef !4
  %i.de = icmp sgt i8 %i.dd, -65
  br i1 %i.de, label %.split.i, label %bb.z, !prof !15

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
          to label %.noexc198 unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp

.noexc198:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.df = load ptr, ptr %.sroa.473.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.dg = load i64, ptr %.sroa.574.0..sroa_idx, align 8, !noundef !4
  %i.dh = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dg)
          to label %bb.ab unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.di = extractvalue { ptr, i64 } %i.dh, 1
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.w, label %.lr.ph.split.i.i

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit: ; preds = %bb.w, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ac unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.af, ptr %i.ae, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.4126.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noundef nonnull @33, ptr noundef nonnull %i.ae)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl6EuCK7xub1_5insta.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(24) %i.af) #20
          to label %.body183 unwind label %bb.ao

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl6EuCK7xub1_5insta.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.dl = load i64, ptr %i.af, align 8, !range !3, !alias.scope !281, !noundef !4
  %i.dm = icmp eq i64 %i.dl, -1
  br i1 %i.dm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsl6EuCK7xub1_5insta.exit, label %bb.ae

bb.ae:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl6EuCK7xub1_5insta.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body183 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsl6EuCK7xub1_5insta.exit unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsl6EuCK7xub1_5insta.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl6EuCK7xub1_5insta.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr @_RNvNvNtNtCs2AWtUsOyxgP_3std2io5stdio6stderr8INSTANCE, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ah, ptr %i.ab, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4132.0..sroa_idx, align 8
  %i.dp = invoke noundef ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @34, ptr noundef nonnull %i.ab)
          to label %bb.ai unwind label %bb.ah     ; 2 uses

bb.ah:                                            ; preds = %bb.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsl6EuCK7xub1_5insta.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsl6EuCK7xub1_5insta.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #20
          to label %.body183 unwind label %bb.ao

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsl6EuCK7xub1_5insta.exit
  store ptr %i.dp, ptr %i.ad, align 8
  %i.dr = icmp eq ptr %i.dp, null
  br i1 %i.dr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsl6EuCK7xub1_5insta.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsl6EuCK7xub1_5insta.exit unwind label %bb.ah

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsl6EuCK7xub1_5insta.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !4
  invoke void @_RNvNtCsl6EuCK7xub1_5insta3env15memoize_warning(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.dv)
          to label %bb.ak unwind label %bb.ah

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsl6EuCK7xub1_5insta.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsl6EuCK7xub1_5insta.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body183 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsl6EuCK7xub1_5insta.exit.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsl6EuCK7xub1_5insta.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.am, ptr noundef nonnull align 16 dereferenceable(192) %i.aj, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !3
  br label %bb.an

bb.an:                                            ; preds = %bb.cu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit
  %i.dy = phi i64 [ %i.ir, %bb.cu ], [ %.pre, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.not160 = icmp eq i64 %i.dy, -1
  br i1 %.not160, label %bb.cw, label %bb.cv

bb.ao:                                            ; preds = %.thread, %.body, %.body284, %bb.es, %bb.bf, %bb.ah, %bb.ad, %.body183
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

.lr.ph.split.i.i:                                 ; preds = %bb.ab
  %i.ea = load ptr, ptr %.sroa.473.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.eb = load i64, ptr %.sroa.574.0..sroa_idx, align 8, !noundef !4 ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.lr.ph.split.i.i
  %i.ec = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.er, %bb.at ] ; 5 uses
  %i.ed = sub nuw i64 %i.eb, %i.ec                ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec ; 2 uses
  %i.ef = icmp samesign ult i64 %i.ed, 16
  br i1 %i.ef, label %.preheader.i.i.i, label %bb.aq

.preheader.i.i.i:                                 ; preds = %bb.ap
  %.not.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.eg = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ed)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp398.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.ar, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.ed, %bb.ar ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.ar ], [ 1, %.lr.ph.i.i.i ]
  %i.eh = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ei = insertvalue { i64, i64 } %i.eh, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ar
  %.sroa.01.05.i.i.i = phi i64 [ %i.em, %bb.ar ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.01.05.i.i.i
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !282, !noalias !283, !noundef !4
  %i.el = icmp eq i8 %i.ek, 58
  br i1 %i.el, label %._crit_edge.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i
  %i.em = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.em, %i.ed
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.aq, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.ei, %._crit_edge.i.i.i ], [ %i.eg, %bb.aq ] ; 2 uses
  %i.en = extractvalue { i64, i64 } %.merged.i.i.i, 0
end_hunk_0
