Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.10?download=true
inline.NumInlined: 125
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float:bb.a
          to label %.noexc88 unwind label %.thread129

.noexc88:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.bb
  br i1 %.sroa.047.2, label %bb.bc, label %common.resume

.thread129:                                       ; preds = %.invoke, %bb.at, %.split1.i, %bb.ah, %bb.aj, %bb.ak
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.am:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i
  %.sroa.8.0.i = phi i64 [ %.sroa.695.sroa.6.0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i ], [ %i.cs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i ] ; 2 uses
  %.sroa.6.0.i = phi ptr [ %i.ck, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i ], [ %i.cz, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i ]
  %.sroa.0.0.i83 = phi i64 [ %i.cf, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit.i ], [ %i.cw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE9split_offCsgbWeKYPjk8w_3syn.exit3.i ]
  store i64 %.sroa.0.0.i83, ptr %i.h, align 8, !alias.scope !205, !noalias !206
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !205, !noalias !206
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !205, !noalias !206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %.not.i89 = icmp ugt i64 %.sroa.0.0.ph185, %.sroa.020.0157
  br i1 %.not.i89, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = icmp ne i64 %.sroa.0.0.ph185, 0
  %.not2.i = icmp samesign ult i64 %.sroa.0.0.ph185, %.sroa.020.0157
  %or.cond.i = select i1 %i.dd, i1 %.not2.i, i1 false
  br i1 %or.cond.i, label %bb.ao, label %.split.i90

.split.i90:                                       ; preds = %bb.ao, %bb.an
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.sroa.0.0.ph185)
          to label %.split.i90._RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit_crit_edge unwind label %bb.bb

.split.i90._RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit_crit_edge: ; preds = %.split.i90
  %.pre = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit

bb.ao:                                            ; preds = %bb.an
  %i.de = load ptr, ptr %i.by, align 8, !alias.scope !217, !nonnull !4, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.0.0.ph185
  %i.dg = load i8, ptr %i.df, align 1, !noalias !217, !noundef !4
  %i.dh = icmp sgt i8 %i.dg, -65
  br i1 %i.dh, label %.split.i90, label %bb.ap, !prof !211

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #17
          to label %.noexc92 unwind label %bb.bb

.noexc92:                                         ; preds = %bb.ap
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit: ; preds = %.split.i90._RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit_crit_edge, %bb.am
  %i.di = phi i64 [ %.pre, %.split.i90._RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit_crit_edge ], [ %.sroa.8.0.i, %bb.am ] ; 3 uses
  %i.dj = icmp sgt i64 %i.di, -1
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp eq i64 %i.di, 0
  br i1 %i.dk, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit
  %i.dl = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4
  %i.dm = invoke noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn5ident6xid_ok(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dl, i64 noundef %i.di)
          to label %bb.as unwind label %bb.bb

bb.ar:                                            ; preds = %bb.as, %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8truncate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.dn = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.aw unwind label %bb.bb     ; 2 uses

bb.as:                                            ; preds = %bb.aq
  br i1 %i.dm, label %bb.ar, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr null, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.au unwind label %.thread129

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.aw:                                            ; preds = %bb.ar
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 3 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.dq = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.az unwind label %bb.ax     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = icmp eq i64 %i.dp, 0
  br i1 %i.ds, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef range(i64 1, 0) %i.dp, i64 noundef 1) #21
  br label %common.resume

bb.az:                                            ; preds = %bb.aw
  %i.dt = extractvalue { ptr, i64 } %i.dq, 0      ; 2 uses
  %i.du = extractvalue { ptr, i64 } %i.dq, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.do, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dt, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.du, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.av

bb.ba:                                            ; preds = %bb.bf, %bb.bc, %bb.bb
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.bb:                                            ; preds = %bb.ap, %.split.i90, %bb.ar, %bb.aq
  %.sroa.047.2 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %.split.i90 ]
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #19
          to label %bb.al unwind label %bb.ba

bb.bc:                                            ; preds = %.thread129, %bb.al
  %.pn.pn133 = phi { ptr, i32 } [ %i.dc, %.thread129 ], [ %i.dw, %bb.al ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #19
          to label %common.resume unwind label %bb.ba

bb.bd:                                            ; preds = %.split
  %i.dx = icmp samesign ult i64 %.sroa.0.0.ph241, %i.ar
  br i1 %i.dx, label %bb.be, label %.invoke437

bb.be:                                            ; preds = %bb.bd
  %spec.select = select i1 %i.au, i8 1, i8 %.sroa.037.0.ph236
  br label %.outer

.invoke437:                                       ; preds = %bb.bd, %bb.t, %bb.q, %bb.k
  %i.dy = phi ptr [ @34, %bb.t ], [ @33, %bb.q ], [ @31, %bb.k ], [ @38, %bb.bd ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph241, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy) #20
          to label %.cont438 unwind label %bb.bf

.cont438:                                         ; preds = %.invoke437
  unreachable

bb.bf:                                            ; preds = %.invoke437
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #19
          to label %common.resume unwind label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value17parse_lit_str_raw(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 0, ptr %i.e, align 1
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !noundef !4    ; 2 uses
  store i8 %i.f, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 114
  br i1 %i.g, label %bb.c, label %bb.e, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not.i.not = icmp eq i64 %2, 1
  br i1 %.not.i.not, label %.thread74, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !231, !noundef !4
  %i.j = icmp sgt i8 %i.i, -65
  br i1 %i.j, label %.lr.ph.preheader, label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.k = add i64 %2, -1                           ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 11 uses
  br label %.lr.ph

bb.e:                                             ; preds = %.thread, %bb.b
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedhhECsgbWeKYPjk8w_3syn(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @39, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #17
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.sroa.021.091 = phi i64 [ %i.o, %bb.g ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.021.091
  %i.n = load i8, ptr %i.m, align 1, !noundef !4
  switch i8 %i.n, label %.thread74 [
    i8 35, label %bb.g
    i8 34, label %.preheader
  ]

.thread74:                                        ; preds = %.lr.ph, %bb.g, %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.af

bb.g:                                             ; preds = %.lr.ph
  %i.o = add nuw i64 %.sroa.021.091, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.k
  br i1 %exitcond.not, label %.thread74, label %.lr.ph

bb.h:                                             ; preds = %bb.i
  %.not.i.i = icmp ugt i64 %i.t, %i.k
  br i1 %.not.i.i, label %bb.n, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.h
  %i.p = phi i64 [ %i.t, %bb.h ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.q = tail call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr15memrchr_aligned(i8 noundef 34, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.p), !noalias !232 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.preheader
  %i.t = extractvalue { i64, i64 } %i.q, 1        ; 9 uses
  %i.u = icmp ult i64 %i.t, %i.p
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.t
  %lhsc.i = load i8, ptr %i.v, align 1, !alias.scope !233
  %i.w = icmp eq i8 %lhsc.i, 34
  br i1 %i.w, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.x = add nuw i64 %i.t, 1                      ; 4 uses
  %i.y = add i64 %i.x, %.sroa.021.091             ; 10 uses
  %i.z = icmp uge i64 %i.t, %i.y
  %i.aa = icmp ugt i64 %i.y, %i.k
  %or.cond.i59 = or i1 %i.z, %i.aa
  br i1 %or.cond.i59, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread80, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp eq i64 %i.x, %i.k
  br i1 %i.ab, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread, label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.ac = icmp eq i64 %i.y, %i.k
  br i1 %i.ac, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !234, !noundef !4
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread80

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61: ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !234, !noundef !4
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread80

bb.n:                                             ; preds = %.preheader, %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #17
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread: ; preds = %bb.l, %bb.k, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.021.091
  %i.al = icmp samesign eq i64 %.sroa.021.091, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph94

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread80: ; preds = %.lr.ph94, %bb.m, %bb.j, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61
  store ptr null, ptr %0, align 8
  br label %bb.af

bb.o:                                             ; preds = %.lr.ph94
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.029.093, i64 1 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ak
  br i1 %i.an, label %._crit_edge, label %.lr.ph94

.lr.ph94:                                         ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread, %bb.o
  %.sroa.029.093 = phi ptr [ %i.am, %bb.o ], [ %i.aj, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread ] ; 2 uses
  %i.ao = load i8, ptr %.sroa.029.093, align 1, !noundef !4
  %i.ap = icmp eq i8 %i.ao, 35
  br i1 %i.ap, label %bb.o, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread80

._crit_edge:                                      ; preds = %bb.o, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread
  %i.aq = add i64 %.sroa.021.091, 1               ; 6 uses
  %3 = icmp ugt i64 %i.aq, %i.t
  br i1 %3, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread84, label %4

4:                                                ; preds = %._crit_edge
  %5 = icmp eq i64 %i.aq, 0
  br i1 %5, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %bb.p

bb.p:                                             ; preds = %4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !235, !noundef !4
  %i.at = icmp sgt i8 %i.as, -65
  br i1 %i.at, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread84

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread84: ; preds = %bb.p, %._crit_edge
  store ptr null, ptr %0, align 8
  br label %bb.af

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread: ; preds = %bb.p, %4
  %i.au = sub nuw i64 %i.t, %i.aq                 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.au, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.av = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !7, !noundef !4 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.q, label %bb.r, !prof !5

bb.q:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %i.ba = load i64, ptr %i.az, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #20
  unreachable

bb.r:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %i.bb = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bc = icmp ule i64 %i.au, %i.ay
  tail call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ay, ptr %i.d, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.be, align 8
  %.not56 = icmp eq i64 %i.t, %i.aq
  br i1 %.not56, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.bf = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0      ; 3 uses
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %.not.i64 = icmp ult i64 %i.y, %i.k
  br i1 %.not.i64, label %bb.t, label %.split.i65

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !236, !noundef !4
  %i.bk = icmp sgt i8 %i.bj, -65
  br i1 %i.bk, label %.split.i65, label %bb.x

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %6, i64 %i.au, i1 false)
  store i64 %i.au, ptr %i.be, align 8
  br label %bb.s

bb.v:                                             ; preds = %bb.ac, %bb.aa, %bb.x, %.split.i65
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = icmp eq i64 %i.bh, 0
  br i1 %i.bm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxeEECsgbWeKYPjk8w_3syn.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef range(i64 1, 0) %i.bh, i64 noundef 1) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxeEECsgbWeKYPjk8w_3syn.exit

.split.i65:                                       ; preds = %bb.s, %bb.t
  %i.bn = sub nuw i64 %i.k, %i.y                  ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.z unwind label %bb.v

bb.x:                                             ; preds = %bb.t
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.k, i64 noundef %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #20
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.aa, %bb.x
  unreachable

bb.z:                                             ; preds = %.split.i65
  %i.bp = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !7, !noundef !4 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bq, label %bb.aa, label %bb.ab, !prof !5

bb.aa:                                            ; preds = %bb.z
  %i.bu = load i64, ptr %i.bt, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bu) #20
          to label %bb.y unwind label %bb.v

bb.ab:                                            ; preds = %bb.z
  %i.bv = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bw = icmp ule i64 %i.bn, %i.bs
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bs, ptr %i.b, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.by, align 8
  %.not58 = icmp eq i64 %i.k, %i.y
  br i1 %.not58, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.bz = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ae unwind label %bb.v      ; 2 uses

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull align 1 %i.bo, i64 %i.bn, i1 false)
  store i64 %i.bn, ptr %i.by, align 8
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ac
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  store ptr %i.bg, ptr %0, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ca, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %.thread74, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread84, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit61.thread80, %bb.ae
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxeEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.w, %bb.v
  resume { ptr, i32 } %i.bl
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value18parse_lit_byte_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 18 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 0, ptr %i.f, align 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 1, !noundef !4    ; 2 uses
  store i8 %i.g, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 98
  br i1 %i.h, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not7 = icmp eq i64 %2, 1
  br i1 %.not7, label %.thread5, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.b
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedhhECsgbWeKYPjk8w_3syn(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @20, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noundef !4
  switch i8 %i.j, label %.thread5 [
    i8 34, label %bb.f
    i8 114, label %.split.i.i
  ], !prof !8

.thread5:                                         ; preds = %bb.c, %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #17
  unreachable

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ugt i64 %2, 2
  br i1 %.not.i.i, label %bb.g, label %.split.i.thread.i

.split.i.thread.i:                                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !254
  store i64 0, ptr %i.e, align 8, !noalias !254
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !noalias !254
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.l, align 8, !noalias !254
  br label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !255, !noalias !252, !noundef !4
  %i.o = icmp sgt i8 %i.n, -65
  br i1 %i.o, label %.lr.ph.preheader.i, label %bb.h

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.p = add i64 %2, -2                           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !254
  store i64 0, ptr %i.e, align 8, !noalias !254
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !noalias !254
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !254
  br label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #17, !noalias !252
  unreachable

.lr.ph.i:                                         ; preds = %.backedge.i, %.lr.ph.preheader.i
  %i.s = phi i64 [ %i.bs, %.backedge.i ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.023.0139.i = phi ptr [ %.sroa.023.0.be.i, %.backedge.i ], [ %i.m, %.lr.ph.preheader.i ] ; 8 uses
  %.sroa.21.0138.i = phi i64 [ %.sroa.21.0.be.i, %.backedge.i ], [ %i.p, %.lr.ph.preheader.i ] ; 7 uses
  %i.t = load i8, ptr %.sroa.023.0139.i, align 1, !alias.scope !253, !noalias !252, !noundef !4 ; 2 uses
  switch i8 %i.t, label %bb.bc [
    i8 34, label %bb.k
    i8 92, label %bb.i
    i8 13, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph.i
  %.not117.i = icmp eq i64 %.sroa.21.0138.i, 1
  br i1 %.not117.i, label %._crit_edge.i, label %bb.aa

bb.j:                                             ; preds = %.lr.ph.i
  %.not116.i = icmp eq i64 %.sroa.21.0138.i, 1
  br i1 %.not116.i, label %._crit_edge.i, label %bb.ba

bb.k:                                             ; preds = %.lr.ph.i
  %i.u = sub i64 %i.p, %.sroa.21.0138.i
  %i.v = add i64 %i.u, 1                          ; 8 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i84.i = icmp ult i64 %i.v, %i.p
  br i1 %.not.i84.i, label %bb.m, label %.split.i85.i

.split.i85.i:                                     ; preds = %bb.l
  %i.x = icmp eq i64 %i.v, %i.p
  br i1 %i.x, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !256, !noalias !252, !noundef !4
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.r, label %bb.s
end_hunk_0
