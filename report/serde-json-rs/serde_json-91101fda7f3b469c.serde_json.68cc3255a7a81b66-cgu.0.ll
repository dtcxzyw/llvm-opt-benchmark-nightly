Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.0?download=true
inline.NumInlined: 191
inline.NumDeleted: 91
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str:bb.a

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 16, ptr %i.d, align 8
  %i.ak = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !403, !nonnull !6, !noundef !6
  %i.al = invoke { i64, ptr } %i.ak(i8 noundef 10, ptr noundef nonnull readonly %i.ag, ptr noundef nonnull readonly %i.aj)
          to label %.noexc.i8 unwind label %bb.h, !noalias !404, !inline_history !13 ; 2 uses

.noexc.i8:                                        ; preds = %bb.g
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i11, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i11: ; preds = %.noexc.i8
  %i.ao = extractvalue { i64, ptr } %i.al, 1
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.ag to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %.not.i.i.i.i12 = icmp ult i64 %i.ar, %i.m
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.at = add nuw i64 %i.ar, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i11, %.noexc.i8
  %.sroa.0.06.i.i.i10 = phi i64 [ %i.at, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i11 ], [ 0, %.noexc.i8 ] ; 2 uses
  %i.au = getelementptr i8, ptr %i.ag, i64 %.sroa.0.06.i.i.i10
  %i.av = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !405, !nonnull !6, !noundef !6
  %i.aw = invoke noundef i64 %i.av(i8 noundef 10, ptr noundef nonnull %i.ag, ptr noundef %i.au)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit14 unwind label %bb.h, !noalias !404, !inline_history !13

bb.h:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9, %bb.g
  %lpad.thr_comm.i7 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #25
          to label %common.resume unwind label %bb.i, !noalias !406

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !404
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit14: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i9
  %i.ay = add i64 %i.aw, 1
  %i.az = sub i64 %i.m, %.sroa.0.06.i.i.i10
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ay, i64 noundef %i.az), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.bb = add nuw i64 %i.m, 1
  store i64 %i.bb, ptr %i.f, align 8
  br label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit.thread

bb.k:                                             ; preds = %bb.e
  %i.bc = add nuw i64 %i.m, 1
  store i64 %i.bc, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !407
  call fastcc void @_RINvNtCs8ZPNfZ0ciAA_10serde_json4read11next_or_eofNtB2_9SliceReadEB4_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bd = load i8, ptr %i.c, align 8, !range !14, !noalias !407, !noundef !6
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !407, !nonnull !6, !align !9, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !407
  br label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bh = load i8, ptr %i.k, align 1, !noalias !407, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !407
  switch i8 %i.bh, label %bb.n [
    i8 34, label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit
    i8 92, label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit
    i8 47, label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit
    i8 98, label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit
    i8 102, label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit
    i8 110, label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit
    i8 114, label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit
    i8 116, label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit
    i8 117, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !407
  store i64 12, ptr %i.a, align 8, !noalias !407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.bi = load i64, ptr %i.f, align 8, !alias.scope !410, !noundef !6 ; 5 uses
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !410 ; 6 uses
  %.val1.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !410, !noundef !6 ; 2 uses
  %.not.i.i.i.i15 = icmp ugt i64 %i.bi, %.val1.i.i.i
  br i1 %.not.i.i.i.i15, label %bb.p, label %bb.o, !prof !12

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.bi
  %i.bk = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !411, !nonnull !6, !noundef !6
  %i.bl = invoke { i64, ptr } %i.bk(i8 noundef 10, ptr noundef nonnull readonly %.val.i.i.i, ptr noundef nonnull readonly %i.bj)
          to label %.noexc.i.i unwind label %bb.q, !noalias !412, !inline_history !13 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.o
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %.noexc.i.i
  %i.bo = extractvalue { i64, ptr } %i.bl, 1
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %.val.i.i.i to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  tail call void @llvm.assume(i1 %i.bs)
  %.not.i.i.i.i.i = icmp ult i64 %i.br, %i.bi
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bt = add nuw i64 %i.br, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bi, i64 noundef %.val1.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %.noexc2.i.i unwind label %bb.q, !noalias !412

.noexc2.i.i:                                      ; preds = %bb.p
  unreachable

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %.noexc.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.bt, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 2 uses
  %i.bu = getelementptr i8, ptr %.val.i.i.i, i64 %.sroa.0.06.i.i.i.i
  %i.bv = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !413, !nonnull !6, !noundef !6
  %i.bw = invoke noundef i64 %i.bv(i8 noundef 10, ptr noundef nonnull %.val.i.i.i, ptr noundef %i.bu)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit.i unwind label %bb.q, !noalias !412, !inline_history !13

bb.q:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i, %bb.p, %bb.o
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #25
          to label %common.resume unwind label %bb.r, !noalias !414

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !412
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit.i: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i
  %i.by = add i64 %i.bw, 1
  %i.bz = sub i64 %i.bi, %.sroa.0.06.i.i.i.i
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.by, i64 noundef %i.bz), !noalias !414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !407
  br label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit.thread

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !407
  call fastcc void @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read17decode_hex_escape(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #26
  %i.cb = load i16, ptr %i.b, align 8, !range !16, !noalias !407, !noundef !6
  %i.cc = trunc nuw i16 %i.cb to i1
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !407, !nonnull !6, !align !9, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !407
  br label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !407
  br label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit: ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.u
  tail call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i1 noundef zeroext true)
  %i.cf = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.cg = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %._crit_edge, label %bb.b

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_.exit.thread: ; preds = %bb.t, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit.i, %bb.l, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit14, %bb.j, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit
  %.sroa.0.0 = phi ptr [ %i.af, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit ], [ %i.ba, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit14 ], [ null, %bb.j ], [ %i.ce, %bb.t ], [ %i.ca, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_.exit.i ], [ %i.bg, %bb.l ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read13parse_str_raw(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i, %bb.a
  %.sroa.06.0.i = load i64, ptr %i.c, align 8, !alias.scope !457, !noundef !6 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.g = load i64, ptr %i.d, align 8, !alias.scope !460, !noundef !6 ; 12 uses
  %i.h = icmp eq i64 %.sroa.06.0.i, %i.g
  br i1 %i.h, label %._RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.thread.i_crit_edge, label %bb.c

._RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.thread.i_crit_edge: ; preds = %bb.b
  %.val.i.i.i.pre = load ptr, ptr %1, align 8, !alias.scope !461
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %.sroa.06.0.i, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !alias.scope !460, !nonnull !6, !noundef !6 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.06.0.i ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !noalias !462, !noundef !6
  switch i8 %i.l, label %bb.f [
    i8 34, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.i
    i8 92, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.i
  ]

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.06.0.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !noalias !462
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %.sroa.06.0.i, 1             ; 4 uses
  store i64 %i.m, ptr %i.c, align 8, !alias.scope !460
  %i.n = sub nuw i64 %i.g, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.q = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !463, !nonnull !6, !noundef !6
  %i.r = tail call { i64, ptr } %i.q(i8 noundef 34, i8 noundef 92, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.p), !noalias !464, !inline_history !427 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.g, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECs8ZPNfZ0ciAA_10serde_json.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = extractvalue { i64, ptr } %i.r, 1
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %.not.i.i.i = icmp ult i64 %i.x, %i.n
  tail call void @llvm.assume(i1 %.not.i.i.i)
  br label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECs8ZPNfZ0ciAA_10serde_json.exit.i.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECs8ZPNfZ0ciAA_10serde_json.exit.i.i: ; preds = %bb.g, %bb.f
  %spec.select.i.i = phi i64 [ %i.x, %bb.g ], [ %i.n, %bb.f ]
  %i.z = add i64 %spec.select.i.i, %i.m           ; 2 uses
  store i64 %i.z, ptr %i.c, align 8, !alias.scope !460
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.i

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.i: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECs8ZPNfZ0ciAA_10serde_json.exit.i.i, %bb.d, %bb.d
  %3 = phi i64 [ %i.z, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECs8ZPNfZ0ciAA_10serde_json.exit.i.i ], [ %.sroa.06.0.i, %bb.d ], [ %.sroa.06.0.i, %bb.d ] ; 19 uses
  %i.aa = icmp eq i64 %3, %i.g
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.i
  %i.ab = icmp ult i64 %3, %i.g
  br i1 %i.ab, label %bb.l, label %bb.m

bb.i:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.i, %._RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.thread.i_crit_edge
  %.val.i.i.i = phi ptr [ %.val.i.i.i.pre, %._RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.thread.i_crit_edge ], [ %i.j, %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.i ] ; 5 uses
  %.lcssa = phi i64 [ %.sroa.06.0.i, %._RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.thread.i_crit_edge ], [ %i.g, %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !465
  store i64 4, ptr %i.b, align 8, !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.lcssa
  %i.ad = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !469, !nonnull !6, !noundef !6
  %i.ae = invoke { i64, ptr } %i.ad(i8 noundef 10, ptr noundef nonnull readonly %.val.i.i.i, ptr noundef nonnull readonly %i.ac)
          to label %.noexc.i.i unwind label %bb.j, !noalias !470, !inline_history !13 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.i
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %.noexc.i.i
  %i.ah = extractvalue { i64, ptr } %i.ae, 1
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %.val.i.i.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %.not.i.i.i.i.i = icmp ult i64 %i.ak, %.lcssa
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.am = add nuw i64 %i.ak, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %.noexc.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.am, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %.val.i.i.i, i64 %.sroa.0.06.i.i.i.i
  %i.ao = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !471, !nonnull !6, !noundef !6
  %i.ap = invoke noundef i64 %i.ao(i8 noundef 10, ptr noundef nonnull %.val.i.i.i, ptr noundef %i.an)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit.i unwind label %bb.j, !noalias !470, !inline_history !13

common.resume.i:                                  ; preds = %bb.o, %bb.j
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.j ], [ %lpad.thr_comm.i34.i, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i, %bb.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #25
          to label %common.resume.i unwind label %bb.k, !noalias !472

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !470
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit.i: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i.i
  %i.ar = add i64 %i.ap, 1
  %i.as = sub i64 %.lcssa, %.sroa.0.06.i.i.i.i
  %i.at = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ar, i64 noundef %i.as), !noalias !472
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !473
  store i64 2, ptr %0, align 8, !alias.scope !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !465
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

bb.l:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  %i.aw = load i8, ptr %i.av, align 1, !noalias !474, !noundef !6
  switch i8 %i.aw, label %bb.n [
    i8 34, label %bb.q
    i8 92, label %bb.r
  ]

bb.m:                                             ; preds = %bb.h
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !474
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ax = add nuw i64 %3, 1                       ; 3 uses
  store i64 %i.ax, ptr %i.c, align 8, !alias.scope !457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !465
  store i64 16, ptr %i.a, align 8, !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ax
  %i.az = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !476, !nonnull !6, !noundef !6
  %i.ba = invoke { i64, ptr } %i.az(i8 noundef 10, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.ay)
          to label %.noexc.i35.i unwind label %bb.o, !noalias !477, !inline_history !13 ; 2 uses

.noexc.i35.i:                                     ; preds = %bb.n
  %i.bb = extractvalue { i64, ptr } %i.ba, 0
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i38.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i36.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i38.i: ; preds = %.noexc.i35.i
  %i.bd = extractvalue { i64, ptr } %i.ba, 1
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.j to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  tail call void @llvm.assume(i1 %i.bh)
  %.not.i.i.i.i39.i = icmp ule i64 %i.bg, %3
  tail call void @llvm.assume(i1 %.not.i.i.i.i39.i)
  %i.bi = add nuw i64 %i.bg, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i36.i

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i36.i: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i38.i, %.noexc.i35.i
  %.sroa.0.06.i.i.i37.i = phi i64 [ %i.bi, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i38.i ], [ 0, %.noexc.i35.i ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.j, i64 %.sroa.0.06.i.i.i37.i
  %i.bk = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !478, !nonnull !6, !noundef !6
  %i.bl = invoke noundef i64 %i.bk(i8 noundef 10, ptr noundef nonnull %i.j, ptr noundef %i.bj)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit41.i unwind label %bb.o, !noalias !477, !inline_history !13

bb.o:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i36.i, %bb.n
  %lpad.thr_comm.i34.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #25
          to label %common.resume.i unwind label %bb.p, !noalias !479

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !477
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit41.i: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i36.i
  %i.bn = add i64 %i.bl, 1
  %i.bo = sub i64 %i.ax, %.sroa.0.06.i.i.i37.i
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bn, i64 noundef %i.bo), !noalias !479
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !alias.scope !480
  store i64 2, ptr %0, align 8, !alias.scope !480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !465
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

bb.q:                                             ; preds = %bb.l
  %i.br = load i64, ptr %i.e, align 8, !alias.scope !458, !noundef !6 ; 6 uses
  %i.bs = icmp sgt i64 %i.br, -1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp eq i64 %i.br, 0
  %i.bu = icmp ult i64 %3, %.sroa.06.0.i          ; 2 uses
  br i1 %i.bt, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.bv = icmp ult i64 %3, %.sroa.06.0.i
  br i1 %i.bv, label %bb.ac, label %bb.aa, !prof !12

bb.s:                                             ; preds = %bb.q
  br i1 %i.bu, label %bb.w, label %bb.u, !prof !12

bb.t:                                             ; preds = %bb.q
  br i1 %i.bu, label %bb.y, label %bb.z, !prof !12

bb.u:                                             ; preds = %bb.s
  %gepdiff27.i = sub nuw nsw i64 %3, %.sroa.06.0.i ; 4 uses
  %i.bw = load i64, ptr %2, align 8, !range !15, !alias.scope !481, !noundef !6
  %i.bx = sub nsw i64 %i.bw, %i.br
  %i.by = icmp ugt i64 %gepdiff27.i, %i.bx
  br i1 %i.by, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i.i, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i, !prof !17

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i.i: ; preds = %bb.u
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.br, i64 noundef %gepdiff27.i, i64 noundef 1, i64 noundef 1), !noalias !474
  %i.bz = load i64, ptr %i.e, align 8, !alias.scope !482, !noundef !6 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  tail call void @llvm.assume(i1 %i.ca)
  br label %bb.v

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i: ; preds = %bb.u
  %.not.i.i = icmp eq i64 %3, %.sroa.06.0.i
  br i1 %.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i.i
  %i.cb = phi i64 [ %i.bz, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i.i ], [ %i.br, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i ]
  %i.cc = load ptr, ptr %i.f, align 8, !alias.scope !482, !nonnull !6, !noundef !6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr nonnull readonly align 1 %i.k, i64 %gepdiff27.i, i1 false), !noalias !474
  %.pre.i.i = load i64, ptr %i.e, align 8, !alias.scope !482
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.0.i, i64 noundef %3, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !noalias !474
  unreachable

bb.x:                                             ; preds = %bb.v, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i
  %i.ce = phi i64 [ %.pre.i.i, %bb.v ], [ %i.br, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i.i ]
  %i.cf = add i64 %i.ce, %gepdiff27.i             ; 2 uses
  store i64 %i.cf, ptr %i.e, align 8, !alias.scope !482
  %i.cg = add nuw i64 %3, 1
  store i64 %i.cg, ptr %i.c, align 8, !alias.scope !457
  %i.ch = load ptr, ptr %i.f, align 8, !alias.scope !458, !nonnull !6, !noundef !6
  store i64 1, ptr %0, align 8, !alias.scope !456
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !456
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cf, ptr %.sroa.523.0..sroa_idx.i, align 8, !alias.scope !456
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

bb.y:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.0.i, i64 noundef %3, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28, !noalias !474
  unreachable

bb.z:                                             ; preds = %bb.t
  %i.ci = sub nuw i64 %3, %.sroa.06.0.i
  %i.cj = add nuw i64 %3, 1
  store i64 %i.cj, ptr %i.c, align 8, !alias.scope !457
  store i64 0, ptr %0, align 8, !alias.scope !456
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !456
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ci, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !456
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

bb.aa:                                            ; preds = %bb.r
  %gepdiff.i = sub nuw nsw i64 %3, %.sroa.06.0.i  ; 4 uses
  %i.ck = load i64, ptr %i.e, align 8, !alias.scope !483, !noundef !6 ; 5 uses
  %i.cl = load i64, ptr %2, align 8, !range !15, !alias.scope !483, !noundef !6
  %i.cm = sub i64 %i.cl, %i.ck
  %i.cn = icmp ugt i64 %gepdiff.i, %i.cm
  br i1 %i.cn, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i45.i, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i, !prof !17

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i45.i: ; preds = %bb.aa
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ck, i64 noundef %gepdiff.i, i64 noundef 1, i64 noundef 1), !noalias !474
  %i.co = load i64, ptr %i.e, align 8, !alias.scope !484, !noundef !6 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, -1
  tail call void @llvm.assume(i1 %i.cp)
  br label %bb.ab

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i: ; preds = %bb.aa
  %i.cq = icmp sgt i64 %i.ck, -1
  tail call void @llvm.assume(i1 %i.cq)
  %.not.i43.i = icmp eq i64 %3, %.sroa.06.0.i
  br i1 %.not.i43.i, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i45.i
  %i.cr = phi i64 [ %i.co, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.thread.i45.i ], [ %i.ck, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i ]
  %i.cs = load ptr, ptr %i.f, align 8, !alias.scope !484, !nonnull !6, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull readonly align 1 %i.k, i64 %gepdiff.i, i1 false), !noalias !474
  %.pre.i44.i = load i64, ptr %i.e, align 8, !alias.scope !484
  br label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i: ; preds = %bb.ab, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i
  %i.cu = phi i64 [ %.pre.i44.i, %bb.ab ], [ %i.ck, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json.exit.i42.i ]
  %i.cv = add i64 %i.cu, %gepdiff.i
  store i64 %i.cv, ptr %i.e, align 8, !alias.scope !484
  %i.cw = add nuw i64 %3, 1
  store i64 %i.cw, ptr %i.c, align 8, !alias.scope !457
  %i.cx = tail call fastcc noundef align 8 ptr @_RINvNtCs8ZPNfZ0ciAA_10serde_json4read12parse_escapeNtB2_9SliceReadEB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !noalias !456 ; 2 uses
  %.not25.i = icmp eq ptr %i.cx, null
  br i1 %.not25.i, label %bb.b, label %bb.ad

bb.ac:                                            ; preds = %bb.r
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.0.i, i64 noundef %3, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !noalias !474
  unreachable

bb.ad:                                            ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json.exit46.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !alias.scope !456
  store i64 2, ptr %0, align 8, !alias.scope !456
  br label %_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit

_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_.exit: ; preds = %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit.i, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_.exit41.i, %bb.x, %bb.z, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = add i64 %i.d, 1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.e) ; 3 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !491, !nonnull !6, !noundef !6
  %i.i = tail call { i64, ptr } %i.h(i8 noundef 10, ptr noundef nonnull readonly %.val, ptr noundef nonnull readonly %i.g), !noalias !491, !inline_history !0 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.a
  %i.l = extractvalue { i64, ptr } %i.i, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %.val to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %.not.i.i = icmp ult i64 %i.o, %i.f
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = add nuw i64 %i.o, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i, %bb.a
  %.sroa.0.06.i = phi i64 [ %i.q, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.r = getelementptr i8, ptr %.val, i64 %.sroa.0.06.i
  %i.s = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !492, !nonnull !6, !noundef !6
  %i.t = tail call noundef i64 %i.s(i8 noundef 10, ptr noundef nonnull %.val, ptr noundef %i.r), !noalias !492, !inline_history !1
  %i.u = add i64 %i.t, 1
  %i.v = sub i64 %i.f, %.sroa.0.06.i
  %i.w = insertvalue { i64, i64 } poison, i64 %i.u, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %i.v, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read17decode_hex_escape(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 5 uses
  %i.g = icmp ugt i64 %i.f, %i.d
  br i1 %i.g, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.d, %i.f
  %i.i = icmp ugt i64 %i.h, 3
  br i1 %i.i, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 4, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !520, !nonnull !6, !noundef !6 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.d
  %i.k = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr11memrchr_raw2FN monotonic, align 8, !noalias !521, !nonnull !6, !noundef !6
  %i.l = invoke { i64, ptr } %i.k(i8 noundef 10, ptr noundef nonnull readonly %.val.i.i, ptr noundef nonnull readonly %i.j)
          to label %.noexc.i unwind label %bb.e, !noalias !522, !inline_history !13 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i

_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i: ; preds = %.noexc.i
  %i.o = extractvalue { i64, ptr } %i.l, 1
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.val.i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %.not.i.i.i.i = icmp ult i64 %i.r, %i.d
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = add nuw i64 %i.r, 1
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i: ; preds = %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, %.noexc.i
  %.sroa.0.06.i.i.i = phi i64 [ %i.t, %_RINvNtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memrchr0ECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ 0, %.noexc.i ] ; 2 uses
  %i.u = getelementptr i8, ptr %.val.i.i, i64 %.sroa.0.06.i.i.i
  %i.v = load atomic ptr, ptr @_RNvNvNtNtNtCs1F4dABBouLx_6memchr4arch6x86_646memchr9count_raw2FN monotonic, align 8, !noalias !523, !nonnull !6, !noundef !6
  %i.w = invoke noundef i64 %i.v(i8 noundef 10, ptr noundef nonnull %.val.i.i, ptr noundef %i.u)
          to label %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit unwind label %bb.e, !noalias !522, !inline_history !13

common.resume:                                    ; preds = %bb.m, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.e ], [ %lpad.thr_comm.i7, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #25
          to label %common.resume unwind label %bb.f, !noalias !524

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #22, !noalias !522
  unreachable

_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit: ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead17position_of_index.exit.i.i
  %i.y = add i64 %i.w, 1
  %i.z = sub i64 %i.d, %.sroa.0.06.i.i.i
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.y, i64 noundef %i.z), !noalias !524
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !517
  store i16 1, ptr %0, align 8, !alias.scope !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.f ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !noundef !6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !6
  %i.al = add i64 %i.f, 4                         ; 6 uses
  store i64 %i.al, ptr %i.e, align 8
  %i.am = zext i8 %i.ae to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json4read4HEX1, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !noundef !6
  %i.ap = zext i8 %i.ag to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json4read4HEX0, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !noundef !6
  %i.as = zext i8 %i.ak to i64
  %i.at = zext i8 %i.ai to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json4read4HEX1, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !noundef !6
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json4read4HEX0, i64 %i.as
  %i.ay = load i16, ptr %i.ax, align 2, !noundef !6
  %i.az = sext i16 %i.ay to i32
  %i.ba = or i16 %i.ar, %i.ao
  %i.bb = sext i16 %i.ba to i32
  %i.bc = shl nsw i32 %i.bb, 8
  %i.bd = or i32 %i.bc, %i.aw
  %i.be = or i32 %i.bd, %i.az                     ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.i, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit14, %_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_.exit
  ret void

bb.i:                                             ; preds = %bb.g
  %i.bg = trunc i32 %i.be to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.bg, ptr %i.bh, align 2
  store i16 0, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 12, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!221 = !{!182, !180}
!222 = !{!185, !182, !180, !183}
!223 = !{!180, !183}
!224 = !{!189, !187, !182, !180, !183}
!225 = !{!191}
!226 = !{!193}
!227 = !{!197, !195}
!228 = !{!201, !199}
!229 = !{!199}
!230 = !{!195}
!231 = !{!203}
!232 = !{!205}
!233 = !{!205, !203}
!234 = !{!208, !205, !203, !206}
!235 = !{!203, !206}
!236 = !{!212, !210, !205, !203, !206}
!237 = !{!216, !214}
!238 = !{!214}
!239 = !{!218, !214}
!240 = distinct !{!240, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!241 = distinct !{!241, !240, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!242 = distinct !{!242, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!243 = distinct !{!243, !242, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!244 = distinct !{!244, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!245 = distinct !{!245, !244, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!246 = distinct !{!246, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!247 = distinct !{!247, !246, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!248 = !{!241}
!249 = !{!243, !241}
!250 = !{!247, !245, !241}
!251 = distinct !{!251, i1 true, !"_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorEB8_"}
!252 = distinct !{!252, !251, !"_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorEB8_: argument 0"}
!253 = distinct !{!253, !251, !"_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorEB8_: argument 1"}
!254 = distinct !{!254, i1 true, !"_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNtB1b_5impls13StringVisitorEB8_"}
!255 = distinct !{!255, !254, !"_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNtB1b_5impls13StringVisitorEB8_: argument 0"}
!256 = distinct !{!256, !254, !"_RINvXsh_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNtB1b_5impls13StringVisitorEB8_: argument 1"}
!257 = distinct !{!257, i1 true, !"_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!258 = distinct !{!258, !257, !"_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!259 = distinct !{!259, i1 true, !"_RINvXs4_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1u_"}
!260 = distinct !{!260, !259, !"_RINvXs4_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1u_: argument 1"}
!261 = distinct !{!261, !259, !"_RINvXs4_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1u_: argument 0"}
!262 = distinct !{!262, i1 true, !"_RINvYNtNtNtCsdnjrqM8ey3e_10serde_core2de5impls13StringVisitorNtB7_7Visitor18visit_borrowed_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1y_"}
!263 = distinct !{!263, !262, !"_RINvYNtNtNtCsdnjrqM8ey3e_10serde_core2de5impls13StringVisitorNtB7_7Visitor18visit_borrowed_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1y_: argument 1"}
!264 = distinct !{!264, !262, !"_RINvYNtNtNtCsdnjrqM8ey3e_10serde_core2de5impls13StringVisitorNtB7_7Visitor18visit_borrowed_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1y_: argument 0"}
!265 = distinct !{!265, i1 true, !"_RINvXs4_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1u_"}
!266 = distinct !{!266, !265, !"_RINvXs4_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1u_: argument 1"}
!267 = distinct !{!267, !265, !"_RINvXs4_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEB1u_: argument 0"}
!268 = !{!252}
!269 = !{!253}
!270 = !{!255}
!271 = !{!256}
!272 = !{!258, !256, !253}
!273 = !{!256, !253}
!274 = !{!255, !256, !252, !253}
!275 = !{!255, !252}
!276 = !{i64 0, i64 3}
!277 = !{!261, !260, !255, !256, !252, !253}
!278 = !{!261, !260, !255, !252}
!279 = !{!267, !266, !264, !263, !255, !256, !252, !253}
!280 = !{!267, !266, !264, !263, !255, !252}
!281 = distinct !{!281, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memchr20Cs8ZPNfZ0ciAA_10serde_json"}
!282 = distinct !{!282, !281, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memchr20Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!283 = distinct !{null}
!284 = !{!282}
!285 = !{!"branch_weights", i32 1, i32 127}
!286 = !{!"branch_weights", i32 127, i32 255873}
!287 = distinct !{null}
!288 = distinct !{!288, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_"}
!289 = distinct !{!289, !288, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_: argument 0"}
!290 = distinct !{!290, i1 true, !"_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_"}
!291 = distinct !{!291, !290, !"_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_: argument 0"}
!292 = distinct !{ptr @_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_, null, ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_, null}
!293 = distinct !{ptr @_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_, null, ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_}
!294 = distinct !{ptr @_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB2r_, null, ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_, ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_}
!295 = !{!289}
!296 = !{!291}
!297 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!298 = distinct !{!298, i1 true, !"_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_"}
!299 = distinct !{!299, !298, !"_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_: argument 0"}
!300 = distinct !{!300, !298, !"_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_: argument 1"}
!301 = distinct !{!301, !298, !"_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE5entryB1w_: argument 2"}
!302 = distinct !{!302, i1 true, !"_RNvMs5_NtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1K_"}
!303 = distinct !{!303, !302, !"_RNvMs5_NtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1K_: argument 2"}
!304 = distinct !{!304, !302, !"_RNvMs5_NtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1K_: argument 0"}
!305 = !{!299}
!306 = !{!300}
!307 = !{!301}
!308 = !{!299, !300, !301}
!309 = !{!299, !300}
!310 = !{!299, !301}
!311 = !{!300, !301}
!312 = !{!304, !303}
!313 = !{!304}
!314 = distinct !{!314, i1 true, !"_RINvMsb_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalEB29_"}
!315 = distinct !{!315, !314, !"_RINvMsb_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalEB29_: argument 0"}
!316 = distinct !{!316, i1 true, !"_RNvMsb_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10take_frontB28_"}
!317 = distinct !{!317, !316, !"_RNvMsb_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10take_frontB28_: argument 1"}
!318 = distinct !{!318, !316, !"_RNvMsb_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10take_frontB28_: argument 0"}
!319 = distinct !{!319, !20}
!320 = distinct !{!320, i1 true, !"_RINvMsb_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB29_"}
!321 = distinct !{!321, !320, !"_RINvMsb_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB29_: argument 1"}
!322 = distinct !{!322, i1 true, !"_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10init_frontB28_"}
!323 = distinct !{!323, !322, !"_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE10init_frontB28_: argument 0"}
!324 = distinct !{!324, !320, !"_RINvMsb_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB29_: argument 0"}
!325 = distinct !{!325, !20}
!326 = distinct !{!326, i1 true, !"_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B2c_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB2g_"}
!327 = distinct !{!327, !326, !"_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B2c_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB2g_: argument 1"}
!328 = distinct !{!328, !326, !"_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B2c_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB2g_: argument 0"}
!329 = distinct !{!329, i1 true, !"_RNCINvMsm_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtBe_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B2j_"}
!330 = distinct !{!330, !329, !"_RNCINvMsm_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtBe_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B2j_: argument 1"}
!331 = distinct !{!331, !329, !"_RNCINvMsm_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtBe_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B2j_: argument 0"}
!332 = !{!315}
!333 = !{!317}
!334 = !{!317, !315}
!335 = !{!318, !317, !315}
!336 = !{!321}
!337 = !{!323}
!338 = !{!323, !321}
!339 = !{!323, !324, !321}
!340 = !{!331, !330, !328, !327, !324, !321}
!341 = !{!328, !324}
!342 = !{!328, !327, !324, !321}
!343 = !{!324, !321}
!344 = distinct !{!344, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json"}
!345 = distinct !{!345, !344, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!346 = distinct !{!346, i1 true, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE8push_mutCs8ZPNfZ0ciAA_10serde_json"}
!347 = distinct !{!347, !346, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechE8push_mutCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!348 = !{!345}
!349 = !{!347}
!350 = distinct !{!350, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_"}
!351 = distinct !{!351, !350, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_: argument 0"}
!352 = distinct !{ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_, null}
!353 = !{!351}
!354 = !{ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_}
!355 = !{ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_, ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_}
!356 = distinct !{!356, i1 true, !"_RINvMs7_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtNtNtB17_11collections5btree3map4IterB13_B1G_EEB1K_"}
!357 = distinct !{!357, !356, !"_RINvMs7_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtNtNtB17_11collections5btree3map4IterB13_B1G_EEB1K_: argument 1"}
!358 = distinct !{!358, !356, !"_RINvMs7_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtNtNtB17_11collections5btree3map4IterB13_B1G_EEB1K_: argument 0"}
!359 = !{!358, !357}
!360 = !{!358}
!361 = !{!357}
!362 = distinct !{!362, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_"}
!363 = distinct !{!363, !362, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_: argument 0"}
!364 = distinct !{!364, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!365 = distinct !{!365, !364, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!366 = distinct !{!366, !362, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_: argument 1"}
!367 = distinct !{!367, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!368 = distinct !{!368, !367, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!369 = distinct !{!369, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!370 = distinct !{!370, !369, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!371 = distinct !{!371, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!372 = distinct !{!372, !371, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!373 = distinct !{!373, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_"}
!374 = distinct !{!374, !373, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_: argument 1"}
!375 = distinct !{!375, !373, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_: argument 0"}
!376 = distinct !{!376, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!377 = distinct !{!377, !376, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!378 = distinct !{!378, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!379 = distinct !{!379, !378, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!380 = distinct !{!380, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!381 = distinct !{!381, !380, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!382 = distinct !{!382, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!383 = distinct !{!383, !382, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!384 = distinct !{!384, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_"}
!385 = distinct !{!385, !384, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read13ignore_escapeNtB2_9SliceReadEB4_: argument 0"}
!386 = distinct !{!386, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_"}
!387 = distinct !{!387, !386, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_: argument 0"}
!388 = distinct !{!388, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!389 = distinct !{!389, !388, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!390 = distinct !{!390, !386, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReaduEB4_: argument 1"}
!391 = distinct !{!391, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!392 = distinct !{!392, !391, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!393 = distinct !{!393, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!394 = distinct !{!394, !393, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!395 = distinct !{!395, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!396 = distinct !{!396, !395, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!397 = !{!363}
!398 = !{!365}
!399 = !{!365, !363}
!400 = !{!368, !365, !363, !366}
!401 = !{!363, !366}
!402 = !{!372, !370, !365, !363, !366}
!403 = !{!379, !377, !375, !374}
!404 = !{!375, !374}
!405 = !{!383, !381, !377, !375, !374}
!406 = !{!375}
!407 = !{!385}
!408 = !{!387}
!409 = !{!389}
!410 = !{!389, !387, !385}
!411 = !{!392, !389, !387, !390, !385}
!412 = !{!387, !390, !385}
!413 = !{!396, !394, !389, !387, !390, !385}
!414 = !{!387, !385}
!415 = distinct !{!415, i1 true, !"_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_"}
!416 = distinct !{!416, !415, !"_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_: argument 0"}
!417 = distinct !{!417, !415, !"_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_: argument 1"}
!418 = distinct !{!418, !415, !"_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_bytesShNCNvXs5_B6_BD_NtB6_4Read13parse_str_raw0EB8_: argument 2"}
!419 = distinct !{!419, i1 true, !"_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape"}
!420 = distinct !{!420, !419, !"_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape: argument 0"}
!421 = distinct !{!421, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_"}
!422 = distinct !{!422, !421, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_: argument 1"}
!423 = distinct !{!423, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!424 = distinct !{!424, !423, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!425 = distinct !{!425, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memchr20Cs8ZPNfZ0ciAA_10serde_json"}
!426 = distinct !{!426, !425, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memchr20Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!427 = distinct !{null, ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceRead14skip_to_escape, null}
!428 = distinct !{!428, !421, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_: argument 0"}
!429 = distinct !{!429, !421, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_: argument 2"}
!430 = distinct !{!430, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!431 = distinct !{!431, !430, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!432 = distinct !{!432, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!433 = distinct !{!433, !432, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!434 = distinct !{!434, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!435 = distinct !{!435, !434, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!436 = distinct !{!436, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_"}
!437 = distinct !{!437, !436, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_: argument 0"}
!438 = distinct !{!438, !436, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_: argument 2"}
!439 = distinct !{!439, !436, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceShEEB4_: argument 1"}
!440 = distinct !{!440, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!441 = distinct !{!441, !440, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!442 = distinct !{!442, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!443 = distinct !{!443, !442, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!444 = distinct !{!444, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!445 = distinct !{!445, !444, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!446 = distinct !{!446, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!447 = distinct !{!447, !446, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!448 = distinct !{!448, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json"}
!449 = distinct !{!449, !448, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!450 = distinct !{!450, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json"}
!451 = distinct !{!451, !450, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!452 = distinct !{!452, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json"}
!453 = distinct !{!453, !452, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!454 = distinct !{!454, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json"}
!455 = distinct !{!455, !454, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!456 = !{!416}
!457 = !{!417}
!458 = !{!418}
!459 = !{!420}
!460 = !{!420, !417}
!461 = !{!424, !422, !417}
!462 = !{!420, !416, !417}
!463 = !{!426, !420, !416, !417, !418}
!464 = !{!426, !420, !416, !417}
!465 = !{!416, !417, !418}
!466 = !{!428}
!467 = !{!422}
!468 = !{!424}
!469 = !{!431, !424, !428, !422, !429, !416, !417, !418}
!470 = !{!428, !422, !429, !416, !417}
!471 = !{!435, !433, !424, !428, !422, !429, !416, !417, !418}
!472 = !{!428, !422, !416, !417}
!473 = !{!428, !416}
!474 = !{!416, !417}
!475 = !{!437}
!476 = !{!443, !441, !437, !439, !438, !416, !417, !418}
!477 = !{!437, !439, !438, !416, !417}
!478 = !{!447, !445, !441, !437, !439, !438, !416, !417, !418}
!479 = !{!437, !439, !416, !417}
!480 = !{!437, !416}
!481 = !{!451, !449, !418}
!482 = !{!449, !418}
!483 = !{!455, !453, !418}
!484 = !{!453, !418}
!485 = distinct !{!485, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!486 = distinct !{!486, !485, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!487 = distinct !{!487, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!488 = distinct !{!488, !487, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!489 = distinct !{!489, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!490 = distinct !{!490, !489, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!491 = !{!486}
!492 = !{!490, !488}
!493 = distinct !{!493, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_"}
!494 = distinct !{!494, !493, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_: argument 0"}
!495 = distinct !{!495, !493, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_: argument 1"}
!496 = distinct !{!496, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!497 = distinct !{!497, !496, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!498 = distinct !{!498, !493, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_: argument 2"}
!499 = distinct !{!499, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!500 = distinct !{!500, !499, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!501 = distinct !{!501, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!502 = distinct !{!502, !501, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!503 = distinct !{!503, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!504 = distinct !{!504, !503, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!505 = distinct !{!505, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_"}
!506 = distinct !{!506, !505, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_: argument 0"}
!507 = distinct !{!507, !505, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_: argument 2"}
!508 = distinct !{!508, !505, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadtEB4_: argument 1"}
!509 = distinct !{!509, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!510 = distinct !{!510, !509, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!511 = distinct !{!511, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!512 = distinct !{!512, !511, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!513 = distinct !{!513, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!514 = distinct !{!514, !513, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!515 = distinct !{!515, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!516 = distinct !{!516, !515, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!517 = !{!494}
!518 = !{!495}
!519 = !{!497}
!520 = !{!497, !495}
!521 = !{!500, !497, !494, !495, !498}
!522 = !{!494, !495, !498}
!523 = !{!504, !502, !497, !494, !495, !498}
!524 = !{!494, !495}
!525 = !{!506}
!526 = !{!512, !510, !506, !508, !507}
!527 = !{!506, !508, !507}
!528 = !{!516, !514, !510, !506, !508, !507}
!529 = !{!506, !508}
!530 = distinct !{!530, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!531 = distinct !{!531, !530, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!532 = distinct !{!532, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!533 = distinct !{!533, !532, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!534 = distinct !{!534, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!535 = distinct !{!535, !534, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!536 = !{!531}
!537 = !{!535, !533}
!538 = distinct !{!538, i1 true, !"_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_byteseINvB6_6as_strBD_EEB8_"}
!539 = distinct !{!539, !538, !"_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_byteseINvB6_6as_strBD_EEB8_: argument 0"}
!540 = distinct !{!540, !538, !"_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_byteseINvB6_6as_strBD_EEB8_: argument 1"}
!541 = distinct !{!541, !538, !"_RINvMs3_NtCs8ZPNfZ0ciAA_10serde_json4readNtB6_9SliceRead15parse_str_byteseINvB6_6as_strBD_EEB8_: argument 2"}
!542 = distinct !{!542, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_"}
!543 = distinct !{!543, !542, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_: argument 0"}
!544 = distinct !{!544, !542, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_: argument 1"}
!545 = distinct !{!545, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!546 = distinct !{!546, !545, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!547 = distinct !{!547, !542, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_: argument 2"}
!548 = distinct !{!548, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!549 = distinct !{!549, !548, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!550 = distinct !{!550, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!551 = distinct !{!551, !550, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!552 = distinct !{!552, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!553 = distinct !{!553, !552, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!554 = distinct !{!554, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_"}
!555 = distinct !{!555, !554, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_: argument 0"}
!556 = distinct !{!556, !554, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_: argument 2"}
!557 = distinct !{!557, !554, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadINtB2_9ReferenceeEEB4_: argument 1"}
!558 = distinct !{!558, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!559 = distinct !{!559, !558, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!560 = distinct !{!560, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!561 = distinct !{!561, !560, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!562 = distinct !{!562, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!563 = distinct !{!563, !562, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!564 = distinct !{!564, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!565 = distinct !{!565, !564, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!566 = distinct !{!566, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json"}
!567 = distinct !{!567, !566, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!568 = distinct !{!568, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json"}
!569 = distinct !{!569, !568, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!570 = distinct !{!570, i1 true, !"_RNvYINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_"}
!571 = distinct !{!571, !570, !"_RNvYINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_: argument 2"}
!572 = distinct !{!572, !570, !"_RNvYINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_: argument 1"}
!573 = distinct !{!573, !570, !"_RNvYINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_: argument 0"}
!574 = distinct !{!574, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB2_9SliceReadEB4_"}
!575 = distinct !{!575, !574, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB2_9SliceReadEB4_: argument 2"}
!576 = distinct !{!576, !574, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB2_9SliceReadEB4_: argument 1"}
!577 = distinct !{!577, !574, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB2_9SliceReadEB4_: argument 0"}
!578 = distinct !{!578, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadReEB4_"}
!579 = distinct !{!579, !578, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadReEB4_: argument 2"}
!580 = distinct !{!580, !578, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadReEB4_: argument 1"}
!581 = distinct !{!581, !578, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadReEB4_: argument 0"}
!582 = distinct !{!582, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!583 = distinct !{!583, !582, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!584 = distinct !{!584, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!585 = distinct !{!585, !584, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!586 = distinct !{!586, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!587 = distinct !{!587, !586, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!588 = distinct !{!588, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!589 = distinct !{!589, !588, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!590 = distinct !{!590, i1 true, !"_RNvYINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_"}
!591 = distinct !{!591, !590, !"_RNvYINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_: argument 2"}
!592 = distinct !{!592, !590, !"_RNvYINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_: argument 1"}
!593 = distinct !{!593, !590, !"_RNvYINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB5_9SliceReadEINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTRBJ_RShEE9call_onceB7_: argument 0"}
!594 = distinct !{!594, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB2_9SliceReadEB4_"}
!595 = distinct !{!595, !594, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB2_9SliceReadEB4_: argument 2"}
!596 = distinct !{!596, !594, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB2_9SliceReadEB4_: argument 1"}
!597 = distinct !{!597, !594, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read6as_strNtB2_9SliceReadEB4_: argument 0"}
!598 = distinct !{!598, i1 true, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadReEB4_"}
!599 = distinct !{!599, !598, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadReEB4_: argument 2"}
!600 = distinct !{!600, !598, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadReEB4_: argument 1"}
!601 = distinct !{!601, !598, !"_RINvNtCs8ZPNfZ0ciAA_10serde_json4read5errorNtB2_9SliceReadReEB4_: argument 0"}
!602 = distinct !{!602, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!603 = distinct !{!603, !602, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!604 = distinct !{!604, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!605 = distinct !{!605, !604, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!606 = distinct !{!606, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!607 = distinct !{!607, !606, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!608 = distinct !{!608, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!609 = distinct !{!609, !608, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!610 = distinct !{!610, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json"}
!611 = distinct !{!611, !610, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!612 = distinct !{!612, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json"}
!613 = distinct !{!613, !612, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json: argument 0"}
!614 = !{!539}
!615 = !{!540}
!616 = !{!541}
!617 = !{!539, !540, !541}
!618 = !{!543}
!619 = !{!544}
!620 = !{!546}
!621 = !{!546, !544, !540}
!622 = !{!549, !546, !543, !544, !547, !539, !540, !541}
!623 = !{!543, !544, !547, !539, !540}
!624 = !{!553, !551, !546, !543, !544, !547, !539, !540, !541}
!625 = !{!543, !544, !539, !540}
!626 = !{!543, !539}
!627 = !{!539, !540}
!628 = !{!555}
!629 = !{!561, !559, !555, !557, !556, !539, !540, !541}
!630 = !{!555, !557, !556, !539, !540}
!631 = !{!565, !563, !559, !555, !557, !556, !539, !540, !541}
!632 = !{!555, !557, !539, !540}
!633 = !{!555, !539}
!634 = !{!569, !567, !541}
!635 = !{!567, !541}
!636 = !{!577, !576, !575, !573, !572, !571, !539, !540, !541}
!637 = !{!577, !576, !573, !572, !539, !540}
!638 = !{!585, !583, !581, !580, !579, !577, !576, !575, !573, !572, !571, !539, !540, !541}
!639 = !{!581, !580, !579, !577, !576, !573, !572, !539, !540}
!640 = !{!589, !587, !583, !581, !580, !579, !577, !576, !575, !573, !572, !571, !539, !540, !541}
!641 = !{!581, !580, !577, !576, !573, !572, !539, !540}
!642 = !{!597, !596, !595, !593, !592, !591, !539, !540, !541}
!643 = !{!597, !596, !593, !592, !539, !540}
!644 = !{!605, !603, !601, !600, !599, !597, !596, !595, !593, !592, !591, !539, !540, !541}
!645 = !{!601, !600, !599, !597, !596, !593, !592, !539, !540}
!646 = !{!609, !607, !603, !601, !600, !599, !597, !596, !595, !593, !592, !591, !539, !540, !541}
!647 = !{!601, !600, !597, !596, !593, !592, !539, !540}
!648 = !{!613, !611, !541}
!649 = !{!611, !541}
!650 = distinct !{!650, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position"}
!651 = distinct !{!651, !650, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position: argument 0"}
!652 = distinct !{!652, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!653 = distinct !{!653, !652, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!654 = distinct !{ptr @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position, null, null}
!655 = distinct !{!655, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!656 = distinct !{!656, !655, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!657 = distinct !{!657, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!658 = distinct !{!658, !657, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!659 = distinct !{ptr @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position, null, null}
!660 = !{!651}
!661 = !{!653, !651}
!662 = !{!658, !656, !651}
!663 = distinct !{!663, i1 true, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position"}
!664 = distinct !{!664, !663, !"_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position: argument 0"}
!665 = distinct !{!665, i1 true, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json"}
!666 = distinct !{!666, !665, !"_RNCNvNtCs1F4dABBouLx_6memchr6memchr7memrchr0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!667 = distinct !{ptr @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position, null, null}
!668 = distinct !{!668, i1 true, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json"}
!669 = distinct !{!669, !668, !"_RINvMs3_NtNtNtCs1F4dABBouLx_6memchr4arch7generic6memchrNtB6_4Iter5countNCNvXs_NtBc_6memchrNtB1e_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!670 = distinct !{!670, i1 true, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json"}
!671 = distinct !{!671, !670, !"_RNCNvXs_NtCs1F4dABBouLx_6memchr6memchrNtB6_6MemchrNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator5count0Cs8ZPNfZ0ciAA_10serde_json: argument 0"}
!672 = distinct !{ptr @_RNvXs5_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_9SliceReadNtB5_4Read8position, null, null}
!673 = !{!664}
end_hunk_1
