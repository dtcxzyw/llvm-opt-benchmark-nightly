Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.09?download=true
inline.NumInlined: 646
inline.NumDeleted: 291
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client:bb.a
.split25.peel:                                    ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !range !31, !noundef !12
  %i.bh = icmp eq i8 %i.bg, 35
  br i1 %i.bh, label %.thread27.peel, label %.loopexit129

.split24.peel:                                    ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  %i.bi = lshr i64 %i.az, 32
  %i.bj = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.bi to i8
  %spec.select.i.i.i.peel = select i1 %i.bj, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.bk = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.bl, label %bb.n, label %.loopexit129

bb.n:                                             ; preds = %.split24.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = and i64 %i.az, 1095216660480
  %i.bn = icmp ne i64 %i.bm, 1095216660480
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.assume(i1 %i.bn)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.preheader

bb.o:                                             ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.peel unwind label %.loopexit.split-lp

.noexc.peel:                                      ; preds = %bb.o
  %i.bp = lshr i64 %i.az, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !12, !noundef !12
  %i.bt = invoke noundef zeroext i1 %i.bs(i32 noundef %i.bq)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel unwind label %.loopexit.split-lp, !inline_history !3

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel: ; preds = %.noexc.peel
  br i1 %i.bt, label %.thread27.peel, label %.loopexit129

.thread27.peel:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split25.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.preheader

bb.p:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre112, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25
  unreachable

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !547
  store ptr %i.ak, ptr %i.b, align 8, !noalias !547
  store i64 %.sroa.034.0121, ptr %i.r, align 8, !noalias !547
  store i64 0, ptr %i.s, align 8, !noalias !547
  store i64 %.sroa.034.0121, ptr %i.t, align 8, !noalias !547
  %i.bu = call { i64, ptr } @_RNvXs2_NtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompatINtB5_17AsyncIoStdAsTokioINtB5_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEENtNtNtB1N_2io10async_read9AsyncRead9poll_readCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !548 ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16, label %bb.q

bb.q:                                             ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i
  %i.bx = extractvalue { i64, ptr } %i.bu, 1      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %.loopexit106, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16

.loopexit106:                                     ; preds = %bb.q, %bb.l
  %i.by = load i64, ptr %i.r, align 8, !noalias !547, !noundef !12 ; 2 uses
  %i.bz = load i64, ptr %i.s, align 8, !noalias !547, !noundef !12 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.bz, %i.by
  br i1 %.not7.i.i.i.i, label %bb.r, label %bb.s, !prof !32

bb.r:                                             ; preds = %.loopexit106
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bz, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25, !noalias !548
  unreachable

bb.s:                                             ; preds = %.loopexit106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !547
  %.not.i.i = icmp ult i64 %.sroa.034.0121, %i.bz
  br i1 %.not.i.i, label %bb.t, label %bb.aa, !prof !29

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25, !noalias !546
  unreachable

_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16: ; preds = %bb.q, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i
  %i.ca = phi ptr [ inttoptr (i64 55834574851 to ptr), %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i ], [ %i.bx, %bb.q ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !547
  %i.cb = ptrtoint ptr %i.ca to i64               ; 4 uses
  %i.cc = and i64 %i.cb, 3
  switch i64 %i.cc, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16.unreachabledefault [
    i64 2, label %bb.u
    i64 3, label %.split24
    i64 0, label %.split25
    i64 1, label %.split
  ], !prof !18

_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16.unreachabledefault: ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  unreachable

_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel.unreachabledefault: ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  unreachable

bb.u:                                             ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %.loopexit107

.noexc:                                           ; preds = %bb.u
  %i.ce = lshr i64 %i.cb, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !12, !noundef !12
  %i.ci = invoke noundef zeroext i1 %i.ch(i32 noundef %i.cf)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %.loopexit107, !inline_history !3

.split24:                                         ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  %i.cj = lshr i64 %i.cb, 32
  %i.ck = icmp ult ptr %i.ca, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.cj to i8
  %spec.select.i.i.i = select i1 %i.ck, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.cl = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.cm, label %bb.v, label %.loopexit129

.split25:                                         ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !31, !noundef !12
  %i.cp = icmp eq i8 %i.co, 35
  br i1 %i.cp, label %.thread27, label %.loopexit129

.split:                                           ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  %i.cq = getelementptr i8, ptr %i.ca, i64 31
  %i.cr = load i8, ptr %i.cq, align 8, !range !31, !noundef !12
  %i.cs = icmp eq i8 %i.cr, 35
  br i1 %i.cs, label %bb.w, label %.loopexit129

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.ci, label %.thread27, label %.loopexit129

.thread27:                                        ; preds = %.split25, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge

bb.v:                                             ; preds = %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ct = and i64 %i.cb, 1095216660480
  %i.cu = icmp ne i64 %i.ct, 1095216660480
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 %i.cu)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge

bb.w:                                             ; preds = %.split
  %i.cv = getelementptr i8, ptr %i.ca, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  store ptr %i.cv, ptr %i.u, align 8, !alias.scope !549
  store i8 3, ptr %i.a, align 8, !alias.scope !549
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge: ; preds = %bb.w, %bb.v, %.thread27
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i, !llvm.loop !545

bb.x:                                             ; preds = %bb.y
  resume { ptr, i32 } %lpad.phi

.loopexit107:                                     ; preds = %bb.u, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.o, %.noexc.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit107
  %.lcssa83 = phi ptr [ %i.ca, %.loopexit107 ], [ %i.ay, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit107 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %.lcssa83) #21
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

.loopexit129:                                     ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split24.peel, %.split25.peel, %.split.peel, %.split25, %.split24, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  %.lcssa82 = phi ptr [ %i.ca, %.split25 ], [ %i.ca, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.ca, %.split ], [ %i.ca, %.split24 ], [ %i.ay, %.split.peel ], [ %i.ay, %.split25.peel ], [ %i.ay, %.split24.peel ], [ %i.ay, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ]
  %i.cx = ptrtoint ptr %.lcssa82 to i64
  %i.cy = load i64, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  call void @llvm.assume(i1 %i.cz)
  store i64 %i.cy, ptr %i.c, align 8
  br label %.loopexit

bb.aa:                                            ; preds = %bb.s
  %i.da = load i64, ptr %i.c, align 8, !noundef !12 ; 3 uses
  %i.db = icmp sgt i64 %i.da, -1
  call void @llvm.assume(i1 %i.db)
  %i.dc = add i64 %i.da, %i.bz                    ; 4 uses
  store i64 %i.dc, ptr %i.c, align 8
  %i.dd = icmp eq i64 %i.bz, 0
  br i1 %i.dd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.de = sub nsw i64 %i.dc, %i.d
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %3 = add i64 %i.da, %.sroa.034.0121             ; 2 uses
  %i.df = icmp ne i64 %i.bz, %.sroa.053.3.ph.ph
  %or.cond.not = select i1 %i.g, i1 true, i1 %i.df
  br i1 %or.cond.not, label %.outer, label %bb.ad

.outer:                                           ; preds = %.outer.outer, %bb.ac
  %i.dg = phi i64 [ %i.dc, %bb.ac ], [ %.ph, %.outer.outer ] ; 2 uses
  %.sroa.027.2.ph = phi i64 [ %3, %bb.ac ], [ %.sroa.027.2.ph.ph, %.outer.outer ]
  %i.dh = load i64, ptr %0, align 8, !range !19, !noundef !12 ; 2 uses
  %i.di = sub i64 %i.dh, %i.dg
  %i.dj = icmp ult i64 %i.di, 32                  ; 2 uses
  %i.dk = icmp eq i64 %i.dh, %i.f
  %or.cond6373 = and i1 %i.dk, %i.dj
  br i1 %or.cond6373, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %bb.ac
  %i.dl = shl nuw i64 %.sroa.053.3.ph.ph, 1
  %i.dm = icmp slt i64 %.sroa.053.3.ph.ph, 0
  br i1 %i.dm, label %bb.ae, label %.outer.outer.backedge, !prof !29

.outer.outer:                                     ; preds = %.outer.outer.backedge, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread
  %.ph = phi i64 [ %.pre, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread ], [ %i.dc, %.outer.outer.backedge ]
  %.sroa.053.3.ph.ph = phi i64 [ %.sroa.053.2, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread ], [ %.sroa.053.3.ph.ph.be, %.outer.outer.backedge ] ; 4 uses
  %.sroa.027.2.ph.ph = phi i64 [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread ], [ %3, %.outer.outer.backedge ]
  br label %.outer

bb.ae:                                            ; preds = %bb.ad
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.ae, %bb.ad
  %.sroa.053.3.ph.ph.be = phi i64 [ %i.dl, %bb.ad ], [ -1, %bb.ae ]
  br label %.outer.outer

.loopexit:                                        ; preds = %bb.h, %.loopexit129, %bb.ab, %bb.f, %bb.af, %bb.ah, %bb.e
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %i.de, %bb.ab ], [ %i.dq, %bb.af ], [ %i.du, %bb.ah ], [ 0, %bb.f ], [ %i.cx, %.loopexit129 ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ 0, %bb.ab ], [ 1, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.f ], [ 1, %.loopexit129 ], [ 1, %bb.h ]
  %i.dn = inttoptr i64 %.sroa.8.1 to ptr
  %i.do = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.dp = insertvalue { i64, ptr } %i.do, ptr %i.dn, 1
  ret { i64, ptr } %i.dp

bb.af:                                            ; preds = %.lr.ph
  %i.dq = ptrtoint ptr %i.ad to i64
  br label %.loopexit

bb.ag:                                            ; preds = %.lr.ph
  %i.dr = icmp eq ptr %i.ad, null
  %i.ds = load i64, ptr %i.c, align 8, !noundef !12 ; 5 uses
  %i.dt = icmp sgt i64 %i.ds, -1
  call void @llvm.assume(i1 %i.dt)
  br i1 %i.dr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.du = sub nsw i64 %i.ds, %i.d
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ag
  %i.dv = load i64, ptr %0, align 8, !range !19, !noundef !12 ; 2 uses
  %i.dw = sub nsw i64 %i.dv, %i.ds
  %i.dx = icmp ult i64 %i.dw, 32                  ; 2 uses
  %i.dy = icmp eq i64 %i.dv, %i.f
  %or.cond63 = and i1 %i.dy, %i.dx
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtBY_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !19, !noundef !12 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit, !prof !29

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not85 = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not85, i64 8192, i64 %i.m
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB1i_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEE0Csi17nFaBu4HY_10ech_client.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB1i_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.al, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.al, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.c, align 8, !noundef !12 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !range !19, !noundef !12
  %i.ao = sub nsw i64 %i.an, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !19
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ap, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !30

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ap, %bb.j ] ; 3 uses
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !12, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.af
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ar, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvYINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB7_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE4pollCsi17nFaBu4HY_10ech_client:bb.a
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ij, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dj)
          to label %_RNCNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB4_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB8_6client4PeerE4poll0Csi17nFaBu4HY_10ech_client.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB4_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB8_6client4PeerE4poll0Csi17nFaBu4HY_10ech_client.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.524.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  invoke void @_RNvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB2_7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtB8_6client4PeerE27clear_expired_reset_streamsCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ep)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.z, %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !772
  invoke void @_RINvMNtNtCs4okMlIQ9Z13_2h25proto7go_awayNtB3_6GoAway20send_pending_go_awayINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB21_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.eq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(2344) %1)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %.noexc90
  %i.il = load i32, ptr %i.cx, align 8, !range !773, !noalias !772, !noundef !12 ; 2 uses
  switch i32 %i.il, label %bb.aa [
    i32 -1, label %.thread207
    i32 2, label %bb.ab
  ]

.thread207:                                       ; preds = %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !772
  store i8 -2, ptr %i.dg, align 8, !alias.scope !770
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  br label %bb.gk

bb.aa:                                            ; preds = %.noexc91
  %i.im = trunc i32 %i.il to i1
  br i1 %i.im, label %bb.ca, label %bb.cb

bb.ab:                                            ; preds = %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !772
  br label %bb.ac

bb.ac:                                            ; preds = %bb.cb, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !772
  %i.in = load i64, ptr %i.dn, align 8, !range !17, !alias.scope !775, !noundef !12
  %.not.i.i89 = icmp eq i64 %i.in, 2
  br i1 %.not.i.i89, label %.noexc92, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.et)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body.i.i:                                        ; preds = %bb.bj, %bb.af, %bb.bu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit66.i.i
  %.pn57.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit66.i.i ], [ %i.kb, %bb.bu ], [ %i.ip, %bb.af ], [ %i.jr, %bb.bj ] ; 2 uses
  %i.io = load i64, ptr %i.dn, align 8, !range !17, !alias.scope !775, !noalias !776, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.io, 2
  br i1 %.not.i.i.i.i, label %.body, label %bb.ae

bb.ae:                                            ; preds = %.body.i.i
  invoke void @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.et)
          to label %.body unwind label %bb.bz, !noalias !777

bb.af:                                            ; preds = %bb.bm, %bb.bx, %bb.al, %bb.ai, %bb.ah
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.noexc92:                                         ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !778
  %i.iq = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !778
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %bb.ag, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ak, %bb.aj, %bb.ag, %.noexc92
  store i64 2, ptr %i.cs, align 8, !noalias !778
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !778
  br label %bb.ao

bb.ag:                                            ; preds = %.noexc92
  %i.is = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB4_10ConnectionpppE10poll_ready10___CALLSITE, i64 16) monotonic, align 8, !noalias !778 ; 3 uses
  switch i8 %i.is, label %bb.ah [
    i8 0, label %.thread.i.i
    i8 1, label %bb.ai
    i8 2, label %bb.ai
  ], !prof !35

bb.ah:                                            ; preds = %bb.ag
  %i.it = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB4_10ConnectionpppE10poll_ready10___CALLSITE)
          to label %bb.aj unwind label %bb.af, !noalias !777 ; 2 uses

bb.ai:                                            ; preds = %bb.ag, %bb.aj, %bb.ag
  %.sroa.05.0.i.i = phi i8 [ %i.it, %bb.aj ], [ %i.is, %bb.ag ], [ %i.is, %bb.ag ]
  %i.iu = load ptr, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB4_10ConnectionpppE10poll_ready10___CALLSITE, align 8, !noalias !778, !nonnull !12, !align !22, !noundef !12
  %i.iv = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iu, i8 noundef %.sroa.05.0.i.i)
          to label %bb.ak unwind label %bb.af, !noalias !777

bb.aj:                                            ; preds = %bb.ah
  %.not50.i.i = icmp eq i8 %i.it, 0
  br i1 %.not50.i.i, label %.thread.i.i, label %bb.ai

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.iv, label %bb.al, label %.thread.i.i

bb.al:                                            ; preds = %bb.ak
  %i.iw = load ptr, ptr @_RNvNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB4_10ConnectionpppE10poll_ready10___CALLSITE, align 8, !noalias !778, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !778
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  store i64 1, ptr %i.cr, align 8, !noalias !778
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !778
  store i64 0, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !778
  store ptr %i.ix, ptr %i.eu, align 8, !noalias !778
  invoke void @_RNvMNtCsiIyHGM5EznH_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr)
          to label %bb.am unwind label %bb.af, !noalias !777

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !778
  %.pr.i.i = load i64, ptr %i.cs, align 8, !noalias !778
  %.not51.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not51.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ev)
          to label %bb.ao unwind label %bb.ap, !noalias !777

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread.i.i
  %i.iy = invoke { i64, ptr } @_RINvMNtNtCs4okMlIQ9Z13_2h25proto9ping_pongNtB3_8PingPong17send_pending_pongINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB22_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(2344) %1)
          to label %bb.as unwind label %bb.aq, !noalias !777 ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit66.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %.pn.i.i = phi { ptr, i32 } [ %i.iz, %bb.ap ], [ %i.ja, %bb.ar ], [ %i.ja, %bb.aq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cs) #21
          to label %.body.i.i unwind label %bb.bz, !noalias !777

bb.ap:                                            ; preds = %bb.bq, %bb.bh, %bb.an
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit66.i.i

bb.aq:                                            ; preds = %bb.bf, %bb.bc, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.ao
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = load i64, ptr %i.cs, align 8, !range !17, !noalias !779, !noundef !12
  %.not.i.i64.i.i = icmp eq i64 %i.jb, 2
  br i1 %.not.i.i64.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit66.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ev)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit66.i.i unwind label %bb.bz, !noalias !777

bb.as:                                            ; preds = %bb.ao
  %i.jc = extractvalue { i64, ptr } %i.iy, 0
  %i.jd = extractvalue { i64, ptr } %i.iy, 1      ; 2 uses
  %i.je = trunc nuw i64 %i.jc to i1
  br i1 %i.je, label %bb.bp, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not52.i.i = icmp eq ptr %i.jd, null
  br i1 %.not52.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !778
  invoke void @_RNvXs2_NtNtCs4okMlIQ9Z13_2h25proto5errorNtB5_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cp, ptr noundef nonnull %i.jd)
          to label %bb.bs unwind label %bb.aq, !noalias !777

bb.av:                                            ; preds = %bb.at
  %i.jf = invoke { i64, ptr } @_RINvMNtNtCs4okMlIQ9Z13_2h25proto9ping_pongNtB3_8PingPong17send_pending_pingINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB22_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(2344) %1)
          to label %bb.aw unwind label %bb.aq, !noalias !777 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.jg = extractvalue { i64, ptr } %i.jf, 0
  %i.jh = extractvalue { i64, ptr } %i.jf, 1      ; 2 uses
  %i.ji = trunc nuw i64 %i.jg to i1
  br i1 %i.ji, label %bb.bp, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not53.i.i = icmp eq ptr %i.jh, null
  br i1 %.not53.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !778
  invoke void @_RNvXs2_NtNtCs4okMlIQ9Z13_2h25proto5errorNtB5_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.co, ptr noundef nonnull %i.jh)
          to label %bb.br unwind label %bb.aq, !noalias !777

bb.az:                                            ; preds = %bb.ax
  invoke void @_RINvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB3_8Settings9poll_sendINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1S_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEB4Y_NtNtB7_6client4PeerECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %i.ex, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(2344) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ep)
          to label %bb.ba unwind label %bb.aq, !noalias !777

bb.ba:                                            ; preds = %bb.az
  %i.jj = load i8, ptr %i.cq, align 8, !range !780, !noalias !778, !noundef !12 ; 3 uses
  switch i8 %i.jj, label %bb.bb [
    i8 -2, label %bb.bp
    i8 -1, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.0..sroa_idx.i.i, i64 39, i1 false), !noalias !772
  br label %bb.bp

bb.bc:                                            ; preds = %bb.ba
  %i.jk = invoke { i64, ptr } @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB3_7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtB9_6client4PeerE20send_pending_refusalINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB37_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(2344) %1)
          to label %bb.bd unwind label %bb.aq, !noalias !777 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.jl = extractvalue { i64, ptr } %i.jk, 0
  %i.jm = extractvalue { i64, ptr } %i.jk, 1      ; 2 uses
  %i.jn = trunc nuw i64 %i.jl to i1
  br i1 %i.jn, label %bb.bp, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not55.i.i = icmp eq ptr %i.jm, null
  br i1 %.not55.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !778
  invoke void @_RNvXs2_NtNtCs4okMlIQ9Z13_2h25proto5errorNtB5_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cn, ptr noundef nonnull %i.jm)
          to label %bb.bo unwind label %bb.aq, !noalias !777

bb.bg:                                            ; preds = %bb.be
  %i.jo = load i64, ptr %i.cs, align 8, !range !17, !noalias !777, !noundef !12
  %.not.i.i67.i.i = icmp eq i64 %i.jo, 2
  br i1 %.not.i.i67.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ev)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit69.i.i unwind label %bb.ap, !noalias !777

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit69.i.i: ; preds = %bb.bh
  %.pr201 = load i64, ptr %i.cs, align 8, !alias.scope !781, !noalias !777 ; 2 uses
  %.not.i.i168 = icmp eq i64 %.pr201, 2
  br i1 %.not.i.i168, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit69.i.i
  %i.jp = load i64, ptr %i.ev, align 8, !range !27, !alias.scope !782, !noalias !777, !noundef !12
  %i.jq = invoke noundef zeroext i1 @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cs, i64 noundef %i.jp)
          to label %bb.bk unwind label %bb.bj, !noalias !777 ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiIyHGM5EznH_7tracing4span5InnerEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #21
          to label %.body.i.i unwind label %bb.bn, !noalias !777

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !783), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !784), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !785), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !786), !noalias !777
  %i.js = icmp eq i64 %.pr201, 0
  br i1 %i.js, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !787), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !788), !noalias !777
  %i.jt = load ptr, ptr %i.ey, align 8, !alias.scope !789, !noalias !777, !nonnull !12, !noundef !12
  %i.ju = atomicrmw add ptr %i.jt, i64 -1 release, align 8, !noalias !790
  %i.jv = icmp eq i64 %i.ju, 1
  br i1 %i.jv, label %bb.bm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172

bb.bm:                                            ; preds = %bb.bl
  fence acquire, !noalias !777
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsjpgBhlqJ253_12tracing_core10subscriber10SubscriberNtNtCsj6eKBz9Db1c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ey) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172 unwind label %bb.af

bb.bn:                                            ; preds = %bb.bj
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !noalias !777
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172: ; preds = %bb.bg, %bb.bl, %bb.bk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit69.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !778
  %i.jx = load i64, ptr %i.dn, align 8, !range !17, !alias.scope !775, !noalias !791, !noundef !12
  %.not.i.i70.i.i = icmp eq i64 %i.jx, 2
  br i1 %.not.i.i70.i.i, label %.thread.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit71.sink.split.i.i

.thread.i:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !772
  br label %bb.ce

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit71.sink.split.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172
  %.sroa.099.1.i = phi i8 [ %.sroa.099.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit172 ]
  invoke void @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.et)
          to label %_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE10poll_readyCsi17nFaBu4HY_10ech_client.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bf
  %.sroa.099.0.copyload101.i = load i8, ptr %i.cn, align 8, !noalias !792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.0..sroa_idx103.i, i64 39, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !778
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bs, %bb.br, %bb.bo, %bb.bd, %bb.bb, %bb.ba, %bb.aw, %bb.as
  %.sroa.099.0.i = phi i8 [ %.sroa.099.0.copyload.i, %bb.bs ], [ -2, %bb.as ], [ -2, %bb.bd ], [ -2, %bb.aw ], [ %.sroa.099.0.copyload101.i, %bb.bo ], [ %.sroa.099.0.copyload100.i, %bb.br ], [ %i.jj, %bb.bb ], [ %i.jj, %bb.ba ] ; 2 uses
  %i.jy = load i64, ptr %i.cs, align 8, !range !17, !noalias !778, !noundef !12
  %.not.i.i72.i.i = icmp eq i64 %i.jy, 2
  br i1 %.not.i.i72.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ev)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit74.i.i unwind label %bb.ap, !noalias !777

bb.br:                                            ; preds = %bb.ay
  %.sroa.099.0.copyload100.i = load i8, ptr %i.co, align 8, !noalias !792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.0..sroa_idx102.i, i64 39, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !778
  br label %bb.bp

bb.bs:                                            ; preds = %bb.au
  %.sroa.099.0.copyload.i = load i8, ptr %i.cp, align 8, !noalias !792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.0..sroa_idx.i, i64 39, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !778
  br label %bb.bp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit74.i.i: ; preds = %bb.bq
  %.pr81.i.i = load i64, ptr %i.cs, align 8, !alias.scope !793, !noalias !778 ; 2 uses
  %.not.i.i75.i.i = icmp eq i64 %.pr81.i.i, 2
  br i1 %.not.i.i75.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit74.i.i
  %i.jz = load i64, ptr %i.ev, align 8, !range !27, !alias.scope !794, !noalias !778, !noundef !12
  %i.ka = invoke noundef zeroext i1 @_RNvMs2_NtCsjpgBhlqJ253_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cs, i64 noundef %i.jz)
          to label %bb.bv unwind label %bb.bu, !noalias !777 ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiIyHGM5EznH_7tracing4span5InnerEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #21
          to label %.body.i.i unwind label %bb.by, !noalias !777

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.kc = icmp eq i64 %.pr81.i.i, 0
  br i1 %i.kc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.kd = load ptr, ptr %i.ey, align 8, !alias.scope !801, !noalias !778, !nonnull !12, !noundef !12
  %i.ke = atomicrmw add ptr %i.kd, i64 -1 release, align 8, !noalias !802
  %i.kf = icmp eq i64 %i.ke, 1
  br i1 %i.kf, label %bb.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsjpgBhlqJ253_12tracing_core10subscriber10SubscriberNtNtCsj6eKBz9Db1c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ey) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.af, !noalias !777

bb.by:                                            ; preds = %bb.bu
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !noalias !777
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.bx, %bb.bw, %bb.bv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit74.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !778
  %i.kh = load i64, ptr %i.dn, align 8, !range !17, !alias.scope !775, !noalias !803, !noundef !12
  %.not.i.i77.i.i = icmp eq i64 %i.kh, 2
  br i1 %.not.i.i77.i.i, label %_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE10poll_readyCsi17nFaBu4HY_10ech_client.exit.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit71.sink.split.i.i

bb.bz:                                            ; preds = %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit66.i.i, %bb.ae
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !noalias !777
  unreachable

_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE10poll_readyCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit71.sink.split.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i
  %.sroa.099.2.i = phi i8 [ %.sroa.099.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span4SpanECsi17nFaBu4HY_10ech_client.exit.i.i ], [ %.sroa.099.1.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit71.sink.split.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !772
  switch i8 %.sroa.099.2.i, label %bb.cd [
    i8 -2, label %.loopexit222
    i8 -1, label %bb.ce
  ]

bb.ca:                                            ; preds = %bb.aa
  %i.kj = load ptr, ptr %i.gl, align 8, !noalias !772, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !772
  invoke void @_RNvXs2_NtNtCs4okMlIQ9Z13_2h25proto5errorNtB5_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.dg, ptr noundef nonnull %i.kj)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.aa
  %i.kk = load i32, ptr %i.er, align 4, !noalias !772, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !772
  %.val.i = load ptr, ptr %i.eq, align 8, !alias.scope !771, !noundef !12
  %.val83.i = load i8, ptr %i.es, align 4, !alias.scope !771
  %.not.i85.i = icmp eq ptr %.val.i, null
  %i.kl = trunc nuw i8 %.val83.i to i1
  %spec.select.i.i = select i1 %.not.i85.i, i1 %i.kl, i1 false
  br i1 %spec.select.i.i, label %bb.cc, label %bb.ac

bb.cc:                                            ; preds = %bb.cb
  %.val84.i = load i8, ptr %i.gk, align 1, !range !26, !alias.scope !771, !noundef !12
  %i.km = trunc nuw i8 %.val84.i to i1
  br i1 %i.km, label %.thread208, label %bb.gc

bb.cd:                                            ; preds = %_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE10poll_readyCsi17nFaBu4HY_10ech_client.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.459.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.12.i, i64 39, i1 false), !noalias !804
  br label %.loopexit222

bb.ce:                                            ; preds = %_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE10poll_readyCsi17nFaBu4HY_10ech_client.exit.i, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  store ptr %i.ek, ptr %i.cw, align 8, !alias.scope !805, !noalias !772
  store ptr %i.eq, ptr %i.fa, align 8, !alias.scope !805, !noalias !772
  %i.kn = load <2 x ptr>, ptr %i.ep, align 8, !alias.scope !807
  %i.ko = getelementptr inbounds nuw i8, <2 x ptr> %i.kn, i64 16
  store <2 x ptr> %i.ko, ptr %i.fb, align 8, !alias.scope !805, !noalias !772
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !805, !noalias !772
  store ptr %i.ez, ptr %i.fc, align 8, !alias.scope !805, !noalias !772
  store ptr %i.ew, ptr %i.fd, align 8, !alias.scope !805, !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !772
  invoke void @_RNvXs1_NtCs4okMlIQ9Z13_2h25codecINtB5_5CodecINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1x_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtCsjeNDyKnSdUK_12futures_core6stream6Stream9poll_nextCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(address) dereferenceable(296) %i.cv, ptr noalias nofree noundef nonnull align 8 dereferenceable(2344) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ce
  %i.kp = load i8, ptr %i.cv, align 8, !range !808, !noalias !772, !noundef !12 ; 2 uses
  switch i8 %i.kp, label %bb.cg [
    i8 -3, label %bb.cf
    i8 -2, label %.thread150.i
    i8 -1, label %bb.fu
  ]

.thread150.i:                                     ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.14.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.341.sroa.5.sroa.5.i, i64 32, i1 false), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %.sroa.14.sroa.8.36..sroa_idx210.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, i64 248, i1 false), !noalias !772
  %i.kq = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !809
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %bb.ch, label %bb.ck

bb.cf:                                            ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !772
  store i8 -2, ptr %i.dg, align 8, !alias.scope !770
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  br label %bb.gb

bb.cg:                                            ; preds = %.noexc95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.341.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.467.0..sroa_idx.i, i64 3, i1 false), !noalias !772
  %.sroa.467.sroa.4.0.copyload.i = load i32, ptr %.sroa.467.sroa.4.0..sroa.467.0..sroa_idx.sroa_idx.i, align 4, !noalias !772 ; 13 uses
  %.sroa.467.sroa.5.0.copyload.i = load i32, ptr %.sroa.467.sroa.5.0..sroa.467.0..sroa_idx.sroa_idx.i, align 8, !noalias !772 ; 17 uses
  %.sroa.467.sroa.6.sroa.0.0.copyload.i = load i32, ptr %.sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.i, align 4, !noalias !772 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.467.sroa.6.sroa.4.0..sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.568.0..sroa_idx.i, i64 248, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.341.sroa.5.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.14.sroa.8.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %.sroa.14.sroa.8.36..sroa_idx210.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.542.i, i64 248, i1 false), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  switch i8 %i.kp, label %default.unreachable.i.i [
    i8 8, label %bb.cr
    i8 0, label %bb.cs
    i8 1, label %bb.de
    i8 2, label %bb.cn
    i8 3, label %bb.du
    i8 4, label %bb.co
    i8 5, label %bb.cp
    i8 6, label %bb.et
    i8 7, label %bb.cq
  ]

default.unreachable.i.i:                          ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %.thread150.i
  %i.ks = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, i64 16) monotonic, align 8, !noalias !809 ; 3 uses
  switch i8 %i.ks, label %bb.ci [
    i8 0, label %bb.ck
    i8 1, label %bb.cj
    i8 2, label %bb.cj
  ], !prof !35

bb.ci:                                            ; preds = %bb.ch
  %i.kt = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE) #23
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc96:                                         ; preds = %bb.ci
  %i.ku = icmp eq i8 %i.kt, 0
  br i1 %i.ku, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %.noexc96, %bb.ch
  %.sroa.095.0.i.i = phi i8 [ %i.kt, %.noexc96 ], [ %i.ks, %bb.ch ], [ %i.ks, %bb.ch ]
  %i.kv = load ptr, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, align 8, !noalias !809, !nonnull !12, !align !22, !noundef !12
  %i.kw = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kv, i8 noundef %.sroa.095.0.i.i)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.cj
  br i1 %i.kw, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.noexc100, %.noexc97, %.noexc96, %bb.ch, %.thread150.i
  %i.kx = invoke noundef zeroext i1 @_RNvMs_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE8recv_eofCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb, i1 noundef zeroext false)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.ck
  br i1 %i.kx, label %bb.cl, label %.thread203, !prof !29

bb.cl:                                            ; preds = %.noexc98
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #25
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %.noexc97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !809
  %i.ky = load ptr, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames7_10___CALLSITE, align 8, !noalias !809, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !809
  store <2 x ptr> <ptr @29, ptr inttoptr (i64 25 to ptr)>, ptr %i.ah, align 16, !noalias !809
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !809
  store ptr @28, ptr %i.fe, align 8, !noalias !809
  store i64 1, ptr %i.aj, align 8, !noalias !809
  store ptr %i.ai, ptr %.sroa.097.sroa.4.0..sroa_idx.i.i, align 8, !noalias !809
  store i64 1, ptr %.sroa.097.sroa.5.0..sroa_idx.i.i, align 8, !noalias !809
  store ptr %i.kz, ptr %.sroa.498.0..sroa_idx.i.i, align 8, !noalias !809
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ky, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !809
  br label %bb.ck

bb.cn:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !809
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.ao, align 4, !noalias !811
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %.sroa.8110.4..sroa_idx111.i, align 4, !noalias !811
  store i32 %.sroa.467.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.14.4..sroa_idx117.i, align 4, !noalias !811
  %i.la = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !809
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %bb.dp, label %bb.ds

bb.co:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !809
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.bl, align 4, !noalias !811
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %.sroa.8110.4..sroa_idx.i, align 4, !noalias !811
  store i32 %.sroa.467.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.14.4..sroa_idx.i, align 4, !noalias !811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.14.sroa.8.0..sroa.14.4..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(48) %.sroa.14.sroa.8.i, i64 48, i1 false), !noalias !811
  %i.lc = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !809
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %bb.ef, label %bb.fv

bb.cp:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.az, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.341.sroa.0.i, i64 3, i1 false), !noalias !772
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %.sroa.4106.1..sroa_idx.i, align 1, !noalias !811
  %.sroa.8110.0.extract.trunc.i = trunc i32 %.sroa.467.sroa.5.0.copyload.i to i16
  store i16 %.sroa.8110.0.extract.trunc.i, ptr %.sroa.8110.1..sroa_idx.i, align 1, !noalias !811
  %i.le = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !809
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %bb.ej, label %bb.em

bb.cq:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !809
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.au, align 4, !noalias !809
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %i.ff, align 4, !noalias !809
  %i.lg = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !809
  %i.lh = icmp eq i64 %i.lg, 0
  br i1 %i.lh, label %bb.fg, label %bb.fj

bb.cr:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !809
  store i32 %.sroa.467.sroa.4.0.copyload.i, ptr %i.by, align 4, !noalias !809
  store i32 %.sroa.467.sroa.5.0.copyload.i, ptr %i.ge, align 4, !noalias !809
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE4pollCsi17nFaBu4HY_10ech_client:bb.a
  invoke void @_RNvMs_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE18recv_window_updateCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb, i32 noundef %i.pq, i32 noundef %i.pp)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.fj
  %i.pr = load i8, ptr %i.ap, align 8, !range !24, !noalias !809, !noundef !12
  %.not158.i.i = icmp eq i8 %i.pr, -1
  br i1 %.not158.i.i, label %bb.fm, label %bb.fl

bb.fk:                                            ; preds = %.noexc120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !809
  %i.ps = load ptr, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames5_10___CALLSITE, align 8, !noalias !809, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !809
  store <2 x ptr> <ptr @49, ptr inttoptr (i64 37 to ptr)>, ptr %i.ar, align 16, !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !809
  store ptr %i.au, ptr %i.aq, align 8, !noalias !809
  store ptr %i.ar, ptr %i.as, align 8, !noalias !809
  store ptr @28, ptr %i.fg, align 8, !noalias !809
  store ptr %i.aq, ptr %i.fh, align 8, !noalias !809
  store ptr @50, ptr %i.fi, align 8, !noalias !809
  store i64 1, ptr %i.at, align 8, !noalias !809
  store ptr %i.as, ptr %.sroa.077.sroa.4.0..sroa_idx.i.i, align 8, !noalias !809
  store i64 2, ptr %.sroa.077.sroa.5.0..sroa_idx.i.i, align 8, !noalias !809
  store ptr %i.pt, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !noalias !809
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ps, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !809
  %.pre192.i.i = load i32, ptr %i.au, align 4, !noalias !809
  %.pre193.i.i = load i32, ptr %i.ff, align 4, !noalias !809
  br label %bb.fj

bb.fl:                                            ; preds = %.noexc121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !809
  br label %_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection10recv_frameCsi17nFaBu4HY_10ech_client.exit.i

bb.fm:                                            ; preds = %.noexc121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !809
  br label %.thread203

bb.fn:                                            ; preds = %bb.cr
  %i.pu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !809 ; 3 uses
  switch i8 %i.pu, label %bb.fo [
    i8 0, label %bb.fq
    i8 1, label %bb.fp
    i8 2, label %bb.fp
  ], !prof !35

bb.fo:                                            ; preds = %bb.fn
  %i.pv = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE) #23
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc123:                                        ; preds = %bb.fo
  %i.pw = icmp eq i8 %i.pv, 0
  br i1 %i.pw, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %.noexc123, %bb.fn
  %.sroa.025.0.i.i = phi i8 [ %i.pv, %.noexc123 ], [ %i.pu, %bb.fn ], [ %i.pu, %bb.fn ]
  %i.px = load ptr, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !noalias !809, !nonnull !12, !align !22, !noundef !12
  %i.py = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.px, i8 noundef %.sroa.025.0.i.i)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc124:                                        ; preds = %bb.fp
  br i1 %i.py, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %.noexc126, %.noexc124, %.noexc123, %bb.fn, %bb.cr
  %i.pz = phi i32 [ %.sroa.467.sroa.5.0.copyload.i, %.noexc123 ], [ %.sroa.467.sroa.5.0.copyload.i, %bb.fn ], [ %.sroa.467.sroa.5.0.copyload.i, %bb.cr ], [ %.pre191.i.i, %.noexc126 ], [ %.sroa.467.sroa.5.0.copyload.i, %.noexc124 ]
  %i.qa = phi i32 [ %.sroa.467.sroa.4.0.copyload.i, %.noexc123 ], [ %.sroa.467.sroa.4.0.copyload.i, %bb.fn ], [ %.sroa.467.sroa.4.0.copyload.i, %bb.cr ], [ %.pre.i.i, %.noexc126 ], [ %.sroa.467.sroa.4.0.copyload.i, %.noexc124 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !809
  invoke void @_RNvMs_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE10recv_resetCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb, i32 noundef %i.qa, i32 noundef %i.pz)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %bb.fq
  %i.qb = load i8, ptr %i.bt, align 8, !range !24, !noalias !809, !noundef !12
  %.not157.i.i = icmp eq i8 %i.qb, -1
  br i1 %.not157.i.i, label %bb.ft, label %bb.fs

bb.fr:                                            ; preds = %.noexc124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !809
  %i.qc = load ptr, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !noalias !809, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !809
  store <2 x ptr> <ptr @51, ptr inttoptr (i64 31 to ptr)>, ptr %i.bv, align 16, !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !809
  store ptr %i.by, ptr %i.bu, align 8, !noalias !809
  store ptr %i.bv, ptr %i.bw, align 8, !noalias !809
  store ptr @28, ptr %i.gf, align 8, !noalias !809
  store ptr %i.bu, ptr %i.gg, align 8, !noalias !809
  store ptr @52, ptr %i.gh, align 8, !noalias !809
  store i64 1, ptr %i.bx, align 8, !noalias !809
  store ptr %i.bw, ptr %.sroa.027.sroa.4.0..sroa_idx.i.i, align 8, !noalias !809
  store i64 2, ptr %.sroa.027.sroa.5.0..sroa_idx.i.i, align 8, !noalias !809
  store ptr %i.qd, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !809
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bx)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126:                                        ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !809
  %.pre.i.i = load i32, ptr %i.by, align 4, !noalias !809
  %.pre191.i.i = load i32, ptr %i.ge, align 4, !noalias !809
  br label %bb.fq

bb.fs:                                            ; preds = %.noexc125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i64 40, i1 false), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !809
  br label %_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection10recv_frameCsi17nFaBu4HY_10ech_client.exit.i

bb.ft:                                            ; preds = %.noexc125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !809
  br label %.thread203

bb.fu:                                            ; preds = %.noexc95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.467.sroa.6.sroa.4.0..sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !772
  %i.qe = load <2 x i32>, ptr %.sroa.467.sroa.5.0..sroa.467.0..sroa_idx.sroa_idx.i, align 8, !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4145.sroa.4.0..sroa.4145.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !noalias !804
  store <2 x i32> %i.qe, ptr %i.dg, align 8, !alias.scope !770
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  br label %bb.gb

_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection10recv_frameCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.fs, %bb.fl, %.noexc118, %bb.ec, %bb.dm, %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.i, i64 40, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.i, i64 40, i1 false), !noalias !804
  br label %bb.gb

.thread203:                                       ; preds = %bb.db, %bb.dn, %bb.ds, %bb.ed, %bb.ep, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit.i.i, %bb.fm, %bb.ft, %.noexc98
  %.sroa.15.0.ph.i.ph = phi i32 [ 3, %.noexc98 ], [ 2, %bb.ft ], [ 2, %bb.fm ], [ 2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit.i.i ], [ 2, %bb.ep ], [ 2, %bb.ed ], [ 2, %bb.ds ], [ 2, %bb.dn ], [ 2, %bb.db ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, i64 56, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  br label %bb.fw

bb.fv:                                            ; preds = %bb.co, %bb.ef, %.noexc107, %.noexc108, %.noexc109
  %.sroa.15.4.copyload.i = load i32, ptr %i.bl, align 4, !noalias !813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.8110.4..sroa_idx.i, i64 56, i1 false), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !809
  %i.qf = freeze i32 %.sroa.15.4.copyload.i       ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.i, i64 56, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  %i.qg = icmp ugt i32 %i.qf, 1
  br i1 %i.qg, label %bb.fw, label %.thread158.i

bb.fw:                                            ; preds = %.thread203, %bb.fv
  %.sroa.15.0.ph.i205 = phi i32 [ %.sroa.15.0.ph.i.ph, %.thread203 ], [ %i.qf, %bb.fv ]
  %i.qh = icmp eq i32 %.sroa.15.0.ph.i205, 3
  br i1 %i.qh, label %bb.fy, label %bb.fx

.thread158.i:                                     ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !772
  store i32 %i.qf, ptr %i.cu, align 4, !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.345.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.sroa.5.i, i64 56, i1 false), !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !772
  invoke void @_RINvMNtNtCs4okMlIQ9Z13_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1X_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEB53_NtNtB7_6client4PeerECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias nofree noundef nonnull align 4 dereferenceable(128) %i.ex, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(60) %i.cu, ptr noalias nofree noundef nonnull align 8 dereferenceable(2344) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ep)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %.thread158.i
  %i.qi = load i8, ptr %i.ct, align 8, !range !24, !noalias !772, !noundef !12
  %.not82.i = icmp eq i8 %i.qi, -1
  br i1 %.not82.i, label %bb.ga, label %bb.fz

bb.fx:                                            ; preds = %bb.ga, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !772
  br label %.noexc90

bb.fy:                                            ; preds = %bb.fw
  store i8 -1, ptr %i.dg, align 8, !alias.scope !770
  br label %bb.gb

bb.fz:                                            ; preds = %.noexc127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 40, i1 false), !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !772
  br label %bb.gb

bb.ga:                                            ; preds = %.noexc127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !772
  br label %bb.fx

bb.gb:                                            ; preds = %bb.fz, %bb.fy, %_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection10recv_frameCsi17nFaBu4HY_10ech_client.exit.i, %bb.fu, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !772
  br label %thread-pre-split

.loopexit222:                                     ; preds = %_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE10poll_readyCsi17nFaBu4HY_10ech_client.exit.i, %bb.cd
  store i8 %.sroa.099.2.i, ptr %i.dg, align 8, !alias.scope !770
  br label %bb.gj

bb.gc:                                            ; preds = %bb.cc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.998.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !770
  store i8 1, ptr %i.dg, align 8, !alias.scope !770
  store i8 1, ptr %.sroa.459.0..sroa_idx.i, align 1, !alias.scope !770
  store i32 %i.kk, ptr %.sroa.4145.0..sroa_idx.i, align 4, !alias.scope !770
  store <2 x ptr> <ptr @22, ptr inttoptr (i64 1 to ptr)>, ptr %.sroa.4145.sroa.4.0..sroa.4145.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !770
  br label %thread-pre-split

.thread208:                                       ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  br label %bb.gl

bb.gd:                                            ; preds = %bb.x
  %i.qj = load i32, ptr %i.em, align 4, !noundef !12 ; 3 uses
  %i.qk = load i8, ptr %i.en, align 1, !range !16, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ez, i64 40, i1 false), !noalias !841
  store ptr null, ptr %i.ez, align 8, !alias.scope !839
  %i.ql = load ptr, ptr %i.ad, align 8, !noalias !840, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.ql, null
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.thread.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.qm = load ptr, ptr %i.ql, align 8, !noalias !842, !nonnull !12, !noundef !12
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %.sroa.gep39.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.qn = load ptr, ptr %.sroa.gep39.i, align 8, !noalias !842, !noundef !12
  %.sroa.gep41.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.qo = load i64, ptr %.sroa.gep41.i, align 8, !noalias !842, !noundef !12
  invoke void %i.qm(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, ptr noundef nonnull align 8 %.sroa.gep.i, ptr noundef %i.qn, i64 noundef %i.qo)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayE6map_orTNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMNtNtBP_5proto10connectionINtB2B_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB4a_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtBP_6client4PeerE10take_error0ECsi17nFaBu4HY_10ech_client.exit.i unwind label %.body.i, !noalias !843, !inline_history !687

.body.i:                                          ; preds = %bb.ge
  %i.qp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.qq = load ptr, ptr %i.ad, align 8, !alias.scope !844, !noalias !840, !noundef !12 ; 2 uses
  %i.qr = icmp eq ptr %i.qq, null
  br i1 %i.qr, label %.body, label %bb.gf

bb.gf:                                            ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.qs = load ptr, ptr %.sroa.gep.i, align 8, !alias.scope !848, !noalias !840, !noundef !12
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 32
  %i.qu = load ptr, ptr %i.qt, align 8, !noalias !849, !nonnull !12, !noundef !12
  %i.qv = load ptr, ptr %.sroa.gep39.i, align 8, !alias.scope !848, !noalias !840, !noundef !12
  %i.qw = load i64, ptr %.sroa.gep41.i, align 8, !alias.scope !848, !noalias !840, !noundef !12
  invoke void %i.qu(ptr noundef %i.qs, ptr noundef %i.qv, i64 noundef %i.qw)
          to label %.body unwind label %bb.gi, !noalias !840, !inline_history !671

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayE6map_orTNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMNtNtBP_5proto10connectionINtB2B_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB4a_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtBP_6client4PeerE10take_error0ECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.ge
  %.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.qx = load i32, ptr %.sroa.gep43.i, align 4, !noalias !842, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.ae, align 8, !noalias !840 ; 4 uses
  %.sroa.6.0..sroa_idx29.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.6.0..sroa_idx29.phi.trans.insert.i, align 8, !noalias !840 ; 3 uses
  %.sroa.8.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0.copyload.pre.i = load i64, ptr %.sroa.8.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !840 ; 3 uses
  %.sroa.10.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.0.copyload.pre.i = load ptr, ptr %.sroa.10.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !840 ; 3 uses
  %.pre.i = load ptr, ptr %i.ad, align 8, !alias.scope !850, !noalias !840 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.qy = icmp eq ptr %.pre.i, null
  br i1 %i.qy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i, label %bb.gg

bb.gg:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayE6map_orTNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMNtNtBP_5proto10connectionINtB2B_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB4a_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtBP_6client4PeerE10take_error0ECsi17nFaBu4HY_10ech_client.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.qz = load ptr, ptr %.sroa.gep.i, align 8, !alias.scope !854, !noalias !840, !noundef !12
  %i.ra = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.rb = load ptr, ptr %i.ra, align 8, !noalias !855, !nonnull !12, !noundef !12
  %i.rc = load ptr, ptr %.sroa.gep39.i, align 8, !alias.scope !854, !noalias !840, !noundef !12
  %i.rd = load i64, ptr %.sroa.gep41.i, align 8, !alias.scope !854, !noalias !840, !noundef !12
  invoke void %i.rb(ptr noundef %i.qz, ptr noundef %i.rc, i64 noundef %i.rd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i unwind label %bb.gh, !noalias !840, !inline_history !671

bb.gh:                                            ; preds = %bb.gg
  %i.re = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.pre.i) ]
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre.i, i64 32
  %i.rg = load ptr, ptr %i.rf, align 8, !noalias !856, !nonnull !12, !noundef !12
  invoke void %i.rg(ptr noundef %.sroa.10.0.copyload.pre.i, ptr noundef %.sroa.6.0.copyload.pre.i, i64 noundef %.sroa.8.0.copyload.pre.i)
          to label %.body unwind label %bb.gi, !noalias !840, !inline_history !4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i: ; preds = %bb.gg, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayE6map_orTNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMNtNtBP_5proto10connectionINtB2B_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB4a_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtBP_6client4PeerE10take_error0ECsi17nFaBu4HY_10ech_client.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !840
  %i.rh = icmp eq i32 %i.qj, 0
  %i.ri = icmp eq i32 %i.qx, 0
  %. = select i1 %i.rh, i8 -1, i8 1
  br i1 %i.ri, label %.thread.i128, label %_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE10take_errorCsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.thread.i: ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !840
  %i.rj = icmp eq i32 %i.qj, 0
  %spec.select = select i1 %i.rj, i8 -1, i8 1
  br label %.thread.i128

.thread.i128:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.thread.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i
  %.sroa.0187.0 = phi i8 [ %spec.select, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.thread.i ], [ %., %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i ]
  %.sroa.10.0.copyload6487.i = phi ptr [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.thread.i ], [ %.sroa.10.0.copyload.pre.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i ]
  %.sroa.8.0.copyload6583.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.thread.i ], [ %.sroa.8.0.copyload.pre.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i ]
  %.sroa.6.0.copyload6679.i = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.thread.i ], [ %.sroa.6.0.copyload.pre.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i ]
  %.sroa.0.0.copyload6772.i = phi ptr [ @22, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.thread.i ], [ %.sroa.0.0.copyload.pre.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4okMlIQ9Z13_2h25frame7go_away6GoAwayEECsi17nFaBu4HY_10ech_client.exit25.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload6772.i) ]
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload6772.i, i64 32
  %i.rl = load ptr, ptr %i.rk, align 8, !noalias !857, !nonnull !12, !noundef !12
  invoke void %i.rl(ptr noundef %.sroa.10.0.copyload6487.i, ptr noundef %.sroa.6.0.copyload6679.i, i64 noundef %.sroa.8.0.copyload6583.i)
          to label %_RNvMNtNtCs4okMlIQ9Z13_2h25proto10connectionINtB2_10ConnectionINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1O_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6client4PeerE10take_errorCsi17nFaBu4HY_10ech_client.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !712

bb.gi:                                            ; preds = %bb.gh, %bb.gf
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !noalias !840
  unreachable

thread-pre-split:                                 ; preds = %bb.ca, %bb.gb, %bb.gc
  %.pr206 = load i8, ptr %i.dg, align 8
  br label %bb.gj

bb.gj:                                            ; preds = %thread-pre-split, %.loopexit222
  %i.rn = phi i8 [ %.pr206, %thread-pre-split ], [ %.sroa.099.2.i, %.loopexit222 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.ro = icmp eq i8 %i.rn, -2
  br i1 %i.ro, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %.thread207, %bb.gj
  %i.rp = invoke { i64, ptr } @_RINvMNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB3_7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtB9_6client4PeerE13poll_completeINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB30_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(2024) %1)
          to label %bb.ih unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc90, %bb.ad, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsiIyHGM5EznH_7tracing4span7EnteredECsi17nFaBu4HY_10ech_client.exit71.sink.split.i.i, %bb.ce, %bb.ci, %bb.cj, %bb.ck, %bb.cm, %bb.cy, %bb.dk, %bb.dq, %bb.dr, %bb.dt, %bb.ea, %bb.eg, %bb.eh, %bb.ei, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.er, %.noexc115, %.noexc116, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %.thread158.i, %bb.t, %bb.u, %bb.gk, %bb.in, %bb.iv, %bb.iw, %bb.iz, %bb.y, %bb.z, %bb.ca, %bb.fc, %bb.ip, %.noexc156, %bb.ja, %bb.hy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsi17nFaBu4HY_10ech_client.exit.i.i.i, %bb.hc, %bb.ha, %bb.gz, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.go, %bb.ik, %bb.je, %bb.cl, %bb.eq, %.thread.i128
  %lpad.loopexit.split-lp410 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gl:                                            ; preds = %bb.gj, %.thread208
  %.sroa.0356.0.copyload = phi i8 [ %i.rn, %bb.gj ], [ -1, %.thread208 ]
  %.sroa.4.0.copyload = load i8, ptr %.sroa.459.0..sroa_idx.i, align 1 ; 8 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.4145.0..sroa_idx.i, align 4 ; 6 uses
  %.sroa.7360.0.copyload = load i32, ptr %.sroa.4145.sroa.4.0..sroa.4145.0..sroa_idx.sroa_idx.i, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8361.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  store ptr %i.ek, ptr %i.de, align 8, !alias.scope !858
  store ptr %i.eq, ptr %i.gm, align 8, !alias.scope !858
  %i.rq = load <2 x ptr>, ptr %i.ep, align 8, !alias.scope !859
  %i.rr = getelementptr inbounds nuw i8, <2 x ptr> %i.rq, i64 16
  store <2 x ptr> %i.rr, ptr %i.gn, align 8, !alias.scope !858
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !858
  store ptr %i.ez, ptr %i.go, align 8, !alias.scope !858
  store ptr %i.ew, ptr %i.gp, align 8, !alias.scope !858
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  switch i8 %.sroa.0356.0.copyload, label %default.unreachable.i [
    i8 -1, label %bb.gm
    i8 0, label %bb.gn
    i8 1, label %bb.go
    i8 2, label %bb.hd
  ]

bb.gm:                                            ; preds = %bb.gl
  store i8 1, ptr %i.ek, align 8, !noalias !861
  store i8 1, ptr %i.en, align 1, !noalias !861
  store i32 0, ptr %i.em, align 4, !noalias !861
  br label %_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection19handle_poll2_resultCsi17nFaBu4HY_10ech_client.exit.thread

default.unreachable.i:                            ; preds = %bb.gl
  unreachable

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !861
  store i32 %.sroa.6.0.copyload, ptr %i.ab, align 4, !noalias !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !861
  store i32 %.sroa.7360.0.copyload, ptr %i.aa, align 4, !noalias !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !861
  store i8 %.sroa.4.0.copyload, ptr %i.z, align 1, !noalias !861
  %i.rs = icmp eq i8 %.sroa.4.0.copyload, 2
  %i.rt = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !861
  %i.ru = icmp eq i64 %i.rt, 0                    ; 2 uses
  br i1 %i.rs, label %bb.gx, label %bb.gp

bb.go:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !861
  store i32 %.sroa.7360.0.copyload, ptr %i.ac, align 8, !noalias !862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13.8..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.13, i64 28, i1 false), !noalias !862
  invoke fastcc void @_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection14handle_go_awayCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.de, i32 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ac, i8 noundef %.sroa.4.0.copyload)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc136:                                        ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !861
  br label %_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection19handle_poll2_resultCsi17nFaBu4HY_10ech_client.exit.thread

bb.gp:                                            ; preds = %bb.gn
  br i1 %i.ru, label %bb.gq, label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  %i.rv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, i64 16) monotonic, align 8, !noalias !861 ; 3 uses
  switch i8 %i.rv, label %bb.gr [
    i8 0, label %bb.gt
    i8 1, label %bb.gs
    i8 2, label %bb.gs
  ], !prof !35

bb.gr:                                            ; preds = %bb.gq
  %i.rw = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE) #23
          to label %.noexc137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc137:                                        ; preds = %bb.gr
  %i.rx = icmp eq i8 %i.rw, 0
  br i1 %i.rx, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gq, %.noexc137, %bb.gq
  %.sroa.020.0.i = phi i8 [ %i.rw, %.noexc137 ], [ %i.rv, %bb.gq ], [ %i.rv, %bb.gq ]
  %i.ry = load ptr, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, align 8, !noalias !861, !nonnull !12, !align !22, !noundef !12
  %i.rz = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ry, i8 noundef %.sroa.020.0.i)
          to label %.noexc138 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138:                                        ; preds = %bb.gs
  br i1 %i.rz, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %.noexc140, %.noexc138, %.noexc137, %bb.gq, %bb.gp
  %i.sa = phi i32 [ %.sroa.7360.0.copyload, %.noexc137 ], [ %.sroa.7360.0.copyload, %bb.gq ], [ %.sroa.7360.0.copyload, %bb.gp ], [ %.pre74.i, %.noexc140 ], [ %.sroa.7360.0.copyload, %.noexc138 ]
  %i.sb = phi i32 [ %.sroa.6.0.copyload, %.noexc137 ], [ %.sroa.6.0.copyload, %bb.gq ], [ %.sroa.6.0.copyload, %bb.gp ], [ %.pre73.i, %.noexc140 ], [ %.sroa.6.0.copyload, %.noexc138 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !861
  invoke void @_RNvMs_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE10send_resetCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gn, i32 noundef %i.sb, i32 noundef %i.sa)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc139:                                        ; preds = %bb.gt
  %i.sc = load ptr, ptr %i.o, align 8, !noalias !861, !noundef !12
  %.not59.i = icmp eq ptr %i.sc, null
  br i1 %.not59.i, label %bb.gw, label %bb.gv

bb.gu:                                            ; preds = %.noexc138
  %i.sd = load ptr, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE, align 8, !noalias !861, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !861
  store <2 x ptr> <ptr @56, ptr inttoptr (i64 25 to ptr)>, ptr %i.s, align 16, !noalias !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !861
  store ptr %i.ab, ptr %i.r, align 8, !noalias !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !861
  store ptr %i.aa, ptr %i.q, align 8, !noalias !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !861
  store ptr %i.z, ptr %i.p, align 8, !noalias !861
  store ptr %i.s, ptr %i.t, align 8, !noalias !861
  store ptr @28, ptr %i.hb, align 8, !noalias !861
  store ptr %i.r, ptr %i.hc, align 8, !noalias !861
  store ptr @57, ptr %i.hd, align 8, !noalias !861
  store ptr %i.q, ptr %i.he, align 8, !noalias !861
  store ptr @58, ptr %i.hf, align 8, !noalias !861
  store ptr %i.p, ptr %i.hg, align 8, !noalias !861
  store ptr @59, ptr %i.hh, align 8, !noalias !861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !861
  store i64 1, ptr %i.e, align 8, !noalias !861
  store ptr %i.t, ptr %.sroa.022.sroa.4.0..sroa_idx.i, align 8, !noalias !861
  store i64 4, ptr %.sroa.022.sroa.5.0..sroa_idx.i, align 8, !noalias !861
  store ptr %i.se, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !861
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !861
  %.pre73.i = load i32, ptr %i.ab, align 4, !noalias !861
  %.pre74.i = load i32, ptr %i.aa, align 4, !noalias !861
  br label %bb.gt

bb.gv:                                            ; preds = %.noexc139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !861
  %i.sf = load i32, ptr %i.hi, align 8, !noalias !861, !noundef !12
  invoke fastcc void @_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection14handle_go_awayCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.de, i32 noundef %i.sf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, i8 noundef 1)
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !861
  br label %bb.gw

bb.gw:                                            ; preds = %.noexc141, %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !861
  br label %_RNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_13DynConnection19handle_poll2_resultCsi17nFaBu4HY_10ech_client.exit.thread

bb.gx:                                            ; preds = %bb.gn
  br i1 %i.ru, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %bb.gx
  %i.sg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE, i64 16) monotonic, align 8, !noalias !861 ; 3 uses
  switch i8 %i.sg, label %bb.gz [
    i8 0, label %bb.hb
    i8 1, label %bb.ha
    i8 2, label %bb.ha
  ], !prof !35

bb.gz:                                            ; preds = %bb.gy
  %i.sh = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE) #23
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142:                                        ; preds = %bb.gz
  %i.si = icmp eq i8 %i.sh, 0
  br i1 %i.si, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gy, %.noexc142, %bb.gy
  %.sroa.010.0.i = phi i8 [ %i.sh, %.noexc142 ], [ %i.sg, %bb.gy ], [ %i.sg, %bb.gy ]
  %i.sj = load ptr, ptr @_RNvNvMs0_NtNtCs4okMlIQ9Z13_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE, align 8, !noalias !861, !nonnull !12, !align !22, !noundef !12
  %i.sk = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sj, i8 noundef %.sroa.010.0.i)
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read10read_exactCsi17nFaBu4HY_10ech_client:bb.a
_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read4readCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i, %bb.g, %bb.f
  %.merged.i.i = phi { i64, ptr } [ %i.af, %bb.f ], [ %i.ah, %bb.g ], [ %i.al, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i ] ; 2 uses
  %i.an = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.ao = extractvalue { i64, ptr } %.merged.i.i, 1 ; 12 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 8 uses
  %i.aq = trunc nuw i64 %i.an to i1
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read4readCsi17nFaBu4HY_10ech_client.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ar = and i64 %i.ap, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %bb.k
    i64 3, label %.split27.i
    i64 0, label %.split28.i
    i64 1, label %.split.i
  ], !prof !18

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.as = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.k
  %i.at = lshr i64 %i.ap, 32
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !12, !noundef !12
  %i.ax = invoke noundef zeroext i1 %i.aw(i32 noundef %i.au)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i unwind label %bb.s, !inline_history !3

.split27.i:                                       ; preds = %bb.j
  %i.ay = lshr i64 %i.ap, 32
  %i.az = icmp ult ptr %i.ao, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ay to i8
  %spec.select.i.i.i.i = select i1 %i.az, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.ba = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.bb, label %bb.p, label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECsi17nFaBu4HY_10ech_client.exit

.split28.i:                                       ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !range !31, !noundef !12
  %i.be = icmp eq i8 %i.bd, 35
  br i1 %i.be, label %.thread.thread.i, label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECsi17nFaBu4HY_10ech_client.exit

.split.i:                                         ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %i.ao, i64 31
  %i.bg = load i8, ptr %i.bf, align 8, !range !31, !noundef !12
  %i.bh = icmp eq i8 %i.bg, 35
  br i1 %i.bh, label %bb.q, label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECsi17nFaBu4HY_10ech_client.exit

bb.l:                                             ; preds = %_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read4readCsi17nFaBu4HY_10ech_client.exit.i
  %i.bi = icmp eq ptr %i.ao, null
  br i1 %i.bi, label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECsi17nFaBu4HY_10ech_client.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = icmp ult i64 %.sroa.7.040.i, %i.ap
  br i1 %i.bj, label %bb.n, label %bb.o, !prof !29

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %.sroa.7.040.i, i64 noundef %.sroa.7.040.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #26
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bk = sub nuw nsw i64 %.sroa.7.040.i, %i.ap
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i, i64 %i.ap
  br label %bb.r

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %.noexc.i
  br i1 %i.ax, label %.thread.thread.i, label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECsi17nFaBu4HY_10ech_client.exit

.thread.thread.i:                                 ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1085
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i

bb.p:                                             ; preds = %.split27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1085
  %i.bm = and i64 %i.ap, 1095216660480
  %i.bn = icmp ne i64 %i.bm, 1095216660480
  call void @llvm.assume(i1 %i.az)
  call void @llvm.assume(i1 %i.bn)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i

bb.q:                                             ; preds = %.split.i
  %i.bo = getelementptr i8, ptr %i.ao, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1085
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  store ptr %i.bo, ptr %i.q, align 8, !alias.scope !1086, !noalias !1085
  store i8 3, ptr %i.a, align 8, !alias.scope !1086, !noalias !1085
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.q, %bb.p, %.thread.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1085
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i, %bb.o
  %.sroa.0.120.i = phi ptr [ %.sroa.0.041.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i ], [ %i.bl, %bb.o ]
  %.sroa.7.118.i = phi i64 [ %.sroa.7.040.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i ], [ %i.bk, %bb.o ] ; 2 uses
  %i.bp = icmp eq i64 %.sroa.7.118.i, 0
  br i1 %i.bp, label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECsi17nFaBu4HY_10ech_client.exit, label %bb.b

bb.s:                                             ; preds = %.noexc.i, %bb.k
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %i.ao) #21
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %lpad.thr_comm.i

bb.u:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.r, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.l, %.split.i, %.split28.i, %.split27.i, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read10read_exact0ECsi17nFaBu4HY_10ech_client.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read10read_exact0ECsi17nFaBu4HY_10ech_client.exit.thread ], [ null, %bb.r ], [ %i.ao, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.ao, %.split.i ], [ %i.ao, %.split27.i ], [ @17, %bb.l ], [ %i.ao, %.split28.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read11read_to_endCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 2 uses
  %i.f = sub nuw i64 %i.e, %i.c                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !12
  %i.i = tail call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 1, i64 noundef 1)
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.f)
  %i.k = load i64, ptr %i.g, align 8, !alias.scope !1089, !noundef !12 ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.e, %i.c
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsi17nFaBu4HY_10ech_client.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1089, !nonnull !12, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.m, i64 %i.f, i1 false)
  %.pre.i = load i64, ptr %i.g, align 8, !alias.scope !1089
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsi17nFaBu4HY_10ech_client.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre.i, %bb.c ], [ %i.k, %bb.b ]
  %i.r = add i64 %i.q, %i.f
  store i64 %i.r, ptr %i.g, align 8, !alias.scope !1089
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.t = tail call { i64, ptr } @_RNvXsa_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.t, 1
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = trunc nuw i64 %i.u to i1
  %i.y = select i1 %i.x, i64 0, i64 %i.f
  %spec.select = add i64 %i.y, %i.w
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsi17nFaBu4HY_10ech_client.exit, %bb.a
  %.sroa.4.0 = phi i64 [ %spec.select, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsi17nFaBu4HY_10ech_client.exit ], [ 163208757251, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.u, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsi17nFaBu4HY_10ech_client.exit ], [ 1, %bb.a ]
  %i.z = inttoptr i64 %.sroa.4.0 to ptr
  %i.aa = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ab = insertvalue { i64, ptr } %i.aa, ptr %i.z, 1
  ret { i64, ptr } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read13read_vectoredCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsi17nFaBu4HY_10ech_client.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.d = and i64 %2, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub nsw i64 %2, %i.f                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec21 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec22 = shufflevector <4 x i64> %wide.vec21, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec22, %vec.phi20 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1090

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader26

.preheader.preheader26:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.n, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader26, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader26 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader26 ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !noundef !12
  %i.q = add i64 %.val.i, %.sroa.02.0.i           ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsi17nFaBu4HY_10ech_client.exit, label %.preheader, !llvm.loop !1091

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsi17nFaBu4HY_10ech_client.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !12 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !12 ; 3 uses
  %i.x = icmp ne i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not = icmp ult i64 %.sroa.0.0.i, %i.z
  %or.cond = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsi17nFaBu4HY_10ech_client.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %.not.i = icmp ult i64 %i.u, %i.w
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !1107 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1108
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !1108
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !1108
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !noalias !1108
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !26, !alias.scope !1107, !noundef !12
  store i8 %i.af, ptr %i.ad, align 8, !noalias !1108
  %i.ag = call noundef ptr @_RNvXsa_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1109 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !1107
  %i.ah = load i64, ptr %i.ac, align 8, !noalias !1108, !noundef !12 ; 2 uses
  store i64 %i.ah, ptr %i.v, align 8, !alias.scope !1107
  %i.ai = load i8, ptr %i.ad, align 8, !range !26, !noalias !1108, !noundef !12
  store i8 %i.ai, ptr %i.ae, align 8, !alias.scope !1107
  %.not3.i = icmp eq ptr %i.ag, null
  br i1 %.not3.i, label %bb.d, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit.thread

_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit.thread: ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ag to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1108
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1108
  br label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit

_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.b, %bb.d
  %i.ak = phi i64 [ %i.w, %bb.b ], [ %i.ah, %bb.d ]
  %i.al = phi i64 [ %i.u, %bb.b ], [ 0, %bb.d ]   ; 2 uses
  %i.am = sub nuw i64 %i.ak, %i.al                ; 2 uses
  %i.an = icmp eq ptr %.pre.i, null
  br i1 %i.an, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsi17nFaBu4HY_10ech_client.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.ap = tail call { i64, ptr } @_RNvXsa_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.j

bb.f:                                             ; preds = %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit.thread, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit
  %.sroa.610.013 = phi i64 [ %i.aj, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit.thread ], [ %i.am, %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit ]
  %i.aq = inttoptr i64 %.sroa.610.013 to ptr
  %i.ar = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aq, 1
  br label %bb.j

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsaKJjC64KgbL_3std2fs4FileECsi17nFaBu4HY_10ech_client.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  %i.as = icmp eq i64 %2, 0
  br i1 %i.as, label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %.lr.ph
  %.sroa.01.0.i18 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ]
  %.sroa.03.0.i17 = phi ptr [ %1, %.lr.ph ], [ %i.aw, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.au = phi ptr [ %i.at, %.lr.ph ], [ %i.bd, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.av = phi i64 [ %i.am, %.lr.ph ], [ %i.be, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.03.0.i17, align 8, !alias.scope !1110, !noundef !12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !1110, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.av, i64 range(i64 0, -9223372036854775808) %i.az) ; 5 uses
  %i.ba = icmp eq i64 %..i.i.i, 1
  br i1 %i.ba, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsi17nFaBu4HY_10ech_client.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.au, align 1, !noalias !1112, !noundef !12
  store i8 %i.bb, ptr %i.ax, align 1, !alias.scope !1111, !noalias !1113
  br label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.au, i64 range(i64 0, -9223372036854775808) %..i.i.i, i1 false), !alias.scope !1114, !noalias !1115
  br label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsi17nFaBu4HY_10ech_client.exit.i.i, %bb.i
  %i.bc = add i64 %..i.i.i, %.sroa.01.0.i18       ; 2 uses
  %.not.i8 = icmp ule i64 %i.av, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i.i.i
  %i.be = sub nuw nsw i64 %i.av, %..i.i.i
  %i.bf = icmp eq ptr %i.aw, %i.b
  %or.cond25 = select i1 %.not.i8, i1 true, i1 %i.bf
  br i1 %or.cond25, label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %bb.h

_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit: ; preds = %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %bb.g
  %.sroa.01.1.i = phi i64 [ 0, %bb.g ], [ %i.bc, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 2 uses
  %i.bg = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bh = load i64, ptr %i.t, align 8, !noundef !12
  %i.bi = add i64 %i.bh, %.sroa.01.1.i
  %i.bj = load i64, ptr %i.v, align 8, !noundef !12
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bi)
  store i64 %..i, ptr %i.t, align 8
  %i.bk = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bg, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit
  %.merged = phi { i64, ptr } [ %i.ap, %bb.e ], [ %i.ar, %bb.f ], [ %i.bk, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs4_NtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read14read_buf_exactCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 3 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1131, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1131, !noundef !12
  %i.k = sub nuw i64 %i.j, %i.h
  %.not.i.not = icmp ugt i64 %i.f, %i.k
  br i1 %.not.i.not, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsi17nFaBu4HY_10ech_client.exit.thread

_RINvMNtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsi17nFaBu4HY_10ech_client.exit.thread: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !alias.scope !1131, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load ptr, ptr %1, align 8, !noalias !1132, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.m, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !alias.scope !1133, !noalias !1134
  store i64 %i.c, ptr %i.d, align 8, !noalias !1132
  %i.p = add i64 %i.h, %i.f
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1131
  br label %_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEECsi17nFaBu4HY_10ech_client.exit

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

end_hunk_3
