Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.15?download=true
inline.NumInlined: 428
inline.NumDeleted: 253
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB2_13ResponseCache3get:bb.a
          to label %.body.i.i.i.i.i unwind label %bb.gf, !noalias !591

bb.ge:                                            ; preds = %bb.gb
  %.sroa.5.sroa.4.6..sroa_idx.i.i.i.i.i.i59.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.i.i.i.i.i.i46.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.sroa.4.6..sroa_idx.i.i.i.i.i.i59.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !592
  br label %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i52.i

bb.gf:                                            ; preds = %bb.gd
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !591
  unreachable

_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i52.i: ; preds = %bb.ge, %bb.gc
  %.sroa.5.sroa.0.0.i.i.i.i.i.i53.i = phi i16 [ undef, %bb.ge ], [ %i.pe, %bb.gc ]
  %.sroa.0.0.i.i.i.i.i.i54.i = phi i16 [ 1, %bb.ge ], [ 0, %bb.gc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !592
  %.sroa.4.0..sroa_idx.i1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i16 %.sroa.0.0.i.i.i.i.i.i54.i, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i.i, align 8, !noalias !586
  %.sroa.5.0..sroa_idx.i2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 42
  store i16 %.sroa.5.sroa.0.0.i.i.i.i.i.i53.i, ptr %.sroa.5.0..sroa_idx.i2.i.i.i.i.i, align 2, !noalias !586
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.sroa.4.i.i.i.i.i.i46.i, i64 28, i1 false), !noalias !586
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i8 %i.oq, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !586
  br label %bb.gg

bb.gg:                                            ; preds = %_RNvXsl_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i52.i, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nj, i64 128
  %i.pi = load i64, ptr %i.ph, align 8, !alias.scope !587, !noalias !588, !noundef !4
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nj, i64 140
  %i.pk = load i16, ptr %i.pj, align 4, !alias.scope !587, !noalias !588, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !586
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.nj)
          to label %bb.gk unwind label %bb.gj, !noalias !588

bb.gh:                                            ; preds = %bb.gl, %bb.gj
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pv, %bb.gl ], [ %i.pn, %bb.gj ] ; 2 uses
  %i.pl = load i16, ptr %i.j, align 8, !range !19, !alias.scope !593, !noalias !586, !noundef !4
  %i.pm = icmp samesign ugt i16 %i.pl, 1
  br i1 %i.pm, label %.body.i.i.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.j)
          to label %.body.i.i.i.i.i unwind label %bb.gm, !noalias !588

bb.gj:                                            ; preds = %bb.gg
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gk:                                            ; preds = %bb.gg
  %i.po = getelementptr inbounds nuw i8, ptr %i.nj, i64 142
  %i.pp = load i16, ptr %i.po, align 2, !alias.scope !587, !noalias !588, !noundef !4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nj, i64 136
  %i.pr = load i16, ptr %i.pq, align 8, !range !594, !alias.scope !587, !noalias !588, !noundef !4 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.nj, i64 138
  %i.pt = load i16, ptr %i.ps, align 2, !alias.scope !587, !noalias !588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !586
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pu)
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata4tsig4TSIGEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit.i.i unwind label %bb.gl, !noalias !588

bb.gl:                                            ; preds = %bb.gk
  %i.pv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #20
          to label %bb.gh unwind label %bb.gm, !noalias !588

bb.gm:                                            ; preds = %bb.gl, %bb.gi
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !588
  unreachable

bb.gn:                                            ; preds = %bb.fz
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.gn, %bb.gi, %bb.gh, %bb.gd
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.px, %bb.gn ], [ %i.pf, %bb.gd ], [ %.pn.i.i.i.i.i.i, %bb.gh ], [ %.pn.i.i.i.i.i.i, %bb.gi ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m) #20
          to label %bb.gq unwind label %bb.go, !noalias !584

bb.go:                                            ; preds = %.body.i.i.i.i.i
  %i.py = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !584
  unreachable

bb.gp:                                            ; preds = %bb.fg
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.body.i.i.i.i.i, %bb.fk
  %eh.lpad-body.i.i55.i = phi { ptr, i32 } [ %i.pz, %bb.gp ], [ %i.od, %bb.fk ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nk, i64 noundef 232, i64 noundef 8) #22, !noalias !572
  br label %.body.i.i

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata4tsig4TSIGEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %bb.gk
  %.not.i.i.i.i.i.i = icmp eq i16 %i.pr, -1
  %.sroa.5.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i16 undef, i16 %i.pt
  %.sroa.0.48..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i47.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !noalias !595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i47.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !595
  %.sroa.0.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i47.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.i.i.i.i46.i)
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.nk, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0.i.i.i.i47.i, i64 128, i1 false), !noalias !596
  %.sroa.4.0..sroa_idx.i.i.i56.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 128
  store i64 %i.pi, ptr %.sroa.4.0..sroa_idx.i.i.i56.i, align 8, !noalias !596
  %.sroa.5.0..sroa_idx.i.i.i57.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 136
  store i16 %i.pr, ptr %.sroa.5.0..sroa_idx.i.i.i57.i, align 8, !noalias !596
  %.sroa.6.0..sroa_idx.i.i.i58.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 138
  store i16 %.sroa.5.0.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i58.i, align 2, !noalias !596
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 140
  store i16 %i.pk, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4, !noalias !596
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 142
  store i16 %i.pp, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 2, !noalias !596
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 224
  store <2 x i16> %i.oi, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !596
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 228
  store i32 %i.ok, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 4, !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i47.i)
  br label %bb.gr

bb.gr:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata4tsig4TSIGEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.fe
  %storemerge.i.i = phi ptr [ null, %bb.fe ], [ %i.nk, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata4tsig4TSIGEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit.i.i ] ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.bw, i64 112 ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !range !6, !alias.scope !571, !noalias !572, !noundef !4
  %.not9.i.i = icmp eq i64 %i.qb, -1
  br i1 %.not9.i.i, label %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, label %bb.gt

.body.i.i:                                        ; preds = %bb.gu, %bb.gs, %bb.gq
  %.pn.i.i = phi { ptr, i32 } [ %i.qn, %bb.gu ], [ %i.qc, %bb.gs ], [ %eh.lpad-body.i.i55.i, %bb.gq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #20
          to label %bb.fc unwind label %bb.gw, !noalias !572

bb.gs:                                            ; preds = %bb.ff
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.gt:                                            ; preds = %bb.gr
  %i.qd = getelementptr inbounds nuw i8, ptr %i.bw, i64 142
  %i.qe = load i8, ptr %i.qd, align 2, !alias.scope !571, !noalias !572, !noundef !4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.bw, i64 143
  %i.qg = load i8, ptr %i.qf, align 1, !alias.scope !571, !noalias !572, !noundef !4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %i.qi = load i16, ptr %i.qh, align 8, !alias.scope !571, !noalias !572, !noundef !4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bw, i64 138
  %i.qk = load i8, ptr %i.qj, align 2, !range !13, !alias.scope !571, !noalias !572, !noundef !4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bw, i64 140
  %i.qm = load i16, ptr %i.ql, align 4, !alias.scope !571, !noalias !572, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !573
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBI_10EdnsOptionEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qa)
          to label %bb.gv unwind label %bb.gu, !noalias !572

bb.gu:                                            ; preds = %bb.gt
  %i.qn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtNtNtB1B_5rdata4tsig4TSIGEEEECs9RFwvXNxPyg_16hickory_resolver(ptr %storemerge.i.i) #20
          to label %.body.i.i unwind label %bb.gw, !noalias !572

bb.gv:                                            ; preds = %bb.gt
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.n, align 8, !noalias !573
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !573
  br label %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.gw:                                            ; preds = %bb.gu, %.body.i.i, %bb.fc, %bb.ez, %bb.ew
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !572
  unreachable

_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.gv, %bb.gr
  %.sroa.5.sroa.9.0.i.i = phi i8 [ %i.qg, %bb.gv ], [ undef, %bb.gr ] ; 2 uses
  %.sroa.5.sroa.8.0.i.i = phi i8 [ %i.qe, %bb.gv ], [ undef, %bb.gr ] ; 2 uses
  %.sroa.5.sroa.7.0.i.i = phi i16 [ %i.qm, %bb.gv ], [ undef, %bb.gr ] ; 2 uses
  %.sroa.5.sroa.5.0.i.i = phi i8 [ %i.qk, %bb.gv ], [ undef, %bb.gr ] ; 2 uses
  %.sroa.5.sroa.4.0.i.i = phi i16 [ %i.qi, %bb.gv ], [ undef, %bb.gr ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.06.0.copyload.i.i, %bb.gv ], [ -1, %bb.gr ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.i, ptr noundef nonnull align 2 dereferenceable(16) %i.s, i64 16, i1 false)
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.r, align 8, !noalias !495 ; 2 uses
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx, i64 16, i1 false)
  %i.qp = load i64, ptr %i.q, align 8, !noalias !597 ; 2 uses
  %.sroa.5.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.24.copyload.i = load ptr, ptr %.sroa.5.24..sroa_idx.i, align 8, !noalias !597, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.6.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.24.copyload.i = load i64, ptr %.sroa.6.24..sroa_idx.i, align 8, !noalias !597 ; 4 uses
  %.sroa.7.48.copyload.i = load i64, ptr %i.p, align 8, !noalias !597 ; 2 uses
  %.sroa.8.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.8.48.copyload.i = load ptr, ptr %.sroa.8.48..sroa_idx.i, align 8, !noalias !597 ; 5 uses
  %.sroa.9.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.9.48.copyload.i = load i64, ptr %.sroa.9.48..sroa_idx.i, align 8, !noalias !597 ; 4 uses
  %.sroa.10.72.copyload.i = load i64, ptr %i.o, align 8, !noalias !597 ; 2 uses
  %.sroa.11.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.11.72.copyload.i = load ptr, ptr %.sroa.11.72..sroa_idx.i, align 8, !noalias !597 ; 5 uses
  %.sroa.12.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.12.72.copyload.i = load i64, ptr %.sroa.12.72..sroa_idx.i, align 8, !noalias !597 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.qq = load i32, ptr %i.az, align 4, !noalias !495 ; 3 uses
  %.idx.i = mul nuw nsw i64 %.sroa.6.24.copyload.i, 272
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.5.24.copyload.i, i64 %.idx.i
  %i.qs = icmp eq i64 %.sroa.6.24.copyload.i, 0
  br i1 %i.qs, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.48.copyload.i) ]
  %.idx.1.i = mul nuw nsw i64 %.sroa.9.48.copyload.i, 272
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.8.48.copyload.i, i64 %.idx.1.i
  %i.qu = icmp eq i64 %.sroa.9.48.copyload.i, 0
  br i1 %i.qu, label %.loopexit.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.lr.ph.1.i
  %.sroa.05.085.1.i = phi ptr [ %i.qv, %.lr.ph.1.i ], [ %.sroa.8.48.copyload.i, %.loopexit.i ] ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i, i64 272 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.05.085.1.i, i64 268 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !noalias !495, !noundef !4
  %i.qy = call i32 @llvm.usub.sat.i32(i32 %i.qx, i32 %i.qq)
  store i32 %i.qy, ptr %i.qw, align 4, !noalias !495
  %i.qz = icmp eq ptr %i.qv, %i.qt
  br i1 %i.qz, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i, %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.72.copyload.i) ]
  %.idx.2.i = mul nuw nsw i64 %.sroa.12.72.copyload.i, 272
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.11.72.copyload.i, i64 %.idx.2.i
  %i.rb = icmp eq i64 %.sroa.12.72.copyload.i, 0
  br i1 %i.rb, label %.loopexit.2.i, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %.loopexit.1.i, %.lr.ph.2.i
  %.sroa.05.085.2.i = phi ptr [ %i.rc, %.lr.ph.2.i ], [ %.sroa.11.72.copyload.i, %.loopexit.1.i ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i, i64 272 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.05.085.2.i, i64 268 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !noalias !495, !noundef !4
  %i.rf = call i32 @llvm.usub.sat.i32(i32 %i.re, i32 %i.qq)
  store i32 %i.rf, ptr %i.rd, align 4, !noalias !495
  %i.rg = icmp eq ptr %i.rc, %i.ra
  br i1 %i.rg, label %.loopexit.2.i, label %.lr.ph.2.i

.lr.ph.i:                                         ; preds = %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.05.085.i = phi ptr [ %i.rh, %.lr.ph.i ], [ %.sroa.5.24.copyload.i, %_RNvXs4_NtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB5_7MessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i, i64 272 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.05.085.i, i64 268 ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !noalias !495, !noundef !4
  %i.rk = call i32 @llvm.usub.sat.i32(i32 %i.rj, i32 %i.qq)
  store i32 %i.rk, ptr %i.ri, align 4, !noalias !495
  %i.rl = icmp eq ptr %i.rh, %i.qr
  br i1 %i.rl, label %.loopexit.i, label %.lr.ph.i

bb.gx:                                            ; preds = %bb.ho, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i, %bb.hg
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !495
  unreachable

bb.gy:                                            ; preds = %bb.eo, %bb.ek
  %.sroa.55.0.i.i.i = phi i64 [ %i.mu, %bb.eo ], [ undef, %bb.ek ] ; 3 uses
  %i.rn = trunc nuw i32 %i.ch to i1
  %.sroa.53.0.i.i.i = select i1 %i.rn, i32 %i.ml, i32 undef
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.ch, ptr %i.ro, align 8, !alias.scope !497, !noalias !500
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 2 uses
  store i32 %.sroa.53.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !alias.scope !497, !noalias !500
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.ig, ptr %.sroa.7.0..sroa_idx6.i.i, align 8, !alias.scope !497, !noalias !500
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %.sroa.0.0.i9.i.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !497, !noalias !500
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 4 uses
  store ptr %i.mf, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !497, !noalias !500
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 3 uses
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !497, !noalias !500
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 2 uses
  store i64 %.sroa.55.0.i.i.i, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !497, !noalias !500
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store <2 x i16> %i.mn, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !alias.scope !497, !noalias !500
  store i8 2, ptr %i.ay, align 8, !alias.scope !497, !noalias !500
  %cond.i = icmp eq i32 %i.ch, 0
  br i1 %cond.i, label %bb.ha, label %bb.gz

_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEECs9RFwvXNxPyg_16hickory_resolver.exit81.i, %bb.he, %bb.et, %bb.er, %.thread.i, %bb.ct, %bb.cs, %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %bb.r, %.noexc5, %bb.o, %bb.n, %.noexc4, %bb.l, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.5.sroa.5.0.copyload23 = load i64, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8, !noalias !494
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8, !noalias !494
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.7.8.copyload = load i64, ptr %.sroa.7.8..sroa_idx, align 8, !noalias !494
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.8.8.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8, !noalias !494
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !494
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %.sroa.10.8.copyload = load i64, ptr %.sroa.10.8..sroa_idx, align 8, !noalias !494
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %.sroa.11.8.copyload = load i64, ptr %.sroa.11.8..sroa_idx, align 8, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !495
  br label %.loopexit.2.i

bb.gz:                                            ; preds = %bb.gy
  %i.rp = load i32, ptr %i.az, align 4, !noalias !495, !noundef !4
  %i.rq = call i32 @llvm.usub.sat.i32(i32 %i.ml, i32 %i.rp)
  store i32 %i.rq, ptr %.sroa.5.0..sroa_idx2.i.i, align 4, !noalias !495
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.not40.i = icmp eq ptr %.sroa.0.0.i9.i.i, null
  br i1 %.not40.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.rr = load i32, ptr %i.az, align 4, !noalias !495, !noundef !4
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i9.i.i, i64 268 ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !noalias !495, !noundef !4
  %i.ru = call i32 @llvm.usub.sat.i32(i32 %i.rt, i32 %i.rr)
  store i32 %i.ru, ptr %i.rs, align 4, !noalias !495
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  store ptr null, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !495
  br i1 %.not8.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !495
  store ptr %i.mp, ptr %i.ax, align 8, !noalias !495
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.55.0.i.i.i, ptr %i.rv, align 8, !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !495
  %i.rw = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %i.rx = getelementptr inbounds nuw [272 x i8], ptr %i.rw, i64 %.sroa.55.0.i.i.i
  store ptr %i.rw, ptr %i.av, align 8, !noalias !495
  %i.ry = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.rx, ptr %i.ry, align 8, !noalias !495
  %i.rz = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.az, ptr %i.rz, align 8, !noalias !495
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2t_6cloned6ClonedINtNtNtB2x_5slice4iter4IterB13_EENCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB4d_5Entry11updated_ttl0EE9from_iterB4f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.hh unwind label %bb.hf, !noalias !495

bb.he:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i, %bb.hc
  %i.sa = phi i64 [ %.pre108.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i ], [ %.sroa.5.0.i.i.i, %bb.hc ] ; 2 uses
  %i.sb = phi ptr [ %.pre107.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i ], [ %i.mf, %bb.hc ] ; 3 uses
  store ptr null, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !495
  %.not42.i = icmp eq ptr %i.sb, null
  br i1 %.not42.i, label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i, label %bb.hm

bb.hf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.hh, %bb.hd
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.hi, %bb.hf
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.sc, %bb.hf ], [ %i.sm, %bb.hi ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.sd = load ptr, ptr %i.ax, align 8, !alias.scope !600, !noalias !495, !nonnull !4, !noundef !4
  %i.se = atomicrmw sub ptr %i.sd, i64 1 release, align 8, !noalias !601
  %i.sf = icmp eq i64 %i.se, 1
  br i1 %i.sf, label %bb.hg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i

bb.hg:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.gx, !noalias !495

bb.hh:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !495
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.aw, align 8, !alias.scope !602, !noalias !495
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !602, !noalias !495, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !alias.scope !602, !noalias !495 ; 3 uses
  %i.sg = icmp ult i64 %.sroa.54.0.copyload.i.i, 33909456017848441
  call void @llvm.assume(i1 %i.sg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !603
  store i64 %.sroa.54.0.copyload.i.i, ptr %i.e, align 8, !noalias !603
  %i.sh = mul nuw nsw i64 %.sroa.54.0.copyload.i.i, 272 ; 2 uses
  %i.si = invoke { ptr, i64 } @_RINvMso_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1W_s_0ECs9RFwvXNxPyg_16hickory_resolver(i64 noundef 8, i64 noundef %i.sh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc62.i unwind label %bb.hf, !noalias !495 ; 2 uses

.noexc62.i:                                       ; preds = %bb.hh
  %i.sj = extractvalue { ptr, i64 } %i.si, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !603
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sk, ptr nonnull align 8 %.sroa.43.0.copyload.i.i, i64 %i.sh, i1 false), !noalias !603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !603
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.d, align 8, !noalias !603
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.43.0.copyload.i.i, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !603
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !603
  %i.sl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.sl, align 8, !noalias !603
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i unwind label %bb.hi, !noalias !603

bb.hi:                                            ; preds = %.noexc62.i
  %i.sm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body.i unwind label %bb.hj, !noalias !603

bb.hj:                                            ; preds = %bb.hi
  %i.sn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !603
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %.noexc62.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.hf, !noalias !495

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEEECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sj) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !603
  %i.so = extractvalue { ptr, i64 } %i.si, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !495
  store ptr %i.sj, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !495
  store i64 %i.so, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !495
  %.pre.i = load ptr, ptr %i.ax, align 8, !alias.scope !604, !noalias !495
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.sp = atomicrmw sub ptr %.pre.i, i64 1 release, align 8, !noalias !607
  %i.sq = icmp eq i64 %i.sp, 1
  br i1 %i.sq, label %bb.hk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i

bb.hk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i unwind label %bb.hl, !noalias !495

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %bb.ho, %.body76.i, %bb.hl, %bb.hg, %.body.i
  %.pn43.i = phi { ptr, i32 } [ %i.sr, %bb.hl ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.hg ], [ %eh.lpad-body77.i, %bb.ho ], [ %eh.lpad-body77.i, %.body76.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ay) #20
          to label %.body unwind label %bb.gx, !noalias !495

bb.hl:                                            ; preds = %bb.hs, %bb.hk
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit66.i: ; preds = %bb.hk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !495
  %.pre107.i = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !495
  %.pre108.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !495
  br label %bb.he

bb.hm:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !495
  store ptr %i.sb, ptr %i.au, align 8, !noalias !495
  %i.ss = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.sa, ptr %i.ss, align 8, !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !495
  %i.st = getelementptr inbounds nuw i8, ptr %i.sb, i64 16 ; 2 uses
  %i.su = getelementptr inbounds nuw [288 x i8], ptr %i.st, i64 %i.sa
  store ptr %i.st, ptr %i.as, align 8, !noalias !495
  %i.sv = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.su, ptr %i.sv, align 8, !noalias !495
  %i.sw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.az, ptr %i.sw, align 8, !noalias !495
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2t_6cloned6ClonedINtNtNtB2x_5slice4iter4IterB13_EENCNvMs_NtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB4d_5Entry11updated_ttls_0EE9from_iterB4f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.as)
          to label %bb.hp unwind label %bb.hn, !noalias !495

bb.hn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i, %bb.hp, %bb.hm
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body76.i

.body76.i:                                        ; preds = %bb.hq, %bb.hn
  %eh.lpad-body77.i = phi { ptr, i32 } [ %i.sx, %bb.hn ], [ %i.th, %bb.hq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.sy = load ptr, ptr %i.au, align 8, !alias.scope !610, !noalias !495, !nonnull !4, !noundef !4
  %i.sz = atomicrmw sub ptr %i.sy, i64 1 release, align 8, !noalias !611
  %i.ta = icmp eq i64 %i.sz, 1
  br i1 %i.ta, label %bb.ho, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i

bb.ho:                                            ; preds = %.body76.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.gx, !noalias !495

bb.hp:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !495
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %.sroa.02.0.copyload.i68.i = load i64, ptr %i.at, align 8, !alias.scope !612, !noalias !495
  %.sroa.43.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.43.0.copyload.i70.i = load ptr, ptr %.sroa.43.0..sroa_idx.i69.i, align 8, !alias.scope !612, !noalias !495, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.54.0..sroa_idx.i71.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.54.0.copyload.i72.i = load i64, ptr %.sroa.54.0..sroa_idx.i71.i, align 8, !alias.scope !612, !noalias !495 ; 3 uses
  %i.tb = icmp ult i64 %.sroa.54.0.copyload.i72.i, 32025597350190194
  call void @llvm.assume(i1 %i.tb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !613
  store i64 %.sroa.54.0.copyload.i72.i, ptr %i.c, align 8, !noalias !613
  %i.tc = mul nuw nsw i64 %.sroa.54.0.copyload.i72.i, 288 ; 2 uses
  %i.td = invoke { ptr, i64 } @_RINvMso_NtCs4wP2HXfJTCR_5alloc4syncINtB6_3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1W_s_0ECs9RFwvXNxPyg_16hickory_resolver(i64 noundef 8, i64 noundef %i.tc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc75.i unwind label %bb.hn, !noalias !495 ; 2 uses

.noexc75.i:                                       ; preds = %bb.hp
  %i.te = extractvalue { ptr, i64 } %i.td, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !613
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tf, ptr nonnull align 8 %.sroa.43.0.copyload.i70.i, i64 %i.tc, i1 false), !noalias !613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !613
  store i64 %.sroa.02.0.copyload.i68.i, ptr %i.b, align 8, !noalias !613
  %.sroa.410.0..sroa_idx.i73.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.43.0.copyload.i70.i, ptr %.sroa.410.0..sroa_idx.i73.i, align 8, !noalias !613
  %.sroa.511.0..sroa_idx.i74.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i74.i, align 8, !noalias !613
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.tg, align 8, !noalias !613
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i unwind label %bb.hq, !noalias !613

bb.hq:                                            ; preds = %.noexc75.i
  %i.th = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body76.i unwind label %bb.hr, !noalias !613

bb.hr:                                            ; preds = %bb.hq
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !613
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i: ; preds = %.noexc75.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtB7_5alloc6GlobalENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.hn, !noalias !495

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEEECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataRNtNtBG_5alloc6GlobalEECs9RFwvXNxPyg_16hickory_resolver.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.te) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !613
  %i.tj = extractvalue { ptr, i64 } %i.td, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !495
  store ptr %i.te, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !495
  store i64 %i.tj, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx.i.i, align 8, !noalias !495
  %.pre111.i = load ptr, ptr %i.au, align 8, !alias.scope !614, !noalias !495
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.tk = atomicrmw sub ptr %.pre111.i, i64 1 release, align 8, !noalias !617
  %i.tl = icmp eq i64 %i.tk, 1
  br i1 %i.tl, label %bb.hs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEECs9RFwvXNxPyg_16hickory_resolver.exit81.i

bb.hs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEECs9RFwvXNxPyg_16hickory_resolver.exit81.i unwind label %bb.hl, !noalias !495

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEECs9RFwvXNxPyg_16hickory_resolver.exit81.i: ; preds = %bb.hs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !495
  br label %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20: ; preds = %bb.c, %bb.d, %bb.e, %bb.hv, %.loopexit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  ret void

bb.ht:                                            ; preds = %bb.ev, %bb.cv, %bb.ch, %bb.by, %bb.bx, %bb.br, %bb.bk, %bb.av, %bb.au, %bb.ad, %bb.u, %bb.t, %bb.p, %bb.m, %bb.f
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bd, %bb.bg, %bb.bo, %bb.bs, %bb.ca, %bb.cd, %bb.de, %.body.i.i.i, %bb.ew, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i, %bb.ht
  %eh.lpad-body = phi { ptr, i32 } [ %i.tm, %bb.ht ], [ %.pn.pn.pn.pn.i.i, %bb.ew ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.hh, %bb.cd ], [ %i.gj, %bb.bs ], [ %i.fr, %bb.bd ], [ %i.fv, %bb.bg ], [ %i.gh, %bb.bo ], [ %i.hd, %bb.ca ], [ %eh.lpad-body.i.i.i.i, %bb.de ], [ %.pn43.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordEECs9RFwvXNxPyg_16hickory_resolver.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.tn = load ptr, ptr %i.bc, align 8, !alias.scope !621, !nonnull !4, !noundef !4
  %i.to = atomicrmw sub ptr %i.tn, i64 1 release, align 8, !noalias !621
  %i.tp = icmp eq i64 %i.to, 1
  br i1 %i.tp, label %bb.hu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit19

bb.hu:                                            ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bc) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit19 unwind label %bb.hw

.loopexit.2.i:                                    ; preds = %.lr.ph.2.i, %.loopexit.1.i, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i
  %.sroa.5.sroa.5.0 = phi i64 [ %.sroa.5.sroa.5.0.copyload23, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %i.qp, %.loopexit.1.i ], [ %i.qp, %.lr.ph.2.i ]
  %.sroa.22.0 = phi ptr [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %storemerge.i.i, %.loopexit.1.i ], [ %storemerge.i.i, %.lr.ph.2.i ]
  %.sroa.20.0 = phi i8 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.9.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.9.0.i.i, %.lr.ph.2.i ]
  %.sroa.19.0 = phi i8 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.8.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.8.0.i.i, %.lr.ph.2.i ]
  %.sroa.1822.0 = phi i16 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.7.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.7.0.i.i, %.lr.ph.2.i ]
  %.sroa.17.0 = phi i8 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.5.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.5.0.i.i, %.lr.ph.2.i ]
  %.sroa.16.0 = phi i16 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.sroa.4.0.i.i, %.loopexit.1.i ], [ %.sroa.5.sroa.4.0.i.i, %.lr.ph.2.i ]
  %.sroa.14.0 = phi i64 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.0.0.i.i, %.loopexit.1.i ], [ %.sroa.0.0.i.i, %.lr.ph.2.i ]
  %.sroa.13.0 = phi i64 [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.12.72.copyload.i, %.loopexit.1.i ], [ %.sroa.12.72.copyload.i, %.lr.ph.2.i ]
  %.sroa.12.0 = phi ptr [ undef, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.11.72.copyload.i, %.loopexit.1.i ], [ %.sroa.11.72.copyload.i, %.lr.ph.2.i ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.10.72.copyload.i, %.loopexit.1.i ], [ %.sroa.10.72.copyload.i, %.lr.ph.2.i ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.9.48.copyload.i, %.loopexit.1.i ], [ %.sroa.9.48.copyload.i, %.lr.ph.2.i ]
  %.sroa.9.0 = phi ptr [ %.sroa.9.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.8.48.copyload.i, %.loopexit.1.i ], [ %.sroa.8.48.copyload.i, %.lr.ph.2.i ]
  %.sroa.8.0 = phi i64 [ %.sroa.8.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.7.48.copyload.i, %.loopexit.1.i ], [ %.sroa.7.48.copyload.i, %.lr.ph.2.i ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.6.24.copyload.i, %.loopexit.1.i ], [ %.sroa.6.24.copyload.i, %.lr.ph.2.i ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.8.copyload, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.5.24.copyload.i, %.loopexit.1.i ], [ %.sroa.5.24.copyload.i, %.lr.ph.2.i ]
  %.sroa.0.0 = phi i64 [ -1, %_RNvXse_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.thread.i ], [ %.sroa.0.i.sroa.0.0.copyload, %.loopexit.1.i ], [ %.sroa.0.i.sroa.0.0.copyload, %.lr.ph.2.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i.i, i64 16, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.1822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i16 %.sroa.1822.0, ptr %.sroa.1822.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 126
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.i, i64 16, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.tq = load ptr, ptr %i.bc, align 8, !alias.scope !625, !nonnull !4, !noundef !4
  %i.tr = atomicrmw sub ptr %i.tq, i64 1 release, align 8, !noalias !625
  %i.ts = icmp eq i64 %i.tr, 1
  br i1 %i.ts, label %bb.hv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20

bb.hv:                                            ; preds = %.loopexit.2.i
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bc) #23
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit20

bb.hw:                                            ; preds = %bb.hu
  %i.tt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEBF_.exit19: ; preds = %.body, %bb.hu
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver5cacheNtB2_13ResponseCache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [200 x i8], align 8               ; 14 uses
  %i.c = alloca [200 x i8], align 8               ; 16 uses
  %i.d = alloca [200 x i8], align 8               ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtNtCs3kA96HWnWrK_4moka4sync7builderINtB2_12CacheBuilderNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryINtNtB4_5cache5CacheBW_B1K_EENtNtCsj6eKBz9Db1c_4core7default7Default7defaultB1O_(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.b)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load <2 x i64>, ptr %i.l, align 8
  store <2 x i64> %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.q = load <2 x ptr>, ptr %i.o, align 8
  store <2 x ptr> %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.s = load i8, ptr %i.r, align 8, !range !13, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i8 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.w = load <2 x ptr>, ptr %i.u, align 8
  store <2 x ptr> %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 193
  %i.ac = load i8, ptr %i.ab, align 1, !range !13, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 193
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ah = load i32, ptr %i.ag, align 8, !range !23, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.af, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 %i.ah, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvMs1_NtNtCs3kA96HWnWrK_4moka4sync7builderINtB6_12CacheBuilderNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryINtNtB8_5cache5CacheB10_B1O_EE12expire_afterNtB1Q_11EntryExpiryEB1S_(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.c)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtNtCs3kA96HWnWrK_4moka4sync7builderINtB4_12CacheBuilderNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryINtNtB6_5cache5CacheBY_B1M_EE5buildB1Q_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(200) %i.d)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ak, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
