Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.00?download=true
inline.NumInlined: 1717
inline.NumDeleted: 280
begin_hunk_0_@_RNvMNtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB2_9Tokenizer10next_token:bb.a

bb.dv:                                            ; preds = %bb.dt
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ez, i64 noundef %i.fa, i64 noundef %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13
  unreachable

bb.dw:                                            ; preds = %.thread
  %.sroa.430.sroa.0.0.copyload = load ptr, ptr %.sroa.430.0..sroa_idx, align 8 ; 2 uses
  %.sroa.430.sroa.4.0.copyload = load i64, ptr %.sroa.430.sroa.4.0..sroa.430.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fc = icmp eq i64 %i.ad, -1
  br i1 %i.fc, label %bb.dy, label %bb.dz

bb.dx:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 -1, ptr %0, align 4
  br label %bb.dq

bb.dy:                                            ; preds = %bb.dw
  %i.fd = load i64, ptr %1, align 8, !range !4, !noundef !5
  %i.fe = icmp eq i64 %i.fd, 2
  br i1 %i.fe, label %bb.ef, label %bb.eg, !prof !6

bb.dz:                                            ; preds = %bb.dw
  %i.ff = load i64, ptr %i.o, align 8, !noundef !5
  %i.fg = load i64, ptr %i.n, align 8, !noundef !5
  %i.fh = trunc i64 %i.ff to i32
  %i.fi = trunc i64 %i.fg to i32
  %i.fj = load i64, ptr %i.p, align 8, !noundef !5
  %i.fk = tail call { i32, i32 } @_RNvMs1_CsfF8zpZz1lvn_13yara_x_parserNtB5_4Span6offset(i32 noundef %i.fh, i32 noundef %i.fi, i64 noundef %i.fj) ; 2 uses
  %i.fl = extractvalue { i32, i32 } %i.fk, 0
  %i.fm = extractvalue { i32, i32 } %i.fk, 1
  switch i64 %i.ad, label %default.unreachable124 [
    i64 0, label %_RNvNtCsfF8zpZz1lvn_13yara_x_parser9tokenizer22convert_hex_jump_token.exit
    i64 1, label %bb.ea
    i64 2, label %bb.eb
    i64 3, label %bb.ec
    i64 4, label %bb.ec
    i64 5, label %bb.ec
  ]

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.430.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.430.sroa.0.0.copyload, i64 noundef %.sroa.430.sroa.4.0.copyload), !noalias !59
  %i.fn = load i64, ptr %i.a, align 8, !range !58, !noalias !59, !noundef !5
  %i.fo = trunc nuw i64 %i.fn to i1
  br i1 %i.fo, label %bb.ed, label %bb.ee, !prof !7

bb.eb:                                            ; preds = %bb.dz
  br label %_RNvNtCsfF8zpZz1lvn_13yara_x_parser9tokenizer22convert_hex_jump_token.exit

bb.ec:                                            ; preds = %bb.dz, %bb.dz, %bb.dz
  br label %_RNvNtCsfF8zpZz1lvn_13yara_x_parser9tokenizer22convert_hex_jump_token.exit

bb.ed:                                            ; preds = %bb.ea
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #13, !noalias !59
  unreachable

bb.ee:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59
  br label %_RNvNtCsfF8zpZz1lvn_13yara_x_parser9tokenizer22convert_hex_jump_token.exit

_RNvNtCsfF8zpZz1lvn_13yara_x_parser9tokenizer22convert_hex_jump_token.exit: ; preds = %bb.dz, %bb.eb, %bb.ec, %bb.ee
  %.sroa.059.0 = phi i8 [ 78, %bb.ec ], [ 49, %bb.ee ], [ 79, %bb.eb ], [ 65, %bb.dz ]
  store i8 %.sroa.059.0, ptr %0, align 4
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.fl, ptr %.sroa.760.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fm, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.dq

bb.ef:                                            ; preds = %bb.dy
  %i.fp = load i64, ptr %i.o, align 8, !noundef !5
  %i.fq = load i64, ptr %i.p, align 8, !noundef !5
  %i.fr = add i64 %i.fq, %i.fp                    ; 5 uses
  store i64 %i.fr, ptr %i.p, align 8
  %i.fs = load i64, ptr %i.q, align 8, !noundef !5 ; 4 uses
  %i.ft = icmp ugt i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.eh, label %bb.c, !prof !7

bb.eg:                                            ; preds = %bb.dy
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #13
  unreachable

bb.eh:                                            ; preds = %bb.ef
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fr, i64 noundef %i.fs, i64 noundef %i.fs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB2_9Tokenizer19enter_hex_jump_mode(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = add i64 %i.d, %.sroa.03.0                ; 5 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = sub nuw i64 %i.g, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  store i64 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB2_9Tokenizer22enter_hex_pattern_mode(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = add i64 %i.d, %.sroa.03.0                ; 5 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.e, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.a, %bb.d
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = sub nuw i64 %i.g, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB2_9Tokenizer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i64 %2, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.c, align 8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i8 noundef range(i8 -1, 83) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i8 %3, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
    i8 20, label %bb.x
    i8 21, label %bb.y
    i8 22, label %bb.z
    i8 23, label %bb.aa
    i8 24, label %bb.ab
    i8 25, label %bb.ac
    i8 26, label %bb.ad
    i8 27, label %bb.ae
    i8 28, label %bb.af
    i8 29, label %bb.ag
    i8 30, label %bb.ah
    i8 31, label %bb.ai
    i8 32, label %bb.aj
    i8 33, label %bb.ak
    i8 34, label %bb.al
    i8 35, label %bb.am
    i8 36, label %bb.an
    i8 37, label %bb.ao
    i8 38, label %bb.ap
    i8 39, label %bb.aq
    i8 40, label %bb.ar
    i8 41, label %bb.as
    i8 42, label %bb.at
    i8 43, label %bb.au
    i8 44, label %bb.av
    i8 45, label %bb.aw
    i8 46, label %bb.ax
    i8 47, label %bb.ay
    i8 48, label %bb.az
    i8 49, label %bb.ba
    i8 50, label %bb.bb
    i8 51, label %bb.bc
    i8 52, label %bb.bd
    i8 53, label %bb.be
    i8 54, label %bb.bf
    i8 55, label %bb.bg
    i8 56, label %bb.bh
    i8 57, label %bb.bi
    i8 58, label %bb.bj
    i8 59, label %bb.bk
    i8 60, label %bb.bl
    i8 61, label %bb.bm
    i8 62, label %bb.bn
    i8 63, label %bb.bo
    i8 64, label %bb.bp
    i8 65, label %bb.bq
    i8 66, label %bb.br
    i8 67, label %bb.bs
    i8 68, label %bb.bt
    i8 69, label %bb.bu
    i8 70, label %bb.bv
    i8 71, label %bb.bw
    i8 72, label %bb.bx
    i8 73, label %bb.by
    i8 74, label %bb.bz
    i8 75, label %bb.ca
    i8 76, label %bb.cb
    i8 77, label %bb.cc
    i8 78, label %bb.cd
    i8 79, label %bb.ce
    i8 80, label %bb.cf
    i8 81, label %bb.cg
    i8 82, label %bb.ch
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = add i64 %i.b, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %..i, ptr %i.d, align 8
  store i64 83, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  ret void

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  store i64 3, ptr %0, align 8
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  store i64 4, ptr %0, align 8
  br label %bb.c

bb.i:                                             ; preds = %bb.a
  store i64 5, ptr %0, align 8
  br label %bb.c

bb.j:                                             ; preds = %bb.a
  store i64 6, ptr %0, align 8
  br label %bb.c

bb.k:                                             ; preds = %bb.a
  store i64 7, ptr %0, align 8
  br label %bb.c

bb.l:                                             ; preds = %bb.a
  store i64 8, ptr %0, align 8
  br label %bb.c

bb.m:                                             ; preds = %bb.a
  store i64 9, ptr %0, align 8
  br label %bb.c

bb.n:                                             ; preds = %bb.a
  store i64 10, ptr %0, align 8
  br label %bb.c

bb.o:                                             ; preds = %bb.a
  store i64 11, ptr %0, align 8
  br label %bb.c

bb.p:                                             ; preds = %bb.a
  store i64 12, ptr %0, align 8
  br label %bb.c

bb.q:                                             ; preds = %bb.a
  store i64 13, ptr %0, align 8
  br label %bb.c

bb.r:                                             ; preds = %bb.a
  store i64 14, ptr %0, align 8
  br label %bb.c

bb.s:                                             ; preds = %bb.a
  store i64 15, ptr %0, align 8
  br label %bb.c

bb.t:                                             ; preds = %bb.a
  store i64 16, ptr %0, align 8
  br label %bb.c

bb.u:                                             ; preds = %bb.a
  store i64 17, ptr %0, align 8
  br label %bb.c

bb.v:                                             ; preds = %bb.a
  store i64 18, ptr %0, align 8
  br label %bb.c

bb.w:                                             ; preds = %bb.a
  store i64 19, ptr %0, align 8
  br label %bb.c

bb.x:                                             ; preds = %bb.a
  store i64 20, ptr %0, align 8
  br label %bb.c

bb.y:                                             ; preds = %bb.a
  store i64 21, ptr %0, align 8
  br label %bb.c

bb.z:                                             ; preds = %bb.a
  store i64 22, ptr %0, align 8
  br label %bb.c

bb.aa:                                            ; preds = %bb.a
  store i64 23, ptr %0, align 8
  br label %bb.c

bb.ab:                                            ; preds = %bb.a
  store i64 24, ptr %0, align 8
  br label %bb.c

bb.ac:                                            ; preds = %bb.a
  store i64 25, ptr %0, align 8
  br label %bb.c

bb.ad:                                            ; preds = %bb.a
  store i64 26, ptr %0, align 8
  br label %bb.c

bb.ae:                                            ; preds = %bb.a
  store i64 27, ptr %0, align 8
  br label %bb.c

bb.af:                                            ; preds = %bb.a
  store i64 28, ptr %0, align 8
  br label %bb.c

bb.ag:                                            ; preds = %bb.a
  store i64 29, ptr %0, align 8
  br label %bb.c

bb.ah:                                            ; preds = %bb.a
  store i64 30, ptr %0, align 8
  br label %bb.c

bb.ai:                                            ; preds = %bb.a
  store i64 31, ptr %0, align 8
  br label %bb.c

bb.aj:                                            ; preds = %bb.a
  store i64 32, ptr %0, align 8
  br label %bb.c

bb.ak:                                            ; preds = %bb.a
  store i64 33, ptr %0, align 8
  br label %bb.c

bb.al:                                            ; preds = %bb.a
  store i64 34, ptr %0, align 8
  br label %bb.c

bb.am:                                            ; preds = %bb.a
  store i64 35, ptr %0, align 8
  br label %bb.c

bb.an:                                            ; preds = %bb.a
  store i64 36, ptr %0, align 8
  br label %bb.c

bb.ao:                                            ; preds = %bb.a
  store i64 37, ptr %0, align 8
  br label %bb.c

bb.ap:                                            ; preds = %bb.a
  store i64 38, ptr %0, align 8
  br label %bb.c

bb.aq:                                            ; preds = %bb.a
  store i64 39, ptr %0, align 8
  br label %bb.c

bb.ar:                                            ; preds = %bb.a
  store i64 40, ptr %0, align 8
  br label %bb.c

bb.as:                                            ; preds = %bb.a
  store i64 41, ptr %0, align 8
  br label %bb.c

bb.at:                                            ; preds = %bb.a
  store i64 42, ptr %0, align 8
  br label %bb.c

bb.au:                                            ; preds = %bb.a
  store i64 43, ptr %0, align 8
  br label %bb.c

bb.av:                                            ; preds = %bb.a
  store i64 44, ptr %0, align 8
  br label %bb.c

bb.aw:                                            ; preds = %bb.a
  store i64 45, ptr %0, align 8
  br label %bb.c

bb.ax:                                            ; preds = %bb.a
end_hunk_0
