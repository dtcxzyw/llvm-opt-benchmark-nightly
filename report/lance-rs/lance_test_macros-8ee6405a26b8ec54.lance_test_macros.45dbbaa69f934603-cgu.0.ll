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
  %.val.i43 = load ptr, ptr %i.fw, align 8, !alias.scope !3671, !noalias !3672, !nonnull !38, !noundef !38 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.val1.i44 = load i64, ptr %i.fx, align 8, !alias.scope !3671, !noalias !3672, !noundef !38
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %.val.i43, i64 %.val1.i44 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !3673, !noalias !3672, !align !37, !noundef !38
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
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !3674

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
  %i.k = load i64, ptr %i.h, align 8, !range !3675, !noundef !38
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
  %i.a = load <2 x ptr>, ptr %0, align 8, !alias.scope !3681, !noalias !3682
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.b, align 8, !alias.scope !3681, !noalias !3682, !align !37, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3683
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 24, i64 noundef 8) #24, !noalias !3683 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !79

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !noalias !3683
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
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3693, !nonnull !38, !noundef !38 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3693, !nonnull !38, !noundef !38
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.e, ptr %0, align 8, !alias.scope !3693
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3694, !noalias !3695, !align !37, !noundef !38
  store ptr null, ptr %i.f, align 8, !alias.scope !3694, !noalias !3695
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.g, %bb.b ], [ %i.a, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit ]
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3705, !align !37, !noundef !38 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !3705
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3706, !noalias !3707, !nonnull !38, !noundef !38 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !3706, !noalias !3707, !nonnull !38, !noundef !38
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -104 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !3706, !noalias !3707
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 177372539170284152) i64 @_RNvXsy_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3710, !nonnull !38, !noundef !38
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3710, !nonnull !38, !noundef !38
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
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3715, !nonnull !38, !noundef !38
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3715, !nonnull !38, !noundef !38
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !3716, !align !37, !noundef !38
  %i.i = icmp ne ptr %.val.i, null
  %i.j = zext i1 %i.i to i64
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp eq i64 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !38  ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !3730
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
end_hunk_0
