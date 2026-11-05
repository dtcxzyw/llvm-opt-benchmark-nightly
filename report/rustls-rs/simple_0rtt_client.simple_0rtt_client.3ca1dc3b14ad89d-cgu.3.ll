Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simple_0rtt_client.simple_0rtt_client.3ca1dc3b14ad89d-cgu.3?download=true
inline.NumInlined: 317
inline.NumDeleted: 142
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client, [16 x i8] c"\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write, ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write14write_vectored, ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write17is_write_vectored, ptr @_RNvXs0_NtNtCsaKJjC64KgbL_3std3net3tcpNtB5_9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5flush, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCskaDheoimX9_18simple_0rtt_client, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write18write_all_vectoredCskaDheoimX9_18simple_0rtt_client, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_fmtCskaDheoimX9_18simple_0rtt_client }>, align 8
@1 = private unnamed_addr constant [19 x i8] c"rustls/src/conn.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client, [16 x i8] c"\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4read, ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read13read_vectored, ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read16is_read_vectored, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCskaDheoimX9_18simple_0rtt_client, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_to_stringCskaDheoimX9_18simple_0rtt_client, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCskaDheoimX9_18simple_0rtt_client, ptr @_RNvXs_NtNtCsaKJjC64KgbL_3std3net3tcpNtB4_9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_buf, ptr @_RNvYNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamNtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read14read_buf_exactCskaDheoimX9_18simple_0rtt_client }>, align 8
@3 = private unnamed_addr constant [30 x i8] c"received plaintext buffer full", align 1
@_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@4 = private unnamed_addr constant [12 x i8] c"Dropping CCS", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\12\00\00\00\00\00\00\00\8D\04\00\00\0D\00\00\00" }>, align 8
@6 = private unnamed_addr constant [12 x i8] c"rustls::conn", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\12\00\00\00\00\00\00\00\DC\03\00\009\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6client11client_conn20ClientConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(1056) %1, ptr noalias nofree noundef align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.j = alloca [168 x i8], align 8               ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [168 x i8], align 8               ; 7 uses
  %i.n = alloca [168 x i8], align 8               ; 11 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 9 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.424.i.i.i.i = alloca [31 x i8], align 1  ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
  %i.z = alloca [64 x i8], align 8                ; 18 uses
  %i.aa = alloca [64 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 13 uses
  %i.ac = alloca [64 x i8], align 8               ; 13 uses
  %.sroa.6.i.i.i.i = alloca [31 x i8], align 1    ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.0.i.i.i = alloca [18 x i8], align 8      ; 4 uses
  %i.af = alloca [64 x i8], align 8               ; 4 uses
  %i.ag = alloca [64 x i8], align 8               ; 5 uses
  %i.ah = alloca [64 x i8], align 8               ; 6 uses
  %i.ai = alloca [64 x i8], align 8               ; 13 uses
  %i.aj = alloca [24 x i8], align 8               ; 11 uses
  %i.ak = alloca [64 x i8], align 8               ; 4 uses
  %i.al = alloca [64 x i8], align 8               ; 5 uses
  %i.am = alloca [64 x i8], align 8               ; 6 uses
  %i.an = alloca [64 x i8], align 8               ; 18 uses
  %i.ao = alloca [16 x i8], align 8               ; 25 uses
  %i.ap = alloca [64 x i8], align 8               ; 4 uses
  %i.aq = alloca [64 x i8], align 8               ; 5 uses
  %i.ar = alloca [64 x i8], align 8               ; 10 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %i.at = alloca [64 x i8], align 8               ; 4 uses
  %i.au = alloca [64 x i8], align 8               ; 4 uses
  %i.av = alloca [64 x i8], align 8               ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 822 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 823 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 827 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 828
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 18 uses
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 7 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 7 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 920
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 897
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.sroa.63.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.8.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 11 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.sroa.6.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i.i, i64 7 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 26 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 25
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 821
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %.sroa.424.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.424.i.i.i.i, i64 7
  %.sroa.424.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 26 ; 3 uses
  %.sroa.421.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.sroa.522.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.8.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %.sroa.5.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 28 ; 2 uses
  %.sroa.2.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  %.sroa.3.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 815 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.432.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %.backedge

.thread244.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph
  %lpad.loopexit339 = landingpad { ptr, i32 }
          cleanup
  br label %.thread236

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.033.0 = phi i64 [ 0, %bb.a ], [ %.sroa.033.1, %.backedge.backedge ] ; 12 uses
  %.sroa.021.0 = phi i64 [ 0, %bb.a ], [ %.sroa.021.1350, %.backedge.backedge ] ; 3 uses
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ %.sroa.0.1, %.backedge.backedge ]
  %.val86 = load i8, ptr %i.aw, align 2, !range !5, !noundef !6
  %.val87 = load i8, ptr %i.ax, align 1
  %3 = trunc nuw i8 %.val86 to i1
  %i.dk = trunc nuw i8 %.val87 to i1
  %4 = select i1 %3, i1 %i.dk, i1 false           ; 4 uses
  %.val91 = load i64, ptr %i.ay, align 8, !noundef !6
  %.not323 = icmp eq i64 %.val91, 0
  br i1 %.not323, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %.backedge
  %i.dl = load i64, ptr %i.az, align 8, !alias.scope !103, !noundef !6
  %i.dm = icmp ne i64 %i.dl, 0
  %i.dn = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !103
  %i.do = trunc nuw i8 %i.dn to i1
  %or.cond.i = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond.i, label %.thread265, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134

.split.thread.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gb, %bb.hf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.thread265:                                       ; preds = %bb.b
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.0, ptr %i.dq, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196: ; preds = %bb.o, %bb.fc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i193, %bb.hc, %bb.fv
  %i.dr = icmp eq ptr %.sroa.0.5, null
  br i1 %i.dr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread319, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ds = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.dt = and i64 %i.ds, 3
  switch i64 %i.dt, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.gv, %bb.gr, %bb.gc, %bb.fz, %bb.f, %bb.fd, %bb.ex, %bb.eq, %bb.hd, %bb.gy, %bb.gk, %bb.fo, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.du = icmp ult ptr %.sroa.0.5, inttoptr (i64 188978561024 to ptr)
  %i.dv = and i64 %i.ds, 1095216660480
  %i.dw = icmp ne i64 %i.dv, 1095216660480
  call void @llvm.assume(i1 %i.du)
  call void @llvm.assume(i1 %i.dw)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123

bb.e:                                             ; preds = %bb.c
  %i.dx = getelementptr i8, ptr %.sroa.0.5, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dx) ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.dx, ptr %i.dy, align 8, !alias.scope !104
  store i8 3, ptr %i.as, align 8, !alias.scope !104
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dy)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125

.lr.ph:                                           ; preds = %.backedge, %bb.l
  %.sroa.021.1957 = phi i64 [ %i.et, %bb.l ], [ %.sroa.021.0, %.backedge ] ; 3 uses
  %i.dz = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCskaDheoimX9_18simple_0rtt_client.exit unwind label %.thread244.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134: ; preds = %bb.l, %bb.b, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %.sroa.021.1350 = phi i64 [ %.sroa.021.1957, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ %.sroa.021.0, %bb.b ], [ %i.et, %bb.l ] ; 8 uses
  %.sroa.0.5 = phi ptr [ %i.eb, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.b ], [ null, %bb.l ] ; 26 uses
  %5 = icmp ne i64 %.sroa.021.1350, 0             ; 2 uses
  %or.cond15.not.not = and i1 %4, %5
  br i1 %or.cond15.not.not, label %bb.o, label %bb.p

_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCskaDheoimX9_18simple_0rtt_client.exit: ; preds = %.lr.ph
  %i.ea = extractvalue { i64, ptr } %i.dz, 0
  %i.eb = extractvalue { i64, ptr } %i.dz, 1      ; 9 uses
  %i.ec = ptrtoint ptr %i.eb to i64               ; 4 uses
  %i.ed = trunc nuw i64 %i.ea to i1
  br i1 %i.ed, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCskaDheoimX9_18simple_0rtt_client.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  %i.ee = and i64 %i.ec, 3
  switch i64 %i.ee, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 0, label %bb.i
    i64 1, label %bb.j
  ], !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ef = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc129 unwind label %bb.hg

.noexc129:                                        ; preds = %bb.g
  %i.eg = lshr i64 %i.ec, 32
  %i.eh = trunc nuw i64 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !6, !noundef !6
  %i.ek = invoke noundef i8 %i.ej(i32 noundef %i.eh)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.hg, !inline_history !27

bb.h:                                             ; preds = %bb.f
  %i.el = lshr i64 %i.ec, 32
  %i.em = icmp ult ptr %i.eb, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.el to i8  ; 2 uses
  %i.en = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.em)
  call void @llvm.assume(i1 %i.en)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.i:                                             ; preds = %bb.f
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ep = load i8, ptr %i.eo, align 8, !range !105, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %bb.f
  %i.eq = getelementptr i8, ptr %i.eb, i64 31
  %i.er = load i8, ptr %i.eq, align 8, !range !105, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.k:                                             ; preds = %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCskaDheoimX9_18simple_0rtt_client.exit
  %i.es = icmp eq ptr %i.eb, null
  br i1 %i.es, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.et = add i64 %.sroa.021.1957, %i.ec          ; 2 uses
  %.val90 = load i64, ptr %i.ay, align 8, !noundef !6
  %.not324 = icmp eq i64 %.val90, 0
  br i1 %.not324, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134, label %.lr.ph

bb.m:                                             ; preds = %bb.k
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1957, ptr %i.ev, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread: ; preds = %bb.m, %bb.n
  %storemerge = phi i64 [ 0, %bb.m ], [ 1, %bb.n ]
  store i64 %storemerge, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.j, %bb.i, %bb.h, %.noexc129
  %.sroa.0.0.i127 = phi i8 [ %i.er, %bb.j ], [ %switch.idx.cast.i.i.i, %bb.h ], [ %i.ep, %bb.i ], [ %i.ek, %.noexc129 ]
  %i.ew = icmp eq i8 %.sroa.0.0.i127, 13
  br i1 %i.ew, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eb, ptr %i.ex, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1350, ptr %i.ez, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134
  %i.fa = load i64, ptr %i.az, align 8, !alias.scope !106, !noundef !6
  %i.fb = icmp ne i64 %i.fa, 0
  %i.fc = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !106
  %i.fd = trunc nuw i8 %i.fc to i1
  %or.cond.i135 = select i1 %i.fb, i1 true, i1 %i.fd
  br i1 %or.cond.i135, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fe = load i8, ptr %i.aw, align 2, !range !5, !alias.scope !106, !noundef !6
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, label %bb.r

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread: ; preds = %bb.q
  %.not681502 = icmp eq ptr %.sroa.0.5, null
  br label %.preheader

bb.r:                                             ; preds = %bb.q
  %i.fg = load i64, ptr %i.ay, align 8, !alias.scope !106, !noundef !6
  %i.fh = icmp eq i64 %i.fg, 0
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137: ; preds = %bb.r, %bb.p
  %.sroa.0.0.i136 = phi i1 [ %i.fh, %bb.r ], [ false, %bb.p ]
  %.not68 = icmp eq ptr %.sroa.0.5, null          ; 2 uses
  %brmerge = or i1 %.not68, %.sroa.0.0.i136
  br i1 %brmerge, label %.preheader, label %bb.s

.preheader:                                       ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %.not681504 = phi i1 [ %.not681502, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread ], [ %.not68, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137 ]
  %i.fi = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %i.fi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %.lr.ph958.preheader

.lr.ph958.preheader:                              ; preds = %.preheader
  %i.fj = load i64, ptr %i.az, align 8, !alias.scope !107, !noundef !6
  %i.fk = icmp ne i64 %i.fj, 0
  %i.fl = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !107
  %i.fm = trunc nuw i8 %i.fl to i1
  %or.cond.i1412421 = select i1 %i.fk, i1 true, i1 %i.fm
  br i1 %or.cond.i1412421, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %.lr.ph2422

bb.s:                                             ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %5, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread319, label %bb.t

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread319: ; preds = %bb.s
  store i64 %.sroa.033.0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1350, ptr %i.fo, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0.5, ptr %i.fn, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(ptr null)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163: ; preds = %.lr.ph2422, %bb.el, %.lr.ph958, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153, %.lr.ph958.preheader, %.preheader, %bb.ev, %bb.eo
  %.sroa.0198.2 = phi ptr [ null, %bb.eo ], [ null, %bb.ev ], [ null, %.preheader ], [ null, %.lr.ph958.preheader ], [ %.sroa.5.0.i285, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153 ], [ null, %bb.el ], [ null, %.lr.ph2422 ], [ null, %.lr.ph958 ] ; 22 uses
  %.sroa.033.1 = phi i64 [ %.sroa.033.0, %bb.eo ], [ %i.og, %bb.ev ], [ %.sroa.033.0, %.preheader ], [ %.sroa.033.0, %.lr.ph958.preheader ], [ %.sroa.033.0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153 ], [ %.sroa.033.0, %.lr.ph958 ], [ %.sroa.033.0, %bb.el ], [ %.sroa.033.0, %.lr.ph2422 ] ; 6 uses
  %.sroa.0.1 = phi i8 [ 1, %bb.eo ], [ %spec.select, %bb.ev ], [ 1, %.preheader ], [ 0, %.lr.ph958.preheader ], [ 0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153 ], [ 1, %bb.el ], [ 0, %.lr.ph2422 ], [ 0, %.lr.ph958 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !110
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bi, align 8, !alias.scope !111 ; 2 uses
  %.sroa.63.0.copyload.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !alias.scope !111 ; 3 uses
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !111 ; 3 uses
  store i8 16, ptr %i.bi, align 8, !alias.scope !111
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !112
  store i8 %.sroa.0.0.copyload.i.i, ptr %i.ar, align 8, !noalias !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false), !noalias !113
  store ptr %.sroa.63.0.copyload.i.i, ptr %.sroa.63.0..sroa_idx4.i.i, align 8, !noalias !112
  store ptr %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx6.i.i, align 8, !noalias !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx.i.i, i64 40, i1 false), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !112
  invoke fastcc void @_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ar)
          to label %bb.ec unwind label %bb.eb, !noalias !114

.thread129.loopexit.i.i:                          ; preds = %bb.am, %bb.ak, %.split.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.fy, ptr %i.ao, align 8, !noalias !112
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.i.i:        ; preds = %bb.ae, %bb.ac, %.split.us.i.i.i.i
  %lpad.loopexit139.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.fy, ptr %i.ao, align 8, !noalias !112
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.noexc60.i.i, %bb.ax, %.noexc57.i.i, %.noexc56.i.i, %bb.au, %bb.ap, %.noexc55.i.i
  %i.fp = phi i64 [ %i.hm, %bb.ax ], [ %i.hm, %.noexc57.i.i ], [ %i.hm, %.noexc56.i.i ], [ %i.hm, %bb.au ], [ %i.fy, %bb.ap ], [ %i.fy, %.noexc55.i.i ], [ %i.hm, %.noexc60.i.i ]
  %lpad.loopexit148.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.fp, ptr %i.ao, align 8, !noalias !112
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ci, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE22take_handshake_messageCskaDheoimX9_18simple_0rtt_client.exit.i.i.i, %bb.az, %bb.av, %.split89.us.i.i.i.i, %.split82.us.i.i.i.i, %bb.x, %bb.w
  %.sroa.10.1.ph.ph.ph.ph.ph.i.i = phi ptr [ %.sroa.10.2.i.i, %bb.x ], [ %.sroa.10.2.i.i, %bb.w ], [ %i.jj, %bb.ci ], [ %.sroa.10.2.i.i, %.split89.us.i.i.i.i ], [ %.sroa.10.2.i.i, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE22take_handshake_messageCskaDheoimX9_18simple_0rtt_client.exit.i.i.i ], [ %.sroa.10.2.i.i, %bb.av ], [ %.sroa.10.2.i.i, %bb.az ], [ %.sroa.10.2.i.i, %.split82.us.i.i.i.i ]
  %.sroa.0.1.ph.ph.ph.ph.ph.i.i = phi ptr [ %.sroa.0.2.i.i, %bb.x ], [ %.sroa.0.2.i.i, %bb.w ], [ %i.jk, %bb.ci ], [ %.sroa.0.2.i.i, %.split89.us.i.i.i.i ], [ %.sroa.0.2.i.i, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE22take_handshake_messageCskaDheoimX9_18simple_0rtt_client.exit.i.i.i ], [ %.sroa.0.2.i.i, %bb.av ], [ %.sroa.0.2.i.i, %bb.az ], [ %.sroa.0.2.i.i, %.split82.us.i.i.i.i ]
  %lpad.loopexit152.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit: ; preds = %bb.ch, %.loopexit156.i.i
  %.sroa.10.1.ph.ph.ph.ph.ph150.i.i.ph = phi ptr [ %.sroa.10.3.i.i, %.loopexit156.i.i ], [ %i.jj, %bb.ch ]
  %.sroa.0.1.ph.ph.ph.ph.ph151.i.i.ph = phi ptr [ %.sroa.0.3.i.i, %.loopexit156.i.i ], [ %i.jk, %bb.ch ]
  %lpad.loopexit341 = landingpad { ptr, i32 }
          cleanup
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp: ; preds = %._crit_edge.i.i.i.i
  %lpad.loopexit.split-lp342 = landingpad { ptr, i32 }
          cleanup
  br label %.thread116.i.i

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.copyload.i.i), "nonnull"(ptr %.sroa.7.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !112
  %.val.i.i = load i64, ptr %i.bk, align 8, !alias.scope !111, !noundef !6 ; 2 uses
  store i64 %.val.i.i, ptr %i.ao, align 8, !noalias !112
  store i64 0, ptr %i.bl, align 8, !noalias !112
  br label %bb.w

bb.w:                                             ; preds = %bb.cj, %bb.v
  %.promoted.i.i = phi i64 [ %.val.i.i, %bb.v ], [ %i.jq, %bb.cj ] ; 3 uses
  %.sroa.10.2.i.i = phi ptr [ %.sroa.7.0.copyload.i.i, %bb.v ], [ %i.jj, %bb.cj ] ; 31 uses
  %.sroa.0.2.i.i = phi ptr [ %.sroa.63.0.copyload.i.i, %bb.v ], [ %i.jk, %bb.cj ] ; 27 uses
  %i.fq = invoke { ptr, i64 } @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer10filled_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.x unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !114 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0      ; 9 uses
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1      ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ft = invoke noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17has_message_ready(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc.i.i unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !114

.noexc.i.i:                                       ; preds = %bb.x
  br i1 %i.ft, label %bb.bc, label %bb.y

bb.y:                                             ; preds = %.noexc.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !119
  %i.fu = load i16, ptr %i.bm, align 8, !range !8, !alias.scope !120, !noundef !6
  %.not95.i.i.i.i = icmp eq i16 %i.fu, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !121
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fs
  store ptr %i.fr, ptr %i.ae, align 8, !noalias !121
  store ptr %i.fv, ptr %i.bn, align 8, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !121
  %i.fw = icmp ugt i64 %.promoted.i.i, %i.fs
  br i1 %i.fw, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !122

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.fx = ptrtoint ptr %i.fr to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ay, %.lr.ph.i.i.i.i
  %i.fy = phi i64 [ %.promoted.i.i, %.lr.ph.i.i.i.i ], [ %i.hm, %bb.ay ] ; 12 uses
  %i.fz = sub nuw nsw i64 %i.fs, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fy
  store ptr %i.ga, ptr %i.ad, align 8, !noalias !121
  store i64 %i.fz, ptr %i.bo, align 8, !noalias !121
  store i64 0, ptr %i.bp, align 8, !noalias !121
  br i1 %.not95.i.i.i.i, label %.split.i.i.i.i, label %.split.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.z, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !121
  invoke void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs8deframerNtB4_12DeframerIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.noexc45.i.i unwind label %.thread129.loopexit.split-lp.loopexit.i.i, !noalias !114

.noexc45.i.i:                                     ; preds = %.split.us.i.i.i.i
  %i.gb = load i8, ptr %i.ac, align 8, !range !123, !noalias !121, !noundef !6 ; 2 uses
  switch i8 %i.gb, label %.split82.us.i.i.i.i [
    i8 -2, label %.split84.us.i.i.i.i
    i8 -1, label %bb.aa
  ]

bb.aa:                                            ; preds = %.noexc45.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %i.gc = load i8, ptr %i.br, align 8, !range !9, !noalias !121, !noundef !6
  %cond.i.i.i.i = icmp eq i8 %i.gc, 0
  br i1 %cond.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gd = load i64, ptr %i.be, align 8, !alias.scope !120, !noundef !6 ; 2 uses
  %i.ge = icmp ult i64 %i.gd, 230584300921369396
  call void @llvm.assume(i1 %i.ge)
  %.not.us.i.i.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not.us.i.i.i.i, label %.split86.us.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !121
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer16decrypt_incoming(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc46.i.i unwind label %.thread129.loopexit.split-lp.loopexit.i.i, !noalias !114

.noexc46.i.i:                                     ; preds = %bb.ac
  %i.gf = load i8, ptr %i.z, align 8, !range !10, !noalias !121, !noundef !6
  %.not44.us.i.i.i.i = icmp eq i8 %i.gf, -1
  br i1 %.not44.us.i.i.i.i, label %bb.ad, label %.split89.us.i.i.i.i

bb.ad:                                            ; preds = %.noexc46.i.i
  %i.gg = load i16, ptr %i.bu, align 2, !range !8, !noalias !121, !noundef !6 ; 2 uses
  %.not45.us.i.i.i.i = icmp eq i16 %i.gg, -1
  br i1 %.not45.us.i.i.i.i, label %bb.ae, label %.split91.us.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.gh = invoke noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer10is_aligned(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc47.i.i unwind label %.thread129.loopexit.split-lp.loopexit.i.i, !noalias !114

.noexc47.i.i:                                     ; preds = %bb.ae
  br i1 %i.gh, label %bb.af, label %.split94.us.i.i.i.i

bb.af:                                            ; preds = %.noexc47.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !121
  br label %.split.us.i.i.i.i

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.ay
  store i64 %i.hm, ptr %i.ao, align 8, !noalias !112
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.y, %._crit_edge.i.i.loopexit.i.i
  %.lcssa67.i.i.i.i = phi i64 [ %i.hm, %._crit_edge.i.i.loopexit.i.i ], [ %.promoted.i.i, %bb.y ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa67.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.fs, i64 noundef range(i64 0, -9223372036854775808) %i.fs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13
          to label %.noexc48.i.i unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !114

.noexc48.i.i:                                     ; preds = %._crit_edge.i.i.i.i
  unreachable

.split.i.i.i.i:                                   ; preds = %bb.z, %bb.an
end_hunk_0
begin_hunk_1_@_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6client11client_conn20ClientConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client:bb.a

bb.ew:                                            ; preds = %bb.en, %bb.em, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit143.thread, %bb.ff
  %lpad.thr_comm.split-lp296 = landingpad { ptr, i32 }
          cleanup
  br label %.thread236

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153: ; preds = %bb.eu, %bb.et, %bb.es, %.noexc151
  %.sroa.0.0.i148 = phi i8 [ %i.of, %bb.eu ], [ %switch.idx.cast.i.i.i149, %bb.es ], [ %i.od, %bb.et ], [ %i.ny, %.noexc151 ]
  %i.oh = icmp eq i8 %.sroa.0.0.i148, 13
  br i1 %i.oh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %bb.ex

bb.ex:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i285) ]
  switch i64 %i.ns, label %default.unreachable [
    i64 2, label %bb.ey
    i64 3, label %bb.ez
    i64 0, label %bb.fa
    i64 1, label %bb.fb
  ], !prof !7

bb.ey:                                            ; preds = %bb.ex
  %i.oi = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc157 unwind label %bb.fg

.noexc157:                                        ; preds = %bb.ey
  %i.oj = lshr i64 %i.nr, 32
  %i.ok = trunc nuw i64 %i.oj to i32
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !nonnull !6, !noundef !6
  %i.on = invoke noundef i8 %i.om(i32 noundef %i.ok)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159 unwind label %bb.fg, !inline_history !27

bb.ez:                                            ; preds = %bb.ex
  %i.oo = lshr i64 %i.nr, 32
  %i.op = icmp ult ptr %.sroa.5.0.i285, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i155 = trunc i64 %i.oo to i8 ; 2 uses
  %i.oq = icmp ne i8 %switch.idx.cast.i.i.i155, -1
  call void @llvm.assume(i1 %i.op)
  call void @llvm.assume(i1 %i.oq)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

bb.fa:                                            ; preds = %bb.ex
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i285, i64 16
  %i.os = load i8, ptr %i.or, align 8, !range !105, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

bb.fb:                                            ; preds = %bb.ex
  %i.ot = getelementptr i8, ptr %.sroa.5.0.i285, i64 31
  %i.ou = load i8, ptr %i.ot, align 8, !range !105, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159: ; preds = %bb.fb, %bb.fa, %bb.ez, %.noexc157
  %.sroa.0.0.i154 = phi i8 [ %i.ou, %bb.fb ], [ %switch.idx.cast.i.i.i155, %bb.ez ], [ %i.os, %bb.fa ], [ %i.on, %.noexc157 ]
  %i.ov = icmp eq i8 %.sroa.0.0.i154, 35
  br i1 %i.ov, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i285, ptr %i.ow, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196

bb.fd:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i285) ]
  switch i64 %i.ns, label %default.unreachable [
    i64 2, label %.lr.ph958
    i64 3, label %bb.fe
    i64 0, label %.lr.ph958
    i64 1, label %bb.ff
  ], !prof !7

bb.fe:                                            ; preds = %bb.fd
  %i.ox = icmp ult ptr %.sroa.5.0.i285, inttoptr (i64 188978561024 to ptr)
  %i.oy = and i64 %i.nr, 1095216660480
  %i.oz = icmp ne i64 %i.oy, 1095216660480
  call void @llvm.assume(i1 %i.ox)
  call void @llvm.assume(i1 %i.oz)
  br label %.lr.ph958

bb.ff:                                            ; preds = %bb.fd
  %i.pa = getelementptr i8, ptr %.sroa.5.0.i285, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pa) ]
  store ptr %i.pa, ptr %i.bf, align 8, !alias.scope !168
  store i8 3, ptr %i.i, align 8, !alias.scope !168
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.lr.ph958 unwind label %bb.ew

.lr.ph958:                                        ; preds = %bb.fe, %bb.fd, %bb.fd, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.pb = load i64, ptr %i.az, align 8, !alias.scope !107, !noundef !6
  %i.pc = icmp ne i64 %i.pb, 0
  %i.pd = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !107
  %i.pe = trunc nuw i8 %i.pd to i1
  %or.cond.i141 = select i1 %i.pc, i1 true, i1 %i.pe
  br i1 %or.cond.i141, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %.lr.ph2422

bb.fg:                                            ; preds = %.noexc157, %.noexc151, %bb.er, %bb.ey
  %lpad.thr_comm295 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr %.sroa.5.0.i285) #16
          to label %.thread236 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fm, %bb.fk, %.thread236, %.split.thread, %bb.fg, %bb.gu, %bb.hb, %bb.hg, %bb.fr
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.fi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i, %bb.dx, %bb.dw, %bb.cx
  %.pr = load i8, ptr %i.av, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !110
  %.not = icmp eq i8 %.pr, -1
  br i1 %.not, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false)
  %i.pg = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %bb.fl unwind label %bb.fr     ; 2 uses

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc68.i.i, %.noexc69.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit82.i.i, %bb.fq
  %lpad.loopexit.split-lp2439 = landingpad { ptr, i32 }
          cleanup
  br label %.thread236

bb.fk:                                            ; preds = %bb.fm
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(i64 %i.ph, ptr %i.pi) #16
          to label %.thread236 unwind label %bb.fh

bb.fl:                                            ; preds = %bb.fj
  %i.ph = extractvalue { i64, ptr } %i.pg, 0      ; 2 uses
  %i.pi = extractvalue { i64, ptr } %i.pg, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false)
  %i.pj = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.at)
          to label %bb.fn unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.pk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(ptr null) #16
          to label %bb.fk unwind label %bb.fh

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pj, ptr %i.pl, align 8
  store i64 1, ptr %0, align 8
  %i.pm = icmp eq i64 %i.ph, 0
  br i1 %i.pm, label %bb.hc, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pi) ]
  %i.pn = ptrtoint ptr %i.pi to i64               ; 2 uses
  %i.po = and i64 %i.pn, 3
  switch i64 %i.po, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171
    i64 3, label %bb.fp
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171
    i64 1, label %bb.fq
  ], !prof !7

bb.fp:                                            ; preds = %bb.fo
  %i.pp = icmp ult ptr %i.pi, inttoptr (i64 188978561024 to ptr)
  %i.pq = and i64 %i.pn, 1095216660480
  %i.pr = icmp ne i64 %i.pq, 1095216660480
  call void @llvm.assume(i1 %i.pp)
  call void @llvm.assume(i1 %i.pr)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171

bb.fq:                                            ; preds = %bb.fo
  %i.ps = getelementptr i8, ptr %i.pi, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ps) ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ps, ptr %i.pt, align 8, !alias.scope !169
  store i8 3, ptr %i.h, align 8, !alias.scope !169
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pt)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171: ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.hc

bb.fr:                                            ; preds = %bb.fj
  %i.pu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.au) #16
          to label %.thread236 unwind label %bb.fh

bb.fs:                                            ; preds = %.thread301, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %.val89 = load i64, ptr %i.ay, align 8, !noundef !6
  %i.pv = icmp ne i64 %.val89, 0                  ; 2 uses
  %.not71 = icmp eq ptr %.sroa.0198.2, null       ; 2 uses
  %brmerge3 = or i1 %.not71, %i.pv
  br i1 %brmerge3, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  br i1 %4, label %bb.fw, label %bb.fx

bb.fu:                                            ; preds = %bb.fs
  %i.pw = icmp eq i64 %.sroa.033.1, 0
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.pw, label %bb.fv, label %.thread313

.thread313:                                       ; preds = %bb.fu
  store i64 %.sroa.033.1, ptr %i.px, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1350, ptr %i.py, align 8
  store i64 0, ptr %0, align 8
  br label %bb.hd

bb.fv:                                            ; preds = %bb.fu
  store ptr %.sroa.0198.2, ptr %i.px, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196

bb.fw:                                            ; preds = %bb.fx, %bb.ft
  %i.pz = call { ptr, ptr } @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE3zipBI_ECskaDheoimX9_18simple_0rtt_client(ptr noundef %.sroa.0.5, ptr noundef %.sroa.0198.2) ; 2 uses
  %i.qa = extractvalue { ptr, ptr } %i.pz, 0      ; 9 uses
  %i.qb = extractvalue { ptr, ptr } %i.pz, 1      ; 12 uses
  %.val = load i8, ptr %i.aw, align 2, !range !5, !noundef !6
  %.val83 = load i8, ptr %i.ax, align 1
  %6 = trunc nuw i8 %.val to i1
  %i.qc = trunc nuw i8 %.val83 to i1
  %7 = select i1 %6, i1 %i.qc, i1 false
  %.sroa.0.0.i182 = xor i1 %7, true               ; 2 uses
  %or.cond7 = select i1 %4, i1 true, i1 %.sroa.0.0.i182
  br i1 %or.cond7, label %bb.gf, label %bb.gg

bb.fx:                                            ; preds = %bb.ft
  %.val84 = load i8, ptr %i.aw, align 2, !range !5, !noundef !6
  %.val85 = load i8, ptr %i.ax, align 1
  %i.qd = trunc nuw i8 %.val84 to i1
  %i.qe = trunc nuw i8 %.val85 to i1
  %i.qf = select i1 %i.qd, i1 %i.qe, i1 false
  %brmerge329.demorgan = and i1 %i.pv, %i.qf
  br i1 %brmerge329.demorgan, label %bb.fy, label %bb.fw

bb.fy:                                            ; preds = %bb.fx
  br i1 %.not71, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit178, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.qg = ptrtoint ptr %.sroa.0198.2 to i64       ; 2 uses
  %i.qh = and i64 %i.qg, 3
  switch i64 %i.qh, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175
    i64 3, label %bb.ga
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175
    i64 1, label %bb.gb
  ], !prof !7

bb.ga:                                            ; preds = %bb.fz
  %i.qi = icmp ult ptr %.sroa.0198.2, inttoptr (i64 188978561024 to ptr)
  %i.qj = and i64 %i.qg, 1095216660480
  %i.qk = icmp ne i64 %i.qj, 1095216660480
  call void @llvm.assume(i1 %i.qi)
  call void @llvm.assume(i1 %i.qk)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175

bb.gb:                                            ; preds = %bb.fz
  %i.ql = getelementptr i8, ptr %.sroa.0198.2, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ql) ]
  store ptr %i.ql, ptr %i.dg, align 8, !alias.scope !170
  store i8 3, ptr %i.g, align 8, !alias.scope !170
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175: ; preds = %bb.gb, %bb.ga, %bb.fz, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit178

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit178: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175, %bb.fy
  br i1 %.not681504, label %.backedge.backedge, label %bb.gc

bb.gc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.qm = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.qn = and i64 %i.qm, 3
  switch i64 %i.qn, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i179
    i64 3, label %bb.gd
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i179
    i64 1, label %bb.ge
  ], !prof !7

bb.gd:                                            ; preds = %bb.gc
  %i.qo = icmp ult ptr %.sroa.0.5, inttoptr (i64 188978561024 to ptr)
  %i.qp = and i64 %i.qm, 1095216660480
  %i.qq = icmp ne i64 %i.qp, 1095216660480
  call void @llvm.assume(i1 %i.qo)
  call void @llvm.assume(i1 %i.qq)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i179

bb.ge:                                            ; preds = %bb.gc
  %i.qr = getelementptr i8, ptr %.sroa.0.5, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qr) ]
  store ptr %i.qr, ptr %i.dh, align 8, !alias.scope !171
  store i8 3, ptr %i.f, align 8, !alias.scope !171
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dh)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i179

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i179: ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge.backedge

bb.gf:                                            ; preds = %bb.fw
  %i.qs = icmp ne ptr %i.qa, null                 ; 2 uses
  %i.qt = or i64 %.sroa.033.1, %.sroa.021.1350
  %i.qu = icmp eq i64 %i.qt, 0
  %or.cond19 = select i1 %i.qs, i1 %i.qu, i1 false
  br i1 %or.cond19, label %bb.gj, label %bb.gi

bb.gg:                                            ; preds = %bb.fw
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.1, ptr %i.qv, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1350, ptr %i.qw, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gq, %bb.gn, %bb.gg
  %.sink = phi i64 [ 1, %bb.gq ], [ 0, %bb.gn ], [ 0, %bb.gg ]
  store i64 %.sink, ptr %0, align 8
  %.not73 = icmp eq ptr %i.qa, null
  br i1 %.not73, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125, label %bb.gy

bb.gi:                                            ; preds = %bb.gf
  br i1 %4, label %bb.gn, label %bb.go

bb.gj:                                            ; preds = %bb.gf
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qa, ptr %i.qx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qb) ]
  %i.qy = ptrtoint ptr %i.qb to i64               ; 2 uses
  %i.qz = and i64 %i.qy, 3
  switch i64 %i.qz, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit184
    i64 3, label %bb.gl
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit184
    i64 1, label %bb.gm
  ], !prof !7

bb.gl:                                            ; preds = %bb.gk
  %i.ra = icmp ult ptr %i.qb, inttoptr (i64 188978561024 to ptr)
  %i.rb = and i64 %i.qy, 1095216660480
  %i.rc = icmp ne i64 %i.rb, 1095216660480
  call void @llvm.assume(i1 %i.ra)
  call void @llvm.assume(i1 %i.rc)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit184

bb.gm:                                            ; preds = %bb.gk
  %i.rd = getelementptr i8, ptr %i.qb, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rd) ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.rd, ptr %i.re, align 8, !alias.scope !172
  store i8 3, ptr %i.e, align 8, !alias.scope !172
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.re)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit184

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit184: ; preds = %bb.gk, %bb.gk, %bb.gl, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125

bb.gn:                                            ; preds = %bb.gi
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.1, ptr %i.rf, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1350, ptr %i.rg, align 8
  br label %bb.gh

bb.go:                                            ; preds = %bb.gi
  %i.rh = trunc nuw i8 %.sroa.0.1 to i1
  %or.cond10 = select i1 %i.rh, i1 %.sroa.0.0.i182, i1 false
  br i1 %or.cond10, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  br i1 %i.qs, label %bb.gr, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.gp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit189, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i179, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit178
  br label %.backedge

bb.gq:                                            ; preds = %bb.go
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 158913789955 to ptr), ptr %i.ri, align 8
  br label %bb.gh

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.rj = ptrtoint ptr %i.qa to i64               ; 2 uses
  %i.rk = and i64 %i.rj, 3
  switch i64 %i.rk, label %default.unreachable [
    i64 2, label %bb.gv
    i64 3, label %bb.gs
    i64 0, label %bb.gv
    i64 1, label %bb.gt
  ], !prof !7

bb.gs:                                            ; preds = %bb.gr
  %i.rl = icmp ult ptr %i.qa, inttoptr (i64 188978561024 to ptr)
  %i.rm = and i64 %i.rj, 1095216660480
  %i.rn = icmp ne i64 %i.rm, 1095216660480
  call void @llvm.assume(i1 %i.rl)
  call void @llvm.assume(i1 %i.rn)
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gr
  %i.ro = getelementptr i8, ptr %i.qa, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ro) ]
  store ptr %i.ro, ptr %i.di, align 8, !alias.scope !173
  store i8 3, ptr %i.d, align 8, !alias.scope !173
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %bb.gv unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qb) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr nonnull %i.qb) #16
          to label %.thread253 unwind label %bb.fh

bb.gv:                                            ; preds = %bb.gs, %bb.gr, %bb.gr, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qb) ]
  %i.rq = ptrtoint ptr %i.qb to i64               ; 2 uses
  %i.rr = and i64 %i.rq, 3
  switch i64 %i.rr, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit189
    i64 3, label %bb.gw
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit189
    i64 1, label %bb.gx
  ], !prof !7

bb.gw:                                            ; preds = %bb.gv
  %i.rs = icmp ult ptr %i.qb, inttoptr (i64 188978561024 to ptr)
  %i.rt = and i64 %i.rq, 1095216660480
  %i.ru = icmp ne i64 %i.rt, 1095216660480
  call void @llvm.assume(i1 %i.rs)
  call void @llvm.assume(i1 %i.ru)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit189

bb.gx:                                            ; preds = %bb.gv
  %i.rv = getelementptr i8, ptr %i.qb, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rv) ]
  store ptr %i.rv, ptr %i.dj, align 8, !alias.scope !174
  store i8 3, ptr %i.c, align 8, !alias.scope !174
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dj)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit189

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit189: ; preds = %bb.gv, %bb.gv, %bb.gw, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge

.thread253:                                       ; preds = %.split.thread, %bb.gu, %bb.hb
  %.pn80.pn = phi { ptr, i32 } [ %.pn80258, %.split.thread ], [ %i.rp, %bb.gu ], [ %i.sd, %bb.hb ]
  resume { ptr, i32 } %.pn80.pn

bb.gy:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.rw = ptrtoint ptr %i.qa to i64               ; 2 uses
  %i.rx = and i64 %i.rw, 3
  switch i64 %i.rx, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit192
    i64 3, label %bb.gz
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit192
    i64 1, label %bb.ha
  ], !prof !7

bb.gz:                                            ; preds = %bb.gy
  %i.ry = icmp ult ptr %i.qa, inttoptr (i64 188978561024 to ptr)
  %i.rz = and i64 %i.rw, 1095216660480
  %i.sa = icmp ne i64 %i.rz, 1095216660480
  call void @llvm.assume(i1 %i.ry)
  call void @llvm.assume(i1 %i.sa)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit192

bb.ha:                                            ; preds = %bb.gy
  %i.sb = getelementptr i8, ptr %i.qa, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sb) ]
  %i.sc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.sb, ptr %i.sc, align 8, !alias.scope !175
  store i8 3, ptr %i.b, align 8, !alias.scope !175
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit192 unwind label %bb.hb

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit192: ; preds = %bb.ha, %bb.gy, %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.gk

bb.hb:                                            ; preds = %bb.ha
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qb) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr nonnull %i.qb) #16
          to label %.thread253 unwind label %bb.fh

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125: ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread, %bb.gh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit184, %.thread265, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123
  ret void

bb.hc:                                            ; preds = %bb.fn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.se = icmp eq ptr %.sroa.0198.2, null
  br i1 %i.se, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196, label %bb.hd

bb.hd:                                            ; preds = %.thread313, %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.sf = ptrtoint ptr %.sroa.0198.2 to i64       ; 2 uses
  %i.sg = and i64 %i.sf, 3
  switch i64 %i.sg, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i193
    i64 3, label %bb.he
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i193
    i64 1, label %bb.hf
  ], !prof !7

bb.he:                                            ; preds = %bb.hd
  %i.sh = icmp ult ptr %.sroa.0198.2, inttoptr (i64 188978561024 to ptr)
  %i.si = and i64 %i.sf, 1095216660480
  %i.sj = icmp ne i64 %i.si, 1095216660480
  call void @llvm.assume(i1 %i.sh)
  call void @llvm.assume(i1 %i.sj)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i193

bb.hf:                                            ; preds = %bb.hd
  %i.sk = getelementptr i8, ptr %.sroa.0198.2, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sk) ]
  %i.sl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.sk, ptr %i.sl, align 8, !alias.scope !176
  store i8 3, ptr %i.a, align 8, !alias.scope !176
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sl)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i193 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i193: ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196

bb.hg:                                            ; preds = %.noexc129, %bb.g
  %i.sm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr nonnull %i.eb) #16
          to label %.thread236 unwind label %bb.fh

.thread236:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp, %.thread244.loopexit.split-lp.loopexit.split-lp.loopexit, %bb.fk, %bb.ew, %bb.hg, %bb.fg, %bb.fr, %bb.ea, %.thread116.i.i, %bb.dz, %bb.dy, %.body79.i.i, %bb.cl, %.thread.i.i.i, %bb.bv, %bb.bu
  %.pn77.pn228 = phi { ptr, i32 } [ %eh.lpad-body80.i.i, %.body79.i.i ], [ %i.pu, %bb.fr ], [ %i.md, %bb.dy ], [ %i.md, %bb.dz ], [ %.pn38.i.i, %bb.ea ], [ %.pn35.pn115.i.i, %.thread116.i.i ], [ %.pn.i.i, %bb.cl ], [ %.pn39.i.i.i, %.thread.i.i.i ], [ %i.iu, %bb.bu ], [ %i.iu, %bb.bv ], [ %i.pk, %bb.fk ], [ %i.sm, %bb.hg ], [ %lpad.thr_comm.split-lp296, %bb.ew ], [ %lpad.thr_comm295, %bb.fg ], [ %lpad.loopexit339, %.thread244.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp2439, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0.0218227 = phi ptr [ %.sroa.0.5, %.body79.i.i ], [ %.sroa.0.5, %bb.fr ], [ %.sroa.0.5, %bb.dy ], [ %.sroa.0.5, %bb.dz ], [ %.sroa.0.5, %bb.ea ], [ %.sroa.0.5, %.thread116.i.i ], [ %.sroa.0.5, %bb.cl ], [ %.sroa.0.5, %.thread.i.i.i ], [ %.sroa.0.5, %bb.bu ], [ %.sroa.0.5, %bb.bv ], [ %.sroa.0.5, %bb.fk ], [ null, %bb.hg ], [ %.sroa.0.5, %bb.ew ], [ %.sroa.0.5, %bb.fg ], [ null, %.thread244.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.5, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0198.0226 = phi ptr [ %.sroa.0198.2, %.body79.i.i ], [ %.sroa.0198.2, %bb.fr ], [ %.sroa.0198.2, %bb.dy ], [ %.sroa.0198.2, %bb.dz ], [ %.sroa.0198.2, %bb.ea ], [ %.sroa.0198.2, %.thread116.i.i ], [ %.sroa.0198.2, %bb.cl ], [ %.sroa.0198.2, %.thread.i.i.i ], [ %.sroa.0198.2, %bb.bu ], [ %.sroa.0198.2, %bb.bv ], [ %.sroa.0198.2, %bb.fk ], [ null, %bb.hg ], [ null, %bb.ew ], [ null, %bb.fg ], [ null, %.thread244.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0198.2, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(ptr %.sroa.0198.0226) #16
          to label %.split.thread unwind label %bb.fh

.split.thread:                                    ; preds = %.split.thread.loopexit.split-lp.loopexit.split-lp, %.thread236
  %.pn80258 = phi { ptr, i32 } [ %.pn77.pn228, %.thread236 ], [ %lpad.loopexit.split-lp, %.split.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0.2220257 = phi ptr [ %.sroa.0.0218227, %.thread236 ], [ %.sroa.0.5, %.split.thread.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(ptr %.sroa.0.2220257) #16
          to label %.thread253 unwind label %bb.fh
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECskaDheoimX9_18simple_0rtt_client.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeEECskaDheoimX9_18simple_0rtt_client.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
end_hunk_1
