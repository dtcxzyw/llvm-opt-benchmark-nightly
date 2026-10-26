Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_hdfs-9e610bd23df1695c.deltalake_hdfs.4e8f5aff5937decc-cgu.07?download=true
inline.NumInlined: 60
inline.NumDeleted: 41
begin_hunk_0_@_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !5, !noundef !3 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit, !prof !4

_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true                ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread

_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread: ; preds = %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit ], [ %i.d, %bb.b ]
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit ], [ 8192, %bb.b ]
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit ], [ false, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.ad, label %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread_crit_edge

._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread

bb.f:                                             ; preds = %bb.z, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread
  %i.ae = phi i64 [ %.pre, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread ], [ %i.cf, %bb.z ] ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread ], [ %i.cc, %bb.z ]
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread ], [ %.sroa.050.4, %bb.z ] ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.thread ], [ %.sroa.019.1, %bb.z ]
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = load i64, ptr %1, align 8, !range !5, !noundef !3 ; 3 uses
  %i.ah = icmp eq i64 %i.ae, %i.ag
  %i.ai = icmp eq i64 %i.ag, %i.f
  %or.cond62 = and i1 %i.ah, %i.ai
  br i1 %or.cond62, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aj = phi i64 [ %.pre127, %._crit_edge ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ak = phi i64 [ %.pre126, %._crit_edge ], [ %i.ae, %bb.f ] ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, %i.aj
  br i1 %i.am, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.an = call fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 2 uses
  %i.aq = trunc nuw i64 %i.ao to i1
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.as = icmp eq ptr %i.ap, null
  %.pre126 = load i64, ptr %i.c, align 8          ; 3 uses
  br i1 %i.as, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre127 = load i64, ptr %1, align 8, !range !5
  br label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.at = icmp sgt i64 %.pre126, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = sub nsw i64 %.pre126, %i.d
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.av = call { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aj, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %.not = icmp eq i64 %i.aw, -9223372036854775807
  br i1 %.not, label %._crit_edge128, label %.loopexit

._crit_edge128:                                   ; preds = %bb.l
  %.pre129 = load i64, ptr %i.c, align 8
  %.pre130 = load i64, ptr %1, align 8, !range !5
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge128, %bb.g
  %i.ax = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.aj, %bb.g ]
  %i.ay = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.ak, %bb.g ] ; 5 uses
  %i.az = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  %i.bb = sub i64 %i.ax, %i.ay
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.bb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ba, ptr %i.b, align 8
  store i64 %.sroa.0.0.i, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  store i64 %.sroa.048.2, ptr %i.t, align 8
  %i.bc = load i64, ptr %i.u, align 8, !alias.scope !21, !noundef !3 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.m
  %i.be = icmp sgt i64 %i.ay, -1
  call void @llvm.assume(i1 %i.be)
  store i64 %i.ay, ptr %i.c, align 8
  br label %.loopexit150

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit
  %i.bf = phi i64 [ %i.dd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit ], [ %i.bc, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.bg = load i64, ptr %i.r, align 8, !alias.scope !23, !noundef !3
  %i.bh = load i64, ptr %i.s, align 8, !alias.scope !23, !noundef !3 ; 6 uses
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bf, %i.bi
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bk = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.bl = load i64, ptr %i.s, align 8, !alias.scope !23, !noundef !3 ; 2 uses
  %.neg.i = sub i64 %i.bh, %i.bl
  %i.bm = load i64, ptr %i.u, align 8, !alias.scope !22, !noundef !3
  %i.bn = add i64 %.neg.i, %i.bm
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bo = load i64, ptr %i.t, align 8, !alias.scope !23, !noundef !3 ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %i.bh
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bf)
  %i.bq = load ptr, ptr %i.b, align 8, !alias.scope !23, !nonnull !3, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  store ptr %i.br, ptr %i.a, align 8, !noalias !24
  store i64 %i.bf, ptr %i.w, align 8, !noalias !24
  store i64 0, ptr %i.x, align 8, !noalias !24
  store i64 %.sroa.0.0.i.i, ptr %i.y, align 8, !noalias !24
  %i.bs = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !23
  %i.bt = load i64, ptr %i.x, align 8, !noalias !24, !noundef !3 ; 2 uses
  %i.bu = load i64, ptr %i.y, align 8, !noalias !24, !noundef !3
  %i.bv = add i64 %i.bt, %i.bh                    ; 3 uses
  store i64 %i.bv, ptr %i.s, align 8, !alias.scope !23
  %.sroa.0.0.i4.i = call noundef i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bo)
  %i.bw = add i64 %i.bu, %i.bh
  %.sroa.0.0.i5.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %.sroa.0.0.i4.i)
  store i64 %.sroa.0.0.i5.i, ptr %i.t, align 8, !alias.scope !23
  %i.bx = load i64, ptr %i.u, align 8, !alias.scope !22, !noundef !3
  %i.by = sub i64 %i.bx, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.n, %bb.o
  %.pre132137 = phi i64 [ %i.bv, %bb.o ], [ %i.bl, %bb.n ]
  %.sink = phi i64 [ %i.by, %bb.o ], [ %i.bn, %bb.n ] ; 4 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bs, %bb.o ], [ %i.bk, %bb.n ] ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !alias.scope !22
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null      ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit, label %bb.p

bb.p:                                             ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit
  %i.bz = ptrtoint ptr %.sroa.0.0.i65 to i64      ; 3 uses
  %i.ca = and i64 %i.bz, 3
  switch i64 %i.ca, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.q
    i64 0, label %.split100
    i64 1, label %.split99
  ], !prof !6

default.unreachable:                              ; preds = %bb.p
  unreachable

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit, %bb.q, %.split, %.split99, %.split100
  %i.cb = ptrtoint ptr %.sroa.0.0.i65 to i64
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit
  %.pre132 = phi i64 [ %.pre132.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexit_crit_edge ], [ %.pre132137, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit ] ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexit_crit_edge ], [ %i.cb, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit ]
  %.pre133 = load i64, ptr %i.t, align 8          ; 2 uses
  %.pre134 = load i64, ptr %i.c, align 8          ; 2 uses
  %i.cc = sub nuw i64 %.pre133, %.pre132
  %i.cd = icmp ne i64 %.pre133, %.sroa.0.0.i
  %i.ce = icmp sgt i64 %.pre134, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add i64 %.pre134, %.pre132              ; 3 uses
  store i64 %i.cf, ptr %i.c, align 8
  br i1 %.not6081.ph, label %bb.x, label %.loopexit149

.split:                                           ; preds = %bb.p
  %.mask103 = and i64 %i.bz, -4294967296
  %i.cg = icmp eq i64 %.mask103, 17179869184
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit

.split100:                                        ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !range !7, !noundef !3
  %i.cj = icmp eq i8 %i.ci, 35
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit

.split99:                                         ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr i8, ptr %.sroa.0.0.i65, i64 15
  %i.cm = load i8, ptr %i.cl, align 8, !range !7, !noundef !3
  %i.cn = icmp eq i8 %i.cm, 35
  br i1 %i.cn, label %bb.r, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit

bb.q:                                             ; preds = %bb.p
  %i.co = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.co)
  %.mask = and i64 %i.bz, -4294967296
  %i.cp = icmp eq i64 %.mask, 150323855360
  br i1 %i.cp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexitsplit

bb.r:                                             ; preds = %.split99
  %.val.i.i.i.i.i = load ptr, ptr %i.ck, align 8  ; 5 uses
  %i.cq = getelementptr i8, ptr %.sroa.0.0.i65, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !nonnull !3, !align !8, !noundef !3 ; 5 uses
  %i.cr = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cr(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !5, !invariant.load !3 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !9, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !5, !invariant.load !3 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !9, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #15
  br label %.body

.body:                                            ; preds = %bb.w, %bb.v
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #15
  resume { ptr, i32 } %i.cx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #15
  %.pre131 = load i64, ptr %i.u, align 8, !alias.scope !25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.q, %.split, %.split100, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i.i
  %i.dd = phi i64 [ %.sink, %bb.q ], [ %.sink, %.split ], [ %.sink, %.split100 ], [ %.pre131, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i.i ] ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexit_crit_edge, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs.exit
  %.pre132.pre = load i64, ptr %i.s, align 8
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread

bb.x:                                             ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread
  %i.df = icmp eq i64 %.pre132, 0
  br i1 %i.df, label %.loopexit150, label %bb.y

.loopexit150:                                     ; preds = %bb.x, %.thread
  %i.dg = phi i64 [ %i.ay, %.thread ], [ %i.cf, %bb.x ]
  %i.dh = sub nsw i64 %i.dg, %i.d
  br label %.loopexit149

bb.y:                                             ; preds = %bb.x
  %i.di = icmp ult i64 %.pre132, %.sroa.0.0.i
  %i.dj = add i32 %.sroa.019.0, 1
  %.sroa.019.1 = select i1 %i.di, i32 %i.dj, i32 0 ; 2 uses
  br i1 %.sroa.013.1, label %bb.aa, label %bb.z

.loopexit149:                                     ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread, %.loopexit150
  %.sroa.8.0 = phi i64 [ %i.dh, %.loopexit150 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread ]
  %.sroa.010.0 = phi i64 [ 0, %.loopexit150 ], [ 1, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs6KaIMXx2hZw_14deltalake_hdfs.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.z:                                             ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  %.sroa.050.4 = phi i64 [ -1, %bb.ac ], [ %i.dn, %bb.ab ], [ %spec.select, %bb.aa ], [ %.sroa.050.3, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.aa:                                            ; preds = %bb.y
  %i.dk = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.cd, i1 %i.dk, i1 false
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3 ; 4 uses
  %i.dl = icmp uge i64 %.sroa.0.0.i, %spec.select
  %i.dm = icmp eq i64 %.pre132, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dm, %i.dl
  br i1 %or.cond2, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.dn = shl nuw i64 %spec.select, 1
  %i.do = icmp slt i64 %spec.select, 0
  br i1 %i.do, label %bb.ac, label %bb.z, !prof !4

bb.ac:                                            ; preds = %bb.ab
  br label %bb.z

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit149
  %.sroa.8.1 = phi i64 [ %i.ar, %bb.i ], [ %i.au, %bb.k ], [ %.sroa.8.0, %.loopexit149 ], [ 163208757251, %bb.l ]
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit149 ], [ 1, %bb.l ]
  %i.dp = inttoptr i64 %.sroa.8.1 to ptr
  br label %bb.ad

bb.ad:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dp, %.loopexit ], [ %i.ab, %bb.d ], [ null, %bb.e ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ]
  %i.dq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0
  %i.dr = insertvalue { i64, ptr } %i.dq, ptr %.sroa.8.2, 1
  ret { i64, ptr } %i.dr
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs(ptr nonnull %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs6KaIMXx2hZw_14deltalake_hdfs.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs6KaIMXx2hZw_14deltalake_hdfs.exit
    i64 1, label %bb.c
  ], !prof !6

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !3, !align !8, !noundef !3 ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #15
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs6KaIMXx2hZw_14deltalake_hdfs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !30, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.noexc, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit ]
  %.sroa.0.0.i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.f, i64 32)
  %i.g = call { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias noundef nonnull %i.a, i64 noundef %.sroa.0.0.i.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 14 uses
  %i.j = trunc nuw i64 %i.h to i1
  %i.k = ptrtoint ptr %i.i to i64                 ; 5 uses
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !alias.scope !30, !noundef !3 ; 2 uses
  %.not.i = icmp ult i64 %i.l, %i.k
  br i1 %.not.i, label %bb.d, label %.loopexit, !prof !4

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = and i64 %i.k, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.i
    i64 0, label %.split36
    i64 1, label %.split35
  ], !prof !6

default.unreachable:                              ; preds = %bb.e
  unreachable

.loopexit:                                        ; preds = %bb.c
  %i.n = sub nuw i64 %i.l, %i.k
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !30
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = icmp ult ptr %i.i, inttoptr (i64 33 to ptr)
  br i1 %i.p, label %.noexc, label %bb.f, !prof !31

bb.f:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

.noexc:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, %bb.a, %.loopexit
  %i.q = phi i64 [ %i.o, %.loopexit ], [ 0, %bb.a ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit ] ; 3 uses
  %.sroa.4.0.i.ph55 = phi ptr [ %i.i, %.loopexit ], [ null, %bb.a ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit ] ; 2 uses
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !32, !noundef !3 ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  %.not.i5 = icmp eq ptr %.sroa.4.0.i.ph55, null
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !32, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.a, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.r, align 8, !alias.scope !32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc
  %i.x = phi i64 [ %.pre.i, %bb.g ], [ %i.s, %.noexc ]
  %i.y = add i64 %i.x, %i.q
  store i64 %i.y, ptr %i.r, align 8, !alias.scope !32
  br label %.loopexit38

.loopexit38:                                      ; preds = %bb.i, %.split, %.split35, %.split36, %bb.h
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph55, %bb.h ], [ %i.i, %.split36 ], [ %i.i, %.split35 ], [ %i.i, %.split ], [ %i.i, %bb.i ]
  %.sroa.0.0 = phi i64 [ 0, %bb.h ], [ 1, %.split36 ], [ 1, %.split35 ], [ 1, %.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aa = insertvalue { i64, ptr } %i.z, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.aa

.split:                                           ; preds = %bb.e
  %.mask37 = and i64 %i.k, -4294967296
  %i.ab = icmp eq i64 %.mask37, 17179869184
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit38

.split36:                                         ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !7, !noundef !3
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit38

.split35:                                         ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.i, i64 15
  %i.ag = load i8, ptr %i.af, align 8, !range !7, !noundef !3
  %i.ah = icmp eq i8 %i.ag, 35
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit38

bb.i:                                             ; preds = %bb.e
  %i.ai = icmp ult ptr %i.i, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ai)
  %.mask = and i64 %i.k, -4294967296
  %i.aj = icmp eq i64 %.mask, 150323855360
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %.loopexit38

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %.split36, %.split35, %.split, %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs(ptr nonnull %i.i)
  %i.ak = load i64, ptr %i.b, align 8, !alias.scope !30, !noundef !3 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.noexc, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4o_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callB6o_NCINvMsj_NtB4V_3vecINtB8L_3VecB6o_E14extend_trustedBN_E0E0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5Q_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB6n_3vecINtB92_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.s = load ptr, ptr %i.n, align 8, !noalias !48, !nonnull !3, !noundef !3
  %i.t = load i64, ptr %i.o, align 8, !noalias !48, !noundef !3
  %i.u = invoke noundef i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3O_ENtNtB5_6marker4SendEL_EEE000ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !49

.noexc.i:                                         ; preds = %bb.c
  %i.v = add i64 %i.u, -1                         ; 5 uses
  %i.w = load i64, ptr %i.o, align 8, !noalias !50, !noundef !3 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %.invoke

bb.d:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.p, align 8, !noalias !50, !noundef !3 ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i, label %.invoke

.invoke:                                          ; preds = %bb.d, %.noexc.i
  %i.aa = phi i64 [ %i.w, %.noexc.i ], [ %i.y, %bb.d ]
  %i.ab = phi ptr [ @6, %.noexc.i ], [ @7, %bb.d ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #16
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !49

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !50, !nonnull !3, !noundef !3
  %i.ad = load ptr, ptr %i.n, align 8, !noalias !50, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !alias.scope !51, !noalias !49, !noundef !3
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !52, !noundef !3 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !51, !noalias !49, !noundef !3
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !52, !noundef !3
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.al)
  invoke void @_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ai, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !49

bb.e:                                             ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !53
  %i.ap = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5Q_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB6n_3vecINtB92_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2w_ENtNtB2M_6marker4SendEL_EEE00Cs6KaIMXx2hZw_14deltalake_hdfs.exit.i.i, %.invoke
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !49
  resume { ptr, i32 } %lpad.loopexit.split-lp58

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtCs9JG0qWP2oqR_24hdfs_native_object_store15HdfsObjectStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5Q_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB6n_3vecINtB92_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ap, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !49
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1P_ENCINvMs6_NtCs387lRdTAbEW_11hdfs_native6clientNtB2F_13ClientBuilder11with_configRB1P_B3N_RINtB10_7HashMapB1P_B1P_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4o_8for_each4callTB1P_B1P_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5L_7HashMapB1P_B1P_NtNtNtB16_4hash6random11RandomStateEINtNtB4s_7collect6ExtendB5r_E6extendBN_E0E0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBL_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters3map8map_foldTRBL_B32_ETBL_BL_EuNCINvMs6_NtCs387lRdTAbEW_11hdfs_native6clientNtB3t_13ClientBuilder11with_configB32_B32_RINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBL_BL_EE0NCINvNvB1r_8for_each4callB3b_NCINvXs1i_B6_INtB6_7HashMapBL_BL_NtNtNtB4T_4hash6random11RandomStateEINtNtB1v_7collect6ExtendB3b_E6extendINtB2x_3MapINtB4N_4IterBL_BL_EB3k_EE0E0E0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.d = icmp eq ptr %.val, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs(ptr nonnull %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !58
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !58
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !58
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !58
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !3, !noundef !3
  %i.ac = call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !59 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !59, !noundef !3 ; 2 uses
  %i.ae = icmp eq ptr %.val.i, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs6KaIMXx2hZw_14deltalake_hdfs(ptr nonnull %.val.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i unwind label %bb.j, !noalias !59

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !59
  resume { ptr, i32 } %i.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i: ; preds = %bb.i, %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !59
  br label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs6KaIMXx2hZw_14deltalake_hdfs.exit

_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCs6KaIMXx2hZw_14deltalake_hdfs.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !60
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #4
end_hunk_1
