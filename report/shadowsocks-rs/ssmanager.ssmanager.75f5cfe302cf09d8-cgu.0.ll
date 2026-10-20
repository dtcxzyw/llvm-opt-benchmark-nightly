Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECsa7TLgTh0CeG_9ssmanager:bb.a
  store i16 %i.u, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !726
  %i.bl = add nuw nsw i64 %i.af, 1
  store i64 %i.bl, ptr %i.ae, align 8, !alias.scope !722
  %i.bm = load i64, ptr %i.aa, align 8, !noundef !80 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.01.0.ph.mux, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.z, align 8, !nonnull !80, !noundef !80
  %i.bp = trunc nuw nsw i64 %i.af to i16
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.01.0.ph.mux ; 2 uses
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i16 %i.u, ptr %i.br, align 2
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.ph.mux, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #55
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.bs = icmp eq i16 %i.au, %i.u
  br i1 %i.bs, label %bb.x, label %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

bb.o:                                             ; preds = %bb.e
  %i.bt = icmp samesign ugt i64 %.sroa.09.0.ph, 511
  %i.bu = load i64, ptr %0, align 8, !range !88
  %i.bv = icmp ne i64 %i.bu, 2
  %.sroa.016.0 = select i1 %i.bt, i1 %i.bv, i1 false
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.634.0.copyload = load ptr, ptr %.sroa.634.0..sroa_idx, align 8 ; 2 uses
  %.sroa.035.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.537.0.copyload = load ptr, ptr %.sroa.537.0..sroa_idx, align 8 ; 2 uses
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.639.0.copyload = load i64, ptr %.sroa.639.0..sroa_idx, align 8 ; 2 uses
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.741.0.copyload = load ptr, ptr %.sroa.741.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.bw = icmp ult i64 %i.af, 88686269585142076
  tail call void @llvm.assume(i1 %i.bw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.bx = icmp samesign ugt i64 %i.af, 32767
  br i1 %i.bx, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !range !82, !alias.scope !730, !noundef !80
  %i.ca = icmp eq i64 %i.af, %i.bz
  br i1 %i.ca, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtCs7ewmRfXve8r_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs2dlyTE5y14r_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by) #52, !noalias !731
  %.pre = load ptr, ptr %i.ag, align 8, !alias.scope !730
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.0.copyload) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !732, !nonnull !80, !noundef !80
  tail call void %i.cc(ptr noundef %.sroa.741.0.copyload, ptr noundef %.sroa.537.0.copyload, i64 noundef %.sroa.639.0.copyload) #45, !noalias !732, !inline_history !8
  br i1 %i.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !733, !nonnull !80, !noundef !80
  tail call void %i.ce(ptr noundef %.sroa.634.0.copyload, ptr noundef %i.ao, i64 noundef %i.an) #45, !noalias !733, !inline_history !9
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.cf = phi ptr [ %.pre, %bb.q ], [ %i.ah, %bb.p ]
  %i.cg = getelementptr inbounds nuw [104 x i8], ptr %i.cf, i64 %i.af ; 11 uses
  store i64 0, ptr %i.cg, align 8, !noalias !734
  %.sroa.4.i.i.sroa.3.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %.sroa.035.0.copyload, ptr %.sroa.4.i.i.sroa.3.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !734
  %.sroa.4.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr %.sroa.537.0.copyload, ptr %.sroa.4.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !734
  %.sroa.4.i.i.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i64 %.sroa.639.0.copyload, ptr %.sroa.4.i.i.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !734
  %.sroa.4.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store ptr %.sroa.741.0.copyload, ptr %.sroa.4.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !734
  %.sroa.4.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store i64 %.sroa.8.0.copyload, ptr %.sroa.4.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !734
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !735
  %.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  store ptr %i.ao, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !735
  %.sroa.6.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  store i64 %i.an, ptr %.sroa.6.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !735
  %.sroa.7.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  store ptr %.sroa.634.0.copyload, ptr %.sroa.7.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !735
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  store i16 %i.u, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !734
  %i.ch = add nuw nsw i64 %i.af, 1
  store i64 %i.ch, ptr %i.ae, align 8, !alias.scope !730
  %i.ci = load ptr, ptr %i.z, align 8, !alias.scope !728, !nonnull !80, !noundef !80
  %i.cj = load i64, ptr %i.aa, align 8, !alias.scope !728, !noundef !80 ; 2 uses
  %i.ck = trunc nuw nsw i64 %i.af to i16
  %.not151 = icmp eq i64 %i.cj, 0
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.t
  %.sroa.6.0.i.ph = phi i16 [ %i.cr, %bb.u ], [ %i.u, %bb.t ] ; 2 uses
  %.sroa.09.0.i.ph = phi i16 [ %i.cn, %bb.u ], [ %i.ck, %bb.t ] ; 2 uses
  %.sroa.07.0.i.ph = phi i64 [ %i.cq, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.cs, %bb.u ], [ %.sroa.01.0.ph.mux, %bb.t ] ; 2 uses
  %i.cl = icmp ult i64 %.sroa.0.0.i.ph, %i.cj     ; 2 uses
  %.not151.not = xor i1 %.not151, true
  %brmerge164 = or i1 %i.cl, %.not151.not
  %.sroa.0.0.i.ph.mux = select i1 %i.cl, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge164, label %.loopexit149, label %infloop163

.loopexit149:                                     ; preds = %.outer
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.cn = load i16, ptr %i.cm, align 2, !noalias !736, !noundef !80 ; 2 uses
  %i.co = icmp eq i16 %i.cn, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 2 ; 3 uses
  br i1 %i.co, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.loopexit149
  %i.cq = add i64 %.sroa.07.0.i.ph, 1
  %i.cr = load i16, ptr %i.cp, align 2, !noalias !736, !noundef !80
  store i16 %.sroa.09.0.i.ph, ptr %i.cm, align 2, !noalias !736
  store i16 %.sroa.6.0.i.ph, ptr %i.cp, align 2, !noalias !736
  %i.cs = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.v:                                             ; preds = %.loopexit149
  store i16 %.sroa.09.0.i.ph, ptr %i.cm, align 2, !noalias !736
  store i16 %.sroa.6.0.i.ph, ptr %i.cp, align 2, !noalias !736
  %i.ct = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.016.0, i1 true, i1 %i.ct
  %i.cu = load i64, ptr %0, align 8, !range !88, !alias.scope !728
  %i.cv = icmp eq i64 %i.cu, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.cv, i1 false
  br i1 %or.cond3.i, label %bb.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit

bb.w:                                             ; preds = %bb.v
  store i64 1, ptr %0, align 8, !alias.scope !728
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit

_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.aa, %bb.y, %.split, %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, %bb.n
  %i.cw = add nuw nsw i64 %.sroa.09.0.ph, 1
  %i.cx = add i64 %.sroa.01.0.ph.mux, 1
  br label %.outer134

bb.x:                                             ; preds = %bb.n
  %i.cy = icmp ugt i64 %i.af, %i.as
  br i1 %i.cy, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw [104 x i8], ptr %i.ah, i64 %i.as ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !noundef !80
  %i.dc = icmp ne ptr %i.db, null                 ; 2 uses
  %i.dd = xor i1 %i.dc, %i.aj
  br i1 %i.dd, label %bb.z, label %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %bb.y
  br i1 %i.dc, label %bb.aa, label %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  %i.df = load i64, ptr %i.de, align 8, !noundef !80
  %i.dg = icmp eq i64 %i.df, %i.an
  br i1 %i.dg, label %.split, label %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !noundef !80
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.di, ptr %i.ao, i64 %i.an)
  %i.dj = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.dj, label %bb.ac, label %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.z
  tail call void @llvm.assume(i1 %i.aj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.dl = load i8, ptr %i.dk, align 8, !range !96, !noundef !80
  %i.dm = icmp eq i8 %i.dl, %i.al
  br i1 %i.dm, label %bb.ac, label %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

bb.ab:                                            ; preds = %bb.x
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #55
  unreachable

bb.ac:                                            ; preds = %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, %.split
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.do = load i64, ptr %i.cz, align 8, !range !87, !alias.scope !737, !noundef !80
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !737, !noundef !80 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !738, !noundef !80 ; 7 uses
  %i.du = icmp ult i64 %i.dt, 128102389400760776
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = load i64, ptr %i.dn, align 8, !range !82, !alias.scope !739, !noundef !80
  %i.dw = icmp eq i64 %i.dt, %i.dv
  br i1 %i.dw, label %bb.ae, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2dlyTE5y14r_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn) #52, !noalias !740
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.ae, %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !739, !nonnull !80, !noundef !80
  %i.dz = getelementptr inbounds nuw [72 x i8], ptr %i.dy, i64 %i.dt ; 5 uses
  store i64 1, ptr %i.dz, align 8, !noalias !741
  %.sroa.4.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %i.dr, ptr %.sroa.4.0..sroa_idx.i25, align 8, !noalias !741
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx6.i, align 8, !noalias !741
  %.sroa.6.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %i.as, ptr %.sroa.6.0..sroa_idx.i26, align 8, !noalias !741
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 40, i1 false), !noalias !737
  %i.ea = add nuw nsw i64 %i.dt, 1                ; 2 uses
  store i64 %i.ea, ptr %i.ds, align 8, !alias.scope !739
  %.not.i = icmp ugt i64 %i.dr, %i.dt
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !738, !noundef !80 ; 6 uses
  %i.ed = icmp ult i64 %i.ec, 128102389400760776
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = load i64, ptr %i.dn, align 8, !range !82, !alias.scope !742, !noundef !80
  %i.ef = icmp eq i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.ag, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit5.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2dlyTE5y14r_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn) #52, !noalias !743
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit5.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit5.i: ; preds = %bb.ag, %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !742, !nonnull !80, !noundef !80
  %i.ei = getelementptr inbounds nuw [72 x i8], ptr %i.eh, i64 %i.ec ; 5 uses
  store i64 0, ptr %i.ei, align 8, !noalias !741
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %i.as, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %i.as, ptr %.sroa.610.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.711.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 40, i1 false), !noalias !737
  %i.ej = add nuw nsw i64 %i.ec, 1
  store i64 %i.ej, ptr %i.eb, align 8, !alias.scope !742
  store i64 1, ptr %i.cz, align 8, !alias.scope !737
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.ec, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !737
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.ec, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !737
  br label %_RINvNtNtCs7ewmRfXve8r_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsa7TLgTh0CeG_9ssmanager.exit

bb.ah:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.ek = load ptr, ptr %i.dx, align 8, !alias.scope !738, !nonnull !80, !noundef !80
  %i.el = getelementptr inbounds nuw [72 x i8], ptr %i.ek, i64 %i.dr ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 1, ptr %i.em, align 8, !noalias !741
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i64 %i.dt, ptr %i.en, align 8, !noalias !741
  store i64 1, ptr %i.cz, align 8, !alias.scope !737
  store i64 %i.dt, ptr %i.dq, align 8, !alias.scope !737
  br label %_RINvNtNtCs7ewmRfXve8r_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsa7TLgTh0CeG_9ssmanager.exit

bb.ai:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dr, i64 noundef %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #55, !noalias !741
  unreachable

_RINvNtNtCs7ewmRfXve8r_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCs7ewmRfXve8r_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsa7TLgTh0CeG_9ssmanager.exit5.i, %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  br i1 %i.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtNtCs7ewmRfXve8r_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsa7TLgTh0CeG_9ssmanager.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !750, !noundef !80
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !750, !nonnull !80, !noundef !80
  tail call void %i.er(ptr noundef %i.ep, ptr noundef %i.ao, i64 noundef %i.an) #45, !noalias !750, !inline_history !5
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.w, %bb.v, %bb.s, %bb.r, %bb.j, %bb.i, %bb.aj, %_RINvNtNtCs7ewmRfXve8r_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsa7TLgTh0CeG_9ssmanager.exit, %bb.c, %bb.b, %bb.l
  %.sroa.0.1 = phi i8 [ 1, %bb.aj ], [ 0, %bb.l ], [ 2, %bb.c ], [ 2, %bb.j ], [ 2, %bb.b ], [ 1, %_RINvNtNtCs7ewmRfXve8r_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsa7TLgTh0CeG_9ssmanager.exit ], [ 2, %bb.i ], [ 0, %bb.w ], [ 0, %bb.v ], [ 2, %bb.r ], [ 2, %bb.s ]
  ret i8 %.sroa.0.1

infloop:                                          ; preds = %.outer134, %infloop
  br label %infloop

infloop163:                                       ; preds = %.outer, %infloop163
  br label %infloop163
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #45
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !850, !noundef !80
  %i.e = load ptr, ptr %3, align 8, !alias.scope !850, !nonnull !80, !align !86, !noundef !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !850, !nonnull !80, !noundef !80
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !850, !noundef !80
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !850, !noundef !80
  tail call void %i.g(ptr noundef %i.d, ptr noundef %i.i, i64 noundef %i.k) #45, !noalias !850, !inline_history !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.l = load ptr, ptr %2, align 8, !alias.scope !853, !noundef !80 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !858, !noundef !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !858, !nonnull !80, !noundef !80
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !858, !noundef !80
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !858, !noundef !80
  tail call void %i.q(ptr noundef %i.o, ptr noundef %i.s, i64 noundef %i.u) #45, !noalias !858, !inline_history !5
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit

bb.d:                                             ; preds = %bb.a
  %i.v = tail call fastcc noundef i16 @_RINvNtNtCs7ewmRfXve8r_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) #53 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.x = load i16, ptr %i.w, align 8, !noundef !80 ; 3 uses
  %i.y = and i16 %i.x, %i.v
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !80 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !nonnull !80
  %i.ae = zext i16 %i.x to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 23 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !80 ; 8 uses
  %i.aj = load ptr, ptr %2, align 8               ; 7 uses
  %i.ak = icmp eq ptr %i.aj, null                 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !range !96
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load i64, ptr %i.an, align 8            ; 7 uses
  %i.ap = load ptr, ptr %i.al, align 8            ; 6 uses
  %.not683 = icmp eq i64 %i.ac, 0
  br label %.outer667

.outer667:                                        ; preds = %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.08.0.ph = phi i64 [ %i.cy, %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.cz, %_RNvXsy_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread ], [ %i.z, %bb.d ] ; 2 uses
  %i.aq = icmp ult i64 %.sroa.0.0.ph, %i.ac       ; 2 uses
  %.not683.not = xor i1 %.not683, true
  %brmerge = or i1 %i.aq, %.not683.not
  %.sroa.0.0.ph.mux = select i1 %i.aq, i64 %.sroa.0.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer667
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !noundef !80 ; 2 uses
  %.not = icmp eq i16 %i.as, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.at = zext i16 %i.as to i64                   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.av = load i16, ptr %i.au, align 2, !noundef !80 ; 2 uses
  %i.aw = and i16 %i.av, %i.x
  %i.ax = zext i16 %i.aw to i64
  %i.ay = sub i64 %.sroa.0.0.ph.mux, %i.ax
  %i.az = and i64 %i.ay, %i.ae
  %i.ba = icmp samesign ult i64 %i.az, %.sroa.08.0.ph
  br i1 %i.ba, label %bb.p, label %bb.o

bb.f:                                             ; preds = %.loopexit
  %i.bb = icmp ult i64 %i.ag, 88686269585142076
  tail call void @llvm.assume(i1 %i.bb)
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.661.0.copyload = load ptr, ptr %.sroa.661.0..sroa_idx, align 8 ; 2 uses
  %.sroa.062.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.564.0.copyload = load ptr, ptr %.sroa.564.0..sroa_idx, align 8 ; 2 uses
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.666.0.copyload = load i64, ptr %.sroa.666.0..sroa_idx, align 8 ; 2 uses
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.768.0.copyload = load ptr, ptr %.sroa.768.0..sroa_idx, align 8 ; 2 uses
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.870.0.copyload = load i64, ptr %.sroa.870.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.bc = icmp samesign ugt i64 %i.ag, 32767
  br i1 %i.bc, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !82, !alias.scope !860, !noundef !80
  %i.bf = icmp eq i64 %i.ag, %i.be
  br i1 %i.bf, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtCs7ewmRfXve8r_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs2dlyTE5y14r_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd) #52, !noalias !861
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelayNtB6_9UdpServer11send_packet0Csa7TLgTh0CeG_9ssmanager:bb.a
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.s, !prof !89

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.db, i64 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1315) #55, !noalias !28730
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.r
  %i.de = add nuw i64 %i.db, 1                    ; 5 uses
  store i64 0, ptr %i.dc, align 8, !alias.scope !28728
  %i.df = sub nuw i64 %i.dd, %i.de                ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.77.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %.sroa.7.014.i.i.i = phi i64 [ 0, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.dn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %.sroa.12.013.i.i.i = phi i64 [ %i.de, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.do, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ]
  %i.dj = load i64, ptr %i.dg, align 8, !alias.scope !28728, !noalias !28731, !noundef !80
  %i.dk = add i64 %i.dj, %.sroa.7.014.i.i.i       ; 2 uses
  %i.dl = load i64, ptr %i.aq, align 8, !range !82, !alias.scope !28728, !noalias !28731, !noundef !80 ; 2 uses
  %.not.i.i.i.i32 = icmp ult i64 %i.dk, %i.dl
  %i.dm = select i1 %.not.i.i.i.i32, i64 0, i64 %i.dl
  %.sroa.02.0.i.i.i.i = sub nuw i64 %i.dk, %i.dm
  %i.dn = add i64 %.sroa.7.014.i.i.i, 1
  %i.do = add i64 %.sroa.12.013.i.i.i, -1         ; 2 uses
  %i.dp = load ptr, ptr %i.dh, align 8, !alias.scope !28728, !noalias !28731, !nonnull !80, !noundef !80
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %.sroa.02.0.i.i.i.i ; 2 uses
  %.sroa.05.0.copyload6.i.i.i = load i16, ptr %i.dq, align 4, !noalias !28732 ; 2 uses
  %.not2.i.i.i = icmp eq i16 %.sroa.05.0.copyload6.i.i.i, 2
  br i1 %.not2.i.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %.sroa.77.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !28733
  store i16 %.sroa.05.0.copyload6.i.i.i, ptr %i.j, align 4, !noalias !28733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.77.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.77.0..sroa_idx8.i.i.i, i64 30, i1 false), !noalias !28734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !28733
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.j) #45, !noalias !28724
  %i.dr = load i32, ptr %i.di, align 8, !range !103, !noalias !28733, !noundef !80
  %.not3.i.i.i = icmp eq i32 %i.dr, -1
  br i1 %.not3.i.i.i, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, !prof !92

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.ds = load i64, ptr %i.dc, align 8, !alias.scope !28728, !noalias !28735, !noundef !80 ; 4 uses
  %i.dt = add i64 %i.ds, %i.df                    ; 3 uses
  %i.du = icmp eq i64 %i.ds, 0
  %i.dv = icmp eq i64 %i.dd, %i.de
  %or.cond.i.i.i.i.i.i.i = or i1 %i.dv, %i.du
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.u, label %bb.v, !prof !196

bb.u:                                             ; preds = %bb.v, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i
  %i.dw = icmp eq i64 %i.dt, 0
  br i1 %i.dw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i, label %bb.w

bb.v:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i
  call fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtB1p_3net11socket_addr10SocketAddrNtNtBh_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq, i64 noundef %i.de, i64 noundef %i.ds, i64 noundef %i.df) #45, !noalias !28736
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.dx = icmp ult i64 %i.ds, %i.df
  br i1 %i.dx, label %bb.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.dy = load i64, ptr %i.dg, align 8, !alias.scope !28728, !noalias !28735, !noundef !80
  %i.dz = add i64 %i.dy, %i.de                    ; 2 uses
  %i.ea = load i64, ptr %i.aq, align 8, !range !82, !alias.scope !28728, !noalias !28735, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.dz, %i.ea
  %i.eb = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.ea
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %i.dz, %i.eb
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i: ; preds = %bb.x, %bb.u
  %.sink.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.x ], [ 0, %bb.u ]
  store i64 %.sink.i.i.i, ptr %i.dg, align 8, !alias.scope !28728, !noalias !28735
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i, %bb.w
  store i64 %i.dt, ptr %i.dc, align 8, !alias.scope !28728, !noalias !28735
  br label %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.y:                                             ; preds = %bb.t
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #45, !noalias !28734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28733
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1043, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1044) #55, !noalias !28734
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.t
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #45, !noalias !28734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28733
  %i.ec = icmp eq i64 %i.do, 0
  br i1 %i.ec, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %._RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i
  %i.ed = phi i64 [ %.pre.i.i, %._RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i ], [ %i.dt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ef = load i64, ptr %i.aq, align 8, !range !82, !alias.scope !28729, !noundef !80 ; 2 uses
  %i.eg = icmp eq i64 %i.ed, %i.ef
  br i1 %i.eg, label %bb.z, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.z:                                             ; preds = %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4growCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq) #52, !noalias !28737
  %.pre.i.i.i = load i64, ptr %i.ee, align 8, !alias.scope !28729
  %.pre5.i.i.i = load i64, ptr %i.aq, align 8, !range !82, !alias.scope !28729
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.z, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.eh = phi i64 [ %.pre5.i.i.i, %bb.z ], [ %i.ef, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %i.ei = phi i64 [ %.pre.i.i.i, %bb.z ], [ %i.ed, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.ee, align 8, !alias.scope !28729
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !28729, !noundef !80
  %i.em = add i64 %i.el, %i.ei                    ; 2 uses
  %.not.i3.i.i = icmp ult i64 %i.em, %i.eh
  %i.en = select i1 %.not.i3.i.i, i64 0, i64 %i.eh
  %.sroa.03.0.i.i.i = sub nuw i64 %i.em, %i.en
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !28729, !nonnull !80, !noundef !80
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %.sroa.03.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.eq, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !28738
  br label %bb.ab

bb.aa:                                            ; preds = %bb.p
  call fastcc void @_RINvMCshXcoQFZsaxY_14lru_time_cacheINtB3_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10update_keyBM_ECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.p) #45, !noalias !28738
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !28739)
  call void @llvm.experimental.noalias.scope.decl(metadata !28740)
  call void @llvm.experimental.noalias.scope.decl(metadata !28741)
  call void @llvm.experimental.noalias.scope.decl(metadata !28742)
  call void @llvm.experimental.noalias.scope.decl(metadata !28743)
  %i.er = load ptr, ptr %i.av, align 8, !alias.scope !28744, !noundef !80 ; 5 uses
  %.not.i.i4.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i4.i.i, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE5entryCsa7TLgTh0CeG_9ssmanager.exit.thread67.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28745
  %i.es = load i64, ptr %i.cv, align 8, !alias.scope !28744, !noundef !80 ; 3 uses
  call fastcc void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1i_14LeafOrInternalE11search_treeB1y_ECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull %i.er, i64 noundef %i.es, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.p) #45, !noalias !28746
  %i.et = load i64, ptr %i.h, align 8, !range !87, !noalias !28745, !noundef !80
  %i.eu = trunc nuw i64 %i.et to i1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.12.40.copyload.i.i.i = load ptr, ptr %i.ev, align 8, !noalias !28747 ; 13 uses
  br i1 %i.eu, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE5entryCsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE5entryCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i

_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE5entryCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i: ; preds = %bb.ac
  %.sroa.7.sroa.8.6..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7.sroa.8.6.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.8.6..sroa_idx.i.i.i, align 8, !noalias !28747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28745
  br label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6insertCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE5entryCsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.ac
  %.sroa.14.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.14.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.14.40..sroa_idx.i.i.i, align 8, !noalias !28747 ; 2 uses
  %.sroa.14.sroa.4.0..sroa.14.40..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.14.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.14.sroa.4.0..sroa.14.40..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !28747 ; 11 uses
  %.sroa.0.0.copyload7.i.i.i = load i16, ptr %i.p, align 4, !alias.scope !28748 ; 4 uses
  %.sroa.7.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 5 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.sroa.5.0.copyload14.i.i.i = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i, align 4, !alias.scope !28748 ; 4 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.7.sroa.7.0.copyload16.i.i.i = load i64, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i, align 4, !alias.scope !28748 ; 3 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.7.sroa.8.0.copyload18.i.i.i = load i64, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx9.sroa_idx.i.i.i, align 4, !alias.scope !28748 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28745
  %i.ew = icmp eq i16 %.sroa.0.0.copyload7.i.i.i, 2
  br i1 %i.ew, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6insertCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.ad

_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE5entryCsa7TLgTh0CeG_9ssmanager.exit.thread67.i.i.i: ; preds = %bb.ab
  %.sroa.0.0.copyload8.i.i.i = load i16, ptr %i.p, align 4, !alias.scope !28748 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx10.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.sroa.5.0.copyload15.i.i.i = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx10.sroa_idx.i.i.i, align 4, !alias.scope !28748 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx10.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.7.sroa.8.0.copyload19.i.i.i = load i64, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx10.sroa_idx.i.i.i, align 4, !alias.scope !28748 ; 2 uses
  %i.ex = icmp eq i16 %.sroa.0.0.copyload8.i.i.i, 2
  br i1 %i.ex, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6insertCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE5entryCsa7TLgTh0CeG_9ssmanager.exit.thread67.i.i.i
  %.sroa.7.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx10.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.7.sroa.7.0.copyload17.i.i.i = load i64, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx10.sroa_idx.i.i.i, align 4, !alias.scope !28748
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.7.0..sroa_idx10.i.i.i, i64 6, i1 false), !noalias !28749
  br label %bb.bn

bb.ad:                                            ; preds = %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE5entryCsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.7.0..sroa_idx9.i.i.i, i64 6, i1 false), !noalias !28749
  %.not.i4.i.i.i = icmp eq ptr %.sroa.12.40.copyload.i.i.i, null
  br i1 %.not.i4.i.i.i, label %bb.bn, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.111.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.051.i.i.i.i.i)
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.12.40.copyload.i.i.i, i64 714 ; 4 uses
  %i.ez = load i16, ptr %i.ey, align 2, !noalias !28750, !noundef !80 ; 3 uses
  %i.fa = icmp ult i16 %i.ez, 11
  br i1 %i.fa, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = icmp ult i64 %.sroa.14.sroa.4.0.copyload.i.i.i, 5
  br i1 %i.fb, label %bb.al, label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.fc = zext nneg i16 %i.ez to i64              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28751)
  %i.fd = add i64 %.sroa.14.sroa.4.0.copyload.i.i.i, 1 ; 3 uses
  %.not.i.i.i.i.i6.i.i = icmp ugt i64 %i.fd, %i.fc
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %.sroa.12.40.copyload.i.i.i, i64 %.sroa.14.sroa.4.0.copyload.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.i6.i.i, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %bb.ah

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  %.sroa.8.0..sroa_idx27.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx27.i.i.i.a, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.7.0..sroa_idx9.i.i.i, i64 6, i1 false), !noalias !28752
  call void @llvm.experimental.noalias.scope.decl(metadata !28753)
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %.sroa.12.40.copyload.i.i.i, i64 %i.fd
  %i.fg = sub nsw i64 %i.fc, %.sroa.14.sroa.4.0.copyload.i.i.i
  %i.fh = shl nuw nsw i64 %i.fg, 5                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ff, ptr nonnull align 4 %i.fe, i64 %i.fh, i1 false), !alias.scope !28754, !noalias !28755
  %.sroa.8.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx26.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.7.0..sroa_idx9.i.i.i, i64 6, i1 false), !noalias !28752
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.12.40.copyload.i.i.i, i64 352 ; 2 uses
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %.sroa.14.sroa.4.0.copyload.i.i.i
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %i.fd
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fk, ptr nonnull align 8 %i.fj, i64 %i.fh, i1 false), !alias.scope !28756, !noalias !28755
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i: ; preds = %bb.ah, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  store i16 %.sroa.0.0.copyload7.i.i.i, ptr %i.fe, align 4, !alias.scope !28757, !noalias !28758
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %.sroa.7.sroa.5.0.copyload14.i.i.i, ptr %i.fl, align 4, !alias.scope !28757, !noalias !28758
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i64 %.sroa.7.sroa.7.0.copyload16.i.i.i, ptr %i.fm, align 4, !alias.scope !28757, !noalias !28758
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i64 %.sroa.7.sroa.8.0.copyload18.i.i.i, ptr %i.fn, align 4, !alias.scope !28757, !noalias !28758
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.12.40.copyload.i.i.i, i64 352
  %1 = add nuw nsw i16 %i.ez, 1
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %.sroa.14.sroa.4.0.copyload.i.i.i ; 4 uses
  store ptr %i.cq, ptr %i.fp, align 8, !alias.scope !28759, !noalias !28755
  %.sroa.667.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.cr, ptr %.sroa.667.0..sroa_idx.i.i, align 8, !alias.scope !28759, !noalias !28755
  %.sroa.868.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 %i.ct, ptr %.sroa.868.0..sroa_idx.i.i, align 8, !alias.scope !28759, !noalias !28755
  %.sroa.1069.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i32 %i.cu, ptr %.sroa.1069.0..sroa_idx.i.i, align 8, !alias.scope !28759, !noalias !28755
  store i16 %1, ptr %i.ey, align 2, !noalias !28755
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.051.i.i.i.i.i)
  br label %bb.aq

bb.ai:                                            ; preds = %bb.af
  switch i64 %.sroa.14.sroa.4.0.copyload.i.i.i, label %bb.aj [
    i64 5, label %bb.al
    i64 6, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fq = add i64 %.sroa.14.sroa.4.0.copyload.i.i.i, -7
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.af
  %.sroa.09.0.i.i.i.i.i.i = phi i1 [ true, %bb.ak ], [ true, %bb.aj ], [ false, %bb.af ], [ false, %bb.ai ]
  %.sroa.510.0.i.i.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %i.fq, %bb.aj ], [ %.sroa.14.sroa.4.0.copyload.i.i.i, %bb.af ], [ %.sroa.14.sroa.4.0.copyload.i.i.i, %bb.ai ] ; 6 uses
  %.sroa.013.0.i.i.i.i.i.i = phi i64 [ 5, %bb.ak ], [ 6, %bb.aj ], [ 4, %bb.af ], [ %.sroa.14.sroa.4.0.copyload.i.i.i, %bb.ai ] ; 5 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28760
  %i.fr = call noalias noundef align 8 dereferenceable_or_null(720) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 720, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28760 ; 8 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.am, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, !prof !92

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 720) #54, !noalias !28760
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 704
  store ptr null, ptr %i.ft, align 8, !noalias !28760
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 714
  call void @llvm.experimental.noalias.scope.decl(metadata !28761)
  %i.fv = load i16, ptr %i.ey, align 2, !noalias !28762, !noundef !80
  %i.fw = zext i16 %i.fv to i64
  %i.fx = xor i64 %.sroa.013.0.i.i.i.i.i.i, -1
  %i.fy = add nsw i64 %i.fw, %i.fx                ; 4 uses
  %i.fz = trunc i64 %i.fy to i16
  store i16 %i.fz, ptr %i.fu, align 2, !alias.scope !28761, !noalias !28760
  %i.ga = icmp ult i64 %i.fy, 12
  br i1 %i.ga, label %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, label %bb.an, !prof !102

bb.an:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fy, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1238) #55, !noalias !28762
  unreachable

_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.12.40.copyload.i.i.i, i64 352 ; 2 uses
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.gb, i64 %.sroa.013.0.i.i.i.i.i.i ; 3 uses
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.12.40.copyload.i.i.i, i64 %.sroa.013.0.i.i.i.i.i.i
  %i.ge = add nuw nsw i64 %.sroa.013.0.i.i.i.i.i.i, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.12.40.copyload.i.i.i, i64 %i.ge
  %i.gg = shl nuw nsw i64 %i.fy, 5                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(720) %i.fr, ptr nonnull readonly align 4 %i.gf, i64 %i.gg, i1 false), !alias.scope !28763, !noalias !28764
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gb, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr nonnull readonly align 8 %i.gh, i64 %i.gg, i1 false), !alias.scope !28765, !noalias !28764
  %i.gj = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i.i.i to i16
  store i16 %i.gj, ptr %i.ey, align 2, !noalias !28762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.051.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.gd, i64 32, i1 false), !noalias !28750
  %.sroa.051.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.051.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.051.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 24, i1 false), !noalias !28750
  %.sroa.552.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %.sroa.552.32.copyload.i.i.i.i.i = load i32, ptr %.sroa.552.32..sroa_idx.i.i.i.i.i, align 8, !noalias !28750 ; 3 uses
  %.sroa.653.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %.sroa.653.32.copyload.i.i.i.i.i = load i32, ptr %.sroa.653.32..sroa_idx.i.i.i.i.i, align 4, !noalias !28750 ; 2 uses
  %spec.select37.i.i.i.i.i.i.a = select i1 %.sroa.09.0.i.i.i.i.i.i, ptr %i.fr, ptr %.sroa.12.40.copyload.i.i.i ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i.i.a, i64 714 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2, !noalias !28766, !noundef !80 ; 2 uses
  %i.gm = zext i16 %i.gl to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28767)
  %.not.i14.not.i.i.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i.i.i, %i.gm
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %spec.select37.i.i.i.i.i.i.a, i64 %.sroa.510.0.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i14.not.i.i.i.i.i.i, label %bb.ao, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i.i: ; preds = %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.7.0..sroa_idx9.i.i.i, i64 6, i1 false), !noalias !28752
  call void @llvm.experimental.noalias.scope.decl(metadata !28768)
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.ao:                                            ; preds = %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.go = add nuw nsw i64 %.sroa.510.0.i.i.i.i.i.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %spec.select37.i.i.i.i.i.i.a, i64 %i.go
  %i.gq = sub nuw nsw i64 %i.gm, %.sroa.510.0.i.i.i.i.i.i
  %i.gr = shl nuw nsw i64 %i.gq, 5                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gp, ptr nonnull align 4 %i.gn, i64 %i.gr, i1 false), !alias.scope !28769, !noalias !28766
  %.sroa.8.0..sroa_idx25.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx25.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.7.0..sroa_idx9.i.i.i, i64 6, i1 false), !noalias !28752
  %i.gs = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i.i.a, i64 352 ; 2 uses
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %.sroa.510.0.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.go
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull align 8 %i.gt, i64 %i.gr, i1 false), !alias.scope !28770, !noalias !28766
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.ao, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i.i
  store i16 %.sroa.0.0.copyload7.i.i.i, ptr %i.gn, align 4, !alias.scope !28771, !noalias !28772
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %.sroa.7.sroa.5.0.copyload14.i.i.i, ptr %i.gv, align 4, !alias.scope !28771, !noalias !28772
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %.sroa.7.sroa.7.0.copyload16.i.i.i, ptr %i.gw, align 4, !alias.scope !28771, !noalias !28772
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store i64 %.sroa.7.sroa.8.0.copyload18.i.i.i, ptr %i.gx, align 4, !alias.scope !28771, !noalias !28772
  %i.gy = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i.i.a, i64 352
  %2 = add i16 %i.gl, 1
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.gy, i64 %.sroa.510.0.i.i.i.i.i.i ; 4 uses
  store ptr %i.cq, ptr %i.gz, align 8, !alias.scope !28773, !noalias !28766
  %.sroa.672.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.cr, ptr %.sroa.672.0..sroa_idx.i.i, align 8, !alias.scope !28773, !noalias !28766
  %.sroa.873.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %i.ct, ptr %.sroa.873.0..sroa_idx.i.i, align 8, !alias.scope !28773, !noalias !28766
  %.sroa.1074.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store i32 %i.cu, ptr %.sroa.1074.0..sroa_idx.i.i, align 8, !alias.scope !28773, !noalias !28766
  store i16 %2, ptr %i.gk, align 2, !noalias !28766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.111.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.051.i.i.i.i.i, i64 56, i1 false), !noalias !28774
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.051.i.i.i.i.i)
  %.not.i.i.i5.i.i = icmp eq i32 %.sroa.552.32.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i.i5.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.111.i.i.i.i.i, i64 56, i1 false), !noalias !28775
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.111.i.i.i.i.i)
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.12.40.copyload.i.i.i, i64 704
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !28776, !noundef !80 ; 2 uses
  %.not.i150.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i150.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ap
  %.sroa.11.sroa.0.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.sroa.0.i.i.i.i.i, i64 32 ; 4 uses
  %.sroa.057.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.057.i.i.i.i.i, i64 32
  %i.hc = icmp eq i64 %.sroa.14.sroa.0.0.copyload.i.i.i, 0
  br label %bb.au

bb.aq:                                            ; preds = %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.111.i.i.i.i.i)
  br label %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB5p_11VacantEntryB1D_B2v_E12insert_entry0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bm, %bb.ap
  %.sroa.11.sroa.9.0.lcssa.i.i.i.i.i = phi i32 [ %.sroa.653.32.copyload.i.i.i.i.i, %bb.ap ], [ %.sroa.659.32.copyload.i.i.i.i.i, %bb.bm ]
  %.sroa.11.sroa.8.0.lcssa.i.i.i.i.i = phi i32 [ %.sroa.552.32.copyload.i.i.i.i.i, %bb.ap ], [ %.sroa.558.32.copyload.i.i.i.i.i, %bb.bm ]
  %.sroa.9.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ap ], [ %i.hs, %bb.bm ]
  %.sroa.7.0.lcssa.i.i.i.i.i = phi ptr [ %i.fr, %bb.ap ], [ %i.kg, %bb.bm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28777)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28778
  %i.hd = call noalias noundef align 8 dereferenceable_or_null(816) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 816, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28778 ; 12 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ar, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i, !prof !92

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 816) #54, !noalias !28778
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 704
  store ptr null, ptr %i.hf, align 8, !noalias !28778
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 714 ; 2 uses
  store i16 0, ptr %i.hg, align 2, !noalias !28778
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 720
  store ptr %i.er, ptr %i.hh, align 8, !noalias !28778
  %i.hi = add i64 %i.es, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.as, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, !prof !92

bb.as:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #55, !noalias !28778
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.er, i64 704
  store ptr %i.hd, ptr %i.hj, align 8, !noalias !28779
  %i.hk = getelementptr inbounds nuw i8, ptr %i.er, i64 712
  store i16 0, ptr %i.hk, align 8, !noalias !28780
  store ptr %i.hd, ptr %i.av, align 8, !alias.scope !28781, !noalias !28782
  store i64 %i.hi, ptr %i.cv, align 8, !alias.scope !28781, !noalias !28782
  %i.hl = icmp eq i64 %.sroa.9.0.lcssa.i.i.i.i.i, %i.es
  br i1 %i.hl, label %_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12insert_entry0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.at, !prof !89

bb.at:                                            ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1310, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1311) #55, !noalias !28783
  unreachable

_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12insert_entry0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  store i16 1, ptr %i.hg, align 2, !noalias !28783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.0.i.i.i.i.i, i64 32, i1 false), !noalias !28784
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 352
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.11.sroa.0.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i64 24, i1 false), !noalias !28784
  %.sroa.828.sroa.5.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 376
  store i32 %.sroa.11.sroa.8.0.lcssa.i.i.i.i.i, ptr %.sroa.828.sroa.5.32..sroa_idx.i.i.i.i.i, align 8, !noalias !28784
  %.sroa.828.sroa.6.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 380
  store i32 %.sroa.11.sroa.9.0.lcssa.i.i.i.i.i, ptr %.sroa.828.sroa.6.32..sroa_idx.i.i.i.i.i, align 4, !noalias !28784
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hd, i64 728
  store ptr %.sroa.7.0.lcssa.i.i.i.i.i, ptr %i.ho, align 8, !noalias !28783
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i.i.i, i64 704
  store ptr %i.hd, ptr %i.hp, align 8, !noalias !28783
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i.i.i, i64 712
  store i16 1, ptr %i.hq, align 8, !noalias !28783
  br label %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB5p_11VacantEntryB1D_B2v_E12insert_entry0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

bb.au:                                            ; preds = %bb.bm, %.lr.ph.i.i.i.i.i
  %i.hr = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i ], [ %i.oy, %bb.bm ] ; 19 uses
  %.sroa.0.0156.i.i.i.i.i = phi ptr [ %.sroa.12.40.copyload.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.hr, %bb.bm ]
  %.sroa.6.0155.i.i.i.i.i = phi i64 [ %.sroa.14.sroa.0.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.hs, %bb.bm ]
  %.sroa.7.0154.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %i.kg, %bb.bm ] ; 2 uses
  %.sroa.9.0153.i.i.i.i.i = phi i1 [ %i.hc, %.lr.ph.i.i.i.i.i ], [ true, %bb.bm ]
  %.sroa.11.sroa.8.0152.i.i.i.i.i = phi i32 [ %.sroa.552.32.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.558.32.copyload.i.i.i.i.i, %bb.bm ] ; 4 uses
  %.sroa.11.sroa.9.0151.i.i.i.i.i = phi i32 [ %.sroa.653.32.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.659.32.copyload.i.i.i.i.i, %bb.bm ] ; 4 uses
  %i.hs = add i64 %.sroa.6.0155.i.i.i.i.i, 1      ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0156.i.i.i.i.i, i64 712
  %i.hu = load i16, ptr %i.ht, align 8, !noalias !28776 ; 4 uses
  %i.hv = zext i16 %i.hu to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1122.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.sroa.0.i.i.i.i.i)
  br i1 %.sroa.9.0153.i.i.i.i.i, label %bb.aw, label %bb.av, !prof !89

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #55, !noalias !28785
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 714 ; 4 uses
  %i.hx = load i16, ptr %i.hw, align 2, !noalias !28785, !noundef !80 ; 5 uses
  %i.hy = icmp ult i16 %i.hx, 11
  br i1 %i.hy, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hz = icmp ult i16 %i.hu, 5
  br i1 %i.hz, label %bb.bd, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.ia = zext nneg i16 %i.hx to i64              ; 4 uses
  %i.ib = add nuw nsw i16 %i.hx, 1
  %i.ic = add nuw nsw i64 %i.hv, 1                ; 7 uses
  %.not.i.i30.not.i.i.i.i.i = icmp ult i16 %i.hu, %i.hx
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %i.hv ; 3 uses
  br i1 %.not.i.i30.not.i.i.i.i.i, label %bb.az, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.0.i.i.i.i.i, i64 32, i1 false), !noalias !28784
  call void @llvm.experimental.noalias.scope.decl(metadata !28786)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 352
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %i.hv ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0.32..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !28784
  %.sroa.655.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  store i32 %.sroa.11.sroa.8.0152.i.i.i.i.i, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !28787, !noalias !28788
  %.sroa.856.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 28
  store i32 %.sroa.11.sroa.9.0151.i.i.i.i.i, ptr %.sroa.856.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !28787, !noalias !28788
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtB1b_3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %i.ic
  %i.ih = sub nuw nsw i64 %i.ia, %i.hv            ; 2 uses
  %i.ii = shl nuw nsw i64 %i.ih, 5                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ig, ptr nonnull align 4 %i.id, i64 %i.ii, i1 false), !alias.scope !28789, !noalias !28788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.sroa.0.i.i.i.i.i, i64 32, i1 false), !noalias !28784
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 352 ; 2 uses
  %i.ik = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %i.hv ; 4 uses
  %i.il = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %i.ic
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.il, ptr nonnull align 8 %i.ik, i64 %i.ii, i1 false), !alias.scope !28790, !noalias !28788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0.32..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !28784
  %.sroa.655.0..sroa_idx271.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store i32 %.sroa.11.sroa.8.0152.i.i.i.i.i, ptr %.sroa.655.0..sroa_idx271.i.i.i.i.i, align 8, !alias.scope !28787, !noalias !28788
  %.sroa.856.0..sroa_idx272.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 28
  store i32 %.sroa.11.sroa.9.0151.i.i.i.i.i, ptr %.sroa.856.0..sroa_idx272.i.i.i.i.i, align 4, !alias.scope !28787, !noalias !28788
  %i.im = getelementptr inbounds nuw i8, ptr %i.hr, i64 720 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ic
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.hv
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = shl nuw nsw i64 %i.ih, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ip, ptr nonnull align 8 %i.in, i64 %i.iq, i1 false), !alias.scope !28791, !noalias !28788
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtB1b_3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtB1b_3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.az, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hr, i64 720 ; 6 uses
  %i.is = add nuw nsw i64 %i.ia, 2                ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ic
  store ptr %.sroa.7.0154.i.i.i.i.i, ptr %i.it, align 8, !alias.scope !28791, !noalias !28788
  store i16 %i.ib, ptr %i.hw, align 2, !noalias !28788
  %i.iu = icmp samesign ult i64 %i.ic, %i.is
  br i1 %i.iu, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtB1b_3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.iv = add nuw nsw i64 %i.ia, 1
  %i.iw = sub nsw i64 %i.iv, %i.hv
  %i.ix = sub nsw i64 %i.ia, %i.hv
  %xtraiter419 = and i64 %i.iw, 3                 ; 2 uses
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.iy, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter421 = phi i64 [ %prol.iter421.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.iy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.iz = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol
  %i.jb = load ptr, ptr %i.ja, align 8, !noalias !28788, !nonnull !80, !noundef !80 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 704
  store ptr %i.hr, ptr %i.jc, align 8, !noalias !28788
  %i.jd = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol to i16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 712
  store i16 %i.jd, ptr %i.je, align 8, !noalias !28788
  %prol.iter421.next = add i64 %prol.iter421, 1   ; 2 uses
  %prol.iter421.cmp.not = icmp eq i64 %prol.iter421.next, %xtraiter419
  br i1 %prol.iter421.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !28497

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.iy, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.jf = icmp ult i64 %i.ix, 3
  br i1 %i.jf, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i = phi i64 [ %i.jy, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.jg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.sroa.0.06.i.i.i.i.i.i.i.i
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !28788, !nonnull !80, !noundef !80 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 704
  store ptr %i.hr, ptr %i.jj, align 8, !noalias !28788
  %i.jk = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 712
  store i16 %i.jk, ptr %i.jl, align 8, !noalias !28788
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.jg
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !28788, !nonnull !80, !noundef !80 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 704
  store ptr %i.hr, ptr %i.jp, align 8, !noalias !28788
  %i.jq = trunc nuw nsw i64 %i.jg to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 712
  store i16 %i.jq, ptr %i.jr, align 8, !noalias !28788
  %i.js = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.jm
  %i.ju = load ptr, ptr %i.jt, align 8, !noalias !28788, !nonnull !80, !noundef !80 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 704
  store ptr %i.hr, ptr %i.jv, align 8, !noalias !28788
  %i.jw = trunc nuw nsw i64 %i.jm to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 712
  store i16 %i.jw, ptr %i.jx, align 8, !noalias !28788
  %i.jy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jz = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.jz)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.js
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !28788, !nonnull !80, !noundef !80 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 704
  store ptr %i.hr, ptr %i.kc, align 8, !noalias !28788
  %i.kd = trunc nuw nsw i64 %i.js to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 712
  store i16 %i.kd, ptr %i.ke, align 8, !noalias !28788
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.jy, %i.is
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  switch i16 %i.hu, label %bb.bb [
    i16 5, label %bb.bd
    i16 6, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.kf = add nsw i64 %i.hv, -7
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ax
  %.sroa.06.0.i.i.i.i.i.i = phi i64 [ 5, %bb.bc ], [ 6, %bb.bb ], [ 4, %bb.ax ], [ 5, %bb.ba ] ; 7 uses
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ 0, %bb.bc ], [ %i.kf, %bb.bb ], [ %i.hv, %bb.ax ], [ 5, %bb.ba ] ; 9 uses
  %.sroa.03.0.i.i.i.i.i.i = phi i1 [ true, %bb.bc ], [ true, %bb.bb ], [ false, %bb.ax ], [ false, %bb.ba ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28792
  %i.kg = call noalias noundef align 8 dereferenceable_or_null(816) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 816, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28792 ; 14 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.be, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, !prof !92

bb.be:                                            ; preds = %bb.bd
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 816) #54, !noalias !28792
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.bd
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 704
  store ptr null, ptr %i.ki, align 8, !noalias !28792
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 714 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.057.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !28793)
  %i.kk = load i16, ptr %i.hw, align 2, !noalias !28794, !noundef !80
  %i.kl = zext i16 %i.kk to i64
  %i.km = xor i64 %.sroa.06.0.i.i.i.i.i.i, -1
  %i.kn = add nsw i64 %i.kl, %i.km                ; 4 uses
  %i.ko = trunc i64 %i.kn to i16
  store i16 %i.ko, ptr %i.kj, align 2, !alias.scope !28793, !noalias !28792
  %i.kp = icmp ult i64 %i.kn, 12
  br i1 %i.kp, label %_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %bb.bf, !prof !102

bb.bf:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kn, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1238) #55, !noalias !28794
  unreachable

_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hr, i64 352 ; 2 uses
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %i.kq, i64 %.sroa.06.0.i.i.i.i.i.i ; 3 uses
  %i.ks = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %.sroa.06.0.i.i.i.i.i.i
  %i.kt = add nuw nsw i64 %.sroa.06.0.i.i.i.i.i.i, 1 ; 2 uses
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.hr, i64 %i.kt
  %i.kv = shl nuw nsw i64 %i.kn, 5                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(720) %i.kg, ptr nonnull readonly align 4 %i.ku, i64 %i.kv, i1 false), !alias.scope !28795, !noalias !28796
  %i.kw = getelementptr inbounds nuw [32 x i8], ptr %i.kq, i64 %i.kt
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kg, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kx, ptr nonnull readonly align 8 %i.kw, i64 %i.kv, i1 false), !alias.scope !28797, !noalias !28796
  %i.ky = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i.i.i to i16
  store i16 %i.ky, ptr %i.hw, align 2, !noalias !28794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.057.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.ks, i64 32, i1 false), !noalias !28785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.057.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.kr, i64 24, i1 false), !noalias !28785
  %.sroa.558.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %.sroa.558.32.copyload.i.i.i.i.i = load i32, ptr %.sroa.558.32..sroa_idx.i.i.i.i.i, align 8, !noalias !28785 ; 3 uses
  %.sroa.659.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 28
  %.sroa.659.32.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.32..sroa_idx.i.i.i.i.i, align 4, !noalias !28785 ; 2 uses
  %i.kz = load i16, ptr %i.kj, align 2, !noalias !28792, !noundef !80 ; 3 uses
  %i.la = zext i16 %i.kz to i64
  %i.lb = add nuw nsw i64 %i.la, 1                ; 5 uses
  %i.lc = icmp ult i16 %i.kz, 12
  br i1 %i.lc, label %bb.bg, label %bb.bj, !prof !102

bb.bg:                                            ; preds = %_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kg, i64 720 ; 6 uses
  %i.le = zext i16 %i.hx to i64
  %i.lf = sub nuw nsw i64 %i.le, %.sroa.06.0.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !28798)
  call void @llvm.experimental.noalias.scope.decl(metadata !28799)
  %i.lg = icmp eq i64 %i.lf, %i.lb
  br i1 %i.lg, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtB1c_3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %bb.bh, !prof !89

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #55, !noalias !28800
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtB1c_3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.bg
  %i.lh = getelementptr i8, ptr %i.hr, i64 728
  %i.li = getelementptr [8 x i8], ptr %i.lh, i64 %.sroa.06.0.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_RNCNvMs_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelayNtB6_9UdpServer11send_packet0Csa7TLgTh0CeG_9ssmanager:bb.a
bb.co:                                            ; preds = %.loopexit.i.i
  %i.to = sub nuw i64 %i.tl, %i.tn                ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 4 uses
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !28842, !noundef !80 ; 4 uses
  %.not.i.i.i.i.i117 = icmp ult i64 %i.to, %i.tq
  br i1 %.not.i.i.i.i.i117, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i118, label %bb.cp, !prof !89

bb.cp:                                            ; preds = %bb.co
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.to, i64 noundef %i.tq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1315) #55, !noalias !28844
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i118: ; preds = %bb.co
  %i.tr = add nuw i64 %i.to, 1                    ; 5 uses
  store i64 0, ptr %i.tp, align 8, !alias.scope !28842
  %i.ts = sub nuw i64 %i.tq, %i.tr                ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.tv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i120, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i118
  %.sroa.7.016.i.i.i = phi i64 [ 0, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i118 ], [ %i.up, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i120 ] ; 2 uses
  %.sroa.12.015.i.i.i = phi i64 [ %i.tr, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i118 ], [ %i.uo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i120 ]
  %i.tw = load i64, ptr %i.tt, align 8, !alias.scope !28842, !noalias !28845, !noundef !80
  %i.tx = add i64 %i.tw, %.sroa.7.016.i.i.i       ; 2 uses
  %i.ty = load i64, ptr %i.aq, align 8, !range !82, !alias.scope !28842, !noalias !28845, !noundef !80 ; 2 uses
  %.not.i.i.i.i119 = icmp ult i64 %i.tx, %i.ty
  %i.tz = select i1 %.not.i.i.i.i119, i64 0, i64 %i.ty
  %.sroa.03.0.i.i.i.i = sub nuw i64 %i.tx, %i.tz
  %i.ua = load ptr, ptr %i.tu, align 8, !alias.scope !28842, !noalias !28845, !nonnull !80, !noundef !80
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %.sroa.03.0.i.i.i.i
  %i.uc = load i64, ptr %i.ub, align 8, !noalias !28846, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28847
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeyECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %i.py, i64 %i.uc) #45, !noalias !28838
  %i.ud = load i32, ptr %i.tv, align 8, !range !103, !noalias !28847, !noundef !80
  %.not5.i.i.i = icmp eq i32 %i.ud, -1
  br i1 %.not5.i.i.i, label %bb.cw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i120, !prof !92

bb.cr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i120
  %i.ue = load i64, ptr %i.tp, align 8, !alias.scope !28842, !noalias !28848, !noundef !80 ; 4 uses
  %i.uf = add i64 %i.ue, %i.ts                    ; 3 uses
  %i.ug = icmp eq i64 %i.ue, 0
  %i.uh = icmp eq i64 %i.tq, %i.tr
  %or.cond.i.i.i.i.i.i.i121 = or i1 %i.uh, %i.ug
  br i1 %or.cond.i.i.i.i.i.i.i121, label %bb.cs, label %bb.ct, !prof !196

bb.cs:                                            ; preds = %bb.ct, %bb.cr
  %i.ui = icmp eq i64 %i.uf, 0
  br i1 %i.ui, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i, label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  call fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingyNtNtBh_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq, i64 noundef %i.tr, i64 noundef %i.ue, i64 noundef %i.ts) #45, !noalias !28849
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cs
  %i.uj = icmp ult i64 %i.ue, %i.ts
  br i1 %i.uj, label %bb.cv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.uk = load i64, ptr %i.tt, align 8, !alias.scope !28842, !noalias !28848, !noundef !80
  %i.ul = add i64 %i.uk, %i.tr                    ; 2 uses
  %i.um = load i64, ptr %i.aq, align 8, !range !82, !alias.scope !28842, !noalias !28848, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i.i.i125 = icmp ult i64 %i.ul, %i.um
  %i.un = select i1 %.not.i.i.i.i.i.i.i125, i64 0, i64 %i.um
  %.sroa.0.0.i.i.i.i.i.i.i126 = sub nuw i64 %i.ul, %i.un
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i: ; preds = %bb.cv, %bb.cs
  %.sink.i.i.i127 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i126, %bb.cv ], [ 0, %bb.cs ]
  store i64 %.sink.i.i.i127, ptr %i.tt, align 8, !alias.scope !28842, !noalias !28848
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i, %bb.cu
  store i64 %i.uf, ptr %i.tp, align 8, !alias.scope !28842, !noalias !28848
  br label %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.cw:                                            ; preds = %bb.cq
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #45, !noalias !28850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28847
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1043, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1044) #55, !noalias !28850
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i120: ; preds = %bb.cq
  %i.uo = add i64 %.sroa.12.015.i.i.i, -1         ; 2 uses
  %i.up = add i64 %.sroa.7.016.i.i.i, 1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !28850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28847
  %i.uq = icmp eq i64 %i.uo, 0
  br i1 %i.uq, label %bb.cr, label %bb.cq

_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %.loopexit._RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i
  %i.ur = phi i64 [ %.pre.i.i129, %.loopexit._RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i.i ], [ %i.uf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ut = load i64, ptr %i.aq, align 8, !range !82, !alias.scope !28843, !noundef !80 ; 2 uses
  %i.uu = icmp eq i64 %i.ur, %i.ut
  br i1 %i.uu, label %bb.cx, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.cx:                                            ; preds = %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE4growCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq) #52, !noalias !28838
  %.pre.i.i.i123 = load i64, ptr %i.us, align 8, !alias.scope !28843
  %.pre5.i.i.i124 = load i64, ptr %i.aq, align 8, !range !82, !alias.scope !28843
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.cx, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.uv = phi i64 [ %.pre5.i.i.i124, %bb.cx ], [ %i.ut, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %i.uw = phi i64 [ %.pre.i.i.i123, %bb.cx ], [ %i.ur, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %i.ux = add i64 %i.uw, 1
  store i64 %i.ux, ptr %i.us, align 8, !alias.scope !28843
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.uz = load i64, ptr %i.uy, align 8, !alias.scope !28843, !noundef !80
  %i.va = add i64 %i.uz, %i.uw                    ; 2 uses
  %.not.i5.i.i = icmp ult i64 %i.va, %i.uv
  %i.vb = select i1 %.not.i5.i.i, i64 0, i64 %i.uv
  %.sroa.03.0.i.i.i122 = sub nuw i64 %i.va, %i.vb
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8, !alias.scope !28843, !nonnull !80, !noundef !80
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %.sroa.03.0.i.i.i122
  store i64 %.sroa.10.0.copyload441, ptr %i.ve, align 8, !noalias !28838
  br label %bb.cz

bb.cy:                                            ; preds = %.lr.ph205
  call fastcc void @_RINvMCshXcoQFZsaxY_14lru_time_cacheINtB3_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE10update_keyyECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) #45, !noalias !28838
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !28851)
  call void @llvm.experimental.noalias.scope.decl(metadata !28852)
  %i.vf = load ptr, ptr %i.py, align 8, !alias.scope !28853, !noundef !80 ; 5 uses
  %.not.i.i6.i.i = icmp eq ptr %i.vf, null
  br i1 %.not.i.i6.i.i, label %.thread.i.i.i116, label %bb.da

.thread.i.i.i116:                                 ; preds = %bb.cz
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28854
  %i.vg = call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 456, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28854 ; 9 uses
  %i.vh = icmp eq ptr %i.vg, null
  br i1 %i.vh, label %bb.el, label %_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB19_4LeafE16push_with_handleCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, !prof !92

bb.da:                                            ; preds = %bb.cz
  %i.vi = load i64, ptr %i.st, align 8, !alias.scope !28853, !noundef !80 ; 3 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.de, %bb.da
  %.sroa.3.0.i.i.i.i.i66 = phi i64 [ %i.vi, %bb.da ], [ %i.vy, %bb.de ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i67 = phi ptr [ %i.vf, %bb.da ], [ %i.vx, %bb.de ] ; 13 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i67, i64 360 ; 6 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i67, i64 450
  %i.vl = load i16, ptr %i.vk, align 2, !noalias !28855, !noundef !80 ; 4 uses
  %i.vm = zext i16 %i.vl to i64                   ; 5 uses
  %.idx219 = shl nuw nsw i64 %i.vm, 3
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx219
  %i.vo = icmp eq i16 %i.vl, 0
  br i1 %i.vo, label %._crit_edge214, label %.lr.ph213

bb.dc:                                            ; preds = %.lr.ph213
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i69211, i64 8 ; 2 uses
  %i.vq = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i68210, 1
  %i.vr = icmp eq ptr %i.vp, %i.vn
  br i1 %i.vr, label %._crit_edge214, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.db, %bb.dc
  %.sroa.0.03.i.i.i.i.i.i69211 = phi ptr [ %i.vp, %bb.dc ], [ %i.vj, %bb.db ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i68210 = phi i64 [ %i.vq, %bb.dc ], [ 0, %bb.db ] ; 3 uses
  %.val6.i.i.i.i.i.i70 = load i64, ptr %.sroa.0.03.i.i.i.i.i.i69211, align 8, !noalias !28855, !noundef !80
  %i.vs = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.10.0.copyload441, i64 %.val6.i.i.i.i.i.i70)
  switch i8 %i.vs, label %bb.dd [
    i8 -1, label %._crit_edge214
    i8 0, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6insertCsa7TLgTh0CeG_9ssmanager.exit.i.i
    i8 1, label %bb.dc
  ]

bb.dd:                                            ; preds = %.lr.ph213
  unreachable

._crit_edge214:                                   ; preds = %bb.dc, %.lr.ph213, %bb.db
  %.sroa.4.0.i.ph.i.i.i.i.i83 = phi i64 [ %i.vm, %bb.db ], [ %i.vm, %bb.dc ], [ %.sroa.8.0.i.i.i.i.i.i68210, %.lr.ph213 ] ; 14 uses
  %i.vt = icmp eq i64 %.sroa.3.0.i.i.i.i.i66, 0
  br i1 %i.vt, label %bb.df, label %bb.de

bb.de:                                            ; preds = %._crit_edge214
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i67, i64 456
  %i.vv = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i83, 12
  call void @llvm.assume(i1 %i.vv)
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %.sroa.4.0.i.ph.i.i.i.i.i83
  %i.vx = load ptr, ptr %i.vw, align 8, !noalias !28855, !nonnull !80, !noundef !80
  %i.vy = add i64 %.sroa.3.0.i.i.i.i.i66, -1
  br label %bb.db

bb.df:                                            ; preds = %._crit_edge214
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i67, i64 450 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.131.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.sroa.0.i.i.i.i.i)
  %i.wa = icmp ult i16 %i.vl, 11
  br i1 %i.wa, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wb = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i83, 5
  br i1 %i.wb, label %bb.dm, label %bb.dj

bb.dh:                                            ; preds = %bb.df
  %.not.i.i.i.i.not.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i83, %i.vm
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %.sroa.4.0.i.ph.i.i.i.i.i83 ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i, label %bb.di, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.dh
  store i64 %.sroa.10.0.copyload441, ptr %i.wc, align 8, !alias.scope !28856, !noalias !28857
  call void @llvm.experimental.noalias.scope.decl(metadata !28858)
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.wd = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i83, 1 ; 2 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.wd
  %i.wf = sub nuw nsw i64 %i.vm, %.sroa.4.0.i.ph.i.i.i.i.i83 ; 2 uses
  %i.wg = shl nuw nsw i64 %i.wf, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.we, ptr nonnull align 8 %i.wc, i64 %i.wg, i1 false), !alias.scope !28856, !noalias !28857
  store i64 %.sroa.10.0.copyload441, ptr %i.wc, align 8, !alias.scope !28856, !noalias !28857
  %i.wh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i67, i64 %.sroa.4.0.i.ph.i.i.i.i.i83
  %i.wi = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i67, i64 %i.wd
  %i.wj = shl nuw nsw i64 %i.wf, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wi, ptr nonnull align 8 %i.wh, i64 %i.wj, i1 false), !alias.scope !28859, !noalias !28857
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i: ; preds = %bb.di, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %3 = add nuw nsw i16 %i.vl, 1
  %i.wk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i67, i64 %.sroa.4.0.i.ph.i.i.i.i.i83 ; 4 uses
  store ptr %i.so, ptr %i.wk, align 8, !alias.scope !28860, !noalias !28857
  %.sroa.6.0..sroa_idx.i.i114 = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  store ptr %i.sp, ptr %.sroa.6.0..sroa_idx.i.i114, align 8, !alias.scope !28860, !noalias !28857
  %.sroa.8.0..sroa_idx.i.i115 = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store i64 %i.sr, ptr %.sroa.8.0..sroa_idx.i.i115, align 8, !alias.scope !28860, !noalias !28857
  %.sroa.1057.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  store i32 %i.ss, ptr %.sroa.1057.0..sroa_idx.i.i, align 8, !alias.scope !28860, !noalias !28857
  store i16 %3, ptr %i.vz, align 2, !noalias !28857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.sroa.0.i.i.i.i.i)
  br label %bb.dr

bb.dj:                                            ; preds = %bb.dg
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i83, label %bb.dk [
    i64 5, label %bb.dm
    i64 6, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.wl = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i83, -7
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.dg
  %.sroa.09.0.i.i.i.i.i.i84 = phi i1 [ true, %bb.dl ], [ true, %bb.dk ], [ false, %bb.dg ], [ false, %bb.dj ]
  %.sroa.510.0.i.i.i.i.i.i85 = phi i64 [ 0, %bb.dl ], [ %i.wl, %bb.dk ], [ %.sroa.4.0.i.ph.i.i.i.i.i83, %bb.dg ], [ %.sroa.4.0.i.ph.i.i.i.i.i83, %bb.dj ] ; 6 uses
  %.sroa.013.0.i.i.i.i.i.i86 = phi i64 [ 5, %bb.dl ], [ 6, %bb.dk ], [ 4, %bb.dg ], [ %.sroa.4.0.i.ph.i.i.i.i.i83, %bb.dj ] ; 5 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28861
  %i.wm = call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 456, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28861 ; 8 uses
  %i.wn = icmp eq ptr %i.wm, null
  br i1 %i.wn, label %bb.dn, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, !prof !92

bb.dn:                                            ; preds = %bb.dm
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 456) #54, !noalias !28861
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.dm
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 352
  store ptr null, ptr %i.wo, align 8, !noalias !28861
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 450
  call void @llvm.experimental.noalias.scope.decl(metadata !28862)
  %i.wq = load i16, ptr %i.vz, align 2, !noalias !28863, !noundef !80
  %i.wr = zext i16 %i.wq to i64
  %i.ws = xor i64 %.sroa.013.0.i.i.i.i.i.i86, -1
  %i.wt = add nsw i64 %i.wr, %i.ws                ; 5 uses
  %i.wu = trunc i64 %i.wt to i16
  store i16 %i.wu, ptr %i.wp, align 2, !alias.scope !28862, !noalias !28861
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %.sroa.013.0.i.i.i.i.i.i86
  %i.ww = load i64, ptr %i.wv, align 8, !noalias !28863, !noundef !80 ; 2 uses
  %i.wx = icmp ult i64 %i.wt, 12
  br i1 %i.wx, label %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, label %bb.do, !prof !102

bb.do:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.wt, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1238) #55, !noalias !28863
  unreachable

_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.wy = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i67, i64 %.sroa.013.0.i.i.i.i.i.i86 ; 3 uses
  %i.wz = add nuw nsw i64 %.sroa.013.0.i.i.i.i.i.i86, 1 ; 2 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.wz
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wm, i64 360
  %i.xc = shl nuw nsw i64 %i.wt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.xb, ptr nonnull readonly align 8 %i.xa, i64 %i.xc, i1 false), !alias.scope !28864, !noalias !28865
  %i.xd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i67, i64 %i.wz
  %i.xe = shl nuw nsw i64 %i.wt, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.wm, ptr nonnull readonly align 8 %i.xd, i64 %i.xe, i1 false), !alias.scope !28866, !noalias !28865
  %i.xf = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i.i.i86 to i16
  store i16 %i.xf, ptr %i.vz, align 2, !noalias !28863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.wy, i64 24, i1 false), !noalias !28867
  %.sroa.12.i.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wy, i64 24
  %.sroa.12.i.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.12.i.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28867 ; 3 uses
  %.sroa.12.i.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wy, i64 28
  %.sroa.12.i.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.12.i.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !28867 ; 2 uses
  %spec.select38.i.i.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i.i.i84, ptr %i.wm, ptr %.sroa.0.0.i.i.i.i.i67 ; 5 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i.i, i64 450 ; 2 uses
  %i.xh = load i16, ptr %i.xg, align 2, !noalias !28868, !noundef !80 ; 2 uses
  %i.xi = zext i16 %i.xh to i64                   ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i.i, i64 360 ; 2 uses
  %.not.i14.not.i.i.i.i.i.i87 = icmp ult i64 %.sroa.510.0.i.i.i.i.i.i85, %i.xi
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %.sroa.510.0.i.i.i.i.i.i85 ; 3 uses
  br i1 %.not.i14.not.i.i.i.i.i.i87, label %bb.dp, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i.i: ; preds = %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  store i64 %.sroa.10.0.copyload441, ptr %i.xk, align 8, !alias.scope !28869, !noalias !28868
  call void @llvm.experimental.noalias.scope.decl(metadata !28870)
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.dp:                                            ; preds = %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.xl = add nuw nsw i64 %.sroa.510.0.i.i.i.i.i.i85, 1 ; 2 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %i.xl
  %i.xn = sub nuw nsw i64 %i.xi, %.sroa.510.0.i.i.i.i.i.i85 ; 2 uses
  %i.xo = shl nuw nsw i64 %i.xn, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xm, ptr nonnull align 8 %i.xk, i64 %i.xo, i1 false), !alias.scope !28869, !noalias !28868
  store i64 %.sroa.10.0.copyload441, ptr %i.xk, align 8, !alias.scope !28869, !noalias !28868
  %i.xp = getelementptr inbounds nuw [32 x i8], ptr %spec.select38.i.i.i.i.i.i, i64 %.sroa.510.0.i.i.i.i.i.i85
  %i.xq = getelementptr inbounds nuw [32 x i8], ptr %spec.select38.i.i.i.i.i.i, i64 %i.xl
  %i.xr = shl nuw nsw i64 %i.xn, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xq, ptr nonnull align 8 %i.xp, i64 %i.xr, i1 false), !alias.scope !28871, !noalias !28868
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.dp, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i.i
  %4 = add i16 %i.xh, 1
  %i.xs = getelementptr inbounds nuw [32 x i8], ptr %spec.select38.i.i.i.i.i.i, i64 %.sroa.510.0.i.i.i.i.i.i85 ; 4 uses
  store ptr %i.so, ptr %i.xs, align 8, !alias.scope !28872, !noalias !28868
  %.sroa.660.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  store ptr %i.sp, ptr %.sroa.660.0..sroa_idx.i.i, align 8, !alias.scope !28872, !noalias !28868
  %.sroa.861.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  store i64 %i.sr, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !alias.scope !28872, !noalias !28868
  %.sroa.1062.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  store i32 %i.ss, ptr %.sroa.1062.0..sroa_idx.i.i, align 8, !alias.scope !28872, !noalias !28868
  store i16 %4, ptr %i.xg, align 2, !noalias !28868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.131.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.sroa.0.i.i.i.i.i, i64 24, i1 false), !noalias !28873
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.sroa.0.i.i.i.i.i)
  %.not.i.i.i7.i.i = icmp eq i32 %.sroa.12.i.sroa.4.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i.i7.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.131.i.i.i.i.i, i64 24, i1 false), !noalias !28874
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.131.i.i.i.i.i)
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i67, i64 352
  %i.xu = load ptr, ptr %i.xt, align 8, !noalias !28875, !noundef !80 ; 2 uses
  %.not.i149.i.i.i.i.i = icmp eq ptr %i.xu, null
  br i1 %.not.i149.i.i.i.i.i, label %._crit_edge.i.i.i.i.i100, label %.lr.ph.i.i.i.i.i88

bb.dr:                                            ; preds = %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.131.i.i.i.i.i)
  br label %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4y_11VacantEntryyB1E_E12insert_entry0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

._crit_edge.i.i.i.i.i100:                         ; preds = %bb.ek, %bb.dq
  %.sroa.13.sroa.8.0.lcssa.i.i.i.i.i = phi i32 [ %.sroa.12.i.sroa.5.0.copyload.i.i.i.i.i, %bb.dq ], [ %.sroa.4.i.i.sroa.5.0.copyload.i.i.i.i.i, %bb.ek ]
  %.sroa.13.sroa.7.0.lcssa.i.i.i.i.i = phi i32 [ %.sroa.12.i.sroa.4.0.copyload.i.i.i.i.i, %bb.dq ], [ %.sroa.4.i.i.sroa.4.0.copyload.i.i.i.i.i, %bb.ek ]
  %.sroa.11.0.lcssa.i.i.i.i.i = phi i64 [ %i.ww, %bb.dq ], [ %i.abh, %bb.ek ]
  %.sroa.9.0.lcssa.i.i.i.i.i101 = phi i64 [ 0, %bb.dq ], [ %i.yj, %bb.ek ]
  %.sroa.7.0.lcssa.i.i.i.i.i102 = phi ptr [ %i.wm, %bb.dq ], [ %i.aaw, %bb.ek ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28876)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28877
  %i.xv = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 552, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28877 ; 12 uses
  %i.xw = icmp eq ptr %i.xv, null
  br i1 %i.xw, label %bb.ds, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i, !prof !92

bb.ds:                                            ; preds = %._crit_edge.i.i.i.i.i100
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #54, !noalias !28877
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i100
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 352
  store ptr null, ptr %i.xx, align 8, !noalias !28877
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 450 ; 2 uses
  store i16 0, ptr %i.xy, align 2, !noalias !28877
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xv, i64 456
  store ptr %i.vf, ptr %i.xz, align 8, !noalias !28877
  %i.ya = add i64 %i.vi, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i103 = icmp eq i64 %i.ya, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i103, label %bb.dt, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, !prof !92

bb.dt:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #55, !noalias !28877
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vf, i64 352
  store ptr %i.xv, ptr %i.yb, align 8, !noalias !28878
  %i.yc = getelementptr inbounds nuw i8, ptr %i.vf, i64 448
  store i16 0, ptr %i.yc, align 8, !noalias !28879
  store ptr %i.xv, ptr %i.py, align 8, !alias.scope !28880, !noalias !28881
  store i64 %i.ya, ptr %i.st, align 8, !alias.scope !28880, !noalias !28881
  %i.yd = icmp eq i64 %.sroa.9.0.lcssa.i.i.i.i.i101, %i.vi
  br i1 %i.yd, label %_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12insert_entry0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.du, !prof !89

bb.du:                                            ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1310, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1311) #55, !noalias !28882
  unreachable

_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE12insert_entry0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  store i16 1, ptr %i.xy, align 2, !noalias !28882
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xv, i64 360
  store i64 %.sroa.11.0.lcssa.i.i.i.i.i, ptr %i.ye, align 8, !noalias !28882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.sroa.0.i.i.i.i.i, i64 24, i1 false), !noalias !28883
  %.sroa.1026.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xv, i64 24
  store i32 %.sroa.13.sroa.7.0.lcssa.i.i.i.i.i, ptr %.sroa.1026.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28883
  %.sroa.1026.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xv, i64 28
  store i32 %.sroa.13.sroa.8.0.lcssa.i.i.i.i.i, ptr %.sroa.1026.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !28883
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xv, i64 464
  store ptr %.sroa.7.0.lcssa.i.i.i.i.i102, ptr %i.yf, align 8, !noalias !28882
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i.i.i102, i64 352
  store ptr %i.xv, ptr %i.yg, align 8, !noalias !28882
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i.i.i102, i64 448
  store i16 1, ptr %i.yh, align 8, !noalias !28882
  br label %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4y_11VacantEntryyB1E_E12insert_entry0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

.lr.ph.i.i.i.i.i88:                               ; preds = %bb.dq, %bb.ek
  %i.yi = phi ptr [ %i.afp, %bb.ek ], [ %i.xu, %bb.dq ] ; 19 uses
  %.sroa.0.0156.i.i.i.i.i89 = phi ptr [ %i.yi, %bb.ek ], [ %.sroa.0.0.i.i.i.i.i67, %bb.dq ]
  %.sroa.6.0155.i.i.i.i.i90 = phi i64 [ %i.yj, %bb.ek ], [ 0, %bb.dq ]
  %.sroa.7.0154.i.i.i.i.i91 = phi ptr [ %i.aaw, %bb.ek ], [ %i.wm, %bb.dq ] ; 2 uses
  %.sroa.11.0152.i.i.i.i.i = phi i64 [ %i.abh, %bb.ek ], [ %i.ww, %bb.dq ] ; 4 uses
  %.sroa.13.sroa.7.0151.i.i.i.i.i = phi i32 [ %.sroa.4.i.i.sroa.4.0.copyload.i.i.i.i.i, %bb.ek ], [ %.sroa.12.i.sroa.4.0.copyload.i.i.i.i.i, %bb.dq ] ; 4 uses
  %.sroa.13.sroa.8.0150.i.i.i.i.i = phi i32 [ %.sroa.4.i.i.sroa.5.0.copyload.i.i.i.i.i, %bb.ek ], [ %.sroa.12.i.sroa.5.0.copyload.i.i.i.i.i, %bb.dq ] ; 4 uses
  %i.yj = add i64 %.sroa.6.0155.i.i.i.i.i90, 1    ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0.0156.i.i.i.i.i89, i64 448
  %i.yl = load i16, ptr %i.yk, align 8, !noalias !28875 ; 4 uses
  %i.ym = zext i16 %i.yl to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1320.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i37.sroa.0.i.i.i.i.i)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 450 ; 4 uses
  %i.yo = load i16, ptr %i.yn, align 2, !noalias !28884, !noundef !80 ; 5 uses
  %i.yp = icmp ult i16 %i.yo, 11
  br i1 %i.yp, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i.i88
  %i.yq = icmp ult i16 %i.yl, 5
  br i1 %i.yq, label %bb.eb, label %bb.dy

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i.i88
  %i.yr = zext nneg i16 %i.yo to i64              ; 4 uses
  %i.ys = add nuw nsw i16 %i.yo, 1
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yi, i64 360 ; 2 uses
  %i.yu = add nuw nsw i64 %i.ym, 1                ; 7 uses
  %.not.i.i39.not.i.i.i.i.i = icmp ult i16 %i.yl, %i.yo
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %i.ym ; 3 uses
  br i1 %.not.i.i39.not.i.i.i.i.i, label %bb.dx, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i110

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i110: ; preds = %bb.dw
  store i64 %.sroa.11.0152.i.i.i.i.i, ptr %i.yv, align 8, !alias.scope !28885, !noalias !28886
  call void @llvm.experimental.noalias.scope.decl(metadata !28887)
  %i.yw = getelementptr inbounds nuw [32 x i8], ptr %i.yi, i64 %i.ym ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.sroa.0.i.i.i.i.i, i64 24, i1 false), !noalias !28883
  %.sroa.647.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  store i32 %.sroa.13.sroa.7.0151.i.i.i.i.i, ptr %.sroa.647.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !28888, !noalias !28886
  %.sroa.848.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 28
  store i32 %.sroa.13.sroa.8.0150.i.i.i.i.i, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !28888, !noalias !28886
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %i.yu
  %i.yy = sub nuw nsw i64 %i.yr, %i.ym            ; 2 uses
  %i.yz = shl nuw nsw i64 %i.yy, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yx, ptr nonnull align 8 %i.yv, i64 %i.yz, i1 false), !alias.scope !28885, !noalias !28886
  store i64 %.sroa.11.0152.i.i.i.i.i, ptr %i.yv, align 8, !alias.scope !28885, !noalias !28886
  %i.za = getelementptr inbounds nuw [32 x i8], ptr %i.yi, i64 %i.ym ; 4 uses
  %i.zb = getelementptr inbounds nuw [32 x i8], ptr %i.yi, i64 %i.yu
  %i.zc = shl nuw nsw i64 %i.yy, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zb, ptr nonnull align 8 %i.za, i64 %i.zc, i1 false), !alias.scope !28889, !noalias !28886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.za, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.sroa.0.i.i.i.i.i, i64 24, i1 false), !noalias !28883
  %.sroa.647.0..sroa_idx284.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  store i32 %.sroa.13.sroa.7.0151.i.i.i.i.i, ptr %.sroa.647.0..sroa_idx284.i.i.i.i.i, align 8, !alias.scope !28888, !noalias !28886
  %.sroa.848.0..sroa_idx285.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.za, i64 28
  store i32 %.sroa.13.sroa.8.0150.i.i.i.i.i, ptr %.sroa.848.0..sroa_idx285.i.i.i.i.i, align 4, !alias.scope !28888, !noalias !28886
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yi, i64 456 ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.yu
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.ym
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zg, ptr nonnull align 8 %i.ze, i64 %i.yz, i1 false), !alias.scope !28890, !noalias !28886
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.dx, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i110
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yi, i64 456 ; 6 uses
  %i.zi = add nuw nsw i64 %i.yr, 2                ; 2 uses
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.yu
  store ptr %.sroa.7.0154.i.i.i.i.i91, ptr %i.zj, align 8, !alias.scope !28890, !noalias !28886
  store i16 %i.ys, ptr %i.yn, align 2, !noalias !28886
  %i.zk = icmp samesign ult i64 %i.yu, %i.zi
  br i1 %i.zk, label %.lr.ph.i.i.i.i.i.i.i.i111.preheader, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i111.preheader:              ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.zl = add nuw nsw i64 %i.yr, 1
  %i.zm = sub nsw i64 %i.zl, %i.ym
  %i.zn = sub nsw i64 %i.yr, %i.ym
  %xtraiter432 = and i64 %i.zm, 3                 ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.lr.ph.i.i.i.i.i.i.i.i111.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i111.prol

.lr.ph.i.i.i.i.i.i.i.i111.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.preheader, %.lr.ph.i.i.i.i.i.i.i.i111.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i112.prol = phi i64 [ %i.zo, %.lr.ph.i.i.i.i.i.i.i.i111.prol ], [ %i.yu, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ] ; 4 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.lr.ph.i.i.i.i.i.i.i.i111.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ]
  %i.zo = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i112.prol, 1 ; 2 uses
  %i.zp = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i112.prol, 12
  call void @llvm.assume(i1 %i.zp)
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %.sroa.0.06.i.i.i.i.i.i.i.i112.prol
  %i.zr = load ptr, ptr %i.zq, align 8, !noalias !28886, !nonnull !80, !noundef !80 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 352
  store ptr %i.yi, ptr %i.zs, align 8, !noalias !28886
  %i.zt = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i112.prol to i16
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 448
  store i16 %i.zt, ptr %i.zu, align 8, !noalias !28886
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i111.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i111.prol, !llvm.loop !28657

.lr.ph.i.i.i.i.i.i.i.i111.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.prol, %.lr.ph.i.i.i.i.i.i.i.i111.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i112.unr = phi i64 [ %i.yu, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ], [ %i.zo, %.lr.ph.i.i.i.i.i.i.i.i111.prol ]
  %i.zv = icmp ult i64 %i.zn, 3
  br i1 %i.zv, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i111

.lr.ph.i.i.i.i.i.i.i.i111:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i111
  %.sroa.0.06.i.i.i.i.i.i.i.i112 = phi i64 [ %i.aao, %.lr.ph.i.i.i.i.i.i.i.i111 ], [ %.sroa.0.06.i.i.i.i.i.i.i.i112.unr, %.lr.ph.i.i.i.i.i.i.i.i111.prol.loopexit ] ; 7 uses
  %i.zw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i112, 1 ; 2 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %.sroa.0.06.i.i.i.i.i.i.i.i112
  %i.zy = load ptr, ptr %i.zx, align 8, !noalias !28886, !nonnull !80, !noundef !80 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 352
  store ptr %i.yi, ptr %i.zz, align 8, !noalias !28886
  %i.aaa = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i112 to i16
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 448
  store i16 %i.aaa, ptr %i.aab, align 8, !noalias !28886
  %i.aac = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i112, 2 ; 2 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.zw
  %i.aae = load ptr, ptr %i.aad, align 8, !noalias !28886, !nonnull !80, !noundef !80 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 352
  store ptr %i.yi, ptr %i.aaf, align 8, !noalias !28886
  %i.aag = trunc nuw nsw i64 %i.zw to i16
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 448
  store i16 %i.aag, ptr %i.aah, align 8, !noalias !28886
  %i.aai = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i112, 3 ; 2 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.aac
  %i.aak = load ptr, ptr %i.aaj, align 8, !noalias !28886, !nonnull !80, !noundef !80 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 352
  store ptr %i.yi, ptr %i.aal, align 8, !noalias !28886
  %i.aam = trunc nuw nsw i64 %i.aac to i16
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 448
  store i16 %i.aam, ptr %i.aan, align 8, !noalias !28886
  %i.aao = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i112, 4 ; 2 uses
  %i.aap = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i112, 9
  call void @llvm.assume(i1 %i.aap)
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.aai
  %i.aar = load ptr, ptr %i.aaq, align 8, !noalias !28886, !nonnull !80, !noundef !80 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 352
  store ptr %i.yi, ptr %i.aas, align 8, !noalias !28886
  %i.aat = trunc nuw nsw i64 %i.aai to i16
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 448
  store i16 %i.aat, ptr %i.aau, align 8, !noalias !28886
  %exitcond.not.i.i.i.i.i.i.i.i113.3 = icmp eq i64 %i.aao, %i.zi
  br i1 %exitcond.not.i.i.i.i.i.i.i.i113.3, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i111

bb.dy:                                            ; preds = %bb.dv
  switch i16 %i.yl, label %bb.dz [
    i16 5, label %bb.eb
    i16 6, label %bb.ea
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.aav = add nsw i64 %i.ym, -7
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dv
  %.sroa.06.0.i.i.i.i.i.i92 = phi i64 [ 5, %bb.ea ], [ 6, %bb.dz ], [ 4, %bb.dv ], [ 5, %bb.dy ] ; 7 uses
  %.sroa.5.0.i.i.i.i.i.i93 = phi i64 [ 0, %bb.ea ], [ %i.aav, %bb.dz ], [ %i.ym, %bb.dv ], [ 5, %bb.dy ] ; 9 uses
  %.sroa.03.0.i.i.i.i.i.i94 = phi i1 [ true, %bb.ea ], [ true, %bb.dz ], [ false, %bb.dv ], [ false, %bb.dy ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28891
  %i.aaw = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 552, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28891 ; 14 uses
  %i.aax = icmp eq ptr %i.aaw, null
  br i1 %i.aax, label %bb.ec, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, !prof !92

bb.ec:                                            ; preds = %bb.eb
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #54, !noalias !28891
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.eb
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 352
  store ptr null, ptr %i.aay, align 8, !noalias !28891
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 450 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.sroa.0.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !28892)
  %i.aba = load i16, ptr %i.yn, align 2, !noalias !28893, !noundef !80
  %i.abb = zext i16 %i.aba to i64
  %i.abc = xor i64 %.sroa.06.0.i.i.i.i.i.i92, -1
  %i.abd = add nsw i64 %i.abb, %i.abc             ; 5 uses
  %i.abe = trunc i64 %i.abd to i16
  store i16 %i.abe, ptr %i.aaz, align 2, !alias.scope !28892, !noalias !28891
  %i.abf = getelementptr inbounds nuw i8, ptr %i.yi, i64 360 ; 2 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %.sroa.06.0.i.i.i.i.i.i92
  %i.abh = load i64, ptr %i.abg, align 8, !noalias !28893, !noundef !80 ; 2 uses
  %i.abi = icmp ult i64 %i.abd, 12
  br i1 %i.abi, label %_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %bb.ed, !prof !102

bb.ed:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.abd, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1238) #55, !noalias !28893
  unreachable

_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.abj = getelementptr inbounds nuw [32 x i8], ptr %i.yi, i64 %.sroa.06.0.i.i.i.i.i.i92 ; 3 uses
  %i.abk = add nuw nsw i64 %.sroa.06.0.i.i.i.i.i.i92, 1 ; 2 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aaw, i64 360
  %i.abn = shl nuw nsw i64 %i.abd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.abm, ptr nonnull readonly align 8 %i.abl, i64 %i.abn, i1 false), !alias.scope !28894, !noalias !28895
  %i.abo = getelementptr inbounds nuw [32 x i8], ptr %i.yi, i64 %i.abk
  %i.abp = shl nuw nsw i64 %i.abd, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.aaw, ptr nonnull readonly align 8 %i.abo, i64 %i.abp, i1 false), !alias.scope !28896, !noalias !28895
  %i.abq = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i.i.i92 to i16
  store i16 %i.abq, ptr %i.yn, align 2, !noalias !28893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.abj, i64 24, i1 false), !noalias !28884
  %.sroa.4.i.i.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abj, i64 24
  %.sroa.4.i.i.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.i.i.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28884 ; 3 uses
  %.sroa.4.i.i.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abj, i64 28
  %.sroa.4.i.i.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.i.i.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !28884 ; 2 uses
  %i.abr = load i16, ptr %i.aaz, align 2, !noalias !28891, !noundef !80 ; 3 uses
  %i.abs = zext i16 %i.abr to i64
  %i.abt = add nuw nsw i64 %i.abs, 1              ; 5 uses
  %i.abu = icmp ult i16 %i.abr, 12
  br i1 %i.abu, label %bb.ee, label %bb.eh, !prof !102

bb.ee:                                            ; preds = %_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aaw, i64 456 ; 6 uses
  %i.abw = zext i16 %i.yo to i64
  %i.abx = sub nuw nsw i64 %i.abw, %.sroa.06.0.i.i.i.i.i.i92
  call void @llvm.experimental.noalias.scope.decl(metadata !28897)
  call void @llvm.experimental.noalias.scope.decl(metadata !28898)
  %i.aby = icmp eq i64 %i.abx, %i.abt
  br i1 %i.aby, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %bb.ef, !prof !89

bb.ef:                                            ; preds = %bb.ee
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #55, !noalias !28899
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.ee
  %i.abz = getelementptr i8, ptr %i.yi, i64 464
  %i.aca = getelementptr [8 x i8], ptr %i.abz, i64 %.sroa.06.0.i.i.i.i.i.i92
  %i.acb = shl nuw nsw i64 %i.abt, 3
end_hunk_2
begin_hunk_3_@_RNvCsa7TLgTh0CeG_9ssmanager4main:_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsa7TLgTh0CeG_9ssmanager.exit
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %.sroa.5.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.6.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 9 uses
  %i.m = alloca [64 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 16 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.s = alloca [2 x i8], align 1                 ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [80 x i8], align 8                ; 17 uses
  %i.aa = alloca [73424 x i8], align 8            ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 7 uses
  %i.ad = alloca [8 x i8], align 8                ; 3 uses
  %.sroa.4.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [64 x i8], align 8               ; 11 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.4.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.4.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 13 uses
  %i.al = alloca [712 x i8], align 8              ; 3 uses
  %i.am = alloca [712 x i8], align 8              ; 4 uses
  %i.an = alloca [56 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [56 x i8], align 8               ; 5 uses
  %i.ar = alloca [712 x i8], align 8              ; 4 uses
  %i.as = alloca [712 x i8], align 8              ; 58 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !32332
  call void @_RNvXs2_NtNtCslDQ48jUgq5Q_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1042, i64 noundef 78) #45, !noalias !32332
  %i.at = load i64, ptr %i.ao, align 8, !range !115, !noalias !32332, !noundef !80 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i1, align 8
  %.sroa.5.i.sroa.4.0..sroa.4.0..sroa_idx.i1.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.4.0..sroa_idx.i1.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.au, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.au, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !32332
  store i64 0, ptr %i.as, align 8, !alias.scope !32332
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 1, ptr %.sroa.211.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 216
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 264
  store i64 0, ptr %.sroa.25.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 272
  store i64 -1, ptr %.sroa.26.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.2713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 296 ; 5 uses
  store i64 -1, ptr %.sroa.2713.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 304 ; 2 uses
  %.sroa.2814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 320
  store i64 %i.at, ptr %.sroa.2814.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 328
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.31.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 336
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.33.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.3315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  store i64 -1, ptr %.sroa.3315.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.3416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 368
  store i64 -1, ptr %.sroa.3416.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.3517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 392
  store i64 -1, ptr %.sroa.3517.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.3618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 416
  store i64 -1, ptr %.sroa.3618.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.3719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 440
  store i64 -1, ptr %.sroa.3719.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.3820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 464
  store i64 -1, ptr %.sroa.3820.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.3921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 488
  store i64 -1, ptr %.sroa.3921.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.4022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  store i64 -1, ptr %.sroa.4022.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 536
  store i64 -1, ptr %.sroa.4123.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 560 ; 2 uses
  store ptr @1040, ptr %.sroa.4224.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 568 ; 2 uses
  store i64 11, ptr %.sroa.43.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 576
  store ptr null, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.4525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 592
  store ptr null, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.4626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 608
  store ptr @1041, ptr %.sroa.4626.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 616
  store i64 6, ptr %.sroa.48.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 624
  store ptr null, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.5027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 640
  store ptr null, ptr %.sroa.5027.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 656
  store ptr null, ptr %.sroa.5128.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 672
  store ptr null, ptr %.sroa.5229.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 688
  store ptr null, ptr %.sroa.5330.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 696
  store i32 -1, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !32332
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 700 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.55.0..sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager27define_command_line_options(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.ar, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(712) %i.as) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.as, ptr noundef nonnull align 8 dereferenceable(712) %i.ar, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @_RNvNtCs5Xr050g3D4S_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ap) #45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !32335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !32338
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32340)
  %.sroa.09.0.copyload.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !32341 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !32341, !nonnull !80, !noundef !80 ; 5 uses
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.510.0.copyload.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !32341 ; 4 uses
  %.sroa.611.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.611.0.copyload.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i, align 8, !alias.scope !32341, !nonnull !80, !noundef !80 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !32342
  %i.av = icmp eq ptr %.sroa.4.0.copyload.i.i.i, %.sroa.611.0.copyload.i.i.i
  br i1 %i.av, label %bb.i, label %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsa7TLgTh0CeG_9ssmanager.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i.i, align 8, !noalias !32343 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.a

bb.a:                                             ; preds = %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !32342
  %i.ax = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64 ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub nuw i64 %i.ax, %i.ay                ; 2 uses
  %i.ba = udiv exact i64 %i.az, 24
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 3) ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.bd = mul i64 %i.bc, 24                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.az, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.d, label %bb.b, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32344
  %i.bf = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bd, i64 noundef range(i64 1, 17) 8) #45, !noalias !32344 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.d, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i) #54, !noalias !32342
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.bf, %bb.c ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.bc, %bb.c ] ; 2 uses
  %0 = icmp samesign ult i64 %i.bb, %.sroa.4.0.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %0)
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, i64 16, i1 false), !noalias !32342
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i, align 8, !noalias !32342
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !32342
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32342
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32346)
  %i.bh = icmp eq ptr %i.aw, %.sroa.611.0.copyload.i.i.i
  br i1 %i.bh, label %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i, label %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %bb.h
  %i.bi = phi ptr [ %i.ca, %bb.h ], [ %.sroa.10.0.i.i.i.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %i.bj = phi i64 [ %i.cc, %bb.h ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.h ], [ %i.aw, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i.i.i, align 8, !noalias !32347 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !32348
  %i.bl = icmp samesign ult i64 %i.bj, 384307168202282326
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i64, ptr %i.ah, align 8, !range !82, !alias.scope !32349, !noalias !32342, !noundef !80
  %i.bn = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bn, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %bb.h

_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i: ; preds = %bb.h, %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0.copyload512.i.i.i = phi i64 [ %i.cc, %bb.h ], [ %i.bj, %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i ]
  %.pre17.i.i.i.i.i = ptrtoint ptr %i.bk to i64
  %.pre18.i.i.i.i.i = sub nuw i64 %i.ax, %.pre17.i.i.i.i.i
  %.pre20.i.i.i.i.i = udiv exact i64 %.pre18.i.i.i.i.i, 24
  br label %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i

_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %.sroa.6.0.copyload5.i.i.i = phi i64 [ %.sroa.6.0.copyload512.i.i.i, %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.pre-phi21.i.i.i.i.i = phi i64 [ %.pre20.i.i.i.i.i, %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ %i.aw, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32350)
  %i.bo = icmp eq ptr %.sroa.611.0.copyload.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bq = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 8, !range !82, !alias.scope !32351, !noalias !32352, !noundef !80 ; 2 uses
  %i.br = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.br, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !32350, !noalias !32352, !nonnull !80, !noundef !80
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32353
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = icmp eq i64 %i.bq, %.pre-phi21.i.i.i.i.i
  br i1 %i.bt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i
  %i.bu = icmp eq i64 %.sroa.510.0.copyload.i.i.i, 0
  br i1 %i.bu, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3VEMjBx1PQp_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i.i) ]
  %i.bv = mul nuw i64 %.sroa.510.0.copyload.i.i.i, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32352
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3VEMjBx1PQp_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bw = ptrtoint ptr %i.bk to i64
  %i.bx = sub nuw i64 %i.ax, %i.bw
  %i.by = udiv exact i64 %i.bx, 24
  %i.bz = add nuw nsw i64 %i.by, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.bj, i64 noundef %i.bz, i64 noundef 8, i64 noundef 24) #45, !noalias !32354
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32349, !noalias !32342
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, %bb.e
  %i.ca = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i ], [ %i.bi, %bb.e ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.bj ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !32348
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %i.cb, align 8, !noalias !32348
  %i.cc = add nuw nsw i64 %i.bj, 1                ; 3 uses
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32349, !noalias !32342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  %i.cd = icmp eq ptr %i.bk, %.sroa.611.0.copyload.i.i.i
  br i1 %i.cd, label %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, label %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3VEMjBx1PQp_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.ah, align 8, !noalias !32355
  %.sroa.5.0.copyload3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !32342
  br label %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.i:                                             ; preds = %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsa7TLgTh0CeG_9ssmanager.exit
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %_RNvXsi_NtCs5Xr050g3D4S_3std3envNtB5_6ArgsOsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsa7TLgTh0CeG_9ssmanager.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !32342
  %i.ce = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64
  %i.cf = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i to i64
  %i.cg = sub nuw i64 %i.ce, %i.cf
  %i.ch = udiv exact i64 %i.cg, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32356)
  %i.ci = icmp eq ptr %.sroa.611.0.copyload.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ci, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !range !82, !alias.scope !32357, !noalias !32358, !noundef !80 ; 2 uses
  %i.cl = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = getelementptr i8, ptr %i.cj, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !32356, !noalias !32358, !nonnull !80, !noundef !80
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32359
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = icmp eq i64 %i.ck, %i.ch
  br i1 %i.cn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.co = icmp eq i64 %.sroa.510.0.copyload.i.i.i, 0
  br i1 %i.co, label %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i.i) ]
  %i.cp = mul nuw i64 %.sroa.510.0.copyload.i.i.i, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i.i, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32358
  br label %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3VEMjBx1PQp_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %.sroa.6.0.i.i.i = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.6.0.copyload5.i.i.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3VEMjBx1PQp_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.5.0.copyload3.i.i.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3VEMjBx1PQp_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.0.0.copyload1.i.i.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3VEMjBx1PQp_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.ak, align 8, !alias.scope !32339, !noalias !32338
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 7 uses
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !32339, !noalias !32338
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 9 uses
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !32339, !noalias !32338
  %.val47.i.i = load i32, ptr %.sroa.55.0..sroa_idx, align 4, !alias.scope !32360, !noundef !80 ; 2 uses
  %i.cq = and i32 %.val47.i.i, 2048
  %.not96.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not96.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %.not.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.l, %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.cr = phi i64 [ 0, %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.l ] ; 5 uses
  %i.cs = and i32 %.val47.i.i, 67108864
  %.not97.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not97.i.i, label %bb.as, label %bb.av

bb.n:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !32338, !nonnull !80, !noundef !80
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !32338, !noundef !80
  %i.cx = tail call { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cw) #45, !noalias !32338 ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0      ; 2 uses
  %.not41.i.i = icmp eq ptr %i.cy, null
  br i1 %.not41.i.i, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !32361
  call void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cz) #45, !noalias !32338
  %i.da = load i64, ptr %i.ag, align 8, !range !87, !noalias !32361, !noundef !80
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !32361, !nonnull !80
  %i.de = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noalias !32361 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !32361
  br i1 %i.db, label %bb.m, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !32338
  %.not.i.i.i = icmp slt i64 %i.df, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.q, !prof !177

bb.q:                                             ; preds = %bb.p
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa7TLgTh0CeG_9ssmanager.exit.thread79.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32362
  %i.dh = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.df, i64 noundef range(i64 1, 17) 1) #45, !noalias !32362 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.s, label %bb.ar

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.r ], [ 0, %bb.p ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.df) #54, !noalias !32338
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa7TLgTh0CeG_9ssmanager.exit.thread79.i.i: ; preds = %bb.ar, %bb.q
  %i.dj = phi ptr [ %i.dh, %bb.ar ], [ inttoptr (i64 1 to ptr), %bb.q ] ; 2 uses
  store i64 %i.df, ptr %i.aj, align 8, !noalias !32338
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr %i.dj, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !32338
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  store i64 %i.df, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !noalias !32338
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !32364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32368)
  %i.dk = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !32369, !noalias !32338, !noundef !80 ; 6 uses
  %i.dl = icmp ult i64 %i.dk, 384307168202282326
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp eq i64 %i.dk, 0
  br i1 %i.dm, label %bb.t, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE6spliceINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, !prof !92

bb.t:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa7TLgTh0CeG_9ssmanager.exit.thread79.i.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef range(i64 0, 384307168202282326) 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #55, !noalias !32370
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE6spliceINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa7TLgTh0CeG_9ssmanager.exit.thread79.i.i
  %i.dn = ptrtoint ptr %i.aj to i64
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !32369, !noalias !32338
  %i.do = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !32369, !noalias !32338, !nonnull !80, !noundef !80 ; 3 uses
  %i.dp = add nsw i64 %i.dk, -1                   ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32365, !noalias !32364
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 7 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32365, !noalias !32364
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 4 uses
  store i64 %i.dp, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32365, !noalias !32364
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 4 uses
  store i64 0, ptr %i.dq, align 8, !alias.scope !32371, !noalias !32364
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i64 1, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !32371, !noalias !32364
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i64 %i.dn, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !32371, !noalias !32364
  call void @llvm.experimental.noalias.scope.decl(metadata !32372)
  call void @llvm.experimental.noalias.scope.decl(metadata !32373)
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !alias.scope !32374, !noalias !32364
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32374, !noalias !32364
  %i.dr = icmp eq i64 %i.dk, 1
  br i1 %i.dr, label %bb.u, label %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.u:                                             ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE6spliceINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call fastcc void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef align 8 dereferenceable(24) %i.dq) #45, !noalias !32338
  br label %_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

1:                                                ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !32375
  br label %bb.y

bb.v:                                             ; preds = %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !32375
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32376
  %i.ds = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 17) 8) #45, !noalias !32376 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 24) #54, !noalias !32377
  unreachable

_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE6spliceINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32378)
  %i.du = load i64, ptr %i.ak, align 8, !range !82, !alias.scope !32363, !noalias !32379, !noundef !80
  %i.dv = icmp eq i64 %i.du, %i.dk
  br i1 %i.dv, label %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.thread.i.i, !prof !92

_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.thread.i.i: ; preds = %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dy = mul nuw nsw i64 %i.dp, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %i.dw, i64 %i.dy, i1 false), !noalias !32379
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32380, !noalias !32364
  br label %.lr.ph.i26.i.i.i.i.i

_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.dk, i64 noundef 1, i64 noundef 8, i64 noundef 24) #45, !noalias !32379
  %.pre.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !32363, !noalias !32379 ; 3 uses
  %.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !32363, !noalias !32381 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 48
  %i.eb = mul nuw nsw i64 %i.dp, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.dz, i64 %i.eb, i1 false), !noalias !32379
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32380, !noalias !32364
  call void @llvm.experimental.noalias.scope.decl(metadata !32382)
  %.not19.i24.i.i.not.not.i.i.i = icmp ugt i64 %.pre.i.i, 1
  br i1 %.not19.i24.i.i.not.not.i.i.i, label %bb.v, label %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i..lr.ph.i26.i.i.i.i_crit_edge.i

_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i..lr.ph.i26.i.i.i.i_crit_edge.i: ; preds = %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %.val.i.peel.i29.i.i.i.i.pre.i = load ptr, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !alias.scope !32383, !noalias !32384
  %.val2.i.peel.i30.i.i.i.i.pre.i = load i64, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !alias.scope !32383, !noalias !32384
  br label %.lr.ph.i26.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i:                             ; preds = %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i..lr.ph.i26.i.i.i.i_crit_edge.i, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.thread.i.i
  %.val2.i.peel.i30.i.i.i.i.i = phi i64 [ %i.df, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.thread.i.i ], [ %.val2.i.peel.i30.i.i.i.i.pre.i, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i..lr.ph.i26.i.i.i.i_crit_edge.i ] ; 7 uses
  %.val.i.peel.i29.i.i.i.i.i = phi ptr [ %i.dj, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.thread.i.i ], [ %.val.i.peel.i29.i.i.i.i.pre.i, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i..lr.ph.i26.i.i.i.i_crit_edge.i ]
  %i.ec = phi ptr [ %i.do, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.thread.i.i ], [ %.pre.i.i.i, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i..lr.ph.i26.i.i.i.i_crit_edge.i ]
  %i.ed = phi i64 [ 1, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.thread.i.i ], [ %.pre.i.i, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i..lr.ph.i26.i.i.i.i_crit_edge.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32385)
  store i64 1, ptr %i.dq, align 8, !alias.scope !32386, !noalias !32364
  %i.ee = icmp eq i64 %.val2.i.peel.i30.i.i.i.i.i, 0
  br i1 %i.ee, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i26.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32387
  %i.ef = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.peel.i30.i.i.i.i.i, i64 noundef range(i64 1, 17) 1) #45, !noalias !32387 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %.loopexit.i40.i.i.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i.i.i

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i.i.i: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull readonly align 1 %.val.i.peel.i29.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.peel.i30.i.i.i.i.i, i1 false), !noalias !32388
  %.not.peel.i32.i.i.i.i.i = icmp eq i64 %.val2.i.peel.i30.i.i.i.i.i, -1
  br i1 %.not.peel.i32.i.i.i.i.i, label %_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i_crit_edge.i.i

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i_crit_edge.i.i: ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i.i.i
  %.pre102.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !32363, !noalias !32381
  br label %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i.i.i

_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i_crit_edge.i.i, %.lr.ph.i26.i.i.i.i.i
  %i.eh = phi ptr [ %.pre102.i.i, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i_crit_edge.i.i ], [ %i.ec, %.lr.ph.i26.i.i.i.i.i ]
  %.sroa.7.012.peel.i34.i.i.i.i.i = phi ptr [ %i.ef, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i._RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i_crit_edge.i.i ], [ inttoptr (i64 1 to ptr), %.lr.ph.i26.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.ed ; 3 uses
  store i64 %.val2.i.peel.i30.i.i.i.i.i, ptr %i.ei, align 8, !noalias !32381
  %.sroa.4.0..sroa_idx.peel.i35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %.sroa.7.012.peel.i34.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.peel.i35.i.i.i.i.i, align 8, !noalias !32381
  %.sroa.5.0..sroa_idx.peel.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.val2.i.peel.i30.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.peel.i36.i.i.i.i.i, align 8, !noalias !32381
  %i.ej = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !32363, !noalias !32381, !noundef !80
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !32363, !noalias !32381
  %exitcond.peel.not.i37.i.i.i.not.i.i = icmp eq i64 %i.ed, 0
  br i1 %exitcond.peel.not.i37.i.i.i.not.i.i, label %_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %1

.loopexit.i40.i.i.i.i.i:                          ; preds = %bb.x
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.peel.i30.i.i.i.i.i) #54, !noalias !32389
  unreachable

bb.y:                                             ; preds = %bb.v, %1
  %.val.i.i.i.i.i.neg25.i.i.i = phi i64 [ 0, %1 ], [ 1, %bb.v ]
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %1 ], [ %i.ds, %bb.v ]
  store i64 %.val.i.i.i.i.i.neg25.i.i.i, ptr %i.ae, align 8, !noalias !32375
  %i.el = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i, ptr %i.el, align 8, !noalias !32375
  %i.em = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store i64 0, ptr %i.em, align 8, !noalias !32375
  call fastcc void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq) #45, !noalias !32390
  %.sroa.051.0.copyload.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !32391 ; 2 uses
  %.sroa.452.0.copyload.i.i.i.i.i = load ptr, ptr %i.el, align 8, !noalias !32391, !nonnull !80, !noundef !80 ; 5 uses
  %.sroa.553.0.copyload.i.i.i.i.i = load i64, ptr %i.em, align 8, !noalias !32391 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !32375
  %i.en = icmp ult i64 %.sroa.553.0.copyload.i.i.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.452.0.copyload.i.i.i.i.i, i64 %.sroa.553.0.copyload.i.i.i.i.i ; 3 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %.not11.i.i.i.i.i = icmp eq i64 %.sroa.553.0.copyload.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i, label %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.ab

_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.ad, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit43.i.i.i.i.i, %bb.y
  %.sroa.450.0.i.i.i.i.i = phi ptr [ %.sroa.452.0.copyload.i.i.i.i.i, %bb.y ], [ %.sroa.452.0.copyload.i.i.i.i.i, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit43.i.i.i.i.i ], [ %i.fr, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ], [ %i.fr, %bb.ad ] ; 3 uses
  %i.eq = ptrtoint ptr %.sroa.450.0.i.i.i.i.i to i64
  %i.er = sub nuw i64 %i.ep, %i.eq
  %i.es = udiv exact i64 %i.er, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !32392)
  %i.et = icmp eq ptr %i.eo, %.sroa.450.0.i.i.i.i.i
  br i1 %i.et, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i ], [ 0, %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.450.0.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i ; 2 uses
  %i.ev = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i42.i.i.i.i.i = load i64, ptr %i.eu, align 8, !range !82, !alias.scope !32393, !noalias !32394, !noundef !80 ; 2 uses
  %i.ew = icmp eq i64 %.val.i.i.i42.i.i.i.i.i, 0
  br i1 %i.ew, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ex = getelementptr i8, ptr %i.eu, i64 8
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !32392, !noalias !32394, !nonnull !80, !noundef !80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i42.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32395
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ey = icmp eq i64 %i.ev, %i.es
  br i1 %i.ey, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i45.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i, %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.ez = icmp eq i64 %.sroa.051.0.copyload.i.i.i.i.i, 0
  br i1 %i.ez, label %_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.fa = mul nuw i64 %.sroa.051.0.copyload.i.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.452.0.copyload.i.i.i.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32394
  br label %_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !32396)
  %i.fb = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32397, !noalias !32364, !nonnull !80, !noundef !80 ; 4 uses
  %i.fc = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32397, !noalias !32364, !noundef !80 ; 3 uses
  %i.fd = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32397, !noalias !32364, !noundef !80 ; 2 uses
  %i.fe = add i64 %i.fd, %i.fc                    ; 2 uses
  %i.ff = load i64, ptr %i.fb, align 8, !range !82, !noalias !32398, !noundef !80
  %i.fg = sub i64 %i.ff, %i.fe
  %i.fh = icmp ugt i64 %.sroa.553.0.copyload.i.i.i.i.i, %i.fg
  br i1 %i.fh, label %bb.ac, label %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit43.i.i.i.i.i, !prof !92

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(16) %i.fb, i64 noundef %i.fe, i64 noundef %.sroa.553.0.copyload.i.i.i.i.i, i64 noundef 8, i64 noundef 24) #45, !noalias !32398
  br label %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit43.i.i.i.i.i

_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit43.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %i.fi = add i64 %i.fc, %.sroa.553.0.copyload.i.i.i.i.i ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !32398, !nonnull !80, !noundef !80 ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.fc
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.fi
  %i.fn = mul nuw nsw i64 %i.fd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr nonnull align 8 %i.fl, i64 %i.fn, i1 false), !noalias !32398
  store i64 %i.fi, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32397, !noalias !32364
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 3 uses
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !32399, !noundef !80 ; 2 uses
  %.not8.i.i.i.i.i.i = icmp ult i64 %i.fp, %i.fi
  br i1 %.not8.i.i.i.i.i.i, label %.lr.ph.i45.i.i.i.i.i, label %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

.lr.ph.i45.i.i.i.i.i:                             ; preds = %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit43.i.i.i.i.i, %bb.ad
  %.sroa.450.1.i.i.i.i.i = phi ptr [ %i.fr, %bb.ad ], [ %.sroa.452.0.copyload.i.i.i.i.i, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit43.i.i.i.i.i ] ; 4 uses
  %.sroa.01.07.i.i.i.i.i.i = phi i64 [ %i.fs, %bb.ad ], [ %i.fp, %_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsa7TLgTh0CeG_9ssmanager.exit43.i.i.i.i.i ] ; 2 uses
  %i.fq = icmp eq ptr %.sroa.450.1.i.i.i.i.i, %i.eo
  br i1 %i.fq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i45.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.450.1.i.i.i.i.i, i64 24 ; 3 uses
  %.sroa.0.0.copyload1.i47.i.i.i.i.i = load i64, ptr %.sroa.450.1.i.i.i.i.i, align 8, !noalias !32400 ; 2 uses
  %.not.i.i.i.i51.i.i = icmp eq i64 %.sroa.0.0.copyload1.i47.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i51.i.i, label %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx2.i48.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.450.1.i.i.i.i.i, i64 8
  %i.fs = add i64 %.sroa.01.07.i.i.i.i.i.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i48.i.i.i.i.i, i64 16, i1 false), !noalias !32399
  %i.ft = load ptr, ptr %i.fj, align 8, !noalias !32399, !nonnull !80, !noundef !80
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %.sroa.01.07.i.i.i.i.i.i ; 2 uses
  store i64 %.sroa.0.0.copyload1.i47.i.i.i.i.i, ptr %i.fu, align 8, !noalias !32399
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i, i64 16, i1 false), !noalias !32399
  %i.fv = load i64, ptr %i.fo, align 8, !noalias !32399, !noundef !80
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.fo, align 8, !noalias !32399
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.fs, %i.fi
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %.lr.ph.i45.i.i.i.i.i

_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread6.peel.i33.i.i.i.i.i, %_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.peel.i31.i.i.i.i.i, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !32401)
  call void @llvm.experimental.noalias.scope.decl(metadata !32402)
  %i.fx = load ptr, ptr %i.af, align 8, !alias.scope !32403, !noalias !32364, !nonnull !80, !noundef !80 ; 2 uses
  %i.fy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32403, !noalias !32364, !nonnull !80, !noundef !80 ; 2 uses
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.gb = sub nuw i64 %i.fz, %i.ga
  %i.gc = udiv exact i64 %i.gb, 24
  %i.gd = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32403, !noalias !32364, !nonnull !80, !noundef !80 ; 4 uses
  %i.ge = icmp eq ptr %i.fy, %i.fx
  br i1 %i.ge, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.gf = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32403, !noalias !32364, !noundef !80 ; 3 uses
  %.not.i.i.i.i.i.i50.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i.i.i.i50.i.i, label %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs6insertRNtNtCsgCecv3eZDcN_5alloc6string6StringABK_j1_ECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !noalias !32404, !noundef !80 ; 4 uses
  %i.gi = icmp ult i64 %i.gh, 384307168202282326
  call void @llvm.assume(i1 %i.gi)
  %i.gj = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32403, !noalias !32364, !noundef !80 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i64 %i.gj, %i.gh
  br i1 %.not3.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.gk = add i64 %i.gh, %i.gf
  store i64 %i.gk, ptr %i.gg, align 8, !noalias !32404
  br label %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs6insertRNtNtCsgCecv3eZDcN_5alloc6string6StringABK_j1_ECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !32404, !nonnull !80, !noundef !80 ; 2 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %i.gj
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %i.gh
  %i.gp = mul nuw nsw i64 %i.gf, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.go, ptr nonnull align 8 %i.gn, i64 %i.gp, i1 false), !noalias !32404
  br label %bb.ag

bb.ai:                                            ; preds = %_RNvXs1_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !32404, !nonnull !80, !noundef !80 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub nuw i64 %i.ga, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gt
  call void @llvm.experimental.noalias.scope.decl(metadata !32405)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, %bb.ai
  %.sroa.0.04.i.i.i.i.i.i.i = phi i64 [ %i.gw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i ], [ 0, %bb.ai ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %.sroa.0.04.i.i.i.i.i.i.i ; 2 uses
  %i.gw = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.gv, align 8, !range !82, !alias.scope !32406, !noalias !32404, !noundef !80 ; 2 uses
  %i.gx = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.gx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gy = getelementptr i8, ptr %i.gv, i64 8
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !32405, !noalias !32404, !nonnull !80, !noundef !80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32407
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i.i
  %i.gz = icmp eq i64 %i.gw, %i.gc
  br i1 %i.gz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.ha = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32403, !noalias !32364, !noundef !80 ; 3 uses
  %.not.i.i2.i.i.i.i.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i2.i.i.i.i.i.i, label %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs6insertRNtNtCsgCecv3eZDcN_5alloc6string6StringABK_j1_ECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !32404, !noundef !80 ; 4 uses
  %i.hd = icmp ult i64 %i.hc, 384307168202282326
  call void @llvm.assume(i1 %i.hd)
  %i.he = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !32403, !noalias !32364, !noundef !80 ; 2 uses
  %.not3.i.i3.i.i.i.i.i.i = icmp eq i64 %i.he, %i.hc
  br i1 %.not3.i.i3.i.i.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.hf = add i64 %i.hc, %i.ha
  store i64 %i.hf, ptr %i.hb, align 8, !noalias !32404
  br label %_RINvMCs3VEMjBx1PQp_8clap_lexNtB3_7RawArgs6insertRNtNtCsgCecv3eZDcN_5alloc6string6StringABK_j1_ECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.hg = load ptr, ptr %i.gq, align 8, !noalias !32404, !nonnull !80, !noundef !80 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvCsa7TLgTh0CeG_9ssmanager4main:_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsa7TLgTh0CeG_9ssmanager.exit
  %.not.i = icmp eq i64 %.sroa.0.2.i, -1
  br i1 %.not.i, label %_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main.exit, label %bb.gd

bb.gd:                                            ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i, %bb.bf
  %.sroa.0.08.i = phi i64 [ %.sroa.07.0.copyload.i, %bb.bf ], [ %.sroa.0.2.i, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !32439
  store i64 %.sroa.0.08.i, ptr %i.ac, align 8, !noalias !32439
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !32439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !32439
  store ptr %i.ac, ptr %i.ab, align 8, !noalias !32439
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB4_16ShadowsocksErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !32439
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @1313, ptr noundef nonnull %i.ab) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !32439
  %.val.i4 = load i64, ptr %i.ac, align 8, !range !101, !noalias !32439, !noundef !80
  switch i64 %.val.i4, label %default.unreachable [
    i64 0, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i
    i64 1, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i
    i64 2, label %bb.ge
    i64 3, label %bb.ge
    i64 4, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  ]

bb.ge:                                            ; preds = %bb.gd, %bb.gd
  br label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i: ; preds = %bb.gd
  %.val.i.i.i.i5 = load i64, ptr %.sroa.8.0..sroa_idx6.i, align 8, !range !82, !alias.scope !32625, !noalias !32439, !noundef !80 ; 2 uses
  %i.wd = icmp eq i64 %.val.i.i.i.i5, 0
  br i1 %i.wd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i: ; preds = %bb.ge, %bb.gd, %bb.gd
  %.sroa.0.0.i.i = phi i8 [ 70, %bb.gd ], [ 78, %bb.ge ], [ 70, %bb.gd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32626)
  %.val.i.i1.i.i = load i64, ptr %.sroa.8.0..sroa_idx6.i, align 8, !range !82, !alias.scope !32626, !noalias !32439, !noundef !80 ; 2 uses
  %i.we = icmp eq i64 %.val.i.i1.i.i, 0
  br i1 %i.we, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i: ; preds = %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  %.sroa.0.0.i10.i = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ]
  %.val.i.i10.sink.i.i = phi i64 [ %.val.i.i.i.i5, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.val.i.i1.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ]
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val1.i.i11.i.i = load ptr, ptr %i.wf, align 8, !alias.scope !32626, !noalias !32439, !nonnull !80, !noundef !80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i.i, i64 noundef %.val.i.i10.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32626
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  %.sroa.0.0.i11.i = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ], [ %.sroa.0.0.i10.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !32439
  br label %_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main.exit

_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main.exit: ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.0.0.i = phi i8 [ %.sroa.0.0.i11.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ 0, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches10ArgMatchesECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aq) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE14remove_expiredCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %.sroa.4.i.i = alloca [30 x i8], align 2        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !range !103, !noundef !80 ; 2 uses
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !32691, !noundef !80 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !32691 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.n, align 8, !alias.scope !32691 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.o = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.o    ; 4 uses
  %i.p = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.p, %i.l
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = sub nuw i64 %i.l, %i.p
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add i64 %.sroa.04.0.i.i, %i.l
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.r, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.q, %bb.d ], [ 0, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !32691, !nonnull !80, !noundef !80 ; 4 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.0.i
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.5.0.i
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.11.0.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !noundef !80
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.af, label %bb.ae

bb.g:                                             ; preds = %bb.ac, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.013.sroa.7.140, %bb.ac ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.u, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit ], [ %i.ae, %bb.ac ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.10.sroa.5.141, %bb.ac ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.t, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.10.sroa.0.142, %bb.ac ] ; 3 uses
  %i.ac = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ac, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread34

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.ad, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread34

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread34: ; preds = %bb.g, %bb.h
  %.sink6.i43 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.142 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.141 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.140 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink6.i43, i64 32
  %.val = load ptr, ptr %i.d, align 8, !noundef !80
  %.val10 = load i64, ptr %i.x, align 8
  %i.af = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECsa7TLgTh0CeG_9ssmanager(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i43) #45 ; 3 uses
  %.not8 = icmp eq ptr %i.af, null
  br i1 %.not8, label %bb.x, label %bb.w, !prof !92

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %bb.h, %.split, %bb.y
  %i.ag = load i64, ptr %i.j, align 8, !noundef !80 ; 13 uses
  %i.ah = icmp ult i64 %i.ag, 576460752303423488
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %i.k, align 8, !noundef !80 ; 5 uses
  %i.aj = icmp ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa7TLgTh0CeG_9ssmanager.exit, !prof !92

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #55, !noalias !32692
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread
  store i64 0, ptr %i.k, align 8
  %i.ak = sub nuw i64 %i.ai, %i.ag                ; 5 uses
  %.sroa.026.0.copyload = load i64, ptr %i.c, align 8 ; 4 uses
  %.sroa.427.0.copyload = load ptr, ptr %i.i, align 8, !nonnull !80, !noundef !80 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ag, 4                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %.idx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32693)
  call void @llvm.experimental.noalias.scope.decl(metadata !32694)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32695
  %i.am = icmp eq i64 %i.ag, 0                    ; 2 uses
  br i1 %i.am, label %bb.t, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa7TLgTh0CeG_9ssmanager.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !32696, !noundef !80 ; 2 uses
  %i.ap = load i64, ptr %1, align 8, !range !82, !noalias !32696, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ap
  %i.aq = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.ap
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.ao, %i.aq
  %i.ar = add nsw i64 %i.ag, -1                   ; 3 uses
  %i.as = load ptr, ptr %i.s, align 8, !noalias !32696, !nonnull !80, !noundef !80
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.at, align 4, !noalias !32697 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 16 ; 2 uses
  %i.av = load <2 x ptr>, ptr %.sroa.427.0.copyload, align 8, !noalias !32698
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !32695
  %i.aw = ptrtoint ptr %i.al to i64               ; 2 uses
  %gepdiff = add nsw i64 %.idx, -16
  %i.ax = lshr exact i64 %gepdiff, 4
  %i.ay = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ax) ; 2 uses
  %i.az = call i64 @llvm.umax.i64(i64 %i.ay, i64 3) ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %i.bb = mul i64 %i.ba, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.ay, 192153584101141161
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !177

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32699
  %i.bd = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bb, i64 noundef range(i64 1, 17) 8) #45, !noalias !32699 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bb, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #54, !noalias !32695
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.bd, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.ba, %bb.l ] ; 2 uses
  %4 = icmp samesign ult i64 %i.az, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %4)
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.411.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !32695
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !32695
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.av, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !32695
  store i64 %.sroa.4.0.i.i.i, ptr %i.a, align 8, !noalias !32695
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !32695
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !32695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !32700)
  call void @llvm.experimental.noalias.scope.decl(metadata !32701)
  %i.bf = icmp eq i64 %i.ar, 0
  br i1 %i.bf, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i, %bb.o
  %i.bg = phi ptr [ %i.cb, %bb.o ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ]
  %i.bh = phi i64 [ %i.cd, %bb.o ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 5 uses
  %.sroa.12.0.i.i = phi ptr [ %i.br, %bb.o ], [ %i.au, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 4 uses
  %.in.i = phi i64 [ %i.bi, %bb.o ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ]
  %.val.i.i1314.i.i.i.i = phi i64 [ %i.bn, %bb.o ], [ %i.ar, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ]
  %i.bi = add nuw nsw i64 %.in.i, 1               ; 2 uses
  %i.bj = load i64, ptr %i.an, align 8, !noalias !32702, !noundef !80
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = load i64, ptr %1, align 8, !range !82, !noalias !32702, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bk, %i.bl
  %i.bm = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.bl
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bk, %i.bm
  %i.bn = add nsw i64 %.val.i.i1314.i.i.i.i, -1   ; 3 uses
  %i.bo = load ptr, ptr %i.s, align 8, !noalias !32702, !nonnull !80, !noundef !80
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.bp, align 4, !noalias !32703 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  %i.bq = icmp eq ptr %.sroa.12.0.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.bq
  br i1 %or.cond.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i.i, i64 16 ; 3 uses
  %i.bs = load <2 x ptr>, ptr %.sroa.12.0.i.i, align 8, !noalias !32704
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i.i.i, i64 30, i1 false), !noalias !32705
  %i.bt = icmp samesign ult i64 %i.bh, 192153584101141163
  call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %i.a, align 8, !range !82, !alias.scope !32706, !noalias !32695, !noundef !80
  %i.bv = icmp eq i64 %i.bh, %i.bu
  br i1 %i.bv, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.n
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub nuw i64 %i.aw, %i.bw
  %i.by = lshr exact i64 %i.bx, 4
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.by)
  %i.ca = add nuw nsw i64 %i.bz, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bh, i64 noundef range(i64 1, 0) %i.ca, i64 noundef 8, i64 noundef 48) #45, !noalias !32707
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !32706, !noalias !32695
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %bb.n
  %i.cb = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %i.bg, %bb.n ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.cb, i64 %i.bh ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !32705
  store i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, ptr %i.cc, align 8, !noalias !32705
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store <2 x ptr> %i.bs, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !32705
  %i.cd = add nuw nsw i64 %i.bh, 1                ; 2 uses
  store i64 %i.cd, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !32706, !noalias !32695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.ce = icmp eq i64 %i.bn, 0
  br i1 %i.ce, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.o, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %.sroa.12.1.i.i.ph = phi ptr [ %.sroa.12.0.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ], [ %i.br, %bb.o ] ; 2 uses
  %.pre = load i64, ptr %i.k, align 8, !noalias !32708 ; 5 uses
  %i.cf = add i64 %.pre, %i.ak                    ; 2 uses
  %i.cg = icmp eq i64 %.pre, 0
  %i.ch = icmp eq i64 %i.ai, %i.ag
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread, label %bb.p, !prof !32709

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i, %bb.p, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.ci = phi i64 [ %i.cf, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.cf, %bb.p ], [ %i.ak, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %.sroa.12.1.i.i62 = phi ptr [ %.sroa.12.1.i.i.ph, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.sroa.12.1.i.i.ph, %bb.p ], [ %i.au, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 3 uses
  %i.cj = phi i64 [ %.pre, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.pre, %bb.p ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ]
  %i.ck = icmp eq i64 %i.ci, 0
  br i1 %i.ck, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.sink.split.i.i, label %bb.q

bb.p:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtB1p_3net11socket_addr10SocketAddrNtNtBh_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.ag, i64 noundef %.pre, i64 noundef %i.ak) #45, !noalias !32708
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread

bb.q:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread
  %i.cl = icmp ult i64 %i.cj, %i.ak
  br i1 %i.cl, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cm = load i64, ptr %i.an, align 8, !noalias !32708, !noundef !80
  %i.cn = add i64 %i.cm, %i.ag                    ; 2 uses
  %i.co = load i64, ptr %1, align 8, !range !82, !noalias !32708, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i3.i.i = icmp ult i64 %i.cn, %i.co
  %i.cp = select i1 %.not.i.i.i.i.i3.i.i, i64 0, i64 %i.co
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %i.cn, %i.cp
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.sink.split.i.i: ; preds = %bb.r, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread
  %.sroa.0.0.i.i.i.i.i.sink.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.r ], [ 0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread ]
  store i64 %.sroa.0.0.i.i.i.i.i.sink.i.i, ptr %i.an, align 8, !noalias !32708
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.sink.split.i.i, %bb.q
  store i64 %i.ci, ptr %i.k, align 8, !noalias !32708
  %i.cq = ptrtoint ptr %.sroa.12.1.i.i62 to i64
  %i.cr = sub nuw i64 %i.aw, %i.cq
  %i.cs = lshr exact i64 %i.cr, 4
  %i.ct = icmp eq ptr %i.al, %.sroa.12.1.i.i62
  br i1 %i.ct, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.1.i.i62, i64 %.sroa.0.03.i.i.i.i.i.i
  %i.cv = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(16) %i.cu) #45, !noalias !32710
  %i.cw = icmp eq i64 %i.cv, %i.cs
  br i1 %i.cw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.cx = icmp eq i64 %.sroa.026.0.copyload, 0
  br i1 %i.cx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.cy = shl nuw i64 %.sroa.026.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.427.0.copyload, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32710
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !32711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32695
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsa7TLgTh0CeG_9ssmanager.exit

bb.t:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa7TLgTh0CeG_9ssmanager.exit
  store i64 0, ptr %0, align 8, !alias.scope !32712
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cz, align 8, !alias.scope !32712
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.da, align 8, !alias.scope !32712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32695
  %i.db = icmp eq i64 %i.ai, %i.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.db, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !32713, !noundef !80
  %i.de = add i64 %i.dd, %i.ag                    ; 2 uses
  %i.df = load i64, ptr %1, align 8, !range !82, !noalias !32713, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i1.i = icmp ult i64 %i.de, %i.df
  %i.dg = select i1 %.not.i.i.i.i.i1.i, i64 0, i64 %i.df
  %.sroa.0.0.i.i.i.i.i.i = sub nuw i64 %i.de, %i.dg
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i.i.i.i.i.i.sink = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.u ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.sink, ptr %i.dc, align 8, !noalias !32713
  store i64 %i.ak, ptr %i.k, align 8, !noalias !32713
  br i1 %i.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.427.0.copyload, i64 %.sroa.0.03.i.i.i.i.i
  %i.di = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dh) #45, !noalias !32714
  %i.dj = icmp eq i64 %i.di, %i.ag
  br i1 %i.dj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.dk = icmp eq i64 %.sroa.026.0.copyload, 0
  br i1 %i.dk, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsa7TLgTh0CeG_9ssmanager.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.dl = shl nuw i64 %.sroa.026.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.427.0.copyload, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32714
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsa7TLgTh0CeG_9ssmanager.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsa7TLgTh0CeG_9ssmanager.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

bb.w:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !80
  %i.do = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !range !174, !noundef !80
  %i.dq = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.dn, i32 noundef %i.dp, i64 noundef %i.h, i32 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1047) #45 ; 2 uses
  %i.dr = extractvalue { i64, i32 } %i.dq, 0      ; 2 uses
  %i.ds = icmp eq i64 %i.dr, %2
  br i1 %i.ds, label %.split, label %bb.y

end_hunk_4
begin_hunk_5_@_RNvMs0_CshXcoQFZsaxY_14lru_time_cacheINtB5_11VacantEntryyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE6insertCsa7TLgTh0CeG_9ssmanager:bb.a
  %.not.i4.i = icmp ult i64 %i.ac, %i.ae
  br i1 %.not.i4.i, label %.loopexit._RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i, label %bb.e

.loopexit._RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i: ; preds = %.loopexit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !34254
  br label %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i

bb.e:                                             ; preds = %.loopexit.i
  %i.af = sub nuw i64 %i.ac, %i.ae                ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !34253, !noundef !80 ; 4 uses
  %.not.i.i.i.i = icmp ult i64 %i.af, %i.ah
  br i1 %.not.i.i.i.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.f, !prof !89

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1315) #55, !noalias !34255
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.e
  %i.ai = add nuw i64 %i.af, 1                    ; 5 uses
  store i64 0, ptr %i.ag, align 8, !alias.scope !34253
  %i.aj = sub nuw i64 %i.ah, %i.ai                ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %.sroa.7.016.i.i = phi i64 [ 0, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.bg, %bb.n ] ; 2 uses
  %.sroa.12.015.i.i = phi i64 [ %i.ai, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range16RangeToInclusivejEECsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.bf, %bb.n ]
  %i.an = load i64, ptr %i.ak, align 8, !alias.scope !34253, !noalias !34256, !noundef !80
  %i.ao = add i64 %i.an, %.sroa.7.016.i.i         ; 2 uses
  %i.ap = load i64, ptr %0, align 8, !range !82, !alias.scope !34253, !noalias !34256, !noundef !80 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ao, %i.ap
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %.sroa.03.0.i.i.i = sub nuw i64 %i.ao, %i.aq
  %i.ar = load ptr, ptr %i.al, align 8, !alias.scope !34253, !noalias !34256, !nonnull !80, !noundef !80
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.sroa.03.0.i.i.i
  %i.at = load i64, ptr %i.as, align 8, !noalias !34257, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34258
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeyECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1048) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j, i64 %i.at) #45, !noalias !34250
  %i.au = load i32, ptr %i.am, align 8, !range !103, !noalias !34258, !noundef !80
  %.not5.i.i = icmp eq i32 %i.au, -1
  br i1 %.not5.i.i, label %bb.m, label %bb.n, !prof !92

bb.h:                                             ; preds = %bb.n
  %i.av = load i64, ptr %i.ag, align 8, !alias.scope !34253, !noalias !34259, !noundef !80 ; 4 uses
  %i.aw = add i64 %i.av, %i.aj                    ; 3 uses
  %i.ax = icmp eq i64 %i.av, 0
  %i.ay = icmp eq i64 %i.ah, %i.ai
  %or.cond.i.i.i.i.i.i = or i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i.i.i, label %bb.i, label %bb.j, !prof !196

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingyNtNtBh_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ai, i64 noundef %i.av, i64 noundef %i.aj) #45, !noalias !34260
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ba = icmp ult i64 %i.av, %i.aj
  br i1 %i.ba, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.bb = load i64, ptr %i.ak, align 8, !alias.scope !34253, !noalias !34259, !noundef !80
  %i.bc = add i64 %i.bb, %i.ai                    ; 2 uses
  %i.bd = load i64, ptr %0, align 8, !range !82, !alias.scope !34253, !noalias !34259, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.bc, %i.bd
  %i.be = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %i.bd
  %.sroa.0.0.i.i.i.i.i.i = sub nuw i64 %i.bc, %i.be
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i: ; preds = %bb.l, %bb.i
  %.sink.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.l ], [ 0, %bb.i ]
  store i64 %.sink.i.i, ptr %i.ak, align 8, !alias.scope !34253, !noalias !34259
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i, %bb.k
  store i64 %i.aw, ptr %i.ag, align 8, !alias.scope !34253, !noalias !34259
  br label %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34258
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1043, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1044) #55, !noalias !34261
  unreachable

bb.n:                                             ; preds = %bb.g
  %i.bf = add i64 %.sroa.12.015.i.i, -1           ; 2 uses
  %i.bg = add i64 %.sroa.7.016.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34258
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %bb.h, label %bb.g

_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i, %.loopexit._RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i
  %i.bi = phi i64 [ %.pre.i, %.loopexit._RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit_crit_edge.i ], [ %i.aw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainyEECsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bk = load i64, ptr %0, align 8, !range !82, !alias.scope !34254, !noundef !80 ; 2 uses
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i

bb.o:                                             ; preds = %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i
  tail call void @_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE4growCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #52, !noalias !34250
  %.pre.i.i = load i64, ptr %i.bj, align 8, !alias.scope !34254
  %.pre5.i.i = load i64, ptr %0, align 8, !range !82, !alias.scope !34254
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.o, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.bm = phi i64 [ %.pre5.i.i, %bb.o ], [ %i.bk, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i ] ; 2 uses
  %i.bn = phi i64 [ %.pre.i.i, %bb.o ], [ %i.bi, %_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10remove_lruCsa7TLgTh0CeG_9ssmanager.exit.i ] ; 2 uses
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bj, align 8, !alias.scope !34254
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !34254, !noundef !80
  %i.br = add i64 %i.bq, %i.bn                    ; 2 uses
  %.not.i5.i = icmp ult i64 %i.br, %i.bm
  %i.bs = select i1 %.not.i5.i, i64 0, i64 %i.bm
  %.sroa.03.0.i.i = sub nuw i64 %i.br, %i.bs
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !34254, !nonnull !80, !noundef !80
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.03.0.i.i
  store i64 %1, ptr %i.bv, align 8, !noalias !34250
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph
  call fastcc void @_RINvMCshXcoQFZsaxY_14lru_time_cacheINtB3_8LruCacheyNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterE10update_keyyECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) #45, !noalias !34250
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeyE13push_back_mutCsa7TLgTh0CeG_9ssmanager.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34263)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !34264, !noundef !80 ; 5 uses
  %.not.i.i6.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i6.i, label %.thread.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = load i64, ptr %i.k, align 8, !alias.scope !34264, !noundef !80 ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.bx, %bb.r ], [ %i.cn, %bb.v ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.cm, %bb.v ] ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 11626
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !34265, !noundef !80 ; 4 uses
  %i.cb = zext i16 %i.ca to i64                   ; 5 uses
  %.idx523 = shl nuw nsw i64 %i.cb, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx523
  %i.cd = icmp eq i16 %i.ca, 0
  br i1 %i.cd, label %._crit_edge512, label %.lr.ph511

bb.t:                                             ; preds = %.lr.ph511
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i509, i64 8 ; 2 uses
  %i.cf = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i508, 1
  %i.cg = icmp eq ptr %i.ce, %i.cc
  br i1 %i.cg, label %._crit_edge512, label %.lr.ph511

.lr.ph511:                                        ; preds = %bb.s, %bb.t
  %.sroa.0.03.i.i.i.i.i509 = phi ptr [ %i.ce, %bb.t ], [ %i.by, %bb.s ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i508 = phi i64 [ %i.cf, %bb.t ], [ 0, %bb.s ] ; 3 uses
  %.val6.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i.i509, align 8, !noalias !34265, !noundef !80
  %i.ch = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %.val6.i.i.i.i.i)
  switch i8 %i.ch, label %bb.u [
    i8 -1, label %._crit_edge512
    i8 0, label %_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE6insertCsa7TLgTh0CeG_9ssmanager.exit.i
    i8 1, label %bb.t
  ]

bb.u:                                             ; preds = %.lr.ph511
  unreachable

._crit_edge512:                                   ; preds = %bb.t, %.lr.ph511, %bb.s
  %.sroa.4.0.i.ph.i.i.i.i = phi i64 [ %i.cb, %bb.s ], [ %i.cb, %bb.t ], [ %.sroa.8.0.i.i.i.i.i508, %.lr.ph511 ] ; 14 uses
  %i.ci = icmp eq i64 %.sroa.3.0.i.i.i.i, 0
  br i1 %i.ci, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge512
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 11632
  %i.ck = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.sroa.4.0.i.ph.i.i.i.i
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !34265, !nonnull !80, !noundef !80
  %i.cn = add i64 %.sroa.3.0.i.i.i.i, -1
  br label %bb.s

bb.w:                                             ; preds = %._crit_edge512
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 11626 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.0.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.131.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.sroa.0.i.i.i.i)
  %i.cp = icmp ult i16 %i.ca, 11
  br i1 %i.cp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, 5
  br i1 %i.cq, label %bb.ad, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %.not.i.i.i.i.not.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, %i.cb
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.4.0.i.ph.i.i.i.i ; 2 uses
  br i1 %.not.i.i.i.i.not.i.i, label %bb.z, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34266)
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cs = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cs
  %i.cu = sub nuw nsw i64 %i.cb, %.sroa.4.0.i.ph.i.i.i.i ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cu, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr nonnull align 8 %i.cr, i64 %i.cv, i1 false), !alias.scope !34267, !noalias !34268
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 96 ; 2 uses
  %i.cx = getelementptr inbounds nuw [1048 x i8], ptr %i.cw, i64 %.sroa.4.0.i.ph.i.i.i.i
  %i.cy = getelementptr inbounds nuw [1048 x i8], ptr %i.cw, i64 %i.cs
  %i.cz = mul nuw nsw i64 %i.cu, 1048
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cx, i64 %i.cz, i1 false), !alias.scope !34269, !noalias !34268
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i

_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i: ; preds = %bb.z, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  store i64 %1, ptr %i.cr, align 8, !alias.scope !34267, !noalias !34268
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 96
  %3 = add nuw nsw i16 %i.ca, 1
  %i.db = getelementptr inbounds nuw [1048 x i8], ptr %i.da, i64 %.sroa.4.0.i.ph.i.i.i.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(1032) %2, i64 1032, i1 false), !alias.scope !34270, !noalias !34271
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.db, i64 1032
  store i64 %i.h, ptr %.sroa.7.0..sroa_idx12.i, align 8, !alias.scope !34270, !noalias !34272
  %.sroa.8.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.db, i64 1040
  store i32 %i.i, ptr %.sroa.8.0..sroa_idx18.i, align 8, !alias.scope !34270, !noalias !34272
  store i16 %3, ptr %i.co, align 2, !noalias !34268
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.sroa.0.i.i.i.i)
  br label %bb.ai

bb.aa:                                            ; preds = %bb.x
  switch i64 %.sroa.4.0.i.ph.i.i.i.i, label %bb.ab [
    i64 5, label %bb.ad
    i64 6, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i, -7
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x
  %.sroa.09.0.i.i.i.i.i = phi i1 [ true, %bb.ac ], [ true, %bb.ab ], [ false, %bb.x ], [ false, %bb.aa ]
  %.sroa.510.0.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %i.dc, %bb.ab ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.x ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.aa ] ; 6 uses
  %.sroa.013.0.i.i.i.i.i = phi i64 [ 5, %bb.ac ], [ 6, %bb.ab ], [ 4, %bb.x ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.aa ] ; 5 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34273
  %i.dd = tail call noalias noundef align 8 dereferenceable_or_null(11632) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 11632, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !34273 ; 8 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ae, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, !prof !92

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 11632) #54, !noalias !34273
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.ad
  store ptr null, ptr %i.dd, align 8, !noalias !34273
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 11626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34274)
  %i.dg = load i16, ptr %i.co, align 2, !noalias !34275, !noundef !80
  %i.dh = zext i16 %i.dg to i64
  %i.di = xor i64 %.sroa.013.0.i.i.i.i.i, -1
  %i.dj = add nsw i64 %i.dh, %i.di                ; 5 uses
  %i.dk = trunc i64 %i.dj to i16
  store i16 %i.dk, ptr %i.df, align 2, !alias.scope !34274, !noalias !34273
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sroa.013.0.i.i.i.i.i
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !34275, !noundef !80 ; 2 uses
  %i.dn = icmp ult i64 %i.dj, 12
  br i1 %i.dn, label %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %bb.af, !prof !102

bb.af:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dj, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1238) #55, !noalias !34275
  unreachable

_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 96 ; 2 uses
  %i.dp = getelementptr inbounds nuw [1048 x i8], ptr %i.do, i64 %.sroa.013.0.i.i.i.i.i ; 3 uses
  %i.dq = add nuw nsw i64 %.sroa.013.0.i.i.i.i.i, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dt = shl nuw nsw i64 %i.dj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr nonnull readonly align 8 %i.dr, i64 %i.dt, i1 false), !alias.scope !34276, !noalias !34277
  %i.du = getelementptr inbounds nuw [1048 x i8], ptr %i.do, i64 %i.dq
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 96
  %i.dw = mul nuw nsw i64 %i.dj, 1048
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull readonly align 8 %i.du, i64 %i.dw, i1 false), !alias.scope !34278, !noalias !34277
  %i.dx = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i.i to i16
  store i16 %i.dx, ptr %i.co, align 2, !noalias !34275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.12.i.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1040) %i.dp, i64 1040, i1 false), !noalias !34279
  %.sroa.12.i.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 1040
  %.sroa.12.i.sroa.4.0.copyload.i.i.i.i = load i32, ptr %.sroa.12.i.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !34279 ; 3 uses
  %.sroa.12.i.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 1044
  %.sroa.12.i.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.12.i.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !34279 ; 2 uses
  %spec.select38.i.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i.i, ptr %i.dd, ptr %.sroa.0.0.i.i.i.i ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i, i64 11626 ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !noalias !34280, !noundef !80 ; 2 uses
  %i.ea = zext i16 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i14.not.i.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i.i, %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.510.0.i.i.i.i.i ; 2 uses
  br i1 %.not.i14.not.i.i.i.i.i, label %bb.ag, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i: ; preds = %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34281)
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

bb.ag:                                            ; preds = %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.ed = add nuw nsw i64 %.sroa.510.0.i.i.i.i.i, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = sub nuw nsw i64 %i.ea, %.sroa.510.0.i.i.i.i.i ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !34282, !noalias !34280
  %i.eh = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i, i64 96 ; 2 uses
  %i.ei = getelementptr inbounds nuw [1048 x i8], ptr %i.eh, i64 %.sroa.510.0.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw [1048 x i8], ptr %i.eh, i64 %i.ed
  %i.ek = mul nuw nsw i64 %i.ef, 1048
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.ei, i64 %i.ek, i1 false), !alias.scope !34283, !noalias !34280
  br label %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.ag, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i15.i.i.i.i.i
  store i64 %1, ptr %i.ec, align 8, !alias.scope !34282, !noalias !34280
  %i.el = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i, i64 96
  %4 = add i16 %i.dz, 1
  %i.em = getelementptr inbounds nuw [1048 x i8], ptr %i.el, i64 %.sroa.510.0.i.i.i.i.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(1032) %2, i64 1032, i1 false), !alias.scope !34284, !noalias !34285
  %.sroa.7.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.em, i64 1032
  store i64 %i.h, ptr %.sroa.7.0..sroa_idx10.i, align 8, !alias.scope !34284, !noalias !34286
  %.sroa.8.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.em, i64 1040
  store i32 %i.i, ptr %.sroa.8.0..sroa_idx16.i, align 8, !alias.scope !34284, !noalias !34286
  store i16 %4, ptr %i.dy, align 2, !noalias !34280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.131.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.12.i.sroa.0.i.i.i.i, i64 1040, i1 false), !noalias !34287
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.sroa.0.i.i.i.i)
  %.not.i.i.i7.i = icmp eq i32 %.sroa.12.i.sroa.4.0.copyload.i.i.i.i, -1
  br i1 %.not.i.i.i7.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.13.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.131.i.i.i.i, i64 1040, i1 false), !noalias !34288
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.131.i.i.i.i)
  %i.en = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !34289, !noundef !80 ; 2 uses
  %.not.i142.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i142.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ai:                                            ; preds = %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %_RINvMsK_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.131.i.i.i.i)
  br label %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4F_11VacantEntryyB1E_E12insert_entry0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.bc, %bb.ah
  %.sroa.13.sroa.8.0.lcssa.i.i.i.i = phi i32 [ %.sroa.12.i.sroa.5.0.copyload.i.i.i.i, %bb.ah ], [ %.sroa.4.i.i.sroa.5.0.copyload.i.i.i.i, %bb.bc ]
  %.sroa.13.sroa.7.0.lcssa.i.i.i.i = phi i32 [ %.sroa.12.i.sroa.4.0.copyload.i.i.i.i, %bb.ah ], [ %.sroa.4.i.i.sroa.4.0.copyload.i.i.i.i, %bb.bc ]
  %.sroa.11.0.lcssa.i.i.i.i = phi i64 [ %i.dm, %bb.ah ], [ %i.hv, %bb.bc ]
  %.sroa.9.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.ah ], [ %i.fa, %bb.bc ]
  %.sroa.7.0.lcssa.i.i.i.i = phi ptr [ %i.dd, %bb.ah ], [ %i.hl, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34290)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34291
  %i.eo = tail call noalias noundef align 8 dereferenceable_or_null(11728) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 11728, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !34291 ; 12 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.aj, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i, !prof !92

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 11728) #54, !noalias !34291
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  store ptr null, ptr %i.eo, align 8, !noalias !34291
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 11626 ; 2 uses
  store i16 0, ptr %i.eq, align 2, !noalias !34291
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 11632
  store ptr %i.bw, ptr %i.er, align 8, !noalias !34291
  %i.es = add i64 %i.bx, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ak, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, !prof !92

bb.ak:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #55, !noalias !34291
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.eo, ptr %i.bw, align 8, !noalias !34292
  %i.et = getelementptr inbounds nuw i8, ptr %i.bw, i64 11624
  store i16 0, ptr %i.et, align 8, !noalias !34293
  store ptr %i.eo, ptr %i.j, align 8, !alias.scope !34294, !noalias !34295
  store i64 %i.es, ptr %i.k, align 8, !alias.scope !34294, !noalias !34295
  %i.eu = icmp eq i64 %.sroa.9.0.lcssa.i.i.i.i, %i.bx
  br i1 %i.eu, label %_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12insert_entry0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.al, !prof !89

bb.al:                                            ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1310, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1311) #55, !noalias !34296
  unreachable

_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE12insert_entry0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  store i16 1, ptr %i.eq, align 2, !noalias !34296
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.11.0.lcssa.i.i.i.i, ptr %i.ev, align 8, !noalias !34296
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ew, ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.13.sroa.0.i.i.i.i, i64 1040, i1 false), !noalias !34297
  %.sroa.1026.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1136
  store i32 %.sroa.13.sroa.7.0.lcssa.i.i.i.i, ptr %.sroa.1026.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !34297
  %.sroa.1026.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1140
  store i32 %.sroa.13.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.1026.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !34297
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 11640
  store ptr %.sroa.7.0.lcssa.i.i.i.i, ptr %i.ex, align 8, !noalias !34296
  store ptr %i.eo, ptr %.sroa.7.0.lcssa.i.i.i.i, align 8, !noalias !34296
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i.i, i64 11624
  store i16 1, ptr %i.ey, align 8, !noalias !34296
  br label %_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4F_11VacantEntryyB1E_E12insert_entry0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %bb.bc
  %i.ez = phi ptr [ %i.lw, %bb.bc ], [ %i.en, %bb.ah ] ; 16 uses
  %.sroa.0.0149.i.i.i.i = phi ptr [ %i.ez, %bb.bc ], [ %.sroa.0.0.i.i.i.i, %bb.ah ]
  %.sroa.6.0148.i.i.i.i = phi i64 [ %i.fa, %bb.bc ], [ 0, %bb.ah ]
  %.sroa.7.0147.i.i.i.i = phi ptr [ %i.hl, %bb.bc ], [ %i.dd, %bb.ah ] ; 2 uses
  %.sroa.11.0145.i.i.i.i = phi i64 [ %i.hv, %bb.bc ], [ %i.dm, %bb.ah ] ; 2 uses
  %.sroa.13.sroa.7.0144.i.i.i.i = phi i32 [ %.sroa.4.i.i.sroa.4.0.copyload.i.i.i.i, %bb.bc ], [ %.sroa.12.i.sroa.4.0.copyload.i.i.i.i, %bb.ah ] ; 3 uses
  %.sroa.13.sroa.8.0143.i.i.i.i = phi i32 [ %.sroa.4.i.i.sroa.5.0.copyload.i.i.i.i, %bb.bc ], [ %.sroa.12.i.sroa.5.0.copyload.i.i.i.i, %bb.ah ] ; 3 uses
  %i.fa = add i64 %.sroa.6.0148.i.i.i.i, 1        ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0149.i.i.i.i, i64 11624
  %i.fc = load i16, ptr %i.fb, align 8, !noalias !34289 ; 4 uses
  %i.fd = zext i16 %i.fc to i64                   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1320.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i37.sroa.0.i.i.i.i)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 11626 ; 4 uses
  %i.ff = load i16, ptr %i.fe, align 2, !noalias !34298, !noundef !80 ; 5 uses
  %i.fg = icmp ult i16 %i.ff, 11
  br i1 %i.fg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fh = icmp ult i16 %i.fc, 5
  br i1 %i.fh, label %bb.at, label %bb.aq

bb.an:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fi = zext nneg i16 %i.ff to i64              ; 5 uses
  %i.fj = add nuw nsw i16 %i.ff, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fl = add nuw nsw i64 %i.fd, 1                ; 7 uses
  %.not.i.i39.not.i.i.i.i = icmp ult i16 %i.fc, %i.ff ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fd ; 2 uses
  br i1 %.not.i.i39.not.i.i.i.i, label %bb.ao, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i40.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i40.i.i.i.i: ; preds = %bb.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34299)
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fl
  %i.fo = sub nuw nsw i64 %i.fi, %i.fd            ; 2 uses
  %i.fp = shl nuw nsw i64 %i.fo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr nonnull align 8 %i.fm, i64 %i.fp, i1 false), !alias.scope !34300, !noalias !34301
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 96 ; 2 uses
  %i.fr = getelementptr inbounds nuw [1048 x i8], ptr %i.fq, i64 %i.fd
  %i.fs = getelementptr inbounds nuw [1048 x i8], ptr %i.fq, i64 %i.fl
  %i.ft = mul nuw nsw i64 %i.fo, 1048
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull align 8 %i.fr, i64 %i.ft, i1 false), !alias.scope !34302, !noalias !34301
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.ao, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertyECsa7TLgTh0CeG_9ssmanager.exit.i.i40.i.i.i.i
  store i64 %.sroa.11.0145.i.i.i.i, ptr %i.fm, align 8, !alias.scope !34300, !noalias !34301
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fv = getelementptr inbounds nuw [1048 x i8], ptr %i.fu, i64 %i.fd ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.fv, ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.13.sroa.0.i.i.i.i, i64 1040, i1 false), !noalias !34297
  %.sroa.632.0..sroa_idx35.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 1040
  store i32 %.sroa.13.sroa.7.0144.i.i.i.i, ptr %.sroa.632.0..sroa_idx35.i.i.i.i, align 8, !alias.scope !34303, !noalias !34304
  %.sroa.737.0..sroa_idx40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 1044
  store i32 %.sroa.13.sroa.8.0143.i.i.i.i, ptr %.sroa.737.0..sroa_idx40.i.i.i.i, align 4, !alias.scope !34303, !noalias !34304
  %i.fw = add nuw nsw i64 %i.fi, 2                ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ez, i64 11632 ; 8 uses
  br i1 %.not.i.i39.not.i.i.i.i, label %bb.ap, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fl
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fd
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = sub nuw nsw i64 %i.fi, %i.fd
  %i.gc = shl nuw nsw i64 %i.gb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr nonnull align 8 %i.fy, i64 %i.gc, i1 false), !alias.scope !34305, !noalias !34301
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.ap, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fl
  store ptr %.sroa.7.0147.i.i.i.i, ptr %i.gd, align 8, !alias.scope !34305, !noalias !34301
  store i16 %i.fj, ptr %i.fe, align 2, !noalias !34301
  %i.ge = icmp samesign ult i64 %i.fl, %i.fw
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.gf = add nuw nsw i64 %i.fi, 1
  %i.gg = sub nsw i64 %i.gf, %i.fd
  %i.gh = sub nsw i64 %i.fi, %i.fd
  %xtraiter636 = and i64 %i.gg, 3                 ; 2 uses
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod637.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter638 = phi i64 [ %prol.iter638.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.gi = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.gj = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.0.06.i.i.i.i.i.i.i.prol
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !34301, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.ez, ptr %i.gl, align 8, !noalias !34301
  %i.gm = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 11624
  store i16 %i.gm, ptr %i.gn, align 8, !noalias !34301
  %prol.iter638.next = add i64 %prol.iter638, 1   ; 2 uses
  %prol.iter638.cmp.not = icmp eq i64 %prol.iter638.next, %xtraiter636
  br i1 %prol.iter638.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !34205

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.go = icmp ult i64 %i.gh, 3
  br i1 %i.go, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.he, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.0.06.i.i.i.i.i.i.i
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !34301, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.ez, ptr %i.gr, align 8, !noalias !34301
  %i.gs = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 11624
  store i16 %i.gs, ptr %i.gt, align 8, !noalias !34301
  %i.gu = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gp
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !34301, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.ez, ptr %i.gw, align 8, !noalias !34301
  %i.gx = trunc nuw nsw i64 %i.gp to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 11624
  store i16 %i.gx, ptr %i.gy, align 8, !noalias !34301
  %i.gz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gu
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !34301, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.ez, ptr %i.hb, align 8, !noalias !34301
  %i.hc = trunc nuw nsw i64 %i.gu to i16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 11624
  store i16 %i.hc, ptr %i.hd, align 8, !noalias !34301
  %i.he = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.hf = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gz
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !34301, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.ez, ptr %i.hh, align 8, !noalias !34301
  %i.hi = trunc nuw nsw i64 %i.gz to i16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 11624
  store i16 %i.hi, ptr %i.hj, align 8, !noalias !34301
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.he, %i.fw
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.am
  switch i16 %i.fc, label %bb.ar [
    i16 5, label %bb.at
    i16 6, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.hk = add nsw i64 %i.fd, -7
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.am
  %.sroa.06.0.i.i.i.i.i = phi i64 [ 5, %bb.as ], [ 6, %bb.ar ], [ 4, %bb.am ], [ 5, %bb.aq ] ; 7 uses
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %bb.as ], [ %i.hk, %bb.ar ], [ %i.fd, %bb.am ], [ 5, %bb.aq ] ; 9 uses
  %.sroa.03.0.i.i.i.i.i = phi i1 [ true, %bb.as ], [ true, %bb.ar ], [ false, %bb.am ], [ false, %bb.aq ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34306
  %i.hl = tail call noalias noundef align 8 dereferenceable_or_null(11728) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 11728, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !34306 ; 14 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.au, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, !prof !92

bb.au:                                            ; preds = %bb.at
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 11728) #54, !noalias !34306
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.at
  store ptr null, ptr %i.hl, align 8, !noalias !34306
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 11626 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.sroa.0.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34307)
  %i.ho = load i16, ptr %i.fe, align 2, !noalias !34308, !noundef !80
  %i.hp = zext i16 %i.ho to i64
  %i.hq = xor i64 %.sroa.06.0.i.i.i.i.i, -1
  %i.hr = add nsw i64 %i.hp, %i.hq                ; 5 uses
  %i.hs = trunc i64 %i.hr to i16
  store i16 %i.hs, ptr %i.hn, align 2, !alias.scope !34307, !noalias !34306
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.sroa.06.0.i.i.i.i.i
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !34308, !noundef !80 ; 2 uses
  %i.hw = icmp ult i64 %i.hr, 12
  br i1 %i.hw, label %_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, label %bb.av, !prof !102

bb.av:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hr, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1238) #55, !noalias !34308
  unreachable

_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEE13new_uninit_inCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ez, i64 96 ; 2 uses
  %i.hy = getelementptr inbounds nuw [1048 x i8], ptr %i.hx, i64 %.sroa.06.0.i.i.i.i.i ; 3 uses
  %i.hz = add nuw nsw i64 %.sroa.06.0.i.i.i.i.i, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ic = shl nuw nsw i64 %i.hr, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull readonly align 8 %i.ia, i64 %i.ic, i1 false), !alias.scope !34309, !noalias !34310
  %i.id = getelementptr inbounds nuw [1048 x i8], ptr %i.hx, i64 %i.hz
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hl, i64 96
  %i.if = mul nuw nsw i64 %i.hr, 1048
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ie, ptr nonnull readonly align 8 %i.id, i64 %i.if, i1 false), !alias.scope !34311, !noalias !34310
  %i.ig = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i.i to i16
  store i16 %i.ig, ptr %i.fe, align 2, !noalias !34308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.4.i.i.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1040) %i.hy, i64 1040, i1 false), !noalias !34298
  %.sroa.4.i.i.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 1040
  %.sroa.4.i.i.sroa.4.0.copyload.i.i.i.i = load i32, ptr %.sroa.4.i.i.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !34298 ; 3 uses
  %.sroa.4.i.i.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 1044
  %.sroa.4.i.i.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.4.i.i.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !34298 ; 2 uses
  %i.ih = load i16, ptr %i.hn, align 2, !noalias !34306, !noundef !80 ; 3 uses
  %i.ii = zext i16 %i.ih to i64
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 5 uses
  %i.ik = icmp ult i16 %i.ih, 12
  br i1 %i.ik, label %bb.aw, label %bb.az, !prof !102

bb.aw:                                            ; preds = %_RNvMsU_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantENtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.hl, i64 11632 ; 6 uses
  %i.im = zext i16 %i.ff to i64
  %i.in = sub nuw nsw i64 %i.im, %.sroa.06.0.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34313)
  %i.io = icmp eq i64 %i.in, %i.ij
  br i1 %i.io, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, label %bb.ax, !prof !89

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #55, !noalias !34314
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.aw
  %i.ip = getelementptr i8, ptr %i.ez, i64 11640
  %i.iq = getelementptr [8 x i8], ptr %i.ip, i64 %.sroa.06.0.i.i.i.i.i
  %i.ir = shl nuw nsw i64 %i.ij, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.il, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.iq, i64 %i.ir, i1 false), !alias.scope !34315, !noalias !34306
  %i.is = icmp ne i64 %i.fa, 0
  tail call void @llvm.assume(i1 %i.is)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34316)
  %xtraiter = and i64 %i.ij, 3                    ; 3 uses
  %i.it = icmp ult i16 %i.ih, 3
  br i1 %i.it, label %.epil.preheader, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.new

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %unroll_iter = and i64 %i.ij, 28
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.new ], [ %i.jj, %bb.ay ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.new ], [ %niter.next.3, %bb.ay ]
  %i.iu = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.sroa.0.09.i.i.i.i.i.i.i.i
  %i.iw = load ptr, ptr %i.iv, align 8, !alias.scope !34316, !noalias !34317, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.hl, ptr %i.iw, align 8, !noalias !34318
  %i.ix = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 11624
  store i16 %i.ix, ptr %i.iy, align 8, !noalias !34317
  %i.iz = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.iu
  %i.jb = load ptr, ptr %i.ja, align 8, !alias.scope !34316, !noalias !34317, !nonnull !80, !noundef !80 ; 2 uses
  store ptr %i.hl, ptr %i.jb, align 8, !noalias !34318
  %i.jc = trunc nuw nsw i64 %i.iu to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 11624
  store i16 %i.jc, ptr %i.jd, align 8, !noalias !34317
  %i.je = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 3 ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE9next_backCsa7TLgTh0CeG_9ssmanager:bb.a
bb.h:                                             ; preds = %bb.f
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !38674
  br label %.loopexit

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.g
  store i64 %i.ag, ptr %i.o, align 8, !alias.scope !38674
  %i.ah = icmp ult i64 %i.ag, %i.n
  br i1 %i.ah, label %.loopexit, label %bb.e

bb.j:                                             ; preds = %bb.g
  %i.ai = sub nuw i64 %i.ag, %i.v                 ; 5 uses
  %i.aj = add i64 %i.ai, %i.u                     ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %.not16.i = icmp ugt i64 %i.aj, %.val6
  %or.cond.i = or i1 %i.ak, %.not16.i
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ai
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.r, i64 %i.u), !noalias !38676
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %bb.n, label %bb.i

bb.l:                                             ; preds = %bb.c
  %i.an = load i8, ptr %i.a, align 1, !range !93, !noundef !80
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.m, label %bb.d

bb.m:                                             ; preds = %bb.l, %bb.c, %bb.a, %bb.o
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.o ], [ undef, %bb.a ], [ undef, %bb.l ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.o ], [ null, %bb.a ], [ null, %bb.l ]
  %i.ap = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.aq = insertvalue { ptr, i64 } %i.ap, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.aq

bb.n:                                             ; preds = %bb.k
  store i64 %i.ai, ptr %i.o, align 8, !alias.scope !38674
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !80
  %i.at = sub nuw i64 %i.as, %i.aj
  store i64 %i.ai, ptr %i.ar, align 8
  br label %bb.o

.loopexit:                                        ; preds = %bb.i, %bb.e, %bb.h, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.au = load i64, ptr %0, align 8, !noundef !80 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noundef !80
  %i.ax = sub nuw i64 %i.aw, %i.au
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.at, %bb.n ], [ %i.ax, %.loopexit ]
  %.pn = phi i64 [ %i.aj, %bb.n ], [ %i.au, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE8try_sendCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(176) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38707)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !93, !alias.scope !38707, !noundef !80
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !38707, !nonnull !80, !noundef !80 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.i = cmpxchg ptr %i.h, i32 0, i32 1 acquire monotonic, align 4, !noalias !38708
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.c, !prof !89

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.h) #45, !noalias !38708
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !38708
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.e, !prof !89

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #52, !noalias !38708
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i = phi i8 [ %i.p, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 3 uses
  %i.r = load atomic i8, ptr %i.q monotonic, align 1, !noalias !38708
  %.not.i.i.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.f, !prof !89

bb.f:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38709
  store ptr %i.h, ptr %i.b, align 8, !noalias !38709
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.s, align 8, !noalias !38709
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1055, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1061, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1300) #55, !noalias !38710
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.t = trunc nuw i8 %.sroa.01.0.i.i.i to i1     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.v = load i8, ptr %i.u, align 8, !range !93, !noalias !38707, !noundef !80
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i
  store i8 0, ptr %i.c, align 8, !alias.scope !38707
  br i1 %i.t, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !38707
  %i.y = and i64 %i.x, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i, !prof !89

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #52, !noalias !38707
  br i1 %i.aa, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.q monotonic, align 4, !noalias !38707
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ab = atomicrmw xchg ptr %i.h, i32 0 release, align 4, !noalias !38707
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread, !prof !92

bb.k:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !noalias !38707, !align !86, !noundef !80 ; 2 uses
  %i.ae = icmp eq ptr %.val.i, null
  br i1 %i.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.g, i64 32
  %.val4.i = load ptr, ptr %i.af, align 8, !noalias !38707
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !38707, !nonnull !80, !noundef !80
  tail call void %i.ah(ptr noundef %.val4.i) #45, !noalias !38707, !inline_history !38684
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.ad, align 8, !noalias !38707
  br i1 %i.t, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i
  %i.ai = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !38707
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.n, !prof !89

bb.n:                                             ; preds = %bb.m
  %i.al = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #52, !noalias !38707
  br i1 %i.al, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store atomic i8 1, ptr %i.q monotonic, align 4, !noalias !38707
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i: ; preds = %bb.o, %bb.n, %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i
  %i.am = atomicrmw xchg ptr %i.h, i32 0 release, align 4, !noalias !38707
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread6, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread4, !prof !92

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread6: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h) #45, !noalias !38707
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread4

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h) #45, !noalias !38707
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread4: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsa7TLgTh0CeG_9ssmanager.exit

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38714)
  %i.ao = load ptr, ptr %1, align 8, !alias.scope !38715, !nonnull !80, !noundef !80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 8, !noalias !38716
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread
  %.sroa.05.0.i.i = phi i64 [ %i.aq, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread ], [ %.sroa.01.0.i.i.i1, %bb.s ] ; 4 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.ar = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not11.i.i = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %.not11.i.i, label %bb.r, label %bb.s, !prof !92

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1301, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1302) #55, !noalias !38716
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.as = add nsw i64 %.sroa.05.0.i.i, 1
  %i.at = or i64 %i.as, -9223372036854775808
  %i.au = cmpxchg ptr %i.ap, i64 %.sroa.05.0.i.i, i64 %i.at seq_cst seq_cst, align 8, !noalias !38716 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.au, 1
  %.sroa.01.0.i.i.i1 = extractvalue { i64, i1 } %i.au, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.t, label %bb.p

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %1, align 8, !alias.scope !38712, !nonnull !80, !noundef !80 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !38717, !noundef !80
  %.not.i = icmp ult i64 %i.ar, %i.ax
  br i1 %.not.i, label %bb.v, label %bb.x

bb.u:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull readonly align 8 dereferenceable(176) %2, i64 176, i1 false), !alias.scope !38718
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !38711
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsa7TLgTh0CeG_9ssmanager.exit

bb.v:                                             ; preds = %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsa7TLgTh0CeG_9ssmanager.exit.i, %bb.t
  %.val.i2 = phi ptr [ %.val.pre.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.av, %bb.t ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !38719
  %i.ay = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 184, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !38719 ; 5 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.w, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE21queue_push_and_signalCsa7TLgTh0CeG_9ssmanager.exit.i, !prof !83

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #54, !noalias !38719
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE21queue_push_and_signalCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(176) %2, i64 176, i1 false), !noalias !38720
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 176
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !38721
  %i.bb = atomicrmw xchg ptr %i.ba, ptr %i.ay acq_rel, align 8, !noalias !38721
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 176
  store atomic ptr %i.ay, ptr %i.bc release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i2, i64 72
  tail call void @_RNvMNtNtNtCsaUkHVQFH9AD_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bd) #45, !noalias !38722
  store i64 -2, ptr %0, align 8, !alias.scope !38711
  br label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsa7TLgTh0CeG_9ssmanager.exit

bb.x:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38723)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !38724, !nonnull !80, !noundef !80 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 5 uses
  %i.bh = cmpxchg ptr %i.bg, i32 0, i32 1 acquire monotonic, align 4, !noalias !38725
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.y, !prof !89

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bg) #45, !noalias !38725
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bj = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !38725
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.aa, !prof !89

bb.aa:                                            ; preds = %bb.z
  %i.bm = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #52, !noalias !38725
  %i.bn = xor i1 %i.bm, true
  %i.bo = zext i1 %i.bn to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.bo, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 2 uses
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !noalias !38725
  %.not.i.i.not.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.ab, !prof !89

bb.ab:                                            ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38726
  store ptr %i.bg, ptr %i.a, align 8, !noalias !38726
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.br, align 8, !noalias !38726
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1055, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1061, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1303) #55, !noalias !38727
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.bs = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.bt, align 8, !noalias !38728, !align !86, !noundef !80 ; 2 uses
  %i.bu = icmp eq ptr %.val.i.i, null
  br i1 %i.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.bv = getelementptr i8, ptr %i.bf, i64 32
  %.val1.i.i = load ptr, ptr %i.bv, align 8, !noalias !38728
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !38728, !nonnull !80, !noundef !80
  tail call void %i.bx(ptr noundef %.val1.i.i) #45, !noalias !38728, !inline_history !38704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.ac, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i.i
  store ptr null, ptr %i.bt, align 8, !noalias !38728
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i8 1, ptr %i.by, align 8, !noalias !38728
  br i1 %i.bs, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.bz = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !38728
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ae, !prof !89

bb.ae:                                            ; preds = %bb.ad
  %i.cc = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #52, !noalias !38728
  br i1 %i.cc, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store atomic i8 1, ptr %i.bp monotonic, align 4, !noalias !38728
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.cd = atomicrmw xchg ptr %i.bg, i32 0 release, align 4, !noalias !38728
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i, !prof !92

bb.ag:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bg) #45, !noalias !38728
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.ag, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.cf = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !noalias !38728
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !38729
  %i.ch = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !38729 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ai, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsa7TLgTh0CeG_9ssmanager.exit.i, !prof !83

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #54, !noalias !38729
  unreachable

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i
  tail call void @llvm.trap()
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE4parkCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr null, ptr %i.ch, align 8, !noalias !38728
  %.sroa.4.0..sroa_idx.i.i4.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx.i.i4.i, align 8, !noalias !38728
  %i.ck = atomicrmw xchg ptr %i.cj, ptr %i.ch acq_rel, align 8, !noalias !38728
  store atomic ptr %i.ch, ptr %i.ck release, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.cm = load atomic i64, ptr %i.cl seq_cst, align 8, !noalias !38728
  %.lobit.i.i = lshr i64 %i.cm, 63
  %i.cn = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.cn, ptr %i.c, align 8, !alias.scope !38724
  %.val.pre.i = load ptr, ptr %1, align 8, !alias.scope !38712
  br label %bb.v

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE9do_send_bCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE21queue_push_and_signalCsa7TLgTh0CeG_9ssmanager.exit.i, %bb.u, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvMsk_NtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aesINtB5_3AesKjb_E3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(352) initializes((0, 352)) %0, <2 x i64> %.0.val) unnamed_addr #22 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %.0.val, i8 1)
  %i.b = bitcast <2 x i64> %i.a to <4 x i32>
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.d = bitcast <4 x i32> %i.c to <2 x i64>
  %i.e = bitcast <2 x i64> %.0.val to <16 x i8>
  %i.f = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.e, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.g = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.f, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.h = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.g, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.i = xor <16 x i8> %i.f, %i.h
  %i.j = xor <16 x i8> %i.i, %i.g
  %i.k = bitcast <16 x i8> %i.j to <2 x i64>
  %i.l = xor <2 x i64> %i.k, %i.d
  %i.m = xor <2 x i64> %i.l, %.0.val              ; 5 uses
  %i.n = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.m, i8 2)
  %i.o = bitcast <2 x i64> %i.n to <4 x i32>
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.q = bitcast <4 x i32> %i.p to <2 x i64>
  %i.r = bitcast <2 x i64> %i.m to <16 x i8>
  %i.s = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.r, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.t = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.u = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.t, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.v = xor <16 x i8> %i.s, %i.u
  %i.w = xor <16 x i8> %i.v, %i.t
  %i.x = bitcast <16 x i8> %i.w to <2 x i64>
  %i.y = xor <2 x i64> %i.q, %i.x
  %i.z = xor <2 x i64> %i.y, %i.m                 ; 5 uses
  %i.aa = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.z, i8 4)
  %i.ab = bitcast <2 x i64> %i.aa to <4 x i32>
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ad = bitcast <4 x i32> %i.ac to <2 x i64>
  %i.ae = bitcast <2 x i64> %i.z to <16 x i8>
  %i.af = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ae, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ag = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.af, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ah = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ag, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ai = xor <16 x i8> %i.af, %i.ah
  %i.aj = xor <16 x i8> %i.ai, %i.ag
  %i.ak = bitcast <16 x i8> %i.aj to <2 x i64>
  %i.al = xor <2 x i64> %i.ad, %i.ak
  %i.am = xor <2 x i64> %i.al, %i.z               ; 5 uses
  %i.an = tail call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %i.am, i8 8)
  %i.ao = bitcast <2 x i64> %i.an to <4 x i32>
  %i.ap = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>
  %i.ar = bitcast <2 x i64> %i.am to <16 x i8>
end_hunk_6
begin_hunk_7_@_RNvXs0_NtCsgCecv3eZDcN_5alloc5sliceSRShINtB5_6ConcathE6concatCsa7TLgTh0CeG_9ssmanager:_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB10_8adapters3map8map_foldRBQ_jjNCNvXs0_NtCsgCecv3eZDcN_5alloc5sliceSBQ_INtB2s_6ConcathE6concat0NCINvXsK_NtBY_5accumjNtB3v_3Sum3sumINtB1K_3MapBF_B2k_EE0E0ECsa7TLgTh0CeG_9ssmanager.exit
  br i1 %i.v, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.1, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.1, !prof !92

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.1: ; preds = %_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit
  %i.w = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.w)
  %.not.i.i6.1 = icmp samesign eq i64 %.val11.i.1, 0
  br i1 %.not.i.i6.1, label %_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.1, label %bb.e

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.1: ; preds = %_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.t, i64 noundef %.val11.i.1, i64 noundef 1, i64 noundef 1) #45
  %i.x = load i64, ptr %i.j, align 8, !alias.scope !38999, !noundef !80 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %.pre9 = load ptr, ptr %i.i, align 8, !alias.scope !38999
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.1, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.1
  %i.z = phi ptr [ %.pre9, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.1 ], [ %i.q, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.1 ]
  %i.aa = phi i64 [ %i.x, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.1 ], [ %i.t, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.1 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %.sroa.0.0.ptr.val.1, i64 %.val11.i.1, i1 false), !noalias !38999
  br label %_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.1

_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.1: ; preds = %bb.e, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.1
  %i.ac = phi i64 [ %i.aa, %bb.e ], [ %i.t, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.1 ]
  %i.ad = add i64 %i.ac, %.val11.i.1
  store i64 %i.ad, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchangeINtB5_11DnsExchangeNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4sendCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(272) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [288 x i8], align 8               ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.9.i = alloca [272 x i8], align 8         ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 16 uses
  %i.h = alloca [288 x i8], align 8               ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.8.i = alloca [272 x i8], align 8         ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39089)
  %i.m = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !39090
  %i.n = icmp ult i64 %i.m, 2
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandlepENtNtB7_10dns_handle9DnsHandle4send10___CALLSITE, i64 16) monotonic, align 8, !noalias !39090 ; 3 uses
  switch i8 %i.o, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !85

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandlepENtNtB7_10dns_handle9DnsHandle4send10___CALLSITE) #52, !noalias !39091 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.b
  %.sroa.06.0.i = phi i8 [ %i.p, %bb.c ], [ %i.o, %bb.b ], [ %i.o, %bb.b ]
  %i.r = load ptr, ptr @_RNvNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandlepENtNtB7_10dns_handle9DnsHandle4send10___CALLSITE, align 8, !noalias !39090, !nonnull !80, !align !86, !noundef !80
  %i.s = tail call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, i8 noundef %.sroa.06.0.i) #45, !noalias !39091
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !39090
  call void @_RNvMs7_NtCsi1FNhPBS7PW_11hickory_net4xferNtB5_17OneshotDnsRequest7oneshot(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %2) #45, !noalias !39091
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %.sroa.056.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !39090 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.0..sroa_idx.i, i64 272, i1 false), !noalias !39090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !39090
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !noalias !39090, !nonnull !80, !noundef !80
  store ptr %i.u, ptr %i.i, align 8, !noalias !39090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !39090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !39090
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !95, !alias.scope !39089, !noundef !80
  %.not.i = icmp eq i8 %i.w, 2                    ; 2 uses
  br i1 %.not.i, label %bb.ai, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr @_RNvNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandlepENtNtB7_10dns_handle9DnsHandle4send10___CALLSITE, align 8, !noalias !39090, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !39090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !39090
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !39090
  store ptr %i.z, ptr %i.j, align 8, !noalias !39090
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXNtNtCs2Z77Vc7pSLS_13hickory_proto2op7op_codeNtB2_6OpCodeNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !39090
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %2, ptr %i.aa, align 8, !noalias !39090
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsa7TLgTh0CeG_9ssmanager, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !39090
  store ptr @1877, ptr %i.k, align 8, !noalias !39090
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.ab, align 8, !noalias !39090
  store ptr %i.k, ptr %i.l, align 8, !noalias !39090
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @16, ptr %i.ac, align 8, !noalias !39090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !39090
  store i64 1, ptr %i.f, align 8, !noalias !39090
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.l, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !39090
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !39090
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !39090
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f) #45, !noalias !39091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !39090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !39090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !39090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !39090
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !39092)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !39093, !nonnull !80, !noundef !80 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.af = load atomic i64, ptr %i.ae seq_cst, align 8, !noalias !39094
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i.i = phi i64 [ %i.af, %bb.g ], [ %.sroa.01.0.i.i.i, %bb.i ] ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !39094, !noundef !80
  %i.ai = sub i64 9223372036854775807, %i.ah
  %i.aj = icmp eq i64 %.sroa.04.0.i.i, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.i, !prof !92

bb.i:                                             ; preds = %bb.h
  %i.ak = add i64 %.sroa.04.0.i.i, 1
  %i.al = cmpxchg ptr %i.ae, i64 %.sroa.04.0.i.i, i64 %i.ak seq_cst seq_cst, align 8, !noalias !39094 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.al, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.al, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.k, label %bb.h

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2492, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2493) #55, !noalias !39094
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !39094
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !39095
  %i.ao = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !39095 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i, !prof !83

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #54, !noalias !39095
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i: ; preds = %bb.l
  store i64 1, ptr %i.ao, align 8, !noalias !39094
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !39094
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !39094
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !39094
  %.sroa.721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr null, ptr %.sroa.721.0..sroa_idx.i.i, align 8, !noalias !39094
  %.sroa.822.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i8 0, ptr %.sroa.822.0..sroa_idx.i.i, align 8, !noalias !39094
  store ptr %i.ad, ptr %i.g, align 8, !noalias !39090
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.ao, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !noalias !39090
  %.sroa.428.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i8 0, ptr %.sroa.428.0..sroa_idx29.i, align 8, !noalias !39090
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !39096)
  call void @llvm.experimental.noalias.scope.decl(metadata !39097)
  call void @llvm.experimental.noalias.scope.decl(metadata !39098)
  call void @llvm.experimental.noalias.scope.decl(metadata !39099)
  call void @llvm.experimental.noalias.scope.decl(metadata !39100)
  call void @llvm.experimental.noalias.scope.decl(metadata !39101)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq seq_cst, align 8, !noalias !39102
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.ar, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i ], [ %.sroa.01.0.i.i.i1.i.i, %bb.r ] ; 4 uses
  %.not.i.i.i.i = icmp sgt i64 %.sroa.05.0.i.i.i.i, -1
  %i.as = and i64 %.sroa.05.0.i.i.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not11.i.i.i.i = icmp eq i64 %i.as, 9223372036854775807
  br i1 %.not11.i.i.i.i, label %bb.q, label %bb.r, !prof !92

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1301, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1302) #55, !noalias !39102
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.at = add nsw i64 %.sroa.05.0.i.i.i.i, 1
  %i.au = or i64 %i.at, -9223372036854775808
  %i.av = cmpxchg ptr %i.aq, i64 %.sroa.05.0.i.i.i.i, i64 %i.au seq_cst seq_cst, align 8, !noalias !39102 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.av, 1
  %.sroa.01.0.i.i.i1.i.i = extractvalue { i64, i1 } %i.av, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.s, label %bb.o

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %i.g, align 8, !alias.scope !39103, !noalias !39090, !nonnull !80, !noundef !80 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !39104, !noundef !80
  %.not.i.i.i = icmp ult i64 %i.as, %i.ay
  br i1 %.not.i.i.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE4parkCsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %bb.s
  %.val.i2.i.i = phi ptr [ %.val.pre.i.i.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE4parkCsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.aw, %bb.s ] ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !39105
  %i.az = call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !39105 ; 6 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.u, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsa7TLgTh0CeG_9ssmanager.exit.thread.i, !prof !83

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #54, !noalias !39105
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i2.i.i, i64 16
  store i64 %.sroa.056.0.copyload.i, ptr %i.az, align 8, !noalias !39106
  %.sroa.8.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.0..sroa_idx59.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, i64 272, i1 false), !noalias !39106
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 280
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !39107
  %i.bc = atomicrmw xchg ptr %i.bb, ptr %i.az acq_rel, align 8, !noalias !39107
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 280
  store atomic ptr %i.az, ptr %i.bd release, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i2.i.i, i64 72
  call void @_RNvMNtNtNtCsaUkHVQFH9AD_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.be) #45, !noalias !39108
  br label %bb.ay

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !39109)
  %i.bf = load ptr, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !alias.scope !39110, !noalias !39090, !nonnull !80, !noundef !80 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 5 uses
  %i.bh = cmpxchg ptr %i.bg, i32 0, i32 1 acquire monotonic, align 4, !noalias !39111
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %bb.x, label %bb.w, !prof !89

bb.w:                                             ; preds = %bb.v
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bg) #45, !noalias !39111
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bj = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !39112
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.y, !prof !89

bb.y:                                             ; preds = %bb.x
  %i.bm = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #52, !noalias !39111
  %i.bn = xor i1 %i.bm, true
  %i.bo = zext i1 %i.bn to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.01.0.i.i.i.i.i.i = phi i8 [ %i.bo, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 2 uses
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1, !noalias !39111
  %.not.i.i.not.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.not.i.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.z, !prof !89

bb.z:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39113
  store ptr %i.bg, ptr %i.d, align 8, !noalias !39113
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %i.br, align 8, !noalias !39113
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1055, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1061, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1303) #55, !noalias !39114
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskE4lockCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.bs = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !39115, !align !86, !noundef !80 ; 2 uses
  %i.bu = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.bv = getelementptr i8, ptr %i.bf, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.bv, align 8, !noalias !39115
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !39115, !nonnull !80, !noundef !80
  call void %i.bx(ptr noundef %.val1.i.i.i.i) #45, !noalias !39115, !inline_history !39032
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.aa, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  store ptr null, ptr %i.bt, align 8, !noalias !39115
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i8 1, ptr %i.by, align 8, !noalias !39115
  br i1 %i.bs, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.bz = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !39116
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ac, !prof !89

bb.ac:                                            ; preds = %bb.ab
  %i.cc = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #52, !noalias !39115
  br i1 %i.cc, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store atomic i8 1, ptr %i.bp monotonic, align 4, !noalias !39115
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %i.cd = atomicrmw xchg ptr %i.bg, i32 0 release, align 4, !noalias !39115
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, !prof !92

bb.ae:                                            ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bg) #45, !noalias !39115
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.ae, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %i.cf = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !noalias !39115
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !39117
  %i.ch = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !39117 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ag, label %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE4parkCsa7TLgTh0CeG_9ssmanager.exit.i.i.i, !prof !83

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #54, !noalias !39117
  unreachable

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtCslXgxf2tUV4p_15futures_channel4mpsc10SenderTaskEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE4parkCsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr null, ptr %i.ch, align 8, !noalias !39115
  %.sroa.4.0..sroa_idx.i.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx.i.i4.i.i.i, align 8, !noalias !39115
  %i.ck = atomicrmw xchg ptr %i.cj, ptr %i.ch acq_rel, align 8, !noalias !39115
  store atomic ptr %i.ch, ptr %i.ck release, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.cm = load atomic i64, ptr %i.cl seq_cst, align 8, !noalias !39115
  %.lobit.i.i.i.i = lshr i64 %i.cm, 63
  %i.cn = trunc nuw nsw i64 %.lobit.i.i.i.i to i8
  store i8 %i.cn, ptr %.sroa.428.0..sroa_idx29.i, align 8, !alias.scope !39110, !noalias !39090
  %.val.pre.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !39103, !noalias !39090
  br label %bb.t

_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, i64 272, i1 false), !alias.scope !39118, !noalias !39090
  %.not38.i = icmp eq i64 %.sroa.056.0.copyload.i, -1
  br i1 %.not38.i, label %bb.ay, label %bb.aj

bb.ai:                                            ; preds = %bb.e
  %.sroa.027.sroa.4.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.428.0..sroa_idx2971.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i8 2, ptr %.sroa.428.0..sroa_idx2971.i, align 8, !noalias !39090
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.8.i, i64 272, i1 false), !noalias !39090
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.428.0..sroa_idx2976.i = phi ptr [ %.sroa.428.0..sroa_idx2971.i, %bb.ai ], [ %.sroa.428.0..sroa_idx29.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.027.sroa.4.0..sroa_idx74.i = phi ptr [ %.sroa.027.sroa.4.0..sroa_idx70.i, %bb.ai ], [ %.sroa.027.sroa.4.0..sroa_idx.i, %_RNvMsg_NtCslXgxf2tUV4p_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsa7TLgTh0CeG_9ssmanager.exit.i ] ; 2 uses
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !39090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.462.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.9.i, i64 272, i1 false), !noalias !39090
  store i64 %.sroa.056.0.copyload.i, ptr %i.e, align 8, !noalias !39090
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  store i8 1, ptr %.sroa.563.0..sroa_idx.i, align 8, !noalias !39090
  %i.co = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !39119
  %i.cp = icmp ult i64 %i.co, 2
  br i1 %i.cp, label %bb.ak, label %_RNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandleNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4send0Csa7TLgTh0CeG_9ssmanager.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.cq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB9_25BufDnsRequestStreamHandlepENtNtB9_10dns_handle9DnsHandle4send010___CALLSITE, i64 16) monotonic, align 8, !noalias !39119 ; 3 uses
  switch i8 %i.cq, label %bb.al [
    i8 0, label %_RNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandleNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4send0Csa7TLgTh0CeG_9ssmanager.exit.i
    i8 1, label %bb.am
    i8 2, label %bb.am
  ], !prof !85

bb.al:                                            ; preds = %bb.ak
  %i.cr = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB9_25BufDnsRequestStreamHandlepENtNtB9_10dns_handle9DnsHandle4send010___CALLSITE) #52, !noalias !39120 ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %_RNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandleNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4send0Csa7TLgTh0CeG_9ssmanager.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ak
  %.sroa.06.0.i.i = phi i8 [ %i.cr, %bb.al ], [ %i.cq, %bb.ak ], [ %i.cq, %bb.ak ]
  %i.ct = load ptr, ptr @_RNvNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB9_25BufDnsRequestStreamHandlepENtNtB9_10dns_handle9DnsHandle4send010___CALLSITE, align 8, !noalias !39119, !nonnull !80, !align !86, !noundef !80
  %i.cu = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ct, i8 noundef %.sroa.06.0.i.i) #45, !noalias !39120
  br i1 %i.cu, label %bb.an, label %_RNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB7_25BufDnsRequestStreamHandleNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderENtNtB7_10dns_handle9DnsHandle4send0Csa7TLgTh0CeG_9ssmanager.exit.i

bb.an:                                            ; preds = %bb.am
  %i.cv = load ptr, ptr @_RNvNCNvXs6_NtCsi1FNhPBS7PW_11hickory_net4xferINtB9_25BufDnsRequestStreamHandlepENtNtB9_10dns_handle9DnsHandle4send010___CALLSITE, align 8, !noalias !39119, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39119
  store ptr @1024, ptr %i.b, align 8, !noalias !39119
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 51 to ptr), ptr %i.cx, align 8, !noalias !39119
  store ptr %i.b, ptr %i.c, align 8, !noalias !39119
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @16, ptr %i.cy, align 8, !noalias !39119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39119
end_hunk_7
