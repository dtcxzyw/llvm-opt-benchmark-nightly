Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/url-0ea03bfcb986b98b.url.1d492e49ee020898-cgu.0?download=true
inline.NumInlined: 292
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url13make_relative:bb.a
  %i.ax = icmp ugt i32 %i.as, %i.au
  %i.ay = icmp ult i64 %.val1.i, %i.aw
  %or.cond.i.i.i.i.i.i = or i1 %i.ax, %i.ay
  br i1 %or.cond.i.i.i.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %.val1.i, %i.av
  br i1 %i.az, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp eq i32 %i.as, 0
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.bb = icmp eq i64 %.val1.i, %i.aw
  br i1 %i.bb, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.av
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !429, !noalias !430, !noundef !5
  %i.be = icmp sgt i8 %i.bd, -65
  br i1 %i.be, label %bb.s, label %bb.u

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i: ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aw
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !429, !noalias !430, !noundef !5
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i, label %bb.u

bb.u:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i, %bb.t, %bb.p
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef range(i64 0, 4294967296) %i.av, i64 noundef range(i64 0, 4294967296) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #15, !noalias !430
  unreachable

_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i, %bb.s, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.av
  %i.bj = sub nuw nsw i64 %i.aw, %i.av
  store i8 0, ptr %i.j, align 8, !alias.scope !427
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bi, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !427
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !427
  br label %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit

bb.v:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 65
  %.sroa.02.0.copyload.i = load i32, ptr %i.bk, align 1, !alias.scope !428
  store i8 1, ptr %i.j, align 8, !alias.scope !427
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i32 %.sroa.02.0.copyload.i, ptr %.sroa.45.0..sroa_idx.i, align 1, !alias.scope !427
  br label %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit

bb.w:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 65
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.bl, i64 16, i1 false), !alias.scope !430
  store i8 2, ptr %i.j, align 8, !alias.scope !427
  br label %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit

_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit:     ; preds = %bb.o, %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i, %bb.v, %bb.w
  %.not81 = phi i1 [ true, %bb.o ], [ false, %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i ], [ false, %bb.v ], [ false, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bn = load i8, ptr %i.bm, align 8, !range !15, !alias.scope !432, !noundef !5
  switch i8 %i.bn, label %default.unreachable [
    i8 0, label %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116.thread
    i8 1, label %bb.x
    i8 2, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.x:                                             ; preds = %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !432, !noundef !5 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !alias.scope !432, !noundef !5 ; 2 uses
  %i.bs = zext i32 %i.bp to i64                   ; 5 uses
  %i.bt = zext i32 %i.br to i64                   ; 5 uses
  %i.bu = icmp ugt i32 %i.bp, %i.br
  %i.bv = icmp ult i64 %.val95, %i.bt
  %or.cond.i.i.i.i.i.i110 = or i1 %i.bu, %i.bv
  br i1 %or.cond.i.i.i.i.i.i110, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = icmp eq i64 %.val95, %i.bs
  br i1 %i.bw, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i112, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = icmp eq i32 %i.bp, 0
  br i1 %i.bx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.by = icmp eq i64 %.val95, %i.bt
  br i1 %i.by, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i112, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i111

bb.ab:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bs
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !433, !noalias !434, !noundef !5
  %i.cb = icmp sgt i8 %i.ca, -65
  br i1 %i.cb, label %bb.aa, label %bb.ac

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i111: ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bt
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !433, !noalias !434, !noundef !5
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i112, label %bb.ac

bb.ac:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i111, %bb.ab, %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val95, i64 noundef range(i64 0, 4294967296) %i.bs, i64 noundef range(i64 0, 4294967296) %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #15, !noalias !434
  unreachable

_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i112: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i111, %bb.aa, %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bs
  %i.cg = sub nuw nsw i64 %i.bt, %i.bs
  store i8 0, ptr %i.i, align 8, !alias.scope !431
  %.sroa.41.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cf, ptr %.sroa.41.0..sroa_idx.i113, align 8, !alias.scope !431
  %.sroa.5.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.cg, ptr %.sroa.5.0..sroa_idx.i114, align 8, !alias.scope !431
  br label %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116

bb.ad:                                            ; preds = %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 65
  %.sroa.02.0.copyload.i106 = load i32, ptr %i.ch, align 1, !alias.scope !432
  store i8 1, ptr %i.i, align 8, !alias.scope !431
  %.sroa.45.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i32 %.sroa.02.0.copyload.i106, ptr %.sroa.45.0..sroa_idx.i107, align 1, !alias.scope !431
  br label %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116

bb.ae:                                            ; preds = %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 65
  %.sroa.48.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.48.0..sroa_idx.i105, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ci, i64 16, i1 false), !alias.scope !434
  store i8 2, ptr %i.i, align 8, !alias.scope !431
  br label %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116

_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116:  ; preds = %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range5RangemEEB5_.exit.i112, %bb.ad, %bb.ae
  br i1 %.not81, label %.thread, label %.split

_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116.thread: ; preds = %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit
  br i1 %.not81, label %.thread266, label %.thread

.split:                                           ; preds = %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116
  %i.cj = call noundef zeroext i1 @_RNvXs3_NtCs2vT3jxLudSK_3url4hostINtB5_4HostReENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  br i1 %i.cj, label %.thread266, label %.thread

.thread:                                          ; preds = %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116.thread, %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.dg

.thread266:                                       ; preds = %_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4host.exit116.thread, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cl = load i16, ptr %i.ck, align 8, !range !13, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = load i16, ptr %i.cm, align 8, !range !13, !noundef !5 ; 2 uses
  %i.co = trunc nuw i16 %i.cl to i1
  br i1 %i.co, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread266
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = trunc nuw i16 %i.cn to i1
  %i.cu = icmp eq i16 %i.cs, %i.cq
  %or.cond270.not = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond270.not, label %bb.ah, label %bb.dg

bb.ag:                                            ; preds = %.thread266
  %i.cv = trunc nuw i16 %i.cn to i1
  br i1 %i.cv, label %bb.dg, label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 16 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 35 uses
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cw = invoke { ptr, i64 } @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
  invoke fastcc void @_RNvNvMs_Cs2vT3jxLudSK_3urlNtB6_3Url13make_relative21extract_path_filename(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cy)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.cz = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.db = load i64, ptr %i.da, align 8, !noundef !5 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !5, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.df = load i64, ptr %i.de, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dg = invoke { ptr, i64 } @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0
  %i.di = extractvalue { ptr, i64 } %i.dg, 1
  invoke fastcc void @_RNvNvMs_Cs2vT3jxLudSK_3urlNtB6_3Url13make_relative21extract_path_filename(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.di)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  store i64 0, ptr %i.dq, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.db, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  store ptr %i.cz, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  store i64 %i.db, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  store i64 0, ptr %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i64 %i.db, ptr %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.7.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  store i32 47, ptr %.sroa.536.sroa.7.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.8.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 47, ptr %.sroa.536.sroa.8.0..sroa.536.0..sroa_idx.sroa_idx, align 4
  %.sroa.536.sroa.9.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  store i8 1, ptr %.sroa.536.sroa.9.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i8 1, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 89 ; 3 uses
  store i8 0, ptr %.sroa.738.0..sroa_idx, align 1
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i64 0, ptr %i.dr, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.dl, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.dj, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i64 %i.dl, ptr %.sroa.560.sroa.4.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  store i64 0, ptr %.sroa.560.sroa.5.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  store i64 %i.dl, ptr %.sroa.560.sroa.6.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.7.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  store i32 47, ptr %.sroa.560.sroa.7.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.560.sroa.8.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 47, ptr %.sroa.560.sroa.8.0..sroa.560.0..sroa_idx.sroa_idx, align 4
  %.sroa.560.sroa.9.0..sroa.560.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store i8 1, ptr %.sroa.560.sroa.9.0..sroa.560.0..sroa_idx.sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i8 1, ptr %.sroa.661.0..sroa_idx, align 8
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 89 ; 3 uses
  store i8 0, ptr %.sroa.762.0..sroa_idx, align 1
  store i64 0, ptr %i.d, align 8
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255.backedge, %bb.al
  %i.ds = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(72) %i.dq)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255
  %i.dt = load ptr, ptr %i.ds, align 8, !noundef !5
  %.not83 = icmp eq ptr %i.dt, null
  br i1 %.not83, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtNtB5_3str4iter5SplitcEE4peek0ECs2vT3jxLudSK_3url(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(72) %i.dq)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread: ; preds = %bb.ba, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit, %bb.ax, %bb.ay, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.471.0.copyload = load ptr, ptr %.sroa.471.0..sroa_idx, align 8 ; 2 uses
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.572.0.copyload = load i64, ptr %.sroa.572.0..sroa_idx, align 8 ; 2 uses
  %.promoted313 = load i64, ptr %i.c, align 8     ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 89 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val.i117 = load ptr, ptr %i.dx, align 8, !nonnull !5 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.val1.i118 = load i64, ptr %i.dy, align 8      ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ea = load i64, ptr %i.dz, align 8            ; 5 uses
  %.not.i.i = icmp ugt i64 %i.ea, %.val1.i118
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ed = load i8, ptr %i.ec, align 8             ; 2 uses
  %i.ee = zext nneg i8 %i.ed to i64               ; 4 uses
  %i.ef = icmp ult i8 %i.ed, 5
  %i.eg = getelementptr i8, ptr %i.eb, i64 %i.ee
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ej = load i8, ptr %i.ei, align 8, !range !6
  %i.ek = trunc nuw i8 %i.ej to i1                ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre2.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8 ; 4 uses
  %.promoted320 = load i64, ptr %i.dv, align 8    ; 4 uses
  %.not.i.i.fr = freeze i1 %.not.i.i
  br i1 %.not.i.i.fr, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us, label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.preheader: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.promoted315 = load i64, ptr %i.el, align 8
  %i.em = trunc nuw i64 %.promoted313 to i1
  br label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split

_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us: ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread
  %.promoted330 = load i8, ptr %i.dw, align 1     ; 2 uses
  %.not.i3.i.us = icmp ne i64 %.pre2.i.i, %.promoted320
  %or.cond.not.i.i.us = select i1 %i.ek, i1 true, i1 %.not.i3.i.us ; 3 uses
  %i.en = sub nuw i64 %.pre2.i.i, %.promoted320
  %.sroa.3.0.i.i.us = select i1 %or.cond.not.i.i.us, i64 %i.en, i64 undef ; 2 uses
  %i.eo = trunc nuw i64 %.promoted313 to i1
  br i1 %i.eo, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel, label %bb.ao

bb.ao:                                            ; preds = %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i117, i64 %.promoted320
  %.sroa.0.0.i.i119.us = select i1 %or.cond.not.i.i.us, ptr %i.ep, ptr null
  %i.eq = trunc nuw i8 %.promoted330 to i1
  br i1 %i.eq, label %.split325, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel: ; preds = %bb.ao, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us
  %i.er = phi i8 [ %.promoted330, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ 1, %bb.ao ]
  %.sroa.7.0.us.peel = phi i64 [ %.sroa.572.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ %.sroa.3.0.i.i.us, %bb.ao ]
  %.sroa.010.0.us.peel = phi ptr [ %.sroa.471.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split.us ], [ %.sroa.0.0.i.i119.us, %bb.ao ]
  %.not88.us.peel = icmp eq ptr %.sroa.010.0.us.peel, null
  %i.es = icmp eq i64 %.sroa.7.0.us.peel, 0
  %or.cond94.us.peel = select i1 %.not88.us.peel, i1 true, i1 %i.es
  br i1 %or.cond94.us.peel, label %.split325, label %bb.ap

bb.ap:                                            ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel
  %i.et = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.eu = icmp sgt i64 %i.et, -1
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel: ; preds = %bb.aq
  %i.ew = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !435, !nonnull !5, !noundef !5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.et
  store i8 47, ptr %i.ex, align 1
  %i.ey = add nuw i64 %i.et, 1
  store i64 %i.ey, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !435
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us.peel, %bb.ap
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel: ; preds = %bb.ar
  %i.ez = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436, !noundef !5 ; 2 uses
  %i.fa = icmp sgt i64 %i.ez, -1
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !436, !nonnull !5, !noundef !5
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez
  store i16 11822, ptr %i.fc, align 1
  %.pre.i.us.peel = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436 ; 2 uses
  %i.fd = trunc nuw i8 %i.er to i1
  %storemerge514 = add i64 %.pre.i.us.peel, 2     ; 4 uses
  store i64 %storemerge514, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436
  br i1 %i.fd, label %.split325, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel
  %i.fe = icmp ne i64 %.sroa.3.0.i.i.us, 0
  %.not487 = select i1 %or.cond.not.i.i.us, i1 %i.fe, i1 false
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  br i1 %.not487, label %bb.as, label %.split325

bb.as:                                            ; preds = %.lr.ph
  %i.ff = icmp sgt i64 %storemerge514, -1
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp eq i64 %storemerge514, 0
  br i1 %i.fg, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit.us: ; preds = %bb.at
end_hunk_0
begin_hunk_1_@_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url13make_relative:bb.a
  %.lcssa290321 = phi i64 [ %.lcssa290322, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.lcssa290322, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.go, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.lcssa312317 = phi i64 [ %.lcssa312318, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.lcssa312316, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.go, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.sroa.7.0 = phi i64 [ %.sroa.572.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.sroa.3.0.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.gt, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.sroa.010.0 = phi ptr [ %.sroa.471.0.copyload, %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split ], [ %.sroa.0.0.i.i119, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.gu, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i ]
  %.not88 = icmp eq ptr %.sroa.010.0, null
  %i.gx = icmp eq i64 %.sroa.7.0, 0
  %or.cond94 = select i1 %.not88, i1 true, i1 %i.gx
  br i1 %or.cond94, label %.split325, label %bb.bj

.split325:                                        ; preds = %bb.bb, %bb.bi, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us.peel, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit.us, %.lr.ph, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.peel, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8 ; 2 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.575.0.copyload = load i64, ptr %.sroa.575.0..sroa_idx, align 8
  %.promoted339 = load i64, ptr %i.b, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 89 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val.i123 = load ptr, ptr %i.ha, align 8, !nonnull !5 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val1.i124 = load i64, ptr %i.hb, align 8      ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.he = load i64, ptr %i.hd, align 8            ; 5 uses
  %.not.i.i125 = icmp ugt i64 %i.he, %.val1.i124
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.hh = load i8, ptr %i.hg, align 8             ; 2 uses
  %i.hi = zext nneg i8 %i.hh to i64               ; 4 uses
  %i.hj = icmp ult i8 %i.hh, 5
  %i.hk = getelementptr i8, ptr %i.hf, i64 %i.hi
  %i.hl = getelementptr i8, ptr %i.hk, i64 -1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hn = load i8, ptr %i.hm, align 8, !range !6
  %i.ho = trunc nuw i8 %i.hn to i1
  %.phi.trans.insert.i.i136 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre2.i.i137 = load i64, ptr %.phi.trans.insert.i.i136, align 8 ; 2 uses
  %.promoted341 = load i64, ptr %i.hc, align 8
  %.promoted346 = load i64, ptr %i.gy, align 8
  %i.hp = trunc nuw i64 %.promoted339 to i1
  %.not89 = icmp eq ptr %.sroa.474.0.copyload, null
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.hq = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.hr = icmp sgt i64 %i.hq, -1
  call void @llvm.assume(i1 %i.hr)
  %i.hs = icmp eq i64 %i.hq, 0
  br i1 %i.hs, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.bk
  %i.ht = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !435, !nonnull !5, !noundef !5
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hq
  store i8 47, ptr %i.hu, align 1
  %i.hv = add nuw i64 %i.hq, 1
  store i64 %i.hv, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !435
  br label %bb.bl

bb.bl:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit, %bb.bj
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit: ; preds = %bb.bl
  %i.hw = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436, !noundef !5 ; 2 uses
  %i.hx = icmp sgt i64 %i.hw, -1
  call void @llvm.assume(i1 %i.hx)
  %i.hy = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !436, !nonnull !5, !noundef !5
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hw
  store i16 11822, ptr %i.hz, align 1
  %.pre.i = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436
  %i.ia = add i64 %.pre.i, 2
  store i64 %i.ia, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !436
  br label %_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsReNtB7_9PartialEq2eqCs2vT3jxLudSK_3url.exit.thread.split

bb.bm:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183, %.split325
  %.lcssa287348 = phi i64 [ %.lcssa287347475, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183 ], [ %.promoted346, %.split325 ] ; 7 uses
  %.lcssa338344 = phi i64 [ %.lcssa338343476, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183 ], [ %.promoted341, %.split325 ] ; 4 uses
  %.sroa.073.0.copyload340 = phi i1 [ false, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183 ], [ %i.hp, %.split325 ]
  br i1 %.sroa.073.0.copyload340, label %bb.bu, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.ib = load i8, ptr %i.gz, align 1, !range !6, !alias.scope !445, !noundef !5
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %.thread459, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.id = icmp ult i64 %i.he, %.lcssa338344
  %or.cond20.i.i127 = or i1 %.not.i.i125, %i.id
  br i1 %or.cond20.i.i127, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134, label %.lr.ph.split.preheader.i.i128

.lr.ph.split.preheader.i.i128:                    ; preds = %bb.bo
  call void @llvm.assume(i1 %i.hj)
  %.pre.i.i129 = load i8, ptr %i.hl, align 1, !alias.scope !447 ; 2 uses
  br label %.lr.ph.split.i.i130

.lr.ph.split.i.i130:                              ; preds = %bb.bs, %.lr.ph.split.preheader.i.i128
  %i.ie = phi i64 [ %i.it, %bb.bs ], [ %.lcssa338344, %.lr.ph.split.preheader.i.i128 ] ; 3 uses
  %i.if = sub nuw i64 %i.he, %i.ie                ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %i.ie ; 2 uses
  %i.ih = icmp samesign ult i64 %i.if, 16
  br i1 %i.ih, label %.preheader.i.i.i149, label %bb.bp

.preheader.i.i.i149:                              ; preds = %.lr.ph.split.i.i130
  %.not.i.i.i150 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i.i150, label %._crit_edge.i.i.i154, label %.lr.ph.i.i.i151

bb.bp:                                            ; preds = %.lr.ph.split.i.i130
  %i.ii = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i129, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ig, i64 noundef range(i64 0, -9223372036854775808) %i.if)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i.i154:                             ; preds = %bb.bq, %.lr.ph.i.i.i151, %.preheader.i.i.i149
  %.sroa.01.0.lcssa.i.i.i155 = phi i64 [ 0, %.preheader.i.i.i149 ], [ %i.if, %bb.bq ], [ %.sroa.01.05.i.i.i152, %.lr.ph.i.i.i151 ]
  %.sroa.0.1.i.i.i156 = phi i64 [ 0, %.preheader.i.i.i149 ], [ 0, %bb.bq ], [ 1, %.lr.ph.i.i.i151 ]
  %i.ij = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i156, 0
  %i.ik = insertvalue { i64, i64 } %i.ij, i64 %.sroa.01.0.lcssa.i.i.i155, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131

.lr.ph.i.i.i151:                                  ; preds = %.preheader.i.i.i149, %bb.bq
  %.sroa.01.05.i.i.i152 = phi i64 [ %i.io, %bb.bq ], [ 0, %.preheader.i.i.i149 ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sroa.01.05.i.i.i152
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !448, !noalias !449, !noundef !5
  %i.in = icmp eq i8 %i.im, %.pre.i.i129
  br i1 %i.in, label %._crit_edge.i.i.i154, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i151
  %i.io = add nuw nsw i64 %.sroa.01.05.i.i.i152, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %i.io, %i.if
  br i1 %exitcond.not.i.i.i153, label %._crit_edge.i.i.i154, label %.lr.ph.i.i.i151

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131: ; preds = %bb.bp, %._crit_edge.i.i.i154
  %.merged.i.i.i132 = phi { i64, i64 } [ %i.ik, %._crit_edge.i.i.i154 ], [ %i.ii, %bb.bp ] ; 2 uses
  %i.ip = extractvalue { i64, i64 } %.merged.i.i.i132, 0
  %i.iq = trunc nuw i64 %i.ip to i1
  br i1 %i.iq, label %bb.br, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134

bb.br:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131
  %i.ir = extractvalue { i64, i64 } %.merged.i.i.i132, 1
  %i.is = add i64 %i.ie, 1
  %i.it = add i64 %i.is, %i.ir                    ; 8 uses
  %.not11.i.i144 = icmp ult i64 %i.it, %i.hi
  %.not12.i.i145 = icmp ugt i64 %i.it, %.val1.i124
  %or.cond.i.i146 = or i1 %.not11.i.i144, %.not12.i.i145
  br i1 %or.cond.i.i146, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.bt, %bb.br
  %i.iu = icmp ult i64 %i.he, %i.it
  br i1 %i.iu, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134, label %.lr.ph.split.i.i130

bb.bt:                                            ; preds = %bb.br
  %i.iv = sub nuw i64 %i.it, %i.hi                ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %i.iv
  %bcmp.i.i147 = call i32 @bcmp(ptr nonnull %i.iw, ptr nonnull %i.hf, i64 %i.hi), !noalias !450
  %i.ix = icmp eq i32 %bcmp.i.i147, 0
  br i1 %i.ix, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148, label %bb.bs

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148: ; preds = %bb.bt
  %i.iy = sub nuw i64 %i.iv, %.lcssa287348
  %i.iz = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %.lcssa287348
  br label %.thread469

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134: ; preds = %bb.bs, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131, %bb.bo
  %.lcssa338342 = phi i64 [ %.lcssa338344, %bb.bo ], [ %i.he, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i131 ], [ %i.it, %bb.bs ]
  store i8 1, ptr %i.gz, align 1, !alias.scope !451
  %.not.i3.i138 = icmp ne i64 %.pre2.i.i137, %.lcssa287348
  %or.cond.not.i.i139 = select i1 %i.ho, i1 true, i1 %.not.i3.i138
  %i.ja = sub nuw i64 %.pre2.i.i137, %.lcssa287348
  %i.jb = getelementptr inbounds nuw i8, ptr %.val.i123, i64 %.lcssa287348
  br i1 %or.cond.not.i.i139, label %.thread469, label %.thread459

bb.bu:                                            ; preds = %bb.bm
  br i1 %.not89, label %.thread459, label %.thread469

.thread469:                                       ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148, %bb.bu
  %.sroa.013.0478 = phi ptr [ %.sroa.474.0.copyload, %bb.bu ], [ %i.iz, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148 ], [ %i.jb, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134 ]
  %.sroa.715.0477 = phi i64 [ %.sroa.575.0.copyload, %bb.bu ], [ %i.iy, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148 ], [ %i.ja, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134 ] ; 4 uses
  %.lcssa338343476 = phi i64 [ %.lcssa338344, %bb.bu ], [ %i.it, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148 ], [ %.lcssa338342, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134 ]
  %.lcssa287347475 = phi i64 [ %.lcssa287348, %bb.bu ], [ %i.it, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i148 ], [ %.lcssa287348, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134 ]
  %i.jc = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.jd = icmp sgt i64 %i.jc, -1
  call void @llvm.assume(i1 %i.jd)
  %i.je = icmp eq i64 %i.jc, 0
  br i1 %i.je, label %bb.co, label %bb.cn

.thread459:                                       ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i134, %bb.bn, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jf = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !noundef !5 ; 6 uses
  %i.jg = icmp sgt i64 %i.jf, -1
  call void @llvm.assume(i1 %i.jg)
  %i.jh = icmp eq i64 %i.jf, 0                    ; 2 uses
  %i.ji = icmp eq i64 %i.df, %i.dp
  %or.cond = and i1 %i.ji, %i.jh
  br i1 %or.cond, label %bb.bw, label %3

3:                                                ; preds = %.thread459
  %4 = icmp eq i64 %i.dp, 0
  br i1 %4, label %bb.by, label %bb.bz

bb.bv:                                            ; preds = %bb.bw
  %i.jj = icmp eq i64 %i.df, 0
  br i1 %i.jj, label %bb.by, label %bb.cb

bb.bw:                                            ; preds = %.thread459
  %bcmp90 = call i32 @bcmp(ptr nonnull %i.dd, ptr nonnull %i.dn, i64 %i.df)
  %.not91 = icmp eq i32 %bcmp90, 0
  br i1 %.not91, label %bb.bx, label %bb.bv

.sink.split:                                      ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit160, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit165
  %.sink = phi i64 [ %i.jv, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit165 ], [ %i.jn, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit160 ]
  store i64 %.sink, ptr %.sroa.528.0..sroa_idx, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split, %bb.bw
  %i.jk = invoke { ptr, i64 } @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url5query(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.by:                                            ; preds = %bb.bv, %3
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit160 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit160: ; preds = %bb.by
  %i.jl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !452, !nonnull !5, !noundef !5
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jf
  store i8 47, ptr %i.jm, align 1
  %i.jn = add nuw i64 %i.jf, 1
  br label %.sink.split

bb.bz:                                            ; preds = %3
  br i1 %i.jh, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit162: ; preds = %bb.ca
  %i.jo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !453, !nonnull !5, !noundef !5
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jf
  store i8 47, ptr %i.jp, align 1
  %i.jq = add nuw i64 %i.jf, 1
  store i64 %i.jq, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !453
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bv, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit162, %bb.bz
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.dp)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit165: ; preds = %bb.cb
  %i.jr = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !454, !noundef !5 ; 2 uses
  %i.js = icmp sgt i64 %i.jr, -1
  call void @llvm.assume(i1 %i.js)
  %i.jt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !454, !nonnull !5, !noundef !5
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr nonnull readonly align 1 %i.dn, i64 %i.dp, i1 false)
  %.pre.i163 = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !454
  %i.jv = add i64 %.pre.i163, %i.dp
  br label %.sink.split

bb.cc:                                            ; preds = %bb.bx
  %i.jw = extractvalue { ptr, i64 } %i.jk, 0      ; 2 uses
  %i.jx = extractvalue { ptr, i64 } %i.jk, 1      ; 4 uses
  %.not92 = icmp eq ptr %i.jw, null
  br i1 %.not92, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jy = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !455, !noundef !5 ; 3 uses
  %i.jz = icmp sgt i64 %i.jy, -1
  call void @llvm.assume(i1 %i.jz)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit171, %bb.cc
  %i.ka = invoke { ptr, i64 } @_RNvMs_Cs2vT3jxLudSK_3urlNtB4_3Url8fragment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cf:                                            ; preds = %bb.cd
  %i.kb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !455, !nonnull !5, !noundef !5
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jy
  store i8 63, ptr %i.kc, align 1
  %i.kd = add nuw i64 %i.jy, 1
  store i64 %i.kd, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !455
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.jx)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170:                                        ; preds = %bb.cf
  %i.ke = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !456, !noundef !5 ; 3 uses
  %i.kf = icmp sgt i64 %i.ke, -1
  call void @llvm.assume(i1 %i.kf)
  %.not.i168 = icmp eq i64 %i.jx, 0
  br i1 %.not.i168, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit171, label %bb.cg

bb.cg:                                            ; preds = %.noexc170
  %i.kg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !456, !nonnull !5, !noundef !5
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kh, ptr nonnull readonly align 1 %i.jw, i64 %i.jx, i1 false)
  %.pre.i169 = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !456
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit171

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit171: ; preds = %.noexc170, %bb.cg
  %i.ki = phi i64 [ %.pre.i169, %bb.cg ], [ %i.ke, %.noexc170 ]
  %i.kj = add i64 %i.ki, %i.jx
  store i64 %i.kj, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !456
  br label %bb.ce

bb.ch:                                            ; preds = %bb.ce
  %i.kk = extractvalue { ptr, i64 } %i.ka, 0      ; 2 uses
  %i.kl = extractvalue { ptr, i64 } %i.ka, 1      ; 4 uses
  %.not93 = icmp eq ptr %i.kk, null
  br i1 %.not93, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.km = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !457, !noundef !5 ; 3 uses
  %i.kn = icmp sgt i64 %i.km, -1
  call void @llvm.assume(i1 %i.kn)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit177, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %i.ko = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !457, !nonnull !5, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.km
  store i8 35, ptr %i.kp, align 1
  %i.kq = add nuw i64 %i.km, 1
  store i64 %i.kq, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !457
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.kl)
          to label %.noexc176 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc176:                                        ; preds = %bb.ck
  %i.kr = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !458, !noundef !5 ; 3 uses
  %i.ks = icmp sgt i64 %i.kr, -1
  call void @llvm.assume(i1 %i.ks)
  %.not.i174 = icmp eq i64 %i.kl, 0
  br i1 %.not.i174, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit177, label %bb.cl

bb.cl:                                            ; preds = %.noexc176
  %i.kt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !458, !nonnull !5, !noundef !5
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ku, ptr nonnull readonly align 1 %i.kk, i64 %i.kl, i1 false)
  %.pre.i175 = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !458
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit177

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit177: ; preds = %.noexc176, %bb.cl
  %i.kv = phi i64 [ %.pre.i175, %bb.cl ], [ %i.kr, %.noexc176 ]
  %i.kw = add i64 %i.kv, %i.kl
  store i64 %i.kw, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !458
  br label %bb.cj

bb.cm:                                            ; preds = %bb.dg, %bb.cj, %bb.l
  ret void

bb.cn:                                            ; preds = %.thread469
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit179: ; preds = %bb.cn
  %i.kx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !459, !nonnull !5, !noundef !5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.jc
  store i8 47, ptr %i.ky, align 1
  %i.kz = add nuw i64 %i.jc, 1
  store i64 %i.kz, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !459
  br label %bb.co

bb.co:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit179, %.thread469
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.715.0477)
          to label %.noexc182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc182:                                        ; preds = %bb.co
  %i.la = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !460, !noundef !5 ; 3 uses
  %i.lb = icmp sgt i64 %i.la, -1
  call void @llvm.assume(i1 %i.lb)
  %.not.i180 = icmp eq i64 %.sroa.715.0477, 0
  br i1 %.not.i180, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183, label %bb.cp

bb.cp:                                            ; preds = %.noexc182
  %i.lc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !460, !nonnull !5, !noundef !5
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.la
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr nonnull readonly align 1 %.sroa.013.0478, i64 %.sroa.715.0477, i1 false)
  %.pre.i181 = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !460
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs2vT3jxLudSK_3url.exit183: ; preds = %.noexc182, %bb.cp
  %i.le = phi i64 [ %.pre.i181, %bb.cp ], [ %i.la, %.noexc182 ]
  %i.lf = add i64 %i.le, %.sroa.715.0477
  store i64 %i.lf, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !460
  br label %bb.bm

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit219: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i195, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i209, %bb.cq, %bb.az
  %.sroa.068.0.copyload = load i64, ptr %i.d, align 8
  store i64 0, ptr %i.d, align 8
  %i.lg = trunc nuw i64 %.sroa.068.0.copyload to i1
  br i1 %i.lg, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit255.backedge, label %bb.cx

bb.cq:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.lh = load i8, ptr %.sroa.738.0..sroa_idx, align 1, !range !6, !alias.scope !461, !noundef !5
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE4nextCs2vT3jxLudSK_3url.exit219, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.val.i184 = load ptr, ptr %.sroa.536.0..sroa_idx, align 8, !alias.scope !461, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i185 = load i64, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8, !alias.scope !461, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.lj = load i64, ptr %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, align 8, !alias.scope !463, !noundef !5 ; 5 uses
  %.not.i.i186 = icmp ugt i64 %i.lj, %.val1.i185
  %.promoted.i.i187 = load i64, ptr %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx, align 8, !alias.scope !463 ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %.promoted.i.i187
  %or.cond20.i.i188 = or i1 %.not.i.i186, %i.lk
  br i1 %or.cond20.i.i188, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i195, label %.lr.ph.split.preheader.i.i189

.lr.ph.split.preheader.i.i189:                    ; preds = %bb.cr
  %i.ll = load i8, ptr %.sroa.536.sroa.9.0..sroa.536.0..sroa_idx.sroa_idx, align 8, !alias.scope !463, !noundef !5 ; 2 uses
  %i.lm = zext nneg i8 %i.ll to i64               ; 4 uses
  %i.ln = icmp ult i8 %i.ll, 5
  call void @llvm.assume(i1 %i.ln)
  %i.lo = getelementptr i8, ptr %.sroa.536.sroa.7.0..sroa.536.0..sroa_idx.sroa_idx, i64 %i.lm
  %i.lp = getelementptr i8, ptr %i.lo, i64 -1
  %.pre.i.i190 = load i8, ptr %i.lp, align 1, !alias.scope !463 ; 2 uses
  br label %.lr.ph.split.i.i191

.lr.ph.split.i.i191:                              ; preds = %bb.cv, %.lr.ph.split.preheader.i.i189
  %i.lq = phi i64 [ %i.mf, %bb.cv ], [ %.promoted.i.i187, %.lr.ph.split.preheader.i.i189 ] ; 3 uses
  %i.lr = sub nuw i64 %i.lj, %i.lq                ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.i184, i64 %i.lq ; 2 uses
  %i.lt = icmp samesign ult i64 %i.lr, 16
  br i1 %i.lt, label %.preheader.i.i.i210, label %bb.cs

.preheader.i.i.i210:                              ; preds = %.lr.ph.split.i.i191
  %.not.i.i.i211 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i.i211, label %._crit_edge.i.i.i215, label %.lr.ph.i.i.i212

bb.cs:                                            ; preds = %.lr.ph.split.i.i191
  %i.lu = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i190, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ls, i64 noundef range(i64 0, -9223372036854775808) %i.lr)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i.i215:                             ; preds = %bb.ct, %.lr.ph.i.i.i212, %.preheader.i.i.i210
  %.sroa.01.0.lcssa.i.i.i216 = phi i64 [ 0, %.preheader.i.i.i210 ], [ %i.lr, %bb.ct ], [ %.sroa.01.05.i.i.i213, %.lr.ph.i.i.i212 ]
  %.sroa.0.1.i.i.i217 = phi i64 [ 0, %.preheader.i.i.i210 ], [ 0, %bb.ct ], [ 1, %.lr.ph.i.i.i212 ]
  %i.lv = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i217, 0
end_hunk_1
