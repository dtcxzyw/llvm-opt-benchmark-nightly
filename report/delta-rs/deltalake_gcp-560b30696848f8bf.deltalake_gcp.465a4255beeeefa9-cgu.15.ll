Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_gcp-560b30696848f8bf.deltalake_gcp.465a4255beeeefa9-cgu.15?download=true
inline.NumInlined: 109
inline.NumDeleted: 72
begin_hunk_0_@_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs62u4JVtZyFF_13deltalake_gcp:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %i.h, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit, !prof !4

_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not102 = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not102, i64 8192, i64 %i.m
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true                ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread

_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread: ; preds = %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit ], [ %i.d, %bb.b ]
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit ], [ 8192, %bb.b ]
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit ], [ false, %bb.b ]
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
  %i.z = tail call fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.ad, label %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread_crit_edge

._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread

bb.f:                                             ; preds = %bb.z, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread
  %i.ae = phi i64 [ %.pre, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread ], [ %i.cf, %bb.z ] ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread ], [ %i.cc, %bb.z ]
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread ], [ %.sroa.050.4, %bb.z ] ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread ], [ %.sroa.019.1, %bb.z ]
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
  %i.an = call fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
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
  %i.av = call { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aj, i64 noundef 32, i64 noundef 1, i64 noundef 1)
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

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.bf = phi i64 [ %i.dd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %i.bc, %bb.m ] ; 3 uses
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
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit

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
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.n, %bb.o
  %.pre132137 = phi i64 [ %i.bv, %bb.o ], [ %i.bl, %bb.n ]
  %.sink = phi i64 [ %i.by, %bb.o ], [ %i.bn, %bb.n ] ; 4 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bs, %bb.o ], [ %i.bk, %bb.n ] ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !alias.scope !22
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null      ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit, label %bb.p

bb.p:                                             ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit
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

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit, %bb.q, %.split, %.split99, %.split100
  %i.cb = ptrtoint ptr %.sroa.0.0.i65 to i64
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit
  %.pre132 = phi i64 [ %.pre132.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexit_crit_edge ], [ %.pre132137, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit ] ; 5 uses
  %.not6081.ph = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6579.ph = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexit_crit_edge ], [ %i.cb, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit ]
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
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit

.split100:                                        ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !range !7, !noundef !3
  %i.cj = icmp eq i8 %i.ci, 35
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit

.split99:                                         ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr i8, ptr %.sroa.0.0.i65, i64 15
  %i.cm = load i8, ptr %i.cl, align 8, !range !7, !noundef !3
  %i.cn = icmp eq i8 %i.cm, 35
  br i1 %i.cn, label %bb.r, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit

bb.q:                                             ; preds = %bb.p
  %i.co = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.co)
  %.mask = and i64 %i.bz, -4294967296
  %i.cp = icmp eq i64 %.mask, 150323855360
  br i1 %i.cp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexitsplit

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
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !9, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #18
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i

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
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #18
  br label %.body

.body:                                            ; preds = %bb.w, %bb.v
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #18
  resume { ptr, i32 } %i.cx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #18
  %.pre131 = load i64, ptr %i.u, align 8, !alias.scope !25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.q, %.split, %.split100, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i
  %i.dd = phi i64 [ %.sink, %bb.q ], [ %.sink, %.split ], [ %.sink, %.split100 ], [ %.pre131, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.i.i ] ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexit_crit_edge, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit
  %.pre132.pre = load i64, ptr %i.s, align 8
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread

bb.x:                                             ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread
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

.loopexit149:                                     ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread, %.loopexit150
  %.sroa.8.0 = phi i64 [ %i.dh, %.loopexit150 ], [ %.sroa.0.0.i6579.ph, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread ]
  %.sroa.010.0 = phi i64 [ 0, %.loopexit150 ], [ 1, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs62u4JVtZyFF_13deltalake_gcp.exit.thread ]
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
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs62u4JVtZyFF_13deltalake_gcp(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr nonnull %.0.val)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr nonnull %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
