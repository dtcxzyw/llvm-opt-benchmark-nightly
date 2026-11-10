Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.1?download=true
inline.NumInlined: 66
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks:bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fm = load i64, ptr %i.fl, align 8
  %.sroa.043.0 = select i1 %.not73, ptr %i.fk, ptr null
  store ptr %.sroa.042.0, ptr %i.a, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %.sroa.043.0, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.fm, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fr = load i8, ptr %i.fq, align 8, !range !89, !noundef !5
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = icmp ne i64 %.sroa.3.0.i, 4
  %i.fu = or i1 %i.ft, %i.fs
  %or.cond80.not = or i1 %.not, %i.fu
  br i1 %or.cond80.not, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94
  %i.fv = load i32, ptr %.sroa.0.0.i, align 1
  %i.fw = icmp ne i32 %i.fv, 1819112552           ; 3 uses
  %i.fx = zext i1 %i.fw to i32                    ; 0 uses
  %brmerge81 = or i1 %1, %i.fw
  %.mux = select i1 %i.fw, i8 0, i8 2
  br i1 %brmerge81, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.not72, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fy = invoke noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @5, i64 noundef 3)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.az
  br i1 %.not73, label %bb.bi, label %.critedge

.thread122:                                       ; preds = %bb.bc
  br i1 %.not73, label %bb.bi, label %.thread123.preheader

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread123, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.preheader, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.1, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.1, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.preheader, %bb.bi, %bb.ba
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %.body unwind label %bb.bl

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.fy, label %.critedge, label %.thread122

.critedge:                                        ; preds = %.noexc95, %.noexc104.1, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread, %.noexc99, %.noexc99.1, %bb.bb, %bb.bj, %bb.ay, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94, %bb.bc
  %.sroa.041.0 = phi i8 [ %.mux83, %bb.bj ], [ 0, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks18opt_to_ascii_lower.exit94 ], [ %.mux, %bb.ay ], [ %.153, %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread ], [ 0, %bb.bc ], [ 1, %.noexc99 ], [ 2, %bb.bb ], [ 1, %.noexc99.1 ], [ 2, %.noexc104.1 ], [ 0, %.noexc95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fz = load i64, ptr %i.b, align 8, !range !4, !alias.scope !90, !noundef !5
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !91, !noundef !5 ; 2 uses
  %i.gc = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.gc, label %.body, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val3.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !92, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !93
  br label %.body

bb.bg:                                            ; preds = %bb.bd
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !91, !noundef !5 ; 2 uses
  %i.gd = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.gd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val1.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !92, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !94
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit

bb.bi:                                            ; preds = %.thread122, %bb.bb
  %i.ge = invoke noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @7, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %brmerge82 = or i1 %.not72, %i.ge
  %.mux83 = select i1 %i.ge, i8 0, i8 2
  br i1 %brmerge82, label %.critedge, label %.thread123.preheader

.thread123.preheader:                             ; preds = %.thread122, %bb.bj
  br label %.thread123

bb.bk:                                            ; preds = %.noexc95
  %.add = add nuw nsw i64 %.idx154, 16            ; 2 uses
  %.not.not.not.i.not.not.not.i.not = icmp eq i64 %.add, 864
  br i1 %.not.not.not.i.not.not.not.i.not, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.preheader, label %.thread123

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.preheader: ; preds = %bb.bk
  %i.gf = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 32)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread123:                                       ; preds = %.thread123.preheader, %bb.bk
  %.idx154 = phi i64 [ %.add, %bb.bk ], [ 0, %.thread123.preheader ] ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @62, i64 %.idx154 ; 2 uses
  %.val3.i.i = load ptr, ptr %.ptr, align 8, !alias.scope !95, !noalias !96, !nonnull !5, !noundef !5
  %i.gg = getelementptr i8, ptr %.ptr, i64 8
  %.val4.i.i = load i64, ptr %i.gg, align 8, !alias.scope !95, !noalias !96, !noundef !5
  %i.gh = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val3.i.i, i64 noundef %.val4.i.i)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %.thread123
  br i1 %i.gh, label %.critedge, label %bb.bk

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.preheader: ; preds = %.noexc99.1
  %i.gi = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 32)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.preheader
  br i1 %i.gf, label %.critedge, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.1

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.1: ; preds = %.noexc99
  %i.gj = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 36)
          to label %.noexc99.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99.1:                                       ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit.1
  br i1 %i.gj, label %.critedge, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.preheader

.noexc104:                                        ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.preheader
  br i1 %i.gi, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.1

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.1: ; preds = %.noexc104
  %i.gk = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %.sroa.5.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 36)
          to label %.noexc104.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104.1:                                      ; preds = %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit100.1
  br i1 %i.gk, label %_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread, label %.critedge

_RNvNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder4data24doctype_error_and_quirks12contains_pfx.exit105.thread: ; preds = %.noexc104, %.noexc104.1
  %.153 = zext i1 %.not73 to i8
  br label %.critedge

bb.bl:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.bh, %bb.bg, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gm = load i64, ptr %i.c, align 8, !range !4, !alias.scope !97, !noundef !5
  %i.gn = icmp eq i64 %i.gm, -1
  br i1 %i.gn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit111, label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.bp unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i106 = load i64, ptr %i.c, align 8, !range !6, !alias.scope !98, !noundef !5 ; 2 uses
  %i.gp = icmp eq i64 %.val2.i.i.i106, 0
  br i1 %i.gp, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val3.i.i.i107 = load ptr, ptr %i.ff, align 8, !alias.scope !99, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i107, i64 noundef %.val2.i.i.i106, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !100
  br label %common.resume

bb.bp:                                            ; preds = %bb.bm
  %.val.i.i.i109 = load i64, ptr %i.c, align 8, !range !6, !alias.scope !98, !noundef !5 ; 2 uses
  %i.gq = icmp eq i64 %.val.i.i.i109, 0
  br i1 %i.gq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit111, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val1.i.i.i110 = load ptr, ptr %i.ff, align 8, !alias.scope !99, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i110, i64 noundef %.val.i.i.i109, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !101
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit111

common.resume:                                    ; preds = %.body, %bb.bn, %bb.bo
  %common.resume.op = phi { ptr, i32 } [ %i.go, %bb.bn ], [ %i.go, %bb.bo ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit111: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbmOI1VUejFP_9html5ever.exit, %bb.bp, %bb.bq
  %i.gr = xor i1 %.sroa.033.0114, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gs = insertvalue { i1, i8 } poison, i1 %i.gr, 0
  %i.gt = insertvalue { i1, i8 } %i.gs, i8 %.sroa.041.0, 1
  ret { i1, i8 } %i.gt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets11special_tag(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.b = icmp eq i64 %i.a, 12884901890
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !range !11, !noundef !5
  switch i64 %i.c, label %.fold.split [
    i64 8319104478668415345, label %bb.c
    i64 32762613715722593, label %bb.c
    i64 418313822529, label %bb.c
    i64 7308325599891841393, label %bb.c
    i64 111481940304209, label %bb.c
    i64 435727458881, label %bb.c
    i64 953482739714, label %bb.c
    i64 7236850772768940657, label %bb.c
    i64 790273982466, label %bb.c
    i64 521376064065, label %bb.c
    i64 7496225, label %bb.c
    i64 31084793398911585, label %bb.c
    i64 7957695015409509233, label %bb.c
    i64 32199698087764833, label %bb.c
    i64 1819239217, label %bb.c
    i64 1894080577538, label %bb.c
    i64 6579233, label %bb.c
    i64 8317138479132009585, label %bb.c
    i64 1919509553, label %bb.c
    i64 1986618417, label %bb.c
    i64 7103521, label %bb.c
    i64 7627809, label %bb.c
    i64 110386605811025, label %bb.c
    i64 2761663971330, label %bb.c
    i64 1752346656770, label %bb.c
    i64 28554821219477089, label %bb.c
    i64 32199698105198177, label %bb.c
    i64 470071338561, label %bb.c
    i64 111520460727889, label %bb.c
    i64 1430224109570, label %bb.c
    i64 3237921, label %bb.c
    i64 3303457, label %bb.c
    i64 3368993, label %bb.c
    i64 3434529, label %bb.c
    i64 3500065, label %bb.c
    i64 3565601, label %bb.c
    i64 431130765377, label %bb.c
    i64 32199629150185569, label %bb.c
    i64 31654318912792673, label %bb.c
    i64 7497761, label %bb.c
    i64 465692813377, label %bb.c
    i64 28549237946345825, label %bb.c
    i64 1735223601, label %bb.c
    i64 128047746279761, label %bb.c
    i64 8675450682577480049, label %bb.c
    i64 6908961, label %bb.c
    i64 461413903425, label %bb.c
    i64 7453010382218161265, label %bb.c
    i64 474214395201, label %bb.c
    i64 7306375100589239665, label %bb.c
    i64 504363314497, label %bb.c
    i64 418564631873, label %bb.c
    i64 1986096689, label %bb.c
    i64 7234296598433328753, label %bb.c
    i64 1889785610242, label %bb.c
    i64 309237645314, label %bb.c
    i64 32760384526118753, label %bb.c
    i64 7106337, label %bb.c
    i64 28689, label %bb.c
    i64 120265298243665, label %bb.c
    i64 605590388738, label %bb.c
    i64 1701998641, label %bb.c
    i64 32774695491433313, label %bb.c
    i64 7957695015191671665, label %bb.c
    i64 32760384559870817, label %bb.c
    i64 28538315895436129, label %bb.c
    i64 111516568548177, label %bb.c
    i64 8751164148550038385, label %bb.c
    i64 111516181427281, label %bb.c
    i64 133472272413777, label %bb.c
    i64 6583329, label %bb.c
    i64 2181843386370, label %bb.c
    i64 1181116006402, label %bb.c
    i64 128021959177297, label %bb.c
    i64 6845473, label %bb.c
    i64 110369475949649, label %bb.c
    i64 111516483941457, label %bb.c
    i64 7500833, label %bb.c
    i64 118074580825169, label %bb.c
    i64 7107873, label %bb.c
    i64 1919055665, label %bb.c
    i64 1886222385, label %bb.c
  ]

.fold.split:                                      ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %.fold.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ false, %.fold.split ], [ true, %bb.b ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets12button_scope(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 12884901890            ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 4 uses
  %i.d = icmp eq i64 %i.c, 31084793398911585
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  switch i64 %i.c, label %bb.g [
    i64 32762613715722593, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7957695015409509233, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 465692813377, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 111516181427281, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 6583329, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 6845473, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7306375100589239665, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 32760384526118753, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 32760384559870817, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 2181843386370, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
  ]

bb.d:                                             ; preds = %bb.b
  switch i64 %i.a, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit [
    i64 8589934594, label %bb.e
    i64 21474836482, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  switch i64 %i.c, label %bb.g [
    i64 6909217, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7302433, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7236897, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7564577, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 128060447026513, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
  ]

bb.f:                                             ; preds = %bb.d
  switch i64 %i.c, label %bb.g [
    i64 897648164866, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 427137786945, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 111516483941457, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
  ]

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  br label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit

_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit: ; preds = %bb.d, %bb.g, %bb.f, %bb.f, %bb.f, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.g ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets15list_item_scope(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  switch i64 %i.a, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit [
    i64 12884901890, label %bb.b
    i64 8589934594, label %bb.c
    i64 21474836482, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %bb.e [
    i64 7106337, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7107873, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 32762613715722593, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7957695015409509233, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 465692813377, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 111516181427281, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 6583329, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 6845473, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7306375100589239665, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 32760384526118753, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 32760384559870817, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 2181843386370, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
  ]

bb.c:                                             ; preds = %bb.a
  switch i64 %i.b, label %bb.e [
    i64 6909217, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7302433, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7236897, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 7564577, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 128060447026513, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
  ]

bb.d:                                             ; preds = %bb.a
  switch i64 %i.b, label %bb.e [
    i64 897648164866, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 427137786945, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
    i64 111516483941457, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit
  ]

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  br label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit

_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets13default_scope.exit: ; preds = %bb.a, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.e, %bb.d, %bb.d, %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets20thorough_implied_end(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.b = icmp eq i64 %i.a, 12884901890
  br i1 %i.b, label %bb.b, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !range !11, !noundef !5
  switch i64 %i.c, label %.fold.split.i [
    i64 7957695015409509233, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 1894080577538, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 133472272413777, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 6583329, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 128021959177297, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 6845473, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 110369475949649, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 7500833, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 6579233, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 7627809, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 6908961, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 31084746153946977, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 2821793513474, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 28689, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 6451745, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 7369249, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 7631393, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
    i64 1668575793, label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit
  ]

.fold.split.i:                                    ; preds = %bb.b
  br label %_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit

_RNvNtNtCsbmOI1VUejFP_9html5ever12tree_builder8tag_sets19cursory_implied_end.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a, %.fold.split.i
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ], [ false, %.fold.split.i ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_0
