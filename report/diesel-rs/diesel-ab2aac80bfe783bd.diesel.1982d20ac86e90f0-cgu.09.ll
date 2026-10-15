Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.09?download=true
inline.NumInlined: 1776
inline.NumDeleted: 894
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsD_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_stringNtNtB20_5impls14PathBufVisitorECs2bNgeUs5Jlc_6diesel:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2399, !noalias !2400, !noundef !12
  tail call void @_RINvXsq_NtNtCseMV7gzmhUlG_10serde_core2de5implsNtB6_14PathBufVisitorNtB8_7Visitor11visit_bytesNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !2399
  br label %_RINvXsD_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtNtCseMV7gzmhUlG_10serde_core2de12Deserializer15deserialize_strNtNtB20_5impls14PathBufVisitorECs2bNgeUs5Jlc_6diesel.exit

_RINvXsD_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtNtCseMV7gzmhUlG_10serde_core2de12Deserializer15deserialize_strNtNtB20_5impls14PathBufVisitorECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB3a_11PrintSchemaNtB20_11Deserialize11deserialize9___VisitorEB3c_(ptr dead_on_unwind noalias nofree noundef writable sret([208 x i8]) align 8 captures(address) dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [88 x i8], align 8                ; 8 uses
  %i.d = alloca [88 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  %.sroa.3165.i.i = alloca [24 x i8], align 8     ; 4 uses
  %.sroa.3.i.i = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.3170.i.i = alloca [16 x i8], align 8     ; 4 uses
  %.sroa.3174.i.i = alloca [16 x i8], align 8     ; 4 uses
  %.sroa.3178.i.i = alloca [16 x i8], align 8     ; 4 uses
  %.sroa.3191.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.6151.i.i = alloca [24 x i8], align 8     ; 6 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 7 uses
  %i.j = alloca [88 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.6129.i.i = alloca [24 x i8], align 8     ; 6 uses
  %i.l = alloca [88 x i8], align 8                ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.6120.i.i = alloca [24 x i8], align 8     ; 6 uses
  %i.n = alloca [88 x i8], align 8                ; 4 uses
  %i.o = alloca [88 x i8], align 8                ; 7 uses
  %i.p = alloca [88 x i8], align 8                ; 4 uses
  %i.q = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.698.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.r = alloca [88 x i8], align 8                ; 4 uses
  %i.s = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.689.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.t = alloca [88 x i8], align 8                ; 4 uses
  %i.u = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.680.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.v = alloca [88 x i8], align 8                ; 4 uses
  %i.w = alloca [88 x i8], align 8                ; 7 uses
  %i.x = alloca [88 x i8], align 8                ; 4 uses
  %i.y = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.658.i.i = alloca [32 x i8], align 8      ; 6 uses
  %i.z = alloca [88 x i8], align 8                ; 4 uses
  %i.aa = alloca [88 x i8], align 8               ; 7 uses
  %i.ab = alloca [88 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 7 uses
  %i.ad = alloca [88 x i8], align 8               ; 4 uses
  %i.ae = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.af = alloca [88 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 20 uses
  %i.ah = alloca [24 x i8], align 8               ; 19 uses
  %i.ai = alloca [24 x i8], align 8               ; 20 uses
  %i.aj = alloca [24 x i8], align 8               ; 19 uses
  %i.ak = alloca [24 x i8], align 8               ; 19 uses
  %i.al = alloca [24 x i8], align 8               ; 19 uses
  %i.am = alloca [32 x i8], align 8               ; 15 uses
  %i.an = alloca [24 x i8], align 8               ; 18 uses
  %i.ao = alloca [88 x i8], align 8               ; 6 uses
  %i.ap = alloca [208 x i8], align 8              ; 6 uses
  %i.aq = alloca [88 x i8], align 8               ; 7 uses
  %i.ar = alloca [88 x i8], align 8               ; 8 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [88 x i8], align 8               ; 8 uses
  %i.au = alloca [88 x i8], align 8               ; 7 uses
  %i.av = alloca [88 x i8], align 8               ; 7 uses
  %i.aw = alloca [88 x i8], align 8               ; 8 uses
  %.sroa.0193.i.i = alloca [56 x i8], align 8     ; 5 uses
  %i.ax = alloca [88 x i8], align 8               ; 9 uses
  %i.ay = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.6145.sroa.7.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.az = alloca [88 x i8], align 8               ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.6129.sroa.7.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.bb = alloca [88 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.6100.sroa.7.i.i = alloca [16 x i8], align 8 ; 8 uses
  %.sroa.1054 = alloca [16 x i8], align 8         ; 9 uses
  %i.bd = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.684.sroa.7.i.i = alloca [16 x i8], align 8 ; 8 uses
  %.sroa.10 = alloca [16 x i8], align 8           ; 9 uses
  %i.be = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.668.sroa.7.i.i = alloca [16 x i8], align 8 ; 8 uses
  %.sroa.117.i = alloca [16 x i8], align 8        ; 9 uses
  %i.bf = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.639.sroa.7.i.i = alloca [24 x i8], align 8 ; 8 uses
  %.sroa.11431.i.i = alloca [24 x i8], align 8    ; 9 uses
  %i.bg = alloca [32 x i8], align 8               ; 10 uses
  %.sroa.6.sroa.7.i.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.12421.i.i = alloca [16 x i8], align 8    ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 11 uses
  %i.bi = alloca [88 x i8], align 8               ; 6 uses
  %i.bj = alloca [208 x i8], align 8              ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 19 uses
  %i.bl = alloca [88 x i8], align 8               ; 4 uses
  %i.bm = load i8, ptr %1, align 8, !range !36, !noundef !12
  switch i8 %i.bm, label %bb.b [
    i8 20, label %bb.c
    i8 21, label %bb.cm
  ], !prof !44

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call fastcc void @_RNvMs9_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE12invalid_typeCs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(88) %i.bl, i64 88, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.iq

bb.c:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !12, !noundef !12 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2549
  %.idx.i = shl nuw nsw i64 %i.br, 5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i ; 9 uses
  store ptr %i.bp, ptr %i.bk, align 8, !noalias !2549
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !2549
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 11 uses
  store i64 0, ptr %i.bu, align 8, !noalias !2549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !2549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6145.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6129.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6100.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.684.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.668.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12421.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  %i.bv = icmp eq i64 %i.br, 0
  br i1 %i.bv, label %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.thread.i, label %bb.d

_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12421.i.i)
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  store ptr %i.bw, ptr %i.bk, align 8, !alias.scope !2555, !noalias !2556
  store i64 1, ptr %i.bu, align 8, !alias.scope !2555, !noalias !2556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2557
  call void @_RINvXse_NtNtCseMV7gzmhUlG_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufENtB8_11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp), !noalias !2558
  %i.bx = load i64, ptr %i.aw, align 8, !range !26, !noalias !2557, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bx, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.8420.8.copyload.i.i = load i64, ptr %i.by, align 8, !noalias !2559 ; 3 uses
  %.sroa.12421.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12421.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12421.8..sroa_idx.i.i, i64 16, i1 false), !noalias !2559
  br i1 %.not.i.i.i.i.i, label %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.i, label %bb.e

common.resume:                                    ; preds = %bb.hx, %bb.ia, %bb.ik, %bb.in, %bb.i, %bb.cf, %bb.cj
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cj ], [ %i.fw, %bb.cf ], [ %.pn394.i.i, %bb.i ], [ %.pn404.i.i, %bb.hx ], [ %i.nc, %bb.ia ], [ %.pn404.i.i, %bb.ik ], [ %i.nn, %bb.in ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %.sroa.14.0..sroa_idx422.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.sroa.6210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6210.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14.0..sroa_idx422.i.i, i64 56, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12421.i.i, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12421.i.i)
  %.sroa.5209.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5209.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.7.i.i, i64 16, i1 false), !noalias !2560
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bx, ptr %i.bz, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4208.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8420.8.copyload.i.i, ptr %.sroa.4208.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.thread.i

_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12421.i.i, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12421.i.i)
  %.not360.i.i = icmp eq i64 %.sroa.8420.8.copyload.i.i, -2
  br i1 %.not360.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.i
  %.sroa.4.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.7.i.i, i64 16, i1 false), !noalias !2552
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.i, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.thread.i
  %i.ca = phi i64 [ 1, %bb.f ], [ 1, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ 0, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.thread.i ] ; 8 uses
  %i.cb = phi ptr [ %i.bw, %bb.f ], [ %i.bw, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ %i.bp, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.thread.i ] ; 10 uses
  %.sroa.8420.1438.sink.i.i = phi i64 [ %.sroa.8420.8.copyload.i.i, %bb.f ], [ -1, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ -1, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit.thread.i.thread.i ]
  store i64 %.sroa.8420.1438.sink.i.i, ptr %i.bh, align 8, !noalias !2552
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %i.cc = icmp eq ptr %i.cb, %i.bs
  br i1 %i.cc, label %.thread55.i.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  store ptr %i.cd, ptr %i.bk, align 8, !alias.scope !2564, !noalias !2565
  %6 = add nuw nsw i64 %i.ca, 1
  store i64 %6, ptr %i.bu, align 8, !alias.scope !2564, !noalias !2565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2566
  invoke void @_RINvXs7_NtCs2bNgeUs5Jlc_6diesel12print_schemaNtB6_9DocConfigNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEB8_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cb)
          to label %.noexc.i.i unwind label %bb.j, !noalias !2567

.noexc.i.i:                                       ; preds = %bb.h
  %i.ce = load i64, ptr %i.av, align 8, !range !26, !noalias !2566, !noundef !12 ; 2 uses
  %.not.i.i.i414.i.i = icmp eq i64 %i.ce, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cg = load i8, ptr %i.cf, align 8, !noalias !2568 ; 9 uses
  br i1 %.not.i.i.i414.i.i, label %bb.l, label %bb.k

bb.i:                                             ; preds = %.body, %bb.j
  %.pn394.i.i = phi { ptr, i32 } [ %i.ch, %bb.j ], [ %.pn392.i.i, %.body ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #26
          to label %common.resume unwind label %bb.bp, !noalias !2567

bb.j:                                             ; preds = %bb.cb, %bb.p, %bb.m, %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.noexc.i.i
  %.sroa.12425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  %.sroa.5219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5219.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.12425.0..sroa_idx.i.i, i64 79, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2566
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ce, ptr %i.ci, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cg, ptr %.sroa.4218.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.cd

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2566
  call void @llvm.experimental.noalias.scope.decl(metadata !2569)
  call void @llvm.experimental.noalias.scope.decl(metadata !2570)
  %i.cj = icmp eq ptr %i.cd, %i.bs
  br i1 %i.cj, label %.thread55.i.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 3 uses
  store ptr %i.ck, ptr %i.bk, align 8, !alias.scope !2571, !noalias !2572
  %7 = or disjoint i64 %i.ca, 2
  store i64 %7, ptr %i.bu, align 8, !alias.scope !2571, !noalias !2572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2573
  invoke void @_RINvXNvNtCs2bNgeUs5Jlc_6diesel12print_schemas0_1__NtB5_36AllowTablesToAppearInSameQueryConfigNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEB7_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cd)
          to label %.noexc416.i.i unwind label %bb.j, !noalias !2567

.noexc416.i.i:                                    ; preds = %bb.m
  %i.cl = load i64, ptr %i.au, align 8, !range !26, !noalias !2573, !noundef !12 ; 2 uses
  %.not.i.i.i415.i.i = icmp eq i64 %i.cl, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !noalias !2574 ; 8 uses
  br i1 %.not.i.i.i415.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc416.i.i
  %.sroa.12428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  %.sroa.5228.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5228.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.12428.0..sroa_idx.i.i, i64 79, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2573
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cl, ptr %i.co, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4227.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cn, ptr %.sroa.4227.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.cd

bb.o:                                             ; preds = %.noexc416.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11431.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  %i.cp = icmp eq ptr %i.ck, %i.bs
  br i1 %i.cp, label %.thread55.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 96 ; 3 uses
  store ptr %i.cq, ptr %i.bk, align 8, !alias.scope !2577, !noalias !2578
  %i.cr = add nuw nsw i64 %i.ca, 3
  store i64 %i.cr, ptr %i.bu, align 8, !alias.scope !2577, !noalias !2578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2579
  invoke void @_RINvXs4_NtCs2bNgeUs5Jlc_6diesel6configNtB6_9FilteringNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEB8_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ck)
          to label %.noexc418.i.i unwind label %bb.j, !noalias !2567

.noexc418.i.i:                                    ; preds = %bb.p
  %i.cs = load i64, ptr %i.at, align 8, !range !26, !noalias !2579, !noundef !12 ; 2 uses
  %.not.i.i.i417.i.i = icmp eq i64 %i.cs, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.8430.8.copyload.i.i = load i64, ptr %i.ct, align 8, !noalias !2580 ; 3 uses
  %.sroa.11431.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11431.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11431.8..sroa_idx.i.i, i64 24, i1 false), !noalias !2580
  br i1 %.not.i.i.i417.i.i, label %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs2bNgeUs5Jlc_6diesel6config9FilteringEB2U_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc418.i.i
  %.sroa.13.0..sroa_idx432.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.6242.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6242.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx432.i.i, i64 48, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.639.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11431.i.i, i64 24, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11431.i.i)
  %.sroa.5241.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5241.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.639.sroa.7.i.i, i64 24, i1 false), !noalias !2560
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cs, ptr %i.cu, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4240.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8430.8.copyload.i.i, ptr %.sroa.4240.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.cc

.thread55.i.sink.split:                           ; preds = %bb.l, %bb.g
  %.ph11.i.ph = phi i8 [ 2, %bb.g ], [ %i.cg, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11431.i.i)
  br label %.thread55.i

.thread55.i:                                      ; preds = %.thread55.i.sink.split, %bb.o
  %.ph.i = phi i8 [ %i.cn, %bb.o ], [ 1, %.thread55.i.sink.split ]
  %.ph11.i = phi i8 [ %i.cg, %bb.o ], [ %.ph11.i.ph, %.thread55.i.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.639.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11431.i.i, i64 24, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11431.i.i)
  store i64 2, ptr %i.bg, align 8, !noalias !2552
  br label %.thread56.i

_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs2bNgeUs5Jlc_6diesel6config9FilteringEB2U_.exit.thread.i.i: ; preds = %.noexc418.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.639.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11431.i.i, i64 24, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11431.i.i)
  %.not366.i.i = icmp eq i64 %.sroa.8430.8.copyload.i.i, -1
  br i1 %.not366.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs2bNgeUs5Jlc_6diesel6config9FilteringEB2U_.exit.thread.i.i
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.452.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.639.sroa.7.i.i, i64 24, i1 false), !noalias !2552
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs2bNgeUs5Jlc_6diesel6config9FilteringEB2U_.exit.thread.i.i
  %.sroa.8430.1467.sink.i.i = phi i64 [ %.sroa.8430.8.copyload.i.i, %bb.r ], [ 2, %_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs2bNgeUs5Jlc_6diesel6config9FilteringEB2U_.exit.thread.i.i ]
  store i64 %.sroa.8430.1467.sink.i.i, ptr %i.bg, align 8, !noalias !2552
  call void @llvm.experimental.noalias.scope.decl(metadata !2581), !noalias !2550
  call void @llvm.experimental.noalias.scope.decl(metadata !2582), !noalias !2550
  %i.cv = icmp eq ptr %i.cq, %i.bs
  br i1 %i.cv, label %.thread56.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 128 ; 3 uses
  store ptr %i.cw, ptr %i.bk, align 8, !alias.scope !2583, !noalias !2584
  %8 = or disjoint i64 %i.ca, 4
  store i64 %8, ptr %i.bu, align 8, !alias.scope !2583, !noalias !2584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2585
  invoke void @_RINvXNvNtCs2bNgeUs5Jlc_6diesel12print_schema1__NtB5_13ColumnSortingNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEB7_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq)
          to label %.noexc3.i unwind label %bb.u, !noalias !2548

.noexc3.i:                                        ; preds = %bb.t
  %i.cx = load i64, ptr %i.aq, align 8, !range !26, !noalias !2585, !noundef !12 ; 2 uses
  %.not.i.i.i2.i = icmp eq i64 %i.cx, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cz = load i8, ptr %i.cy, align 8, !noalias !2586 ; 6 uses
  br i1 %.not.i.i.i2.i, label %bb.w, label %bb.v

.body:                                            ; preds = %bb.bz, %bb.u, %.body41
  %.pn392.i.i = phi { ptr, i32 } [ %.pn390.i.i, %.body41 ], [ %i.da, %bb.u ], [ %i.fs, %bb.bz ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config9FilteringEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.bg) #26
          to label %bb.i unwind label %bb.bp, !noalias !2567

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i, %bb.x, %bb.t
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %.noexc3.i
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %.sroa.5251.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5251.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.11.0..sroa_idx.i, i64 79, i1 false), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2585
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cx, ptr %i.db, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4250.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cz, ptr %.sroa.4250.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.cb

.thread56.i:                                      ; preds = %bb.s, %.thread55.i
  %i.dc = phi i8 [ %.ph.i, %.thread55.i ], [ %i.cn, %bb.s ]
  %i.dd = phi i8 [ %.ph11.i, %.thread55.i ], [ %i.cg, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.117.i)
  br label %.thread455

bb.w:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.117.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2588), !noalias !2550
  call void @llvm.experimental.noalias.scope.decl(metadata !2589), !noalias !2550
  %i.de = icmp eq ptr %i.cw, %i.bs
  br i1 %i.de, label %.thread455, label %bb.x

.thread455:                                       ; preds = %.thread56.i, %bb.w
  %i.df = phi i8 [ 0, %.thread56.i ], [ %i.cz, %bb.w ]
  %i.dg = phi i8 [ %i.dd, %.thread56.i ], [ %i.cg, %bb.w ]
  %i.dh = phi i8 [ %i.dc, %.thread56.i ], [ %i.cn, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.668.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.117.i, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.117.i)
  store i64 -1, ptr %i.bf, align 8, !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  br label %.thread457

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %i.cb, i64 160 ; 3 uses
  store ptr %i.di, ptr %i.bk, align 8, !alias.scope !2590, !noalias !2591
  %9 = add nuw nsw i64 %i.ca, 5
  store i64 %9, ptr %i.bu, align 8, !alias.scope !2590, !noalias !2591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2592
  invoke void @_RINvXse_NtNtCseMV7gzmhUlG_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cw)
          to label %.noexc1.i unwind label %bb.u, !noalias !2548

.noexc1.i:                                        ; preds = %bb.x
  %i.dj = load i64, ptr %i.ar, align 8, !range !26, !noalias !2592, !noundef !12 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dj, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.76.8.copyload.i = load i64, ptr %i.dk, align 8, !noalias !2593 ; 3 uses
  %.sroa.117.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.117.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.117.8..sroa_idx.i, i64 16, i1 false), !noalias !2593
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc1.i
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.6265.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6265.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.0..sroa_idx.i, i64 56, i1 false), !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.668.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.117.i, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.117.i)
  %.sroa.5264.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5264.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.668.sroa.7.i.i, i64 16, i1 false), !noalias !2560
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dj, ptr %i.dl, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4263.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.76.8.copyload.i, ptr %.sroa.4263.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs2bNgeUs5Jlc_6diesel.exit

bb.z:                                             ; preds = %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.668.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.117.i, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.117.i)
  %.not370.i.i = icmp eq i64 %.sroa.76.8.copyload.i, -2
  br i1 %.not370.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.481.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.481.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.668.sroa.7.i.i, i64 16, i1 false), !noalias !2552
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0252.0.copyload.sink.i.i = phi i64 [ %.sroa.76.8.copyload.i, %bb.aa ], [ -1, %bb.z ]
  store i64 %.sroa.0252.0.copyload.sink.i.i, ptr %i.bf, align 8, !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.experimental.noalias.scope.decl(metadata !2594), !noalias !2561
  call void @llvm.experimental.noalias.scope.decl(metadata !2595), !noalias !2561
  %i.dm = icmp eq ptr %i.di, %i.bs
  br i1 %i.dm, label %.thread457, label %bb.ac

.thread457:                                       ; preds = %bb.ab, %.thread455
  %i.dn = phi i8 [ %i.dh, %.thread455 ], [ %i.cn, %bb.ab ]
  %i.do = phi i8 [ %i.dg, %.thread455 ], [ %i.cg, %bb.ab ]
  %i.dp = phi i8 [ %i.df, %.thread455 ], [ %i.cz, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.684.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store i64 -1, ptr %i.be, align 8, !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1054)
  br label %.thread459

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cb, i64 192 ; 3 uses
  store ptr %i.dq, ptr %i.bk, align 8, !alias.scope !2596, !noalias !2597
  %10 = or disjoint i64 %i.ca, 6
  store i64 %10, ptr %i.bu, align 8, !alias.scope !2596, !noalias !2597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2598
  invoke void @_RINvXse_NtNtCseMV7gzmhUlG_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufENtB8_11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.di)
          to label %.noexc51 unwind label %bb.ad

.noexc51:                                         ; preds = %bb.ac
  %i.dr = load i64, ptr %i.b, align 8, !range !26, !noalias !2598, !noundef !12 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %i.dr, -1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8.copyload = load i64, ptr %i.ds, align 8, !noalias !2599 ; 3 uses
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.8..sroa_idx, i64 16, i1 false), !noalias !2599
  br i1 %.not.i.i.i50, label %bb.af, label %bb.ae

.body41:                                          ; preds = %bb.bw, %bb.ad, %.body44
  %.pn390.i.i = phi { ptr, i32 } [ %.pn388.i.i, %.body44 ], [ %i.dt, %bb.ad ], [ %i.fo, %bb.bw ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.bf) #26
          to label %.body unwind label %bb.bp, !noalias !2567

bb.ad:                                            ; preds = %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body41

bb.ae:                                            ; preds = %.noexc51
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6279.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6279.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.0..sroa_idx, i64 56, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.684.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.sroa.5278.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5278.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.684.sroa.7.i.i, i64 16, i1 false), !noalias !2560
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dr, ptr %i.du, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4277.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.8.copyload, ptr %.sroa.4277.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit

bb.af:                                            ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.684.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.not372.i.i = icmp eq i64 %.sroa.7.8.copyload, -2
  br i1 %.not372.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.497.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.684.sroa.7.i.i, i64 16, i1 false), !noalias !2552
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.0266.0.copyload.sink.i.i = phi i64 [ %.sroa.7.8.copyload, %bb.ag ], [ -1, %bb.af ]
  store i64 %.sroa.0266.0.copyload.sink.i.i, ptr %i.be, align 8, !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !2600), !noalias !2561
  call void @llvm.experimental.noalias.scope.decl(metadata !2601), !noalias !2561
  %i.dv = icmp eq ptr %i.dq, %i.bs
  br i1 %i.dv, label %.thread459, label %bb.ai

.thread459:                                       ; preds = %bb.ah, %.thread457
  %i.dw = phi i8 [ %i.dp, %.thread457 ], [ %i.cz, %bb.ah ]
  %i.dx = phi i8 [ %i.do, %.thread457 ], [ %i.cg, %bb.ah ]
  %i.dy = phi i8 [ %i.dn, %.thread457 ], [ %i.cn, %bb.ah ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6100.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1054, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1054)
  store i64 -1, ptr %i.bd, align 8, !noalias !2552
  br label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cb, i64 224 ; 3 uses
  store ptr %i.dz, ptr %i.bk, align 8, !alias.scope !2602, !noalias !2603
  %i.ea = add nuw nsw i64 %i.ca, 7
  store i64 %i.ea, ptr %i.bu, align 8, !alias.scope !2602, !noalias !2603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2604
  invoke void @_RINvXse_NtNtCseMV7gzmhUlG_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB1q_6string6StringEENtB8_11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dq)
          to label %.noexc49 unwind label %bb.aj

.noexc49:                                         ; preds = %bb.ai
  %i.eb = load i64, ptr %i.c, align 8, !range !26, !noalias !2604, !noundef !12 ; 2 uses
  %.not.i.i.i48 = icmp eq i64 %i.eb, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.753.8.copyload = load i64, ptr %i.ec, align 8, !noalias !2605 ; 3 uses
  %.sroa.1054.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1054, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1054.8..sroa_idx, i64 16, i1 false), !noalias !2605
  br i1 %.not.i.i.i48, label %bb.al, label %bb.ak

.body44:                                          ; preds = %bb.bt, %bb.aj, %bb.ap
  %.pn388.i.i = phi { ptr, i32 } [ %.pn386.i.i, %bb.ap ], [ %i.ed, %bb.aj ], [ %i.fk, %bb.bt ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.be) #26
          to label %.body41 unwind label %bb.bp, !noalias !2567

bb.aj:                                            ; preds = %bb.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel.exit.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.ak:                                            ; preds = %.noexc49
  %.sroa.1155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.6293.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6293.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1155.0..sroa_idx, i64 56, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6100.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1054, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1054)
  %.sroa.5292.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5292.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6100.sroa.7.i.i, i64 16, i1 false), !noalias !2560
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eb, ptr %i.ee, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4291.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.753.8.copyload, ptr %.sroa.4291.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit

bb.al:                                            ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6100.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1054, i64 16, i1 false), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1054)
  %.not374.i.i = icmp eq i64 %.sroa.753.8.copyload, -2
  br i1 %.not374.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.4113.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4113.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6100.sroa.7.i.i, i64 16, i1 false), !noalias !2552
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.0280.0.copyload.sink.i.i = phi i64 [ %.sroa.753.8.copyload, %bb.am ], [ -1, %bb.al ]
  store i64 %.sroa.0280.0.copyload.sink.i.i, ptr %i.bd, align 8, !noalias !2552
  call void @llvm.experimental.noalias.scope.decl(metadata !2606), !noalias !2561
  call void @llvm.experimental.noalias.scope.decl(metadata !2607), !noalias !2561
  %i.ef = icmp eq ptr %i.dz, %i.bs
  br i1 %i.ef, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cb, i64 256
  store ptr %i.eg, ptr %i.bk, align 8, !alias.scope !2608, !noalias !2609
  %11 = or disjoint i64 %i.ca, 8
  store i64 %11, ptr %i.bu, align 8, !alias.scope !2608, !noalias !2609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2610
  invoke void @_RINvXse_NtNtCseMV7gzmhUlG_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionbENtB8_11Deserialize11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dz)
          to label %.noexc47 unwind label %bb.aq

.noexc47:                                         ; preds = %bb.ao
  %i.eh = load i64, ptr %i.d, align 8, !range !26, !noalias !2610, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.eh, -1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ej = load i8, ptr %i.ei, align 8, !noalias !2611 ; 2 uses
  br i1 %.not.i.i.i, label %bb.as, label %bb.ar

bb.ap:                                            ; preds = %bb.ba, %bb.aq
  %.pn386.i.i = phi { ptr, i32 } [ %i.ek, %bb.aq ], [ %.pn.i.i, %bb.ba ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #26
          to label %.body44 unwind label %bb.bp, !noalias !2567

bb.aq:                                            ; preds = %bb.ao, %bb.bo, %bb.at
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %.noexc47
  %.sroa.1058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.5302.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5302.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.1058.0..sroa_idx, i64 79, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2610
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eh, ptr %i.el, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4301.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ej, ptr %.sroa.4301.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.br

bb.as:                                            ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2610
  br label %bb.at

bb.at:                                            ; preds = %bb.an, %.thread459, %bb.as
  %i.em = phi i8 [ %i.cn, %bb.as ], [ %i.dy, %.thread459 ], [ %i.cn, %bb.an ]
  %i.en = phi i8 [ %i.cg, %bb.as ], [ %i.dx, %.thread459 ], [ %i.cg, %bb.an ]
  %i.eo = phi i8 [ %i.cz, %bb.as ], [ %i.dw, %.thread459 ], [ %i.cz, %bb.an ]
  %i.ep = phi i8 [ %i.ej, %bb.as ], [ 2, %.thread459 ], [ 2, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2552
  invoke fastcc void @_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCs40k4W9msRzi_5alloc3vec3VecINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.bb, ptr nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.au unwind label %bb.aq, !noalias !2561

bb.au:                                            ; preds = %bb.at
  %i.eq = load i64, ptr %i.bb, align 8, !range !26, !noalias !2552, !noundef !12 ; 2 uses
  %.not377.i.i = icmp eq i64 %i.eq, -1
  %i.er = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.0303.0.copyload.i.i = load i64, ptr %i.er, align 8, !noalias !2552 ; 3 uses
  %.sroa.4304.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6129.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4304.0..sroa_idx.i.i, i64 16, i1 false), !noalias !2552
  br i1 %.not377.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.6312.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.6316.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6316.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6312.0..sroa_idx.i.i, i64 56, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2552
  %.sroa.5315.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5315.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6129.sroa.7.i.i, i64 16, i1 false), !noalias !2560
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eq, ptr %i.es, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4314.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0303.0.copyload.i.i, ptr %.sroa.4314.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.bq

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2552
  %.not378.i.i = icmp eq i64 %.sroa.0303.0.copyload.i.i, -1
  %i.et = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br i1 %.not378.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6129.sroa.7.i.i, i64 16, i1 false), !noalias !2552
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  store ptr inttoptr (i64 8 to ptr), ptr %i.et, align 8, !noalias !2552
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 0, ptr %i.eu, align 8, !noalias !2552
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.0303.0.copyload.sink.i.i = phi i64 [ 0, %bb.ay ], [ %.sroa.0303.0.copyload.i.i, %bb.ax ]
  store i64 %.sroa.0303.0.copyload.sink.i.i, ptr %i.bc, align 8, !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !2552
  invoke fastcc void @_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB3x_6string6StringEEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.az, ptr nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.bc unwind label %bb.bb, !noalias !2561

bb.ba:                                            ; preds = %bb.bh, %bb.bb
  %.pn.i.i = phi { ptr, i32 } [ %i.ev, %bb.bb ], [ %i.ez, %bb.bh ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #26
          to label %bb.ap unwind label %bb.bp, !noalias !2567

bb.bb:                                            ; preds = %bb.bn, %bb.az
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %bb.az
  %i.ew = load i64, ptr %i.az, align 8, !range !26, !noalias !2552, !noundef !12 ; 2 uses
  %.not379.i.i = icmp eq i64 %i.ew, -1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.0317.0.copyload.i.i = load i64, ptr %i.ex, align 8, !noalias !2552 ; 3 uses
  %.sroa.4318.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6145.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4318.0..sroa_idx.i.i, i64 16, i1 false), !noalias !2552
  br i1 %.not379.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.6326.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.6330.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6330.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6326.0..sroa_idx.i.i, i64 56, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2552
  %.sroa.5329.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5329.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6145.sroa.7.i.i, i64 16, i1 false), !noalias !2560
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ew, ptr %i.ey, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4328.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0317.0.copyload.i.i, ptr %.sroa.4328.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.bo

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2552
  %.not380.i.i = icmp eq i64 %.sroa.0317.0.copyload.i.i, -2
  br i1 %.not380.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.4158.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4158.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6145.sroa.7.i.i, i64 16, i1 false), !noalias !2552
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sroa.0317.0.copyload.sink.i.i = phi i64 [ %.sroa.0317.0.copyload.i.i, %bb.bf ], [ -1, %bb.be ]
  store i64 %.sroa.0317.0.copyload.sink.i.i, ptr %i.ba, align 8, !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2552
  invoke fastcc void @_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCscI6d9CVNmLh_4core6option6OptionbEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.ay, ptr nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.bi unwind label %bb.bh, !noalias !2561

bb.bh:                                            ; preds = %bb.bk, %bb.bg
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.ba) #26
          to label %bb.ba unwind label %bb.bp, !noalias !2567

bb.bi:                                            ; preds = %bb.bg
  %i.fa = load i64, ptr %i.ay, align 8, !range !26, !noalias !2552, !noundef !12 ; 2 uses
  %.not381.i.i = icmp eq i64 %i.fa, -1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.fc = load i8, ptr %i.fb, align 8, !noalias !2552 ; 3 uses
  br i1 %.not381.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.5336.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 9
  %.sroa.5339.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5339.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5336.0..sroa_idx.i.i, i64 79, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2552
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fd, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4338.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.fc, ptr %.sroa.4338.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2552
  %.not382.i.i = icmp eq i8 %i.fc, -1
  %.401.i.i = select i1 %.not382.i.i, i8 2, i8 %i.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2552
  invoke fastcc void @_RINvXs4_NtCseMV7gzmhUlG_10serde_core2deQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtB6_9SeqAccess12next_elementINtNtCs40k4W9msRzi_5alloc3vec3VecINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.ax, ptr nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.bl unwind label %bb.bh, !noalias !2561

bb.bl:                                            ; preds = %bb.bk
  %i.fe = load i64, ptr %i.ax, align 8, !range !26, !noalias !2552, !noundef !12 ; 2 uses
  %.not383.i.i = icmp eq i64 %i.fe, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.0340.0.copyload.i.i = load i64, ptr %i.ff, align 8, !noalias !2552 ; 3 uses
  %.sroa.4341.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.4341.0.copyload.i.i = load ptr, ptr %.sroa.4341.0..sroa_idx.i.i, align 8, !noalias !2552 ; 2 uses
  %.sroa.5342.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.5342.0.copyload.i.i = load i64, ptr %.sroa.5342.0..sroa_idx.i.i, align 8, !noalias !2552 ; 2 uses
  br i1 %.not383.i.i, label %_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.7352.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.7357.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7357.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7352.0..sroa_idx.i.i, i64 56, i1 false), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2552
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fe, ptr %i.fg, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.4354.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0340.0.copyload.i.i, ptr %.sroa.4354.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.5355.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.4341.0.copyload.i.i, ptr %.sroa.5355.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.6356.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5342.0.copyload.i.i, ptr %.sroa.6356.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  store i64 -1, ptr %0, align 8, !alias.scope !2561, !noalias !2560
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.ba)
          to label %bb.bo unwind label %bb.bb, !noalias !2567

bb.bo:                                            ; preds = %bb.bn, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2552
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.bc)
          to label %bb.bq unwind label %bb.aq, !noalias !2567

bb.bp:                                            ; preds = %bb.bh, %bb.ba, %bb.ap, %.body44, %.body41, %.body, %bb.i
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !2567
  unreachable

bb.bq:                                            ; preds = %bb.bo, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2552
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.ar
  %i.fi = load i64, ptr %i.bd, align 8, !range !16, !alias.scope !2612, !noalias !2567, !noundef !12
  %i.fj = icmp eq i64 %i.fi, -1
  br i1 %i.fj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.bt, !noalias !2567

bb.bt:                                            ; preds = %bb.bs
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body44 unwind label %bb.bu, !noalias !2567

bb.bu:                                            ; preds = %bb.bt
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !2567
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.aj

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.br, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2552
  %i.fm = load i64, ptr %i.be, align 8, !range !16, !alias.scope !2613, !noalias !2567, !noundef !12
  %i.fn = icmp eq i64 %i.fm, -1
  br i1 %i.fn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.bw, !noalias !2567

bb.bw:                                            ; preds = %bb.bv
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body41 unwind label %bb.bx, !noalias !2567

bb.bx:                                            ; preds = %bb.bw
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !2567
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.ad

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs2bNgeUs5Jlc_6diesel.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2552
  %i.fq = load i64, ptr %i.bf, align 8, !range !16, !alias.scope !2614, !noalias !2567, !noundef !12
  %i.fr = icmp eq i64 %i.fq, -1
  br i1 %i.fr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs2bNgeUs5Jlc_6diesel.exit, label %bb.by

bb.by:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.bz, !noalias !2567

bb.bz:                                            ; preds = %bb.by
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body unwind label %bb.ca, !noalias !2567

bb.ca:                                            ; preds = %bb.bz
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !2567
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.u

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std4path7PathBufEECs2bNgeUs5Jlc_6diesel.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2552
  br label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs2bNgeUs5Jlc_6diesel.exit, %bb.v
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config9FilteringEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.bg)
          to label %bb.cc unwind label %bb.j, !noalias !2567

bb.cc:                                            ; preds = %bb.cb, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2552
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.n, %bb.k
  %i.fu = load i64, ptr %i.bh, align 8, !range !16, !alias.scope !2615, !noalias !2552, !noundef !12
  %i.fv = icmp eq i64 %i.fu, -1
  br i1 %i.fv, label %_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.thread.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i unwind label %bb.cf, !noalias !2567

bb.cf:                                            ; preds = %bb.ce
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %common.resume unwind label %bb.cg, !noalias !2567

bb.cg:                                            ; preds = %bb.cf
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !2567
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.ce
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh), !noalias !2567
  br label %_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.thread.i

_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.thread.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i, %bb.cd, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6145.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6129.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6100.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.684.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7.i.i)
  br label %_RINvNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1f_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEB1h_.exit

_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2552
  %.not384.i.i = icmp eq i64 %.sroa.0340.0.copyload.i.i, -1 ; 3 uses
  %..sroa.0340.0.copyload.i.i = select i1 %.not384.i.i, i64 0, i64 %.sroa.0340.0.copyload.i.i
  %..sroa.4341.0.copyload.i.i = select i1 %.not384.i.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.4341.0.copyload.i.i
  %..sroa.5342.0.copyload.i.i = select i1 %.not384.i.i, i64 0, i64 %.sroa.5342.0.copyload.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0193.i.i)
  %.sroa.8196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8196.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !2560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0193.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false), !noalias !2552
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !2560
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !2560
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !2560
  %.sroa.0193.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0193.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0193.32..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !2552
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !2560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0193.i.i, i64 56, i1 false), !noalias !2560
  %.sroa.5194.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %..sroa.0340.0.copyload.i.i, ptr %.sroa.5194.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.6195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %..sroa.4341.0.copyload.i.i, ptr %.sroa.6195.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %..sroa.5342.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 %i.eo, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !alias.scope !2561, !noalias !2560
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 %i.en, ptr %.sroa.14.0..sroa_idx.i.i, align 1, !alias.scope !2561, !noalias !2560
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i8 %i.em, ptr %.sroa.15.0..sroa_idx.i.i, align 2, !alias.scope !2561, !noalias !2560
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 203
  store i8 %i.ep, ptr %.sroa.16.0..sroa_idx.i.i, align 1, !alias.scope !2561, !noalias !2560
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 %.401.i.i, ptr %.sroa.17.0..sroa_idx.i.i, align 4, !alias.scope !2561, !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0193.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2552
  %.pre.i = load i64, ptr %0, align 8, !range !2616, !alias.scope !2548, !noalias !2587
  %i.fy = icmp eq i64 %.pre.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6145.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6129.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6100.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.684.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7.i.i)
  br i1 %i.fy, label %_RINvNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1f_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEB1h_.exit, label %bb.ch

bb.ch:                                            ; preds = %_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 8 dereferenceable(208) %0, i64 208, i1 false), !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2549
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bk, align 8, !noalias !2549, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %i.bt, align 8, !noalias !2549, !nonnull !12, !noundef !12 ; 2 uses
  %i.fz = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.fz, label %_RNvMsc_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE3endCs2bNgeUs5Jlc_6diesel.exit.thread.i, label %bb.ci, !prof !31

bb.ci:                                            ; preds = %bb.ch
  %.sroa.5.0.copyload.i = load i64, ptr %i.bu, align 8, !noalias !2549 ; 2 uses
  %i.ga = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.gb = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.gc = sub nuw i64 %i.gb, %i.ga
  %i.gd = lshr exact i64 %i.gc, 5
  %i.ge = add i64 %.sroa.5.0.copyload.i, %i.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2617
  store i64 %.sroa.5.0.copyload.i, ptr %i.as, align 8, !noalias !2617
  invoke void @_RNvYNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error14invalid_lengthCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.bi, i64 noundef %i.ge, ptr noundef nonnull %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
          to label %_RNvMsc_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE3endCs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.cj, !noalias !2548

bb.cj:                                            ; preds = %bb.ci
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef align 8 dereferenceable(208) %i.bj) #26
          to label %common.resume unwind label %bb.cl, !noalias !2548

_RNvMsc_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE3endCs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2617
  %.pr.i = load i64, ptr %i.bi, align 8, !noalias !2549
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvMsc_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE3endCs2bNgeUs5Jlc_6diesel.exit.thread.i, label %bb.ck

bb.ck:                                            ; preds = %_RNvMsc_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE3endCs2bNgeUs5Jlc_6diesel.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.gg, ptr noundef nonnull align 8 dereferenceable(88) %i.bi, i64 88, i1 false), !noalias !2587
  store i64 -1, ptr %0, align 8, !alias.scope !2548, !noalias !2587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2549
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEBF_(ptr noalias noundef align 8 dereferenceable(208) %i.bj), !noalias !2548
  br label %_RINvNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1f_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEB1h_.exit

_RNvMsc_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE3endCs2bNgeUs5Jlc_6diesel.exit.thread.i: ; preds = %_RNvMsc_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE3endCs2bNgeUs5Jlc_6diesel.exit.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2549
  br label %_RINvNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1f_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEB1h_.exit

bb.cl:                                            ; preds = %bb.cj
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !2548
  unreachable

_RINvNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1f_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEB1h_.exit: ; preds = %_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.thread.i, %_RINvXs0_NvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBb_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_seqQINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEBd_.exit.i, %bb.ck, %_RNvMsc_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_18SeqRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE3endCs2bNgeUs5Jlc_6diesel.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2549
  br label %bb.iq

bb.cm:                                            ; preds = %bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  %.idx.i2 = shl nuw nsw i64 %i.gl, 6             ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx.i2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2620
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3165.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3170.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3174.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3178.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3191.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6151.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6129.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6120.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.698.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.689.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.680.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.658.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2622
  store i64 -2, ptr %i.an, align 8, !noalias !2622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2622
  store i64 -1, ptr %i.am, align 8, !noalias !2622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2622
  store i64 -2, ptr %i.al, align 8, !noalias !2622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2622
  store i64 -2, ptr %i.ak, align 8, !noalias !2622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2622
  store i64 -2, ptr %i.aj, align 8, !noalias !2622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2622
  store i64 -1, ptr %i.ai, align 8, !noalias !2622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2622
  store i64 -2, ptr %i.ah, align 8, !noalias !2622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2622
  store i64 -1, ptr %i.ag, align 8, !noalias !2622
  %i.gn = icmp eq i64 %i.gl, 0
  br i1 %i.gn, label %.thread.i12.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cm
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hc = add nsw i64 %.idx.i2, -64
  %i.hd = lshr exact i64 %i.hc, 6
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  br label %bb.cn

.thread.i.i:                                      ; preds = %bb.dr
  %.pre1026.i.i = load i64, ptr %i.an, align 8, !range !22, !noalias !2622 ; 2 uses
  %.not345.i.i = icmp eq i64 %.pre1026.i.i, -2
  br i1 %.not345.i.i, label %.thread1080.i.i, label %bb.gs

bb.cn:                                            ; preds = %bb.dr, %.lr.ph.i.i
  %i.hf = phi i64 [ 0, %.lr.ph.i.i ], [ %i.hj, %bb.dr ]
  %i.hg = phi ptr [ %i.gj, %.lr.ph.i.i ], [ %i.hh, %bb.dr ] ; 10 uses
  %.sroa.030.0937.i.i = phi i8 [ -1, %.lr.ph.i.i ], [ %.sroa.030.1.i.i, %bb.dr ] ; 13 uses
  %.sroa.043.0936.i.i = phi i8 [ -1, %.lr.ph.i.i ], [ %.sroa.043.1.i.i, %bb.dr ] ; 13 uses
  %.sroa.065.0935.i.i = phi i8 [ 2, %.lr.ph.i.i ], [ %.sroa.065.1.i.i, %bb.dr ] ; 13 uses
  %.sroa.0105.0934.i.i = phi i8 [ -1, %.lr.ph.i.i ], [ %.sroa.0105.1.i.i, %bb.dr ] ; 13 uses
  %.sroa.0136.0933.i.i = phi i8 [ -1, %.lr.ph.i.i ], [ %.sroa.0136.1.i.i, %bb.dr ] ; 13 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 13 uses
  %i.hj = add nuw nsw i64 %i.hf, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2623
  %i.hk = load i8, ptr %i.hg, align 8, !range !36, !alias.scope !2624, !noalias !2625, !noundef !12
  switch i8 %i.hk, label %bb.co [
    i8 1, label %bb.cp
    i8 4, label %bb.cq
    i8 12, label %bb.cr
    i8 13, label %.invoke.i.i
    i8 14, label %bb.cs
    i8 15, label %.invoke1167.i.i
  ], !prof !40

bb.co:                                            ; preds = %bb.cn
  invoke fastcc void @_RNvMs9_NtNtNtCsbhNHOhwu1VQ_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorE12invalid_typeCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hg, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
          to label %_RINvXs3_NtCseMV7gzmhUlG_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1q_11PrintSchemaNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEB1s_.exit.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !2626

bb.cp:                                            ; preds = %bb.cn
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !2624, !noalias !2625, !noundef !12
  invoke void @_RINvYNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtBa_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB13_7Visitor8visit_u8NtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEBc_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f, i8 noundef %i.hm)
          to label %_RINvXs3_NtCseMV7gzmhUlG_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1q_11PrintSchemaNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEB1s_.exit.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !2626

bb.cq:                                            ; preds = %bb.cn
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !2624, !noalias !2625, !noundef !12
  invoke void @_RINvXNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB8_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_u64NtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEBa_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, i64 noundef %i.ho)
          to label %_RINvXs3_NtCseMV7gzmhUlG_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1q_11PrintSchemaNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEB1s_.exit.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !2626

bb.cr:                                            ; preds = %bb.cn
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.cr, %bb.cn
  %.sink1169.i.i = phi i64 [ 16, %bb.cr ], [ 8, %bb.cn ]
  %.sink1168.i.i = phi i64 [ 24, %bb.cr ], [ 16, %bb.cn ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sink1169.i.i
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !2624, !noalias !2625, !nonnull !12, !noundef !12
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sink1168.i.i
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !2624, !noalias !2625, !noundef !12
  invoke void @_RINvXNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB8_11PrintSchemaNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_strNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEBa_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hq, i64 noundef %i.hs)
          to label %_RINvXs3_NtCseMV7gzmhUlG_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs2bNgeUs5Jlc_6diesel6configs_1__NtB1q_11PrintSchemaNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content22ContentRefDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorEEB1s_.exit.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !2626

bb.cs:                                            ; preds = %bb.cn
  br label %.invoke1167.i.i
end_hunk_0
