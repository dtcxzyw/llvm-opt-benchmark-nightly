Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.10?download=true
inline.NumInlined: 125
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value14parse_lit_char:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.bg = icmp samesign ult i32 %spec.select.i, 65536
  %. = select i1 %i.bg, i64 3, i64 4
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread

_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread: ; preds = %bb.i, %bb.ac, %bb.ad, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit
  %spec.select.i112 = phi i32 [ %spec.select.i, %bb.ac ], [ %spec.select.i, %bb.ad ], [ %spec.select.i, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit ], [ %i.x, %bb.i ]
  %.sroa.050.0 = phi i64 [ 2, %bb.ac ], [ %., %bb.ad ], [ 1, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit ], [ 1, %bb.i ] ; 5 uses
  %.not.i89 = icmp ult i64 %.sroa.050.0, %i.k
  br i1 %.not.i89, label %bb.ae, label %.split.i90

.split.i90:                                       ; preds = %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread
  %i.bh = icmp eq i64 %.sroa.050.0, %i.k
  br i1 %i.bh, label %bb.af, label %.split.i90.thread

bb.ae:                                            ; preds = %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value8next_chr.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.050.0
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !138, !noundef !4
  %i.bl = icmp sgt i8 %i.bk, -65
  br i1 %i.bl, label %bb.af, label %.split.i90.thread

bb.af:                                            ; preds = %bb.ae, %.split.i90
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bn = sub nuw i64 %i.k, %.sroa.050.0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.050.0
  br label %bb.ab

.split.i90.thread:                                ; preds = %bb.c, %bb.ae, %.split.i90
  store i32 -1, ptr %0, align 8
  br label %bb.ap

bb.ag:                                            ; preds = %bb.ab
  %i.bp = load i8, ptr %.sroa.0.1, align 1, !noundef !4
  %.not80 = icmp eq i8 %i.bp, 39
  br i1 %.not80, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag
  store i32 -1, ptr %0, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ag
  %.not.i94.not = icmp eq i64 %.sroa.21.1, 1
  br i1 %.not.i94.not, label %.split.i95, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !139, !noundef !4
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %.split.i95, label %bb.ak

.split.i95:                                       ; preds = %bb.ai, %bb.aj
  %i.bt = add i64 %.sroa.21.1, -1                 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bv = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !7, !noundef !4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bw, label %bb.al, label %bb.am, !prof !5

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1, i64 noundef %.sroa.21.1, i64 noundef 1, i64 noundef %.sroa.21.1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #17
  unreachable

bb.al:                                            ; preds = %.split.i95
  %i.ca = load i64, ptr %i.bz, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.by, i64 %i.ca) #20
  unreachable

bb.am:                                            ; preds = %.split.i95
  %i.cb = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cc = icmp ule i64 %i.bt, %i.by
  tail call void @llvm.assume(i1 %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.by, ptr %i.b, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cb, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.ce, align 8
  %.not82 = icmp eq i64 %i.bt, 0
  br i1 %.not82, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.cf = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0      ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cf, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  store i32 %.sroa.042.1, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %.sroa.553.0..sroa_idx, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %i.bu, i64 %i.bt, i1 false)
  store i64 %i.bt, ptr %i.ce, align 8
  br label %bb.an

bb.ap:                                            ; preds = %.split.i85.thread, %bb.m, %bb.w, %bb.y, %bb.aa, %bb.ah, %.split.i90.thread, %bb.an
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_c_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 19 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 0, ptr %i.i, align 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %1, align 1, !noundef !4    ; 2 uses
  store i8 %i.j, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 99
  br i1 %i.k, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not13 = icmp eq i64 %2, 1
  br i1 %.not13, label %.thread11, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.b
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedhhECsgbWeKYPjk8w_3syn(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  switch i8 %i.m, label %.thread11 [
    i8 34, label %bb.f
    i8 114, label %.split.i.i
  ], !prof !8

.thread11:                                        ; preds = %bb.c, %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #17
  unreachable

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i.i = icmp ugt i64 %2, 2
  br i1 %.not.i.i, label %bb.g, label %.split.i.thread.i

.split.i.thread.i:                                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !164
  store i64 0, ptr %i.h, align 8, !noalias !164
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !noalias !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.o, align 8, !noalias !164
  br label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !165, !noalias !162, !noundef !4
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %.lr.ph364.i, label %bb.h

.lr.ph364.i:                                      ; preds = %bb.g
  %i.s = add i64 %2, -2                           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !164
  store i64 0, ptr %i.h, align 8, !noalias !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !noalias !164
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.u, align 8, !noalias !164
  %.sroa.0.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 3
  %.sroa.0.i.1.i.1.i.1..sroa_idx799 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  %.sroa.0.i.2.i.2.i.2..sroa_idx801 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.1.i.1.i.1..sroa_idx800 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #17, !noalias !162
  unreachable

bb.i:                                             ; preds = %.backedge.i, %.lr.ph364.i
  %i.v = phi i64 [ 0, %.lr.ph364.i ], [ %i.fm, %.backedge.i ] ; 4 uses
  %.sroa.030.0363.i = phi ptr [ %i.p, %.lr.ph364.i ], [ %.sroa.030.0.be.i, %.backedge.i ] ; 10 uses
  %.sroa.23.0362.i = phi i64 [ %i.s, %.lr.ph364.i ], [ %.sroa.23.0.be.i, %.backedge.i ] ; 9 uses
  %i.w = load i8, ptr %.sroa.030.0363.i, align 1, !alias.scope !163, !noalias !162, !noundef !4 ; 2 uses
  switch i8 %i.w, label %bb.ci [
    i8 34, label %bb.l
    i8 92, label %bb.j
    i8 13, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %.not182.i = icmp eq i64 %.sroa.23.0362.i, 1
  br i1 %.not182.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %bb.ah

bb.k:                                             ; preds = %bb.i
  %.not181.i = icmp eq i64 %.sroa.23.0362.i, 1
  br i1 %.not181.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %bb.cg

bb.l:                                             ; preds = %bb.i
  %i.x = sub i64 %i.s, %.sroa.23.0362.i
  %i.y = add i64 %i.x, 1                          ; 8 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i111.i = icmp ult i64 %i.y, %i.s
  br i1 %.not.i111.i, label %bb.n, label %.split.i112.i

.split.i112.i:                                    ; preds = %bb.m
  %i.aa = icmp eq i64 %i.y, %i.s
  br i1 %i.aa, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.y
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !166, !noalias !162, !noundef !4
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.split.i112.i, %bb.l
  %i.ae = sub nuw i64 %i.s, %i.y                  ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !164
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ae, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.r unwind label %.loopexit.split-lp.i, !noalias !164

bb.p:                                             ; preds = %bb.n, %.split.i112.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.s, i64 noundef %i.y, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #20
          to label %bb.q unwind label %.loopexit.split-lp.i, !noalias !162

bb.q:                                             ; preds = %bb.s, %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.ag = load i64, ptr %i.d, align 8, !range !6, !noalias !164, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !7, !noalias !164, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.s, label %bb.t, !prof !5

bb.s:                                             ; preds = %bb.r
  %i.al = load i64, ptr %i.ak, align 8, !noalias !164
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.al) #20
          to label %bb.q unwind label %.loopexit.split-lp.i, !noalias !164

bb.t:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %i.ak, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = icmp ule i64 %i.ae, %i.aj
  call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !164
  store i64 %i.aj, ptr %i.e, align 8, !noalias !164
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !noalias !164
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !noalias !164
  %.not103.i = icmp eq i64 %i.s, %i.y
  br i1 %.not103.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.aq = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.w unwind label %.loopexit.split-lp.i, !noalias !164 ; 2 uses

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.af, i64 %i.ae, i1 false), !noalias !162
  store i64 %i.ae, ptr %i.ap, align 8, !noalias !164
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 4 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !164
  invoke void @_RNvXNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB7_7CString3newINtNtBb_3vec3VechENtB2_11SpecNewImpl13spec_new_implCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.x, !noalias !164

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i, %bb.w
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.x ], [ %i.aw, %bb.ab ] ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %common.resume, label %bb.y

bb.y:                                             ; preds = %.body.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef range(i64 1, 0) %i.as, i64 noundef 1) #21, !noalias !164
  br label %common.resume

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !164
  %i.av = load i64, ptr %i.g, align 8, !range !167, !noalias !164, !noundef !4
  %.not104.not.i = icmp eq i64 %i.av, -1
  br i1 %.not104.not.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i unwind label %bb.ab, !noalias !164

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body.i unwind label %bb.ac, !noalias !164

bb.ac:                                            ; preds = %bb.ab
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !164
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.ae unwind label %bb.x, !noalias !164

bb.ad:                                            ; preds = %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !164
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !164, !nonnull !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !164
  store ptr %i.bb, ptr %0, align 8, !alias.scope !162, !noalias !163
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !162, !noalias !163
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ar, ptr %.sroa.571.0..sroa_idx.i, align 8, !alias.scope !162, !noalias !163
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.as, ptr %.sroa.672.0..sroa_idx.i, align 8, !alias.scope !162, !noalias !163
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !164
  store ptr null, ptr %0, align 8, !alias.scope !162, !noalias !163
  %i.bc = icmp eq i64 %i.as, 0
  br i1 %i.bc, label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef range(i64 1, 0) %i.as, i64 noundef 1) #21, !noalias !164
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit

bb.ag:                                            ; preds = %bb.cl
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body129.i

.body129.i:                                       ; preds = %bb.ck, %bb.ag
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !162
  unreachable

bb.ah:                                            ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !163, !noalias !162, !noundef !4 ; 2 uses
  %i.bg = add i64 %.sroa.23.0362.i, -2            ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 2 ; 7 uses
  switch i8 %i.bf, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i [
    i8 120, label %bb.ai
    i8 117, label %bb.ax
    i8 110, label %bb.cd
    i8 114, label %bb.bq
    i8 116, label %bb.br
    i8 92, label %bb.bs
    i8 39, label %bb.bs
    i8 34, label %bb.bs
    i8 13, label %.preheader.i
    i8 10, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %bb.ah, %bb.ah
  %.not98354.i = icmp eq i64 %i.bg, 0
  br i1 %.not98354.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.i

bb.ai:                                            ; preds = %bb.ah
  %.not.i117.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i117.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !168, !noalias !169, !noundef !4 ; 5 uses
  %.not55.i.i = icmp eq i64 %i.bg, 1              ; 2 uses
  br i1 %.not55.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !168, !noalias !169, !noundef !4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.023.0.i.i = phi i8 [ %i.bk, %bb.ak ], [ 0, %bb.aj ] ; 5 uses
  %i.bl = add i8 %i.bi, -48                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.bl, 10
  br i1 %or.cond.i.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bm = add i8 %i.bi, -97
  %or.cond3.i.i = icmp ult i8 %i.bm, 6
  br i1 %or.cond3.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bn = add i8 %i.bi, -65
  %or.cond5.i.i = icmp ult i8 %i.bn, 6
  br i1 %or.cond5.i.i, label %bb.ap, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i

bb.ao:                                            ; preds = %bb.am
  %i.bo = add nsw i8 %i.bi, -87
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.bp = add nsw i8 %i.bi, -55
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %.sroa.032.0.i.i = phi i8 [ %i.bp, %bb.ap ], [ %i.bo, %bb.ao ], [ %i.bl, %bb.al ]
  %i.bq = shl nuw i8 %.sroa.032.0.i.i, 4
  %i.br = add i8 %.sroa.023.0.i.i, -48            ; 2 uses
  %or.cond7.i.i = icmp ult i8 %i.br, 10
  br i1 %or.cond7.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bs = add i8 %.sroa.023.0.i.i, -97
  %or.cond9.i.i = icmp ult i8 %i.bs, 6
  br i1 %or.cond9.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bt = add i8 %.sroa.023.0.i.i, -65
  %or.cond11.i.i = icmp ult i8 %i.bt, 6
  br i1 %or.cond11.i.i, label %bb.au, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i

bb.at:                                            ; preds = %bb.ar
  %i.bu = add nsw i8 %.sroa.023.0.i.i, -87
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.bv = add nsw i8 %.sroa.023.0.i.i, -55
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.aq
  %.sroa.033.0.i.i = phi i8 [ %i.bv, %bb.au ], [ %i.bu, %bb.at ], [ %i.br, %bb.aq ]
  br i1 %.not55.i.i, label %bb.aw, label %bb.bt, !prof !5

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
          to label %.noexc118.i unwind label %.loopexit.split-lp.i, !noalias !164

.noexc118.i:                                      ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.ah
  %.not.i119.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i119.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bw = load i8, ptr %i.bh, align 1, !alias.scope !170, !noalias !171, !noundef !4
  %.not43.i.i.a = icmp eq i8 %i.bw, 123
  br i1 %.not43.i.i.a, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit.i120.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit.i120.i: ; preds = %bb.ay
  %.pn6593137.i.i = add i64 %.sroa.23.0362.i, -3  ; 2 uses
  %.not4594138.i.i = icmp eq i64 %.pn6593137.i.i, 0
  br i1 %.not4594138.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit.i120.i
  %.pn67.ph143.i.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 3
  %i.bx = load i8, ptr %.pn67.ph143.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !4 ; 5 uses
  %i.by = add i8 %i.bx, -48                       ; 2 uses
  %or.cond.i121.i = icmp ult i8 %i.by, 10
  br i1 %or.cond.i121.i, label %.loopexit.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.split.i.i
  %i.bz = add i8 %i.bx, -97
  %or.cond3.i122.i = icmp ult i8 %i.bz, 6
  br i1 %or.cond3.i122.i, label %.split.us.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ca = add i8 %i.bx, -65
  %or.cond5.i123.i = icmp ult i8 %i.ca, 6
  br i1 %or.cond5.i123.i, label %.split106.us.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i

.split.us.i.i:                                    ; preds = %bb.az
  %i.cb = add nsw i8 %i.bx, -87
  br label %.loopexit.i.i

.split106.us.i.i:                                 ; preds = %bb.ba
  %i.cc = add nsw i8 %i.bx, -55
  br label %.loopexit.i.i

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i: ; preds = %bb.bd, %bb.bg, %bb.bj, %bb.bm, %bb.bp, %switch.early.test.i.i
  %.us-phi115.ph.i167.i = phi i64 [ %.pn65.in96.us.3.i.i, %bb.bj ], [ %.pn65.in96.us.2.i.i, %bb.bg ], [ %.pn65.in96.us.4.i.i, %bb.bm ], [ %.pn65.in96.us.6.i.i, %switch.early.test.i.i ], [ %.pn65.in96.us.5.i.i, %bb.bp ], [ %.pn65.in96.us.1.i.i, %bb.bd ]
  %.us-phi114.ph.i166.i = phi ptr [ %.pn6795.us.3.i.i, %bb.bj ], [ %.pn6795.us.2.i.i, %bb.bg ], [ %.pn6795.us.4.i.i, %bb.bm ], [ %.pn6795.us.6.i.i, %switch.early.test.i.i ], [ %.pn6795.us.5.i.i, %bb.bp ], [ %.pn6795.us.1.i.i, %bb.bd ]
  %.sroa.020.0.ph141182.ph.i165.i = phi i32 [ %i.cz, %bb.bj ], [ %i.cq, %bb.bg ], [ %i.dj, %bb.bm ], [ %i.ec, %switch.early.test.i.i ], [ %i.ds, %bb.bp ], [ %i.cg, %bb.bd ] ; 11 uses
  %i.cd = xor i32 %.sroa.020.0.ph141182.ph.i165.i, 55296
  %i.ce = add nsw i32 %i.cd, -1114112
  %i.cf = icmp ult i32 %i.ce, -1112064
  br i1 %i.cf, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.i

.loopexit.i.i:                                    ; preds = %.split106.us.i.i, %.split.us.i.i, %.lr.ph.split.i.i
  %.sroa.038.0.i.i = phi i8 [ %i.cc, %.split106.us.i.i ], [ %i.cb, %.split.us.i.i ], [ %i.by, %.lr.ph.split.i.i ]
  %i.cg = zext nneg i8 %.sroa.038.0.i.i to i32    ; 2 uses
  %.pn6593.i.i = add i64 %.sroa.23.0362.i, -4     ; 2 uses
  %.not4594.i.i = icmp eq i64 %.pn6593.i.i, 0
  br i1 %.not4594.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.preheader.1.i.i

.lr.ph.split.us.preheader.1.i.i:                  ; preds = %.loopexit.i.i
  %.pn67.ph143.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 4
  br label %.lr.ph.split.us.1.i.i

.lr.ph.split.us.1.i.i:                            ; preds = %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.1.i.i, %.lr.ph.split.us.preheader.1.i.i
  %.pn6597.us.1.i.i = phi i64 [ %.pn65.us.1.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.1.i.i ], [ %.pn6593.i.i, %.lr.ph.split.us.preheader.1.i.i ] ; 4 uses
  %.pn65.in96.us.1.i.i = phi i64 [ %.pn6597.us.1.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.1.i.i ], [ %.pn6593137.i.i, %.lr.ph.split.us.preheader.1.i.i ]
  %.pn6795.us.1.i.i = phi ptr [ %i.cl, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.1.i.i ], [ %.pn67.ph143.1.i.i, %.lr.ph.split.us.preheader.1.i.i ] ; 4 uses
  %i.ch = load i8, ptr %.pn6795.us.1.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !4 ; 6 uses
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %or.cond.us.1.i.i = icmp ult i8 %i.ci, 10
  br i1 %or.cond.us.1.i.i, label %.loopexit.1.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.split.us.1.i.i
  %i.cj = add i8 %i.ch, -97
  %or.cond3.us.1.i.i = icmp ult i8 %i.cj, 6
  br i1 %or.cond3.us.1.i.i, label %.split.us.1.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ck = add i8 %i.ch, -65
  %or.cond5.us.1.i.i = icmp ult i8 %i.ck, 6
  br i1 %or.cond5.us.1.i.i, label %.split106.us.1.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  switch i8 %i.ch, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i [
    i8 95, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.1.i.i
    i8 125, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i
  ]

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.1.i.i: ; preds = %bb.bd
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn6795.us.1.i.i, i64 1
  %.pn65.us.1.i.i = add nsw i64 %.pn6597.us.1.i.i, -1 ; 2 uses
  %.not45.us.1.i.i = icmp eq i64 %.pn65.us.1.i.i, 0
  br i1 %.not45.us.1.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.1.i.i

.split106.us.1.i.i:                               ; preds = %bb.bc
  %i.cm = add nsw i8 %i.ch, -55
  br label %.loopexit.1.i.i

.split.us.1.i.i:                                  ; preds = %bb.bb
  %i.cn = add nsw i8 %i.ch, -87
  br label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %.lr.ph.split.us.1.i.i, %.split.us.1.i.i, %.split106.us.1.i.i
  %.sroa.038.0.1.i.i = phi i8 [ %i.cm, %.split106.us.1.i.i ], [ %i.cn, %.split.us.1.i.i ], [ %i.ci, %.lr.ph.split.us.1.i.i ]
  %i.co = shl nuw nsw i32 %i.cg, 4
  %i.cp = zext nneg i8 %.sroa.038.0.1.i.i to i32
  %i.cq = add nuw nsw i32 %i.co, %i.cp            ; 2 uses
  %.pn6593.1.i.i = add nsw i64 %.pn6597.us.1.i.i, -1 ; 2 uses
  %.not4594.1.i.i = icmp eq i64 %.pn6593.1.i.i, 0
  br i1 %.not4594.1.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.2.i.i

.lr.ph.split.us.2.i.i:                            ; preds = %.loopexit.1.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.2.i.i
  %.pn6597.us.2.i.i = phi i64 [ %.pn65.us.2.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.2.i.i ], [ %.pn6593.1.i.i, %.loopexit.1.i.i ] ; 4 uses
  %.pn65.in96.us.2.i.i = phi i64 [ %.pn6597.us.2.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.2.i.i ], [ %.pn6597.us.1.i.i, %.loopexit.1.i.i ]
  %.pn6795.us.2.pn.i.i = phi ptr [ %.pn6795.us.2.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.2.i.i ], [ %.pn6795.us.1.i.i, %.loopexit.1.i.i ] ; 2 uses
  %.pn6795.us.2.i.i = getelementptr inbounds nuw i8, ptr %.pn6795.us.2.pn.i.i, i64 1 ; 3 uses
  %i.cr = load i8, ptr %.pn6795.us.2.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !4 ; 6 uses
  %i.cs = add i8 %i.cr, -48                       ; 2 uses
  %or.cond.us.2.i.i = icmp ult i8 %i.cs, 10
  br i1 %or.cond.us.2.i.i, label %.loopexit.2.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.split.us.2.i.i
  %i.ct = add i8 %i.cr, -97
  %or.cond3.us.2.i.i = icmp ult i8 %i.ct, 6
  br i1 %or.cond3.us.2.i.i, label %.split.us.2.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cu = add i8 %i.cr, -65
  %or.cond5.us.2.i.i = icmp ult i8 %i.cu, 6
  br i1 %or.cond5.us.2.i.i, label %.split106.us.2.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  switch i8 %i.cr, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i [
    i8 95, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.2.i.i
    i8 125, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i
  ]

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.2.i.i: ; preds = %bb.bg
  %.pn65.us.2.i.i = add nsw i64 %.pn6597.us.2.i.i, -1 ; 2 uses
  %.not45.us.2.i.i = icmp eq i64 %.pn65.us.2.i.i, 0
  br i1 %.not45.us.2.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.2.i.i

.split106.us.2.i.i:                               ; preds = %bb.bf
  %i.cv = add nsw i8 %i.cr, -55
  br label %.loopexit.2.i.i

.split.us.2.i.i:                                  ; preds = %bb.be
  %i.cw = add nsw i8 %i.cr, -87
  br label %.loopexit.2.i.i

.loopexit.2.i.i:                                  ; preds = %.lr.ph.split.us.2.i.i, %.split.us.2.i.i, %.split106.us.2.i.i
  %.sroa.038.0.2.i.i = phi i8 [ %i.cv, %.split106.us.2.i.i ], [ %i.cw, %.split.us.2.i.i ], [ %i.cs, %.lr.ph.split.us.2.i.i ]
  %i.cx = shl nuw nsw i32 %i.cq, 4
  %i.cy = zext nneg i8 %.sroa.038.0.2.i.i to i32
  %i.cz = add nuw nsw i32 %i.cx, %i.cy            ; 2 uses
  %.pn6593.2.i.i = add nsw i64 %.pn6597.us.2.i.i, -1 ; 2 uses
  %.not4594.2.i.i = icmp eq i64 %.pn6593.2.i.i, 0
  br i1 %.not4594.2.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.preheader.3.i.i

.lr.ph.split.us.preheader.3.i.i:                  ; preds = %.loopexit.2.i.i
  %.pn67.ph143.3.i.i = getelementptr inbounds nuw i8, ptr %.pn6795.us.2.pn.i.i, i64 2
  br label %.lr.ph.split.us.3.i.i

.lr.ph.split.us.3.i.i:                            ; preds = %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.3.i.i, %.lr.ph.split.us.preheader.3.i.i
  %.pn6597.us.3.i.i = phi i64 [ %.pn65.us.3.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.3.i.i ], [ %.pn6593.2.i.i, %.lr.ph.split.us.preheader.3.i.i ] ; 4 uses
  %.pn65.in96.us.3.i.i = phi i64 [ %.pn6597.us.3.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.3.i.i ], [ %.pn6597.us.2.i.i, %.lr.ph.split.us.preheader.3.i.i ]
  %.pn6795.us.3.i.i = phi ptr [ %i.de, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.3.i.i ], [ %.pn67.ph143.3.i.i, %.lr.ph.split.us.preheader.3.i.i ] ; 4 uses
  %i.da = load i8, ptr %.pn6795.us.3.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !4 ; 6 uses
  %i.db = add i8 %i.da, -48                       ; 2 uses
  %or.cond.us.3.i.i = icmp ult i8 %i.db, 10
  br i1 %or.cond.us.3.i.i, label %.loopexit.3.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.split.us.3.i.i
  %i.dc = add i8 %i.da, -97
  %or.cond3.us.3.i.i = icmp ult i8 %i.dc, 6
  br i1 %or.cond3.us.3.i.i, label %.split.us.3.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dd = add i8 %i.da, -65
  %or.cond5.us.3.i.i = icmp ult i8 %i.dd, 6
  br i1 %or.cond5.us.3.i.i, label %.split106.us.3.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  switch i8 %i.da, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i [
    i8 95, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.3.i.i
    i8 125, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i
  ]

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.3.i.i: ; preds = %bb.bj
  %i.de = getelementptr inbounds nuw i8, ptr %.pn6795.us.3.i.i, i64 1
  %.pn65.us.3.i.i = add nsw i64 %.pn6597.us.3.i.i, -1 ; 2 uses
  %.not45.us.3.i.i = icmp eq i64 %.pn65.us.3.i.i, 0
  br i1 %.not45.us.3.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.3.i.i

.split106.us.3.i.i:                               ; preds = %bb.bi
  %i.df = add nsw i8 %i.da, -55
  br label %.loopexit.3.i.i

.split.us.3.i.i:                                  ; preds = %bb.bh
  %i.dg = add nsw i8 %i.da, -87
  br label %.loopexit.3.i.i

.loopexit.3.i.i:                                  ; preds = %.lr.ph.split.us.3.i.i, %.split.us.3.i.i, %.split106.us.3.i.i
  %.sroa.038.0.3.i.i = phi i8 [ %i.df, %.split106.us.3.i.i ], [ %i.dg, %.split.us.3.i.i ], [ %i.db, %.lr.ph.split.us.3.i.i ]
  %i.dh = shl nuw nsw i32 %i.cz, 4
  %i.di = zext nneg i8 %.sroa.038.0.3.i.i to i32
  %i.dj = add nuw nsw i32 %i.dh, %i.di            ; 2 uses
  %.pn6593.3.i.i = add nsw i64 %.pn6597.us.3.i.i, -1 ; 2 uses
  %.not4594.3.i.i = icmp eq i64 %.pn6593.3.i.i, 0
  br i1 %.not4594.3.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.4.i.i

.lr.ph.split.us.4.i.i:                            ; preds = %.loopexit.3.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.4.i.i
  %.pn6597.us.4.i.i = phi i64 [ %.pn65.us.4.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.4.i.i ], [ %.pn6593.3.i.i, %.loopexit.3.i.i ] ; 4 uses
  %.pn65.in96.us.4.i.i = phi i64 [ %.pn6597.us.4.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.4.i.i ], [ %.pn6597.us.3.i.i, %.loopexit.3.i.i ]
  %.pn6795.us.4.pn.i.i = phi ptr [ %.pn6795.us.4.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.4.i.i ], [ %.pn6795.us.3.i.i, %.loopexit.3.i.i ] ; 2 uses
  %.pn6795.us.4.i.i = getelementptr inbounds nuw i8, ptr %.pn6795.us.4.pn.i.i, i64 1 ; 3 uses
  %i.dk = load i8, ptr %.pn6795.us.4.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !4 ; 6 uses
  %i.dl = add i8 %i.dk, -48                       ; 2 uses
  %or.cond.us.4.i.i = icmp ult i8 %i.dl, 10
  br i1 %or.cond.us.4.i.i, label %.loopexit.4.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.split.us.4.i.i
  %i.dm = add i8 %i.dk, -97
  %or.cond3.us.4.i.i = icmp ult i8 %i.dm, 6
  br i1 %or.cond3.us.4.i.i, label %.split.us.4.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dn = add i8 %i.dk, -65
  %or.cond5.us.4.i.i = icmp ult i8 %i.dn, 6
  br i1 %or.cond5.us.4.i.i, label %.split106.us.4.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  switch i8 %i.dk, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i [
    i8 95, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.4.i.i
    i8 125, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i
  ]

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.4.i.i: ; preds = %bb.bm
  %.pn65.us.4.i.i = add nsw i64 %.pn6597.us.4.i.i, -1 ; 2 uses
  %.not45.us.4.i.i = icmp eq i64 %.pn65.us.4.i.i, 0
  br i1 %.not45.us.4.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.4.i.i

.split106.us.4.i.i:                               ; preds = %bb.bl
  %i.do = add nsw i8 %i.dk, -55
  br label %.loopexit.4.i.i

.split.us.4.i.i:                                  ; preds = %bb.bk
  %i.dp = add nsw i8 %i.dk, -87
  br label %.loopexit.4.i.i

.loopexit.4.i.i:                                  ; preds = %.lr.ph.split.us.4.i.i, %.split.us.4.i.i, %.split106.us.4.i.i
  %.sroa.038.0.4.i.i = phi i8 [ %i.do, %.split106.us.4.i.i ], [ %i.dp, %.split.us.4.i.i ], [ %i.dl, %.lr.ph.split.us.4.i.i ]
  %i.dq = shl nuw nsw i32 %i.dj, 4
  %i.dr = zext nneg i8 %.sroa.038.0.4.i.i to i32
  %i.ds = add nuw nsw i32 %i.dq, %i.dr            ; 2 uses
  %.pn6593.4.i.i = add nsw i64 %.pn6597.us.4.i.i, -1 ; 2 uses
  %.not4594.4.i.i = icmp eq i64 %.pn6593.4.i.i, 0
  br i1 %.not4594.4.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.preheader.5.i.i

.lr.ph.split.us.preheader.5.i.i:                  ; preds = %.loopexit.4.i.i
  %.pn67.ph143.5.i.i = getelementptr inbounds nuw i8, ptr %.pn6795.us.4.pn.i.i, i64 2
  br label %.lr.ph.split.us.5.i.i

.lr.ph.split.us.5.i.i:                            ; preds = %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.5.i.i, %.lr.ph.split.us.preheader.5.i.i
  %.pn6597.us.5.i.i = phi i64 [ %.pn65.us.5.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.5.i.i ], [ %.pn6593.4.i.i, %.lr.ph.split.us.preheader.5.i.i ] ; 4 uses
  %.pn65.in96.us.5.i.i = phi i64 [ %.pn6597.us.5.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.5.i.i ], [ %.pn6597.us.4.i.i, %.lr.ph.split.us.preheader.5.i.i ]
  %.pn6795.us.5.i.i = phi ptr [ %i.dx, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.5.i.i ], [ %.pn67.ph143.5.i.i, %.lr.ph.split.us.preheader.5.i.i ] ; 4 uses
  %i.dt = load i8, ptr %.pn6795.us.5.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !4 ; 6 uses
  %i.du = add i8 %i.dt, -48                       ; 2 uses
  %or.cond.us.5.i.i = icmp ult i8 %i.du, 10
  br i1 %or.cond.us.5.i.i, label %.loopexit.5.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.split.us.5.i.i
  %i.dv = add i8 %i.dt, -97
  %or.cond3.us.5.i.i = icmp ult i8 %i.dv, 6
  br i1 %or.cond3.us.5.i.i, label %.split.us.5.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dw = add i8 %i.dt, -65
  %or.cond5.us.5.i.i = icmp ult i8 %i.dw, 6
  br i1 %or.cond5.us.5.i.i, label %.split106.us.5.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  switch i8 %i.dt, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i [
    i8 95, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.5.i.i
    i8 125, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i
  ]

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.5.i.i: ; preds = %bb.bp
  %i.dx = getelementptr inbounds nuw i8, ptr %.pn6795.us.5.i.i, i64 1
  %.pn65.us.5.i.i = add nsw i64 %.pn6597.us.5.i.i, -1 ; 2 uses
  %.not45.us.5.i.i = icmp eq i64 %.pn65.us.5.i.i, 0
  br i1 %.not45.us.5.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.5.i.i

.split106.us.5.i.i:                               ; preds = %bb.bo
  %i.dy = add nsw i8 %i.dt, -55
  br label %.loopexit.5.i.i

.split.us.5.i.i:                                  ; preds = %bb.bn
  %i.dz = add nsw i8 %i.dt, -87
  br label %.loopexit.5.i.i

.loopexit.5.i.i:                                  ; preds = %.lr.ph.split.us.5.i.i, %.split.us.5.i.i, %.split106.us.5.i.i
  %.sroa.038.0.5.i.i = phi i8 [ %i.dy, %.split106.us.5.i.i ], [ %i.dz, %.split.us.5.i.i ], [ %i.du, %.lr.ph.split.us.5.i.i ]
  %i.ea = shl nuw nsw i32 %i.ds, 4
  %i.eb = zext nneg i8 %.sroa.038.0.5.i.i to i32
  %i.ec = add nuw nsw i32 %i.ea, %i.eb
  %.pn6593.5.i.i = add nsw i64 %.pn6597.us.5.i.i, -1 ; 2 uses
  %.not4594.5.i.i = icmp eq i64 %.pn6593.5.i.i, 0
  br i1 %.not4594.5.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.6.i.i

.lr.ph.split.us.6.i.i:                            ; preds = %.loopexit.5.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.6.i.i
  %.pn6597.us.6.i.i = phi i64 [ %.pn65.us.6.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.6.i.i ], [ %.pn6593.5.i.i, %.loopexit.5.i.i ] ; 2 uses
  %.pn65.in96.us.6.i.i = phi i64 [ %.pn6597.us.6.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.6.i.i ], [ %.pn6597.us.5.i.i, %.loopexit.5.i.i ]
  %.pn6795.us.6.pn.i.i = phi ptr [ %.pn6795.us.6.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.6.i.i ], [ %.pn6795.us.5.i.i, %.loopexit.5.i.i ]
  %.pn6795.us.6.i.i = getelementptr inbounds nuw i8, ptr %.pn6795.us.6.pn.i.i, i64 1 ; 3 uses
  %i.ed = load i8, ptr %.pn6795.us.6.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !4 ; 2 uses
  %i.ee = add i8 %i.ed, -48
  %or.cond.us.6.i.i = icmp ult i8 %i.ee, 10
  br i1 %or.cond.us.6.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %.lr.ph.split.us.6.i.i
  switch i8 %i.ed, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i [
    i8 125, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i
    i8 95, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.6.i.i
  ]

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.6.i.i: ; preds = %switch.early.test.i.i
  %.pn65.us.6.i.i = add nsw i64 %.pn6597.us.6.i.i, -1 ; 2 uses
  %.not45.us.6.i.i = icmp eq i64 %.pn65.us.6.i.i, 0
  br i1 %.not45.us.6.i.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.split.us.6.i.i

bb.bq:                                            ; preds = %bb.ah
  br label %bb.cd

bb.br:                                            ; preds = %bb.ah
  br label %bb.cd

bb.bs:                                            ; preds = %bb.ah, %bb.ah, %bb.ah
  br label %bb.cd

bb.bt:                                            ; preds = %bb.av
  %i.ef = add nuw i8 %.sroa.033.0.i.i, %i.bq      ; 2 uses
  %i.eg = add i64 %.sroa.23.0362.i, -4
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 4
  %i.ei = icmp eq i8 %i.ef, 0
  br i1 %i.ei, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %bb.cd

_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.i: ; preds = %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.us-phi114.ph.i166.i, i64 1
  %i.ek = add nsw i64 %.us-phi115.ph.i167.i, -2
  %i.el = icmp ult i32 %.sroa.020.0.ph141182.ph.i165.i, 1114112
  call void @llvm.assume(i1 %i.el)
  %i.em = icmp eq i32 %.sroa.020.0.ph141182.ph.i165.i, 0
  br i1 %i.em, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !164
  %i.en = icmp samesign ult i32 %.sroa.020.0.ph141182.ph.i165.i, 128
  br i1 %i.en, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eo = icmp samesign ult i32 %.sroa.020.0.ph141182.ph.i165.i, 2048
  %i.ep = trunc i32 %.sroa.020.0.ph141182.ph.i165.i to i8
  %i.eq = and i8 %i.ep, 63
  %i.er = or disjoint i8 %i.eq, -128              ; 3 uses
  %i.es = lshr i32 %.sroa.020.0.ph141182.ph.i165.i, 6
  %i.et = trunc i32 %i.es to i8                   ; 2 uses
  %i.eu = and i8 %i.et, 63
  %i.ev = or disjoint i8 %i.eu, -128              ; 2 uses
  %i.ew = lshr i32 %.sroa.020.0.ph141182.ph.i165.i, 12
  %i.ex = trunc i32 %i.ew to i8                   ; 2 uses
  %i.ey = and i8 %i.ex, 63
  %i.ez = or disjoint i8 %i.ey, -128
  %i.fa = lshr i32 %.sroa.020.0.ph141182.ph.i165.i, 18
  %i.fb = trunc nuw nsw i32 %i.fa to i8
  %i.fc = or disjoint i8 %i.fb, -16
  br i1 %i.eo, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.fd = trunc nuw nsw i32 %.sroa.020.0.ph141182.ph.i165.i to i8
  store i8 %i.fd, ptr %.sroa.0.i, align 4, !alias.scope !172, !noalias !164
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bv
  %i.fe = or disjoint i8 %i.et, -64
  store i8 %i.fe, ptr %.sroa.0.i, align 4, !alias.scope !172, !noalias !164
  store i8 %i.er, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx800, align 1, !alias.scope !172, !noalias !164
  br label %bb.cb

bb.by:                                            ; preds = %bb.bv
  %i.ff = icmp samesign ult i32 %.sroa.020.0.ph141182.ph.i165.i, 65536
  br i1 %i.ff, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fg = or disjoint i8 %i.ex, -32
  store i8 %i.fg, ptr %.sroa.0.i, align 4, !alias.scope !172, !noalias !164
  store i8 %i.ev, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx799, align 1, !alias.scope !172, !noalias !164
  store i8 %i.er, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx801, align 2, !alias.scope !172, !noalias !164
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  store i8 %i.fc, ptr %.sroa.0.i, align 4, !alias.scope !172, !noalias !164
  store i8 %i.ez, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !172, !noalias !164
  store i8 %i.ev, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !172, !noalias !164
  store i8 %i.er, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !172, !noalias !164
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bx, %bb.bw
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.bw ], [ 2, %bb.bx ], [ 3, %bb.bz ], [ 4, %bb.ca ] ; 3 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.0.05.i.i)
          to label %bb.cc unwind label %.loopexit.i, !noalias !164

bb.cc:                                            ; preds = %bb.cb
  %i.fh = load i64, ptr %i.u, align 8, !alias.scope !173, !noalias !164, !noundef !4 ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, -1
  call void @llvm.assume(i1 %i.fi)
  %i.fj = load ptr, ptr %i.t, align 8, !alias.scope !173, !noalias !164, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0.i, i64 %.sroa.0.05.i.i, i1 false), !noalias !164
  %.pre.i.i = load i64, ptr %i.u, align 8, !alias.scope !173, !noalias !164
  %i.fl = add i64 %.pre.i.i, %.sroa.0.05.i.i      ; 2 uses
  store i64 %i.fl, ptr %i.u, align 8, !alias.scope !173, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsgbWeKYPjk8w_3syn.exit.i, %bb.cc
  %i.fm = phi i64 [ %i.fr, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsgbWeKYPjk8w_3syn.exit.i ], [ %i.fl, %bb.cc ], [ %i.v, %.lr.ph.i ]
  %.sroa.23.0.be.i = phi i64 [ %.sroa.23.4.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsgbWeKYPjk8w_3syn.exit.i ], [ %i.ek, %bb.cc ], [ %.sroa.23.1355.i, %.lr.ph.i ] ; 2 uses
  %.sroa.030.0.be.i = phi ptr [ %.sroa.030.4.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsgbWeKYPjk8w_3syn.exit.i ], [ %i.ej, %bb.cc ], [ %.sroa.030.1356.i, %.lr.ph.i ]
  %.not96.i = icmp eq i64 %.sroa.23.0.be.i, 0
  br i1 %.not96.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %bb.i

bb.cd:                                            ; preds = %bb.ci, %bb.ch, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.ah
  %.sroa.23.4.i = phi i64 [ %i.fz, %bb.ci ], [ %i.fx, %bb.ch ], [ %i.eg, %bb.bt ], [ %i.bg, %bb.ah ], [ %i.bg, %bb.bq ], [ %i.bg, %bb.br ], [ %i.bg, %bb.bs ]
  %.sroa.030.4.i = phi ptr [ %i.ga, %bb.ci ], [ %i.fy, %bb.ch ], [ %i.eh, %bb.bt ], [ %i.bh, %bb.ah ], [ %i.bh, %bb.bq ], [ %i.bh, %bb.br ], [ %i.bh, %bb.bs ]
  %.sroa.015.2.i = phi i8 [ %i.w, %bb.ci ], [ 10, %bb.ch ], [ %i.ef, %bb.bt ], [ 10, %bb.ah ], [ 13, %bb.bq ], [ 9, %bb.br ], [ %i.bf, %bb.bs ]
  %i.fn = load i64, ptr %i.h, align 8, !range !11, !alias.scope !174, !noalias !164, !noundef !4
  %i.fo = icmp eq i64 %i.v, %i.fn
  br i1 %i.fo, label %bb.ce, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsgbWeKYPjk8w_3syn.exit.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsgbWeKYPjk8w_3syn.exit.i unwind label %.loopexit.i, !noalias !164

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE8push_mutCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.ce, %bb.cd
  %i.fp = load ptr, ptr %i.t, align 8, !alias.scope !174, !noalias !164, !nonnull !4, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.v
  store i8 %.sroa.015.2.i, ptr %i.fq, align 1, !noalias !164
  %i.fr = add i64 %i.v, 1                         ; 2 uses
  store i64 %i.fr, ptr %i.u, align 8, !alias.scope !174, !noalias !164
  br label %.backedge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.cf
  %.sroa.030.1356.i = phi ptr [ %i.fu, %bb.cf ], [ %i.bh, %.preheader.i ] ; 3 uses
  %.sroa.23.1355.i = phi i64 [ %i.ft, %bb.cf ], [ %i.bg, %.preheader.i ] ; 2 uses
  %i.fs = load i8, ptr %.sroa.030.1356.i, align 1, !alias.scope !163, !noalias !162, !noundef !4
  switch i8 %i.fs, label %.backedge.i [
    i8 32, label %bb.cf
    i8 9, label %bb.cf
    i8 10, label %bb.cf
    i8 13, label %bb.cf
  ]

bb.cf:                                            ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ft = add i64 %.sroa.23.1355.i, -1            ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.030.1356.i, i64 1
  %.not98.i = icmp eq i64 %i.ft, 0
  br i1 %.not98.i, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i, label %.lr.ph.i

bb.cg:                                            ; preds = %bb.k
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !163, !noalias !162, !noundef !4
  %.not97.i = icmp eq i8 %i.fw, 10
  br i1 %.not97.i, label %bb.ch, label %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i

bb.ch:                                            ; preds = %bb.cg
  %i.fx = add i64 %.sroa.23.0362.i, -2
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 2
  br label %bb.cd

bb.ci:                                            ; preds = %bb.i
  %i.fz = add i64 %.sroa.23.0362.i, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.030.0363.i, i64 1
  br label %bb.cd

common.resume:                                    ; preds = %.body.i2, %bb.cs, %.body.i, %bb.y, %bb.cl, %bb.cn
  %common.resume.op = phi { ptr, i32 } [ %i.gd, %bb.cn ], [ %lpad.phi.i, %bb.cl ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.y ], [ %eh.lpad-body.i3, %bb.cs ], [ %eh.lpad-body.i3, %.body.i2 ]
  resume { ptr, i32 } %common.resume.op

.loopexit.i:                                      ; preds = %bb.ce, %bb.cb
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp.i:                             ; preds = %bb.aw, %bb.u, %bb.s, %bb.p, %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.cl unwind label %bb.ck, !noalias !162

bb.ck:                                            ; preds = %bb.cj
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body129.i unwind label %bb.cm, !noalias !162

bb.cl:                                            ; preds = %bb.cj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ag, !noalias !162

bb.cm:                                            ; preds = %bb.ck
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !162
  unreachable

_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i: ; preds = %bb.cg, %.backedge.i, %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.i, %bb.bt, %.loopexit.5.i.i, %.loopexit.4.i.i, %.loopexit.3.i.i, %.loopexit.2.i.i, %.loopexit.1.i.i, %.loopexit.i.i, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit49.i.i, %bb.ba, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit.i120.i, %bb.ay, %bb.ax, %bb.as, %bb.an, %bb.ai, %.preheader.i, %bb.ah, %bb.k, %bb.j, %bb.cf, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.1.i.i, %bb.bd, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.2.i.i, %bb.bg, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.3.i.i, %bb.bj, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.4.i.i, %bb.bm, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.5.i.i, %bb.bp, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit48.us.6.i.i, %switch.early.test.i.i, %.lr.ph.split.us.6.i.i, %.split.i.thread.i
  store ptr null, ptr %0, align 8, !alias.scope !162, !noalias !163
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit132.i unwind label %bb.cn, !noalias !164

bb.cn:                                            ; preds = %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.co, !noalias !164

bb.co:                                            ; preds = %bb.cn
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !164
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit132.i: ; preds = %_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_uShEB6_.exit.thread.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !164
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit

_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit: ; preds = %bb.ad, %bb.ae, %bb.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit

.split.i.i:                                       ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !176
  %i.gf = add i64 %2, -1
  call fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value17parse_lit_str_raw(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.gf), !noalias !175
  %i.gg = load ptr, ptr %i.c, align 8, !noalias !176, !noundef !4 ; 2 uses
  %.not22.i = icmp eq ptr %i.gg, null
  br i1 %.not22.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.split.i.i
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.415.0.copyload.i = load i64, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !176
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.516.0.copyload.i = load ptr, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !176, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.617.0.copyload.i = load i64, ptr %.sroa.617.0..sroa_idx.i, align 8, !noalias !176 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  invoke void @_RNvXsN_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtB7_5boxed3BoxeEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull %i.gg, i64 noundef %.sroa.415.0.copyload.i)
          to label %bb.ct unwind label %bb.cr, !noalias !175

bb.cq:                                            ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !176
  store ptr null, ptr %0, align 8, !alias.scope !175, !noalias !177
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit

bb.cr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i4, %bb.ct, %bb.cp
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2

.body.i2:                                         ; preds = %bb.cw, %bb.cr
  %eh.lpad-body.i3 = phi { ptr, i32 } [ %i.gh, %bb.cr ], [ %i.gk, %bb.cw ] ; 2 uses
  %i.gi = icmp eq i64 %.sroa.617.0.copyload.i, 0
  br i1 %i.gi, label %common.resume, label %bb.cs

bb.cs:                                            ; preds = %.body.i2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.516.0.copyload.i, i64 noundef range(i64 1, 0) %.sroa.617.0.copyload.i, i64 noundef 1) #21, !noalias !175
  br label %common.resume

bb.ct:                                            ; preds = %bb.cp
  invoke void @_RNvXNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.cu unwind label %bb.cr, !noalias !175

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  %i.gj = load i64, ptr %i.b, align 8, !range !167, !noalias !176, !noundef !4
  %.not23.not.i = icmp eq i64 %i.gj, -1
  br i1 %.not23.not.i, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i4 unwind label %bb.cw, !noalias !175

bb.cw:                                            ; preds = %bb.cv
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.i2 unwind label %bb.cx, !noalias !175

bb.cx:                                            ; preds = %bb.cw
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !175
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i4: ; preds = %bb.cv
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.cz unwind label %bb.cr, !noalias !175

bb.cy:                                            ; preds = %bb.cu
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !176
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !176, !nonnull !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  store ptr %i.gp, ptr %0, align 8, !alias.scope !175, !noalias !177
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gn, ptr %.sroa.4.0..sroa_idx.i5, align 8, !alias.scope !175, !noalias !177
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.516.0.copyload.i, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !175, !noalias !177
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.617.0.copyload.i, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !175, !noalias !177
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit

bb.cz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs4wP2HXfJTCR_5alloc3ffi5c_str8NulErrorECsgbWeKYPjk8w_3syn.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  store ptr null, ptr %0, align 8, !alias.scope !175, !noalias !177
  %i.gq = icmp eq i64 %.sroa.617.0.copyload.i, 0
  br i1 %i.gq, label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.516.0.copyload.i, i64 noundef range(i64 1, 0) %.sroa.617.0.copyload.i, i64 noundef 1) #21, !noalias !175
  br label %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit

_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value19parse_lit_c_str_raw.exit: ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cq, %_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value22parse_lit_c_str_cooked.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value15parse_lit_float(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.695.sroa.0 = alloca [16 x i8], align 8   ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.g, align 8, !range !6, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !7, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.s = icmp ule i64 %2, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not66 = icmp eq i64 %2, 0
  br i1 %.not66, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx105, align 8
  %.sroa.450.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.450.0..sroa_idx106, align 8
  br label %.split219.thread

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %i.o, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %2, ptr %.sroa.450.0..sroa_idx, align 8
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %i.u = icmp eq i8 %i.t, 45
  %i.v = zext i1 %i.u to i64                      ; 4 uses
  %i.w = icmp ugt i64 %2, %i.v
  br i1 %i.w, label %bb.h, label %.split219.thread

.split219.thread:                                 ; preds = %.split219, %.lr.ph.split.us, %.lr.ph.split.us, %bb.i, %.lr.ph.split, %.loopexit, %bb.r, %bb.e, %bb.h, %bb.d
  store ptr null, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit unwind label %bb.f

bb.f:                                             ; preds = %.split219.thread
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable
end_hunk_0
