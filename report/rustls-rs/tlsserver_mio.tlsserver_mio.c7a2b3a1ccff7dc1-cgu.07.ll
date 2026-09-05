Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/tlsserver_mio.tlsserver_mio.c7a2b3a1ccff7dc1-cgu.07?download=true
inline.NumInlined: 178
inline.NumDeleted: 55
begin_hunk_0_@_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read18default_read_exactNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamECsh8EDedVkTYb_13tlsserver_mio:bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.120, %bb.k ] ; 3 uses
  %.sroa.7.040 = phi i64 [ %2, %.lr.ph ], [ %.sroa.7.118, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs_NtNtNtCsUoH6ltOcnV_3mio3net3tcp6streamNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %.sroa.0.041, i64 noundef %.sroa.7.040) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split27
    i64 0, label %.split28
    i64 1, label %.split
  ], !prof !11

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !0

.split27:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %._crit_edge

.split28:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !16, !noundef !7
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !16, !noundef !7
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.7.040, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.7.040, i64 noundef %.sroa.7.040, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.7.040, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %.split28, %.split27, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.e, %bb.k, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ @11, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ], [ %i.f, %.split28 ]
  ret ptr %.sroa.09.0

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio.exit

bb.i:                                             ; preds = %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !83
  store i8 3, ptr %i.a, align 8, !alias.scope !83
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio.exit
  %.sroa.0.120 = phi ptr [ %.sroa.0.041, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio.exit ], [ %i.ac, %bb.h ]
  %.sroa.7.118 = phi i64 [ %.sroa.7.040, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.7.118, 0
  br i1 %i.ah, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr nonnull %i.f) #19
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !12, !noundef !7 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit, !prof !8

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.m
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.v to i64
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq ptr %i.v, null
  br i1 %i.y, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread

._crit_edge:                                      ; preds = %bb.ah, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.eb, %bb.ah ]
  %.lcssa102 = phi i64 [ %i.dp, %.outer ], [ %i.eb, %bb.ah ] ; 3 uses
  %.lcssa99 = phi i64 [ %i.dq, %.outer ], [ %i.ee, %bb.ah ] ; 3 uses
  %.lcssa = phi i1 [ %i.ds, %.outer ], [ %i.eg, %bb.ah ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ah
  %i.z = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.ae, label %bb.af

bb.g:                                             ; preds = %bb.k, %._crit_edge
  %i.ad = phi i64 [ %..i.i.i, %bb.k ], [ %.lcssa99, %._crit_edge ] ; 2 uses
  %i.ae = phi i64 [ %i.ar, %bb.k ], [ %.lcssa102, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.ar, %bb.k ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw i64 %i.ae, 32
  %i.ah = icmp ugt i64 %.sroa.027.3, %i.ag
  %i.ai = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae ; 4 uses
  br i1 %i.ah, label %bb.l, label %.thread

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.ak = icmp ugt i64 %.lcssa102, -33
  br i1 %i.ak, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = add nuw i64 %.lcssa102, 32
  %i.am = shl nuw i64 %.lcssa99, 1
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.al, i64 range(i64 0, -1) %i.am) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99
  %.val13.i.i = load ptr, ptr %i.q, align 8, !alias.scope !99
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %.lcssa99, ptr %.val13.i.i, i64 noundef %..i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef 1), !noalias !99
  %i.an = load i64, ptr %i.b, align 8, !range !6, !noalias !99, !noundef !7
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.r, align 8, !noalias !99, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99
  store ptr %i.ap, ptr %i.q, align 8, !alias.scope !99
  %i.aq = icmp sgt i64 %..i.i.i, -1
  call void @llvm.assume(i1 %i.aq)
  store i64 %..i.i.i, ptr %1, align 8, !alias.scope !99
  %i.ar = load i64, ptr %i.c, align 8, !noundef !7 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  call void @llvm.assume(i1 %i.as)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.at = sub nsw i64 %i.ad, %i.ae
  %..i = call noundef i64 @llvm.umin.i64(i64 range(i64 -9223372036854775807, -9223372036854775808) %i.at, i64 %.sroa.053.3.ph.ph)
  br label %.peel.begin

bb.l:                                             ; preds = %bb.g
  %i.au = sub nuw i64 %.sroa.027.3, %i.ae         ; 3 uses
  %.pre169 = sub nsw i64 %i.ad, %i.ae             ; 2 uses
  %.not60 = icmp ugt i64 %i.au, %.pre169
  br i1 %.not60, label %bb.r, label %.peel.begin, !prof !17

.peel.begin:                                      ; preds = %.thread, %bb.l
  %.sroa.034.0177 = phi i64 [ %..i, %.thread ], [ %i.au, %bb.l ] ; 7 uses
  %i.av = add i64 %.sroa.034.0177, %i.ae
  %.not59.not = icmp ult i64 %.sroa.027.3, %i.av
  br i1 %.not59.not, label %bb.m, label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i.peel

bb.m:                                             ; preds = %.peel.begin
  %i.aw = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsj6eKBz9Db1c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.aj, i64 noundef %.sroa.034.0177), !noalias !100 ; 0 uses
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i.peel

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i.peel: ; preds = %bb.m, %.peel.begin
  %i.ax = call { i64, ptr } @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB4_13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull %i.aj, i64 noundef range(i64 0, -9223372036854775808) %.sroa.034.0177), !noalias !101 ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = extractvalue { i64, ptr } %i.ax, 1      ; 12 uses
  %i.ba = trunc nuw i64 %i.ay to i1
  br i1 %i.ba, label %_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit.peel, label %.loopexit

_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit.peel: ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i.peel
  %.not61.peel = icmp eq ptr %i.az, null
  br i1 %.not61.peel, label %.thread189, label %bb.n

bb.n:                                             ; preds = %_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit.peel
  %i.bb = ptrtoint ptr %i.az to i64               ; 4 uses
  %i.bc = and i64 %i.bb, 3
  switch i64 %i.bc, label %.unreachabledefault [
    i64 2, label %bb.q
    i64 3, label %.split92.peel
    i64 0, label %.split93.peel
    i64 1, label %.split.peel
  ], !prof !11

.split.peel:                                      ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %i.az, i64 31
  %i.be = load i8, ptr %i.bd, align 8, !range !16, !noundef !7
  %i.bf = icmp eq i8 %i.be, 35
  br i1 %i.bf, label %bb.o, label %.loopexit191

bb.o:                                             ; preds = %.split.peel
  %i.bg = getelementptr i8, ptr %i.az, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  store ptr %i.bg, ptr %i.s, align 8, !alias.scope !102
  store i8 3, ptr %i.a, align 8, !alias.scope !102
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %.peel.next

.split93.peel:                                    ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !16, !noundef !7
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread95.peel, label %.loopexit191

.split92.peel:                                    ; preds = %bb.n
  %i.bk = lshr i64 %i.bb, 32
  %i.bl = icmp ult ptr %i.az, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.bk to i8
  %spec.select.i.i.i.peel = select i1 %i.bl, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.bm = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.bn, label %bb.p, label %.loopexit191

bb.p:                                             ; preds = %.split92.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bo = and i64 %i.bb, 1095216660480
  %i.bp = icmp ne i64 %i.bo, 1095216660480
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 %i.bp)
  br label %.peel.next

bb.q:                                             ; preds = %bb.n
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.peel unwind label %.loopexit.split-lp

.noexc.peel:                                      ; preds = %bb.q
  %i.br = lshr i64 %i.bb, 32
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !7, !noundef !7
  %i.bv = invoke noundef zeroext i1 %i.bu(i32 noundef %i.bs)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel unwind label %.loopexit.split-lp, !inline_history !0

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel: ; preds = %.noexc.peel
  br i1 %i.bv, label %.thread95.peel, label %.loopexit191

.thread95.peel:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split93.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.peel.next

.peel.next:                                       ; preds = %.thread95.peel, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = call { i64, ptr } @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB4_13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull %i.aj, i64 noundef range(i64 0, -9223372036854775808) %.sroa.034.0177), !noalias !101 ; 2 uses
  %i.bx = extractvalue { i64, ptr } %i.bw, 0
  %i.by = extractvalue { i64, ptr } %i.bw, 1      ; 2 uses
  %i.bz = trunc nuw i64 %i.bx to i1
  br i1 %i.bz, label %_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit, label %.loopexit

bb.r:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.au, i64 noundef %.pre169, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
  unreachable

.loopexit:                                        ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i, %.peel.next, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i.peel
  %.lcssa145 = phi ptr [ %i.az, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i.peel ], [ %i.by, %.peel.next ], [ %i.cz, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i ] ; 2 uses
  %i.ca = ptrtoint ptr %.lcssa145 to i64          ; 3 uses
  %.not.i.i = icmp ult i64 %.sroa.034.0177, %i.ca
  br i1 %.not.i.i, label %bb.s, label %bb.aa, !prof !8

bb.s:                                             ; preds = %.loopexit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !101
  unreachable

_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %.peel.next, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i
  %i.cb = phi ptr [ %i.cz, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i ], [ %i.by, %.peel.next ] ; 11 uses
  %.not61 = icmp eq ptr %i.cb, null
  br i1 %.not61, label %.thread189, label %bb.t

bb.t:                                             ; preds = %_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit
  %i.cc = ptrtoint ptr %i.cb to i64               ; 4 uses
  %i.cd = and i64 %i.cc, 3
  switch i64 %i.cd, label %.unreachabledefault219 [
    i64 2, label %bb.u
    i64 3, label %.split92
    i64 0, label %.split93
    i64 1, label %.split
  ], !prof !11

.unreachabledefault219:                           ; preds = %bb.t
  unreachable

.unreachabledefault:                              ; preds = %bb.n
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %.loopexit165

.noexc:                                           ; preds = %bb.u
  %i.cf = lshr i64 %i.cc, 32
  %i.cg = trunc nuw i64 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !7, !noundef !7
  %i.cj = invoke noundef zeroext i1 %i.ci(i32 noundef %i.cg)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %.loopexit165, !inline_history !0

.split92:                                         ; preds = %bb.t
  %i.ck = lshr i64 %i.cc, 32
  %i.cl = icmp ult ptr %i.cb, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.ck to i8
  %spec.select.i.i.i = select i1 %i.cl, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.cm = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.cn, label %bb.v, label %.loopexit191

.split93:                                         ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cp = load i8, ptr %i.co, align 8, !range !16, !noundef !7
  %i.cq = icmp eq i8 %i.cp, 35
  br i1 %i.cq, label %.thread95, label %.loopexit191

.split:                                           ; preds = %bb.t
  %i.cr = getelementptr i8, ptr %i.cb, i64 31
  %i.cs = load i8, ptr %i.cr, align 8, !range !16, !noundef !7
  %i.ct = icmp eq i8 %i.cs, 35
  br i1 %i.ct, label %bb.w, label %.loopexit191

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.cj, label %.thread95, label %.loopexit191

.thread95:                                        ; preds = %.split93, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i

bb.v:                                             ; preds = %.split92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cu = and i64 %i.cc, 1095216660480
  %i.cv = icmp ne i64 %i.cu, 1095216660480
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.cv)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i

bb.w:                                             ; preds = %.split
  %i.cw = getelementptr i8, ptr %i.cb, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataECsh8EDedVkTYb_13tlsserver_mio:bb.a
  store i8 3, ptr %i.a, align 8, !alias.scope !102
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsh8EDedVkTYb_13tlsserver_mio.exit.i.i: ; preds = %bb.w, %bb.v, %.thread95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cx = call { i64, ptr } @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB4_13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull %i.aj, i64 noundef range(i64 0, -9223372036854775808) %.sroa.034.0177), !noalias !101 ; 2 uses
  %i.cy = extractvalue { i64, ptr } %i.cx, 0
  %i.cz = extractvalue { i64, ptr } %i.cx, 1      ; 2 uses
  %i.da = trunc nuw i64 %i.cy to i1
  br i1 %i.da, label %_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit, label %.loopexit, !llvm.loop !96

bb.x:                                             ; preds = %bb.y
  resume { ptr, i32 } %lpad.phi

.loopexit165:                                     ; preds = %bb.u, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.q, %.noexc.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit165
  %.lcssa148 = phi ptr [ %i.cb, %.loopexit165 ], [ %i.az, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit165 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr nonnull %.lcssa148) #19
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

.thread189:                                       ; preds = %_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit.peel, %_RNvYNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio.exit
  %i.dc = load i64, ptr %i.c, align 8, !noundef !7 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  store i64 %i.dc, ptr %i.c, align 8
  br label %.loopexit195

.loopexit191:                                     ; preds = %.split.peel, %.split93.peel, %.split92.peel, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split92, %.split93
  %.sroa.0.0.i.i86.ph.ph = phi ptr [ %i.cb, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.cb, %.split93 ], [ %i.cb, %.split92 ], [ %i.cb, %.split ], [ %i.az, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ], [ %i.az, %.split92.peel ], [ %i.az, %.split93.peel ], [ %i.az, %.split.peel ]
  %i.de = ptrtoint ptr %.sroa.0.0.i.i86.ph.ph to i64
  %i.df = load i64, ptr %i.c, align 8, !noundef !7
  %i.dg = icmp sgt i64 %i.df, -1
  call void @llvm.assume(i1 %i.dg)
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.aa:                                            ; preds = %.loopexit
  %i.dh = load i64, ptr %i.c, align 8, !noundef !7 ; 3 uses
  %i.di = icmp sgt i64 %i.dh, -1
  call void @llvm.assume(i1 %i.di)
  %i.dj = add i64 %i.dh, %i.ca                    ; 4 uses
  store i64 %i.dj, ptr %i.c, align 8
  %i.dk = icmp eq ptr %.lcssa145, null
  br i1 %i.dk, label %.loopexit195, label %bb.ab

.loopexit195:                                     ; preds = %bb.aa, %.thread189
  %i.dl = phi i64 [ %i.dc, %.thread189 ], [ %i.dj, %bb.aa ]
  %i.dm = sub nsw i64 %i.dl, %i.d
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dn = add i64 %i.dh, %.sroa.034.0177          ; 2 uses
  %i.do = icmp ne i64 %.sroa.053.3.ph.ph, %i.ca
  %or.cond.not = select i1 %i.g, i1 true, i1 %i.do
  br i1 %or.cond.not, label %.outer, label %bb.ac

.outer:                                           ; preds = %.outer.outer, %bb.ab
  %i.dp = phi i64 [ %i.dj, %bb.ab ], [ %.ph, %.outer.outer ] ; 2 uses
  %.sroa.027.2.ph = phi i64 [ %i.dn, %bb.ab ], [ %.sroa.027.2.ph.ph, %.outer.outer ]
  %i.dq = load i64, ptr %1, align 8, !range !12, !noundef !7 ; 3 uses
  %i.dr = sub i64 %i.dq, %i.dp
  %i.ds = icmp ult i64 %i.dr, 32                  ; 2 uses
  %i.dt = icmp eq i64 %i.dq, %i.f
  %or.cond63134 = and i1 %i.dt, %i.ds
  br i1 %or.cond63134, label %.lr.ph, label %._crit_edge

bb.ac:                                            ; preds = %bb.ab
  %i.du = shl nuw i64 %.sroa.053.3.ph.ph, 1
  %i.dv = icmp slt i64 %.sroa.053.3.ph.ph, 0
  br i1 %i.dv, label %bb.ad, label %.outer.outer.backedge, !prof !8

.outer.outer:                                     ; preds = %.outer.outer.backedge, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread
  %.ph = phi i64 [ %.pre, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread ], [ %i.dj, %.outer.outer.backedge ]
  %.sroa.053.3.ph.ph = phi i64 [ %.sroa.053.2, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread ], [ %.sroa.053.3.ph.ph.be, %.outer.outer.backedge ] ; 4 uses
  %.sroa.027.2.ph.ph = phi i64 [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13ReadEarlyDataE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread ], [ %i.dn, %.outer.outer.backedge ]
  br label %.outer

bb.ad:                                            ; preds = %bb.ac
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.ad, %bb.ac
  %.sroa.053.3.ph.ph.be = phi i64 [ %i.du, %bb.ac ], [ -1, %bb.ad ]
  br label %.outer.outer

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread: ; preds = %bb.h, %bb.j, %.loopexit191, %.loopexit195, %bb.f, %bb.ae, %bb.ag, %bb.e
  %.sroa.8.1 = phi i64 [ %i.x, %bb.e ], [ %i.dm, %.loopexit195 ], [ %i.dz, %bb.ae ], [ %i.ed, %bb.ag ], [ 0, %bb.f ], [ %i.de, %.loopexit191 ], [ 163208757251, %bb.j ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ 0, %.loopexit195 ], [ 1, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.f ], [ 1, %.loopexit191 ], [ 1, %bb.j ], [ 1, %bb.h ]
  %i.dw = inttoptr i64 %.sroa.8.1 to ptr
  %i.dx = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.dy = insertvalue { i64, ptr } %i.dx, ptr %i.dw, 1
  ret { i64, ptr } %i.dy

bb.ae:                                            ; preds = %.lr.ph
  %i.dz = ptrtoint ptr %i.ab to i64
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.af:                                            ; preds = %.lr.ph
  %i.ea = icmp eq ptr %i.ab, null
  %i.eb = load i64, ptr %i.c, align 8, !noundef !7 ; 5 uses
  %i.ec = icmp sgt i64 %i.eb, -1
  call void @llvm.assume(i1 %i.ec)
  br i1 %i.ea, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = sub nsw i64 %i.eb, %i.d
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.ee = load i64, ptr %1, align 8, !range !12, !noundef !7 ; 3 uses
  %i.ef = sub nsw i64 %i.ee, %i.eb
  %i.eg = icmp ult i64 %i.ef, 32                  ; 2 uses
  %i.eh = icmp eq i64 %i.ee, %i.f
  %or.cond63 = and i1 %i.eh, %i.eg
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %1, align 8, !range !12, !noundef !7 ; 3 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %3, -1025
  br i1 %i.i, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit, !prof !8

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %bb.b
  %i.j = add nuw i64 %3, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %3, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.053.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit ], [ %i.e, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.d, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread

._crit_edge:                                      ; preds = %bb.af, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.cv, %bb.af ]
  %.lcssa93 = phi i64 [ %i.ci, %.outer ], [ %i.cv, %bb.af ] ; 3 uses
  %.lcssa90 = phi i64 [ %i.cj, %.outer ], [ %i.cy, %bb.af ] ; 3 uses
  %.lcssa = phi i1 [ %i.cl, %.outer ], [ %i.da, %bb.af ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.af
  %i.ad = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.ac, label %bb.ad

bb.g:                                             ; preds = %bb.k, %._crit_edge
  %i.ah = phi i64 [ %..i.i.i, %bb.k ], [ %.lcssa90, %._crit_edge ] ; 2 uses
  %i.ai = phi i64 [ %i.at, %bb.k ], [ %.lcssa93, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.at, %bb.k ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw i64 %i.ai, 32
  %i.al = icmp ugt i64 %.sroa.027.3, %i.ak
  br i1 %i.al, label %bb.l, label %.thread

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.am = icmp ugt i64 %.lcssa93, -33
  br i1 %i.am, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = add nuw i64 %.lcssa93, 32
  %i.ao = shl nuw i64 %.lcssa90, 1
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.an, i64 range(i64 0, -1) %i.ao) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !112
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %.lcssa90, ptr %.val13.i.i, i64 noundef %..i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef 1), !noalias !112
  %i.ap = load i64, ptr %i.b, align 8, !range !6, !noalias !112, !noundef !7
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.s, align 8, !noalias !112, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  store ptr %i.ar, ptr %i.r, align 8, !alias.scope !112
  %i.as = icmp sgt i64 %..i.i.i, -1
  call void @llvm.assume(i1 %i.as)
  store i64 %..i.i.i, ptr %1, align 8, !alias.scope !112
  %i.at = load i64, ptr %i.d, align 8, !noundef !7 ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.av = sub nsw i64 %i.ah, %i.ai
  %..i = call noundef i64 @llvm.umin.i64(i64 range(i64 -9223372036854775807, -9223372036854775808) %i.av, i64 %.sroa.053.3.ph)
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.aw = sub nuw i64 %.sroa.027.3, %i.ai         ; 3 uses
  %.pre162 = sub nsw i64 %i.ah, %i.ai             ; 2 uses
  %.not60 = icmp ugt i64 %i.aw, %.pre162
  br i1 %.not60, label %bb.n, label %bb.m, !prof !17

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.034.0170 = phi i64 [ %..i, %.thread ], [ %i.aw, %bb.l ] ; 3 uses
  %i.ax = load ptr, ptr %i.r, align 8, !nonnull !7, !noundef !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ai
  %i.az = add i64 %.sroa.034.0170, %i.ai
  %.not59 = icmp uge i64 %.sroa.027.3, %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ay, ptr %i.c, align 8
  store i64 %.sroa.034.0170, ptr %i.t, align 8
  store i64 0, ptr %i.u, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.v, align 8
  %i.ba = call noundef ptr @_RNvYNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) ; 2 uses
  %.not61124 = icmp eq ptr %i.ba, null
  br i1 %.not61124, label %.split84._crit_edge, label %.lr.ph127

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aw, i64 noundef %.pre162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
  unreachable

.lr.ph127:                                        ; preds = %bb.m, %bb.r
  %i.bb = phi ptr [ %i.ce, %bb.r ], [ %i.ba, %bb.m ] ; 10 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 4 uses
  %i.bd = and i64 %i.bc, 3
  switch i64 %i.bd, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %.split83
    i64 0, label %.split84
    i64 1, label %.split
  ], !prof !11

default.unreachable:                              ; preds = %.lr.ph127
  unreachable

bb.o:                                             ; preds = %.lr.ph127
  %i.be = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.o
  %i.bf = lshr i64 %i.bc, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !7, !noundef !7
  %i.bj = invoke noundef zeroext i1 %i.bi(i32 noundef %i.bg)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.t, !inline_history !0

.split83:                                         ; preds = %.lr.ph127
  %i.bk = lshr i64 %i.bc, 32
  %i.bl = icmp ult ptr %i.bb, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bk to i8
  %spec.select.i.i.i = select i1 %i.bl, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bm = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bn, label %bb.p, label %.split84._crit_edge.loopexit

.split84:                                         ; preds = %.lr.ph127
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !16, !noundef !7
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %.thread86, label %.split84._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph127
  %i.br = getelementptr i8, ptr %i.bb, i64 31
  %i.bs = load i8, ptr %i.br, align 8, !range !16, !noundef !7
  %i.bt = icmp eq i8 %i.bs, 35
  br i1 %i.bt, label %bb.q, label %.split84._crit_edge.loopexit

.split84._crit_edge.loopexit:                     ; preds = %.split84, %.split83, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.r
  %.lcssa105.ph = phi ptr [ null, %bb.r ], [ %i.bb, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.bb, %.split ], [ %i.bb, %.split83 ], [ %i.bb, %.split84 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.r ], [ false, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split83 ], [ false, %.split84 ]
  %i.bu = ptrtoint ptr %.lcssa105.ph to i64
  br label %.split84._crit_edge

.split84._crit_edge:                              ; preds = %.split84._crit_edge.loopexit, %bb.m
  %.lcssa105 = phi i64 [ 0, %bb.m ], [ %i.bu, %.split84._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.m ], [ %.not61.lcssa.ph, %.split84._crit_edge.loopexit ]
  %i.bv = load i64, ptr %i.u, align 8, !noundef !7 ; 3 uses
  %i.bw = load i8, ptr %i.v, align 8, !range !15, !noundef !7
  %i.bx = trunc nuw i8 %i.bw to i1                ; 2 uses
  %.pre160 = load i64, ptr %i.d, align 8          ; 3 uses
  %i.by = add i64 %.pre160, %.sroa.034.0170
  %spec.select184 = select i1 %i.bx, i64 %i.by, i64 %.sroa.027.3
  %i.bz = icmp sgt i64 %.pre160, -1
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add i64 %.pre160, %i.bv                 ; 3 uses
  store i64 %i.ca, ptr %i.d, align 8
  br i1 %.not61.lcssa, label %bb.v, label %.loopexit

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bj, label %.thread86, label %.split84._crit_edge.loopexit

.thread86:                                        ; preds = %.split84, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.r

bb.p:                                             ; preds = %.split83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cb = and i64 %i.bc, 1095216660480
  %i.cc = icmp ne i64 %i.cb, 1095216660480
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 %i.cc)
  br label %bb.r

bb.q:                                             ; preds = %.split
  %i.cd = getelementptr i8, ptr %i.bb, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  store ptr %i.cd, ptr %i.w, align 8, !alias.scope !113
  store i8 3, ptr %i.a, align 8, !alias.scope !113
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = call noundef ptr @_RNvYNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) ; 2 uses
  %.not61 = icmp eq ptr %i.ce, null
  br i1 %.not61, label %.split84._crit_edge.loopexit, label %.lr.ph127

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm

bb.t:                                             ; preds = %.noexc, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr nonnull %i.bb) #19
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.v:                                             ; preds = %.split84._crit_edge
  %i.cg = icmp eq i64 %i.bv, 0
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ch = sub nsw i64 %i.ca, %i.e
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %.not64 = xor i1 %i.bx, true
  %brmerge = or i1 %i.h, %.not64
  %.sroa.053.3.mux = select i1 %i.h, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.y, label %bb.z

.loopexit:                                        ; preds = %.split84._crit_edge, %bb.w
  %.sroa.8.0 = phi i64 [ %i.ch, %bb.w ], [ %.lcssa105, %.split84._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.w ], [ 1, %.split84._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.ab, %bb.aa, %bb.z
  %.sroa.053.4 = phi i64 [ -1, %bb.ab ], [ %i.co, %bb.aa ], [ %.sroa.053.3.ph, %bb.z ], [ %.sroa.053.3.mux, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.outer

.outer:                                           ; preds = %bb.y, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread
  %i.ci = phi i64 [ %i.ca, %bb.y ], [ %.pre, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.y ], [ %.sroa.053.2, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select184, %bb.y ], [ %i.e, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamE0Csh8EDedVkTYb_13tlsserver_mio.exit.thread ]
  %i.cj = load i64, ptr %1, align 8, !range !12, !noundef !7 ; 3 uses
  %i.ck = sub i64 %i.cj, %i.ci
  %i.cl = icmp ult i64 %i.ck, 32                  ; 2 uses
  %i.cm = icmp eq i64 %i.cj, %i.g
  %or.cond63120 = and i1 %i.cm, %i.cl
  br i1 %or.cond63120, label %.lr.ph, label %._crit_edge

bb.z:                                             ; preds = %bb.x
  %i.cn = icmp eq i64 %i.bv, %.sroa.053.3.ph
  br i1 %i.cn, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.co = shl nuw i64 %.sroa.053.3.ph, 1
  %i.cp = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.cp, label %bb.ab, label %bb.y, !prof !8

bb.ab:                                            ; preds = %bb.aa
  br label %bb.y

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsh8EDedVkTYb_13tlsserver_mio.exit.thread: ; preds = %bb.h, %bb.j, %bb.f, %bb.ac, %bb.ae, %bb.e, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.ab, %bb.e ], [ %.sroa.8.0, %.loopexit ], [ %i.ct, %bb.ac ], [ %i.cx, %bb.ae ], [ 0, %bb.f ], [ 163208757251, %bb.j ], [ 163208757251, %bb.h ]
end_hunk_1
