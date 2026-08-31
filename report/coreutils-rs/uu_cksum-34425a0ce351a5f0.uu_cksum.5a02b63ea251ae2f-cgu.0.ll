Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cksum-34425a0ce351a5f0.uu_cksum.5a02b63ea251ae2f-cgu.0?download=true
inline.NumInlined: 52
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs7J7HIv3PenH_8uu_cksum21maybe_sanitize_length:bb.a
  %i.ax = mul i32 %i.ar, 10
  %i.ay = add i32 %i.av, %i.ax                    ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !11, !noundef !5
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.n, label %_RNvMsB_NtCs6JMX4GRUq9U_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.5
  %i.be = mul i32 %i.ay, 10
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !11, !noundef !5
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.o, label %_RNvMsB_NtCs6JMX4GRUq9U_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.bl = mul i32 %i.bf, 10
  %i.bm = add i32 %i.bj, %i.bl                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !11, !noundef !5
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.p, label %_RNvMsB_NtCs6JMX4GRUq9U_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.p:                                             ; preds = %.lr.ph.i.7
  %i.bs = mul i32 %i.bm, 10
  %i.bt = add i32 %i.bq, %i.bs
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features8checksum29sanitize_sha2_sha3_length_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #12
  %i.bu = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not22 = icmp ne ptr %i.bu, null               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %.sink91 = select i1 %.not22, ptr %i.bu, ptr inttoptr (i64 1 to ptr)
  %.sink = inttoptr i64 %i.bw to ptr
  %storemerge23 = zext i1 %.not22 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink91, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.by, align 8
  store i64 %storemerge23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.r:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.bz, align 8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features8checksum18parse_blake_length(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, i8 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.not21 = icmp ne ptr %i.ca, null               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %.sink93.a = select i1 %.not21, ptr %i.ca, ptr inttoptr (i64 1 to ptr)
  %.sink92 = inttoptr i64 %i.cc to ptr
  %storemerge = zext i1 %.not21 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink93.a, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink92, ptr %i.ce, align 8
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.s:                                             ; preds = %bb.b, %bb.b
  switch i64 %3, label %thread-pre-split.i35 [
    i64 1, label %bb.t
    i64 0, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7J7HIv3PenH_8uu_cksum.exit.thread67
  ]

bb.t:                                             ; preds = %bb.s
  %i.cf = load i8, ptr %2, align 1, !alias.scope !16, !noalias !19, !noundef !5 ; 2 uses
  switch i8 %i.cf, label %bb.u [
    i8 43, label %.thread.thread
    i8 45, label %.thread.thread
  ]

thread-pre-split.i35:                             ; preds = %bb.s
  %.pr.i36 = load i8, ptr %2, align 1, !alias.scope !16, !noalias !19
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i35, %bb.t
  %i.cg = phi i8 [ %.pr.i36, %thread-pre-split.i35 ], [ %i.cf, %bb.t ]
  %cond.i26 = icmp eq i8 %i.cg, 43                ; 2 uses
  %i.ch = sext i1 %cond.i26 to i64
  %.sroa.15.0.i27 = add nsw i64 %3, %i.ch         ; 4 uses
  %.sroa.0.0.idx.i28 = zext i1 %cond.i26 to i64
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.idx.i28 ; 2 uses
  %i.ci = icmp samesign ult i64 %.sroa.15.0.i27, 17
  br i1 %i.ci, label %.preheader.i33, label %.preheader56.i.preheader

.preheader.i33:                                   ; preds = %bb.u
  %.not5366.i = icmp eq i64 %.sroa.15.0.i27, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread, label %.lr.ph.i34

.preheader56.i:                                   ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i31123, i64 1
  %i.ck = add nsw i64 %.sroa.15.1.i30122, -1      ; 2 uses
  %.not52.i = icmp eq i64 %i.ck, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.u, %.preheader56.i
  %.sroa.0.1.i31123 = phi ptr [ %i.cj, %.preheader56.i ], [ %.sroa.0.0.i29, %bb.u ] ; 2 uses
  %.sroa.15.1.i30122 = phi i64 [ %i.ck, %.preheader56.i ], [ %.sroa.15.0.i27, %bb.u ]
  %.sroa.042.0.i121 = phi i64 [ %i.ct, %.preheader56.i ], [ 0, %bb.u ]
  %i.cl = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i121, i64 10) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cm, label %.loopexit, label %bb.v, !prof !14

bb.v:                                             ; preds = %.preheader56.i.preheader
  %i.cn = extractvalue { i64, i1 } %i.cl, 0       ; 2 uses
  %i.co = load i8, ptr %.sroa.0.1.i31123, align 1, !alias.scope !16, !noalias !19, !noundef !5
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, 9
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = add i64 %i.cn, %i.cs                    ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %i.cn
  %or.cond76 = select i1 %i.cr, i1 true, i1 %i.cu, !prof !15
  br i1 %or.cond76, label %.loopexit, label %.preheader56.i, !prof !15

.lr.ph.i34:                                       ; preds = %.preheader.i33, %bb.w
  %.sroa.0.269.i = phi ptr [ %i.db, %bb.w ], [ %.sroa.0.0.i29, %.preheader.i33 ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.da, %bb.w ], [ %.sroa.15.0.i27, %.preheader.i33 ]
  %.sroa.042.267.i = phi i64 [ %i.dd, %bb.w ], [ 0, %.preheader.i33 ]
  %i.cv = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !16, !noalias !19, !noundef !5
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i34
  %i.cz = mul i64 %.sroa.042.267.i, 10
  %i.da = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.dc = zext nneg i32 %i.cx to i64
  %i.dd = add i64 %i.cz, %i.dc                    ; 2 uses
  %.not53.i = icmp eq i64 %i.da, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i34

.loopexit:                                        ; preds = %.preheader56.i.preheader, %bb.v, %.lr.ph.i34
  %i.de = icmp sgt i64 %3, -1
  br i1 %i.de, label %.thread, label %bb.y

.thread:                                          ; preds = %.loopexit
  %i.df = icmp eq i64 %3, 0
  br i1 %i.df, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7J7HIv3PenH_8uu_cksum.exit.thread67, label %.thread.thread

.thread.thread:                                   ; preds = %bb.t, %bb.t, %.thread
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !21
  %i.dg = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %3, i64 noundef 1) #12, !noalias !21 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.y, label %bb.aa

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.w
  %.sroa.1039.0 = phi i64 [ %i.dd, %bb.w ], [ %i.ct, %.preheader56.i ] ; 2 uses
  %i.di = icmp eq i64 %.sroa.1039.0, 0
  br i1 %i.di, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread, label %bb.x

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread: ; preds = %.preheader.i33, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.x:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.1039.0, ptr %i.dk, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.y:                                             ; preds = %.loopexit, %.thread.thread
  %.sroa.449.0.ph = phi i64 [ 1, %.thread.thread ], [ 0, %.loopexit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.449.0.ph, i64 %3) #13
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7J7HIv3PenH_8uu_cksum.exit.thread67: ; preds = %bb.s, %.thread, %bb.aa
  %.sroa.1051.073 = phi i64 [ %4, %bb.aa ], [ 1, %.thread ], [ 1, %bb.s ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !24
  %i.dl = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #12, !noalias !24 ; 6 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.z, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !14

bb.z:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7J7HIv3PenH_8uu_cksum.exit.thread67
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #13, !noalias !24
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7J7HIv3PenH_8uu_cksum.exit.thread67
  store i64 3, ptr %i.dl, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %3, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %.sroa.1051.073, ptr %.sroa.5.0..sroa_idx42, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @4, ptr %i.do, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.aa:                                            ; preds = %.thread.thread
  %4 = ptrtoint ptr %i.dg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7J7HIv3PenH_8uu_cksum.exit.thread67

_RNvMsB_NtCs6JMX4GRUq9U_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %.preheader60.i.preheader, %bb.h, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.e, %bb.f, %bb.f, %.loopexit.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !27
  %i.dp = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #12, !noalias !27 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ab, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit38, !prof !14

bb.ab:                                            ; preds = %_RNvMsB_NtCs6JMX4GRUq9U_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #13, !noalias !27
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit38: ; preds = %_RNvMsB_NtCs6JMX4GRUq9U_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  store i64 8, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dp, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @4, ptr %i.ds, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs7J7HIv3PenH_8uu_cksum6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 712)) %0) unnamed_addr #0 {
bb.a:
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [712 x i8], align 8               ; 4 uses
  %i.e = alloca [712 x i8], align 8               ; 4 uses
  %i.f = alloca [712 x i8], align 8               ; 4 uses
  %i.g = alloca [712 x i8], align 8               ; 4 uses
  %i.h = alloca [712 x i8], align 8               ; 4 uses
  %i.i = alloca [712 x i8], align 8               ; 4 uses
  %i.j = alloca [712 x i8], align 8               ; 4 uses
  %i.k = alloca [712 x i8], align 8               ; 4 uses
  %i.l = alloca [712 x i8], align 8               ; 4 uses
  %i.m = alloca [712 x i8], align 8               ; 4 uses
  %i.n = alloca [712 x i8], align 8               ; 4 uses
  %i.o = alloca [712 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 11) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 11) #12
  call void @_RNvCs4dRV7rdzHEF_18uu_checksum_common20default_checksum_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store ptr @7, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  store i64 5, ptr %i.q, align 8
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand9with_algo(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.d) #12
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand13with_untagged(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand8with_tag(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.f, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand11with_length(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand8with_raw(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand19with_check_and_opts(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand11with_base64(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand9with_text(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.k, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand11with_binary(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand9with_zero(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXNtCs4dRV7rdzHEF_18uu_checksum_common3cliNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandNtB2_15ChecksumCommand10with_debug(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 16) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !alias.scope !37, !noalias !41 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.55.0..sroa_idx.i, i64 16, i1 false), !noalias !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 416 ; 2 uses
  %.val.i = load i64, ptr %i.s, align 8, !range !42, !alias.scope !33, !noalias !43, !noundef !5 ; 2 uses
  %i.t = icmp sgt i64 %.val.i, 0
  br i1 %i.t, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, label %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command10after_helpNtNtCs7tKScEop1B6_5alloc6string6StringECs7J7HIv3PenH_8uu_cksum.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  %.val4.i = load ptr, ptr %i.u, align 8, !alias.scope !33, !noalias !43, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #12, !noalias !44
  br label %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command10after_helpNtNtCs7tKScEop1B6_5alloc6string6StringECs7J7HIv3PenH_8uu_cksum.exit

_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command10after_helpNtNtCs7tKScEop1B6_5alloc6string6StringECs7J7HIv3PenH_8uu_cksum.exit: ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.s, align 8, !alias.scope !33, !noalias !43
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.o, i64 712, i1 false), !alias.scope !41, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvCs7J7HIv3PenH_8uu_cksum20print_cpu_debug_info13print_feature(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 4, 7) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %1, ptr %i.h, align 8
  %3 = ptrtoint ptr %i.g to i64                   ; 2 uses
  br i1 %2, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %3, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs7J7HIv3PenH_8uu_cksum to i64), ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @9, ptr noundef nonnull %i.c) #12 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7J7HIv3PenH_8uu_cksum.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i
    i64 1, label %bb.e
  ], !prof !6

default.unreachable:                              ; preds = %bb.g, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr)
  %i.n = and i64 %i.k, 1095216660480
  %i.o = icmp ne i64 %i.n, 1095216660480
  call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 %i.o)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.i, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !45
  store i8 3, ptr %i.b, align 8, !alias.scope !45
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #12
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7J7HIv3PenH_8uu_cksum.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7J7HIv3PenH_8uu_cksum.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %3, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs7J7HIv3PenH_8uu_cksum to i64), ptr %.sroa.42.0..sroa_idx, align 8
  %i.r = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @10, ptr noundef nonnull %i.e) #12 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7J7HIv3PenH_8uu_cksum.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = and i64 %i.t, 3
  switch i64 %i.u, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i8
    i64 3, label %bb.h
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i8
    i64 1, label %bb.i
  ], !prof !6

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ult ptr %i.r, inttoptr (i64 188978561024 to ptr)
  %i.w = and i64 %i.t, 1095216660480
  %i.x = icmp ne i64 %i.w, 1095216660480
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.x)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i8

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.r, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !48
  store i8 3, ptr %i.a, align 8, !alias.scope !48
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #12
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i8

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i8: ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7J7HIv3PenH_8uu_cksum.exit10

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7J7HIv3PenH_8uu_cksum.exit10: ; preds = %bb.f, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7J7HIv3PenH_8uu_cksum.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7J7HIv3PenH_8uu_cksum.exit10, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7J7HIv3PenH_8uu_cksum.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCs7J7HIv3PenH_8uu_cksum(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !51, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #12
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs7J7HIv3PenH_8uu_cksum(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !51, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #12
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs7J7HIv3PenH_8uu_cksum(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #12
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXs4_NtNtCsh036I4OHgIr_6uucore8features8checksumNtB5_13ChecksumErrorNtNtNtB9_4mods5error6UError4code(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i32 1
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtNtCsh036I4OHgIr_6uucore8features8checksumNtB5_13ChecksumErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load i64, ptr %0, align 8, !range !4, !noundef !5
  switch i64 %i.i, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 16) #12
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.h, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 13, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.g, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 14, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.f, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.e, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 20, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 20) #12
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.d, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 19, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.c, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 20, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 28) #12
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 18) #12
  br label %bb.t

bb.l:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 19) #12
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 8) #12
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 12) #12
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 30) #12
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 25) #12
  br label %bb.t
end_hunk_0
