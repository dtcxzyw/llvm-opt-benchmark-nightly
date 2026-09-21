Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCsc2V0exE7CWf_11lance_arrow21adjust_child_validity:bb.a
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ag = tail call noundef align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5nulls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not19 = icmp eq ptr %i.ag, null
  br i1 %.not19, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !10, !align !12, !noundef !10
  %i.ak = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.bk, label %bb.bj

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanRNtB5_13BooleanBufferNtNtNtCscI6d9CVNmLh_4core3ops3bit6BitAnd6bitand(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  call void @_RNvXs0_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noundef !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load i64, ptr %i.as, align 8, !noundef !10
  store ptr %i.am, ptr %i.m, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.aq, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.au = load <2 x i64>, ptr %i.ar, align 8
  store <2 x i64> %i.au, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.at, ptr %.sroa.510.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.o, ptr %i.av, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aw = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.s unwind label %.split.thread

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit
  br i1 %.sroa.08.3, label %bb.bh, label %.thread

.split.thread:                                    ; preds = %bb.s, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.s:                                             ; preds = %bb.q
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.t unwind label %.split.thread

bb.t:                                             ; preds = %bb.s
  %i.ax = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.v unwind label %bb.u

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.x, %bb.w, %bb.y, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.u ], [ %i.ba, %bb.y ], [ %i.ba, %bb.w ], [ %i.ba, %bb.x ] ; 2 uses
  %.sroa.08.3 = phi i1 [ true, %bb.u ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.x ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.i) #37
          to label %bb.r unwind label %bb.bd

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.az = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6offset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.z unwind label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5516)
  %i.bb = load ptr, ptr %i.h, align 8, !alias.scope !5516, !noundef !10 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !5517
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.bd

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7to_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.aa unwind label %bb.w

bb.aa:                                            ; preds = %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !10 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5518)
  %i.bj = mul nuw nsw i64 %i.bi, 24               ; 2 uses
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %.loopexit54, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5519
  %i.bl = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bj, i64 noundef range(i64 1, 9) 8) #39, !noalias !5519 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.ac, label %.lr.ph.preheader.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bj) #36
          to label %.noexc30 unwind label %bb.aj

.noexc30:                                         ; preds = %bb.ac
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.ab
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bi
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.preheader.i
  %.sroa.012.034.i = phi ptr [ %i.bu, %bb.af ], [ %i.bg, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.7.033.i = phi i64 [ %i.bt, %bb.af ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.032.i = phi i64 [ %i.bo, %bb.af ], [ %i.bi, %.lr.ph.preheader.i ]
  %i.bo = add nsw i64 %.sroa.10.032.i, -1         ; 2 uses
  %i.bp = icmp eq ptr %.sroa.012.034.i, %i.bn
  br i1 %i.bp, label %.loopexit54, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5520)
  %i.bq = load ptr, ptr %.sroa.012.034.i, align 8, !alias.scope !5521, !noalias !5522, !nonnull !10, !noundef !10 ; 2 uses
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !5523
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bt = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !5521, !noalias !5522, !noundef !10
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !5521, !noalias !5522, !noundef !10
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.sroa.7.033.i ; 3 uses
  store ptr %i.bq, ptr %i.bz, align 8, !noalias !5524
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bw, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !5524
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.by, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !5524
  %i.ca = icmp eq i64 %i.bo, 0
  br i1 %i.ca, label %.loopexit54, label %.lr.ph.i

bb.ag:                                            ; preds = %bb.ak, %bb.aj
  %.pn21 = phi { ptr, i32 } [ %i.cg, %bb.ak ], [ %i.cf, %bb.aj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5525)
  %i.cb = load ptr, ptr %i.h, align 8, !alias.scope !5525, !noundef !10 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit32, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !5526
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit32

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit32 unwind label %bb.bd

bb.aj:                                            ; preds = %bb.ac
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit54:                                      ; preds = %.lr.ph.i, %bb.af, %bb.aa
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.aa ], [ %i.bl, %bb.af ], [ %i.bl, %.lr.ph.i ]
  store i64 %i.bi, ptr %i.g, align 8, !noalias !5518
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5518
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bi, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !5518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7to_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %.loopexit54
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.g) #37
          to label %bb.ag unwind label %bb.bd

bb.al:                                            ; preds = %.loopexit54
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !10 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5527
  %i.cl = mul nuw nsw i64 %i.ck, 136              ; 2 uses
  %i.cm = icmp eq i64 %i.ck, 0
  br i1 %i.cm, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc2V0exE7CWf_11lance_arrow.exit.thread.i35, label %bb.am

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc2V0exE7CWf_11lance_arrow.exit.thread.i35: ; preds = %bb.al
  store i64 0, ptr %i.b, align 8, !noalias !5527
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8, !noalias !5527
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit

bb.am:                                            ; preds = %bb.al
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5528, !inline_history !5494
  %i.cp = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cl, i64 noundef range(i64 1, 9) 8) #39, !noalias !5528, !inline_history !5494 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.an, label %.lr.ph.preheader.i33

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cl) #36
          to label %.noexc36 unwind label %.body37.thread52, !inline_history !5494

.body37.thread52:                                 ; preds = %bb.an
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body37.thread

.noexc36:                                         ; preds = %bb.an
  unreachable

.lr.ph.preheader.i33:                             ; preds = %bb.am
  store i64 %i.ck, ptr %i.b, align 8, !noalias !5527
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cp, ptr %i.cs, align 8, !noalias !5527
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.cu = getelementptr inbounds nuw [136 x i8], ptr %i.ci, i64 %i.ck
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.ap, %.lr.ph.preheader.i33
  %.sroa.012.023.i = phi ptr [ %i.cy, %bb.ap ], [ %i.ci, %.lr.ph.preheader.i33 ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.cx, %bb.ap ], [ 0, %.lr.ph.preheader.i33 ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.cv, %bb.ap ], [ %i.ck, %.lr.ph.preheader.i33 ]
  %i.cv = add nsw i64 %.sroa.10.021.i, -1         ; 2 uses
  %i.cw = icmp eq ptr %.sroa.012.023.i, %i.cu
  br i1 %i.cw, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5527
  invoke fastcc void @_RNvXs6_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_9ArrayDataNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.012.023.i)
          to label %bb.ap unwind label %bb.ar, !noalias !5529, !inline_history !5494

bb.ap:                                            ; preds = %bb.ao
  %i.cx = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 136
  %i.cz = getelementptr inbounds nuw [136 x i8], ptr %i.cp, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cz, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !5527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5527
  %i.da = icmp eq i64 %i.cv, 0
  br i1 %i.da, label %.loopexit, label %.lr.ph.i34

bb.aq:                                            ; preds = %bb.ar
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5527, !inline_history !5494
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.ct, align 8, !noalias !5527
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %.body37.thread unwind label %bb.aq, !noalias !5527, !inline_history !5494

.body37:                                          ; preds = %.loopexit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.critedge29

.loopexit:                                        ; preds = %bb.ap, %.lr.ph.i34, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc2V0exE7CWf_11lance_arrow.exit.thread.i35
  %i.dd = phi ptr [ %i.co, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc2V0exE7CWf_11lance_arrow.exit.thread.i35 ], [ %i.ct, %.lr.ph.i34 ], [ %i.ct, %bb.ap ]
  store i64 %i.ck, ptr %i.dd, align 8, !noalias !5527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5527
  invoke void @_RNvMNtCs56ggtDZRYpd_10arrow_data4dataNtB2_9ArrayData7try_new(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, i64 noundef %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i64 noundef %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.as unwind label %.body37

bb.as:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5531)
  call void @llvm.experimental.noalias.scope.decl(metadata !5532)
  %i.de = load i64, ptr %i.j, align 8, !range !26, !alias.scope !5532, !noalias !5531, !noundef !10
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %bb.at, label %bb.ay, !prof !11

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5533
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dg, i64 32, i1 false), !noalias !5531
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #36
          to label %bb.av unwind label %bb.au, !noalias !5533

bb.au:                                            ; preds = %bb.at
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #37
          to label %.critedge29 unwind label %bb.aw, !noalias !5533

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5533
  unreachable

.critedge29:                                      ; preds = %bb.ax, %bb.au, %.body37, %.critedge
  %.pn23 = phi { ptr, i32 } [ %i.dc, %.body37 ], [ %eh.lpad-body3851, %.critedge ], [ %i.dj, %bb.ax ], [ %i.dh, %bb.au ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.d) #37
          to label %bb.ba unwind label %bb.bd

bb.ax:                                            ; preds = %bb.ay
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.critedge29

bb.ay:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.j, i64 136, i1 false), !alias.scope !5533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dk = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.k)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.d)
          to label %bb.bc unwind label %bb.bb

bb.ba:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit32, %bb.bb, %.critedge29
  %.pn25 = phi { ptr, i32 } [ %i.dl, %bb.bb ], [ %.pn23, %.critedge29 ], [ %.pn21, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit32 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.f) #37
          to label %.thread unwind label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.f

.body37.thread:                                   ; preds = %bb.ar, %.body37.thread52
  %eh.lpad-body3851 = phi { ptr, i32 } [ %i.cr, %.body37.thread52 ], [ %lpad.loopexit.i, %bb.ar ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.g) #37
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bi, %bb.bg, %bb.ai, %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit32, %.critedge, %.body37.thread, %bb.ba, %.critedge29, %bb.ak, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.be:                                            ; preds = %.body37.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !5534)
  %i.dn = load ptr, ptr %i.h, align 8, !alias.scope !5534, !noundef !10 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.critedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dp = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !5535
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.bg, label %.critedge

end_hunk_0
begin_hunk_1_@_RNvNtCsc2V0exE7CWf_11lance_arrow6struct28normalized_struct_array_data:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx)
          to label %bb.z unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.462.sroa.0.0.copyload = load i64, ptr %.sroa.462.0..sroa_idx, align 8, !noalias !8446
  %.sroa.462.sroa.4.0..sroa.462.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.462.sroa.4.0.copyload = load ptr, ptr %.sroa.462.sroa.4.0..sroa.462.0..sroa_idx.sroa_idx, align 8, !noalias !8446
  %.sroa.462.sroa.5.0..sroa.462.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.462.sroa.5.0.copyload = load i64, ptr %.sroa.462.sroa.5.0..sroa.462.0..sroa_idx.sroa_idx, align 8, !noalias !8446
  %i.by = icmp eq i64 %.sroa.10.0, 0
  br i1 %i.by, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i, label %.lr.ph246

bb.p:                                             ; preds = %.lr.ph246
  %i.bz = icmp eq i64 %i.cb, %.sroa.10.0
  br i1 %i.bz, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i.i245 = phi i64 [ %i.cb, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [136 x i8], ptr %.sroa.8.0, i64 %.sroa.0.0.i.i245
  %i.cb = add i64 %.sroa.0.0.i.i245, 1            ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.ca) #40
          to label %bb.p unwind label %bb.r, !noalias !8496, !inline_history !8435

bb.q:                                             ; preds = %.lr.ph248
  %i.cc = add i64 %.sroa.0.1.i.i247, 1            ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %.sroa.10.0
  br i1 %i.cd, label %.body.i, label %.lr.ph248

bb.r:                                             ; preds = %.lr.ph246
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = icmp eq i64 %i.cb, %.sroa.10.0
  br i1 %i.cf, label %.body.i, label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.r, %bb.q
  %.sroa.0.1.i.i247 = phi i64 [ %i.cc, %bb.q ], [ %i.cb, %bb.r ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [136 x i8], ptr %.sroa.8.0, i64 %.sroa.0.1.i.i247
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.cg) #41
          to label %bb.q unwind label %bb.s, !noalias !8496, !inline_history !8435

bb.s:                                             ; preds = %.lr.ph248
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !8496, !inline_history !8435
  unreachable

.body.i:                                          ; preds = %bb.q, %bb.r
  %i.ci = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.ci, label %.body, label %bb.t

bb.t:                                             ; preds = %.body.i
  %i.cj = mul nuw i64 %.sroa.0.0, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !8496, !inline_history !8436
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.p, %bb.o
  %i.ck = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.ck, label %bb.x, label %bb.u

bb.u:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.cl = mul nuw i64 %.sroa.0.0, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !8496, !inline_history !8436
  br label %bb.x

bb.v:                                             ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !8446, !inline_history !8437
  unreachable

bb.w:                                             ; preds = %.body30
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.k)
          to label %.body unwind label %bb.v

.body:                                            ; preds = %.body.i, %bb.t, %.thread145, %.body30, %bb.w, %.thread140
  %.pn.pn = phi { ptr, i32 } [ %.pn143, %.thread140 ], [ %lpad.thr_comm, %.thread145 ], [ %i.ce, %.body.i ], [ %.pn.i, %.body30 ], [ %.pn.i, %bb.w ], [ %i.ce, %bb.t ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %1) #37
          to label %bb.am unwind label %bb.al

bb.x:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8446
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bw, ptr %i.cn, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.462.sroa.0.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.462.sroa.4.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.462.sroa.5.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

.thread145:                                       ; preds = %bb.ah, %bb.ag
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %.thread136
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread140

bb.z:                                             ; preds = %.thread136
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.co = load i64, ptr %i.r, align 8, !noundef !10
  store i64 0, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.45.sroa.2.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.sroa.2.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 0, ptr %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 %i.co, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 177
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !10 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8497)
  %i.ct = mul nuw nsw i64 %i.cs, 24               ; 2 uses
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !8498
  %i.cv = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ct, i64 noundef range(i64 1, 9) 8) #39, !noalias !8498 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ab, label %.lr.ph.preheader.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ct) #36
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.ab
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cs
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %.lr.ph.preheader.i
  %.sroa.012.034.i = phi ptr [ %i.de, %bb.ae ], [ %i.cq, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.7.033.i = phi i64 [ %i.dd, %bb.ae ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.032.i = phi i64 [ %i.cy, %bb.ae ], [ %i.cs, %.lr.ph.preheader.i ]
  %i.cy = add nsw i64 %.sroa.10.032.i, -1         ; 2 uses
  %i.cz = icmp eq ptr %.sroa.012.034.i, %i.cx
  br i1 %i.cz, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8499)
  %i.da = load ptr, ptr %.sroa.012.034.i, align 8, !alias.scope !8500, !noalias !8501, !nonnull !10, !noundef !10 ; 2 uses
  %i.db = atomicrmw add ptr %i.da, i64 1 monotonic, align 8, !noalias !8502
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dd = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !8500, !noalias !8501, !noundef !10
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !8500, !noalias !8501, !noundef !10
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %.sroa.7.033.i ; 3 uses
  store ptr %i.da, ptr %i.dj, align 8, !noalias !8503
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dg, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !8503
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.di, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !8503
  %i.dk = icmp eq i64 %i.cy, 0
  br i1 %i.dk, label %.loopexit, label %.lr.ph.i

bb.af:                                            ; preds = %.loopexit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.thread140

.loopexit:                                        ; preds = %.lr.ph.i, %bb.ae, %bb.z
  %.sroa.564.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.z ], [ %i.cv, %bb.ae ], [ %i.cv, %.lr.ph.i ]
  store i64 %i.cs, ptr %i.m, align 8, !noalias !8497
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.564.0, ptr %.sroa.564.0..sroa_idx, align 8, !noalias !8497
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.cs, ptr %.sroa.765.0..sroa_idx, align 8, !noalias !8497
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder7buffers(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
          to label %bb.ag unwind label %bb.af

bb.ag:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10child_data(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l)
          to label %bb.ah unwind label %.thread145

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.q)
          to label %bb.ai unwind label %.thread145

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %1)
  ret void

bb.ak:                                            ; preds = %bb.ab
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(184) %i.o) #37
          to label %.thread140 unwind label %bb.al

bb.al:                                            ; preds = %.thread140, %bb.ak, %.body
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread140:                                       ; preds = %bb.af, %bb.ak, %bb.y
  %.pn143 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.y ], [ %i.dl, %bb.af ], [ %i.dm, %bb.ak ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.l) #37
          to label %.body unwind label %bb.al

bb.am:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsc2V0exE7CWf_11lance_arrow8bfloat1617is_bfloat16_field(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = tail call fastcc noundef align 8 ptr @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 20) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.r, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  %i.g = icmp eq i64 %i.f, 14
  br i1 %i.g, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 %i.j, 7377510152581046636
  %i.l = getelementptr i8, ptr %i.i, i64 6
  %i.m = load i64, ptr %i.l, align 1
  %i.n = xor i64 %i.m, 3905030313736955490
  %i.o = or i64 %i.k, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_array(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !10, !nonnull !10
  call void %i.d(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.b) #37
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.f

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_batch(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8531
  %.idx = shl nuw nsw i64 %i.h, 4                 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i, label %bb.b

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !8531
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !8531
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2K_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_batch0EE9from_iterB41_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !8532
  %i.l = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #39, !noalias !8532 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %.preheader.i.i.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #36, !noalias !8531
  unreachable

.preheader.i.i.preheader.i:                       ; preds = %bb.b
  store i64 %i.h, ptr %i.c, align 8, !noalias !8531
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !8531
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8534)
  br label %.preheader.i.i.i

bb.d:                                             ; preds = %_RNCNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_batch0B5_.exit.i.i.i.i.i.i.i, %.preheader.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.preheader.i
  %.val15.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.val15.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8535
  invoke void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7to_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.q)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.d, !noalias !8536

.noexc.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8535
  invoke void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.b)
          to label %bb.f unwind label %bb.e, !noalias !8537

bb.e:                                             ; preds = %bb.f, %.noexc.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.b) #37
          to label %.body.i unwind label %bb.g, !noalias !8537

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.s = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.a)
          to label %_RNCNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_batch0B5_.exit.i.i.i.i.i.i.i unwind label %bb.e, !noalias !8537 ; 2 uses

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt11drop_column:bb.a
  %i.ds = add i64 %i.dl, 1
  store i64 %i.ds, ptr %i.r, align 8, !alias.scope !9563, !noalias !9564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !9565)
  call void @llvm.experimental.noalias.scope.decl(metadata !9566)
  %i.dt = load ptr, ptr %i.k, align 8, !alias.scope !9567, !nonnull !10, !noundef !10
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !noalias !9567
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit45

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit45 unwind label %.loopexit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit45: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dw = icmp ult i64 %.sroa.04.098, %i.ah
  br i1 %i.dw, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit45
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.sroa.04.098 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.eb = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.bg, label %bb.bb

bb.ba:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit45
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.098, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #36
          to label %bb.aa unwind label %.loopexit.split-lp

bb.bb:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !9568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dy, ptr %i.a, align 8, !noalias !9569
  store ptr %i.ea, ptr %i.ak, align 8, !noalias !9569
  %i.ed = load i64, ptr %i.t, align 8, !alias.scope !9568, !noalias !9570, !noundef !10 ; 3 uses
  %i.ee = load i64, ptr %i.o, align 8, !range !13, !alias.scope !9568, !noalias !9570, !noundef !10
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.bc, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !9571
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.be, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit30

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit30 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.bb, %bb.bc
  %i.ek = load ptr, ptr %i.s, align 8, !alias.scope !9568, !noalias !9570, !nonnull !10, !noundef !10
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.ed ; 2 uses
  store ptr %i.dy, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ea, ptr %i.em, align 8
  %i.en = add i64 %i.ed, 1
  store i64 %i.en, ptr %i.t, align 8, !alias.scope !9568, !noalias !9570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.bg:                                            ; preds = %bb.az
  call void @llvm.trap()
  unreachable

bb.bh:                                            ; preds = %.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit26
  %.sroa.03.053 = phi i1 [ %.sroa.03.054, %.thread ], [ %.sroa.03.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit26 ]
  %.pn19.pn51 = phi { ptr, i32 } [ %.pn19.pn52, %.thread ], [ %.pn19.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit26 ]
  br i1 %.sroa.03.053, label %bb.bj, label %bb.bi

.thread:                                          ; preds = %bb.ag, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit30, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit26
  %.sroa.03.054 = phi i1 [ %.sroa.03.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit26 ], [ true, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit30 ], [ true, %bb.ag ]
  %.pn19.pn52 = phi { ptr, i32 } [ %.pn19.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit26 ], [ %.pn19, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit30 ], [ %.pn19, %bb.ag ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.o) #37
          to label %bb.bh unwind label %bb.t

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  resume { ptr, i32 } %.pn19.pn51

bb.bj:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.p) #37
          to label %bb.bi unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt13rename_column(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10 ; 8 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.q, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !10 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9614)
  %i.y = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %.loopexit86, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9615
  %i.aa = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.y, i64 noundef range(i64 1, 9) 8) #39, !noalias !9615 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %.lr.ph.preheader.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.y) #36
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.ai, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.ah, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.ad, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.w, %.lr.ph.preheader.i ]
  %i.ad = add nsw i64 %.sroa.10.021.i, -1         ; 2 uses
  %i.ae = icmp eq ptr %.sroa.013.023.i, %i.ac
  br i1 %i.ae, label %.loopexit86.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %.sroa.013.023.i, align 8, !alias.scope !9614, !noalias !9616, !nonnull !10, !noundef !10 ; 2 uses
  %i.af = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !9617
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.e
  %i.ah = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.7.022.i
  store ptr %.val.i, ptr %i.aj, align 8, !noalias !9617
  %i.ak = icmp eq i64 %i.ad, 0
  br i1 %i.ak, label %.loopexit86.loopexit, label %.lr.ph.i

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9619)
  %i.am = load ptr, ptr %i.m, align 8, !alias.scope !9620, !nonnull !10, !noundef !10
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !9620
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.an

.loopexit86.loopexit:                             ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i, %.lr.ph.i
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !9621
  br label %.loopexit86

.loopexit86:                                      ; preds = %.loopexit86.loopexit, %bb.b
  %i.ap = phi ptr [ %i.q, %bb.b ], [ %.pre, %.loopexit86.loopexit ]
  %.sroa.561.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.aa, %.loopexit86.loopexit ] ; 2 uses
  store i64 %i.w, ptr %i.n, align 8, !noalias !9614
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.561.0, ptr %.sroa.561.0..sroa_idx, align 8, !noalias !9614
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.w, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9623)
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !9621
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit38

bb.j:                                             ; preds = %.loopexit86
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit38 unwind label %.thread75

.thread75:                                        ; preds = %bb.k, %bb.j, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread71

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit38: ; preds = %.loopexit86, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.as = icmp ult i64 %i.w, 1152921504606846976
  call void @llvm.assume(i1 %i.as)
  %i.at = load i64, ptr %i.o, align 8, !noundef !10 ; 2 uses
  %.not = icmp ult i64 %i.at, %i.w
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.o, ptr %i.k, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @332, ptr noundef nonnull %i.k)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc2V0exE7CWf_11lance_arrow.exit unwind label %.thread75

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.561.0, i64 %i.at ; 6 uses
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.m unwind label %.thread75

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.au, align 8, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load i8, ptr %i.ay, align 8, !range !20, !noundef !10
  %i.ba = trunc nuw i8 %i.az to i1
  invoke fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, i1 noundef zeroext %i.ba)
          to label %bb.n unwind label %.thread78

.thread78:                                        ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.thread71

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bd, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9624
  %i.be = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !9624 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.o, label %bb.r, !prof !11

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc40 unwind label %bb.p

.noexc40:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c) #37
          to label %.thread71 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.be, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !9625)
  call void @llvm.experimental.noalias.scope.decl(metadata !9626)
  %i.bi = load ptr, ptr %i.au, align 8, !alias.scope !9627, !nonnull !10, !noundef !10
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !9627
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit unwind label %.thread79

.thread79:                                        ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr %i.be, ptr %i.au, align 8
  br label %.thread71

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.r, %bb.s
  store ptr %i.be, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bm = atomicrmw add ptr %i.q, i64 1 monotonic, align 8
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit
  store ptr %i.q, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo)
          to label %bb.v unwind label %bb.ao

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit
  call void @llvm.trap()
  unreachable

.body42:                                          ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f), !noalias !9628
  br label %.body33

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bq = invoke { ptr, i64 } @_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.w unwind label %.body42, !noalias !9629 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.a, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.br, ptr %i.bu, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bs, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9630
  %i.bv = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #39, !noalias !9630 ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.x, label %bb.ab, !prof !11

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #36
          to label %.noexc44 unwind label %bb.y

.noexc44:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #37
          to label %.body33 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.body33:                                          ; preds = %bb.al, %bb.am, %bb.ah, %bb.y, %.body42, %bb.ao
  %.pn28 = phi { ptr, i32 } [ %i.bx, %bb.y ], [ %i.cv, %bb.ah ], [ %i.bp, %.body42 ], [ %i.dd, %bb.ao ], [ %i.cz, %bb.al ], [ %i.cz, %bb.am ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9631)
  call void @llvm.experimental.noalias.scope.decl(metadata !9632)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !9633, !nonnull !10, !noundef !10
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !9633
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit

bb.aa:                                            ; preds = %.body33
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.an

bb.ab:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.bv, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !10 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9634)
  %i.cg = shl nuw nsw i64 %i.cf, 4                ; 2 uses
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9635
  %i.ci = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cg, i64 noundef range(i64 1, 9) 8) #39, !noalias !9635 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ad, label %.lr.ph.preheader.i48

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cg) #36
          to label %.noexc51 unwind label %bb.al

.noexc51:                                         ; preds = %bb.ad
  unreachable

.lr.ph.preheader.i48:                             ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cf
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.ag, %.lr.ph.preheader.i48
  %.sroa.014.024.i = phi ptr [ %i.cr, %bb.ag ], [ %i.cd, %.lr.ph.preheader.i48 ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.cq, %bb.ag ], [ 0, %.lr.ph.preheader.i48 ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.cl, %bb.ag ], [ %i.cf, %.lr.ph.preheader.i48 ]
  %i.cl = add nsw i64 %.sroa.10.022.i, -1         ; 2 uses
  %i.cm = icmp eq ptr %.sroa.014.024.i, %i.ck
  br i1 %i.cm, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i49
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !9634, !noalias !9636, !nonnull !10, !noundef !10 ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.cn, align 8, !alias.scope !9634, !noalias !9636 ; 2 uses
  %i.co = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !9637
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cq = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.cs, align 8, !noalias !9637
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %.val13.i, ptr %i.ct, align 8, !noalias !9637
  %i.cu = icmp eq i64 %i.cl, 0
  br i1 %i.cu, label %.loopexit, label %.lr.ph.i49

bb.ah:                                            ; preds = %.loopexit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.loopexit:                                        ; preds = %.lr.ph.i49, %bb.ag, %bb.ab
  %.sroa.563.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ab ], [ %i.ci, %bb.ag ], [ %i.ci, %.lr.ph.i49 ]
  store i64 %i.cf, ptr %i.d, align 8, !noalias !9634
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.563.0, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !9634
  %.sroa.764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.cf, ptr %.sroa.764.0..sroa_idx, align 8, !noalias !9634
  invoke void @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.bv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.ai unwind label %bb.ah

bb.ai:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !9638)
  call void @llvm.experimental.noalias.scope.decl(metadata !9639)
  %i.cw = load ptr, ptr %i.e, align 8, !alias.scope !9640, !nonnull !10, !noundef !10
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !9640
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc2V0exE7CWf_11lance_arrow.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.al:                                            ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !9641
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.am, label %.body33

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.body33 unwind label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aa, %bb.i, %.thread71, %bb.ao
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ao:                                            ; preds = %bb.t
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.n) #37
          to label %.body33 unwind label %bb.an

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775794, ptr %i.de, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.n)
  br label %bb.ak

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.aa, %.body33, %bb.h, %bb.i, %.thread71
  %.pn30.pn = phi { ptr, i32 } [ %.pn3067, %.thread71 ], [ %.pn28, %bb.aa ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %.pn28, %.body33 ]
  resume { ptr, i32 } %.pn30.pn

.thread71:                                        ; preds = %.thread79, %.thread78, %bb.p, %.thread75
  %.pn3067 = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %lpad.thr_comm, %.thread75 ], [ %i.bb, %.thread78 ], [ %i.bl, %.thread79 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.n) #37
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt13shrink_to_fit(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy22deep_copy_batch_sliced(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt13with_metadata(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9663
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9662, !noalias !9664, !nonnull !10, !noundef !10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !9662, !noalias !9664, !noundef !10 ; 2 uses
  %i.m = atomicrmw add ptr %i.j, i64 1 monotonic, align 8, !noalias !9663
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.b, align 8, !noalias !9663
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.o, align 8, !noalias !9663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9663
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
          to label %bb.g unwind label %bb.d, !noalias !9664

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !9665
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.critedge unwind label %bb.f, !noalias !9663

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !9663
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9663
  store ptr %i.j, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.l, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9663
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9666
  %i.y = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #39, !noalias !9666 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.k, !prof !11

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #36
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #37
          to label %.critedge.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.y, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9667)
  %i.ag = shl nuw nsw i64 %i.af, 4                ; 2 uses
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9668
  %i.ai = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, 9) 8) #39, !noalias !9668 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.m, label %.lr.ph.preheader.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ag) #36
          to label %.noexc11 unwind label %bb.q

.noexc11:                                         ; preds = %bb.m
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.af
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %.sroa.014.024.i = phi ptr [ %i.ar, %bb.p ], [ %i.ad, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.aq, %bb.p ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.al, %bb.p ], [ %i.af, %.lr.ph.preheader.i ]
  %i.al = add nsw i64 %.sroa.10.022.i, -1         ; 2 uses
  %i.am = icmp eq ptr %.sroa.014.024.i, %i.ak
  br i1 %i.am, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !9667, !noalias !9669, !nonnull !10, !noundef !10 ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.an, align 8, !alias.scope !9667, !noalias !9669 ; 2 uses
  %i.ao = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !9670
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aq = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.as, align 8, !noalias !9670
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.val13.i, ptr %i.at, align 8, !noalias !9670
  %i.au = icmp eq i64 %i.al, 0
  br i1 %i.au, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.p, %bb.k
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.ai, %bb.p ], [ %i.ai, %.lr.ph.i ]
  store i64 %i.af, ptr %i.d, align 8, !noalias !9667
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !9667
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.af, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9667
  call void @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.q:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !9671
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.critedge.thread unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.critedge.thread:                                 ; preds = %bb.q, %bb.r, %bb.i, %.critedge
  %.pn.pn17 = phi { ptr, i32 } [ %i.q, %.critedge ], [ %i.av, %bb.r ], [ %i.aa, %bb.i ], [ %i.av, %bb.q ]
  resume { ptr, i32 } %.pn.pn17

.critedge:                                        ; preds = %bb.d, %bb.e
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %2)
  br label %.critedge.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt14sort_by_column(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, i8 noundef range(i8 0, 3) %3, i8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = icmp ult i64 %i.f, 576460752303423488
  tail call void @llvm.assume(i1 %i.g)
  %.not = icmp ult i64 %2, %i.f
  br i1 %.not, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @333, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775794, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCs5FCcBHaqpq9_9arrow_ord4sort15sort_to_indices(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @89, i8 noundef %3, i8 %4, i64 noundef 0, i64 undef)
  %i.l = load i8, ptr %i.a, align 8, !range !23, !noundef !10 ; 2 uses
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516.0..sroa_idx, i64 56, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.415.0..sroa_idx, i64 39, i1 false)
  store i8 %i.l, ptr %i.b, align 8
  invoke void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt4take(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b) #37
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %.split, %bb.f, %bb.c
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt15try_with_column(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 10 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.k, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  invoke void @_RNvXs0_NtCsc2V0exE7CWf_11lance_arrow6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaNtB5_9SchemaExt15try_with_column(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %2)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.ad, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9710)
  call void @llvm.experimental.noalias.scope.decl(metadata !9711)
  %i.p = load ptr, ptr %i.e, align 8, !alias.scope !9712, !nonnull !10, !noundef !10
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !9712
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread unwind label %bb.z

bb.f:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9714)
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !9715, !nonnull !10, !noundef !10
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !9715
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17 unwind label %bb.ac

bb.i:                                             ; preds = %bb.f
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %i.aa, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9716
  %i.ab = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #39, !noalias !9716 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.m, !prof !11

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #36
          to label %.noexc18 unwind label %bb.k

.noexc18:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #37
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ab, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9718)
  %i.af = load ptr, ptr %i.e, align 8, !alias.scope !9719, !nonnull !10, !noundef !10
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !9719
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20 unwind label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !10 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9720)
  %i.an = shl nuw nsw i64 %i.am, 4                ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9721
  %i.ap = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.an, i64 noundef range(i64 1, 9) 8) #39, !noalias !9721 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.q, label %.lr.ph.preheader.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.an) #36
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %bb.q
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.am
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %.sroa.014.024.i = phi ptr [ %i.ay, %bb.t ], [ %i.ak, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.ax, %bb.t ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.as, %bb.t ], [ %i.am, %.lr.ph.preheader.i ]
  %i.as = add nsw i64 %.sroa.10.022.i, -1         ; 2 uses
  %i.at = icmp eq ptr %.sroa.014.024.i, %i.ar
  br i1 %i.at, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !9720, !noalias !9722, !nonnull !10, !noundef !10 ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.au, align 8, !alias.scope !9720, !noalias !9722 ; 2 uses
  %i.av = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !9723
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ax = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.az, align 8, !noalias !9723
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.val13.i, ptr %i.ba, align 8, !noalias !9723
  %i.bb = icmp eq i64 %i.as, 0
  br i1 %i.bb, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.t, %.lr.ph.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20
  %.sroa.528.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20 ], [ %i.ap, %.lr.ph.i ], [ %i.ap, %bb.t ]
  store i64 %i.am, ptr %i.d, align 8, !noalias !9720
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.528.0, ptr %.sroa.528.0..sroa_idx, align 8, !noalias !9720
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %i.am, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9720
  %i.bc = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.bd = load ptr, ptr %i.i, align 8, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9724)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bc, ptr %i.a, align 8, !noalias !9725
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !noalias !9725
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.x unwind label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !9726
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.x:                                             ; preds = %.loopexit
  %i.bj = load ptr, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !9724, !noalias !9727, !nonnull !10, !noundef !10
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.am ; 2 uses
  store ptr %i.bc, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bd, ptr %i.bl, align 8
  %i.bm = add i64 %i.am, 1
  store i64 %i.bm, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9724, !noalias !9727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.ad, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17, %bb.x
  ret void

bb.y:                                             ; preds = %bb.v, %bb.u
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ae, %bb.ab, %bb.e, %bb.y
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.ab, %bb.aa
  br i1 %.sroa.07.0.ph, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit27

bb.aa:                                            ; preds = %bb.y, %bb.o
  %.pn.ph = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %i.bf, %bb.y ] ; 2 uses
  %.sroa.07.0.ph = phi i1 [ true, %bb.o ], [ false, %bb.y ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9728)
  call void @llvm.experimental.noalias.scope.decl(metadata !9729)
  %i.bp = load ptr, ptr %i.g, align 8, !alias.scope !9730, !nonnull !10, !noundef !10
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !9730
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.z

bb.ac:                                            ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !9731)
  call void @llvm.experimental.noalias.scope.decl(metadata !9732)
  %i.bt = load ptr, ptr %i.h, align 8, !alias.scope !9733, !nonnull !10, !noundef !10
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !9733
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit27: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread, %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit
  %.pn1439 = phi { ptr, i32 } [ %.pn1440, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread ], [ %.pn.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit ], [ %.pn1440, %bb.ae ]
  resume { ptr, i32 } %.pn1439

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %bb.e, %.body, %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit
  %.pn1440 = phi { ptr, i32 } [ %.pn.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit ], [ %eh.lpad-body, %bb.e ], [ %eh.lpad-body, %.body ], [ %i.bs, %bb.ac ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9734)
  call void @llvm.experimental.noalias.scope.decl(metadata !9735)
  %i.bw = load ptr, ptr %i.h, align 8, !alias.scope !9736, !nonnull !10, !noundef !10
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !9736
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit27

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit27 unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt17merge_with_schema(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.j, %i.l
  br i1 %.not, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvXs8_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  call void @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB9_12record_batch11RecordBatchE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXs8_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %bb.e unwind label %bb.d

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.j, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.l, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.m, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @334, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775794, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.p, %bb.g ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e) #37
          to label %bb.m unwind label %bb.l

bb.d:                                             ; preds = %bb.i, %bb.e, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB9_12record_batch11RecordBatchE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvCsc2V0exE7CWf_11lance_arrow17merge_with_schema(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #37
          to label %bb.c unwind label %bb.l

end_hunk_2
begin_hunk_3_@_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt17project_by_schema:bb.a
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt18try_with_column_at(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112) %3, ptr noundef nonnull %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 10 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  store ptr %4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %5, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.k, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  invoke void @_RNvXs0_NtCsc2V0exE7CWf_11lance_arrow6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaNtB5_9SchemaExt18try_with_column_at(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %3)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.ad, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9775)
  call void @llvm.experimental.noalias.scope.decl(metadata !9776)
  %i.p = load ptr, ptr %i.e, align 8, !alias.scope !9777, !nonnull !10, !noundef !10
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !9777
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread unwind label %bb.ae

bb.f:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9779)
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !9780, !nonnull !10, !noundef !10
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !9780
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17 unwind label %bb.ah

bb.i:                                             ; preds = %bb.f
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %i.aa, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9781
  %i.ab = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #39, !noalias !9781 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.m, !prof !11

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #36
          to label %.noexc18 unwind label %bb.k

.noexc18:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #37
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ab, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9783)
  %i.af = load ptr, ptr %i.e, align 8, !alias.scope !9784, !nonnull !10, !noundef !10
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !9784
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20 unwind label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !10 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9785)
  %i.an = shl nuw nsw i64 %i.am, 4                ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9786
  %i.ap = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.an, i64 noundef range(i64 1, 9) 8) #39, !noalias !9786 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.q, label %.lr.ph.preheader.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.an) #36
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %bb.q
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.am
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %.sroa.014.024.i = phi ptr [ %i.ay, %bb.t ], [ %i.ak, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.ax, %bb.t ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.as, %bb.t ], [ %i.am, %.lr.ph.preheader.i ]
  %i.as = add nsw i64 %.sroa.10.022.i, -1         ; 2 uses
  %i.at = icmp eq ptr %.sroa.014.024.i, %i.ar
  br i1 %i.at, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !9785, !noalias !9787, !nonnull !10, !noundef !10 ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.au, align 8, !alias.scope !9785, !noalias !9787 ; 2 uses
  %i.av = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !9788
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ax = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.az, align 8, !noalias !9788
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.val13.i, ptr %i.ba, align 8, !noalias !9788
  %i.bb = icmp eq i64 %i.as, 0
  br i1 %i.bb, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20
  %.sroa.528.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit20 ], [ %i.ap, %bb.t ], [ %i.ap, %.lr.ph.i ]
  store i64 %i.am, ptr %i.d, align 8, !noalias !9785
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.528.0, ptr %.sroa.528.0..sroa_idx, align 8, !noalias !9785
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %i.am, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9785
  %i.bc = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.bd = load ptr, ptr %i.i, align 8, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bc, ptr %i.a, align 8, !noalias !9790
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !noalias !9790
  %i.bf = icmp ult i64 %i.am, 576460752303423488
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ugt i64 %2, %i.am
  br i1 %i.bg, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %.loopexit
  invoke void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %2, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #36
          to label %bb.aa unwind label %bb.x, !noalias !9789

bb.v:                                             ; preds = %.loopexit
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = load ptr, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !9789, !noalias !9791, !nonnull !10, !noundef !10
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %2 ; 4 uses
  %i.bj = icmp samesign ult i64 %2, %i.am
  br i1 %i.bj, label %bb.z, label %bb.ac

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !9792
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = sub nuw nsw i64 %i.am, %2
  %i.bp = shl nuw nsw i64 %i.bo, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr nonnull align 8 %i.bi, i64 %i.bp, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %bb.u
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ac:                                            ; preds = %bb.z, %bb.w
  store ptr %i.bc, ptr %i.bi, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bd, ptr %i.br, align 8
  %i.bs = add nuw nsw i64 %i.am, 1
  store i64 %i.bs, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !9789, !noalias !9791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17, %bb.ac
  ret void

bb.ad:                                            ; preds = %bb.y, %bb.x
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %bb.ag, %bb.e, %bb.ad
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.ag, %bb.af
  br i1 %.sroa.07.0.ph, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit27

bb.af:                                            ; preds = %bb.ad, %bb.o
  %.pn.ph = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %i.bk, %bb.ad ] ; 2 uses
  %.sroa.07.0.ph = phi i1 [ true, %bb.o ], [ false, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9793)
  call void @llvm.experimental.noalias.scope.decl(metadata !9794)
  %i.bv = load ptr, ptr %i.g, align 8, !alias.scope !9795, !nonnull !10, !noundef !10
  %i.bw = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !9795
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.ae

bb.ah:                                            ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !9796)
  call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  %i.bz = load ptr, ptr %i.h, align 8, !alias.scope !9798, !nonnull !10, !noundef !10
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !9798
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit27: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread, %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit
  %.pn1439 = phi { ptr, i32 } [ %.pn1440, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread ], [ %.pn.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit ], [ %.pn1440, %bb.aj ]
  resume { ptr, i32 } %.pn1439

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %bb.e, %.body, %bb.ah, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit
  %.pn1440 = phi { ptr, i32 } [ %.pn.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit ], [ %eh.lpad-body, %bb.e ], [ %eh.lpad-body, %.body ], [ %i.by, %bb.ah ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9799)
  call void @llvm.experimental.noalias.scope.decl(metadata !9800)
  %i.cc = load ptr, ptr %i.h, align 8, !alias.scope !9801, !nonnull !10, !noundef !10
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !9801
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit27

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit27 unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt22replace_column_by_name(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 16               ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %3, ptr %i.i, align 8
  store ptr %4, ptr %i.g, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %5, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9841)
  %i.o = shl nuw nsw i64 %i.n, 4                  ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %.loopexit72, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9842
  %i.q = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 8) #39, !noalias !9842 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.o) #36
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.c
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.n
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.014.024.i = phi ptr [ %i.z, %bb.f ], [ %i.l, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.y, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.t, %bb.f ], [ %i.n, %.lr.ph.preheader.i ]
  %i.t = add nsw i64 %.sroa.10.022.i, -1          ; 2 uses
  %i.u = icmp eq ptr %.sroa.014.024.i, %i.s
  br i1 %i.u, label %.loopexit72, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !9841, !noalias !9843, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.v, align 8, !alias.scope !9841, !noalias !9843 ; 2 uses
  %i.w = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !9844
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.aa, align 8, !noalias !9844
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.val13.i, ptr %i.ab, align 8, !noalias !9844
  %i.ac = icmp eq i64 %i.t, 0
  br i1 %i.ac, label %.loopexit72, label %.lr.ph.i

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread
  br i1 %.sroa.018.161, label %bb.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit48

.thread:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit42, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit72:                                      ; preds = %.lr.ph.i, %bb.f, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.q, %bb.f ], [ %i.q, %.lr.ph.i ] ; 2 uses
  store i64 %i.n, ptr %i.f, align 8, !noalias !9841
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !9841
  %.sroa.750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.n, ptr %.sroa.750.0..sroa_idx, align 8, !noalias !9841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.ag = atomicrmw add ptr %i.af, i64 1 monotonic, align 8
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit72
  store ptr %i.af, ptr %i.e, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noundef !10 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.h, %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.thread.i
  %.sroa.02.010.i = phi i64 [ %i.ax, %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.thread.i ], [ 0, %bb.h ] ; 5 uses
  %i.ap = phi ptr [ %i.aq, %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.thread.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.val7.i = load ptr, ptr %i.ap, align 8, !noalias !9845, !nonnull !10, !noundef !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val7.i, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !noalias !9845, !noundef !10
  %i.at = icmp eq i64 %i.as, %3
  br i1 %i.at, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.i, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.thread.i

_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.i: ; preds = %.lr.ph.i36
  %i.au = getelementptr inbounds nuw i8, ptr %.val7.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !noalias !9845, !nonnull !10, !noundef !10
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.av, ptr nonnull %2, i64 %3), !noalias !9845
  %i.aw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aw, label %bb.l, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.thread.i

_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.thread.i: ; preds = %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.i, %.lr.ph.i36
  %i.ax = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.ay = icmp eq ptr %i.aq, %i.an
  br i1 %i.ay, label %.loopexit, label %.lr.ph.i36

bb.i:                                             ; preds = %.loopexit72
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %.loopexit
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9846)
  call void @llvm.experimental.noalias.scope.decl(metadata !9847)
  %i.ba = load ptr, ptr %i.e, align 8, !alias.scope !9848, !nonnull !10, !noundef !10
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !9848
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread unwind label %bb.z

bb.l:                                             ; preds = %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.i
  %i.bd = icmp ult i64 %.sroa.02.010.i, %i.al
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !9849
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit39

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit39 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread64

.loopexit:                                        ; preds = %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt22replace_column_by_name0B7_.exit.thread.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9850
  store ptr %i.h, ptr %i.a, align 8, !noalias !9850
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9850
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bg, ptr noundef nonnull @97, ptr noundef nonnull %i.a)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9850
  %.sroa.67.0.copyload = load i64, ptr %i.bg, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.810.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.bh, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.67.0.copyload, ptr %.sroa.426.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9851)
  call void @llvm.experimental.noalias.scope.decl(metadata !9852)
  %i.bi = load ptr, ptr %i.e, align 8, !alias.scope !9853, !nonnull !10, !noundef !10
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !9853
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit42

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit42 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread64

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread64: ; preds = %bb.m, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit42: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.f)
          to label %bb.p unwind label %.thread

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !9854)
  call void @llvm.experimental.noalias.scope.decl(metadata !9855)
  %i.bl = load ptr, ptr %i.g, align 16, !alias.scope !9856, !nonnull !10, !noundef !10
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !9856
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.q, %bb.p, %bb.v
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit39: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bp = load <2 x ptr>, ptr %i.g, align 16      ; 2 uses
  store <2 x ptr> %i.bp, ptr %i.d, align 16
  %.not = icmp ult i64 %.sroa.02.010.i, %i.n
  br i1 %.not, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit39
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0, i64 %.sroa.02.010.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9857)
  call void @llvm.experimental.noalias.scope.decl(metadata !9858)
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !9859, !nonnull !10, !noundef !10
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !9859
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit44

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit44 unwind label %.thread67

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit39
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.010.i, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #36
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  unreachable

.thread67:                                        ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %i.d, align 16, !nonnull !10, !noundef !10
  %i.bw = load ptr, ptr %i.bo, align 8, !nonnull !10, !align !12, !noundef !10
  store ptr %i.bv, ptr %i.bq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bw, ptr %i.bx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit44: ; preds = %bb.r, %bb.s
  %i.by = load <2 x ptr>, ptr %i.d, align 16
  store <2 x ptr> %i.by, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bz = atomicrmw add ptr %i.af, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

bb.w:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit44
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt24column_by_qualified_name:.lr.ph.split.i.i.i.i
  %.val.i = load i64, ptr %i.b, align 8, !noalias !9900 ; 2 uses
  %i.cb = icmp eq i64 %.val.i, 0
  br i1 %i.cb, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val9.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9900, !nonnull !10, !noundef !10
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.p, %bb.o
  %.sroa.0.0.copyload29.sink = phi i64 [ %.val.i, %bb.o ], [ %.sroa.0.0.copyload29, %bb.p ]
  %.sroa.8.0.copyload31.sink = phi ptr [ %.val9.i, %bb.o ], [ %.sroa.8.0.copyload31, %bb.p ]
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.phi.i, %bb.o ], [ %lpad.phi, %bb.p ]
  %i.cc = shl nuw i64 %.sroa.0.0.copyload29.sink, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload31.sink, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.p, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.n ], [ %lpad.phi, %bb.p ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread.loopexit: ; preds = %.noexc13.i
  %.sroa.0.0.copyload26.pre = load i64, ptr %i.b, align 8, !noalias !9921
  %.sroa.8.0.copyload27.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9921
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.loopexit: ; preds = %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalcE7get_endCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i
  %.sroa.8.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9921
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.u, %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt24column_by_qualified_name0B7_.exit
  ret ptr %.sroa.0.1

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %.lr.ph.split.us.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc2V0exE7CWf_11lance_arrow.exit.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.loopexit, %.lr.ph.split.us.split.us.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread.loopexit
  %.sroa.14.0.copyload.pr.sink = phi i64 [ %i.ca, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread.loopexit ], [ 2, %.lr.ph.split.us.split.us.i.i.i ], [ %i.au, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc2V0exE7CWf_11lance_arrow.exit.i ], [ 1, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %.sroa.8.0.copyload31 = phi ptr [ %.sroa.8.0.copyload27.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread.loopexit ], [ %i.w, %.lr.ph.split.us.split.us.i.i.i ], [ %.sroa.8.0.copyload.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.loopexit ], [ %i.w, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.w, %.lr.ph.split.us.i.i.i ] ; 5 uses
  %.sroa.0.0.copyload29 = phi i64 [ %.sroa.0.0.copyload26.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread.loopexit ], [ 4, %.lr.ph.split.us.split.us.i.i.i ], [ %.pre51, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.loopexit ], [ 4, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc2V0exE7CWf_11lance_arrow.exit.i ], [ 4, %.lr.ph.split.us.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9900
  %i.cd = icmp samesign ult i64 %.sroa.14.0.copyload.pr.sink, 576460752303423488
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load ptr, ptr %.sroa.8.0.copyload31, align 8, !nonnull !10, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload31, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !10
  %i.ch = invoke noundef align 8 ptr @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg)
          to label %bb.q unwind label %.loopexit.split-lp ; 3 uses

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.s, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray9as_structCsc2V0exE7CWf_11lance_arrow.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ci = icmp eq i64 %.sroa.0.0.copyload29, 0
  br i1 %i.ci, label %common.resume, label %common.resume.sink.split

bb.q:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter5SplitcEE9from_iterCsc2V0exE7CWf_11lance_arrow.exit.thread
  %.not = icmp eq ptr %i.ch, null
  br i1 %.not, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt24column_by_qualified_name0B7_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = add nsw i64 %.sroa.14.0.copyload.pr.sink, -1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9924)
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt24column_by_qualified_name0B7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %tailrecurse.i.i
  %.tr47.i.i = phi i64 [ %i.ct, %tailrecurse.i.i ], [ %i.cj, %bb.r ]
  %.tr36.i.pn.i = phi ptr [ %.tr36.i.i, %tailrecurse.i.i ], [ %.sroa.8.0.copyload31, %bb.r ] ; 2 uses
  %.tr5.i.i = phi ptr [ %i.cs, %tailrecurse.i.i ], [ %i.ch, %bb.r ] ; 2 uses
  %.tr36.i.i = getelementptr inbounds nuw i8, ptr %.tr36.i.pn.i, i64 16 ; 2 uses
  %i.cl = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.tr5.i.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.cm = load i8, ptr %i.cl, align 8, !range !24, !noalias !9924, !noundef !10
  %i.cn = icmp eq i8 %i.cm, 32
  br i1 %i.cn, label %bb.s, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt24column_by_qualified_name0B7_.exit

bb.s:                                             ; preds = %.noexc
  %i.co = invoke noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.tr5.i.i)
          to label %.noexc15 unwind label %.loopexit ; 2 uses

.noexc15:                                         ; preds = %bb.s
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %bb.t, label %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray9as_structCsc2V0exE7CWf_11lance_arrow.exit.i.i, !prof !11

bb.t:                                             ; preds = %.noexc15
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #36
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.t
  unreachable

_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray9as_structCsc2V0exE7CWf_11lance_arrow.exit.i.i: ; preds = %.noexc15
  %i.cp = load ptr, ptr %.tr36.i.i, align 8, !alias.scope !9924, !noalias !9925, !nonnull !10, !noundef !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr36.i.pn.i, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !9924, !noalias !9925, !noundef !10
  %i.cs = invoke noundef align 8 ptr @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %.noexc17 unwind label %.loopexit ; 3 uses

.noexc17:                                         ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray9as_structCsc2V0exE7CWf_11lance_arrow.exit.i.i
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt24column_by_qualified_name0B7_.exit, label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %.noexc17
  %i.ct = add nsw i64 %.tr47.i.i, -1              ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt24column_by_qualified_name0B7_.exit, label %.lr.ph.i.i

_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt24column_by_qualified_name0B7_.exit: ; preds = %tailrecurse.i.i, %.noexc17, %.noexc, %bb.r, %bb.q
  %.sroa.0.1 = phi ptr [ null, %bb.q ], [ %i.ch, %bb.r ], [ null, %.noexc ], [ null, %.noexc17 ], [ %i.cs, %tailrecurse.i.i ]
  %i.cv = icmp eq i64 %.sroa.0.0.copyload29, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsc2V0exE7CWf_11lance_arrow.exit, label %bb.u

bb.u:                                             ; preds = %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt24column_by_qualified_name0B7_.exit
  %i.cw = shl nuw i64 %.sroa.0.0.copyload29, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload31, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsc2V0exE7CWf_11lance_arrow.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt25try_new_from_struct_array(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray6fields(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !10 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9949)
  %i.o = shl nuw nsw i64 %i.m, 3                  ; 2 uses
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9950
  %i.q = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 8) #39, !noalias !9950 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %.lr.ph.preheader.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.o) #36
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.y, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.n, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.x, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.m, %.lr.ph.preheader.i ]
  %i.t = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.u = icmp eq ptr %.sroa.013.023.i, %i.s
  br i1 %i.u, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %.sroa.013.023.i, align 8, !alias.scope !9949, !noalias !9951, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !9952
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.f
  %i.x = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.7.022.i
  store ptr %.val.i, ptr %i.z, align 8, !noalias !9952
  %i.aa = icmp eq i64 %i.t, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i, %bb.c
  %.sroa.519.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.q, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.q, %.lr.ph.i ]
  store i64 %i.m, ptr %i.g, align 8, !noalias !9949
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.519.0, ptr %.sroa.519.0..sroa_idx, align 8, !noalias !9949
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.m, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  store ptr %i.ac, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af)
          to label %bb.j unwind label %bb.v

bb.i:                                             ; preds = %.loopexit
  tail call void @llvm.trap()
  unreachable

.body10:                                          ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f), !noalias !9953
  br label %.body

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = invoke { ptr, i64 } @_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.k unwind label %.body10, !noalias !9954 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ai, ptr %i.al, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !9955
  %i.am = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #39, !noalias !9955 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %bb.p, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #36
          to label %.noexc12 unwind label %bb.m

.noexc12:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #37
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.body:                                            ; preds = %bb.m, %.body10, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ag, %.body10 ], [ %i.bb, %bb.v ], [ %i.ao, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9956)
  call void @llvm.experimental.noalias.scope.decl(metadata !9957)
  %i.aq = load ptr, ptr %i.e, align 8, !alias.scope !9958, !nonnull !10, !noundef !10
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !9958
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.o, label %.thread

bb.o:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.am, ptr %i.h, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9959)
  call void @llvm.experimental.noalias.scope.decl(metadata !9960)
  %i.at = load ptr, ptr %i.e, align 8, !alias.scope !9961, !nonnull !10, !noundef !10
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !9961
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit15

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit15 unwind label %bb.s

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit15: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false)
  invoke void @_RNvXs2_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtB7_5array12struct_array11StructArrayE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.c)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  call void @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch11with_schema(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit15, %bb.q
  %.sroa.02.1.ph = phi i1 [ true, %bb.q ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit15 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9962)
  call void @llvm.experimental.noalias.scope.decl(metadata !9963)
  %i.ax = load ptr, ptr %i.h, align 8, !alias.scope !9964, !nonnull !10, !noundef !10
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !9964
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17 unwind label %bb.u

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17: ; preds = %bb.t, %bb.s
  br i1 %.sroa.02.1.ph, label %.thread, label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.o, %.thread, %bb.v
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.v:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.g) #37
          to label %.body unwind label %bb.u

bb.w:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17, %.thread
  %.pn822 = phi { ptr, i32 } [ %.pn823, %.thread ], [ %lpad.thr_comm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17 ]
  resume { ptr, i32 } %.pn822

.thread:                                          ; preds = %.body, %bb.o, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17
  %.pn823 = phi { ptr, i32 } [ %lpad.thr_comm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit17 ], [ %.pn, %.body ], [ %i.j, %bb.b ], [ %.pn, %bb.o ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(104) %2) #37
          to label %bb.w unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt29replace_column_schema_by_name(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noundef nonnull %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [8 x i8], align 8                 ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 10 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 16               ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i64 %3, ptr %i.t, align 8
  store ptr %5, ptr %i.r, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %6, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10 ; 11 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.w, ptr %i.p, align 8
end_hunk_4
begin_hunk_5_@_RNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB5_14RecordBatchExt29replace_column_schema_by_name:bb.a
bb.n:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i.i.i, %bb.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i.i.i ], [ %.val16.i.i.i.i.i.i, %bb.i ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.val15.i.i.i.i.i.i
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.bd, align 8, !noalias !10068
  %i.be = add nuw i64 %.val15.i.i.i.i.i.i, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.ac
  br i1 %i.bf, label %.loopexit136.loopexit, label %bb.g

.body.i:                                          ; preds = %bb.l, %bb.f
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.bb, %bb.l ]
  store i64 %.val15.i.i.i.i.i.i, ptr %i.ak, align 8, !alias.scope !10069, !noalias !10070
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37
          to label %.body45 unwind label %bb.p, !noalias !10061

bb.p:                                             ; preds = %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !10061
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body45

.body45:                                          ; preds = %.body.i, %bb.r
  %eh.lpad-body46 = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10071)
  call void @llvm.experimental.noalias.scope.decl(metadata !10072)
  %i.bi = load ptr, ptr %i.p, align 8, !alias.scope !10073, !nonnull !10, !noundef !10
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !10073
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

bb.s:                                             ; preds = %.body45
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread unwind label %bb.bf

.loopexit136.loopexit:                            ; preds = %bb.o
  %.pre = load ptr, ptr %i.p, align 8, !alias.scope !10074
  br label %.loopexit136.a

.loopexit136.a:                                   ; preds = %.loopexit136.loopexit, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i
  %i.bl = phi ptr [ %i.w, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i ], [ %.pre, %.loopexit136.loopexit ]
  %i.bm = phi ptr [ %i.ag, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i ], [ %i.ak, %.loopexit136.loopexit ]
  store i64 %i.ac, ptr %i.bm, align 8, !alias.scope !10069, !noalias !10070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !10075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10061
  call void @llvm.experimental.noalias.scope.decl(metadata !10076)
  call void @llvm.experimental.noalias.scope.decl(metadata !10077)
  %i.bn = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !10074
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit49

bb.t:                                             ; preds = %.loopexit136.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit49 unwind label %bb.bk

bb.u:                                             ; preds = %bb.aq
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.by)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit49: ; preds = %.loopexit136.a, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bq = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit49
  store ptr %i.w, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bs)
          to label %bb.x unwind label %bb.bj

bb.w:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit49
  call void @llvm.trap()
  unreachable

.body50:                                          ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.m), !noalias !10078
  br label %bb.bh

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !10079)
  call void @llvm.experimental.noalias.scope.decl(metadata !10080)
  %i.bu = invoke { ptr, i64 } @_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.y unwind label %.body50, !noalias !10081 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1
  store ptr %i.bv, ptr %i.o, align 8, !alias.scope !10079, !noalias !10082
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !alias.scope !10079, !noalias !10082
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.m, i64 48, i1 false), !alias.scope !10081, !noalias !10083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !10084)
  call void @llvm.experimental.noalias.scope.decl(metadata !10085)
  %i.bz = load ptr, ptr %i.l, align 8, !alias.scope !10086, !nonnull !10, !noundef !10
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !10086
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53 unwind label %.thread90

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit57.thread107
  br i1 %.sroa.018.1105, label %bb.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit

.thread90:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit62, %bb.z, %bb.ac
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !10 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10087)
  %i.ch = shl nuw nsw i64 %i.cg, 4                ; 2 uses
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %.loopexit135, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !10088
  %i.cj = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, 9) 8) #39, !noalias !10088 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ac, label %.lr.ph.preheader.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ch) #36
          to label %.noexc54 unwind label %.thread90

.noexc54:                                         ; preds = %bb.ac
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cg
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.preheader.i
  %.sroa.014.024.i = phi ptr [ %i.cs, %bb.af ], [ %i.ce, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.cr, %bb.af ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.cm, %bb.af ], [ %i.cg, %.lr.ph.preheader.i ]
  %i.cm = add nsw i64 %.sroa.10.022.i, -1         ; 2 uses
  %i.cn = icmp eq ptr %.sroa.014.024.i, %i.cl
  br i1 %i.cn, label %.loopexit135, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !10087, !noalias !10089, !nonnull !10, !noundef !10 ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.co, align 8, !alias.scope !10087, !noalias !10089 ; 2 uses
  %i.cp = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !10090
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cr = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.ct, align 8, !noalias !10090
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %.val13.i, ptr %i.cu, align 8, !noalias !10090
  %i.cv = icmp eq i64 %i.cm, 0
  br i1 %i.cv, label %.loopexit135, label %.lr.ph.i

.loopexit135:                                     ; preds = %.lr.ph.i, %bb.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit53 ], [ %i.cj, %bb.af ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  store i64 %i.cg, ptr %i.k, align 8, !noalias !10087
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !10087
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.cg, ptr %.sroa.778.0..sroa_idx, align 8, !noalias !10087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cw = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.loopexit135
  store ptr %i.w, ptr %i.j, align 8
  %i.cy = load ptr, ptr %i.z, align 8, !nonnull !10, !noundef !10
  %i.cz = load i64, ptr %i.ab, align 8, !noundef !10 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %.idx134 = shl nuw nsw i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx134
  call void @llvm.experimental.noalias.scope.decl(metadata !10091)
  %i.dc = icmp eq i64 %i.cz, 0
  br i1 %i.dc, label %.loopexit, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.ag
  %i.dd = load i64, ptr %i.t, align 8, !alias.scope !10091, !noalias !10092, !noundef !10 ; 2 uses
  %i.de = load ptr, ptr %i.s, align 8, !alias.scope !10091, !noalias !10092, !nonnull !10
  br label %bb.ah

bb.ah:                                            ; preds = %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.thread.i, %.lr.ph.i55
  %.sroa.02.010.i = phi i64 [ 0, %.lr.ph.i55 ], [ %i.dn, %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.thread.i ] ; 5 uses
  %i.df = phi ptr [ %i.da, %.lr.ph.i55 ], [ %i.dg, %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.thread.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %.val7.i = load ptr, ptr %i.df, align 8, !noalias !10093, !nonnull !10, !noundef !10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val7.i, i64 32
  %i.di = load i64, ptr %i.dh, align 8, !noalias !10093, !noundef !10
  %i.dj = icmp eq i64 %i.di, %i.dd
  br i1 %i.dj, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.i, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.thread.i

_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.i: ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %.val7.i, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !10093, !nonnull !10, !noundef !10
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.dl, ptr nonnull %i.de, i64 %i.dd), !noalias !10093
  %i.dm = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dm, label %bb.al, label %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.thread.i

_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.thread.i: ; preds = %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.i, %bb.ah
  %i.dn = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.do = icmp eq ptr %i.dg, %i.db
  br i1 %i.do, label %.loopexit, label %bb.ah

bb.ai:                                            ; preds = %.loopexit135
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %.loopexit
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10094)
  call void @llvm.experimental.noalias.scope.decl(metadata !10095)
  %i.dq = load ptr, ptr %i.j, align 8, !alias.scope !10096, !nonnull !10, !noundef !10
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !10096
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit57.thread107

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit57.thread107 unwind label %bb.bf

bb.al:                                            ; preds = %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.i
  %i.dt = icmp ult i64 %.sroa.02.010.i, %i.cz
  call void @llvm.assume(i1 %i.dt)
  %i.du = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !10097
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit59

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit59 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit57.thread112

.loopexit:                                        ; preds = %_RNCNvXs1_Csc2V0exE7CWf_11lance_arrowNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtB7_14RecordBatchExt29replace_column_schema_by_names_0B7_.exit.thread.i, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10098
  store ptr %i.s, ptr %i.a, align 8, !noalias !10098
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10098
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dw, ptr noundef nonnull @97, ptr noundef nonnull %i.a)
          to label %bb.an unwind label %bb.aj

bb.an:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10098
  %.sroa.67.0.copyload = load i64, ptr %i.dw, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.810.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.dx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.67.0.copyload, ptr %.sroa.429.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10099)
  call void @llvm.experimental.noalias.scope.decl(metadata !10100)
  %i.dy = load ptr, ptr %i.j, align 8, !alias.scope !10101, !nonnull !10, !noundef !10
  %i.dz = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !10101
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit62

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit62 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit57.thread112

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit57.thread112: ; preds = %bb.ao, %bb.am
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit57.thread107

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread129: ; preds = %bb.bb
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit74

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit62: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.k)
          to label %bb.ap unwind label %.thread90

bb.ap:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !10102)
  call void @llvm.experimental.noalias.scope.decl(metadata !10103)
  call void @llvm.experimental.noalias.scope.decl(metadata !10104)
  call void @llvm.experimental.noalias.scope.decl(metadata !10105)
  %i.eb = load ptr, ptr %i.o, align 8, !alias.scope !10106, !nonnull !10, !noundef !10
  %i.ec = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !10106
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.o)
          to label %bb.ar unwind label %bb.u

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !10107)
  call void @llvm.experimental.noalias.scope.decl(metadata !10108)
  %i.ee = load ptr, ptr %i.r, align 16, !alias.scope !10109, !nonnull !10, !noundef !10
  %i.ef = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !10109
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.as, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.at

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit74: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread129, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread, %bb.bl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit, %bb.at
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eh, %bb.at ], [ %.pn39.pn.pn.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit ], [ %.pn39.pn.pn.pn120, %bb.bl ], [ %.pn39.pn.pn.pn120, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread ], [ %lpad.thr_comm.split-lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit.thread129 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %4) #37
          to label %bb.bm unwind label %bb.bf

bb.at:                                            ; preds = %bb.as
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit74

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.as, %bb.ar, %bb.bc
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %4)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit59: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ej = load <2 x ptr>, ptr %i.r, align 16      ; 2 uses
  store <2 x ptr> %i.ej, ptr %i.i, align 16
  %.not = icmp ult i64 %.sroa.02.010.i, %i.cg
  br i1 %.not, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit59
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0, i64 %.sroa.02.010.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10110)
  call void @llvm.experimental.noalias.scope.decl(metadata !10111)
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !10112, !nonnull !10, !noundef !10
  %i.em = atomicrmw sub ptr %i.el, i64 1 release, align 8, !noalias !10112
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.av, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit67

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow.exit67 unwind label %.thread116

bb.aw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow.exit59
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.010.i, i64 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337) #36
          to label %bb.ax unwind label %bb.bd
end_hunk_5
