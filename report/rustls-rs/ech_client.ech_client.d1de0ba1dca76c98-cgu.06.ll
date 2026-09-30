Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.06?download=true
inline.NumInlined: 962
inline.NumDeleted: 496
begin_hunk_0_@_RNvMs_NtCs9RFwvXNxPyg_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrorCsi17nFaBu4HY_10ech_client:bb.a
  br label %.thread286

.thread294.loopexit.split.us.loopexit.split-lp:   ; preds = %bb.bn
  %lpad.loopexit.split-lp447 = landingpad { ptr, i32 }
          cleanup
  br label %.thread286

.split380:                                        ; preds = %bb.ay
  br i1 %i.ev, label %.outer.us384.outer, label %.outer.outer

.outer.us384.outer:                               ; preds = %.split380, %bb.bz
  %.sroa.11222.0.ph.us385.ph = phi ptr [ %.sroa.11222.1.ph.us, %bb.bz ], [ %.sroa.11222.0.copyload, %.split380 ]
  %.sroa.8220.0.ph.us386.ph = phi ptr [ %.sroa.8220.1304.ph.us, %bb.bz ], [ %.sroa.8220.0.copyload, %.split380 ]
  %.sroa.5218.0.ph.us387.ph = phi ptr [ %.sroa.5218.2306.ph.us, %bb.bz ], [ %.sroa.5218.0.copyload, %.split380 ]
  %.sroa.0217.0.ph.us388.ph = phi i64 [ %.sroa.0217.1308.ph.us, %bb.bz ], [ %.sroa.0217.0.copyload, %.split380 ]
  %.sroa.013.0.ph.us389.ph = phi i1 [ %spec.select.us399, %bb.bz ], [ false, %.split380 ] ; 2 uses
  %.sroa.012.0.ph.us390.ph = phi i1 [ true, %bb.bz ], [ false, %.split380 ]
  br label %.outer.us384

.outer.us384:                                     ; preds = %.outer.us384.backedge, %.outer.us384.outer
  %.sroa.11222.0.ph.us385 = phi ptr [ %.sroa.11222.0.ph.us385.ph, %.outer.us384.outer ], [ %.sroa.11222.1.ph.us, %.outer.us384.backedge ]
  %.sroa.8220.0.ph.us386 = phi ptr [ %.sroa.8220.0.ph.us386.ph, %.outer.us384.outer ], [ %.sroa.8220.1304.ph.us, %.outer.us384.backedge ]
  %.sroa.5218.0.ph.us387 = phi ptr [ %.sroa.5218.0.ph.us387.ph, %.outer.us384.outer ], [ %.sroa.5218.2306.ph.us, %.outer.us384.backedge ]
  %.sroa.0217.0.ph.us388 = phi i64 [ %.sroa.0217.0.ph.us388.ph, %.outer.us384.outer ], [ %.sroa.0217.1308.ph.us, %.outer.us384.backedge ]
  %.sroa.012.0.ph.us390 = phi i1 [ %.sroa.012.0.ph.us390.ph, %.outer.us384.outer ], [ %.sroa.012.0.ph.us390.be, %.outer.us384.backedge ] ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us, %.outer.us384
  %.sroa.11222.0.us = phi ptr [ %.sroa.11222.1.ph.us, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us ], [ %.sroa.11222.0.ph.us385, %.outer.us384 ] ; 6 uses
  %.sroa.8220.0.us = phi ptr [ %.sroa.8220.1304.ph.us, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us ], [ %.sroa.8220.0.ph.us386, %.outer.us384 ] ; 6 uses
  %.sroa.5218.0.us = phi ptr [ %.sroa.5218.2306.ph.us, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us ], [ %.sroa.5218.0.ph.us387, %.outer.us384 ] ; 5 uses
  %.sroa.0217.0.us = phi i64 [ %.sroa.0217.1308.ph.us, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us ], [ %.sroa.0217.0.ph.us388, %.outer.us384 ]
  %i.fy = trunc nuw i64 %.sroa.0217.0.us to i1
  br i1 %i.fy, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i.i.i.us = icmp eq ptr %.sroa.5218.0.us, null
  br i1 %.not.i.i.i.i.us, label %select.unfold.i.i.i.us, label %.sink.split.i.i.i.i.us

.sink.split.i.i.i.i.us:                           ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7219.0.copyload) ]
  %i.fz = icmp eq ptr %.sroa.5218.0.us, %.sroa.7219.0.copyload
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.5218.0.us, i64 272
  br i1 %i.fz, label %select.unfold.i.i.i.us, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us

select.unfold.i.i.i.us:                           ; preds = %.sink.split.i.i.i.i.us, %bb.bq
  %.not.i.i.i.i.i.us = icmp eq ptr %.sroa.8220.0.us, null
  %i.gb = icmp eq ptr %.sroa.8220.0.us, %.sroa.10221.0.copyload
  %or.cond.i.i.i.i.i.us = select i1 %.not.i.i.i.i.i.us, i1 true, i1 %i.gb
  br i1 %or.cond.i.i.i.i.i.us, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %select.unfold.i.i.i.us
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.8220.0.us, i64 272
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us

bb.bs:                                            ; preds = %select.unfold.i.i.i.us, %bb.bp
  %.sroa.5218.2.ph.us = phi ptr [ null, %select.unfold.i.i.i.us ], [ %.sroa.5218.0.us, %bb.bp ]
  %.not.i.i126.us = icmp eq ptr %.sroa.11222.0.us, null
  %i.gd = icmp eq ptr %.sroa.11222.0.us, %.sroa.13223.0.copyload
  %or.cond.i.i.us = select i1 %.not.i.i126.us, i1 true, i1 %i.gd
  br i1 %or.cond.i.i.us, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainIB2j_INtNtNtB5_5slice4iter4IterBJ_EB2A_EB2A_ENtNtNtB1T_6traits8iterator8Iterator4next0ECsi17nFaBu4HY_10ech_client.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.11222.0.us, i64 272
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us: ; preds = %bb.bt, %bb.br, %.sink.split.i.i.i.i.us
  %.sroa.0217.1308.ph.us = phi i64 [ 0, %bb.bt ], [ 1, %bb.br ], [ 1, %.sink.split.i.i.i.i.us ] ; 3 uses
  %.sroa.5218.2306.ph.us = phi ptr [ %.sroa.5218.2.ph.us, %bb.bt ], [ null, %bb.br ], [ %i.ga, %.sink.split.i.i.i.i.us ] ; 3 uses
  %.sroa.8220.1304.ph.us = phi ptr [ %.sroa.8220.0.us, %bb.bt ], [ %i.gc, %bb.br ], [ %.sroa.8220.0.us, %.sink.split.i.i.i.i.us ] ; 3 uses
  %.sroa.11222.1.ph.us = phi ptr [ %i.ge, %bb.bt ], [ %.sroa.11222.0.us, %bb.br ], [ %.sroa.11222.0.us, %.sink.split.i.i.i.i.us ] ; 3 uses
  %.sroa.0.0.i125.ph.us = phi ptr [ %.sroa.11222.0.us, %bb.bt ], [ %.sroa.8220.0.us, %bb.br ], [ %.sroa.5218.0.us, %.sink.split.i.i.i.i.us ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i125.ph.us, i64 264
  %i.gg = load i16, ptr %i.gf, align 8, !range !42, !noundef !7
  %i.gh = icmp eq i16 %.fr, %i.gg
  br i1 %i.gh, label %.split.us, label %bb.bp

.split.us:                                        ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit.us
  %i.gi = load i16, ptr %i.ah, align 8, !range !24, !noundef !7
  %.not92.us392 = icmp eq i16 %i.gi, 2
  %i.gj = load ptr, ptr %.sroa.6191.0..sroa_idx192, align 8, !nonnull !7, !align !8
  %.sroa.078.0.us393 = select i1 %.not92.us392, ptr %i.gj, ptr %i.ah
  %i.gk = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.078.0.us393, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0.i125.ph.us)
          to label %bb.bu unwind label %.thread294.loopexit.split.split.us.loopexit

bb.bu:                                            ; preds = %.split.us
  br i1 %i.gk, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gl = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0.i125.ph.us)
          to label %bb.bw unwind label %.thread294.loopexit.split.split.us.loopexit ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.gm = select i1 %i.gl, i1 %.sroa.15.0, i1 false
  %.sroa.012.0.mux107.us395 = select i1 %i.gl, i1 true, i1 %.sroa.012.0.ph.us390
  br i1 %i.gm, label %bb.by, label %.outer.us384.backedge

bb.bx:                                            ; preds = %bb.bu
  br i1 %.sroa.15.0, label %bb.by, label %.outer.us384.backedge

.outer.us384.backedge:                            ; preds = %bb.bx, %bb.bw
  %.sroa.012.0.ph.us390.be = phi i1 [ %.sroa.012.0.mux107.us395, %bb.bw ], [ true, %bb.bx ]
  br label %.outer.us384

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gn = load i16, ptr %i.ah, align 8, !range !24, !noundef !7
  %.not93.us397 = icmp eq i16 %i.gn, 2
  %i.go = load ptr, ptr %.sroa.6191.0..sroa_idx192, align 8, !nonnull !7, !align !8
  %.sroa.079.0.us398 = select i1 %.not93.us397, ptr %i.go, ptr %i.ah
  %i.gp = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.079.0.us398, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0.i125.ph.us)
          to label %bb.bz unwind label %.thread294.loopexit.split.split.us.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  %spec.select.us399 = select i1 %i.gp, i1 true, i1 %.sroa.013.0.ph.us389.ph
  br label %.outer.us384.outer

.thread294.loopexit.split.split.us.loopexit:      ; preds = %.split.us, %bb.bv
  %lpad.loopexit458 = landingpad { ptr, i32 }
          cleanup
  br label %.thread286

.thread294.loopexit.split.split.us.loopexit.split-lp: ; preds = %bb.by
  %lpad.loopexit.split-lp459 = landingpad { ptr, i32 }
          cleanup
  br label %.thread286

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  %.sroa.11222.0.ph = phi ptr [ %.sroa.11222.0.ph.ph, %.outer.outer ], [ %.sroa.11222.1.ph, %.outer.backedge ]
  %.sroa.8220.0.ph = phi ptr [ %.sroa.8220.0.ph.ph, %.outer.outer ], [ %.sroa.8220.1304.ph, %.outer.backedge ]
  %.sroa.5218.0.ph = phi ptr [ %.sroa.5218.0.ph.ph, %.outer.outer ], [ %.sroa.5218.2306.ph, %.outer.backedge ]
  %.sroa.0217.0.ph = phi i64 [ %.sroa.0217.0.ph.ph, %.outer.outer ], [ %.sroa.0217.1308.ph, %.outer.backedge ]
  %.sroa.012.0.ph = phi i1 [ %.sroa.012.0.ph.ph, %.outer.outer ], [ %.sroa.012.0.ph.be, %.outer.backedge ] ; 3 uses
  br label %bb.ca

bb.ca:                                            ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit, %.outer
  %.sroa.11222.0 = phi ptr [ %.sroa.11222.1.ph, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit ], [ %.sroa.11222.0.ph, %.outer ] ; 6 uses
  %.sroa.8220.0 = phi ptr [ %.sroa.8220.1304.ph, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit ], [ %.sroa.8220.0.ph, %.outer ] ; 6 uses
  %.sroa.5218.0 = phi ptr [ %.sroa.5218.2306.ph, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit ], [ %.sroa.5218.0.ph, %.outer ] ; 5 uses
  %.sroa.0217.0 = phi i64 [ %.sroa.0217.1308.ph, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit ], [ %.sroa.0217.0.ph, %.outer ]
  %i.gq = trunc nuw i64 %.sroa.0217.0 to i1
  br i1 %i.gq, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i.i.i = icmp eq ptr %.sroa.5218.0, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7219.0.copyload) ]
  %i.gr = icmp eq ptr %.sroa.5218.0, %.sroa.7219.0.copyload
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.5218.0, i64 272
  br i1 %i.gr, label %select.unfold.i.i.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.cb
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.8220.0, null
  %i.gt = icmp eq ptr %.sroa.8220.0, %.sroa.10221.0.copyload
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.gt
  br i1 %or.cond.i.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %select.unfold.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.8220.0, i64 272
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit

bb.cd:                                            ; preds = %bb.ca, %select.unfold.i.i.i
  %.sroa.5218.2.ph = phi ptr [ null, %select.unfold.i.i.i ], [ %.sroa.5218.0, %bb.ca ]
  %.not.i.i126 = icmp eq ptr %.sroa.11222.0, null
  %i.gv = icmp eq ptr %.sroa.11222.0, %.sroa.13223.0.copyload
  %or.cond.i.i = select i1 %.not.i.i126, i1 true, i1 %i.gv
  br i1 %or.cond.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainIB2j_INtNtNtB5_5slice4iter4IterBJ_EB2A_EB2A_ENtNtNtB1T_6traits8iterator8Iterator4next0ECsi17nFaBu4HY_10ech_client.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.11222.0, i64 272
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit: ; preds = %.sink.split.i.i.i.i, %bb.cc, %bb.ce
  %.sroa.0217.1308.ph = phi i64 [ 0, %bb.ce ], [ 1, %bb.cc ], [ 1, %.sink.split.i.i.i.i ] ; 3 uses
  %.sroa.5218.2306.ph = phi ptr [ %.sroa.5218.2.ph, %bb.ce ], [ null, %bb.cc ], [ %i.gs, %.sink.split.i.i.i.i ] ; 3 uses
  %.sroa.8220.1304.ph = phi ptr [ %.sroa.8220.0, %bb.ce ], [ %i.gu, %bb.cc ], [ %.sroa.8220.0, %.sink.split.i.i.i.i ] ; 3 uses
  %.sroa.11222.1.ph = phi ptr [ %i.gw, %bb.ce ], [ %.sroa.11222.0, %bb.cc ], [ %.sroa.11222.0, %.sink.split.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i125.ph = phi ptr [ %.sroa.11222.0, %bb.ce ], [ %.sroa.8220.0, %bb.cc ], [ %.sroa.5218.0, %.sink.split.i.i.i.i ] ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i125.ph, i64 264
  %i.gy = load i16, ptr %i.gx, align 8, !range !42, !noundef !7
  %i.gz = icmp eq i16 %.fr, %i.gy
  br i1 %i.gz, label %.split, label %bb.ca

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainIB2j_INtNtNtB5_5slice4iter4IterBJ_EB2A_EB2A_ENtNtNtB1T_6traits8iterator8Iterator4next0ECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.cd, %bb.bs, %bb.bc
  %.us-phi = phi i1 [ %.sroa.013.0.ph.us.ph, %bb.bc ], [ %.sroa.013.0.ph.us389.ph, %bb.bs ], [ %.sroa.013.0.ph.ph, %bb.cd ]
  %.us-phi374 = phi i1 [ %.sroa.012.0.ph.us, %bb.bc ], [ %.sroa.012.0.ph.us390, %bb.bs ], [ %.sroa.012.0.ph, %bb.cd ]
  br i1 %.us-phi374, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainIB2j_INtNtNtB5_5slice4iter4IterBJ_EB2A_EB2A_ENtNtNtB1T_6traits8iterator8Iterator4next0ECsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB2_7Message17take_all_sections(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.af)
          to label %bb.ci unwind label %.thread294.loopexit.split-lp

bb.cg:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1P_5ChainIB2j_INtNtNtB5_5slice4iter4IterBJ_EB2A_EB2A_ENtNtNtB1T_6traits8iterator8Iterator4next0ECsi17nFaBu4HY_10ech_client.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hb = load i64, ptr %i.ha, align 8            ; 2 uses
  %i.hc = icmp ult i64 %i.hb, 33909456017848441
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp eq i64 %i.hb, 0
  br i1 %i.hd, label %.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %.sroa.15.0, label %bb.cf, label %bb.ep

bb.ci:                                            ; preds = %bb.cf
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 104, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store ptr %i.ag, ptr %i.hf, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store ptr %3, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store ptr %i.he, ptr %.sroa.537.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB28_5chain5ChainIB36_INtNtB4_9into_iter8IntoIterBR_EB3v_EB3v_ENCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver14caching_clientINtB4h_13CachingClientINtNtB4j_8resolver12LookupEitherNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors0_0EE11spec_extendCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.x)
          to label %bb.cj unwind label %.thread294.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.038.0.copyload = load i16, ptr %i.ah, align 8 ; 2 uses
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.6191.0..sroa_idx192, align 8 ; 11 uses
  %.not85 = icmp eq i16 %.sroa.038.0.copyload, 2
  br i1 %.not85, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.sroa.645.sroa.7.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx203, align 8
  %i.hg = load <2 x i16>, ptr %.sroa.7197.0..sroa_idx198, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx190, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5229, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx196, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8233, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.9.0..sroa_idx202, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10235, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx205, i64 7, i1 false)
  br label %bb.ct

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.542.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 72
  %i.hi = load i8, ptr %i.hh, align 8, !range !9, !alias.scope !1640, !noalias !1641, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1642
  %i.hj = load i16, ptr %.sroa.542.0.copyload, align 8, !range !26, !alias.scope !1640, !noalias !1641, !noundef !7
  %i.hk = trunc nuw i16 %i.hj to i1
  br i1 %i.hk, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl)
          to label %.noexc128 unwind label %.thread294.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cl
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 2
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ho, i64 32, i1 false), !noalias !1641
  %i.hp = load i16, ptr %i.hn, align 2, !alias.scope !1640, !noalias !1641, !noundef !7
  %i.hq = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 %i.hp, ptr %i.hq, align 2, !noalias !1642
  br label %.noexc128

.noexc128:                                        ; preds = %bb.cm, %bb.cn
  %.sroa.0224.0.copyload225 = phi i16 [ 0, %bb.cn ], [ 1, %bb.cm ] ; 2 uses
  store i16 %.sroa.0224.0.copyload225, ptr %i.g, align 8, !noalias !1642
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i)
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 40
  %i.hs = load i16, ptr %i.hr, align 8, !range !26, !alias.scope !1640, !noalias !1641, !noundef !7
  %i.ht = trunc nuw i16 %i.hs to i1
  br i1 %i.ht, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.noexc128
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1642
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hu)
          to label %bb.cr unwind label %bb.cq, !noalias !1641

bb.cp:                                            ; preds = %.noexc128
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 42
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.sroa.4.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.hw, i64 24, i1 false), !noalias !1641
  %i.hx = load i16, ptr %i.hv, align 2, !alias.scope !1640, !noalias !1641, !noundef !7
  %i.hy = insertelement <2 x i16> <i16 0, i16 poison>, i16 %i.hx, i64 1
  br label %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.cq:                                            ; preds = %bb.co
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj20_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #26
          to label %.thread286 unwind label %bb.cs, !noalias !1641

bb.cr:                                            ; preds = %bb.co
  %.sroa.5.sroa.4.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.sroa.4.6..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1642
  br label %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.cs:                                            ; preds = %bb.cq
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24, !noalias !1641
  unreachable

_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.cp, %bb.cr
  %i.ib = phi <2 x i16> [ <i16 1, i16 undef>, %bb.cr ], [ %i.hy, %bb.cp ]
  %.sroa.3.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx226, i64 6, i1 false), !noalias !1640
  %.sroa.4.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload228 = load ptr, ptr %.sroa.4.0..sroa_idx227, align 8, !noalias !1640
  %.sroa.5229.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5229, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5229.0..sroa_idx230, i64 24, i1 false), !noalias !1640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8233, ptr noundef nonnull align 2 dereferenceable(28) %.sroa.5.sroa.4.i, i64 28, i1 false), !noalias !1640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1642
  br label %bb.ct

bb.ct:                                            ; preds = %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.ck
  %.sroa.9234.0 = phi i8 [ %i.hi, %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %.sroa.645.sroa.7.0.copyload, %bb.ck ]
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.copyload228, %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %.sroa.542.0.copyload, %bb.ck ]
  %.sroa.0224.0 = phi i16 [ %.sroa.0224.0.copyload225, %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %.sroa.038.0.copyload, %bb.ck ]
  %i.ic = phi <2 x i16> [ %i.ib, %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %i.hg, %bb.ck ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.af)
          to label %bb.cu unwind label %bb.aw

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i16 %.sroa.0224.0, ptr %i.aj, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3, i64 6, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5229.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5229, i64 24, i1 false)
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store <2 x i16> %i.ic, ptr %.sroa.6231.0..sroa_idx, align 8
  %.sroa.8233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8233.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8233, i64 28, i1 false)
  %.sroa.9234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store i8 %.sroa.9234.0, ptr %.sroa.9234.0..sroa_idx, align 8
  %.sroa.10235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10235.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10235, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br i1 %.sroa.15.0, label %bb.dd, label %bb.cv

bb.cv:                                            ; preds = %bb.dd, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ie = load i8, ptr %i.id, align 8, !range !9, !alias.scope !1643, !noalias !1644, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1645
  %i.if = load i16, ptr %3, align 8, !range !26, !alias.scope !1643, !noalias !1644, !noundef !7
  %i.ig = trunc nuw i16 %i.if to i1
  br i1 %i.ig, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ii, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ih)
          to label %.noexc139 unwind label %bb.do

bb.cx:                                            ; preds = %bb.cv
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.4.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i132, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ik, i64 32, i1 false), !noalias !1644
  %i.il = load i16, ptr %i.ij, align 2, !alias.scope !1643, !noalias !1644, !noundef !7
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.il, ptr %i.im, align 2, !noalias !1645
  br label %.noexc139

.noexc139:                                        ; preds = %bb.cw, %bb.cx
  %.sink.i133 = phi i16 [ 0, %bb.cx ], [ 1, %bb.cw ]
  store i16 %.sink.i133, ptr %i.e, align 8, !noalias !1645
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i131)
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.io = load i16, ptr %i.in, align 8, !range !26, !alias.scope !1643, !noalias !1644, !noundef !7
  %i.ip = trunc nuw i16 %i.io to i1
  br i1 %i.ip, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.noexc139
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1645
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iq)
          to label %bb.db unwind label %bb.da, !noalias !1644

bb.cz:                                            ; preds = %.noexc139
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 42
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.sroa.4.i131, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.is, i64 24, i1 false), !noalias !1644
  %i.it = load i16, ptr %i.ir, align 2, !alias.scope !1643, !noalias !1644, !noundef !7
  br label %bb.dx

bb.da:                                            ; preds = %bb.cy
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3Zo60xg5UZv_7tinyvec7tinyvec7TinyVecAhj20_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread328 unwind label %bb.dc, !noalias !1644

bb.db:                                            ; preds = %bb.cy
  %.sroa.5.sroa.4.6..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.i131, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.sroa.4.6..sroa_idx.i138, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1645
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs9RFwvXNxPyg_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrorCsi17nFaBu4HY_10ech_client:bb.a
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBG_5rdata3soa3SOAEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.ds
  %i.kd = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.kd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit unwind label %bb.b

bb.dw:                                            ; preds = %bb.fu, %.body145, %.critedge111, %bb.fv, %.body119.thread350, %.body123.thread, %.critedge112, %.critedge110, %.critedge109, %bb.fs, %.thread286, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread331, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread328, %bb.eo, %.body
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.dx:                                            ; preds = %bb.db, %bb.cz
  %.sroa.5.sroa.0.0.i134 = phi i16 [ undef, %bb.db ], [ %i.it, %bb.cz ]
  %.sroa.0.0.i135 = phi i16 [ 1, %bb.db ], [ 0, %bb.cz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6246.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(28) %.sroa.5.sroa.4.i131, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i131)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1645
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i16 %.sroa.0.0.i135, ptr %.sroa.4244.0..sroa_idx, align 8
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 42
  store i16 %.sroa.5.sroa.0.0.i134, ptr %.sroa.5245.0..sroa_idx, align 2
  %.sroa.7247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i8 %i.ie, ptr %.sroa.7247.0..sroa_idx, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  store i16 %i.ca, ptr %i.kf, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.s, i64 86
  store i16 %i.ew, ptr %i.kg, align 2
  %i.kh = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  store i16 %.fr, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.s, i64 82
  store i16 %i.eu, ptr %i.ki, align 2
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1656
  %i.kj = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 64, 1897) 88, i64 noundef 8) #25, !noalias !1656 ; 3 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.dy, label %bb.eb, !prof !11

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #30
          to label %.noexc154 unwind label %bb.dz

.noexc154:                                        ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.dy
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread328 unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.eb:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.kj, ptr noundef nonnull align 8 dereferenceable(88) %i.s, i64 88, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.kj, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  store i32 0, ptr %i.q, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, i8 0, i64 16, i1 false)
  store <2 x i16> %i.by, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr null, ptr %i.kr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.056.0.copyload = load i16, ptr %i.al, align 8 ; 2 uses
  %.not86 = icmp eq i16 %.sroa.056.0.copyload, 2
  br i1 %.not86, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i16 %.sroa.056.0.copyload, ptr %i.r, align 8
  %.sroa.558.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(270) %.sroa.558.0..sroa_idx59, ptr noundef nonnull align 2 dereferenceable(270) %.sroa.558.0..sroa_idx, i64 270, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1657
  %i.ks = call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 64, 1897) 272, i64 noundef 8) #25, !noalias !1657 ; 3 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.ed, label %bb.eh, !prof !11

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 272) #30
          to label %.noexc158 unwind label %bb.ee

.noexc158:                                        ; preds = %bb.ed
  unreachable

bb.ee:                                            ; preds = %bb.ed
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBG_5rdata3soa3SOAEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.r) #26
          to label %.body unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.eg:                                            ; preds = %bb.eb, %bb.eh
  %.sroa.054.0 = phi ptr [ %i.ks, %bb.eh ], [ null, %bb.eb ] ; 2 uses
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB1B_5rdata3soa3SOAEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko)
          to label %bb.ej unwind label %bb.ei

.body:                                            ; preds = %bb.ee, %bb.ei
  %.pn = phi { ptr, i32 } [ %i.kw, %bb.ei ], [ %i.ku, %bb.ee ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kn) #26
          to label %bb.eo unwind label %bb.dw

bb.eh:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ks, ptr noundef nonnull align 8 dereferenceable(272) %i.r, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.eg

bb.ei:                                            ; preds = %bb.eg
  %i.kw = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.054.0, ptr %i.ko, align 8
  br label %.body

bb.ej:                                            ; preds = %bb.eg
  store ptr %.sroa.054.0, ptr %i.ko, align 8
  store i32 %i.bv, ptr %i.q, align 8
  store i32 %i.bw, ptr %i.kp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.461)
  %.sroa.461.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.461, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.sroa.461.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.kx, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.461.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.461, i64 71, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.461)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread331 unwind label %bb.em

bb.el:                                            ; preds = %bb.ej
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit unwind label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread328
  br i1 %.sroa.063.0325, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread331, label %bb.q

bb.en:                                            ; preds = %bb.el
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread331

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.dp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBG_5rdata3soa3SOAEECsi17nFaBu4HY_10ech_client.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit184

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit184: ; preds = %bb.fh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit179, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit
  ret void

bb.eo:                                            ; preds = %.body
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB1B_5rdata3soa3SOAEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread328 unwind label %bb.dw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread328: ; preds = %bb.eo, %.body145, %bb.dz, %bb.do, %bb.da
  %.pn.pn327 = phi { ptr, i32 } [ %i.kl, %bb.dz ], [ %i.iu, %bb.da ], [ %i.jt, %bb.do ], [ %eh.lpad-body146, %.body145 ], [ %.pn, %bb.eo ] ; 2 uses
  %.sroa.064.2326 = phi i1 [ true, %bb.dz ], [ true, %bb.da ], [ true, %bb.do ], [ true, %.body145 ], [ false, %bb.eo ] ; 2 uses
  %.sroa.063.0325 = phi i1 [ true, %bb.dz ], [ true, %bb.da ], [ true, %bb.do ], [ false, %.body145 ], [ true, %bb.eo ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #26
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit unwind label %bb.dw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit.thread331: ; preds = %bb.ek, %bb.en, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit
  %.pn89336 = phi { ptr, i32 } [ %.pn.pn327, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit ], [ %i.la, %bb.en ], [ %i.ky, %bb.ek ]
  %.sroa.064.4335 = phi i1 [ %.sroa.064.2326, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryECsi17nFaBu4HY_10ech_client.exit ], [ false, %bb.en ], [ false, %bb.ek ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aj) #26
          to label %bb.q unwind label %bb.dw

.thread:                                          ; preds = %bb.cg
  %.not100 = xor i1 %.us-phi, true
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.lc = load i8, ptr %i.lb, align 8, !range !9
  %i.ld = trunc nuw i8 %i.lc to i1
  %or.cond103 = select i1 %.not100, i1 true, i1 %i.ld
  br i1 %or.cond103, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.ch, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB2_7Message12all_sections(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.af)
          to label %bb.er unwind label %.thread294.loopexit.split-lp

bb.eq:                                            ; preds = %.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit169
  %.sroa.066.8 = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit169 ], [ 1, %.thread ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(152) %i.af, i64 152, i1 false)
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.lf = load i8, ptr %i.le, align 1, !range !9, !noundef !7
  %i.lg = trunc nuw i8 %i.lf to i1
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB2_7Message26maybe_strip_dnssec_records(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.y, i1 noundef zeroext %i.lg)
          to label %bb.ex unwind label %.critedge113.thread

bb.er:                                            ; preds = %bb.ep
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.ag, ptr %i.li, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %3, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store ptr %i.ah, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %i.lh, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB28_5chain5ChainIB36_INtNtNtB2c_5slice4iter4IterBR_EB3v_EB3v_ENCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver14caching_clientINtB4h_13CachingClientINtNtB4j_8resolver12LookupEitherNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors_0EE11spec_extendCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.ac)
          to label %bb.es unwind label %.thread294.loopexit.split-lp

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 5 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lj)
          to label %bb.eu unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lj)
          to label %.thread277 unwind label %bb.ev

bb.eu:                                            ; preds = %bb.es
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit169 unwind label %bb.ew

bb.ev:                                            ; preds = %bb.et
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ew:                                            ; preds = %bb.eu
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.thread277

.thread277:                                       ; preds = %bb.ew, %bb.et
  %eh.lpad-body168 = phi { ptr, i32 } [ %i.lm, %bb.ew ], [ %i.lk, %bb.et ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lj, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br label %.thread286

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit169: ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lj, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.eq

bb.ex:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.af, ptr noundef nonnull align 8 dereferenceable(152) %i.z, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.af, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.ln = load i16, ptr %i.ah, align 8, !range !24, !alias.scope !1658, !noundef !7
  %i.lo = icmp eq i16 %i.ln, 2
  br i1 %i.lo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameEECsi17nFaBu4HY_10ech_client.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ah)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameEECsi17nFaBu4HY_10ech_client.exit unwind label %.body123.thread272.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameEECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.lp = load i16, ptr %i.al, align 8, !range !24, !alias.scope !1659, !noundef !7
  %i.lq = icmp eq i16 %i.lp, 2
  br i1 %i.lq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit179, label %bb.ez

bb.ez:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameEECsi17nFaBu4HY_10ech_client.exit
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.al)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3soa3SOAECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(184) %i.ls) #26
          to label %.body119 unwind label %bb.fe

bb.fb:                                            ; preds = %bb.ez
  %i.lt = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.lt)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBG_5rdata3soa3SOAEECsi17nFaBu4HY_10ech_client.exit.i173 unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.lu = landingpad { ptr, i32 }
          cleanup
  %i.lv = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.lv) #26
          to label %.body119 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.fe:                                            ; preds = %bb.fa
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBG_5rdata3soa3SOAEECsi17nFaBu4HY_10ech_client.exit.i173: ; preds = %bb.fb
  %i.ly = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ly)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit179 unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit179: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameEECsi17nFaBu4HY_10ech_client.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBG_5rdata3soa3SOAEECsi17nFaBu4HY_10ech_client.exit.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.lz = trunc nuw i8 %.sroa.066.8 to i1
  br i1 %i.lz, label %bb.ff, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit184

bb.ff:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsi17nFaBu4HY_10ech_client.exit179
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.fh unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %.thread341 unwind label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECsi17nFaBu4HY_10ech_client.exit184

bb.fi:                                            ; preds = %bb.fg
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #24
  unreachable

.body119.thread:                                  ; preds = %.body119.thread350, %.body119
  %.sroa.076.4 = phi i1 [ %.sroa.076.0354, %.body119.thread350 ], [ %.sroa.076.0, %.body119 ]
  %.pn94.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn.pn355, %.body119.thread350 ], [ %.pn94.pn.pn.pn, %.body119 ] ; 2 uses
  br i1 %.sroa.076.4, label %bb.fv, label %.thread341

.split:                                           ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsi17nFaBu4HY_10ech_client.exit
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i125.ph, i64 80
  %i.md = invoke { i16, i16 } @_RNvXs0_NtNtCsjXdHNeFfodD_13hickory_proto2rr11record_dataNtB5_5RDataNtB7_10RecordData11record_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.mc)
          to label %bb.fk unwind label %.thread294.loopexit.split.split.loopexit ; 2 uses

bb.fj:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.020.0 = phi i1 [ false, %bb.fk ], [ %spec.select114, %bb.fl ] ; 3 uses
  %i.me = load i16, ptr %i.ah, align 8, !range !24, !noundef !7
  %.not92 = icmp eq i16 %i.me, 2
  %i.mf = load ptr, ptr %.sroa.6191.0..sroa_idx192, align 8, !nonnull !7, !align !8
  %.sroa.078.0 = select i1 %.not92, ptr %i.mf, ptr %i.ah
  %i.mg = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.078.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0.i125.ph)
          to label %bb.fm unwind label %.thread294.loopexit.split.split.loopexit

bb.fk:                                            ; preds = %.split
  %i.mh = extractvalue { i16, i16 } %i.md, 0
  %i.mi = icmp eq i16 %i.ca, %i.mh
  br i1 %i.mi, label %bb.fl, label %bb.fj

bb.fl:                                            ; preds = %bb.fk
  %i.mj = extractvalue { i16, i16 } %i.md, 1
  %i.mk = icmp eq i16 %i.ew, %i.mj
  %spec.select114 = select i1 %i.ex, i1 true, i1 %i.mk
  br label %bb.fj

bb.fm:                                            ; preds = %bb.fj
  br i1 %i.mg, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ml = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0.i125.ph)
          to label %bb.fp unwind label %.thread294.loopexit.split.split.loopexit

bb.fo:                                            ; preds = %bb.fm
  %i.mm = select i1 %.sroa.020.0, i1 %.sroa.15.0, i1 false
  %.sroa.012.0.mux = select i1 %.sroa.020.0, i1 true, i1 %.sroa.012.0.ph
  br i1 %i.mm, label %bb.fq, label %.outer.backedge

bb.fp:                                            ; preds = %bb.fn
  %or.cond = and i1 %.sroa.020.0, %i.ml           ; 2 uses
end_hunk_1
