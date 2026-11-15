Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.12?download=true
inline.NumInlined: 1243
inline.NumDeleted: 779
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs1_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_8NameSpec5build:bb.a
.loopexit21.i:                                    ; preds = %bb.h, %bb.g, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !592
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %.sroa.4.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !589
  %i.am = load i64, ptr %i.k, align 8, !range !10, !noalias !592, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !19, !noalias !592, !noundef !4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j, !prof !17

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %bb.g
  %.sroa.5.0.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ]
  %i.ar = icmp ult i64 %.sroa.5.0.i.i.i, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i16 %i.n, 3
  br i1 %i.as, label %bb.m, label %bb.an

bb.i:                                             ; preds = %.loopexit21.i
  %i.at = load i64, ptr %i.aq, align 8, !noalias !592
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.at) #30, !noalias !589
  unreachable

bb.j:                                             ; preds = %.loopexit21.i
  %i.au = load ptr, ptr %i.aq, align 8, !noalias !592, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = icmp ule i64 %.sroa.4.0, %i.ap
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !592
  %.not.i = icmp eq i64 %.sroa.4.0, 0
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  store i64 %i.ap, ptr %i.l, align 8, !alias.scope !589
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !589
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !589
  br label %_RNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name12parse_string.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %.sroa.0.0, i64 %.sroa.4.0, i1 false), !noalias !589
  br label %bb.k

bb.m:                                             ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !594
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.4.0, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !595
  %i.aw = load i64, ptr %i.f, align 8, !range !10, !noalias !594, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !19, !noalias !594, !noundef !4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.n, label %.lr.ph.i.lr.ph.i.i, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !594
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #30, !noalias !596
  unreachable

.lr.ph.i.lr.ph.i.i:                               ; preds = %bb.m
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !594, !nonnull !4, !noundef !4
  %i.bd = icmp ule i64 %.sroa.4.0, %i.az
  tail call void @llvm.assume(i1 %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !594
  store i64 %i.az, ptr %i.j, align 8, !noalias !594
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.bc, ptr %i.be, align 8, !noalias !594
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store i64 0, ptr %i.bf, align 8, !noalias !594
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %.lr.ph.i.i1.i

.lr.ph.i.i1.i:                                    ; preds = %.split.i45.i.i, %.lr.ph.i.lr.ph.i.i
  %.sroa.0.0103.i.i = phi ptr [ %.sroa.0.0, %.lr.ph.i.lr.ph.i.i ], [ %i.dp, %.split.i45.i.i ] ; 12 uses
  %.sroa.11.0102.i.i = phi i64 [ %.sroa.4.0, %.lr.ph.i.lr.ph.i.i ], [ %i.do, %.split.i45.i.i ] ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0103.i.i, i64 %.sroa.11.0102.i.i ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_win0E0E0B2R_.exit.i.i.i, %.lr.ph.i.i1.i
  %i.bj = phi i64 [ 0, %.lr.ph.i.i1.i ], [ %i.bn, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_win0E0E0B2R_.exit.i.i.i ] ; 10 uses
  %i.bk = phi ptr [ %.sroa.0.0103.i.i, %.lr.ph.i.i1.i ], [ %i.bm, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_win0E0E0B2R_.exit.i.i.i ] ; 2 uses
  %.val6.i.i.i = load i8, ptr %i.bk, align 1, !alias.scope !597, !noalias !598, !noundef !4
  %i.bl = icmp eq i8 %.val6.i.i.i, 92
  br i1 %i.bl, label %bb.s, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_win0E0E0B2R_.exit.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_win0E0E0B2R_.exit.i.i.i: ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  %i.bn = add i64 %i.bj, 1
  %i.bo = icmp eq ptr %i.bm, %i.bi
  br i1 %i.bo, label %bb.v, label %bb.o

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %.thread58.i.i, %.thread67.invoke.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.invoke.i.i, %.loopexit.i.i, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.q unwind label %bb.p, !noalias !596

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i unwind label %bb.r, !noalias !596

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.am, !noalias !596

bb.r:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !596
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !594
  %i.br = icmp eq i64 %i.bj, 0
  br i1 %i.br, label %.thread58.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i2.i = icmp ult i64 %i.bj, %.sroa.11.0102.i.i
  br i1 %.not.i.i2.i, label %bb.u, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.t
  %i.bs = icmp eq i64 %i.bj, %.sroa.11.0102.i.i
  br i1 %i.bs, label %.thread58.i.i, label %.thread67.invoke.i.i

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0103.i.i, i64 %i.bj
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !599, !noundef !4
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %.thread58.i.i, label %.thread67.invoke.i.i

bb.v:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_win0E0E0B2R_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !594
  store ptr %.sroa.0.0103.i.i, ptr %i.h, align 8, !noalias !594
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bi, ptr %i.bw, align 8, !noalias !594
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i16 0, ptr %i.bx, align 8, !noalias !594
  invoke void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VectE16extend_desugaredNtNtNtCsf3Ta7LF998c_4core3str4iter11EncodeUtf16ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !596

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !594
  %.pre.i.i = load i64, ptr %i.bf, align 8, !noalias !594
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.split.i45.i.i, %bb.w
  %i.by = phi i64 [ %.pre.i.i, %bb.w ], [ %i.dj, %.split.i45.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !594
  %i.bz = load ptr, ptr %i.be, align 8, !noalias !594, !nonnull !4, !noundef !4
  invoke void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String10from_utf16(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bz, i64 noundef %i.by)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !596

.thread58.i.i:                                    ; preds = %bb.u, %.split.i.i.i, %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0103.i.i, i64 %i.bj
  store ptr %.sroa.0.0103.i.i, ptr %i.i, align 8, !noalias !594
  store ptr %i.ca, ptr %i.bg, align 8, !noalias !594
  store i16 0, ptr %i.bh, align 8, !noalias !594
  invoke void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VectE16extend_desugaredNtNtNtCsf3Ta7LF998c_4core3str4iter11EncodeUtf16ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !596

bb.x:                                             ; preds = %.thread58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !594
  %i.cb = add i64 %i.bj, 1                        ; 8 uses
  %i.cc = add i64 %i.bj, 5                        ; 13 uses
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  %i.ce = icmp ugt i64 %i.cc, %.sroa.11.0102.i.i
  %or.cond.i.i.i = or i1 %i.cd, %i.ce
  br i1 %or.cond.i.i.i, label %.thread67.invoke.i.i, label %bb.y, !prof !20

bb.y:                                             ; preds = %bb.x
  %i.cf = icmp eq i64 %i.cb, %.sroa.11.0102.i.i
  br i1 %i.cf, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = icmp eq i64 %i.cb, 0
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.ch = icmp eq i64 %i.cc, %.sroa.11.0102.i.i
  br i1 %i.ch, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0103.i.i, i64 %i.cb
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !600, !noundef !4
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.aa, label %.thread67.invoke.i.i, !prof !21

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i: ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0103.i.i, i64 %i.cc
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !600, !noundef !4
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i, label %.thread67.invoke.i.i, !prof !22

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i, %bb.aa, %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0103.i.i, i64 %i.cb ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !601, !noundef !4
  %cond.i.i.i = icmp eq i8 %i.cp, 43              ; 2 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i41.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.0.0.idx.i.i.i ; 4 uses
  %3 = load i8, ptr %.sroa.0.0.i41.i.i, align 1, !alias.scope !601, !noundef !4 ; 2 uses
  %4 = zext i8 %3 to i32                          ; 2 uses
  %5 = icmp ugt i8 %3, 57
  %6 = add nsw i32 %4, -65
  %7 = and i32 %6, -33
  %8 = add nuw nsw i32 %7, 10
  %9 = add nsw i32 %4, -48
  %.sroa.02.0.i.i.i.i = select i1 %5, i32 %8, i32 %9 ; 2 uses
  %10 = icmp ult i32 %.sroa.02.0.i.i.i.i, 16
  br i1 %10, label %11, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

11:                                               ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i
  %12 = trunc nuw nsw i32 %.sroa.02.0.i.i.i.i to i16
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i.i, i64 1
  %14 = load i8, ptr %13, align 1, !alias.scope !601, !noundef !4 ; 2 uses
  %15 = zext i8 %14 to i32                        ; 2 uses
  %16 = icmp ugt i8 %14, 57
  %17 = add nsw i32 %15, -65
  %18 = and i32 %17, -33
  %19 = add nuw nsw i32 %18, 10
  %20 = add nsw i32 %15, -48
  %.sroa.02.0.i.i.i.i.1 = select i1 %16, i32 %19, i32 %20 ; 2 uses
  %21 = icmp ult i32 %.sroa.02.0.i.i.i.i.1, 16
  br i1 %21, label %bb.ac, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ac:                                            ; preds = %11
  %22 = trunc nuw nsw i32 %.sroa.02.0.i.i.i.i.1 to i16
  %23 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i.i, i64 2
  %i.cq = load i8, ptr %23, align 1, !alias.scope !601, !noundef !4 ; 2 uses
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = icmp ugt i8 %i.cq, 57
  %i.ct = add nsw i32 %i.cr, -65
  %i.cu = and i32 %i.ct, -33
  %i.cv = add nuw nsw i32 %i.cu, 10
  %i.cw = add nsw i32 %i.cr, -48
  %.sroa.02.0.i.i.i.i.a = select i1 %i.cs, i32 %i.cv, i32 %i.cw ; 2 uses
  %i.cx = icmp ult i32 %.sroa.02.0.i.i.i.i.a, 16
  br i1 %i.cx, label %bb.ad, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cy = shl nuw nsw i16 %12, 8
  %24 = shl nuw nsw i16 %22, 4
  %25 = or disjoint i16 %i.cy, %24
  %i.cz = trunc nuw nsw i32 %.sroa.02.0.i.i.i.i.a to i16
  %i.da = or disjoint i16 %25, %i.cz              ; 2 uses
  br i1 %cond.i.i.i, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i, label %26

26:                                               ; preds = %bb.ad
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i.i, i64 3
  %28 = load i8, ptr %27, align 1, !alias.scope !601, !noundef !4 ; 2 uses
  %29 = zext i8 %28 to i32                        ; 2 uses
  %30 = icmp ugt i8 %28, 57
  %31 = add nsw i32 %29, -65
  %32 = and i32 %31, -33
  %33 = add nuw nsw i32 %32, 10
  %34 = add nsw i32 %29, -48
  %.sroa.02.0.i.i.i.i.3 = select i1 %30, i32 %33, i32 %34 ; 2 uses
  %35 = icmp ult i32 %.sroa.02.0.i.i.i.i.3, 16
  br i1 %35, label %36, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

36:                                               ; preds = %26
  %37 = shl nuw i16 %i.da, 4
  %38 = trunc nuw nsw i32 %.sroa.02.0.i.i.i.i.3 to i16
  %39 = or disjoint i16 %37, %38
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i: ; preds = %26, %bb.ac, %11, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !594
  store i8 1, ptr %i.d, align 1, !noalias !594
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.invoke.i.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.invoke.i.i: ; preds = %bb.ai, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i
  %i.db = phi ptr [ %i.d, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i ], [ %i.e, %bb.ai ]
  %i.dc = phi ptr [ @2, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i ], [ @0, %bb.ai ]
  %i.dd = phi ptr [ @36, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i ], [ @38, %bb.ai ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd) #31
          to label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !596

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.cont.i.i: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.invoke.i.i
  unreachable

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %36, %bb.ad
  %.lcssa137 = phi i16 [ %39, %36 ], [ %i.da, %bb.ad ]
  %i.de = load i64, ptr %i.bf, align 8, !alias.scope !602, !noalias !594, !noundef !4 ; 3 uses
  %i.df = load i64, ptr %i.j, align 8, !range !18, !alias.scope !602, !noalias !594, !noundef !4
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs6WnK4nVnpEz_11write_fonts(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #26
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !596

bb.af:                                            ; preds = %bb.ae, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i
  %i.dh = load ptr, ptr %i.be, align 8, !alias.scope !602, !noalias !594, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.de
  store i16 %.lcssa137, ptr %i.di, align 2, !noalias !596
  %i.dj = add i64 %i.de, 1                        ; 2 uses
  store i64 %i.dj, ptr %i.bf, align 8, !alias.scope !602, !noalias !594
  %i.dk = icmp ne i64 %i.cc, 0
  %.not.i44.i.i = icmp ult i64 %i.cc, %.sroa.11.0102.i.i
  %or.cond.i.i = and i1 %i.dk, %.not.i44.i.i
  br i1 %or.cond.i.i, label %bb.ag, label %.split.i45.i.i

bb.ag:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0103.i.i, i64 %i.cc
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !603, !noundef !4
  %i.dn = icmp sgt i8 %i.dm, -65
  br i1 %i.dn, label %.split.i45.i.i, label %.thread67.invoke.i.i

.split.i45.i.i:                                   ; preds = %bb.ag, %bb.af
  %i.do = sub nuw nsw i64 %.sroa.11.0102.i.i, %i.cc ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0103.i.i, i64 %i.cc
  %i.dq = icmp eq i64 %i.do, 0
  br i1 %i.dq, label %.loopexit.i.i, label %.lr.ph.i.i1.i

.thread67.invoke.i.i:                             ; preds = %bb.ag, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i, %bb.ab, %bb.x, %bb.u, %.split.i.i.i
  %i.dr = phi i64 [ %i.cb, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i ], [ 0, %bb.u ], [ 0, %.split.i.i.i ], [ %i.cb, %bb.ab ], [ %i.cb, %bb.x ], [ %i.cc, %bb.ag ]
  %i.ds = phi i64 [ %i.cc, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i ], [ %i.bj, %bb.u ], [ %i.bj, %.split.i.i.i ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.x ], [ %.sroa.11.0102.i.i, %bb.ag ]
  %i.dt = phi ptr [ @35, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i ], [ @34, %bb.u ], [ @34, %.split.i.i.i ], [ @35, %bb.ab ], [ @35, %bb.x ], [ @37, %bb.ag ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0103.i.i, i64 noundef %.sroa.11.0102.i.i, i64 noundef %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #30
          to label %.thread67.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !596

.thread67.cont.i.i:                               ; preds = %.thread67.invoke.i.i
  unreachable

bb.ah:                                            ; preds = %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.du = load i64, ptr %i.g, align 8, !range !7, !alias.scope !605, !noalias !594, !noundef !4
  %i.dv = icmp eq i64 %i.du, -1
  br i1 %i.dv, label %bb.ai, label %bb.aj, !prof !17

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !606
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dx = load i8, ptr %i.dw, align 8, !range !16, !alias.scope !605, !noalias !594, !noundef !4
  store i8 %i.dx, ptr %i.e, align 1, !noalias !606
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.invoke.i.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !alias.scope !607, !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !594
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_win.exit.i unwind label %bb.ak, !noalias !596

bb.ak:                                            ; preds = %bb.aj
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.al, !noalias !596

bb.al:                                            ; preds = %bb.ak
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !596
  unreachable

common.resume:                                    ; preds = %bb.bq, %bb.q, %bb.ak, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscScJTt9VrQp_6fea_rs.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp153, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscScJTt9VrQp_6fea_rs.exit.i.i.i ], [ %lpad.loopexit.split-lp, %bb.q ], [ %i.dy, %bb.ak ], [ %i.it, %bb.bq ]
  resume { ptr, i32 } %common.resume.op

bb.am:                                            ; preds = %bb.q
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.am, %bb.p
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !596
  unreachable

_RNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_win.exit.i: ; preds = %bb.aj
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !594
  br label %_RNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name12parse_string.exit

bb.an:                                            ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !609
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !610
  %i.eb = load i64, ptr %i.b, align 8, !range !10, !noalias !609, !noundef !4
  %i.ec = trunc nuw i64 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !19, !noalias !609, !noundef !4 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ec, label %bb.ao, label %bb.ap, !prof !17

bb.ao:                                            ; preds = %bb.an
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !609
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ee, i64 %i.eg) #30, !noalias !610
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.eh = load ptr, ptr %i.ef, align 8, !noalias !609, !nonnull !4, !noundef !4
  %i.ei = icmp ule i64 %.sroa.4.0, %i.ee
  tail call void @llvm.assume(i1 %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !609
  store i64 %i.ee, ptr %i.c, align 8, !noalias !609
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %i.eh, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !noalias !609
  br label %.lr.ph.i.i3.i

.lr.ph.i.i3.i:                                    ; preds = %.split.i53.i.i, %bb.ap
  %.sroa.0.0107.i.i = phi ptr [ %i.ij, %.split.i53.i.i ], [ %.sroa.0.0, %bb.ap ] ; 11 uses
  %.sroa.11.0106.i.i = phi i64 [ %i.ii, %.split.i53.i.i ], [ %.sroa.4.0, %bb.ap ] ; 13 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0107.i.i, i64 %.sroa.11.0106.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_mac0E0E0B2R_.exit.i.i.i, %.lr.ph.i.i3.i
  %i.ek = phi i64 [ 0, %.lr.ph.i.i3.i ], [ %i.eo, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_mac0E0E0B2R_.exit.i.i.i ] ; 12 uses
  %i.el = phi ptr [ %.sroa.0.0107.i.i, %.lr.ph.i.i3.i ], [ %i.en, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_mac0E0E0B2R_.exit.i.i.i ] ; 2 uses
  %.val6.i.i4.i = load i8, ptr %i.el, align 1, !alias.scope !611, !noalias !612, !noundef !4
  %i.em = icmp eq i8 %.val6.i.i4.i, 92
  br i1 %i.em, label %bb.at, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_mac0E0E0B2R_.exit.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_mac0E0E0B2R_.exit.i.i.i: ; preds = %bb.aq
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  %i.eo = add i64 %i.ek, 1
  %i.ep = icmp eq ptr %i.en, %i.ej
  br i1 %i.ep, label %bb.aw, label %bb.aq

.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bh, %bb.bg, %.thread64.i.i, %.thread77.invoke.i.i, %.loopexit137.i.i, %bb.aw
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscScJTt9VrQp_6fea_rs.exit.i.i.i unwind label %bb.ar, !noalias !613

bb.ar:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i6.i unwind label %bb.as, !noalias !613

bb.as:                                            ; preds = %bb.ar
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !613
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECscScJTt9VrQp_6fea_rs.exit.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.bo, !noalias !613

bb.at:                                            ; preds = %bb.aq
  %i.es = icmp eq i64 %i.ek, 0                    ; 2 uses
  br i1 %i.es, label %.thread64.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i.i8.i = icmp ult i64 %i.ek, %.sroa.11.0106.i.i
  br i1 %.not.i.i8.i, label %bb.av, label %.split.i.i9.i

.split.i.i9.i:                                    ; preds = %bb.au
  %i.et = icmp eq i64 %i.ek, %.sroa.11.0106.i.i
  br i1 %i.et, label %.thread64.i.i, label %.thread77.invoke.i.i

bb.av:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0107.i.i, i64 %i.ek
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !614, !noundef !4
  %i.ew = icmp sgt i8 %i.ev, -65
  br i1 %i.ew, label %.thread64.i.i, label %.thread77.invoke.i.i

bb.aw:                                            ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_mac0E0E0B2R_.exit.i.i.i
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.11.0106.i.i)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCscScJTt9VrQp_6fea_rs.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !610

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCscScJTt9VrQp_6fea_rs.exit.i.i: ; preds = %bb.aw
  %i.ex = load i64, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !615, !noalias !609, !noundef !4 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !615, !noalias !609, !nonnull !4, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fa, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.0107.i.i, i64 %.sroa.11.0106.i.i, i1 false), !noalias !613
  %.pre.i.i.i = load i64, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !615, !noalias !609
  %i.fb = add i64 %.pre.i.i.i, %.sroa.11.0106.i.i
  store i64 %i.fb, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !615, !noalias !609
  br label %_RNvNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name9parse_mac.exit.i

.thread64.i.i:                                    ; preds = %bb.av, %.split.i.i9.i, %bb.at
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ek)
          to label %.noexc46.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i5.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !610

.noexc46.i.i:                                     ; preds = %.thread64.i.i
  %i.fc = load i64, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !616, !noalias !609, !noundef !4 ; 3 uses
  %i.fd = icmp sgt i64 %i.fc, -1
  call void @llvm.assume(i1 %i.fd)
  br i1 %i.es, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc46.i.i
  %i.fe = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !616, !noalias !609, !nonnull !4, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ff, ptr nonnull readonly align 1 %.sroa.0.0107.i.i, i64 %i.ek, i1 false), !noalias !613
  %.pre.i45.i.i = load i64, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !616, !noalias !609
  br label %bb.ay

end_hunk_0
