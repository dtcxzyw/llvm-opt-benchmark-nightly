Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.15?download=true
inline.NumInlined: 678
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNCNvXsa_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeINtB7_18CompleteReadStreamINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtBb_3raw3oio4read3api13ReadStreamDynEL_EENtB1U_10ReadStream4read0Bb_:bb.a

bb.e:                                             ; preds = %.thread, %bb.d
  %i.n = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.d ] ; 2 uses
  %i.o = phi ptr [ %i.j, %.thread ], [ %i.l, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1313, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %.val7.i = load ptr, ptr %i.p, align 8, !noalias !1313, !nonnull !5, !noundef !5
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val8.i = load ptr, ptr %i.q, align 8, !noalias !1313, !nonnull !5, !align !12, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !5, !noalias !1313, !nonnull !5
  %i.t = invoke { ptr, ptr } %i.s(ptr noundef nonnull %.val7.i)
          to label %bb.f unwind label %bb.r, !noalias !1313 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.u, ptr %i.w, align 8, !noalias !1313
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.v, ptr %i.x, align 8, !noalias !1313
  br label %bb.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.p, %bb.j
  %i.y = phi ptr [ %i.aa, %bb.j ], [ %i.n, %bb.r ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ]
  %i.z = phi ptr [ %i.ab, %bb.j ], [ %i.o, %bb.r ], [ %i.ab, %bb.q ], [ %i.ab, %bb.p ]
  %.pn2.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.au, %bb.r ], [ %i.ao, %bb.q ], [ %i.ao, %bb.p ]
  store i8 2, ptr %i.y, align 8, !noalias !1313
  br label %.body

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19
          to label %.noexc13 unwind label %bb.t

.noexc13:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.aa = phi ptr [ %i.n, %bb.f ], [ %i.m, %bb.d ] ; 5 uses
  %i.ab = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2e_5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val5.i = load ptr, ptr %i.ac, align 8, !noalias !1313
  %i.ae = getelementptr i8, ptr %1, i64 32
  %.val6.i = load ptr, ptr %i.ae, align 8, !noalias !1313, !nonnull !5, !align !12, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val5.i, ptr nonnull %.val6.i) #24
          to label %.body.i unwind label %bb.s, !noalias !1314

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.b, align 8, !range !19, !alias.scope !1314, !noundef !5 ; 3 uses
  %i.ag = icmp eq i64 %i.af, -2
  br i1 %i.ag, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i = load ptr, ptr %i.ac, align 8, !noalias !1313 ; 5 uses
  %i.ah = getelementptr i8, ptr %1, i64 32
  %.val4.i = load ptr, ptr %i.ah, align 8, !noalias !1313, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.ai = load ptr, ptr %.val4.i, align 8, !invariant.load !5, !noalias !1314 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ai(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p, !noalias !1314

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !7, !invariant.load !5, !noalias !1314 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !8, !invariant.load !5, !noalias !1314
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #21, !noalias !1314
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !7, !invariant.load !5, !noalias !1314 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.body.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !8, !invariant.load !5, !noalias !1314
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #21, !noalias !1314
  br label %.body.i

bb.r:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1314
  unreachable

bb.t:                                             ; preds = %bb.h, %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.t
  %i.ax = phi ptr [ %i.l, %bb.t ], [ %i.z, %.body.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.t ], [ %.pn2.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream4read0EBR_(ptr noundef nonnull align 8 %i.ax) #24
          to label %.body16 unwind label %bb.ag

common.ret:                                       ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit, %bb.u
  %storemerge = phi i8 [ 1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit ], [ 3, %bb.u ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.u:                                             ; preds = %bb.k
  store i8 3, ptr %i.aa, align 8, !noalias !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %common.ret

bb.v:                                             ; preds = %bb.o, %bb.n
  store i8 1, ptr %i.aa, align 8, !noalias !1313
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, i64 40, i1 false)
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.538, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.538.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %i.af, -1
  br i1 %.not.i, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3, i64 40, i1 false)
  %i.ay = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ay, null             ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.gep.val = load i64, ptr %.sroa.gep, align 8 ; 2 uses
  %.sroa.gep27.val = load i64, ptr %.sroa.gep27, align 8 ; 2 uses
  %.sroa.0.0.i = select i1 %.not.i18, i64 %.sroa.gep.val, i64 %.sroa.gep27.val ; 2 uses
  %i.az = icmp eq i64 %.sroa.0.0.i, 0
  %i.ba = inttoptr i64 %.sroa.gep27.val to ptr
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !11, !alias.scope !1315, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !1315
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1315, !noundef !5
  invoke void @_RNvNtNtCs5XgW7KoffLW_12opendal_core6layers8complete14check_complete(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, i64 noundef %i.bd, i64 %i.bf, i64 noundef %i.bh)
          to label %_RNvMs9_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeINtB5_18CompleteReadStreamINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtB9_3raw3oio4read3api13ReadStreamDynEL_EE5checkB9_.exit unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !5, !align !12, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %i.bm = add i64 %i.bl, %.sroa.0.0.i
  store i64 %i.bm, ptr %i.bk, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.sink.split

_RNvMs9_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeINtB5_18CompleteReadStreamINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtB9_3raw3oio4read3api13ReadStreamDynEL_EE5checkB9_.exit: ; preds = %bb.x
  %i.bn = load i64, ptr %i.a, align 8, !range !10, !alias.scope !1316, !noundef !5 ; 4 uses
  %.not.i24 = icmp eq i64 %i.bn, -1
  br i1 %.not.i24, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #24
          to label %.body16 unwind label %bb.ag

bb.aa:                                            ; preds = %_RNvMs9_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeINtB5_18CompleteReadStreamINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtB9_3raw3oio4read3api13ReadStreamDynEL_EE5checkB9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.sink.split

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.sink.split: ; preds = %bb.y, %bb.aa, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3, i64 40, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.sink.split, %bb.ae, %bb.ac, %bb.ad
  %.sroa.048.0 = phi i64 [ %i.bn, %bb.ac ], [ %i.bn, %bb.ad ], [ %i.bn, %bb.ae ], [ %i.af, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.048.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4, i64 80, i1 false)
  br label %common.ret

bb.ab:                                            ; preds = %_RNvMs9_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeINtB5_18CompleteReadStreamINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtB9_3raw3oio4read3api13ReadStreamDynEL_EE5checkB9_.exit
  %.sroa.844.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.844.0..sroa_idx45, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  br i1 %.not.i18, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !1321, !noundef !5
  %i.bs = load ptr, ptr %i.bp, align 8, !alias.scope !1321, !nonnull !5, !align !12, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !1321, !nonnull !5, !noundef !5
  invoke void %i.bu(ptr noundef %i.br, ptr noundef %i.ba, i64 noundef %.sroa.gep.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.af, !inline_history !20

bb.ad:                                            ; preds = %bb.ab
  %i.bv = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !1322
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ae, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.af

.body16:                                          ; preds = %.body, %bb.af, %bb.z
  %.pn10.pn = phi { ptr, i32 } [ %i.bo, %bb.z ], [ %i.bx, %bb.af ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 2, ptr %i.d, align 8
  resume { ptr, i32 } %.pn10.pn

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.ag:                                            ; preds = %bb.z, %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ah:                                            ; preds = %bb.v
  %.sroa.4.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.538, i64 40, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsd_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeINtB7_14CompleteWriterINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtBb_3raw3oio5write3api8WriteDynEL_EENtB1Q_5Write5abort0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.649 = alloca [72 x i8], align 8          ; 3 uses
  %.sroa.3.sroa.2 = alloca [72 x i8], align 8     ; 3 uses
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.9.sroa.8 = alloca [72 x i8], align 8     ; 9 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !13, !noundef !5
  switch i8 %i.d, label %default.unreachable69 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

default.unreachable69:                            ; preds = %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1339, !noundef !5
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 33)
          to label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionQINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3api8WriteDynEL_EE10ok_or_elseNtNtNtB1s_5types5error5ErrorNCNCNvXsd_NtNtB1s_6layers8completeINtB3e_14CompleteWriterBJ_ENtB1k_5Write5abort00EB1s_.exit unwind label %bb.d

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionQINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3api8WriteDynEL_EE10ok_or_elseNtNtNtB1s_5types5error5ErrorNCNCNvXsd_NtNtB1s_6layers8completeINtB3e_14CompleteWriterBJ_ENtB1k_5Write5abort00EB1s_.exit: ; preds = %bb.c
  %.pr = load i64, ptr %i.b, align 8, !alias.scope !1340 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %.not.i14 = icmp eq i64 %.pr, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1342 ; 2 uses
  br i1 %.not.i14, label %.thread, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

.thread:                                          ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionQINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3api8WriteDynEL_EE10ok_or_elseNtNtNtB1s_5types5error5ErrorNCNCNvXsd_NtNtB1s_6layers8completeINtB3e_14CompleteWriterBJ_ENtB1k_5Write5abort00EB1s_.exit, %bb.b
  %i.i = phi ptr [ %i.f, %bb.b ], [ %.pre, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionQINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3api8WriteDynEL_EE10ok_or_elseNtNtNtB1s_5types5error5ErrorNCNCNvXsd_NtNtB1s_6layers8completeINtB3e_14CompleteWriterBJ_ENtB1k_5Write5abort00EB1s_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.i, ptr %i.j, align 8
  %.sroa.943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.943.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.j

bb.e:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionQINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3api8WriteDynEL_EE10ok_or_elseNtNtNtB1s_5types5error5ErrorNCNCNvXsd_NtNtB1s_6layers8completeINtB3e_14CompleteWriterBJ_ENtB1k_5Write5abort00EB1s_.exit
  %.sroa.10.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.649, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx30, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMsb_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB5_13CompleteState10transition.exit

bb.f:                                             ; preds = %.body24, %bb.d, %.body19
  %.pn9.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %eh.lpad-body, %.body19 ], [ %i.bl, %.body24 ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn9.pn

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #19
  unreachable

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8)
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre62 = load i8, ptr %.phi.trans.insert61, align 8, !range !13, !noalias !1343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  switch i8 %.pre62, label %default.unreachable69 [
    i8 0, label %bb.j
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
  ]

bb.j:                                             ; preds = %.thread, %bb.i
  %i.o = phi ptr [ %i.l, %.thread ], [ %i.n, %bb.i ] ; 2 uses
  %i.p = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.i ] ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1343, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %.val7.i = load ptr, ptr %i.q, align 8, !noalias !1343, !nonnull !5, !noundef !5
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val8.i = load ptr, ptr %i.r, align 8, !noalias !1343, !nonnull !5, !align !12, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5, !noalias !1343, !nonnull !5
  %i.u = invoke { ptr, ptr } %i.t(ptr noundef nonnull %.val7.i)
          to label %bb.k unwind label %bb.w, !noalias !1343 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.v = extractvalue { ptr, ptr } %i.u, 0
  %i.w = extractvalue { ptr, ptr } %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.v, ptr %i.x, align 8, !noalias !1343
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.w, ptr %i.y, align 8, !noalias !1343
  br label %bb.n

.body.i:                                          ; preds = %bb.w, %bb.v, %bb.u, %bb.o
  %i.z = phi ptr [ %i.ab, %bb.o ], [ %i.o, %bb.w ], [ %i.ab, %bb.v ], [ %i.ab, %bb.u ]
  %i.aa = phi ptr [ %i.ac, %bb.o ], [ %i.p, %bb.w ], [ %i.ac, %bb.v ], [ %i.ac, %bb.u ]
  %.pn2.i = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.av, %bb.w ], [ %i.ap, %bb.v ], [ %i.ap, %bb.u ]
  store i8 2, ptr %i.z, align 8, !noalias !1343
  br label %.body

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
          to label %.noexc15 unwind label %bb.y

.noexc15:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
          to label %.noexc16 unwind label %bb.y

.noexc16:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.i
  %i.ab = phi ptr [ %i.o, %bb.k ], [ %i.n, %bb.i ] ; 5 uses
  %i.ac = phi ptr [ %i.p, %bb.k ], [ %i.m, %bb.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2h_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
end_hunk_0
