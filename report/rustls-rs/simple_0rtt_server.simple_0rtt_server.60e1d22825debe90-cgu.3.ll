Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simple_0rtt_server.simple_0rtt_server.60e1d22825debe90-cgu.3?download=true
inline.NumInlined: 316
inline.NumDeleted: 140
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECs8jHtsX8J7SC_18simple_0rtt_server, [16 x i8] c"\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write, ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write14write_vectored, ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write17is_write_vectored, ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5flush, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCs8jHtsX8J7SC_18simple_0rtt_server, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write18write_all_vectoredCs8jHtsX8J7SC_18simple_0rtt_server, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_fmtCs8jHtsX8J7SC_18simple_0rtt_server }>, align 8
@1 = private unnamed_addr constant [19 x i8] c"rustls/src/conn.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECs8jHtsX8J7SC_18simple_0rtt_server, [16 x i8] c"\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read, ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectored, ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read16is_read_vectored, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCs8jHtsX8J7SC_18simple_0rtt_server, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCs8jHtsX8J7SC_18simple_0rtt_server, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCs8jHtsX8J7SC_18simple_0rtt_server, ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_buf, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCs8jHtsX8J7SC_18simple_0rtt_server }>, align 8
@3 = private unnamed_addr constant [30 x i8] c"received plaintext buffer full", align 1
@_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@4 = private unnamed_addr constant [12 x i8] c"Dropping CCS", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\12\00\00\00\00\00\00\00\8D\04\00\00\0D\00\00\00" }>, align 8
@6 = private unnamed_addr constant [12 x i8] c"rustls::conn", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\12\00\00\00\00\00\00\00\DC\03\00\009\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6server11server_conn20ServerConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(1168) %1, ptr noalias nofree noundef align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 822 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 823 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 827 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 828
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %.backedge

.thread236.loopexit:                              ; preds = %bb.v, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread, %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread236.loopexit.split-lp.loopexit:            ; preds = %.lr.ph
  %lpad.loopexit316 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread236.loopexit.split-lp.loopexit.split-lp:   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161
  %lpad.loopexit.split-lp317 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.033.0 = phi i64 [ 0, %bb.a ], [ %.sroa.033.1, %.backedge.backedge ] ; 12 uses
  %.sroa.021.0 = phi i64 [ 0, %bb.a ], [ %.sroa.021.1324, %.backedge.backedge ] ; 3 uses
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ %.sroa.0.1, %.backedge.backedge ]
  %.val86 = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  %.val87 = load i8, ptr %i.o, align 1
  %i.ad = trunc nuw i8 %.val86 to i1
  %i.ae = trunc nuw i8 %.val87 to i1
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false     ; 4 uses
  %.val91 = load i64, ptr %i.p, align 8, !noundef !6
  %.not309 = icmp eq i64 %.val91, 0
  br i1 %.not309, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %.backedge
  %i.ag = load i64, ptr %i.q, align 8, !alias.scope !53, !noundef !6
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = load i8, ptr %i.r, align 1, !range !5, !alias.scope !53
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %.thread257, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit134

.split.thread.loopexit:                           ; preds = %bb.bj
  %lpad.loopexit319 = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.split.thread.loopexit.split-lp:                  ; preds = %bb.cn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.thread257:                                       ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.0, ptr %i.al, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit125

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194: ; preds = %bb.o, %bb.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i191, %bb.ck, %bb.bd
  %i.am = icmp eq ptr %.sroa.0.5, null
  br i1 %i.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit125, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194.thread305, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.an = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.ao = and i64 %i.an, 3
  switch i64 %i.ao, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i123
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i123
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.cd, %bb.bz, %bb.bk, %bb.bh, %bb.f, %bb.am, %bb.ag, %bb.z, %bb.cl, %bb.cg, %bb.bs, %bb.aw, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp ult ptr %.sroa.0.5, inttoptr (i64 188978561024 to ptr)
  %i.aq = and i64 %i.an, 1095216660480
  %i.ar = icmp ne i64 %i.aq, 1095216660480
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.assume(i1 %i.ar)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i123

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr i8, ptr %.sroa.0.5, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !54
  store i8 3, ptr %i.j, align 8, !alias.scope !54
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i123: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit125

.lr.ph:                                           ; preds = %.backedge, %bb.l
  %.sroa.021.1501 = phi i64 [ %i.bp, %bb.l ], [ %.sroa.021.0, %.backedge ] ; 3 uses
  %i.au = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE9write_tlsCs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %.thread236.loopexit.split-lp.loopexit ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit134: ; preds = %bb.l, %bb.b, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %.sroa.021.1324 = phi i64 [ %.sroa.021.1501, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ %.sroa.021.0, %bb.b ], [ %i.bp, %bb.l ] ; 8 uses
  %.sroa.0.5 = phi ptr [ %i.ax, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.b ], [ null, %bb.l ] ; 20 uses
  %i.av = icmp ne i64 %.sroa.021.1324, 0          ; 2 uses
  %or.cond15.not.not = and i1 %i.af, %i.av
  br i1 %or.cond15.not.not, label %bb.o, label %bb.p

_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE9write_tlsCs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %.lr.ph
  %i.aw = extractvalue { i64, ptr } %i.au, 0
  %i.ax = extractvalue { i64, ptr } %i.au, 1      ; 9 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 4 uses
  %i.az = trunc nuw i64 %i.aw to i1
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE9write_tlsCs8jHtsX8J7SC_18simple_0rtt_server.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ba = and i64 %i.ay, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 0, label %bb.i
    i64 1, label %bb.j
  ], !prof !7

bb.g:                                             ; preds = %bb.f
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc129 unwind label %3

.noexc129:                                        ; preds = %bb.g
  %i.bc = lshr i64 %i.ay, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !27

bb.h:                                             ; preds = %bb.f
  %i.bh = lshr i64 %i.ay, 32
  %i.bi = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bh to i8  ; 2 uses
  %i.bj = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bj)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.i:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !55, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.ax, i64 31
  %i.bn = load i8, ptr %i.bm, align 8, !range !55, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.k:                                             ; preds = %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE9write_tlsCs8jHtsX8J7SC_18simple_0rtt_server.exit
  %i.bo = icmp eq ptr %i.ax, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = add i64 %.sroa.021.1501, %i.ay          ; 2 uses
  %.val90 = load i64, ptr %i.p, align 8, !noundef !6
  %.not310 = icmp eq i64 %.val90, 0
  br i1 %.not310, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit134, label %.lr.ph

3:                                                ; preds = %bb.g, %.noexc129
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr nonnull %i.ax) #13
          to label %.thread unwind label %bb.ap

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1501, ptr %i.br, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194.thread: ; preds = %bb.m, %bb.n
  %storemerge = phi i64 [ 0, %bb.m ], [ 1, %bb.n ]
  store i64 %storemerge, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit125

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.j, %bb.i, %bb.h, %.noexc129
  %.sroa.0.0.i127 = phi i8 [ %i.bn, %bb.j ], [ %switch.idx.cast.i.i.i, %bb.h ], [ %i.bl, %bb.i ], [ %i.bg, %.noexc129 ]
  %i.bs = icmp eq i8 %.sroa.0.0.i127, 13
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit134, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.bt, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194.thread

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit134
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.bv, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit134
  %i.bw = load i64, ptr %i.q, align 8, !alias.scope !56, !noundef !6
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = load i8, ptr %i.r, align 1, !range !5, !alias.scope !56
  %i.bz = trunc nuw i8 %i.by to i1
  %or.cond.i135 = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond.i135, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i8, ptr %i.n, align 2, !range !5, !alias.scope !56, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, label %bb.r

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread: ; preds = %bb.q
  %.not68698 = icmp eq ptr %.sroa.0.5, null
  br label %.preheader

bb.r:                                             ; preds = %bb.q
  %i.cc = load i64, ptr %i.p, align 8, !alias.scope !56, !noundef !6
  %i.cd = icmp eq i64 %i.cc, 0
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137: ; preds = %bb.r, %bb.p
  %.sroa.0.0.i136 = phi i1 [ %i.cd, %bb.r ], [ false, %bb.p ]
  %.not68 = icmp eq ptr %.sroa.0.5, null          ; 2 uses
  %brmerge = or i1 %.not68, %.sroa.0.0.i136
  br i1 %brmerge, label %.preheader, label %bb.s

.preheader:                                       ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %.not68700 = phi i1 [ %.not68698, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread ], [ %.not68, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137 ]
  %i.ce = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %i.ce, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161, label %.lr.ph502.preheader

.lr.ph502.preheader:                              ; preds = %.preheader
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !57, !noundef !6
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = load i8, ptr %i.r, align 1, !range !5, !alias.scope !57
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond.i139971 = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i139971, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161, label %.lr.ph972

bb.s:                                             ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194.thread305, label %bb.t

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194.thread305: ; preds = %bb.s
  store i64 %.sroa.033.0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.ck, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0.5, ptr %i.cj, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server(ptr null)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit125

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161: ; preds = %.lr.ph972, %bb.u, %.lr.ph502, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151, %.lr.ph502.preheader, %.preheader, %bb.ae, %bb.x
  %.sroa.0196.2 = phi ptr [ null, %bb.x ], [ null, %bb.ae ], [ null, %.preheader ], [ null, %.lr.ph502.preheader ], [ %.sroa.5.0.i276, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ null, %bb.u ], [ null, %.lr.ph972 ], [ null, %.lr.ph502 ] ; 14 uses
  %.sroa.033.1 = phi i64 [ %.sroa.033.0, %bb.x ], [ %i.ds, %bb.ae ], [ %.sroa.033.0, %.preheader ], [ %.sroa.033.0, %.lr.ph502.preheader ], [ %.sroa.033.0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ %.sroa.033.0, %.lr.ph502 ], [ %.sroa.033.0, %bb.u ], [ %.sroa.033.0, %.lr.ph972 ] ; 6 uses
  %.sroa.0.1 = phi i8 [ 1, %bb.x ], [ %spec.select, %bb.ae ], [ 1, %.preheader ], [ 0, %.lr.ph502.preheader ], [ 0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ 1, %bb.u ], [ 0, %.lr.ph972 ], [ 0, %.lr.ph502 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE19process_new_packetsCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6server11server_conn20ServerConnectionDataE19process_new_packetsCs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %.thread236.loopexit.split-lp.loopexit.split-lp

.lr.ph972:                                        ; preds = %.lr.ph502.preheader, %.lr.ph502
  %i.cl = load i8, ptr %i.n, align 2, !range !5, !alias.scope !57, !noundef !6
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load i64, ptr %i.p, align 8
  %i.co = icmp eq i64 %i.cn, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread: ; preds = %.lr.ph972
  %i.cp = invoke noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %.noexc143 unwind label %.thread236.loopexit

.noexc143:                                        ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread
  br i1 %i.cp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc143
  %i.cq = load i8, ptr %i.r, align 1, !range !5, !alias.scope !58, !noalias !59, !noundef !6
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161, label %bb.w

bb.v:                                             ; preds = %.noexc143
  %i.cs = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 30) #14
          to label %.thread273 unwind label %.thread236.loopexit ; 2 uses

.thread273:                                       ; preds = %bb.v
  %i.ct = ptrtoint ptr %i.cs to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cu = load i64, ptr %i.v, align 8, !alias.scope !58, !noalias !59, !noundef !6 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 230584300921369396
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp ne i64 %i.cu, 0
  %i.cx = invoke { i64, ptr } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) @2, i1 noundef zeroext %i.cw)
          to label %.noexc145 unwind label %.thread236.loopexit

.noexc145:                                        ; preds = %bb.w
  %.fr311 = freeze { i64, ptr } %i.cx             ; 2 uses
  %i.cy = extractvalue { i64, ptr } %.fr311, 0
  %i.cz = extractvalue { i64, ptr } %.fr311, 1    ; 3 uses
  %i.da = trunc nuw i64 %i.cy to i1               ; 2 uses
  %i.db = icmp ne ptr %i.cz, null                 ; 2 uses
  %or.cond.not.i = or i1 %i.db, %i.da
  br i1 %or.cond.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc145
  store i8 1, ptr %i.x, align 4, !alias.scope !58, !noalias !59
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161

bb.y:                                             ; preds = %.noexc145
  %i.dc = ptrtoint ptr %i.cz to i64               ; 2 uses
  br i1 %i.da, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.thread273, %bb.y
  %i.dd = phi i64 [ %i.ct, %.thread273 ], [ %i.dc, %bb.y ] ; 6 uses
  %.sroa.5.0.i276 = phi ptr [ %i.cs, %.thread273 ], [ %i.cz, %bb.y ] ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i276) ]
  %i.de = and i64 %i.dd, 3                        ; 3 uses
  switch i64 %i.de, label %default.unreachable [
    i64 2, label %bb.aa
    i64 3, label %bb.ab
    i64 0, label %bb.ac
    i64 1, label %bb.ad
  ], !prof !7

bb.aa:                                            ; preds = %bb.z
  %i.df = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc149 unwind label %bb.af

.noexc149:                                        ; preds = %bb.aa
  %i.dg = lshr i64 %i.dd, 32
  %i.dh = trunc nuw i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !6, !noundef !6
  %i.dk = invoke noundef i8 %i.dj(i32 noundef %i.dh)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 unwind label %bb.af, !inline_history !27

bb.ab:                                            ; preds = %bb.z
  %i.dl = lshr i64 %i.dd, 32
  %i.dm = icmp ult ptr %.sroa.5.0.i276, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i147 = trunc i64 %i.dl to i8 ; 2 uses
  %i.dn = icmp ne i8 %switch.idx.cast.i.i.i147, -1
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.assume(i1 %i.dn)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ac:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i276, i64 16
  %i.dp = load i8, ptr %i.do, align 8, !range !55, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ad:                                            ; preds = %bb.z
  %i.dq = getelementptr i8, ptr %.sroa.5.0.i276, i64 31
  %i.dr = load i8, ptr %i.dq, align 8, !range !55, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ae:                                            ; preds = %bb.y
  %.not695 = xor i1 %i.db, true
  %i.ds = add i64 %.sroa.033.0, %i.dc
  %spec.select = zext i1 %.not695 to i8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161

bb.af:                                            ; preds = %bb.aa, %.noexc149, %bb.ah, %.noexc155
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.sroa.5.0.i276) #13
          to label %.thread unwind label %bb.ap

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151: ; preds = %bb.ad, %bb.ac, %bb.ab, %.noexc149
  %.sroa.0.0.i146 = phi i8 [ %i.dr, %bb.ad ], [ %switch.idx.cast.i.i.i147, %bb.ab ], [ %i.dp, %bb.ac ], [ %i.dk, %.noexc149 ]
  %i.du = icmp eq i8 %.sroa.0.0.i146, 13
  br i1 %i.du, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i276) ]
  switch i64 %i.de, label %default.unreachable [
    i64 2, label %bb.ah
    i64 3, label %bb.ai
    i64 0, label %bb.aj
    i64 1, label %bb.ak
  ], !prof !7

bb.ah:                                            ; preds = %bb.ag
  %i.dv = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc155 unwind label %bb.af

.noexc155:                                        ; preds = %bb.ah
  %i.dw = lshr i64 %i.dd, 32
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !6, !noundef !6
  %i.ea = invoke noundef i8 %i.dz(i32 noundef %i.dx)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157 unwind label %bb.af, !inline_history !27

bb.ai:                                            ; preds = %bb.ag
  %i.eb = lshr i64 %i.dd, 32
  %i.ec = icmp ult ptr %.sroa.5.0.i276, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i153 = trunc i64 %i.eb to i8 ; 2 uses
  %i.ed = icmp ne i8 %switch.idx.cast.i.i.i153, -1
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.assume(i1 %i.ed)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

bb.aj:                                            ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i276, i64 16
  %i.ef = load i8, ptr %i.ee, align 8, !range !55, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

bb.ak:                                            ; preds = %bb.ag
  %i.eg = getelementptr i8, ptr %.sroa.5.0.i276, i64 31
  %i.eh = load i8, ptr %i.eg, align 8, !range !55, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157: ; preds = %bb.ak, %bb.aj, %bb.ai, %.noexc155
  %.sroa.0.0.i152 = phi i8 [ %i.eh, %bb.ak ], [ %switch.idx.cast.i.i.i153, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.ea, %.noexc155 ]
  %i.ei = icmp eq i8 %.sroa.0.0.i152, 35
  br i1 %i.ei, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i276, ptr %i.ej, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194

bb.am:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i276) ]
  switch i64 %i.de, label %default.unreachable [
    i64 2, label %.lr.ph502
    i64 3, label %bb.an
    i64 0, label %.lr.ph502
    i64 1, label %bb.ao
  ], !prof !7

bb.an:                                            ; preds = %bb.am
  %i.ek = icmp ult ptr %.sroa.5.0.i276, inttoptr (i64 188978561024 to ptr)
  %i.el = and i64 %i.dd, 1095216660480
  %i.em = icmp ne i64 %i.el, 1095216660480
  call void @llvm.assume(i1 %i.ek)
  call void @llvm.assume(i1 %i.em)
  br label %.lr.ph502

bb.ao:                                            ; preds = %bb.am
  %i.en = getelementptr i8, ptr %.sroa.5.0.i276, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  store ptr %i.en, ptr %i.w, align 8, !alias.scope !60
  store i8 3, ptr %i.i, align 8, !alias.scope !60
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.lr.ph502 unwind label %.thread286

.thread286:                                       ; preds = %bb.ao
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.lr.ph502:                                        ; preds = %bb.an, %bb.am, %bb.am, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.eo = load i64, ptr %i.q, align 8, !alias.scope !57, !noundef !6
  %i.ep = icmp ne i64 %i.eo, 0
  %i.eq = load i8, ptr %i.r, align 1, !range !5, !alias.scope !57
  %i.er = trunc nuw i8 %i.eq to i1
  %or.cond.i139 = select i1 %i.ep, i1 true, i1 %i.er
  br i1 %or.cond.i139, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161, label %.lr.ph972

bb.ap:                                            ; preds = %bb.au, %bb.as, %.thread, %.split.thread, %bb.af, %bb.cc, %bb.cj, %3, %bb.az
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6server11server_conn20ServerConnectionDataE19process_new_packetsCs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit161
  %i.et = load i8, ptr %i.m, align 8, !range !8, !noundef !6
  %.not = icmp eq i8 %i.et, -1
  br i1 %.not, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6server11server_conn20ServerConnectionDataE19process_new_packetsCs8jHtsX8J7SC_18simple_0rtt_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %i.eu = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %bb.at unwind label %bb.az     ; 2 uses

bb.ar:                                            ; preds = %bb.ay
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.as:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server(i64 %i.ew, ptr %i.ex) #13
          to label %.thread unwind label %bb.ap

bb.at:                                            ; preds = %bb.aq
  %i.ew = extractvalue { i64, ptr } %i.eu, 0      ; 2 uses
  %i.ex = extractvalue { i64, ptr } %i.eu, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %i.ey = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server(ptr null) #13
          to label %bb.as unwind label %bb.ap

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ey, ptr %i.fa, align 8
  store i64 1, ptr %0, align 8
  %i.fb = icmp eq i64 %i.ew, 0
  br i1 %i.fb, label %bb.ck, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %i.fc = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fd = and i64 %i.fc, 3
  switch i64 %i.fd, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i169
    i64 3, label %bb.ax
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i169
    i64 1, label %bb.ay
  ], !prof !7

bb.ax:                                            ; preds = %bb.aw
  %i.fe = icmp ult ptr %i.ex, inttoptr (i64 188978561024 to ptr)
  %i.ff = and i64 %i.fc, 1095216660480
  %i.fg = icmp ne i64 %i.ff, 1095216660480
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 %i.fg)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i169

bb.ay:                                            ; preds = %bb.aw
  %i.fh = getelementptr i8, ptr %i.ex, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.fh, ptr %i.fi, align 8, !alias.scope !61
  store i8 3, ptr %i.h, align 8, !alias.scope !61
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i169 unwind label %bb.ar

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i169: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ck

bb.az:                                            ; preds = %bb.aq
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(64) %i.l) #13
          to label %.thread unwind label %bb.ap

bb.ba:                                            ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6server11server_conn20ServerConnectionDataE19process_new_packetsCs8jHtsX8J7SC_18simple_0rtt_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val89 = load i64, ptr %i.p, align 8, !noundef !6
  %i.fk = icmp ne i64 %.val89, 0                  ; 2 uses
  %.not71 = icmp eq ptr %.sroa.0196.2, null       ; 2 uses
  %brmerge3 = or i1 %.not71, %i.fk
  br i1 %brmerge3, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.af, label %bb.be, label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.fl = icmp eq i64 %.sroa.033.1, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.fl, label %bb.bd, label %.thread299

.thread299:                                       ; preds = %bb.bc
  store i64 %.sroa.033.1, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.fn, align 8
  store i64 0, ptr %0, align 8
  br label %bb.cl

bb.bd:                                            ; preds = %bb.bc
  store ptr %.sroa.0196.2, ptr %i.fm, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194

bb.be:                                            ; preds = %bb.bf, %bb.bb
  %i.fo = call { ptr, ptr } @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE3zipBI_ECs8jHtsX8J7SC_18simple_0rtt_server(ptr noundef %.sroa.0.5, ptr noundef %.sroa.0196.2) ; 2 uses
  %i.fp = extractvalue { ptr, ptr } %i.fo, 0      ; 9 uses
  %i.fq = extractvalue { ptr, ptr } %i.fo, 1      ; 12 uses
  %.val = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  %.val83 = load i8, ptr %i.o, align 1
  %i.fr = trunc nuw i8 %.val to i1
  %i.fs = trunc nuw i8 %.val83 to i1
  %i.ft = select i1 %i.fr, i1 %i.fs, i1 false
  %.sroa.0.0.i180 = xor i1 %i.ft, true            ; 2 uses
  %or.cond7 = select i1 %i.af, i1 true, i1 %.sroa.0.0.i180
  br i1 %or.cond7, label %bb.bn, label %bb.bo

bb.bf:                                            ; preds = %bb.bb
  %.val84 = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  %.val85 = load i8, ptr %i.o, align 1
  %i.fu = trunc nuw i8 %.val84 to i1
  %i.fv = trunc nuw i8 %.val85 to i1
  %i.fw = select i1 %i.fu, i1 %i.fv, i1 false
  %brmerge315.demorgan = and i1 %i.fk, %i.fw
  br i1 %brmerge315.demorgan, label %bb.bg, label %bb.be

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not71, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit176, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fx = ptrtoint ptr %.sroa.0196.2 to i64       ; 2 uses
  %i.fy = and i64 %i.fx, 3
  switch i64 %i.fy, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i173
    i64 3, label %bb.bi
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i173
    i64 1, label %bb.bj
  ], !prof !7

bb.bi:                                            ; preds = %bb.bh
  %i.fz = icmp ult ptr %.sroa.0196.2, inttoptr (i64 188978561024 to ptr)
  %i.ga = and i64 %i.fx, 1095216660480
  %i.gb = icmp ne i64 %i.ga, 1095216660480
  call void @llvm.assume(i1 %i.fz)
  call void @llvm.assume(i1 %i.gb)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i173

bb.bj:                                            ; preds = %bb.bh
  %i.gc = getelementptr i8, ptr %.sroa.0196.2, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  store ptr %i.gc, ptr %i.z, align 8, !alias.scope !62
  store i8 3, ptr %i.g, align 8, !alias.scope !62
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i173 unwind label %.split.thread.loopexit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i173: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit176

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit176: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i173, %bb.bg
  br i1 %.not68700, label %.backedge.backedge, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.gd = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.ge = and i64 %i.gd, 3
  switch i64 %i.ge, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i177
    i64 3, label %bb.bl
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i177
    i64 1, label %bb.bm
  ], !prof !7

bb.bl:                                            ; preds = %bb.bk
  %i.gf = icmp ult ptr %.sroa.0.5, inttoptr (i64 188978561024 to ptr)
  %i.gg = and i64 %i.gd, 1095216660480
  %i.gh = icmp ne i64 %i.gg, 1095216660480
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.assume(i1 %i.gh)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i177

bb.bm:                                            ; preds = %bb.bk
  %i.gi = getelementptr i8, ptr %.sroa.0.5, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gi) ]
  store ptr %i.gi, ptr %i.aa, align 8, !alias.scope !63
  store i8 3, ptr %i.f, align 8, !alias.scope !63
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i177

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i177: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge.backedge

bb.bn:                                            ; preds = %bb.be
  %i.gj = icmp ne ptr %i.fp, null                 ; 2 uses
  %i.gk = or i64 %.sroa.033.1, %.sroa.021.1324
  %i.gl = icmp eq i64 %i.gk, 0
  %or.cond19 = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %or.cond19, label %bb.br, label %bb.bq

bb.bo:                                            ; preds = %bb.be
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.1, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.gn, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.by, %bb.bv, %bb.bo
  %.sink = phi i64 [ 1, %bb.by ], [ 0, %bb.bv ], [ 0, %bb.bo ]
  store i64 %.sink, ptr %0, align 8
  %.not73 = icmp eq ptr %i.fp, null
  br i1 %.not73, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit125, label %bb.cg

bb.bq:                                            ; preds = %bb.bn
  br i1 %i.af, label %bb.bv, label %bb.bw

bb.br:                                            ; preds = %bb.bn
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fp, ptr %i.go, align 8
  store i64 1, ptr %0, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %i.gp = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.gq = and i64 %i.gp, 3
  switch i64 %i.gq, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit182
    i64 3, label %bb.bt
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit182
    i64 1, label %bb.bu
  ], !prof !7

bb.bt:                                            ; preds = %bb.bs
  %i.gr = icmp ult ptr %i.fq, inttoptr (i64 188978561024 to ptr)
  %i.gs = and i64 %i.gp, 1095216660480
  %i.gt = icmp ne i64 %i.gs, 1095216660480
  call void @llvm.assume(i1 %i.gr)
  call void @llvm.assume(i1 %i.gt)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit182

bb.bu:                                            ; preds = %bb.bs
  %i.gu = getelementptr i8, ptr %i.fq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gu) ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.gu, ptr %i.gv, align 8, !alias.scope !64
  store i8 3, ptr %i.e, align 8, !alias.scope !64
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gv)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit182

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit182: ; preds = %bb.bs, %bb.bs, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit125

bb.bv:                                            ; preds = %bb.bq
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.1, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.gx, align 8
  br label %bb.bp

bb.bw:                                            ; preds = %bb.bq
  %i.gy = trunc nuw i8 %.sroa.0.1 to i1
  %or.cond10 = select i1 %i.gy, i1 %.sroa.0.0.i180, i1 false
  br i1 %or.cond10, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.gj, label %bb.bz, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit187, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i177, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit176
  br label %.backedge

bb.by:                                            ; preds = %bb.bw
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 158913789955 to ptr), ptr %i.gz, align 8
  br label %bb.bp

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ha = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.hb = and i64 %i.ha, 3
  switch i64 %i.hb, label %default.unreachable [
    i64 2, label %bb.cd
    i64 3, label %bb.ca
    i64 0, label %bb.cd
    i64 1, label %bb.cb
  ], !prof !7

bb.ca:                                            ; preds = %bb.bz
  %i.hc = icmp ult ptr %i.fp, inttoptr (i64 188978561024 to ptr)
  %i.hd = and i64 %i.ha, 1095216660480
  %i.he = icmp ne i64 %i.hd, 1095216660480
  call void @llvm.assume(i1 %i.hc)
  call void @llvm.assume(i1 %i.he)
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %i.hf = getelementptr i8, ptr %i.fp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hf) ]
  store ptr %i.hf, ptr %i.ab, align 8, !alias.scope !65
  store i8 3, ptr %i.d, align 8, !alias.scope !65
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr nonnull %i.fq) #13
          to label %.thread245 unwind label %bb.ap

bb.cd:                                            ; preds = %bb.ca, %bb.bz, %bb.bz, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %i.hh = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.hi = and i64 %i.hh, 3
  switch i64 %i.hi, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit187
    i64 3, label %bb.ce
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit187
    i64 1, label %bb.cf
  ], !prof !7

bb.ce:                                            ; preds = %bb.cd
  %i.hj = icmp ult ptr %i.fq, inttoptr (i64 188978561024 to ptr)
  %i.hk = and i64 %i.hh, 1095216660480
  %i.hl = icmp ne i64 %i.hk, 1095216660480
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.assume(i1 %i.hl)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit187

bb.cf:                                            ; preds = %bb.cd
  %i.hm = getelementptr i8, ptr %i.fq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hm) ]
  store ptr %i.hm, ptr %i.ac, align 8, !alias.scope !66
  store i8 3, ptr %i.c, align 8, !alias.scope !66
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit187

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit187: ; preds = %bb.cd, %bb.cd, %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge

.thread245:                                       ; preds = %.split.thread, %bb.cc, %bb.cj
  %.pn80.pn = phi { ptr, i32 } [ %.pn80250, %.split.thread ], [ %i.hg, %bb.cc ], [ %i.hu, %bb.cj ]
  resume { ptr, i32 } %.pn80.pn

bb.cg:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hn = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.ho = and i64 %i.hn, 3
  switch i64 %i.ho, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit190
    i64 3, label %bb.ch
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit190
    i64 1, label %bb.ci
  ], !prof !7

bb.ch:                                            ; preds = %bb.cg
  %i.hp = icmp ult ptr %i.fp, inttoptr (i64 188978561024 to ptr)
  %i.hq = and i64 %i.hn, 1095216660480
  %i.hr = icmp ne i64 %i.hq, 1095216660480
  call void @llvm.assume(i1 %i.hp)
  call void @llvm.assume(i1 %i.hr)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit190

bb.ci:                                            ; preds = %bb.cg
  %i.hs = getelementptr i8, ptr %i.fp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hs) ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.hs, ptr %i.ht, align 8, !alias.scope !67
  store i8 3, ptr %i.b, align 8, !alias.scope !67
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ht)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit190 unwind label %bb.cj

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit190: ; preds = %bb.ci, %bb.cg, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bs

bb.cj:                                            ; preds = %bb.ci
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr nonnull %i.fq) #13
          to label %.thread245 unwind label %bb.ap

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit125: ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194.thread, %bb.bp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit182, %.thread257, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i123
  ret void

bb.ck:                                            ; preds = %bb.av, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.hv = icmp eq ptr %.sroa.0196.2, null
  br i1 %i.hv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194, label %bb.cl

bb.cl:                                            ; preds = %.thread299, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.hw = ptrtoint ptr %.sroa.0196.2 to i64       ; 2 uses
  %i.hx = and i64 %i.hw, 3
  switch i64 %i.hx, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i191
    i64 3, label %bb.cm
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i191
    i64 1, label %bb.cn
  ], !prof !7

bb.cm:                                            ; preds = %bb.cl
  %i.hy = icmp ult ptr %.sroa.0196.2, inttoptr (i64 188978561024 to ptr)
  %i.hz = and i64 %i.hw, 1095216660480
  %i.ia = icmp ne i64 %i.hz, 1095216660480
  call void @llvm.assume(i1 %i.hy)
  call void @llvm.assume(i1 %i.ia)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i191

bb.cn:                                            ; preds = %bb.cl
  %i.ib = getelementptr i8, ptr %.sroa.0196.2, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !alias.scope !68
  store i8 3, ptr %i.a, align 8, !alias.scope !68
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ic)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i191 unwind label %.split.thread.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit.i191: ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit194

.thread:                                          ; preds = %.thread236.loopexit, %.thread236.loopexit.split-lp.loopexit.split-lp, %.thread236.loopexit.split-lp.loopexit, %bb.as, %bb.ar, %.thread286, %3, %bb.af, %bb.az
  %.pn77.pn226 = phi { ptr, i32 } [ %i.fj, %bb.az ], [ %5, %.thread286 ], [ %4, %3 ], [ %i.ez, %bb.as ], [ %i.dt, %bb.af ], [ %i.ev, %bb.ar ], [ %lpad.loopexit, %.thread236.loopexit ], [ %lpad.loopexit316, %.thread236.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp317, %.thread236.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0.0216225 = phi ptr [ %.sroa.0.5, %bb.az ], [ %.sroa.0.5, %.thread286 ], [ null, %3 ], [ %.sroa.0.5, %bb.as ], [ %.sroa.0.5, %bb.af ], [ %.sroa.0.5, %bb.ar ], [ %.sroa.0.5, %.thread236.loopexit ], [ null, %.thread236.loopexit.split-lp.loopexit ], [ %.sroa.0.5, %.thread236.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0196.0224 = phi ptr [ %.sroa.0196.2, %bb.az ], [ null, %.thread286 ], [ null, %3 ], [ %.sroa.0196.2, %bb.as ], [ null, %bb.af ], [ %.sroa.0196.2, %bb.ar ], [ null, %.thread236.loopexit ], [ null, %.thread236.loopexit.split-lp.loopexit ], [ %.sroa.0196.2, %.thread236.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.sroa.0196.0224) #13
          to label %.split.thread unwind label %bb.ap

.split.thread:                                    ; preds = %.split.thread.loopexit, %.split.thread.loopexit.split-lp, %.thread
  %.pn80250 = phi { ptr, i32 } [ %.pn77.pn226, %.thread ], [ %lpad.loopexit319, %.split.thread.loopexit ], [ %lpad.loopexit.split-lp, %.split.thread.loopexit.split-lp ]
  %.sroa.0.2218249 = phi ptr [ %.sroa.0.0216225, %.thread ], [ %.sroa.0.5, %.split.thread.loopexit ], [ %.sroa.0.5, %.split.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.sroa.0.2218249) #13
          to label %.thread245 unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server:bb.a
bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !71
  store i8 3, ptr %i.a, align 8, !alias.scope !71
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !6
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17PresharedKeyOfferEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17PresharedKeyOfferECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #13
          to label %common.resume.i unwind label %bb.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17PresharedKeyOfferECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume.i:                                  ; preds = %bb.h, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %.body.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17PresharedKeyOfferECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !6
  %i.b = icmp ugt i64 %i.a, -4
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketECs8jHtsX8J7SC_18simple_0rtt_server.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20EncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !6
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20EncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20EncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake25EncryptedClientHelloOuterECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #13
          to label %common.resume.i.i unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake25EncryptedClientHelloOuterECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume.i.i:                                ; preds = %bb.f, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.g, %bb.f ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %.body.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake25EncryptedClientHelloOuterECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20EncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !6
  switch i64 %i.a, label %bb.b [
    i64 -2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 -1, label %bb.j
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBG_4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i, %bb.j
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.b, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #13
          to label %common.resume.i unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBG_4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume.i:                                  ; preds = %bb.l, %bb.g, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.g, %bb.g ], [ %i.m, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %.body.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !range !9, !alias.scope !78, !noundef !6
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBG_4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBG_4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i: ; preds = %bb.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %.sink.i = phi ptr [ %i.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i ], [ %i.j, %bb.k ]
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestECs8jHtsX8J7SC_18simple_0rtt_server.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !81
  store i8 3, ptr %i.a, align 8, !alias.scope !81
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !84
  store i8 3, ptr %i.a, align 8, !alias.scope !84
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

end_hunk_1
begin_hunk_2_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryEECs8jHtsX8J7SC_18simple_0rtt_server:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecRShEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecRShEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !12, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtBN_6server11server_conn20ServerConnectionDataEEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !13, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #16
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtBN_6server11server_conn20ServerConnectionDataEEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server.exit

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtBN_6server11server_conn20ServerConnectionDataEEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !12, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtBN_6server11server_conn20ServerConnectionDataEEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !13, !invariant.load !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #16
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtBN_6server11server_conn20ServerConnectionDataEEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server.exit4

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtBN_6server11server_conn20ServerConnectionDataEEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsEECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 520 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !117, !alias.scope !118, !noundef !6
  switch i64 %i.b, label %bb.b [
    i64 -2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
    i64 -1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
    i64 -9223372036854775807, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
    i64 -9223372036854775808, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 336
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #13
          to label %bb.f unwind label %bb.bu

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i, %bb.a, %bb.a, %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 336
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #13
          to label %.body34.i unwind label %bb.bu

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !range !9, !alias.scope !119, !noundef !6
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body34.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.l

.body34.i:                                        ; preds = %bb.l, %bb.j, %bb.f
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %i.p, %bb.l ], [ %i.m, %bb.j ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #13
          to label %.body37.i unwind label %bb.bu

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !range !9, !alias.scope !120, !noundef !6
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body37.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.p

.body37.i:                                        ; preds = %bb.p, %bb.n, %.body34.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %.body34.i ], [ %i.w, %bb.p ], [ %i.t, %bb.n ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #13
          to label %.body40.i unwind label %bb.bu

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body37.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !range !9, !alias.scope !121, !noundef !6
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body40.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.t

.body40.i:                                        ; preds = %bb.t, %bb.r, %.body37.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body37.i ], [ %i.ad, %bb.t ], [ %i.aa, %bb.r ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #13
          to label %.body43.i unwind label %bb.bu

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !9, !alias.scope !122, !noundef !6
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body43.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.x

.body43.i:                                        ; preds = %bb.x, %bb.v, %.body40.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body40.i ], [ %i.ak, %bb.x ], [ %i.ah, %bb.v ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #13
          to label %.body48.i unwind label %bb.bu

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 120 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !range !9, !alias.scope !123, !noundef !6
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit51.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i47.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body48.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i47.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit51.i unwind label %bb.ab

.body48.i:                                        ; preds = %bb.ab, %bb.z, %.body43.i
  %.pn10.i = phi { ptr, i32 } [ %.pn8.i, %.body43.i ], [ %i.ar, %bb.ab ], [ %i.ao, %bb.z ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq) #13
          to label %.body52.i unwind label %bb.bu

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i47.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit51.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i47.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.val, i64 144 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !range !9, !alias.scope !124, !noundef !6
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit51.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body52.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.af

.body52.i:                                        ; preds = %bb.af, %bb.ad, %.body48.i
  %.pn12.i = phi { ptr, i32 } [ %.pn10.i, %.body48.i ], [ %i.ay, %bb.af ], [ %i.av, %bb.ad ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 496
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #13
          to label %.body55.i unwind label %bb.bu

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit51.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 496 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !11, !alias.scope !125, !noundef !6
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body55.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.aj

.body55.i:                                        ; preds = %bb.aj, %bb.ah, %.body52.i
  %.pn14.i = phi { ptr, i32 } [ %.pn12.i, %.body52.i ], [ %i.bf, %bb.aj ], [ %i.bc, %bb.ah ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.val, i64 168
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17PresharedKeyOfferEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be) #13
          to label %bb.ak unwind label %bb.bu

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 168
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17PresharedKeyOfferEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bg)
          to label %bb.am unwind label %bb.al

bb.ak:                                            ; preds = %bb.al, %.body55.i
  %.pn16.i = phi { ptr, i32 } [ %i.bi, %bb.al ], [ %.pn14.i, %.body55.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.val, i64 216
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #13
          to label %.body58.i unwind label %bb.bu

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 216 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !range !9, !alias.scope !126, !noundef !6
  %i.bl = icmp eq i64 %i.bk, -1
  br i1 %i.bl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body58.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.an
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.aq

.body58.i:                                        ; preds = %bb.aq, %bb.ao, %bb.ak
  %.pn18.i = phi { ptr, i32 } [ %.pn16.i, %bb.ak ], [ %i.bp, %bb.aq ], [ %i.bm, %bb.ao ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val, i64 240
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo) #13
          to label %.body61.i unwind label %bb.bu

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body58.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %bb.am
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.val, i64 240 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !9, !alias.scope !127, !noundef !6
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.body61.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.au

.body61.i:                                        ; preds = %bb.au, %bb.as, %.body58.i
  %.pn20.i = phi { ptr, i32 } [ %.pn18.i, %.body58.i ], [ %i.bw, %bb.au ], [ %i.bt, %bb.as ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.val, i64 264
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bv) #13
          to label %.body64.i unwind label %bb.bu

bb.au:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.val, i64 264 ; 4 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !9, !alias.scope !128, !noundef !6
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body64.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.ay

.body64.i:                                        ; preds = %bb.ay, %bb.aw, %.body61.i
  %.pn22.i = phi { ptr, i32 } [ %.pn20.i, %.body61.i ], [ %i.cd, %bb.ay ], [ %i.ca, %bb.aw ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.val, i64 384
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc) #13
          to label %.body68.i unwind label %bb.bu

bb.ay:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 384 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !10, !alias.scope !129, !noundef !6
  %switch.i.i = icmp ugt i64 %i.cf, -3
  br i1 %switch.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.az

bb.az:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.body68.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %bb.az
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.bc

.body68.i:                                        ; preds = %bb.bc, %bb.ba, %.body64.i
  %.pn24.i = phi { ptr, i32 } [ %.pn22.i, %.body64.i ], [ %i.cj, %bb.bc ], [ %i.cg, %bb.ba ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.val, i64 288
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ci) #13
          to label %.body72.i unwind label %bb.bu

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body68.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.val, i64 288 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !9, !alias.scope !130, !noundef !6
  %i.cm = icmp eq i64 %i.cl, -1
  br i1 %i.cm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %.body72.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.bg

.body72.i:                                        ; preds = %bb.bg, %bb.be, %.body68.i
  %.pn26.i = phi { ptr, i32 } [ %.pn24.i, %.body68.i ], [ %i.cq, %bb.bg ], [ %i.cn, %bb.be ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.val, i64 408
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp) #13
          to label %.body78.i unwind label %bb.bu

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.val, i64 408 ; 4 uses
  %i.cs = load i64, ptr %i.cr, align 8, !range !10, !alias.scope !131, !noundef !6
  %switch.i75.i = icmp ugt i64 %i.cs, -3
  br i1 %switch.i75.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit81.i, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i77.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.body78.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i77.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit81.i unwind label %bb.bk

.body78.i:                                        ; preds = %bb.bk, %bb.bi, %.body72.i
  %.pn28.i = phi { ptr, i32 } [ %.pn26.i, %.body72.i ], [ %i.cw, %bb.bk ], [ %i.ct, %bb.bi ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.val, i64 432
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20EncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cv) #13
          to label %bb.bl unwind label %bb.bu

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i77.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit81.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i77.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.val, i64 432
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20EncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cx)
          to label %bb.bn unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bm, %.body78.i
  %.pn30.i = phi { ptr, i32 } [ %i.cz, %bb.bm ], [ %.pn28.i, %.body78.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.val, i64 312
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cy) #13
          to label %.body82.i unwind label %bb.bu

bb.bm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit81.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit81.i
  %i.da = getelementptr inbounds nuw i8, ptr %.0.val, i64 312 ; 4 uses
  %i.db = load i64, ptr %i.da, align 8, !range !9, !alias.scope !132, !noundef !6
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %.body82.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.br

.body82.i:                                        ; preds = %bb.br, %bb.bp, %bb.bl
  %.pn32.i = phi { ptr, i32 } [ %.pn30.i, %bb.bl ], [ %i.df, %bb.br ], [ %i.dd, %bb.bp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %.0.val) #13
          to label %bb.bw unwind label %bb.bu

bb.br:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %bb.bn
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %.0.val)
          to label %bb.bw unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.bv

bb.bu:                                            ; preds = %.body82.i, %bb.bl, %.body78.i, %.body72.i, %.body68.i, %.body64.i, %.body61.i, %.body58.i, %bb.ak, %.body55.i, %.body52.i, %.body48.i, %.body43.i, %.body40.i, %.body37.i, %.body34.i, %bb.f, %.body.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 560, i64 noundef 8) #16
  ret void

bb.bw:                                            ; preds = %bb.bv, %bb.bs, %.body82.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.dj, %bb.bv ], [ %i.dg, %bb.bs ], [ %.pn32.i, %.body82.i ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 560, i64 noundef 8) #16
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsEECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !9, !alias.scope !147, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %.0.val)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #13
          to label %.body10.i unwind label %bb.z

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !9, !alias.scope !148, !noundef !6
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body10.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.i

.body10.i:                                        ; preds = %bb.i, %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.i ], [ %i.j, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #13
          to label %.body13.i unwind label %bb.z

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !9, !alias.scope !149, !noundef !6
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.body13.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.m

.body13.i:                                        ; preds = %bb.m, %bb.k, %.body10.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body10.i ], [ %i.t, %bb.m ], [ %i.q, %bb.k ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #13
          to label %.body17.i unwind label %bb.z

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body13.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 104 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !range !10, !alias.scope !150, !noundef !6
  %switch.i.i = icmp ugt i64 %i.v, -3
  br i1 %switch.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body17.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.q

.body17.i:                                        ; preds = %bb.q, %bb.o, %.body13.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %.body13.i ], [ %i.z, %bb.q ], [ %i.w, %bb.o ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #13
          to label %.body23.i unwind label %bb.z

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 128 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !10, !alias.scope !151, !noundef !6
  %switch.i20.i = icmp ugt i64 %i.ab, -3
  br i1 %switch.i20.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit26.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i22.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body23.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i22.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit26.i unwind label %bb.u

.body23.i:                                        ; preds = %bb.u, %bb.s, %.body17.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body17.i ], [ %i.af, %bb.u ], [ %i.ac, %bb.s ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #13
          to label %.body27.i unwind label %bb.z

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i22.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit26.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i22.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 80 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !9, !alias.scope !152, !noundef !6
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit26.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body27.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.y

.body27.i:                                        ; preds = %bb.y, %bb.w, %.body23.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body23.i ], [ %i.am, %bb.y ], [ %i.aj, %bb.w ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  invoke void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtB4_7set_val9SetValZSTENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.ab unwind label %bb.z

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit26.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  invoke void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtB4_7set_val9SetValZSTENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.aa

bb.z:                                             ; preds = %.body27.i, %.body23.i, %.body17.i, %.body13.i, %.body10.i, %.body.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 200, i64 noundef 8) #16
  ret void

bb.ab:                                            ; preds = %bb.aa, %.body27.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.aa ], [ %.pn8.i, %.body27.i ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 200, i64 noundef 8) #16
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6
  %switch1 = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch1, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !15, !noundef !6
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 4, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 5, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 6, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 7, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 8, label %bb.j
    i8 9, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 10, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 11, label %bb.n
    i8 12, label %bb.au
    i8 13, label %bb.bm
    i8 14, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 15, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 16, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 17, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 18, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 19, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i8 20, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !188, !nonnull !6, !noundef !6
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !188
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #14
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.bn, %.body.i6, %bb.bg, %.body3.i1, %bb.bk, %.body.i, %bb.ai, %.body3.i, %bb.am, %.body6.i, %bb.ap, %.body8.i, %bb.as, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.bk ], [ %i.g, %bb.e ], [ %i.j, %bb.h ], [ %i.o, %bb.l ], [ %i.bj, %bb.as ], [ %i.be, %bb.ap ], [ %i.av, %bb.ai ], [ %eh.lpad-body9.i, %.body8.i ], [ %i.bb, %bb.am ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body4.i, %.body3.i ], [ %eh.lpad-body7.i, %.body6.i ], [ %eh.lpad-body4.i2, %.body3.i1 ], [ %i.ca, %bb.bg ], [ %eh.lpad-body.i7, %.body.i6 ], [ %i.cj, %bb.bn ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit7.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i9, %bb.be, %bb.bd, %bb.au, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit12.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, %bb.p, %bb.o, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %bb.j, %bb.c, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !16, !alias.scope !189, !noundef !6 ; 2 uses
  %switch.i = icmp slt i64 %i.m, -9223372036854775787
  %i.n = icmp eq i64 %i.m, -1
  %or.cond.i = or i1 %switch.i, %i.n
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.n:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.r = load i64, ptr %i.q, align 8, !range !17, !alias.scope !190, !noundef !6 ; 3 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775792
  tail call void @llvm.assume(i1 %i.s)
  %i.t = xor i64 %i.r, -9223372036854775808
  %i.u = icmp slt i64 %i.r, 0
  %i.v = select i1 %i.u, i64 %i.t, i64 16
  switch i64 %i.v, label %bb.o [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 4, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 5, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 6, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 7, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 8, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 9, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 10, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 11, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 12, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 13, label %bb.q
    i64 14, label %bb.u
    i64 15, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 16, label %bb.y
    i64 17, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 18, label %bb.ad
    i64 19, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 20, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
  ]

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !194, !nonnull !6, !noundef !6
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !194
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #14
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.q:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body.i unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.ah

bb.t:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.u:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body3.i unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit5.i unwind label %bb.al

bb.x:                                             ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.y:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !range !5, !alias.scope !195, !noundef !6
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i

bb.z:                                             ; preds = %bb.y
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !9, !alias.scope !196, !noundef !6
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body6.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.ao

bb.ad:                                            ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !14, !alias.scope !197, !noundef !6
  %switch1.i.i = icmp slt i64 %i.ap, -9223372036854775806
  br i1 %switch1.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body8.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.ar

bb.ah:                                            ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ah, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.ah ], [ %i.ab, %bb.r ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #13
          to label %common.resume unwind label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.ak:                                            ; preds = %.body8.i, %.body6.i, %.body3.i, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.al:                                            ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i

.body3.i:                                         ; preds = %bb.al, %bb.v
  %eh.lpad-body4.i = phi { ptr, i32 } [ %i.ay, %bb.al ], [ %i.ae, %bb.v ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #13
          to label %common.resume unwind label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit5.i: ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit12.i unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit5.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit12.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit5.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i

.body6.i:                                         ; preds = %bb.ao, %bb.ab
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.bd, %bb.ao ], [ %i.am, %bb.ab ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q) #13
          to label %common.resume unwind label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i, %bb.z, %bb.y
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

.body8.i:                                         ; preds = %bb.ar, %bb.af
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.bg, %bb.ar ], [ %i.aq, %bb.af ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #13
          to label %common.resume unwind label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %bb.ad
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.as

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.au:                                            ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.bm = load i64, ptr %i.bl, align 8, !range !18, !alias.scope !198, !noundef !6
  switch i64 %i.bm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit [
    i64 2, label %bb.av
    i64 3, label %bb.az
    i64 7, label %bb.bd
  ]

bb.av:                                            ; preds = %bb.au
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body.i6 unwind label %bb.ay

bb.ax:                                            ; preds = %bb.av
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i8 unwind label %bb.bf

bb.ay:                                            ; preds = %bb.aw
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.az:                                            ; preds = %bb.au
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %.body3.i1 unwind label %bb.bc

bb.bb:                                            ; preds = %bb.az
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit5.i5 unwind label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bd:                                            ; preds = %bb.au
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !202, !nonnull !6, !noundef !6
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !202
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.be:                                            ; preds = %bb.bd
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bt) #14
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.bf:                                            ; preds = %bb.ax
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6

.body.i6:                                         ; preds = %bb.bf, %bb.aw
  %eh.lpad-body.i7 = phi { ptr, i32 } [ %i.bx, %bb.bf ], [ %i.bo, %bb.aw ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #13
          to label %common.resume unwind label %bb.bi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i8: ; preds = %bb.ax
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i9 unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i8
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %common.resume unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i9: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i8
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.bi:                                            ; preds = %.body3.i1, %.body.i6
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bj:                                            ; preds = %bb.bb
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i1

.body3.i1:                                        ; preds = %bb.bj, %bb.ba
  %eh.lpad-body4.i2 = phi { ptr, i32 } [ %i.cd, %bb.bj ], [ %i.br, %bb.ba ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce) #13
          to label %common.resume unwind label %bb.bi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit5.i5: ; preds = %bb.bb
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit7.i unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit5.i5
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %common.resume unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit7.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit5.i5
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.bm:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %common.resume unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.bm
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6verify21DigitallySignedStructECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !5, !noundef !6
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !9, !alias.scope !207, !noundef !6
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs8jHtsX8J7SC_18simple_0rtt_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 1, label %bb.c
  ], !prof !7

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !210
  store i8 3, ptr %i.a, align 8, !alias.scope !210
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8jHtsX8J7SC_18simple_0rtt_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !alias.scope !281, !noundef !6 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808       ; 2 uses
  %i.d = icmp ult i64 %i.c, 5
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit
    i64 1, label %bb.f
    i64 2, label %bb.dk
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !9, !alias.scope !282, !noundef !6
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume.i:                                  ; preds = %bb.dq, %.body.i, %bb.dm, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.fo, %bb.dq ], [ %i.i, %bb.d ], [ %i.fj, %bb.dm ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i: ; preds = %bb.dp, %bb.dl, %bb.c
  %.sink.i = phi ptr [ %i.fg, %bb.dl ], [ %0, %bb.dp ], [ %i.f, %bb.c ]
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !17, !alias.scope !283, !noundef !6 ; 3 uses
  %i.m = icmp ne i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.l, -9223372036854775808
  %i.o = icmp slt i64 %i.l, 0
  %i.p = select i1 %i.o, i64 %i.n, i64 1
  switch i64 %i.p, label %bb.g [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
    i64 1, label %bb.k
    i64 2, label %.invoke.i
    i64 3, label %bb.u
    i64 4, label %bb.ah
    i64 5, label %bb.ak
    i64 6, label %bb.ar
    i64 7, label %bb.av
    i64 8, label %bb.bs
    i64 9, label %bb.ce
    i64 10, label %bb.cj
    i64 11, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
    i64 12, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
    i64 13, label %bb.cm
    i64 14, label %bb.cq
    i64 15, label %bb.cr
    i64 16, label %bb.cx
    i64 17, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
    i64 18, label %bb.cy
    i64 19, label %bb.dc
    i64 20, label %bb.dg
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !range !9, !alias.scope !284, !noundef !6
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.k:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.k)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.k)
          to label %.body.i.i.i.i unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.o, %bb.l
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.v, %bb.l ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #13
          to label %.body3.i.i.i.i unwind label %bb.t

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i: ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body3.i.i.i.i unwind label %bb.r

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18ClientHelloPayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body3.i.i.i.i:                                   ; preds = %bb.s, %bb.p, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.ad, %bb.s ], [ %i.aa, %bb.p ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val2.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !285, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsEECs8jHtsX8J7SC_18simple_0rtt_server(ptr nonnull %.val2.i.i.i.i) #13
          to label %.body.i unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i.i.i

bb.t:                                             ; preds = %.body3.i.i.i.i, %.body.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18ClientHelloPayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !285, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsEECs8jHtsX8J7SC_18simple_0rtt_server(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.u:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !9, !alias.scope !286, !noundef !6
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.ag)
          to label %.body.i.i.i.i.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.y, %bb.w
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.al, %bb.y ], [ %i.aj, %bb.w ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #13
          to label %.body3.i.i.i.i.i unwind label %bb.ag

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i, %bb.u
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !10, !alias.scope !287, !noundef !6
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.ao, -3
  br i1 %switch.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body3.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i unwind label %bb.ac

.body3.i.i.i.i.i:                                 ; preds = %bb.ac, %bb.aa, %.body.i.i.i.i.i
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.as, %bb.ac ], [ %i.ap, %bb.aa ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #13
          to label %.body.i unwind label %bb.ag

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !range !9, !alias.scope !288, !noundef !6
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.ag:                                            ; preds = %.body3.i.i.i.i.i, %.body.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ah:                                            ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.ak:                                            ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i4.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %.body.i2.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i4.i.i.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i unwind label %bb.an

bb.an:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i4.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2.i.i.i

.body.i2.i.i.i:                                   ; preds = %bb.an, %bb.al
  %eh.lpad-body.i3.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.an ], [ %i.bd, %bb.al ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #13
          to label %.body.i unwind label %bb.aq

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i4.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23CertificatePayloadTls13ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.aq:                                            ; preds = %.body.i2.i.i.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23CertificatePayloadTls13ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.ar:                                            ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bm = load i64, ptr %i.bl, align 8, !range !9, !alias.scope !289, !noundef !6
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %.body.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.av:                                            ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !9, !alias.scope !290, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.br, -1
  br i1 %.not.i.i.i.i, label %bb.bo, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !9, !alias.scope !291, !noundef !6
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerEcdhParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %.body.i.i5.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ba:                                            ; preds = %bb.aw
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bs)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.bd, %bb.bb
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.bd ], [ %i.by, %bb.bb ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb) #13
          to label %.body4.i.i.i.i.i.i.i unwind label %bb.bj

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i3.i.i.i.i.i.i.i unwind label %bb.be

bb.be:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %.body4.i.i.i.i.i.i.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i3.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit6.i.i.i.i.i.i.i unwind label %bb.bg

.body4.i.i.i.i.i.i.i:                             ; preds = %bb.bg, %bb.be, %.body.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.cg, %bb.bg ], [ %i.cd, %bb.be ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cf) #13
          to label %.body.i.i5.i.i.i unwind label %bb.bj

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i3.i.i.i.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit6.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i3.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerEcdhParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit6.i.i.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body.i.i5.i.i.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bj:                                            ; preds = %.body4.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerEcdhParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit6.i.i.i.i.i.i.i, %bb.ax
  %.sink.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.ax ], [ %i.ch, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs8jHtsX8J7SC_18simple_0rtt_server.exit6.i.i.i.i.i.i.i ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i.i.i.i.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23ServerKeyExchangeParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerEcdhParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i5.i.i.i

.body.i.i5.i.i.i:                                 ; preds = %bb.bk, %bb.bh, %.body4.i.i.i.i.i.i.i, %bb.ay
  %eh.lpad-body.i.i6.i.i.i = phi { ptr, i32 } [ %i.cl, %bb.bk ], [ %i.bw, %bb.ay ], [ %i.ci, %bb.bh ], [ %.pn.i.i.i.i.i.i.i, %.body4.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6verify21DigitallySignedStructECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bq) #13
          to label %.body.i unwind label %bb.bn

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23ServerKeyExchangeParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerEcdhParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23ServerKeyExchangeParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bq)
          to label %.body.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bn:                                            ; preds = %.body.i.i5.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bo:                                            ; preds = %bb.av
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !range !9, !alias.scope !292, !noundef !6
  %i.cr = icmp eq i64 %i.cq, -1
  br i1 %i.cr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %.body.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bs:                                            ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cu)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cu)
          to label %.body.i9.i.i.i unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i9.i.i.i

.body.i9.i.i.i:                                   ; preds = %bb.bw, %bb.bt
  %eh.lpad-body.i10.i.i.i = phi { ptr, i32 } [ %i.cx, %bb.bw ], [ %i.cv, %bb.bt ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cy) #13
          to label %.body2.i.i.i.i unwind label %bb.cd

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i: ; preds = %bb.bu
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %.body2.i.i.i.i unwind label %bb.bz

bb.by:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i unwind label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.body2.i.i.i.i:                                   ; preds = %bb.ca, %bb.bx, %.body.i9.i.i.i
  %.pn.i11.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i10.i.i.i, %.body.i9.i.i.i ], [ %i.dd, %bb.ca ], [ %i.da, %bb.bx ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dc) #13
          to label %.body.i unwind label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i: ; preds = %bb.by
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake25CertificateRequestPayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.cd:                                            ; preds = %.body2.i.i.i.i, %.body.i9.i.i.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake25CertificateRequestPayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.ce:                                            ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.di)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i16.i.i.i unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.di)
          to label %.body.i14.i.i.i unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i16.i.i.i: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.di)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake30CertificateRequestPayloadTls13ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i unwind label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i16.i.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i14.i.i.i

.body.i14.i.i.i:                                  ; preds = %bb.ch, %bb.cf
  %eh.lpad-body.i15.i.i.i = phi { ptr, i32 } [ %i.dl, %bb.ch ], [ %i.dj, %bb.cf ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CertificateRequestExtensionsECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(72) %i.dm) #13
          to label %.body.i unwind label %bb.ci

bb.ci:                                            ; preds = %.body.i14.i.i.i
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake30CertificateRequestPayloadTls13ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i16.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CertificateRequestExtensionsECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(72) %i.do)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.cj:                                            ; preds = %bb.f
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %.body.i unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.cm:                                            ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.dt = load i64, ptr %i.ds, align 8, !range !9, !alias.scope !293, !noundef !6
  %i.du = icmp eq i64 %i.dt, -1
  br i1 %i.du, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %.body.i unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.cq:                                            ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !297, !nonnull !6, !noundef !6
  %i.dz = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !298
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %.invoke24.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i

bb.cr:                                            ; preds = %bb.f
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eb)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i21.i.i.i unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eb)
          to label %.body.i19.i.i.i unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i21.i.i.i: ; preds = %bb.cr
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eb)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i22.i.i.i unwind label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i21.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body.i19.i.i.i

.body.i19.i.i.i:                                  ; preds = %bb.cu, %bb.cs
  %eh.lpad-body.i20.i.i.i = phi { ptr, i32 } [ %i.ee, %bb.cu ], [ %i.ec, %bb.cs ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !301, !nonnull !6, !noundef !6
  %i.eh = atomicrmw sub ptr %i.eg, i64 1 release, align 8, !noalias !302
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.cv, label %.body.i

bb.cv:                                            ; preds = %.body.i19.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ef) #14
          to label %.body.i unwind label %bb.cw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i22.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i21.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !305, !nonnull !6, !noundef !6
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !306
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %.invoke24.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i

.invoke24.i:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i22.i.i.i, %bb.cq
  %i.en = phi ptr [ %i.dx, %bb.cq ], [ %i.ej, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i22.i.i.i ]
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.en) #14
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.cw:                                            ; preds = %bb.cv
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.cx:                                            ; preds = %bb.f
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.cx, %bb.f
  %.sink26.i = phi i64 [ 32, %bb.cx ], [ 104, %bb.f ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.sink26.i
  %.val1.i.i.i = load ptr, ptr %i.ep, align 8, !alias.scope !283, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsEECs8jHtsX8J7SC_18simple_0rtt_server(ptr nonnull %.val1.i.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.cy:                                            ; preds = %bb.f
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.er = load i64, ptr %i.eq, align 8, !range !9, !alias.scope !307, !noundef !6
  %i.es = icmp eq i64 %i.er, -1
  br i1 %i.es, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %.body.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.dc:                                            ; preds = %bb.f
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ew = load i64, ptr %i.ev, align 8, !range !9, !alias.scope !308, !noundef !6
  %i.ex = icmp eq i64 %i.ew, -1
  br i1 %i.ex, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %.body.i unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.dg:                                            ; preds = %bb.f
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.fb = load i64, ptr %i.fa, align 8, !range !9, !alias.scope !309, !noundef !6
  %i.fc = icmp eq i64 %i.fb, -1
  br i1 %i.fc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %.body.i unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i: ; preds = %bb.dh, %bb.dd, %bb.cz, %bb.cn, %bb.cj, %bb.bp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23ServerKeyExchangeParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i, %bb.as, %bb.h
  %i.ff = phi ptr [ %i.ev, %bb.dd ], [ %i.eq, %bb.cz ], [ %i.ds, %bb.cn ], [ %i.dp, %bb.cj ], [ %i.cp, %bb.bp ], [ %i.bl, %bb.as ], [ %i.q, %bb.h ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23ServerKeyExchangeParamsECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i ], [ %i.fa, %bb.dh ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.do

bb.dk:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.fh = load i64, ptr %i.fg, align 8, !range !9, !alias.scope !310, !noundef !6
  %i.fi = icmp eq i64 %i.fh, -1
  br i1 %i.fi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %common.resume.i unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.do:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i, %.invoke.i, %.invoke24.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake30CertificateRequestPayloadTls13ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake25CertificateRequestPayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23CertificatePayloadTls13ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18ClientHelloPayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.do, %bb.di, %bb.de, %bb.da, %bb.cv, %.body.i19.i.i.i, %bb.co, %bb.ck, %.body.i14.i.i.i, %bb.cb, %.body2.i.i.i.i, %bb.bq, %bb.bl, %.body.i.i5.i.i.i, %bb.at, %bb.ao, %.body.i2.i.i.i, %bb.ai, %bb.ae, %.body3.i.i.i.i.i, %.body3.i.i.i.i, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fl, %bb.do ], [ %i.ey, %bb.de ], [ %i.t, %bb.i ], [ %.pn.i.i.i.i, %.body3.i.i.i.i ], [ %.pn.i.i.i.i.i, %.body3.i.i.i.i.i ], [ %i.ba, %bb.ai ], [ %eh.lpad-body.i3.i.i.i, %.body.i2.i.i.i ], [ %i.bo, %bb.at ], [ %i.cs, %bb.bq ], [ %.pn.i11.i.i.i, %.body2.i.i.i.i ], [ %eh.lpad-body.i15.i.i.i, %.body.i14.i.i.i ], [ %i.dq, %bb.ck ], [ %i.dv, %bb.co ], [ %eh.lpad-body.i20.i.i.i, %.body.i19.i.i.i ], [ %i.et, %bb.da ], [ %i.aw, %bb.ae ], [ %i.bi, %bb.ao ], [ %eh.lpad-body.i.i6.i.i.i, %.body.i.i5.i.i.i ], [ %i.cm, %bb.bl ], [ %i.df, %bb.cb ], [ %eh.lpad-body.i20.i.i.i, %bb.cv ], [ %i.fd, %bb.di ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) #13
          to label %common.resume.i unwind label %bb.ds

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i29.i.i.invoke.i, %bb.dg, %bb.dc, %bb.cy, %.invoke.i, %.invoke24.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i22.i.i.i, %bb.cq, %bb.cm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake30CertificateRequestPayloadTls13ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake25CertificateRequestPayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %bb.bo, %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23CertificatePayloadTls13ECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18ClientHelloPayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i.i.i, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f
  %i.fm = load i64, ptr %0, align 8, !range !9, !alias.scope !311, !noundef !6
  %i.fn = icmp eq i64 %i.fm, -1
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.dp

bb.dp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0)
          to label %common.resume.i unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ds:                                            ; preds = %.body.i
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.sink.split.i, %bb.dk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake28CertificateRequestExtensionsECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !318, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #13
          to label %.body2 unwind label %bb.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !9, !alias.scope !319, !noundef !6
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body2 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.i

.body2:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.i ], [ %i.j, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #13
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !9, !alias.scope !320, !noundef !6
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %.body2, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.k ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  ret void

bb.m:                                             ; preds = %.body2, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #1 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !321, !noundef !6
  %i.a = tail call noundef i32 @close(i32 noundef %.val) #16 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(1168) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 827
  %i.d = load i8, ptr %i.c, align 1, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 30) #14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = icmp ult i64 %i.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ne i64 %i.i, 0
  %i.l = tail call { i64, ptr } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, i1 noundef zeroext %i.k) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = trunc nuw i64 %i.m to i1
  %i.p = icmp ne ptr %i.n, null
  %or.cond.not = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 828
  store i8 1, ptr %i.q, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.c
  %.sroa.5.0 = phi ptr [ %i.f, %bb.c ], [ %i.n, %bb.d ], [ null, %bb.e ], [ null, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ %i.m, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  %i.r = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, ptr } %i.r, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE19process_new_packetsCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1080) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 7 uses
  %i.e = alloca [168 x i8], align 8               ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.424.i.i = alloca [31 x i8], align 1      ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 18 uses
  %i.r = alloca [64 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 13 uses
  %i.t = alloca [64 x i8], align 8                ; 13 uses
  %.sroa.6.i.i = alloca [31 x i8], align 1        ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.0.i = alloca [18 x i8], align 8          ; 4 uses
  %i.w = alloca [64 x i8], align 8                ; 4 uses
  %i.x = alloca [64 x i8], align 8                ; 5 uses
  %i.y = alloca [64 x i8], align 8                ; 6 uses
  %i.z = alloca [64 x i8], align 8                ; 13 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [64 x i8], align 8               ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 5 uses
  %i.ad = alloca [64 x i8], align 8               ; 6 uses
  %i.ae = alloca [64 x i8], align 8               ; 15 uses
  %i.af = alloca [16 x i8], align 8               ; 25 uses
  %i.ag = alloca [64 x i8], align 8               ; 4 uses
  %i.ah = alloca [64 x i8], align 8               ; 5 uses
  %i.ai = alloca [64 x i8], align 8               ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 18 uses
  %.sroa.0.0.copyload = load i8, ptr %i.aj, align 8 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 7 uses
  %.sroa.63.0.copyload = load ptr, ptr %.sroa.63.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 7 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  store i8 16, ptr %i.aj, align 8
  %.not = icmp eq i8 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i8 %.sroa.0.0.copyload, ptr %i.ai, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, i64 7, i1 false)
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.63.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke fastcc void @_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ai)
          to label %bb.dj unwind label %bb.di

.thread129.loopexit:                              ; preds = %bb.t, %bb.r, %.split.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %i.cs, ptr %i.af, align 8
  br label %.thread116

.thread129.loopexit.split-lp.loopexit:            ; preds = %.split.us.i.i, %bb.j, %bb.l
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  store i64 %i.cs, ptr %i.af, align 8
  br label %.thread116

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ae, %.noexc57, %.noexc56, %bb.ab, %bb.w, %.noexc55, %.noexc60
  %i.ak = phi i64 [ %i.eg, %bb.ae ], [ %i.eg, %.noexc57 ], [ %i.eg, %.noexc56 ], [ %i.eg, %bb.ab ], [ %i.cs, %bb.w ], [ %i.cs, %.noexc55 ], [ %i.eg, %.noexc60 ]
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ak, ptr %i.af, align 8
  br label %.thread116

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bp, %bb.ag, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE22take_handshake_messageCs8jHtsX8J7SC_18simple_0rtt_server.exit.i, %bb.d, %bb.e, %.split82.us.i.i, %.split89.us.i.i, %bb.ac
  %.sroa.10.1.ph.ph.ph.ph.ph = phi ptr [ %.sroa.10.2, %bb.e ], [ %.sroa.10.2, %bb.d ], [ %i.gd, %bb.bp ], [ %.sroa.10.2, %.split89.us.i.i ], [ %.sroa.10.2, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE22take_handshake_messageCs8jHtsX8J7SC_18simple_0rtt_server.exit.i ], [ %.sroa.10.2, %bb.ac ], [ %.sroa.10.2, %bb.ag ], [ %.sroa.10.2, %.split82.us.i.i ]
  %.sroa.0.1.ph.ph.ph.ph.ph = phi ptr [ %.sroa.0.2, %bb.e ], [ %.sroa.0.2, %bb.d ], [ %i.ge, %bb.bp ], [ %.sroa.0.2, %.split89.us.i.i ], [ %.sroa.0.2, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE22take_handshake_messageCs8jHtsX8J7SC_18simple_0rtt_server.exit.i ], [ %.sroa.0.2, %bb.ac ], [ %.sroa.0.2, %bb.ag ], [ %.sroa.0.2, %.split82.us.i.i ]
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %.thread116

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit156, %bb.bo, %._crit_edge.i.i
  %.sroa.10.1.ph.ph.ph.ph.ph150 = phi ptr [ %i.gd, %bb.bo ], [ %.sroa.10.3, %.loopexit156 ], [ %.sroa.10.2, %._crit_edge.i.i ]
  %.sroa.0.1.ph.ph.ph.ph.ph151 = phi ptr [ %i.ge, %bb.bo ], [ %.sroa.0.3, %.loopexit156 ], [ %.sroa.0.2, %._crit_edge.i.i ]
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.thread116

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %.val = load i64, ptr %i.am, align 8, !noundef !6 ; 2 uses
  store i64 %.val, ptr %i.af, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 11 uses
  store i64 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i, i64 7 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 26 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 821
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %.sroa.424.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.424.i.i, i64 7
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 26 ; 3 uses
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.8.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 28 ; 2 uses
  %.sroa.2.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  %.sroa.3.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 823
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 815 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 840
end_hunk_2
begin_hunk_3_@_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE19process_new_packetsCs8jHtsX8J7SC_18simple_0rtt_server:bb.a

.loopexit:                                        ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE7deframeCs8jHtsX8J7SC_18simple_0rtt_server.exit, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE7deframeCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke fastcc void @_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ad)
          to label %bb.cr unwind label %bb.cq

bb.ao:                                            ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE7deframeCs8jHtsX8J7SC_18simple_0rtt_server.exit._crit_edge, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE7deframeCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread
  %.sroa.2.0.copyload = phi i16 [ %.sroa.2.0.copyload.pre, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE7deframeCs8jHtsX8J7SC_18simple_0rtt_server.exit._crit_edge ], [ %i.eq, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE7deframeCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread ] ; 2 uses
  %.not32 = icmp eq i16 %.sroa.2.0.copyload, -1
  br i1 %.not32, label %.loopexit156.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.3.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.aa, ptr noundef nonnull align 8 dereferenceable(18) %i.bq, i64 18, i1 false)
  store i16 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx13, align 2
  store i32 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx15, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %.val.i = load i8, ptr %i.bw, align 8, !range !21, !alias.scope !389, !noalias !391, !noundef !6
  %i.et = icmp ne i8 %.val.i, 0
  %i.eu = load i8, ptr %i.bx, align 1, !range !5, !alias.scope !388, !noalias !392
  %i.ev = trunc nuw i8 %i.eu to i1
  %or.cond.i = select i1 %i.et, i1 true, i1 %i.ev
  %.val8.i = load i16, ptr %i.ao, align 8, !range !20, !alias.scope !388, !noalias !392
  %i.ew = icmp ne i16 %.val8.i, 5
  %or.cond52.not.i = select i1 %or.cond.i, i1 true, i1 %i.ew
  br i1 %or.cond52.not.i, label %bb.aq, label %bb.ar

.thread43.i:                                      ; preds = %bb.be, %bb.bi, %bb.av, %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.thread.i, %bb.aq
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !393
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7MessageINtNtCsj6eKBz9Db1c_4core7convert7TryFromNtNtB5_7inbound19InboundPlainMessageE8try_from(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
          to label %bb.bd unwind label %.thread43.i, !noalias !391

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.ex = load i64, ptr %i.by, align 8, !alias.scope !395, !noalias !391
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.i, label %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.thread.i

_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.i: ; preds = %bb.ar
  %i.ez = load ptr, ptr %i.aa, align 8, !alias.scope !395, !noalias !391, !nonnull !6, !noundef !6
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !396, !noundef !6
  %i.fb = icmp eq i8 %i.fa, 1
  br i1 %i.fb, label %bb.as, label %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.thread.i

_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.thread.i: ; preds = %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !393
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %1, i8 noundef 1, i8 undef, i8 noundef 21)
          to label %bb.at unwind label %.thread43.i, !noalias !392

bb.as:                                            ; preds = %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.i
  %i.fc = load i8, ptr %i.bz, align 1, !alias.scope !397, !noalias !398, !noundef !6 ; 2 uses
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState33received_tls13_change_cipher_spec.exit.i, label %bb.au

bb.at:                                            ; preds = %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7inboundNtB5_19InboundPlainMessage12is_valid_ccs.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !393
  br label %bb.ax

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState33received_tls13_change_cipher_spec.exit.i: ; preds = %bb.as
  store i8 9, ptr %i.z, align 8, !alias.scope !387, !noalias !399
  store i8 21, ptr %.sroa.432.0..sroa_idx.i, align 1, !alias.scope !387, !noalias !399
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.fe = add i8 %i.fc, -1
  store i8 %i.fe, ptr %i.bz, align 1, !alias.scope !397, !noalias !398
  %i.ff = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !393 ; 2 uses
  %i.fg = icmp ult i64 %i.ff, 6
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp samesign ugt i64 %i.ff, 4
  br i1 %i.fh, label %bb.av, label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !393
  store ptr @6, ptr %i.f, align 8, !noalias !393
  store i64 12, ptr %i.ca, align 8, !noalias !393
  store ptr @6, ptr %i.cb, align 8, !noalias !393
  store i64 12, ptr %i.cc, align 8, !noalias !393
  store ptr @5, ptr %i.cd, align 8, !noalias !393
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs8jHtsX8J7SC_18simple_0rtt_server(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 25 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.aw unwind label %.thread43.i, !noalias !393

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !393
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread

bb.ax:                                            ; preds = %bb.bj, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState33received_tls13_change_cipher_spec.exit.i, %bb.at
  %i.fi = load ptr, ptr %.sroa.10.2, align 8, !invariant.load !6, !alias.scope !390, !noalias !400 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i64, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void %i.fi(ptr noundef nonnull %.sroa.0.2)
          to label %bb.az unwind label %bb.bb, !noalias !392

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !range !12, !invariant.load !6, !alias.scope !390, !noalias !400 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !range !13, !invariant.load !6, !alias.scope !390, !noalias !400
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2, i64 noundef range(i64 1, -9223372036854775808) %i.fk, i64 noundef range(i64 1, 536870913) %i.fn) #16, !noalias !392
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.bb:                                            ; preds = %bb.ay
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !12, !invariant.load !6, !alias.scope !390, !noalias !400 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !range !13, !invariant.load !6, !alias.scope !390, !noalias !400
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2, i64 noundef range(i64 1, -9223372036854775808) %i.fq, i64 noundef range(i64 1, 536870913) %i.ft) #16, !noalias !392
  br label %common.resume

bb.bd:                                            ; preds = %bb.aq
  %i.fu = load i64, ptr %i.d, align 8, !range !401, !noalias !393, !noundef !6
  %i.fv = icmp eq i64 %i.fu, -2
  br i1 %i.fv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.sroa.0103.0.copyload = load i8, ptr %i.ci, align 8, !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !393
  %switch.tableidx = add i8 %.sroa.0103.0.copyload, -24 ; 2 uses
  %i.fw = icmp ult i8 %switch.tableidx, 3
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 1707277, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sroa.0.0.i14.i = select i1 %i.fw, i8 %switch.masked, i8 16
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14InvalidMessageECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %1, i8 noundef %.sroa.0.0.i14.i, i8 undef, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ci)
          to label %bb.bm unwind label %.thread43.i, !noalias !392

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr noundef nonnull align 8 dereferenceable(168) %i.d, i64 168, i1 false), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !393
  %i.fx = load i64, ptr %i.e, align 8, !range !19, !noalias !393, !noundef !6 ; 2 uses
  %i.fy = icmp ne i64 %i.fx, -9223372036854775807
  call void @llvm.assume(i1 %i.fy)
  %i.fz = icmp eq i64 %i.fx, -9223372036854775808
  br i1 %i.fz, label %bb.bg, label %.noexc68

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !393
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState13process_alert(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.ch)
          to label %bb.bh unwind label %bb.bk, !noalias !392

.noexc68:                                         ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %i.e, i64 168, i1 false), !noalias !393
  call void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState21process_main_protocolNtNtNtB5_6server11server_conn20ServerConnectionDataECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull %.sroa.0.2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.10.2, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !393
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ga = load i8, ptr %i.b, align 8, !range !8, !noalias !393, !noundef !6
  %.not6.i = icmp eq i8 %i.ga, -1
  br i1 %.not6.i, label %.noexc69, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !393
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e)
          to label %bb.bj unwind label %.thread43.i, !noalias !392

.noexc69:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !393
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !393
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread

bb.bj:                                            ; preds = %bb.bm, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !393
  br label %bb.ax

bb.bk:                                            ; preds = %bb.bg
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e) #13
          to label %.thread.i unwind label %bb.bl, !noalias !392

bb.bl:                                            ; preds = %.thread.i, %bb.bk
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !392
  unreachable

bb.bm:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !393
  br label %bb.bj

.thread.i:                                        ; preds = %bb.bk, %.thread43.i
  %.pn39.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread43.i ], [ %i.gb, %bb.bk ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server(ptr nonnull %.sroa.0.2, ptr nonnull readonly align 8 dereferenceable(80) %.sroa.10.2) #13
          to label %common.resume unwind label %bb.bl, !noalias !402

_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %.noexc68, %bb.ba, %bb.az
  %.pr = load i8, ptr %i.z, align 8
  %.not33 = icmp eq i8 %.pr, -1
  br i1 %.not33, label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit._RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread_crit_edge, label %bb.bn

_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit._RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread_crit_edge: ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit
  %.pre = load ptr, ptr %i.ce, align 8
  %.pre379 = load ptr, ptr %i.cf, align 8
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread

bb.bn:                                            ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke fastcc void @_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y)
          to label %bb.bu unwind label %bb.bt

_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread: ; preds = %bb.au, %bb.aw, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit._RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread_crit_edge, %.noexc69
  %i.gd = phi ptr [ %.pre379, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit._RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread_crit_edge ], [ %.sroa.10.2, %.noexc69 ], [ %.sroa.10.2, %bb.aw ], [ %.sroa.10.2, %bb.au ] ; 4 uses
  %i.ge = phi ptr [ %.pre, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit._RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread_crit_edge ], [ %.sroa.0.2, %.noexc69 ], [ %.sroa.0.2, %bb.aw ], [ %.sroa.0.2, %bb.au ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.gf = load i8, ptr %i.cj, align 1, !range !5, !noundef !6
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread
  %i.gh = invoke { ptr, i64 } @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer6filled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.br unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCs8jHtsX8J7SC_18simple_0rtt_server.exit.thread
  %i.gi = load i64, ptr %i.af, align 8, !alias.scope !403, !noundef !6
  %i.gj = load i64, ptr %i.an, align 8, !alias.scope !403, !noundef !6 ; 2 uses
  %i.gk = call i64 @llvm.usub.sat.i64(i64 %i.gi, i64 %i.gj) ; 2 uses
  store i64 %i.gk, ptr %i.af, align 8, !alias.scope !403
  store i64 0, ptr %i.an, align 8, !alias.scope !403
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer7discard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.gj)
          to label %bb.bq unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.d

bb.br:                                            ; preds = %bb.bo
  %i.gl = extractvalue { ptr, i64 } %i.gh, 1
  %i.gm = load i64, ptr %i.an, align 8, !alias.scope !404, !noundef !6
  %i.gn = add i64 %i.gm, %i.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %.loopexit156

bb.bs:                                            ; preds = %.body72, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.go, %bb.bt ], [ %eh.lpad-body73, %.body72 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(64) %i.y) #13
          to label %common.resume unwind label %bb.cf

bb.bt:                                            ; preds = %bb.cd, %bb.bn
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bu:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.gp = load i8, ptr %i.aj, align 8, !range !8, !alias.scope !405, !noundef !6
  %i.gq = icmp eq i8 %i.gp, -1
  br i1 %i.gq, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %.val.i70 = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !alias.scope !405 ; 5 uses
  %.val1.i = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !405, !nonnull !6, !align !22, !noundef !6 ; 5 uses
  %i.gr = load ptr, ptr %.val1.i, align 8, !invariant.load !6, !noalias !405 ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i71, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i70) ]
  invoke void %i.gr(ptr noundef nonnull %.val.i70)
          to label %bb.bx unwind label %bb.bz, !noalias !405

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.gs = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !range !12, !invariant.load !6, !noalias !405 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gv = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !range !13, !invariant.load !6, !noalias !405
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i70) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i70, i64 noundef range(i64 1, -9223372036854775808) %i.gt, i64 noundef range(i64 1, 536870913) %i.gw) #16, !noalias !405
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bw
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !range !12, !invariant.load !6, !noalias !405 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %.body72, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !range !13, !invariant.load !6, !noalias !405
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i70, i64 noundef range(i64 1, -9223372036854775808) %i.gz, i64 noundef range(i64 1, 536870913) %i.hc) #16, !noalias !405
  br label %.body72

bb.cb:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aj)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.body72

.body72:                                          ; preds = %bb.bz, %bb.ca, %bb.cc
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.hd, %bb.cc ], [ %i.gx, %bb.ca ], [ %i.gx, %bb.bz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 64, i1 false)
  br label %bb.bs

bb.cd:                                            ; preds = %bb.cb, %bb.bx, %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.he = load i64, ptr %i.an, align 8, !alias.scope !406, !noundef !6
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer7discard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.he)
          to label %bb.ce unwind label %bb.bt

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.cf:                                            ; preds = %.thread116, %bb.dh, %bb.cp, %bb.bs
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.loopexit156.loopexit:                            ; preds = %bb.ao
  %.pre380 = load i64, ptr %i.an, align 8, !alias.scope !407
  br label %.loopexit156

.loopexit156:                                     ; preds = %.loopexit156.loopexit, %bb.br
  %i.hg = phi i64 [ %i.gn, %bb.br ], [ %.pre380, %.loopexit156.loopexit ] ; 2 uses
  %.sroa.10.3 = phi ptr [ %i.gd, %bb.br ], [ %.sroa.10.2, %.loopexit156.loopexit ] ; 3 uses
  %.sroa.0.3 = phi ptr [ %i.ge, %bb.br ], [ %.sroa.0.2, %.loopexit156.loopexit ] ; 3 uses
  %i.hh = load i64, ptr %i.af, align 8, !alias.scope !407, !noundef !6
  %i.hi = call i64 @llvm.usub.sat.i64(i64 %i.hh, i64 %i.hg)
  store i64 %i.hi, ptr %i.af, align 8, !alias.scope !407
  store i64 0, ptr %i.an, align 8, !alias.scope !407
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer7discard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.hg)
          to label %bb.cg unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %.loopexit156
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.hj = load i8, ptr %i.aj, align 8, !range !8, !alias.scope !408, !noundef !6
  %i.hk = icmp eq i8 %i.hj, -1
  br i1 %i.hk, label %bb.ch, label %bb.cn

bb.ch:                                            ; preds = %bb.cg
  %.val.i75 = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !alias.scope !408 ; 5 uses
  %.val1.i76 = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !408, !nonnull !6, !align !22, !noundef !6 ; 5 uses
  %i.hl = load ptr, ptr %.val1.i76, align 8, !invariant.load !6, !noalias !408 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i77, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i75) ]
  invoke void %i.hl(ptr noundef nonnull %.val.i75)
          to label %bb.cj unwind label %bb.cl, !noalias !408

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1.i76, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !12, !invariant.load !6, !noalias !408 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit82, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hp = getelementptr inbounds nuw i8, ptr %.val1.i76, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !range !13, !invariant.load !6, !noalias !408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i75) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i75, i64 noundef range(i64 1, -9223372036854775808) %i.hn, i64 noundef range(i64 1, 536870913) %i.hq) #16, !noalias !408
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit82

bb.cl:                                            ; preds = %bb.ci
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1.i76, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !range !12, !invariant.load !6, !noalias !408 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.body79, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1.i76, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !range !13, !invariant.load !6, !noalias !408
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i75, i64 noundef range(i64 1, -9223372036854775808) %i.ht, i64 noundef range(i64 1, 536870913) %i.hw) #16, !noalias !408
  br label %.body79

bb.cn:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit82 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.body79:                                          ; preds = %bb.cl, %bb.cm, %bb.co
  %eh.lpad-body80 = phi { ptr, i32 } [ %i.hx, %bb.co ], [ %i.hr, %bb.cm ], [ %i.hr, %bb.cl ]
  store i8 -1, ptr %i.aj, align 8
  store ptr %.sroa.0.3, ptr %.sroa.63.0..sroa_idx, align 8
  store ptr %.sroa.10.3, ptr %.sroa.7.0..sroa_idx, align 8
  br label %common.resume

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit82: ; preds = %bb.ck, %bb.cj, %bb.cn
  store i8 -1, ptr %i.aj, align 8
  store ptr %.sroa.0.3, ptr %.sroa.63.0..sroa_idx, align 8
  store ptr %.sroa.10.3, ptr %.sroa.7.0..sroa_idx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState16current_io_state(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(840) %1)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.de, %bb.dd, %bb.ce, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit98, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit82
  ret void

bb.cp:                                            ; preds = %.body87, %bb.cq
  %.pn35 = phi { ptr, i32 } [ %i.hz, %bb.cq ], [ %eh.lpad-body88, %.body87 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ad) #13
          to label %.thread116 unwind label %bb.cf

bb.cq:                                            ; preds = %bb.da, %.loopexit
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cr:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.ia = load i8, ptr %i.aj, align 8, !range !8, !alias.scope !409, !noundef !6
  %i.ib = icmp eq i8 %i.ia, -1
  br i1 %i.ib, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %.val.i83 = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !alias.scope !409 ; 5 uses
  %.val1.i84 = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !409, !nonnull !6, !align !22, !noundef !6 ; 5 uses
  %i.ic = load ptr, ptr %.val1.i84, align 8, !invariant.load !6, !noalias !409 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i85, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i83) ]
  invoke void %i.ic(ptr noundef nonnull %.val.i83)
          to label %bb.cu unwind label %bb.cw, !noalias !409

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.id = getelementptr inbounds nuw i8, ptr %.val1.i84, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !range !12, !invariant.load !6, !noalias !409 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1.i84, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !range !13, !invariant.load !6, !noalias !409
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i83) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i83, i64 noundef range(i64 1, -9223372036854775808) %i.ie, i64 noundef range(i64 1, 536870913) %i.ih) #16, !noalias !409
  br label %bb.da

bb.cw:                                            ; preds = %bb.ct
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1.i84, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !range !12, !invariant.load !6, !noalias !409 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %.body87, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.im = getelementptr inbounds nuw i8, ptr %.val1.i84, i64 16
  %i.in = load i64, ptr %i.im, align 8, !range !13, !invariant.load !6, !noalias !409
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i83, i64 noundef range(i64 1, -9223372036854775808) %i.ik, i64 noundef range(i64 1, 536870913) %i.in) #16, !noalias !409
  br label %.body87

bb.cy:                                            ; preds = %bb.cr
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aj)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body87

.body87:                                          ; preds = %bb.cw, %bb.cx, %bb.cz
  %eh.lpad-body88 = phi { ptr, i32 } [ %i.io, %bb.cz ], [ %i.ii, %bb.cx ], [ %i.ii, %bb.cw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false)
  br label %bb.cp

bb.da:                                            ; preds = %bb.cy, %bb.cu, %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ip = load i64, ptr %i.af, align 8, !alias.scope !410, !noundef !6
  %i.iq = load i64, ptr %i.an, align 8, !alias.scope !410, !noundef !6 ; 2 uses
  %i.ir = call i64 @llvm.usub.sat.i64(i64 %i.ip, i64 %i.iq)
  store i64 %i.ir, ptr %i.af, align 8, !alias.scope !410
  store i64 0, ptr %i.an, align 8, !alias.scope !410
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer7discard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.iq)
          to label %bb.db unwind label %bb.cq

bb.db:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.is = load ptr, ptr %.sroa.10.2, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.is, null
  br i1 %.not.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void %i.is(ptr noundef nonnull %.sroa.0.2)
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !range !12, !invariant.load !6 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !range !13, !invariant.load !6
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2, i64 noundef range(i64 1, -9223372036854775808) %i.iu, i64 noundef range(i64 1, 536870913) %i.ix) #16
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.df:                                            ; preds = %bb.dc
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !range !12, !invariant.load !6 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %common.resume, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.10.2, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !range !13, !invariant.load !6
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2, i64 noundef range(i64 1, -9223372036854775808) %i.ja, i64 noundef range(i64 1, 536870913) %i.jd) #16
  br label %common.resume

common.resume:                                    ; preds = %bb.dh, %.thread116, %bb.bb, %bb.bc, %.thread.i, %bb.bs, %.body79, %bb.df, %bb.dg
  %common.resume.op = phi { ptr, i32 } [ %i.iy, %bb.df ], [ %i.iy, %bb.dg ], [ %.pn38, %bb.dh ], [ %.pn35.pn115, %.thread116 ], [ %.pn, %bb.bs ], [ %.pn39.i, %.thread.i ], [ %i.fo, %bb.bb ], [ %i.fo, %bb.bc ], [ %eh.lpad-body80, %.body79 ]
  resume { ptr, i32 } %common.resume.op

.thread116:                                       ; preds = %.thread129.loopexit, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread129.loopexit.split-lp.loopexit, %bb.cp, %bb.ak
  %.pn35.pn115 = phi { ptr, i32 } [ %i.ep, %bb.ak ], [ %.pn35, %bb.cp ], [ %lpad.loopexit, %.thread129.loopexit ], [ %lpad.loopexit139, %.thread129.loopexit.split-lp.loopexit ], [ %lpad.loopexit148, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit152, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp153, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0.0114 = phi ptr [ %.sroa.0.2, %bb.ak ], [ %.sroa.0.2, %bb.cp ], [ %.sroa.0.2, %.thread129.loopexit ], [ %.sroa.0.2, %.thread129.loopexit.split-lp.loopexit ], [ %.sroa.0.2, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.1.ph.ph.ph.ph.ph, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.1.ph.ph.ph.ph.ph151, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.10.0113 = phi ptr [ %.sroa.10.2, %bb.ak ], [ %.sroa.10.2, %bb.cp ], [ %.sroa.10.2, %.thread129.loopexit ], [ %.sroa.10.2, %.thread129.loopexit.split-lp.loopexit ], [ %.sroa.10.2, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.10.1.ph.ph.ph.ph.ph, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.10.1.ph.ph.ph.ph.ph150, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server(ptr %.sroa.0.0114, ptr %.sroa.10.0113) #13
          to label %common.resume unwind label %bb.cf

bb.dh:                                            ; preds = %.body95, %bb.di
  %.pn38 = phi { ptr, i32 } [ %eh.lpad-body96, %.body95 ], [ %i.je, %bb.di ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ai) #13
          to label %common.resume unwind label %bb.cf

bb.di:                                            ; preds = %bb.b
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dj:                                            ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.jf = load i8, ptr %i.aj, align 8, !range !8, !alias.scope !411, !noundef !6
  %i.jg = icmp eq i8 %i.jf, -1
  br i1 %i.jg, label %bb.dk, label %bb.dq

bb.dk:                                            ; preds = %bb.dj
  %.val.i91 = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !alias.scope !411 ; 5 uses
  %.val1.i92 = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !411, !nonnull !6, !align !22, !noundef !6 ; 5 uses
  %i.jh = load ptr, ptr %.val1.i92, align 8, !invariant.load !6, !noalias !411 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i93, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i91) ]
  invoke void %i.jh(ptr noundef nonnull %.val.i91)
          to label %bb.dm unwind label %bb.do, !noalias !411

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.ji = getelementptr inbounds nuw i8, ptr %.val1.i92, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !range !12, !invariant.load !6, !noalias !411 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit98, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1.i92, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !range !13, !invariant.load !6, !noalias !411
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i91) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i91, i64 noundef range(i64 1, -9223372036854775808) %i.jj, i64 noundef range(i64 1, 536870913) %i.jm) #16, !noalias !411
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit98

bb.do:                                            ; preds = %bb.dl
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1.i92, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !range !12, !invariant.load !6, !noalias !411 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %.body95, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1.i92, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !range !13, !invariant.load !6, !noalias !411
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i91, i64 noundef range(i64 1, -9223372036854775808) %i.jp, i64 noundef range(i64 1, 536870913) %i.js) #16, !noalias !411
  br label %.body95

bb.dq:                                            ; preds = %bb.dj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit98 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body95

.body95:                                          ; preds = %bb.do, %bb.dp, %bb.dr
  %eh.lpad-body96 = phi { ptr, i32 } [ %i.jt, %bb.dr ], [ %i.jn, %bb.dp ], [ %i.jn, %bb.do ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  br label %bb.dh

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6server11server_conn20ServerConnectionDataEEL_ENtNtB1C_5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit98: ; preds = %bb.dn, %bb.dm, %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs8jHtsX8J7SC_18simple_0rtt_server.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20handle_deframe_errorCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %2, ptr noundef nonnull %3, ptr nofree nonnull readonly captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = load i8, ptr %2, align 8, !range !15, !noundef !6
  switch i8 %i.d, label %bb.b [
    i8 3, label %bb.c
    i8 6, label %bb.i
    i8 17, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 829
  %i.f = load i8, ptr %i.e, align 1, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  call void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, i8 noundef 4, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, i8 noundef 16, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 680
  store i8 16, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.j, %bb.g, %bb.b
  ret void

bb.i:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !6, !nonnull !6
  invoke void %i.j(ptr noundef nonnull %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  call void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, i8 noundef 2, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.k:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.l:                                             ; preds = %bb.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(64) %2) #13
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE22take_handshake_messageCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 976
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_13HandshakeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_13HandshakeIterNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake13HandshakeIterECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.i = load i16, ptr %i.h, align 2, !range !20, !noundef !6
  %.not = icmp eq i16 %i.i, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !6
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 -1, ptr %i.o, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_13HandshakeIterNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake13HandshakeIterECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write17is_write_vectored(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5flush(ptr noalias nofree readnone align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB7_16ConnectionCommonNtNtNtB9_6server11server_conn20ServerConnectionDataENtB5_13PlaintextSink14write_vectoredCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(1168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  switch i64 %2, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  call void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6server11server_conn20ServerConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !6
  invoke void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.h)
          to label %bb.f unwind label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  %.sroa.3.0 = phi ptr [ %i.af, %bb.m ], [ null, %bb.c ]
  %i.i = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.i

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.n, align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.sroa.01.0 = phi i1 [ true, %bb.b ], [ false, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.p = invoke noundef i64 @_RNvMs_NtCs7ZUl82OSlxp_6rustls12common_stateNtB4_11CommonState16buffer_plaintext(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.01.0, label %bb.q, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !range !5, !alias.scope !420, !noundef !6
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.s, align 1, !alias.scope !420
  br i1 %i.u, label %bb.i, label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE26maybe_refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !420
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !8, !alias.scope !422, !noalias !423, !noundef !6
  %.not.i.i = icmp eq i8 %i.w, -1
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v) #18
          to label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !422, !noalias !423, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !422, !noalias !423, !nonnull !6, !align !22, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !6, !noalias !424, !nonnull !6
  invoke void %i.ac(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %0) #18
          to label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.g, !inline_history !417

_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.k, %bb.j
  %i.ad = load i8, ptr %i.a, align 8, !range !8, !alias.scope !425, !noalias !420, !noundef !6
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.l, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !420
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE26maybe_refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit

_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE26maybe_refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, %bb.h
  br i1 %.sroa.01.0, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs8jHtsX8J7SC_18simple_0rtt_server.exit, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE26maybe_refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = inttoptr i64 %i.p to ptr
  br label %bb.d

bb.n:                                             ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE26maybe_refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs8jHtsX8J7SC_18simple_0rtt_server.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.q, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %i.ai, %bb.q ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.m

bb.q:                                             ; preds = %.thread, %bb.g
  %i.ai = phi { ptr, i32 } [ %i.r, %.thread ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #13
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB7_16ConnectionCommonNtNtNtB9_6server11server_conn20ServerConnectionDataENtB5_13PlaintextSink5writeCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(1168) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  store ptr null, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.f = call noundef i64 @_RNvMs_NtCs7ZUl82OSlxp_6rustls12common_stateNtB4_11CommonState16buffer_plaintext(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !5, !alias.scope !434, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 1, !alias.scope !434
  br i1 %i.i, label %bb.b, label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE26maybe_refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !434
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !8, !alias.scope !436, !noalias !437, !noundef !6
  %.not.i.i = icmp eq i8 %i.k, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j) #18
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !436, !noalias !437, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !436, !noalias !437, !nonnull !6, !align !22, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !6, !noalias !438, !nonnull !6
  call void %i.q(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %0) #18, !inline_history !431
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i

_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.d, %bb.c
  %i.r = load i8, ptr %i.a, align 8, !range !8, !alias.scope !439, !noalias !434, !noundef !6
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i: ; preds = %bb.e, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !434
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE26maybe_refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit

_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE26maybe_refresh_traffic_keysCs8jHtsX8J7SC_18simple_0rtt_server.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECs8jHtsX8J7SC_18simple_0rtt_server.exit.i
  %i.t = inttoptr i64 %i.f to ptr
  %i.u = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.t, 1
  ret { i64, ptr } %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read16is_read_vectored(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 16               ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 16               ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.21.sroa.5 = alloca [24 x i8], align 8    ; 5 uses
  %.sroa.36.sroa.7 = alloca [24 x i8], align 8    ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i8, ptr %1, align 8, !range !15, !noundef !6
  switch i8 %i.p, label %default.unreachable29 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.bg
    i8 13, label %bb.br
    i8 14, label %bb.bs
    i8 15, label %bb.bt
    i8 16, label %bb.bu
    i8 17, label %bb.bv
    i8 18, label %bb.bw
    i8 19, label %bb.bx
    i8 20, label %bb.by
    i8 21, label %bb.bz
  ]

default.unreachable29:                            ; preds = %bb.bg, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !21, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i8, ptr %i.u, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.x, align 2
  store i8 0, ptr %0, align 8
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !449, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ab, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ad, ptr %i.af, align 2
  store i8 1, ptr %0, align 8
  br label %bb.ca

bb.d:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !450, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ah, ptr %i.ai, align 1
  store i8 2, ptr %0, align 8
  br label %bb.ca

bb.e:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  store i8 3, ptr %0, align 8
  br label %bb.ca

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8
  br label %bb.ca

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8
  br label %bb.ca

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.ca

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 8
  br label %bb.ca

bb.j:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !16, !alias.scope !451, !noalias !452, !noundef !6 ; 3 uses
  %i.an = icmp slt i64 %i.am, -9223372036854775787
  br i1 %i.an, label %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq i64 %i.am, -1
  br i1 %.not.i, label %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8
  br label %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0 = phi i64 [ -1, %bb.k ], [ %.sroa.0.0.copyload.i, %bb.l ], [ %i.am, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ao, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  store i8 8, ptr %0, align 8
  br label %bb.ca

bb.m:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !453, !noundef !6
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aq, ptr %i.ar, align 1
  store i8 9, ptr %0, align 8
  br label %bb.ca

bb.n:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !454, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.av = load i8, ptr %i.au, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.at, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.av, ptr %i.ax, align 2
  store i8 10, ptr %0, align 8
  br label %bb.ca

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.az = load i64, ptr %i.ay, align 8, !range !17, !alias.scope !455, !noalias !456, !noundef !6 ; 3 uses
  %i.ba = icmp ne i64 %i.az, -9223372036854775792
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = xor i64 %i.az, -9223372036854775808
  %i.bc = icmp slt i64 %i.az, 0
  %i.bd = select i1 %i.bc, i64 %i.bb, i64 16
  switch i64 %i.bd, label %bb.p [
    i64 0, label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 4, label %bb.t
    i64 5, label %bb.u
    i64 6, label %bb.v
    i64 7, label %bb.w
    i64 8, label %bb.x
    i64 9, label %bb.y
    i64 10, label %bb.z
    i64 11, label %bb.aa
    i64 12, label %bb.ab
    i64 13, label %bb.ac
    i64 14, label %bb.ad
    i64 15, label %bb.ae
    i64 16, label %bb.af
    i64 17, label %bb.ag
    i64 18, label %bb.ah
    i64 19, label %bb.ai
    i64 20, label %bb.aj
    i64 21, label %bb.ak
  ]

bb.p:                                             ; preds = %bb.ah, %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.r:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !alias.scope !455, !noalias !456
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.s:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.t:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !455, !noalias !456
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.y:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.z:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !455, !noalias !456
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.aa:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.ab:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !457
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk), !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !457
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
          to label %bb.am unwind label %bb.al, !noalias !456

bb.ad:                                            ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !457
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm), !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !457
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.ap unwind label %bb.ao, !noalias !456

bb.ae:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.af:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !457
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load i8, ptr %i.bo, align 8, !range !5, !alias.scope !455, !noalias !456, !noundef !6
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.aq, label %bb.ar

bb.ag:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.ah:                                            ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !457
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !14, !alias.scope !455, !noalias !456, !noundef !6 ; 2 uses
  %i.bu = xor i64 %i.bt, -9223372036854775808
  %i.bv = icmp slt i64 %i.bt, 0
  %i.bw = select i1 %i.bv, i64 %i.bu, i64 2
  switch i64 %i.bw, label %bb.p [
    i64 0, label %bb.ay
    i64 1, label %bb.az
    i64 2, label %bb.ba
  ]

bb.ai:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.aj:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.ak:                                            ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !455, !noalias !456, !nonnull !6, !noundef !6 ; 2 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !noalias !457
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.bf, label %bb.be

bb.al:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #13
          to label %common.resume unwind label %bb.an, !noalias !456

bb.am:                                            ; preds = %bb.ac
  %i.cc = load <2 x i64>, ptr %i.m, align 16, !noalias !455
  %.sroa.36.8..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cd = load i64, ptr %.sroa.36.8..sroa_idx19, align 16, !noalias !455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !457
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.an:                                            ; preds = %bb.bc, %bb.aw, %bb.ao, %bb.al
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !456
  unreachable

common.resume:                                    ; preds = %bb.bk, %bb.bn, %bb.al, %bb.ao, %bb.aw, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %i.ct, %bb.bc ], [ %i.cb, %bb.al ], [ %i.cf, %bb.ao ], [ %i.cr, %bb.aw ], [ %i.dn, %bb.bk ], [ %i.dr, %bb.bn ]
  resume { ptr, i32 } %common.resume.op

bb.ao:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #13
          to label %common.resume unwind label %bb.an, !noalias !456

bb.ap:                                            ; preds = %bb.ad
  %i.cg = load <2 x i64>, ptr %i.k, align 16, !noalias !455
  %.sroa.36.8..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ch = load i64, ptr %.sroa.36.8..sroa_idx18, align 16, !noalias !455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !457
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cj, ptr noundef nonnull readonly align 1 dereferenceable(17) %i.ci, i64 17, i1 false), !noalias !456
  br label %bb.av

bb.ar:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !9, !alias.scope !455, !noalias !456, !noundef !6
  %.not.i1 = icmp eq i64 %i.cl, -1
  br i1 %.not.i1, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !457
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck), !noalias !456
  %.sroa.0.0.copyload.i2 = load i64, ptr %i.e, align 8, !noalias !457
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !457
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !457
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !455, !noalias !456, !nonnull !6, !noundef !6
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !455, !noalias !456, !noundef !6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.as ], [ %i.cp, %bb.at ]
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.as ], [ %i.cn, %bb.at ]
  %.sroa.0.0.i3 = phi i64 [ %.sroa.0.0.copyload.i2, %bb.as ], [ -1, %bb.at ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.0.0.i3, ptr %i.cq, align 8, !noalias !457
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !457
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.6.0.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !457
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aq
  %storemerge.i = phi i8 [ 0, %bb.au ], [ 1, %bb.aq ]
  store i8 %storemerge.i, ptr %i.i, align 8, !noalias !457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !457
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay)
          to label %bb.ax unwind label %bb.aw, !noalias !456

bb.aw:                                            ; preds = %bb.av
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #13
          to label %common.resume unwind label %bb.an, !noalias !456

bb.ax:                                            ; preds = %bb.av
  %.sroa.36.sroa.0.0.copyload28 = load i64, ptr %i.i, align 8, !noalias !455
  %.sroa.36.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7.0..sroa_idx, i64 24, i1 false), !noalias !455
  %.sroa.05.0.copyload6 = load i64, ptr %i.h, align 8, !noalias !455
  %.sroa.257.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cs = load <2 x i64>, ptr %.sroa.257.0..sroa_idx8, align 8, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !457
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.ay:                                            ; preds = %bb.ah
  store i64 -9223372036854775808, ptr %i.g, align 8, !noalias !457
  br label %bb.bb

bb.az:                                            ; preds = %bb.ah
  store i64 -9223372036854775807, ptr %i.g, align 8, !noalias !457
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ah
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs), !noalias !456
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !457
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.bd unwind label %bb.bc, !noalias !456

bb.bc:                                            ; preds = %bb.bb
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #13
          to label %common.resume unwind label %bb.an, !noalias !456

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !455
  %i.cu = load <2 x i64>, ptr %i.f, align 16, !noalias !455
  %.sroa.36.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cv = load i64, ptr %.sroa.36.8..sroa_idx, align 16, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !457
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.be:                                            ; preds = %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !455, !noalias !456, !nonnull !6, !align !22, !noundef !6
  %i.cy = insertelement <2 x ptr> poison, ptr %i.by, i64 0
  %i.cz = insertelement <2 x ptr> %i.cy, ptr %i.cx, i64 1
  %i.da = ptrtoint <2 x ptr> %i.cz to <2 x i64>
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.bf:                                            ; preds = %bb.ak
  tail call void @llvm.trap()
  unreachable

_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.o, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ae, %bb.ag, %bb.ai, %bb.aj, %bb.am, %bb.ap, %bb.ax, %bb.bd, %bb.be
  %.sroa.36.sroa.0.0 = phi i64 [ undef, %bb.o ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.cd, %bb.am ], [ %i.ch, %bb.ap ], [ undef, %bb.ae ], [ %.sroa.36.sroa.0.0.copyload28, %bb.ax ], [ undef, %bb.ag ], [ %i.cv, %bb.bd ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.be ]
  %.sroa.05.0 = phi i64 [ -9223372036854775808, %bb.o ], [ -9223372036854775807, %bb.q ], [ -9223372036854775806, %bb.r ], [ -9223372036854775805, %bb.s ], [ -9223372036854775804, %bb.t ], [ -9223372036854775803, %bb.u ], [ -9223372036854775802, %bb.v ], [ -9223372036854775801, %bb.w ], [ -9223372036854775800, %bb.x ], [ -9223372036854775799, %bb.y ], [ -9223372036854775798, %bb.z ], [ -9223372036854775797, %bb.aa ], [ -9223372036854775796, %bb.ab ], [ -9223372036854775795, %bb.am ], [ -9223372036854775794, %bb.ap ], [ -9223372036854775793, %bb.ae ], [ %.sroa.05.0.copyload6, %bb.ax ], [ -9223372036854775791, %bb.ag ], [ -9223372036854775790, %bb.bd ], [ -9223372036854775789, %bb.ai ], [ -9223372036854775788, %bb.aj ], [ -9223372036854775787, %bb.be ]
  %i.db = phi <2 x i64> [ undef, %bb.o ], [ undef, %bb.q ], [ %i.bf, %bb.r ], [ undef, %bb.s ], [ %i.bh, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ %i.bj, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.cc, %bb.am ], [ %i.cg, %bb.ap ], [ undef, %bb.ae ], [ %i.cs, %bb.ax ], [ undef, %bb.ag ], [ %i.cu, %bb.bd ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ %i.da, %bb.be ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.dc, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.db, ptr %.sroa.257.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.36.sroa.0.0, ptr %.sroa.36.0..sroa_idx, align 8
  %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, i64 24, i1 false)
  store i8 11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.7)
  br label %bb.ca

bb.bg:                                            ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.de = load i64, ptr %i.dd, align 8, !range !18, !alias.scope !458, !noalias !459, !noundef !6 ; 2 uses
  switch i64 %i.de, label %default.unreachable29 [
    i64 0, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 1, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 2, label %bb.bh
    i64 3, label %bb.bi
    i64 4, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 5, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 6, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 7, label %bb.bj
    i64 8, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 9, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 10, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 11, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 12, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 13, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !460
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df), !noalias !459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !460
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.bl unwind label %bb.bk, !noalias !459

bb.bi:                                            ; preds = %bb.bg
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !460
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh), !noalias !459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !460
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %bb.bo unwind label %bb.bn, !noalias !459

bb.bj:                                            ; preds = %bb.bg
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !458, !noalias !459, !nonnull !6, !noundef !6 ; 2 uses
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !460
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %bb.bq, label %bb.bp

bb.bk:                                            ; preds = %bb.bh
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #13
          to label %common.resume unwind label %bb.bm, !noalias !459

bb.bl:                                            ; preds = %bb.bh
  %i.do = load <2 x ptr>, ptr %i.d, align 16, !noalias !458
  %.sroa.21.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dp = load i64, ptr %.sroa.21.8..sroa_idx26, align 16, !noalias !458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !460
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.bm:                                            ; preds = %bb.bn, %bb.bk
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !459
  unreachable

bb.bn:                                            ; preds = %bb.bi
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #13
          to label %common.resume unwind label %bb.bm, !noalias !459

bb.bo:                                            ; preds = %bb.bi
  %i.ds = load <2 x ptr>, ptr %i.b, align 16, !noalias !458
  %.sroa.21.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dt = load i64, ptr %.sroa.21.8..sroa_idx, align 16, !noalias !458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !460
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.bp:                                            ; preds = %bb.bj
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !458, !noalias !459, !nonnull !6, !align !22, !noundef !6
  %i.dw = insertelement <2 x ptr> poison, ptr %i.dk, i64 0
  %i.dx = insertelement <2 x ptr> %i.dw, ptr %i.dv, i64 1
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.bq:                                            ; preds = %bb.bj
  tail call void @llvm.trap()
  unreachable

_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bl, %bb.bo, %bb.bp
  %.sroa.21.sroa.0.0 = phi i64 [ %i.dp, %bb.bl ], [ %i.dt, %bb.bo ], [ undef, %bb.bp ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ]
  %i.dy = phi <2 x ptr> [ %i.do, %bb.bl ], [ %i.ds, %bb.bo ], [ %i.dx, %bb.bp ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.de, ptr %i.dz, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.dy, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.21.sroa.0.0, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, i64 24, i1 false)
  store i8 12, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.5)
  br label %bb.ca

bb.br:                                            ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea)
  store i8 13, ptr %0, align 8
  br label %bb.ca

bb.bs:                                            ; preds = %bb.a
  store i8 14, ptr %0, align 8
  br label %bb.ca

bb.bt:                                            ; preds = %bb.a
  store i8 15, ptr %0, align 8
  br label %bb.ca

bb.bu:                                            ; preds = %bb.a
  store i8 16, ptr %0, align 8
  br label %bb.ca

bb.bv:                                            ; preds = %bb.a
  store i8 17, ptr %0, align 8
  br label %bb.ca

bb.bw:                                            ; preds = %bb.a
  store i8 18, ptr %0, align 8
  br label %bb.ca

bb.bx:                                            ; preds = %bb.a
  store i8 19, ptr %0, align 8
  br label %bb.ca

bb.by:                                            ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !range !5, !noundef !6
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ed, ptr %i.ee, align 1
  store i8 20, ptr %0, align 8
  br label %bb.ca

bb.bz:                                            ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %bb.cb, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.n, %bb.m, %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.cb:                                            ; preds = %bb.bz
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !6, !align !22, !noundef !6
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ek, ptr %i.em, align 8
  store i8 21, ptr %0, align 8
  br label %bb.ca

bb.cc:                                            ; preds = %bb.bz
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write18write_all_vectoredCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_fmtCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noinline nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(i8 noundef range(i8 0, 44), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE3zipBI_ECs8jHtsX8J7SC_18simple_0rtt_server(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_3
begin_hunk_4_@_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtB4_7set_val9SetValZSTENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_13HandshakeIterNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer4read(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedECs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8, i8 noundef range(i8 0, 75)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs8jHtsX8J7SC_18simple_0rtt_server(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7MessageINtNtCsj6eKBz9Db1c_4core7convert7TryFromNtNtB5_7inbound19InboundPlainMessageE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState13process_alert(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState21process_main_protocolNtNtNtB5_6server11server_conn20ServerConnectionDataECs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(136), ptr noalias nofree noundef align 8 dereferenceable_or_null(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14InvalidMessageECs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs8deframerNtB4_12DeframerIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer16decrypt_incoming(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer10is_aligned(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef align 8 dereferenceable(840)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCs7ZUl82OSlxp_6rustls4connNtB5_24InboundUnborrowedMessage8reborrow(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer13input_message(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer8coalesce(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17has_message_ready(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer10filled_mut(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer7discard(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer6filled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState16current_io_state(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(840)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB5_13HandshakeIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6server11server_conn20ServerConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtCs7ZUl82OSlxp_6rustls12common_stateNtB4_11CommonState16buffer_plaintext(ptr noalias nofree noundef align 8 dereferenceable(840), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16E9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs8jHtsX8J7SC_18simple_0rtt_server(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { cold }
attributes #14 = { noinline }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { noinline noreturn }
attributes #18 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!8 = !{i8 -1, i8 22}
!9 = !{i64 -1, i64 -9223372036854775808}
!10 = !{i64 -2, i64 -9223372036854775808}
!11 = !{i64 -3, i64 -9223372036854775808}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{i64 1, i64 536870913}
!14 = !{i64 0, i64 -9223372036854775806}
!15 = !{i8 0, i8 22}
!16 = !{i64 -1, i64 -9223372036854775787}
!17 = !{i64 0, i64 -9223372036854775786}
!18 = !{i64 0, i64 14}
!19 = !{i64 -1, i64 -9223372036854775803}
!20 = !{i16 -1, i16 10}
!21 = !{i8 0, i8 6}
!22 = !{i64 8}
!23 = distinct !{!23, i1 false, !"_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read"}
!24 = distinct !{!24, !23, !"_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read: argument 0"}
!25 = distinct !{!25, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!26 = distinct !{!26, !25, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!27 = distinct !{null}
!28 = distinct !{!28, i1 false, !"_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read"}
!29 = distinct !{!29, !28, !"_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read: argument 0"}
!30 = distinct !{!30, i1 false, !"_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read"}
!31 = distinct !{!31, !30, !"_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read: argument 0"}
!32 = distinct !{!32, i1 false, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCs8jHtsX8J7SC_18simple_0rtt_server"}
!33 = distinct !{!33, !32, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!34 = distinct !{!34, !32, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCs8jHtsX8J7SC_18simple_0rtt_server: argument 1"}
!35 = distinct !{!35, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!36 = distinct !{!36, !35, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!37 = distinct !{!37, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!38 = distinct !{!38, !37, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!39 = distinct !{!39, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!40 = distinct !{!40, !39, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!41 = distinct !{!41, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!42 = distinct !{!42, !41, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!43 = distinct !{!43, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!44 = distinct !{!44, !43, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!45 = distinct !{!45, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!46 = distinct !{!46, !45, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!47 = distinct !{!47, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!48 = distinct !{!48, !47, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!49 = distinct !{!49, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!50 = distinct !{!50, !49, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!51 = distinct !{!51, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!52 = distinct !{!52, !51, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!53 = !{!24}
!54 = !{!26}
!55 = !{i8 0, i8 44}
!56 = !{!29}
!57 = !{!31}
!58 = !{!33}
!59 = !{!34}
!60 = !{!36}
!61 = !{!38}
!62 = !{!40}
!63 = !{!42}
!64 = !{!44}
!65 = !{!46}
!66 = !{!48}
!67 = !{!50}
!68 = !{!52}
!69 = distinct !{!69, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!70 = distinct !{!70, !69, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!71 = !{!70}
!72 = distinct !{!72, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestECs8jHtsX8J7SC_18simple_0rtt_server"}
!73 = distinct !{!73, !72, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24CertificateStatusRequestECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!74 = distinct !{!74, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBG_4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server"}
!75 = distinct !{!75, !74, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBG_4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!76 = distinct !{!76, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server"}
!77 = distinct !{!77, !76, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!78 = !{!77, !75, !73}
!79 = distinct !{!79, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!80 = distinct !{!80, !79, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!81 = !{!80}
!82 = distinct !{!82, i1 false, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server"}
!83 = distinct !{!83, !82, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!84 = !{!83}
!85 = distinct !{!85, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsECs8jHtsX8J7SC_18simple_0rtt_server"}
!86 = distinct !{!86, !85, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!87 = distinct !{!87, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server"}
!88 = distinct !{!88, !87, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17ServerNamePayloadEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!89 = distinct !{!89, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!90 = distinct !{!90, !89, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!91 = distinct !{!91, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!92 = distinct !{!92, !91, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!93 = distinct !{!93, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!94 = distinct !{!94, !93, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!95 = distinct !{!95, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!96 = distinct !{!96, !95, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!97 = distinct !{!97, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!98 = distinct !{!98, !97, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!99 = distinct !{!99, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!100 = distinct !{!100, !99, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!101 = distinct !{!101, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server"}
!102 = distinct !{!102, !101, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake19ClientSessionTicketEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!103 = distinct !{!103, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!104 = distinct !{!104, !103, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB10_8NonEmptyEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!105 = distinct !{!105, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!106 = distinct !{!106, !105, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!107 = distinct !{!107, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!108 = distinct !{!108, !107, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!109 = distinct !{!109, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server"}
!110 = distinct !{!110, !109, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!111 = distinct !{!111, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server"}
!112 = distinct !{!112, !111, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!113 = distinct !{!113, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server"}
!114 = distinct !{!114, !113, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!115 = distinct !{!115, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server"}
!116 = distinct !{!116, !115, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!117 = !{i64 -2, i64 -9223372036854775806}
!118 = !{!88, !86}
!119 = !{!90, !86}
!120 = !{!92, !86}
!121 = !{!94, !86}
!122 = !{!96, !86}
!123 = !{!98, !86}
!124 = !{!100, !86}
!125 = !{!102, !86}
!126 = !{!104, !86}
!127 = !{!106, !86}
!128 = !{!108, !86}
!129 = !{!110, !86}
!130 = !{!112, !86}
!131 = !{!114, !86}
!132 = !{!116, !86}
!133 = distinct !{!133, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsECs8jHtsX8J7SC_18simple_0rtt_server"}
!134 = distinct !{!134, !133, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!135 = distinct !{!135, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server"}
!136 = distinct !{!136, !135, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!137 = distinct !{!137, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server"}
!138 = distinct !{!138, !137, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18SingleProtocolNameEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!139 = distinct !{!139, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server"}
!140 = distinct !{!140, !139, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!141 = distinct !{!141, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server"}
!142 = distinct !{!142, !141, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!143 = distinct !{!143, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server"}
!144 = distinct !{!144, !143, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!145 = distinct !{!145, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server"}
!146 = distinct !{!146, !145, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake26ServerEncryptedClientHelloEECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!147 = !{!136, !134}
!148 = !{!138, !134}
!149 = !{!140, !134}
!150 = !{!142, !134}
!151 = !{!144, !134}
!152 = !{!146, !134}
!153 = distinct !{!153, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server"}
!154 = distinct !{!154, !153, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!155 = distinct !{!155, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs8jHtsX8J7SC_18simple_0rtt_server"}
!156 = distinct !{!156, !155, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!157 = distinct !{!157, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server"}
!158 = distinct !{!158, !157, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!159 = distinct !{!159, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error16PeerIncompatibleECs8jHtsX8J7SC_18simple_0rtt_server"}
!160 = distinct !{!160, !159, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error16PeerIncompatibleECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!161 = distinct !{!161, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error16CertificateErrorECs8jHtsX8J7SC_18simple_0rtt_server"}
!162 = distinct !{!162, !161, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error16CertificateErrorECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!163 = distinct !{!163, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server"}
!164 = distinct !{!164, !163, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!165 = distinct !{!165, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs8jHtsX8J7SC_18simple_0rtt_server"}
!166 = distinct !{!166, !165, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!167 = distinct !{!167, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server"}
!168 = distinct !{!168, !167, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!169 = distinct !{!169, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server"}
!170 = distinct !{!170, !169, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!171 = distinct !{!171, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs8jHtsX8J7SC_18simple_0rtt_server"}
!172 = distinct !{!172, !171, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!173 = distinct !{!173, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs8jHtsX8J7SC_18simple_0rtt_server"}
!174 = distinct !{!174, !173, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!175 = distinct !{!175, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server"}
!176 = distinct !{!176, !175, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!177 = distinct !{!177, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error23CertRevocationListErrorECs8jHtsX8J7SC_18simple_0rtt_server"}
!178 = distinct !{!178, !177, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error23CertRevocationListErrorECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!179 = distinct !{!179, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server"}
!180 = distinct !{!180, !179, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!181 = distinct !{!181, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs8jHtsX8J7SC_18simple_0rtt_server"}
!182 = distinct !{!182, !181, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!183 = distinct !{!183, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server"}
!184 = distinct !{!184, !183, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8jHtsX8J7SC_18simple_0rtt_server: argument 0"}
!185 = !{!154}
!186 = !{!156}
!187 = !{!158}
!188 = !{!158, !156, !154}
!189 = !{!160}
!190 = !{!162}
!191 = !{!164}
end_hunk_4
