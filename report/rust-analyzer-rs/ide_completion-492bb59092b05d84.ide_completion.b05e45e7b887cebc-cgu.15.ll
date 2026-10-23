Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.15?download=true
inline.NumInlined: 826
inline.NumDeleted: 426
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCsf8NQSppxkmK_14ide_completion7snippetNtB2_7Snippet3new:bb.a

bb.u:                                             ; preds = %bb.t
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !568
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #31
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !572

bb.v:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %i.bn, align 8, !noalias !568, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = icmp ule i64 %.sroa.4.0.copyload.pn.i.i, %i.bm
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !568
  %.not34.i = icmp eq i64 %.sroa.4.0.copyload.pn.i.i, 0
  br i1 %.not34.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !568
  store i64 %i.bm, ptr %i.a, align 8, !noalias !568
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bp, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !568
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.4.0.copyload.pn.i.i, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !568
  %i.br = invoke { ptr, i64 } @_RNvXsO_NtCsbSS6DM8SDEO_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCshzWfHUSfYae_4core7convert4FromNtB5_6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !572 ; 2 uses

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %.pn4.i.i, i64 %.sroa.4.0.copyload.pn.i.i, i1 false), !noalias !572
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.bs = extractvalue { ptr, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64 } %i.br, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !568
  br label %bb.s

bb.z:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = icmp eq ptr %.sroa.0.040.i, null
  %i.bw = icmp eq i64 %.sroa.6.0.i, 0
  %or.cond.i.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040.i) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.040.i, i64 noundef range(i64 1, 0) %.sroa.6.0.i, i64 noundef 1) #35, !noalias !572
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit.i

bb.ab:                                            ; preds = %.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !572
  unreachable

bb.ac:                                            ; preds = %bb.u
  unreachable

common.resume:                                    ; preds = %bb.ao, %bb.f, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn.pn44.i, %.thread.i ], [ %.pn, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %.loopexit.split-lp47.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.f
  %.pn.pn44.i = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %i.aj, %bb.j ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp47.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #32
          to label %common.resume unwind label %bb.ab, !noalias !572

_RNvNtCsf8NQSppxkmK_14ide_completion7snippet16validate_snippet.exit: ; preds = %bb.s
  %i.by = extractvalue { ptr, i64 } %i.bi, 0      ; 3 uses
  %i.bz = extractvalue { ptr, i64 } %i.bi, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !568
  %.sroa.025.0.copyload26 = load i64, ptr %i.g, align 8, !noalias !576 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !568
  %.not = icmp eq i64 %.sroa.025.0.copyload26, -1
  br i1 %.not, label %bb.ag, label %bb.af

bb.ad:                                            ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.am, %bb.ag, %bb.ad
  ret void

bb.af:                                            ; preds = %_RNvNtCsf8NQSppxkmK_14ide_completion7snippet16validate_snippet.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %.sroa.025.0.copyload26, ptr %i.l, align 8
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %4
  %i.cb = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSIBG_eEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB14_8adapters3map3MapIB2c_INtNtNtB16_5slice4iter4IterNtNtBa_6string6StringENvMB3b_B39_6as_strENvYReINtNtB16_7convert4IntoBQ_E4intoEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %3, ptr noundef nonnull %i.ca)
          to label %bb.ak unwind label %bb.aj     ; 2 uses

bb.ag:                                            ; preds = %_RNvNtCsf8NQSppxkmK_14ide_completion7snippet16validate_snippet.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 -1, ptr %0, align 8
  br label %bb.ae

bb.ah:                                            ; preds = %bb.al, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.al ], [ %i.ce, %bb.aj ]
  %i.cc = icmp eq ptr %.sroa.0.040.i, null
  %i.cd = icmp eq i64 %.sroa.6.0.i, 0
  %or.cond.i = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040.i) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.040.i, i64 noundef range(i64 1, 0) %.sroa.6.0.i, i64 noundef 1) #35
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit

bb.aj:                                            ; preds = %bb.af
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ak:                                            ; preds = %bb.af
  %i.cf = extractvalue { ptr, i64 } %i.cb, 0      ; 4 uses
  %i.cg = extractvalue { ptr, i64 } %i.cb, 1      ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  %i.ci = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSIBG_eEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB14_8adapters3map3MapIB2c_INtNtNtB16_5slice4iter4IterNtNtBa_6string6StringENvMB3b_B39_6as_strENvYReINtNtB16_7convert4IntoBQ_E4intoEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %1, ptr noundef nonnull %i.ch)
          to label %bb.am unwind label %bb.al     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.cf, i64 %i.cg) #32
  br label %bb.ah

bb.am:                                            ; preds = %bb.ak
  %i.ck = extractvalue { ptr, i64 } %i.ci, 0
  %i.cl = extractvalue { ptr, i64 } %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cf, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cg, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ck, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cl, ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.by, ptr %.sroa.85.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bz, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.040.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.0.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %11, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

bb.an:                                            ; preds = %bb.ao, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.ai, %bb.ah
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #32
          to label %bb.ao unwind label %bb.an

bb.ao:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.by, i64 %i.bz) #32
          to label %common.resume unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsf8NQSppxkmK_14ide_completion7snippetNtB2_7Snippet7imports(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8.i.i.i = alloca [32 x i8], align 4      ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 5 uses
  %i.c = alloca [20 x i8], align 4                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [20 x i8], align 4                ; 6 uses
  %.sroa.8.i.i = alloca [32 x i8], align 4        ; 6 uses
  %.sroa.02.sroa.5.i.i = alloca [16 x i8], align 4 ; 4 uses
  %.sroa.5.sroa.0.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 12 uses
  %i.i = alloca [108 x i8], align 4               ; 10 uses
  %i.j = alloca [88 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.07.i = alloca [40 x i8], align 8         ; 5 uses
  %.sroa.6.i = alloca [16 x i8], align 4          ; 5 uses
  %.sroa.11.i = alloca [16 x i8], align 8         ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 408 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noalias !618, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 628
  %i.t = load i8, ptr %i.s, align 4, !range !8, !noalias !618, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %3 = load i8, ptr %i.u, align 8, !range !8, !noalias !618, !noundef !4
  %4 = getelementptr inbounds nuw i8, ptr %i.r, i64 129
  %5 = load i8, ptr %4, align 1, !range !8, !noalias !618, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 130
  %i.w = load i8, ptr %i.v, align 2, !range !8, !noalias !618, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !618
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 0, 230584300921369396) %i.p, i1 noundef zeroext false, i64 noundef 8, i64 noundef 88), !noalias !618
  %i.x = load i64, ptr %i.k, align 8, !range !9, !noalias !618, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !10, !noalias !618, !noundef !4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !618
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #31, !noalias !617
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !618, !nonnull !4, !noundef !4
  %i.ae = icmp samesign ule i64 %i.p, %i.aa
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !618
  store i64 %i.aa, ptr %i.l, align 8, !noalias !618
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !noalias !618
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.ag, align 8, !noalias !618
  %.idx.i = mul nuw nsw i64 %i.p, 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.ai = icmp eq i64 %i.p, 0
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.8.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.8.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 444
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 400
  %.sroa.7.0.insert.ext.i = zext nneg i8 %i.t to i32
  %.sroa.7.0.insert.shift.i = shl nuw nsw i32 %.sroa.7.0.insert.ext.i, 24
  %.sroa.631.0.insert.ext.i = zext nneg i8 %i.w to i32
  %.sroa.631.0.insert.shift.i = shl nuw nsw i32 %.sroa.631.0.insert.ext.i, 16
  %.sroa.5.0.insert.ext.i = zext nneg i8 %5 to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext nneg i8 %3 to i32
  %.sroa.631.0.insert.insert.i = or disjoint i32 %.sroa.7.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.631.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.631.0.insert.shift.i
  %.sroa.411.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %.sroa.728.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.829.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.w, %.lr.ph.i
  %.sroa.0.036.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.aw, %bb.w ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !619
  invoke void @_RNvMs8_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_14SemanticsScope16resolve_mod_path(ptr noalias nofree noundef nonnull sret([108 x i8]) align 4 captures(none) dereferenceable(108) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.036.i)
          to label %.noexc.i unwind label %bb.r, !noalias !617

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.ax = load i32, ptr %i.al, align 4, !range !620, !alias.scope !621, !noalias !619, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.ax, -3
  br i1 %.not.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB1j_6OptionNtB1H_19ImportOrExternCrateEEEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.thread.i.i, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB1j_6OptionNtB1H_19ImportOrExternCrateEEEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.thread.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ax, -2
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.thread.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i: ; preds = %bb.e
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.ax, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  br i1 %.not3.i.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.thread.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.thread11.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.thread11.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.0..sroa_idx5.i.i.i.i.i.i, i64 32, i1 false), !alias.scope !625, !noalias !626
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.thread17.i.i

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.ay = load i32, ptr %i.am, align 4, !range !628, !alias.scope !629, !noalias !619, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ay, -2
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB1j_6OptionNtB1H_19ImportOrExternCrateEEEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.0..sroa_idx5.i.i.i, i64 32, i1 false), !alias.scope !630, !noalias !626
  %.not3.i.i.i = icmp eq i32 %i.ay, -1
  br i1 %.not3.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB1j_6OptionNtB1H_19ImportOrExternCrateEEEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.thread17.i.i

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB1j_6OptionNtB1H_19ImportOrExternCrateEEEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.i.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  br label %bb.f

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.thread17.i.i: ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.thread11.i.i.i
  %.sroa.0.19.i.ph.i.i = phi i32 [ %i.ax, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.thread11.i.i.i ], [ %i.ay, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i.i, i64 32, i1 false), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.g

bb.f:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB1j_6OptionNtB1H_19ImportOrExternCrateEEEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB1j_6OptionNtB1H_19ImportOrExternCrateEEEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion.exit.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.az = load i32, ptr %i.i, align 4, !range !628, !alias.scope !633, !noalias !619, !noundef !4 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.az, -2
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.0..sroa_idx4.i.i, i64 32, i1 false), !alias.scope !634, !noalias !619
  %.not.i.i = icmp eq i32 %i.az, -1
  br i1 %.not.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.thread17.i.i
  %.sroa.0.120.i.i = phi i32 [ %.sroa.0.19.i.ph.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.thread17.i.i ], [ %i.az, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !619
  store i32 %.sroa.0.120.i.i, ptr %i.c, align 4, !noalias !619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx5.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !619
  invoke void @_RNvXs12_NtCs8Xq8PKFYOms_3hir7from_idNtB8_8ItemInNsINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsE4from(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.c)
          to label %.noexc4.i unwind label %bb.r, !noalias !617

.noexc4.i:                                        ; preds = %bb.g
  %.sroa.017.0.copyload.i.i = load i32, ptr %i.f, align 4, !noalias !619 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !619
  %i.ba = load i32, ptr %i.an, align 8, !range !18, !noalias !619, !noundef !4
  %i.bb = load i32, ptr %i.ao, align 4, !noalias !619, !noundef !4
  %i.bc = load ptr, ptr %i.ap, align 8, !noalias !619, !nonnull !4, !align !6, !noundef !4
  %i.bd = load ptr, ptr %i.q, align 8, !noalias !619, !nonnull !4, !align !6, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 126
  %i.bf = load i8, ptr %i.be, align 2, !range !28, !noalias !635, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !619
  store i32 %.sroa.017.0.copyload.i.i, ptr %i.b, align 4, !noalias !619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.411.0..sroa_idx12.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i64 16, i1 false), !noalias !619
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module13find_use_pathNtB6_8ItemInNsECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, i32 noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @22, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.b, i8 noundef %i.bf, i32 noundef %.sroa.0.0.insert.insert.i)
          to label %.noexc5.i unwind label %bb.r, !noalias !617

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !619
  %i.bg = load i8, ptr %i.aq, align 8, !range !29, !noalias !619, !noundef !4
  %.not22.i.i = icmp eq i8 %i.bg, -1
  br i1 %.not22.i.i, label %bb.i, label %bb.h

.loopexit.i:                                      ; preds = %bb.f, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECsf8NQSppxkmK_14ide_completion.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !619
  br label %.thread.i

bb.h:                                             ; preds = %.noexc5.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !619
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i.i)
  %i.bh = invoke noundef i64 @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath3len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.k unwind label %bb.j, !noalias !635

bb.i:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !619
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.bp, %bb.m ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.body.i unwind label %bb.q, !noalias !635

bb.k:                                             ; preds = %bb.h
  %i.bj = icmp ugt i64 %i.bh, 1
  br i1 %i.bj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false), !noalias !619
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.bk = load i64, ptr %i.as, align 8, !alias.scope !637, !noalias !619, !noundef !4 ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 1                   ; 2 uses
  %i.bm = load ptr, ptr %i.h, align 8, !alias.scope !637, !noalias !619, !nonnull !4
  %i.bn = load i64, ptr %i.at, align 8, !alias.scope !637, !noalias !619
  %.sink11.i.i.i.i = select i1 %i.bl, ptr %i.bm, ptr %i.h ; 2 uses
  %.sink10.i.i.i.i = select i1 %i.bl, i64 %i.bn, i64 %i.bk
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sink10.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !638
  store i64 0, ptr %i.au, align 8, !noalias !638
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1y_8adapters6cloned6ClonedINtNtNtB1A_5slice4iter4IterBJ_EEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %.sink11.i.i.i.i, ptr noundef nonnull %i.bo)
          to label %bb.p unwind label %bb.m, !noalias !639

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.n, !noalias !639

bb.n:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !639
  unreachable

bb.o:                                             ; preds = %bb.p, %bb.k
  %.sroa.02.sroa.4.0.i.i = phi i32 [ %.sroa.017.0.copyload.i.i, %bb.p ], [ undef, %bb.k ]
  %.sroa.4.0.i.i = phi i32 [ %.sroa.017.0.copyload.i.i, %bb.p ], [ -1, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.07.i, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02.sroa.5.i.i, i64 16, i1 false), !noalias !640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i.i, i64 16, i1 false), !noalias !640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i)
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.s unwind label %bb.r, !noalias !617

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.02.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i64 16, i1 false), !noalias !619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i64 16, i1 false), !noalias !619
  br label %bb.o

bb.q:                                             ; preds = %.body.i.i
  %i.br = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMNtCsf8NQSppxkmK_14ide_completion7snippetNtB2_7Snippet7imports:bb.a
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bs, %bb.r ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #32
          to label %common.resume.i unwind label %bb.x, !noalias !617

.thread.i:                                        ; preds = %bb.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !618
  br label %.loopexit35.i

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !618
  %.not.i = icmp eq i32 %.sroa.4.0.i.i, -2
  br i1 %.not.i, label %.loopexit35.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.07.i, i64 40, i1 false), !noalias !618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.526.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.728.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, i64 16, i1 false), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  store i32 %.sroa.02.sroa.4.0.i.i, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !618
  store i32 %.sroa.4.0.i.i, ptr %.sroa.627.0..sroa_idx.i, align 4, !noalias !618
  store i8 1, ptr %.sroa.829.0..sroa_idx.i, align 8, !noalias !618
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE14extend_trustedINtNtCshzWfHUSfYae_4core6option8IntoIterBG_EECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.j)
          to label %bb.w unwind label %bb.r, !noalias !617

.loopexit35.i:                                    ; preds = %bb.s, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  store i64 -1, ptr %0, align 8, !alias.scope !617
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.u, !noalias !617

bb.u:                                             ; preds = %.loopexit35.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.v, !noalias !617

bb.v:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !617
  unreachable

common.resume.i:                                  ; preds = %bb.u, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bt, %bb.u ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %.loopexit35.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l), !noalias !617
  br label %_RNvNtCsf8NQSppxkmK_14ide_completion7snippet12import_edits.exit

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !618
  %i.bv = icmp eq ptr %i.aw, %i.ah
  br i1 %i.bv, label %._crit_edge.i, label %bb.d

bb.x:                                             ; preds = %.body.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !617
  unreachable

_RNvNtCsf8NQSppxkmK_14ide_completion7snippet12import_edits.exit: ; preds = %._crit_edge.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !618
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsf8NQSppxkmK_14ide_completion7snippetNtB2_7Snippet7snippet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  tail call fastcc void @_RINvMs3_NtCsbSS6DM8SDEO_5alloc3stre7replaceReECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2) #36
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsf8NQSppxkmK_14ide_completion(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a
  %i.c = sub i64 %1, %i.b
  %i.d = sub nsw i64 58, %i.a                     ; 2 uses
  %i.e = icmp ult i64 %i.d, 58
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.c
  %.sroa.0.0 = select i1 %i.h, ptr null, ptr %i.i
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children(ptr %.0.val) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !4 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 4
  %i.e = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.0.val)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 4 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE6fieldsCsf8NQSppxkmK_14ide_completion(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull align 8 %i.a, i32 noundef %2, i32 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 32, -9223372036854775808) i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsf8NQSppxkmK_14ide_completion(i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %0, 9223372036854775776
  tail call void @llvm.assume(i1 %i.a)
  %i.b = add nuw nsw i64 %0, 32
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvNtCsf8NQSppxkmK_14ide_completion6render11match_types(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1v_Cs8Xq8PKFYOms_3hirNtB6_4TypeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type16could_unify_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %. = select i1 %i.d, i8 0, i8 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %., %bb.b ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsf8NQSppxkmK_14ide_completion6render11render_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([360 x i8]) align 8 captures(none) dereferenceable(360) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [20 x i8], align 4                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 13 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [12 x i8], align 4                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [360 x i8], align 8               ; 11 uses
  %i.w = alloca [12 x i8], align 4                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [4 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i32 1, ptr %i.ab, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  store ptr %i.ad, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.ad, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.ai = load i8, ptr %i.ah, align 4, !range !8, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %3 = load i8, ptr %i.aj, align 8, !range !8, !noundef !4
  %4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 129
  %5 = load i8, ptr %4, align 1, !range !8, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 130
  %i.al = load i8, ptr %i.ak, align 2, !range !8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false)
  %.sroa.673.0.insert.ext = zext nneg i8 %i.ai to i32
  %.sroa.673.0.insert.shift = shl nuw nsw i32 %.sroa.673.0.insert.ext, 24
  %.sroa.572.0.insert.ext.a = zext nneg i8 %i.al to i32
  %.sroa.572.0.insert.shift.a = shl nuw nsw i32 %.sroa.572.0.insert.ext.a, 16
  %.sroa.471.0.insert.ext = zext nneg i8 %5 to i32
  %.sroa.471.0.insert.shift = shl nuw nsw i32 %.sroa.471.0.insert.ext, 8
  %.sroa.070.0.insert.ext = zext nneg i8 %3 to i32
  %.sroa.572.0.insert.insert = or disjoint i32 %.sroa.673.0.insert.shift, %.sroa.070.0.insert.ext
  %.sroa.471.0.insert.insert = or disjoint i32 %.sroa.572.0.insert.insert, %.sroa.471.0.insert.shift
  %.sroa.070.0.insert.insert = or disjoint i32 %.sroa.471.0.insert.insert, %.sroa.572.0.insert.shift.a ; 3 uses
  call void @_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr15gen_source_code(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.am, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @33, i32 noundef %.sroa.070.0.insert.insert, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ao = load i64, ptr %i.x, align 8, !range !14, !noundef !4 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.437.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.ao, ptr %i.y, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %.val = load ptr, ptr %i.as, align 8, !noundef !4 ; 10 uses
  %.not.i109 = icmp eq ptr %.val, null
  br i1 %.not.i109, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 7 uses
  %i.au = load i32, ptr %i.at, align 4, !noundef !4 ; 3 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.d, label %bb.f, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #31
          to label %.noexc unwind label %.thread285

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 -1, ptr %0, align 8
  br label %bb.bj

.thread285:                                       ; preds = %bb.av, %bb.h, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread277

bb.f:                                             ; preds = %bb.c
  %i.aw = add nuw i32 %i.au, 1                    ; 2 uses
  store i32 %i.aw, ptr %i.at, align 4
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.g, label %bb.k, !prof !5

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #31
          to label %.noexc110 unwind label %bb.j

.noexc110:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.ay = invoke { i32, i32 } @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext12source_range(ptr noundef nonnull align 8 %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit136 unwind label %.thread285

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit136: ; preds = %bb.av, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit131, %bb.h
  %.pn88.pn = phi { i32, i32 } [ %i.ay, %bb.h ], [ %.pn88302, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit131 ], [ %.pn88302, %bb.av ] ; 2 uses
  %.sroa.019.0 = extractvalue { i32, i32 } %.pn88.pn, 0 ; 2 uses
  %.sroa.5.0 = extractvalue { i32, i32 } %.pn88.pn, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 630
  %i.ba = load i8, ptr %i.az, align 2, !range !26, !noundef !4
  call void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_14CompletionItem3newNtB6_18CompletionItemKindNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(360) %i.v, i8 noundef 36, i32 noundef %.sroa.019.0, i32 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u, i8 noundef %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false)
  invoke void @_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr15gen_source_code(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.am, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @34, i32 noundef %.sroa.070.0.insert.insert, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.q)
          to label %bb.ax unwind label %bb.aw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.p, %bb.o, %bb.y, %.body, %bb.z, %bb.j
  %.pn90 = phi { ptr, i32 } [ %i.be, %bb.j ], [ %.pn, %bb.z ], [ %.pn, %.body ], [ %.pn, %bb.y ], [ %i.bl, %bb.o ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bb = load i32, ptr %i.at, align 4, !noundef !4
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.at, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.i, label %.thread277

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #34
          to label %.thread277 unwind label %bb.ca

bb.j:                                             ; preds = %bb.aq, %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit

bb.k:                                             ; preds = %bb.f
  %i.bf = add nuw i32 %i.au, 2
  store i32 %i.bf, ptr %i.at, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtB29_3ast9generated5nodes4PathENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NvYB3C_NtB3I_7AstNode4castE0E0Csf8NQSppxkmK_14ide_completion.exit.i
  %.val.i.i.i1315.i = phi ptr [ %.val.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtB29_3ast9generated5nodes4PathENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NvYB3C_NtB3I_7AstNode4castE0E0Csf8NQSppxkmK_14ide_completion.exit.i ], [ %.val, %bb.k ] ; 17 uses
  %i.bg = getelementptr i8, ptr %.val.i.i.i1315.i, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !650, !noundef !4 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !650, !noundef !4 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.n, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.bk = add nuw i32 %i.bi, 1
  store i32 %i.bk, ptr %i.bh, align 4, !noalias !650
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #31
          to label %.noexc.i.i unwind label %bb.o, !noalias !650

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i1315.i, i64 48 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !650, !noundef !4
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4, !noalias !650
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i1315.i) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.q, !noalias !650

bb.q:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !650
  unreachable

bb.r:                                             ; preds = %bb.m, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !651
  store ptr %.val.i.i.i1315.i, ptr %i.c, align 8, !noalias !651
  %i.br = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.u unwind label %bb.s, !noalias !651

bb.s:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i1315.i, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !651, !noundef !4
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !noalias !651
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i1315.i) #34
          to label %.body unwind label %bb.x, !noalias !651

bb.u:                                             ; preds = %bb.r
  %i.bx = icmp eq i16 %i.br, 260
  br i1 %i.bx, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i1315.i, i64 48 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !noalias !651, !noundef !4
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.by, align 8, !noalias !651
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.w, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtB29_3ast9generated5nodes4PathENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NvYB3C_NtB3I_7AstNode4castE0E0Csf8NQSppxkmK_14ide_completion.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i1315.i) #34
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtB29_3ast9generated5nodes4PathENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NvYB3C_NtB3I_7AstNode4castE0E0Csf8NQSppxkmK_14ide_completion.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !651
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtB29_3ast9generated5nodes4PathENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NvYB3C_NtB3I_7AstNode4castE0E0Csf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !651
  br i1 %.not.i.i.i.i.i, label %.thread294, label %.lr.ph.i

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ar, %bb.as, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.bs, %bb.t ], [ %i.du, %bb.as ], [ %i.du, %bb.ar ], [ %lpad.loopexit.split-lp373, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.cd = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.cd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit, label %bb.y

bb.y:                                             ; preds = %.body
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !noundef !4
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 4
end_hunk_1
