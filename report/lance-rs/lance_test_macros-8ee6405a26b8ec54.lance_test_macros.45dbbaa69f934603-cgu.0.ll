Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_test_macros-8ee6405a26b8ec54.lance_test_macros.45dbbaa69f934603-cgu.0?download=true
inline.NumInlined: 1500
inline.NumDeleted: 499
begin_hunk_0_@_RNvCs5ZQXtie4Wk1_17lance_test_macros14expand_wrapper:bb.a
bb.mc:                                            ; preds = %bb.ma
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.av)
          to label %bb.md unwind label %bb.le

bb.md:                                            ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ba)
          to label %bb.me unwind label %bb.kn

bb.me:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 3)
          to label %bb.mf unwind label %bb.kn

bb.mf:                                            ; preds = %bb.me
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 6)
          to label %bb.mg unwind label %bb.kn

bb.mg:                                            ; preds = %bb.mf
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private7push_eq(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.mh unwind label %bb.kn

bb.mh:                                            ; preds = %bb.mg
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 4)
          to label %bb.mi unwind label %bb.kn

bb.mi:                                            ; preds = %bb.mh
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private11push_colon2(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.mj unwind label %bb.kn

bb.mj:                                            ; preds = %bb.mi
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 4)
          to label %bb.mk unwind label %bb.kn

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at)
          to label %bb.ml unwind label %bb.kn

bb.ml:                                            ; preds = %bb.mk
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.at)
          to label %bb.mm unwind label %bb.kn

bb.mm:                                            ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private9push_semi(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.mn unwind label %bb.kn

bb.mn:                                            ; preds = %bb.mm
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 9)
          to label %bb.mo unwind label %bb.kn

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ar)
          to label %bb.mq unwind label %bb.kn

.loopexit106:                                     ; preds = %bb.mt, %.noexc56
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mp

.loopexit.split-lp107:                            ; preds = %bb.ms
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mp

bb.mp:                                            ; preds = %.loopexit.split-lp107, %.loopexit106
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit108, %.loopexit106 ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp107 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.ar) #25
          to label %bb.km unwind label %bb.al

bb.mq:                                            ; preds = %bb.mo
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val.i43 = load ptr, ptr %i.fw, align 8, !alias.scope !3663, !noalias !3664, !nonnull !38, !noundef !38 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.val1.i44 = load i64, ptr %i.fx, align 8, !alias.scope !3663, !noalias !3664, !noundef !38
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %.val.i43, i64 %.val1.i44 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !3665, !noalias !3664, !align !37, !noundef !38
  br label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer

_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer: ; preds = %bb.ms, %bb.mq
  %.sroa.4.0.i50.ph = phi ptr [ null, %bb.ms ], [ %i.ga, %bb.mq ] ; 2 uses
  %.sroa.0.0.i51.ph = phi ptr [ %i.fy, %bb.ms ], [ %.val.i43, %bb.mq ]
  br label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i

_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer, %.noexc56
  %.sroa.0.0.i51 = phi ptr [ %i.gd, %.noexc56 ], [ %.sroa.0.0.i51.ph, %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i51) ]
  %i.gb = icmp eq ptr %.sroa.0.0.i51, %i.fy
  br i1 %i.gb, label %bb.mr, label %bb.mt

bb.mr:                                            ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %.not.i.i.i.i.i54 = icmp eq ptr %.sroa.4.0.i50.ph, null
  br i1 %.not.i.i.i.i.i54, label %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsBv_NtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.i50.ph, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer unwind label %.loopexit.split-lp107

bb.mt:                                            ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i51, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.noexc56 unwind label %.loopexit106

.noexc56:                                         ; preds = %bb.mt
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i51, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i51, i64 40
  invoke void @_RNvXsas_NtCsb2PI9uRnNxu_3syn5tokenNtB6_5CommaNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.gc, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %.loopexit106

_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsBv_NtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.mr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.as)
          to label %bb.mu unwind label %bb.kn

bb.mu:                                            ; preds = %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsBv_NtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.mv unwind label %bb.kn

bb.mv:                                            ; preds = %bb.mu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bg)
          to label %bb.mw unwind label %.loopexit.split-lp

bb.mw:                                            ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bm)
          to label %bb.mx unwind label %bb.jn

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bo)
          to label %bb.my unwind label %bb.aq

bb.my:                                            ; preds = %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bp)
          to label %bb.mz unwind label %bb.am

bb.mz:                                            ; preds = %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.br)
          to label %bb.na unwind label %bb.e

bb.na:                                            ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item6ItemFnECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(352) %2)
          to label %bb.nd unwind label %bb.nc

bb.nb:                                            ; preds = %bb.nc, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.ge, %bb.nc ], [ %.pn16, %bb.d ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %1) #25
          to label %bb.ne unwind label %bb.al

bb.nc:                                            ; preds = %bb.na
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

bb.nd:                                            ; preds = %bb.na
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.ne:                                            ; preds = %bb.nb
  resume { ptr, i32 } %.pn18
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtCsb2PI9uRnNxu_3syn5token5CommaEE8grow_oneCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !38
  %i.b = tail call fastcc { i64, i64 } @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5ZQXtie4Wk1_17lance_test_macros(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #3 {
bb.a:
  %i.a = mul nuw nsw i64 %1, 40                   ; 4 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !3666

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #24
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #24
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.k, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !46, !noundef !38 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %.sroa.0.0.i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %.sroa.0.0.i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %.sroa.0.0.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %.sroa.0.0.i14)
  %i.f = load i64, ptr %i.a, align 8, !range !59, !noundef !38
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !3667, !noundef !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !38, !noundef !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %.sroa.0.0.i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0.0.i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsA_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8, !alias.scope !3673, !noalias !3674
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.b, align 8, !alias.scope !3673, !noalias !3674, !align !37, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3675
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 24, i64 noundef 8) #24, !noalias !3675 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !79

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !noalias !3675
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x ptr> %i.a, ptr %i.c, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.val2.i, ptr %.sroa.33.0..sroa_idx, align 8
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @66, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3685, !nonnull !38, !noundef !38 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3685, !nonnull !38, !noundef !38
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.e, ptr %0, align 8, !alias.scope !3685
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3686, !noalias !3687, !align !37, !noundef !38
  store ptr null, ptr %i.f, align 8, !alias.scope !3686, !noalias !3687
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.g, %bb.b ], [ %i.a, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit ]
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3697, !align !37, !noundef !38 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !3697
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3698, !noalias !3699, !nonnull !38, !noundef !38 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !3698, !noalias !3699, !nonnull !38, !noundef !38
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -104 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !3698, !noalias !3699
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 177372539170284152) i64 @_RNvXsy_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3702, !nonnull !38, !noundef !38
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3702, !nonnull !38, !noundef !38
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !align !37, !noundef !38
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3707, !nonnull !38, !noundef !38
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3707, !nonnull !38, !noundef !38
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !3708, !align !37, !noundef !38
  %i.i = icmp ne ptr %.val.i, null
  %i.j = zext i1 %i.i to i64
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp eq i64 %i.k, 0
  ret i1 %i.l
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!3466 = !{!3327, !3325, !3323, !3321, !3298, !3297, !3295, !3293, !3291, !3290, !3288, !3287}
!3467 = !{!3333, !3331, !3329, !3321, !3298, !3297, !3295, !3293, !3291, !3290, !3288, !3287}
!3468 = !{!3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3469 = !{!3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3470 = !{!3340, !3339, !3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3471 = !{!3340, !3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3472 = !{i64 -1, i64 2}
!3473 = !{!3342}
!3474 = !{!3343, !3340, !3339, !3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3475 = !{!3345}
!3476 = !{!3346, !3340, !3339, !3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3477 = !{!3339, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3478 = !{!3348}
!3479 = !{!3350}
!3480 = !{!3352}
!3481 = !{!3352, !3350, !3348, !3354}
!3482 = !{!3358, !3356, !3352, !3350, !3348, !3340, !3339, !3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3483 = !{!3360}
!3484 = !{!3362}
!3485 = !{!3364}
!3486 = !{!3364, !3362, !3360, !3354}
!3487 = !{!3368, !3366, !3364, !3362, !3360, !3340, !3339, !3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3488 = !{!3370}
!3489 = !{!3372}
!3490 = !{!3374}
!3491 = !{!3374, !3372, !3370, !3376}
!3492 = !{!3380, !3378, !3374, !3372, !3370, !3340, !3339, !3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3493 = !{!3382}
!3494 = !{!3384}
!3495 = !{!3386}
!3496 = !{!3386, !3384, !3382, !3376}
!3497 = !{!3390, !3388, !3386, !3384, !3382, !3340, !3339, !3337, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3498 = !{!3392}
!3499 = !{!3394}
!3500 = !{!3394, !3392}
!3501 = !{!3396}
!3502 = !{!3394, !3392, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3503 = !{!3396, !3394, !3392, !3335, !3295, !3293, !3291, !3290, !3288, !3287}
!3504 = !{!3400, !3398}
!3505 = !{!3404, !3402}
!3506 = !{!3407}
!3507 = !{!3409}
!3508 = !{!3409, !3407}
!3509 = !{!3409, !3407, !3295, !3293, !3291, !3290, !3288, !3287}
!3510 = !{!3413}
!3511 = !{!3415}
!3512 = !{!3415, !3413, !3407}
!3513 = !{!3415, !3413, !3407, !3295, !3293, !3291, !3290, !3288, !3287}
!3514 = !{!3421, !3419, !3413, !3407}
!3515 = !{!3423}
!3516 = !{!3423, !3413, !3407}
!3517 = !{!3423, !3413, !3407, !3295, !3293, !3291, !3290, !3288, !3287}
!3518 = !{!3419}
!3519 = !{!3421}
!3520 = !{!3421, !3419, !3413, !3407, !3295, !3293, !3291, !3290, !3288, !3287}
!3521 = !{!3413, !3407}
!3522 = !{!3428}
!3523 = !{!3430}
!3524 = !{!3430, !3428}
!3525 = !{!3431, !3291, !3290, !3288, !3287}
!3526 = !{!3430, !3431, !3428, !3291, !3290, !3288, !3287}
!3527 = !{!3435}
!3528 = !{!3435, !3428}
!3529 = !{!3435, !3431, !3428, !3291, !3290, !3288, !3287}
!3530 = !{!3437}
!3531 = !{!3439}
!3532 = !{!3439, !3441, !3437, !3428}
!3533 = !{!3443, !3442, !3431, !3291, !3290, !3288, !3287}
!3534 = !{!3439, !3443, !3441, !3442, !3437, !3431, !3428, !3291, !3290, !3288, !3287}
!3535 = !{!3449, !3447, !3441, !3437, !3428}
!3536 = !{!3450, !3443, !3442, !3431, !3291, !3290, !3288, !3287}
!3537 = !{!3447}
!3538 = !{!3449}
!3539 = !{!3449, !3450, !3447, !3443, !3441, !3442, !3437, !3431, !3428, !3291, !3290, !3288, !3287}
!3540 = !{!3454, !3447, !3441, !3437, !3428}
!3541 = !{!3455, !3450, !3443, !3442, !3431, !3291, !3290, !3288, !3287}
!3542 = !{!3454}
!3543 = !{!3454, !3455, !3450, !3447, !3443, !3441, !3442, !3437, !3431, !3428, !3291, !3290, !3288, !3287}
!3544 = !{!3441}
!3545 = !{!3458}
!3546 = !{!3458, !3441, !3437, !3428}
!3547 = !{!3458, !3443, !3441, !3442, !3437, !3431, !3428, !3291, !3290, !3288, !3287}
!3548 = !{!3441, !3437, !3428}
!3549 = !{!3454, !3447, !3441, !3442, !3437, !3431, !3428, !3291, !3290, !3288, !3287}
!3550 = !{!3442, !3437, !3431, !3428, !3291, !3290, !3288, !3287}
!3551 = !{!3290, !3287}
!3552 = distinct !{!3552, !"_RNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args"}
!3553 = distinct !{!3553, !3552, !"_RNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args: argument 1"}
!3554 = distinct !{!3554, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterCs5ZQXtie4Wk1_17lance_test_macros"}
!3555 = distinct !{!3555, !3554, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3556 = distinct !{!3556, !3552, !"_RNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args: argument 0"}
!3557 = distinct !{!3557, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4item5FnArgEE6as_refCs5ZQXtie4Wk1_17lance_test_macros"}
!3558 = distinct !{!3558, !3557, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4item5FnArgEE6as_refCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3559 = distinct !{!3559, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtCsb2PI9uRnNxu_3syn5drops6NoDropINtNtBJ_10punctuated11PrivateIterNtNtBJ_4item5FnArgNtNtBJ_5token5CommaEEE3newCs5ZQXtie4Wk1_17lance_test_macros"}
!3560 = distinct !{!3560, !3559, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtCsb2PI9uRnNxu_3syn5drops6NoDropINtNtBJ_10punctuated11PrivateIterNtNtBJ_4item5FnArgNtNtBJ_5token5CommaEEE3newCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3561 = distinct !{!3561, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE3newCs5ZQXtie4Wk1_17lance_test_macros"}
!3562 = distinct !{!3562, !3561, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE3newCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3563 = distinct !{!3563, !"_RINvXs4_NtCsb2PI9uRnNxu_3syn10punctuatedINtB6_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB21_8adapters3map3MapINtB6_4IterNtNtB8_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0EEB48_"}
!3564 = distinct !{!3564, !3563, !"_RINvXs4_NtCsb2PI9uRnNxu_3syn10punctuatedINtB6_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB21_8adapters3map3MapINtB6_4IterNtNtB8_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0EEB48_: argument 0"}
!3565 = distinct !{!3565, !"_RINvXs5_NtCsb2PI9uRnNxu_3syn10punctuatedINtB6_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBU_E6extendINtNtNtB21_8adapters3map3MapINtB6_4IterNtNtB8_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0EEB3Y_"}
!3566 = distinct !{!3566, !3565, !"_RINvXs5_NtCsb2PI9uRnNxu_3syn10punctuatedINtB6_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBU_E6extendINtNtNtB21_8adapters3map3MapINtB6_4IterNtNtB8_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0EEB3Y_: argument 0"}
!3567 = distinct !{!3567, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3568 = distinct !{!3568, !3567, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3569 = distinct !{!3569, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3570 = distinct !{!3570, !3569, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3571 = distinct !{!3571, !3565, !"_RINvXs5_NtCsb2PI9uRnNxu_3syn10punctuatedINtB6_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBU_E6extendINtNtNtB21_8adapters3map3MapINtB6_4IterNtNtB8_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0EEB3Y_: argument 1"}
!3572 = distinct !{!3572, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3573 = distinct !{!3573, !3572, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3574 = distinct !{!3574, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3575 = distinct !{!3575, !3574, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3576 = distinct !{!3576, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3577 = distinct !{!3577, !3576, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3578 = distinct !{!3578, !3572, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3579 = distinct !{!3579, !"_RNCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0B3_"}
!3580 = distinct !{!3580, !3579, !"_RNCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0B3_: argument 1"}
!3581 = distinct !{!3581, !"_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB11_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_"}
!3582 = distinct !{!3582, !3581, !"_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB11_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_: argument 0"}
!3583 = distinct !{!3583, !3579, !"_RNCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0B3_: argument 0"}
!3584 = distinct !{!3584, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE4pushCs5ZQXtie4Wk1_17lance_test_macros"}
!3585 = distinct !{!3585, !3584, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE4pushCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3586 = distinct !{!3586, !3584, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE4pushCs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3587 = distinct !{!3587, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE10push_punctCs5ZQXtie4Wk1_17lance_test_macros"}
!3588 = distinct !{!3588, !3587, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE10push_punctCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3589 = distinct !{!3589, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtCsb2PI9uRnNxu_3syn5token5CommaEE4pushCs5ZQXtie4Wk1_17lance_test_macros"}
!3590 = distinct !{!3590, !3589, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtCsb2PI9uRnNxu_3syn5token5CommaEE4pushCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3591 = distinct !{!3591, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtCsb2PI9uRnNxu_3syn5token5CommaEE8push_mutCs5ZQXtie4Wk1_17lance_test_macros"}
!3592 = distinct !{!3592, !3591, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtCsb2PI9uRnNxu_3syn5token5CommaEE8push_mutCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3593 = distinct !{!3593, !3589, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtCsb2PI9uRnNxu_3syn5token5CommaEE4pushCs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3594 = distinct !{!3594, !3591, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtCsb2PI9uRnNxu_3syn5token5CommaEE8push_mutCs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3595 = distinct !{!3595, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE10push_valueCs5ZQXtie4Wk1_17lance_test_macros"}
!3596 = distinct !{!3596, !3595, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE10push_valueCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3597 = distinct !{!3597, !3595, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE10push_valueCs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3598 = distinct !{!3598, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtCs7xemmV0rX3c_11proc_macro211TokenStreamE3newCs5ZQXtie4Wk1_17lance_test_macros"}
!3599 = distinct !{!3599, !3598, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtCs7xemmV0rX3c_11proc_macro211TokenStreamE3newCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3600 = distinct !{!3600, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtCs7xemmV0rX3c_11proc_macro211TokenStreamEE4takeCs5ZQXtie4Wk1_17lance_test_macros"}
!3601 = distinct !{!3601, !3600, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtCs7xemmV0rX3c_11proc_macro211TokenStreamEE4takeCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3602 = distinct !{!3602, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3603 = distinct !{!3603, !3602, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3604 = distinct !{!3604, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3605 = distinct !{!3605, !3604, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3606 = distinct !{!3606, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3607 = distinct !{!3607, !3606, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3608 = distinct !{!3608, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3609 = distinct !{!3609, !3608, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3610 = distinct !{!3610, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3611 = distinct !{!3611, !3610, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3612 = distinct !{!3612, !3606, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3613 = distinct !{!3613, !"_RNvCs5ZQXtie4Wk1_17lance_test_macros19expand_tracing_init"}
!3614 = distinct !{!3614, !3613, !"_RNvCs5ZQXtie4Wk1_17lance_test_macros19expand_tracing_init: argument 0"}
!3615 = distinct !{!3615, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE5pairsCs5ZQXtie4Wk1_17lance_test_macros"}
!3616 = distinct !{!3616, !3615, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE5pairsCs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3617 = distinct !{!3617, !3615, !"_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtB4_5token5CommaE5pairsCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3618 = distinct !{!3618, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtCs7xemmV0rX3c_11proc_macro211TokenStreamEE6as_refCs5ZQXtie4Wk1_17lance_test_macros"}
!3619 = distinct !{!3619, !3618, !"_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtCs7xemmV0rX3c_11proc_macro211TokenStreamEE6as_refCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3620 = !{i32 0, i32 2}
!3621 = !{!3553}
!3622 = !{!3555}
!3623 = !{!3555, !3553}
!3624 = !{!3556}
!3625 = !{!3558, !3555, !3553}
!3626 = !{!3560, !3555, !3556, !3553}
!3627 = !{!3555, !3556, !3553}
!3628 = !{!3556, !3553}
!3629 = !{!3562}
!3630 = !{!3564, !3556, !3553}
!3631 = !{!3566}
!3632 = !{!3570, !3568}
!3633 = !{!3566, !3571, !3564, !3556, !3553}
!3634 = !{!3577, !3575, !3573, !3568}
!3635 = !{!3578, !3566, !3571, !3564, !3556, !3553}
!3636 = !{!3580}
!3637 = !{!3583, !3582, !3566, !3571, !3564, !3556, !3553}
!3638 = !{!3583, !3580, !3582, !3566, !3571, !3564, !3556, !3553}
!3639 = !{!3580, !3582, !3566, !3571, !3564, !3556, !3553}
!3640 = !{!3566, !3564, !3556, !3553}
!3641 = !{!3585}
!3642 = !{!3585, !3566, !3571, !3564, !3556, !3553}
!3643 = !{!3585, !3586, !3566, !3571, !3564, !3556, !3553}
!3644 = !{!3592, !3590, !3588, !3585, !3586, !3566, !3571, !3564, !3556, !3553}
!3645 = !{!3592, !3590, !3588, !3585, !3566}
!3646 = !{!3594, !3593, !3586, !3571, !3564, !3556, !3553}
!3647 = !{!3588, !3585, !3586, !3566, !3571, !3564, !3556, !3553}
!3648 = !{!3596}
!3649 = !{!3596, !3585, !3586, !3566, !3571, !3564, !3556, !3553}
!3650 = !{!3599, !3596, !3597, !3585, !3586, !3566, !3571, !3564, !3556, !3553}
!3651 = !{!3596, !3597, !3585, !3586, !3566, !3571, !3564, !3556, !3553}
!3652 = !{!3588}
!3653 = !{!3601, !3588, !3585, !3566}
!3654 = !{!3586, !3571, !3564, !3556, !3553}
!3655 = !{!3590}
!3656 = !{!3592}
!3657 = !{!3596, !3585, !3566}
!3658 = !{!3597, !3586, !3571, !3564, !3556, !3553}
!3659 = !{!3605, !3603}
!3660 = !{!3611, !3609, !3607, !3603}
!3661 = !{!3612, !3566, !3571, !3564, !3556, !3553}
!3662 = !{!3614}
!3663 = !{!3616}
!3664 = !{!3617}
!3665 = !{!3619, !3616}
!3666 = !{!"branch_weights", i32 2002, i32 2000}
!3667 = !{i64 0, i64 -9223372036854775807}
!3668 = distinct !{!3668, !"_RNvXsz_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs5ZQXtie4Wk1_17lance_test_macros"}
!3669 = distinct !{!3669, !3668, !"_RNvXsz_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3670 = distinct !{!3670, !3668, !"_RNvXsz_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3671 = distinct !{!3671, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtCsb2PI9uRnNxu_3syn5drops6NoDropINtNtBJ_10punctuated11PrivateIterNtNtBJ_4item5FnArgNtNtBJ_5token5CommaEEE3newCs5ZQXtie4Wk1_17lance_test_macros"}
!3672 = distinct !{!3672, !3671, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtCsb2PI9uRnNxu_3syn5drops6NoDropINtNtBJ_10punctuated11PrivateIterNtNtBJ_4item5FnArgNtNtBJ_5token5CommaEEE3newCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3673 = !{!3669}
!3674 = !{!3670}
!3675 = !{!3672}
!3676 = distinct !{!3676, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3677 = distinct !{!3677, !3676, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3678 = distinct !{!3678, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3679 = distinct !{!3679, !3678, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3680 = distinct !{!3680, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3681 = distinct !{!3681, !3680, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3682 = distinct !{!3682, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3683 = distinct !{!3683, !3682, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3684 = distinct !{!3684, !3678, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3685 = !{!3677}
!3686 = !{!3683, !3681, !3679}
!3687 = !{!3684}
!3688 = distinct !{!3688, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3689 = distinct !{!3689, !3688, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3690 = distinct !{!3690, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3691 = distinct !{!3691, !3690, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3692 = distinct !{!3692, !"_RNCNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3693 = distinct !{!3693, !3692, !"_RNCNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3694 = distinct !{!3694, !"_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros"}
!3695 = distinct !{!3695, !3694, !"_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3696 = distinct !{!3696, !3690, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3697 = !{!3689}
!3698 = !{!3695, !3693, !3691}
!3699 = !{!3696}
!3700 = distinct !{!3700, !"_RNvXs2I_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros"}
!3701 = distinct !{!3701, !3700, !"_RNvXs2I_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3702 = !{!3701}
!3703 = distinct !{!3703, !"_RNvXsy_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros"}
!3704 = distinct !{!3704, !3703, !"_RNvXsy_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3705 = distinct !{!3705, !"_RNvXs2I_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros"}
!3706 = distinct !{!3706, !3705, !"_RNvXs2I_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3707 = !{!3706, !3704}
!3708 = !{!3704}
!3709 = distinct !{!3709, !"_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros"}
!3710 = distinct !{!3710, !3709, !"_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3711 = distinct !{!3711, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3712 = distinct !{!3712, !3711, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3713 = distinct !{!3713, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3714 = distinct !{!3714, !3713, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3715 = distinct !{!3715, !"_RNCNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3716 = distinct !{!3716, !3715, !"_RNCNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3717 = distinct !{!3717, !"_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros"}
!3718 = distinct !{!3718, !3717, !"_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3719 = distinct !{!3719, !3713, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3720 = distinct !{!3720, !80, !81, !82}
!3721 = distinct !{!3721, !80, !81}
!3722 = !{!3712, !3710}
!3723 = !{!3718, !3716, !3714, !3710}
!3724 = !{!3719}
!3725 = distinct !{!3725, !"_RNvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs5ZQXtie4Wk1_17lance_test_macros"}
!3726 = distinct !{!3726, !3725, !"_RNvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3727 = distinct !{!3727, !"_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros"}
!3728 = distinct !{!3728, !3727, !"_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3729 = distinct !{!3729, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3730 = distinct !{!3730, !3729, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3731 = distinct !{!3731, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3732 = distinct !{!3732, !3731, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3733 = distinct !{!3733, !"_RNCNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3734 = distinct !{!3734, !3733, !"_RNCNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3735 = distinct !{!3735, !"_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros"}
!3736 = distinct !{!3736, !3735, !"_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3737 = distinct !{!3737, !3731, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3738 = distinct !{!3738, !80, !81, !82}
!3739 = distinct !{!3739, !"_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros"}
!3740 = distinct !{!3740, !3739, !"_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3741 = distinct !{!3741, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3742 = distinct !{!3742, !3741, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3743 = distinct !{!3743, !80, !81}
!3744 = distinct !{!3744, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3745 = distinct !{!3745, !3744, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3746 = distinct !{!3746, !"_RNCNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3747 = distinct !{!3747, !3746, !"_RNCNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_back0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3748 = distinct !{!3748, !"_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros"}
!3749 = distinct !{!3749, !3748, !"_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3750 = distinct !{!3750, !3744, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3751 = !{!3726}
!3752 = !{!3730, !3728, !3726}
!3753 = !{!3736, !3734, !3732, !3728, !3726}
!3754 = !{!3737}
!3755 = !{!3742, !3740}
!3756 = !{!3749, !3747, !3745, !3740}
!3757 = !{!3750}
!3758 = distinct !{!3758, !"_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs5ZQXtie4Wk1_17lance_test_macros"}
!3759 = distinct !{!3759, !3758, !"_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3760 = distinct !{!3760, !"_RINvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB8_4item5FnArgNtNtB8_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1z_3num7nonzero7NonZerojENCNvXs_NvB1r_10advance_byB3_NtB39_13SpecAdvanceBy15spec_advance_by0INtNtB1z_6option6OptionB2v_EECs5ZQXtie4Wk1_17lance_test_macros"}
!3761 = distinct !{!3761, !3760, !"_RINvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB8_4item5FnArgNtNtB8_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1z_3num7nonzero7NonZerojENCNvXs_NvB1r_10advance_byB3_NtB39_13SpecAdvanceBy15spec_advance_by0INtNtB1z_6option6OptionB2v_EECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3762 = distinct !{!3762, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3763 = distinct !{!3763, !3762, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3764 = distinct !{!3764, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3765 = distinct !{!3765, !3764, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3766 = distinct !{!3766, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3767 = distinct !{!3767, !3766, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3768 = distinct !{!3768, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3769 = distinct !{!3769, !3768, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3770 = distinct !{!3770, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3771 = distinct !{!3771, !3770, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3772 = distinct !{!3772, !3766, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3773 = !{!3765, !3763, !3761, !3759}
!3774 = !{!3761, !3759}
!3775 = !{!3771, !3769, !3767, !3763, !3761, !3759}
!3776 = !{!3772}
!3777 = distinct !{!3777, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3778 = distinct !{!3778, !3777, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3779 = distinct !{!3779, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3780 = distinct !{!3780, !3779, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3781 = distinct !{!3781, !"_RNvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs5ZQXtie4Wk1_17lance_test_macros"}
!3782 = distinct !{!3782, !3781, !"_RNvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3783 = distinct !{!3783, !"_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs5ZQXtie4Wk1_17lance_test_macros"}
!3784 = distinct !{!3784, !3783, !"_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB1i_4item5FnArgNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3785 = distinct !{!3785, !"_RINvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB8_4item5FnArgNtNtB8_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1z_3num7nonzero7NonZerojENCNvXs_NvB1r_10advance_byB3_NtB39_13SpecAdvanceBy15spec_advance_by0INtNtB1z_6option6OptionB2v_EECs5ZQXtie4Wk1_17lance_test_macros"}
!3786 = distinct !{!3786, !3785, !"_RINvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB8_4item5FnArgNtNtB8_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1z_3num7nonzero7NonZerojENCNvXs_NvB1r_10advance_byB3_NtB39_13SpecAdvanceBy15spec_advance_by0INtNtB1z_6option6OptionB2v_EECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3787 = distinct !{!3787, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3788 = distinct !{!3788, !3787, !"_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3789 = distinct !{!3789, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3790 = distinct !{!3790, !3789, !"_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3791 = distinct !{!3791, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3792 = distinct !{!3792, !3791, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3793 = distinct !{!3793, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3794 = distinct !{!3794, !3793, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3795 = distinct !{!3795, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3796 = distinct !{!3796, !3795, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3797 = distinct !{!3797, !3791, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3798 = distinct !{!3798, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros"}
!3799 = distinct !{!3799, !3798, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 1"}
!3800 = distinct !{!3800, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros"}
!3801 = distinct !{!3801, !3800, !"_RNCNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB7_11PrivateIterNtNtB9_4item5FnArgNtNtB9_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nexts_0Cs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3802 = distinct !{!3802, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros"}
!3803 = distinct !{!3803, !3802, !"_RNvXsy_NtCscI6d9CVNmLh_4core6optionINtB5_8IntoIterRNtNtCsb2PI9uRnNxu_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3804 = distinct !{!3804, !3798, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros: argument 0"}
!3805 = !{!3780, !3778}
!3806 = !{!3790, !3788, !3786, !3784, !3782}
!3807 = !{!3786, !3784, !3782}
!3808 = !{!3796, !3794, !3792, !3788, !3786, !3784, !3782}
!3809 = !{!3797}
!3810 = !{!3803, !3801, !3799, !3778}
!3811 = !{!3804}
end_hunk_1
