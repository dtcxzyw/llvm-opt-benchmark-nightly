Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  store i64 0, ptr %i.av, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 32, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 280 ; 7 uses
  store i64 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 288
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 3 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 144 ; 3 uses
  store i64 0, ptr %.sroa.716.0..sroa_idx, align 8
  %.sroa.716.sroa.4.0..sroa.716.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, i8 0, i64 40, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.716.sroa.4.0..sroa.716.0..sroa_idx.sroa_idx, align 8
  %.sroa.716.sroa.5.0..sroa.716.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 168 ; 2 uses
  %.sroa.817.sroa.4.0..sroa.817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.716.sroa.5.0..sroa.716.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.817.sroa.4.0..sroa.817.0..sroa_idx.sroa_idx, align 8
  %.sroa.817.sroa.5.0..sroa.817.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.817.sroa.5.0..sroa.817.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.sroa.0.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 216 ; 2 uses
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 224 ; 2 uses
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 225 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 232 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 240 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %.sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5 ; 11 uses
  store i64 1, ptr %i.al, align 8
  store i64 %i.ba, ptr %i.am, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 3 uses
  store i64 1, ptr %i.an, align 8
  store i64 %i.bc, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2748
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2748
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.d unwind label %bb.c, !noalias !2749

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.bn, %bb.e ], [ %i.bg, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #35
          to label %.body unwind label %bb.f, !noalias !2749

bb.c:                                             ; preds = %.noexc
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !2747, !noundef !5 ; 2 uses
  %i.bj = load i64, ptr %i.bd, align 8, !range !22, !alias.scope !2747, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !2747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2748
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %bb.g unwind label %bb.e, !noalias !2749

bb.e:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #35
          to label %bb.b unwind label %bb.f, !noalias !2749

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2749
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i, %.loopexit.i.i, %bb.cp, %.body192.i, %bb.ew, %bb.gg, %bb.b, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.h ], [ %.pn.i, %bb.b ], [ %.pn130.i, %.body192.i ], [ %i.yl, %bb.gg ], [ %lpad.loopexit193.i.i, %.loopexit.i.i ], [ %i.tf, %bb.ew ], [ %i.pr, %bb.cp ], [ %lpad.loopexit.split-lp1806, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i ], [ %lpad.loopexit.split-lp1841, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager13PageRenderingEBF_(ptr noalias nofree noundef align 8 dereferenceable(296) %i.al) #35
          to label %bb.hk unwind label %bb.hj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph310.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i, %.backedge.i.i, %.sink.split.sink.split.i, %.backedge768, %.split449.us.i.invoke, %.split473.us.i.invoke, %bb.gi, %bb.z, %bb.l, %bb.a, %bb.n
  %lpad.loopexit.split-lp1841 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.bp = trunc nuw i64 %i.bj to i1
  %.sroa.5.0.i = select i1 %i.bp, i64 %i.bl, i64 undef ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2747, !noundef !5 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bt = load i8, ptr %i.bs, align 8, !range !28, !alias.scope !2747, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.bv = load i8, ptr %i.bu, align 1, !range !28, !alias.scope !2747, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2748
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !range !22, !alias.scope !2747, !noundef !5 ; 3 uses
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2747
  %.sroa.54.0.i = select i1 %i.by, i64 %i.ca, i64 undef ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !2747, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !2747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2748
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line12EditableLineEBF_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.ay)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bj, ptr %i.ay, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.bx, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  store i64 %.sroa.54.0.i, ptr %.sroa.7.0..sroa_idx91, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  store i64 %i.br, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  store i8 %i.bt, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  store i8 %i.bv, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 1
  store i64 %i.bi, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %i.cc, ptr %.sroa.11.0..sroa_idx, align 8
  br label %.body

bb.i:                                             ; preds = %bb.g
  store i64 %i.bj, ptr %i.ay, align 8
  %.sroa.5.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx87, align 8
  store i64 %i.bx, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  store i64 %.sroa.54.0.i, ptr %.sroa.7.0..sroa_idx92, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  store i64 %i.br, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  store i8 %i.bt, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  store i8 %i.bv, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 1
  store i64 %i.bi, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %i.cc, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cf = load i64, ptr %i.ce, align 8            ; 21 uses
  %i.cg = icmp ult i64 %i.cf, 64051194700380388
  %i.ch = icmp eq i64 %i.cf, 0                    ; 3 uses
  %i.ci = load i64, ptr %1, align 8, !range !22   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 6 uses
  %i.cl = trunc nuw i64 %i.ci to i1               ; 4 uses
  %i.cm = icmp eq i64 %i.ck, 0                    ; 2 uses
  %.not2.i.i = icmp ult i64 %i.ck, %i.cf          ; 2 uses
  %i.cn = add nsw i64 %i.cf, -1                   ; 2 uses
  %.sroa.37.0.in = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.37.0 = load i64, ptr %.sroa.37.0.in, align 8
  %.sroa.06.0.in = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.06.0 = load ptr, ptr %.sroa.06.0.in, align 8, !nonnull !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !5 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp ult i64 %i.ba, 16
  %i.ct = icmp ult i64 %i.bc, 4
  %or.cond.i = or i1 %i.cs, %i.ct                 ; 3 uses
  %i.cu = add i64 %i.bc, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 273
  %i.cw = load i8, ptr %i.cv, align 1, !range !28
  %i.cx = trunc nuw i8 %i.cw to i1                ; 3 uses
  %.sroa.07.0.neg.i = sext i1 %i.cx to i64
  %i.cy = add i64 %i.cu, %.sroa.07.0.neg.i        ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.da = load i8, ptr %i.cz, align 8, !range !28
  %i.db = trunc nuw i8 %i.da to i1                ; 4 uses
  %i.dc = lshr i64 %i.cy, 1
  %..i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 4)
  %..i137.i = call i64 @llvm.umin.i64(i64 %..i.i, i64 %i.cy) ; 3 uses
  %.fr.i = freeze { i64, i1 } { i64 poison, i1 false }
  %i.dd = extractvalue { i64, i1 } %.fr.i, 1      ; 2 uses
  %.sroa.6.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.de = getelementptr inbounds nuw i8, ptr %i.ag, <2 x i64> <i64 0, i64 96>
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 275
  %.val.i143.i = load i8, ptr %i.dh, align 1      ; 2 uses
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.584.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.di = sub i8 28, %.val.i143.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0, i64 %.sroa.37.0
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.5.0..sroa_idx.i21.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %.sroa.573.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.676.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.sroa.440.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.541.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %.sroa.573.0..sroa_idx74.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.676.0..sroa_idx77.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.7.0..sroa_idx79.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 7 uses
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 11 uses
  %brmerge.not.i = and i1 %i.ch, %i.cx
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.466.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.571.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.466.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.571.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dv = load i64, ptr %i.du, align 8            ; 5 uses
  %i.dw = icmp ult i64 %i.dv, 2305843009213693952
  %i.dx = icmp eq i64 %i.dv, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val.i = load ptr, ptr %i.dy, align 8, !nonnull !5
  %i.dz = shl nuw nsw i64 %i.dv, 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !5
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ed = load i64, ptr %i.ec, align 8            ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.not129.i = icmp eq i64 %i.ed, 0
  %i.eg = shl nuw nsw i64 %i.ed, 2
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %.sroa.689.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.eh = icmp ult i64 %i.ed, 2305843009213693952
  %i.ei = icmp samesign ult i64 %i.ed, 12
  %i.ej = sub nuw nsw i64 12, %i.ed               ; 2 uses
  %i.ek = add i64 %i.ba, -1                       ; 2 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.not597 = xor i1 %i.cl, true
  %brmerge = select i1 %.not597, i1 true, i1 %i.cm ; 2 uses
  %brmerge599 = select i1 %brmerge, i1 true, i1 %.not2.i.i
  %.mux.mux = select i1 %i.cl, i64 %i.ck, i64 0
  %.mux598.mux = select i1 %brmerge, i64 %i.ci, i64 1
  %spec.select = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select1026 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select1033 = select i1 %i.db, i64 %i.cy, i64 %..i137.i ; 2 uses
  %not.1022 = xor i1 %i.cl, true
  %i.el = select i1 %not.1022, i1 true, i1 %i.cm
  %invariant.op = sub i8 20, %.val.i143.i
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %.backedge768

.backedge768:                                     ; preds = %.backedge768.backedge, %bb.i
  %.sroa.4.0596 = phi i64 [ 6, %bb.i ], [ %i.eo, %.backedge768.backedge ] ; 13 uses
  %i.eo = add i64 %.sroa.4.0596, -1               ; 5 uses
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish6screenNtB4_10ScreenData11clear_lines(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.loopexit278.thread1029, %.loopexit278.thread, %.loopexit278, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.al, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.j:                                             ; preds = %.backedge768
  call void @llvm.assume(i1 %i.cg)
  br i1 %i.ch, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ep = urem i64 %i.cf, %.sroa.4.0596
  %.not.i43 = icmp ne i64 %i.ep, 0
  %i.eq = udiv i64 %i.cf, %.sroa.4.0596
  %..i = zext i1 %.not.i43 to i64
  %i.er = add nuw nsw i64 %i.eq, %..i             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.er, ptr %i.ah, align 8
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2943) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.et = urem i64 %i.cf, %i.er
  %.not.i46 = icmp ne i64 %i.et, 0
  %i.eu = udiv i64 %i.cf, %i.er
  %..i47 = zext i1 %.not.i46 to i64
  %i.ev = add nuw nsw i64 %i.eu, %..i47           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not = icmp ugt i64 %i.ev, %.sroa.4.0596
  br i1 %.not, label %bb.n, label %.thread129, !prof !2750

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2920) #36
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  %.not142 = icmp eq i64 %.sroa.4.0596, 1
  br i1 %.not142, label %.loopexit278.thread1029, label %.backedge768.backedge

.thread129:                                       ; preds = %bb.m
  %i.ew = icmp ne i64 %.sroa.4.0596, 1
  %i.ex = icmp ult i64 %i.ev, %.sroa.4.0596
  %or.cond132 = and i1 %i.ew, %i.ex
  br i1 %or.cond132, label %.backedge768.backedge, label %bb.q

.backedge768.backedge:                            ; preds = %.thread129, %bb.o, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  br label %.backedge768

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %.thread129
  store i64 %.sroa.4.0596, ptr %i.aq, align 8
  store i64 %i.er, ptr %i.ap, align 8
  br i1 %brmerge599, label %.loopexit278.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i = phi i64 [ %i.ey, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.er
  br i1 %.not6.i.i, label %.loopexit278, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ey = sub nuw i64 %.sroa.0.03.i.i, %i.er      ; 3 uses
  %.not.i.i = icmp ult i64 %i.ey, %i.cf
  br i1 %.not.i.i, label %.loopexit278, label %.lr.ph.i.i

.loopexit278:                                     ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.ey, %bb.r ]
  store i64 1, ptr %i.at, align 8
  store i64 %.sroa.7.0.i, ptr %i.au, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

.loopexit278.thread1029:                          ; preds = %bb.o
  store i64 1, ptr %i.aq, align 8
  store i64 0, ptr %i.ap, align 8
  store i64 0, ptr %i.at, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i.thread

.loopexit278.thread:                              ; preds = %bb.q
  store i64 %.mux598.mux, ptr %i.at, align 8
  store i64 %.mux.mux, ptr %i.au, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i: ; preds = %.loopexit278, %.loopexit278.thread
  %spec.select1027 = phi i64 [ %spec.select1026, %.loopexit278.thread ], [ %spec.select, %.loopexit278 ] ; 5 uses
  %i.ez = urem i64 %i.cf, %.sroa.4.0596
  %.not.i.i52 = icmp ne i64 %i.ez, 0
  %i.fa = udiv i64 %i.cf, %.sroa.4.0596
  %..i138.i = zext i1 %.not.i.i52 to i64
  %i.fb = add nuw nsw i64 %i.fa, %..i138.i
  %.sroa.0.0.i207.fr794.i = freeze i64 %i.fb      ; 6 uses
  %i.fc = icmp ule i64 %.sroa.0.0.i207.fr794.i, %spec.select1027
  %or.cond4.not.i = select i1 %i.db, i1 true, i1 %i.fc
  br i1 %or.cond4.not.i, label %.outer.split.i.split.us.preheader.sink.split, label %bb.s

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %i.fd = sub nuw nsw i64 %.sroa.0.0.i207.fr794.i, %spec.select1027 ; 3 uses
  store i64 %i.fd, ptr %i.aw, align 8, !alias.scope !2752
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.t, label %.outer.split.i.split.us.preheader

bb.t:                                             ; preds = %bb.s
  %i.ff = add nuw nsw i64 %spec.select1027, 1
  br label %.outer.split.i.split.us.preheader.sink.split

.outer.split.i.split.us.preheader.sink.split:     ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i, %bb.t
  %.sroa.08.1.i1042.ph = phi i64 [ %i.ff, %bb.t ], [ %spec.select1027, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ]
  store i64 0, ptr %i.aw, align 8, !alias.scope !2752
  br label %.outer.split.i.split.us.preheader

.outer.split.i.split.us.preheader:                ; preds = %.outer.split.i.split.us.preheader.sink.split, %bb.s
  %.sroa.08.1.i1042 = phi i64 [ %spec.select1027, %bb.s ], [ %.sroa.08.1.i1042.ph, %.outer.split.i.split.us.preheader.sink.split ] ; 2 uses
  %i.fg = phi i64 [ %i.fd, %bb.s ], [ 0, %.outer.split.i.split.us.preheader.sink.split ] ; 2 uses
  br label %.outer.split.i.split.us

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i: ; preds = %bb.hi
  %..i199.5.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aca) ; 2 uses
  %i.fh = add nuw i64 %.sroa.022.0.ph461.5.i.lcssa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2753
  store i64 %..i199.i1072, ptr %i.ag, align 8, !noalias !2753
  store i64 %i.zk, ptr %.sroa.6.0..sroa_idx.i54, align 8, !noalias !2753
  store i64 %..i199.1805.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.zn, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.aac, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.3.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.aau, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.4.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.abl, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %..i199.5.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2753
  store i64 %i.fh, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2753
  %i.fi = add i64 %..i199.1805.i, %..i199.i1072   ; 3 uses
  %i.fj = icmp ult i64 %i.fi, %..i199.i1072
  br i1 %i.fj, label %.split473.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i
  %i.fk = add i64 %..i199.2.i, %i.fi              ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.fi
  br i1 %i.fl, label %.split473.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i
  %i.fm = add i64 %..i199.3.i, %i.fk              ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %i.fk
  br i1 %i.fn, label %.split473.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i
  %i.fo = add i64 %..i199.4.i, %i.fm              ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.fm
  br i1 %i.fp, label %.split473.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i
  %i.fq = add i64 %..i199.5.i, %i.fo              ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %i.fo
  br i1 %i.fr, label %.split473.us.i.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i
  %i.fs = icmp slt i64 %i.eo, 0
  br i1 %i.fs, label %.split449.us.i.invoke, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i
  %i.ft = shl nuw i64 %i.eo, 1
  %i.fu = add i64 %i.fq, %i.ft                    ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.fq
  br i1 %i.fv, label %.split473.us.i.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i55.not = icmp uge i64 %i.ba, %i.fu       ; 2 uses
  br i1 %.not.i55.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not114.i = icmp ugt i64 %.sroa.0.0.i207.fr795.i1038105310601070, %.sroa.08.1.i1040105210611066
  br i1 %.not114.i, label %bb.y, label %.thread219.i

bb.x:                                             ; preds = %bb.v
  %.not132.i = icmp eq i64 %.sroa.4.0596, 1
  br i1 %.not132.i, label %bb.gi, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit, !prof !7

bb.y:                                             ; preds = %bb.w
  %i.fw = sub nuw nsw i64 %.sroa.0.0.i207.fr795.i1038105310601070, %.sroa.08.1.i1040105210611066
  %..i141.i = call noundef i64 @llvm.umin.i64(i64 %i.fw, i64 %i.cr) ; 2 uses
  %i.fx = add nuw nsw i64 %..i141.i, %.sroa.08.1.i1040105210611066
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.y, %bb.w
  %.sroa.034.0217224.i = phi i64 [ %..i141.i, %bb.y ], [ 0, %bb.w ] ; 7 uses
  %.sroa.028.0218223.i = phi i64 [ %i.fx, %bb.y ], [ %.sroa.0.0.i207.fr795.i1038105310601070, %bb.w ] ; 6 uses
  %i.fy = sub nuw nsw i64 %.sroa.028.0218223.i, %.sroa.034.0217224.i
  %.not118.i = icmp ugt i64 %i.fy, %.sroa.08.1.i1040105210611066
  br i1 %.not118.i, label %bb.z, label %bb.aa, !prof !7

bb.z:                                             ; preds = %.thread219.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2861, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2862) #37
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.thread219.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  store i64 %.sroa.034.0217224.i, ptr %i.ar, align 8, !alias.scope !2756
  store i64 %.sroa.028.0218223.i, ptr %i.as, align 8, !alias.scope !2756
  br i1 %i.ch, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = urem i64 %i.cf, %.sroa.4.0596
  %.not.i.i.i = icmp ne i64 %i.fz, 0
  %i.ga = udiv i64 %i.cf, %.sroa.4.0596
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.gb = add nuw nsw i64 %i.ga, %..i.i.i         ; 7 uses
  br i1 %i.el, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = icmp eq i64 %i.gb, 0                    ; 3 uses
  %brmerge604 = select i1 %i.gc, i1 true, i1 %.not2.i.i
  %.mux606 = select i1 %i.gc, i64 undef, i64 %i.ck
  %not. = xor i1 %i.gc, true
  br i1 %brmerge604, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.gd, %bb.ad ], [ %i.ck, %bb.ac ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.sroa.0.03.i.i.i.i, %i.gb
  br i1 %.not6.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gd = sub nuw i64 %.sroa.0.03.i.i.i.i, %i.gb  ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.gd, %i.cf
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i, %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i138 = phi i64 [ %i.gb, %bb.ac ], [ %i.gb, %bb.ab ], [ 0, %bb.aa ], [ %i.gb, %.lr.ph.i.i.i.i ], [ %i.gb, %bb.ad ]
  %.sroa.7.0.i.i.i = phi i64 [ %.mux606, %bb.ac ], [ 0, %bb.ab ], [ undef, %bb.aa ], [ %i.gd, %bb.ad ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.i18.i.i = phi i1 [ %not., %bb.ac ], [ %i.cl, %bb.ab ], [ false, %bb.aa ], [ true, %.lr.ph.i.i.i.i ], [ true, %bb.ad ]
  %i.ge = icmp samesign ult i64 %.sroa.034.0217224.i, %.sroa.028.0218223.i
  br i1 %i.ge, label %.lr.ph310.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

.lr.ph310.i.i:                                    ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, %._crit_edge.i.i
  %.sroa.08.0309.i.i = phi i64 [ %i.gf, %._crit_edge.i.i ], [ %.sroa.034.0217224.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ] ; 4 uses
  %i.gf = add nuw nsw i64 %.sroa.08.0309.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2757
  store <2 x ptr> %i.de, ptr %i.m, align 16, !noalias !2757
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2758
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %.lr.ph310.i.i
  %i.gg = load i64, ptr %i.k, align 8, !range !22, !noalias !2758, !noundef !5
  %i.gh = trunc nuw i64 %i.gg to i1
  br i1 %i.gh, label %.lr.ph.i.i58, label %._crit_edge.i.i

.lr.ph.i.i58:                                     ; preds = %.noexc65
  %i.gi = trunc i64 %.sroa.08.0309.i.i to i1      ; 4 uses
  %spec.select.i.i.i.i = select i1 %i.gi, i8 22, i8 18
  %i.gj = select i1 %i.gi, i8 4, i8 0
  %spec.select.i134.i.reass.reass.i.reass.i.reass.reass = add i8 %i.gj, %invariant.op
  %spec.select.i137.i.i.i = select i1 %i.gi, i8 24, i8 20
  %spec.select.i140.i.i.i = select i1 %i.gi, i8 25, i8 21
  %i.gk = sub nuw nsw i64 %.sroa.08.0309.i.i, %.sroa.034.0217224.i
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc72, %.lr.ph.i.i58
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %i.gl = load i64, ptr %i.df, align 8, !noalias !2760, !noundef !5 ; 8 uses
  %i.gm = load i64, ptr %i.dg, align 8, !noalias !2760, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2760
  %i.gn = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !2759, !noalias !2757, !noundef !5 ; 4 uses
  %i.go = icmp eq i64 %i.gn, -1
  br i1 %i.go, label %.split473.us.i.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gp = add nuw i64 %i.gn, 1
  store i64 %i.gp, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !alias.scope !2759, !noalias !2757
  %i.gq = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gn, i64 %.sroa.0.0.i.i.i138) ; 2 uses
  %i.gr = extractvalue { i64, i1 } %i.gq, 1
  br i1 %i.gr, label %.split449.us.i.invoke, label %bb.ag

._crit_edge.i.i:                                  ; preds = %.noexc72, %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2757
  %exitcond.not.i.i = icmp eq i64 %i.gf, %.sroa.028.0218223.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i, label %.lr.ph310.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gs = extractvalue { i64, i1 } %i.gq, 0       ; 2 uses
  %i.gt = add i64 %i.gs, %.sroa.08.0309.i.i       ; 20 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  br i1 %i.gu, label %.split473.us.i.invoke, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not16.i.i = icmp ugt i64 %i.cf, %i.gt
  br i1 %.not16.i.i, label %bb.ai, label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.gt ; 9 uses
  %i.gw = icmp eq i64 %i.gt, %.sroa.7.0.i.i.i
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i18.i.i, i1 %i.gw, i1 false ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  %i.gy = load i16, ptr %i.gx, align 8, !alias.scope !2761, !noundef !5
  %i.gz = and i16 %i.gy, 1024
  %.not17.not.i.i = icmp eq i16 %i.gz, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2757
  call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2763
  store i64 0, ptr %i.j, align 8, !noalias !2763
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.483.0..sroa_idx.i.i.i, align 8, !noalias !2763
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.584.0..sroa_idx.i.i.i, i8 0, i64 17, i1 false), !noalias !2763
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !2764, !noundef !5 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 136
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !2764, !noundef !5 ; 5 uses
  %i.he = icmp ne i64 %i.hd, 0                    ; 2 uses
  %..i19.i.i = select i1 %i.he, i64 4, i64 0
  %i.hf = add i64 %..i19.i.i, %i.hd               ; 4 uses
  %i.hg = icmp ult i64 %i.hf, %i.hd
  br i1 %i.hg, label %.invoke302.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = add i64 %i.hf, %i.hb                    ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.hb
  br i1 %i.hi, label %.invoke302.i.i.i, label %bb.am

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804: ; preds = %.loopexit.i.i.i, %.noexc24.i.i, %bb.bu, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i, %.noexc152.i.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i92.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i112.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i, %bb.ce, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i59.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i, %bb.bz, %bb.cg, %bb.bo, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i100.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i71.i.i, %bb.av, %bb.bc, %bb.bh, %.noexc37.i.i, %bb.bl, %bb.bf, %.noexc77.i.i, %bb.ba, %.noexc118.i.i, %bb.at, %.split.i.i.i.i.invoke.i.i.i, %.invoke298.i.i.i, %.invoke300.i.i.i, %.invoke302.i.i.i, %.invoke.i.i, %.invoke593.i.i
  %lpad.loopexit.split-lp1806 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i unwind label %bb.ak, !noalias !2765

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body.i.i unwind label %bb.al, !noalias !2765

bb.al:                                            ; preds = %bb.ak
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2765
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body unwind label %bb.ck, !noalias !2766

bb.am:                                            ; preds = %bb.aj
  %.not.i20.i.i = icmp ugt i64 %i.hh, %i.gl
  br i1 %.not.i20.i.i, label %bb.an, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.hl = call i64 @llvm.usub.sat.i64(i64 %i.gl, i64 4) ; 2 uses
  %i.hm = udiv i64 %i.hl, 3
  %i.hn = shl nuw i64 %i.hm, 1
  %i.ho = urem i64 %i.hl, 3
  %.cmp.i.i.i = icmp samesign ugt i64 %i.ho, 1
  %i.hp = zext i1 %.cmp.i.i.i to i64
  %i.hq = or disjoint i64 %i.hn, %i.hp
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hq, i64 %i.hb) ; 2 uses
  %i.hr = icmp ugt i64 %i.gl, %i.hf
  %i.hs = sub nuw i64 %i.gl, %i.hf
  %..i133.i.i.i = call i64 @llvm.umax.i64(i64 %i.hs, i64 %..i.i.i.i)
  %.sroa.04.0.i.i.i = select i1 %i.hr, i64 %..i133.i.i.i, i64 %..i.i.i.i ; 2 uses
  %.not114.i.i.i = icmp ugt i64 %.sroa.04.0.i.i.i, %i.gl
  br i1 %.not114.i.i.i, label %.invoke300.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, !prof !7

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.04.1.i.i.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.an ], [ %i.hb, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %.spec.select.i137.i.i.i = select i1 %.sroa.05.0.i.i, i8 28, i8 %spec.select.i137.i.i.i
  %.spec.select.i.i.i.i = select i1 %.sroa.05.0.i.i, i8 26, i8 %spec.select.i.i.i.i ; 7 uses
  %.spec.select.i134.i.reass.i.i = select i1 %.sroa.05.0.i.i, i8 %i.di, i8 %spec.select.i134.i.reass.reass.i.reass.i.reass.reass
  %.spec.select.i140.i.i.i = select i1 %.sroa.05.0.i.i, i8 29, i8 %spec.select.i140.i.i.i
  store i8 %.spec.select.i137.i.i.i, ptr %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !noalias !2763
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !noalias !2763
  store i8 0, ptr %.sroa.0.i.i.i, align 4, !noalias !2763
  store i8 0, ptr %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !noalias !2763
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !2764, !nonnull !5, !noundef !5 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !2764, !noundef !5 ; 4 uses
  %.idx = mul nuw nsw i64 %i.hw, 24
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx
  %i.hy = icmp ult i64 %i.hw, 384307168202282326
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gv, i64 120
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gv, i64 112
  %i.ib = load i64, ptr %i.hz, align 8, !alias.scope !2764 ; 6 uses
  %i.ic = icmp ult i64 %i.ib, 2305843009213693952 ; 3 uses
  %i.id = icmp eq i64 %i.ib, 0
  %brmerge45.i.i.i = or i1 %.sroa.05.0.i.i, %i.id ; 3 uses
  %i.ie = load ptr, ptr %i.ia, align 8, !alias.scope !2764 ; 4 uses
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.ib
  %i.ig = getelementptr i8, ptr %i.if, i64 -4     ; 3 uses
  %.sroa.6129.0.insert.ext.i.i = zext nneg i8 %.spec.select.i.i.i.i to i32
  %.sroa.6129.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.6129.0.insert.ext.i.i, 24 ; 8 uses
  %i.ih = icmp eq i64 %i.hw, 0
  br i1 %i.ih, label %._crit_edge, label %.lr.ph1685

bb.ao:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i
  %i.ii = icmp eq ptr %i.ij, %i.hx
  br i1 %i.ii, label %._crit_edge, label %.lr.ph1685

.lr.ph1685:                                       ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, %bb.ao
  %.sroa.043.0.i.i.i1684 = phi i64 [ %.sroa.013.2.i.i.i.i, %bb.ao ], [ %.sroa.04.1.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i1683 = phi ptr [ %i.ij, %bb.ao ], [ %i.hu, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 4 uses
  %.sroa.72.0.i.i.i1682 = phi i64 [ %i.ik, %bb.ao ], [ 0, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1683, i64 24 ; 2 uses
  %i.ik = add nuw nsw i64 %.sroa.72.0.i.i.i1682, 1 ; 2 uses
  %.not119.i.i.i = icmp eq i64 %.sroa.72.0.i.i.i1682, 0
  br i1 %.not119.i.i.i, label %bb.bn, label %.outer.us.i.i.i

._crit_edge:                                      ; preds = %bb.ao, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i
  %.sroa.043.0.i.i.i.lcssa = phi i64 [ %.sroa.04.1.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ], [ %.sroa.013.2.i.i.i.i, %bb.ao ]
  %i.il = icmp ult i64 %i.gl, %.sroa.04.1.i.i.i
  br i1 %i.il, label %.invoke298.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.im = sub nuw i64 %i.gl, %.sroa.04.1.i.i.i    ; 2 uses
  %i.in = add i64 %.sroa.043.0.i.i.i.lcssa, %i.im ; 9 uses
  %i.io = icmp ult i64 %i.in, %i.im
  br i1 %i.io, label %.invoke302.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ip = icmp ugt i64 %i.in, 4
  %or.cond.i.i.i = and i1 %i.he, %i.ip
  br i1 %or.cond.i.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not116.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not116.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i92.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i92.i.i: ; preds = %bb.ar, %.outer.i84.i.i
  %.sroa.0.0.ph.i89294.i.i = phi i64 [ %i.jf, %.outer.i84.i.i ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.013.0.ph.i88293.i.i = phi i64 [ %i.jg, %.outer.i84.i.i ], [ %i.in, %bb.ar ] ; 6 uses
  %.sroa.036.0.ph.i86292.i.i = phi i64 [ %spec.select49.lcssa.i107.i.i, %.outer.i84.i.i ], [ %i.in, %bb.ar ]
  %.sroa.7.0.ph.i85291.i.i = phi i32 [ %spec.select.lcssa.i106.i.i, %.outer.i84.i.i ], [ 32, %bb.ar ] ; 3 uses
  %i.iq = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i85291.i.i)
          to label %.noexc115.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc115.i.i:                                    ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i92.i.i
  %i.ir = add i64 %.sroa.036.0.ph.i86292.i.i, -1  ; 2 uses
  %spec.select49.peel.i95.i.i = call i64 @llvm.umax.i64(i64 %i.ir, i64 1) ; 2 uses
  %.not8.i.peel.i93.i.i = icmp ne i64 %i.ir, 0    ; 2 uses
  %spec.select.peel.i94.i.i = select i1 %.not8.i.peel.i93.i.i, i32 %.sroa.7.0.ph.i85291.i.i, i32 -1 ; 2 uses
  %i.is = extractvalue { i64, i64 } %i.iq, 0
  %i.it = trunc nuw i64 %i.is to i1
  br i1 %i.it, label %.loopexit.i104.i.i, label %.peel.next.i96.i.i

.peel.next.i96.i.i:                               ; preds = %.noexc115.i.i, %.noexc116.i.i
  %.sroa.7.0.i97.i.i = phi i32 [ %spec.select.i102.i.i, %.noexc116.i.i ], [ %spec.select.peel.i94.i.i, %.noexc115.i.i ] ; 4 uses
  %.sroa.036.0.i98.i.i = phi i64 [ %spec.select49.i103.i.i, %.noexc116.i.i ], [ %spec.select49.peel.i95.i.i, %.noexc115.i.i ]
  %.not.i.i99.i.i = icmp eq i32 %.sroa.7.0.i97.i.i, -1
  br i1 %.not.i.i99.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i113.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i100.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i100.i.i: ; preds = %.peel.next.i96.i.i
  %i.iu = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i97.i.i)
          to label %.noexc116.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc116.i.i:                                    ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i100.i.i
  %i.iv = add i64 %.sroa.036.0.i98.i.i, -1        ; 2 uses
  %spec.select49.i103.i.i = call i64 @llvm.umax.i64(i64 %i.iv, i64 1) ; 2 uses
  %.not8.i.i101.i.i = icmp ne i64 %i.iv, 0        ; 2 uses
  %spec.select.i102.i.i = select i1 %.not8.i.i101.i.i, i32 %.sroa.7.0.i97.i.i, i32 -1 ; 2 uses
  %i.iw = extractvalue { i64, i64 } %i.iu, 0
  %i.ix = trunc nuw i64 %i.iw to i1
  br i1 %i.ix, label %.loopexit.i104.i.i, label %.peel.next.i96.i.i, !llvm.loop !2653

.loopexit.i104.i.i:                               ; preds = %.noexc116.i.i, %.noexc115.i.i
  %.not8.i.lcssa.i105.i.i = phi i1 [ %.not8.i.peel.i93.i.i, %.noexc115.i.i ], [ %.not8.i.i101.i.i, %.noexc116.i.i ]
  %spec.select.lcssa.i106.i.i = phi i32 [ %spec.select.peel.i94.i.i, %.noexc115.i.i ], [ %spec.select.i102.i.i, %.noexc116.i.i ] ; 2 uses
  %spec.select49.lcssa.i107.i.i = phi i64 [ %spec.select49.peel.i95.i.i, %.noexc115.i.i ], [ %spec.select49.i103.i.i, %.noexc116.i.i ]
  %.lcssa.i108.i.i = phi { i64, i64 } [ %i.iq, %.noexc115.i.i ], [ %i.iu, %.noexc116.i.i ]
  %.sroa.7.0.lcssa59.i109.i.i = phi i32 [ %.sroa.7.0.ph.i85291.i.i, %.noexc115.i.i ], [ %.sroa.7.0.i97.i.i, %.noexc116.i.i ]
  %i.iy = extractvalue { i64, i64 } %.lcssa.i108.i.i, 1 ; 3 uses
  %i.iz = icmp ugt i64 %i.iy, %.sroa.013.0.ph.i88293.i.i
  br i1 %i.iz, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i113.i.i, label %bb.as

bb.as:                                            ; preds = %.loopexit.i104.i.i
  %i.ja = icmp eq i64 %i.iy, %.sroa.013.0.ph.i88293.i.i ; 2 uses
  %brmerge.not.i110.i.i = select i1 %i.ja, i1 %.not8.i.lcssa.i105.i.i, i1 false
  br i1 %brmerge.not.i110.i.i, label %bb.at, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i112.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i112.i.i: ; preds = %bb.as
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i109.i.i, i32 noundef %.sroa.6129.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt)
          to label %.noexc117.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.noexc117.i.i:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i112.i.i
  %i.jb = icmp eq i64 %.sroa.0.0.ph.i89294.i.i, -1
  br i1 %i.jb, label %.invoke593.i.i, label %.outer.i84.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6129.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt)
          to label %.noexc118.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.noexc118.i.i:                                    ; preds = %bb.at
  %i.jc = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc119.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc119.i.i:                                    ; preds = %.noexc118.i.i
  %i.jd = extractvalue { i64, i64 } %i.jc, 0
  %i.je = trunc nuw i64 %i.jd to i1
  br i1 %i.je, label %bb.au, label %.invoke.i.i, !prof !8

.outer.i84.i.i:                                   ; preds = %.noexc117.i.i
  %i.jf = add nuw i64 %.sroa.0.0.ph.i89294.i.i, 1
  %i.jg = sub nuw i64 %.sroa.013.0.ph.i88293.i.i, %i.iy ; 2 uses
  %.not.i.peel.i90595.i.i = icmp eq i32 %spec.select.lcssa.i106.i.i, -1
  %or.cond.peel.i91.i.i = select i1 %i.ja, i1 true, i1 %.not.i.peel.i90595.i.i
  br i1 %or.cond.peel.i91.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i113.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i92.i.i

.invoke593.i.i:                                   ; preds = %.noexc117.i.i, %.noexc76.i.i, %.noexc36.i.i, %.noexc22.i.i, %.noexc150.i.i.i, %.noexc146.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.cont594.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.cont594.i.i:                                     ; preds = %.invoke593.i.i
  unreachable

bb.au:                                            ; preds = %.noexc119.i.i
  %i.jh = extractvalue { i64, i64 } %i.jc, 1
  %i.ji = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i88293.i.i, i64 %i.jh)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i113.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i113.i.i: ; preds = %.outer.i84.i.i, %.loopexit.i104.i.i, %.peel.next.i96.i.i, %bb.au
  %.sroa.013.2.i114.i.i = phi i64 [ %i.ji, %bb.au ], [ %.sroa.013.0.ph.i88293.i.i, %.peel.next.i96.i.i ], [ %.sroa.013.0.ph.i88293.i.i, %.loopexit.i104.i.i ], [ %i.jg, %.outer.i84.i.i ]
  %i.jj = icmp ult i64 %i.in, %.sroa.013.2.i114.i.i
  br i1 %i.jj, label %.invoke.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, !prof !2767

.invoke.i.i:                                      ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, %.noexc38.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i, %.noexc78.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i113.i.i, %.noexc119.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, %.noexc153.i.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, %.noexc25.i.i
  %i.jk = phi ptr [ @17, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i ], [ @16, %.noexc25.i.i ], [ @16, %.noexc153.i.i.i ], [ @17, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i ], [ @16, %.noexc78.i.i ], [ @16, %.noexc38.i.i ], [ @16, %.noexc119.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i113.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk) #37
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2763
  store i8 0, ptr %i.h, align 1, !noalias !2763
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !noalias !2763
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !noalias !2763
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !2763
  %i.jl = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gt, ptr noundef nonnull @2882, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2882, i64 2), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.h, i64 noundef %i.in, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2763
  %i.jm = sub nuw i64 %i.in, %i.jl                ; 5 uses
  %i.jn = icmp ult i64 %i.in, %i.jl
  br i1 %i.jn, label %.invoke298.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jo = icmp ugt i64 %i.hd, -3
  br i1 %i.jo, label %.invoke302.i.i.i, label %bb.ay

.invoke302.i.i.i:                                 ; preds = %bb.ax, %bb.ap, %bb.aj, %bb.ai
  %i.jp = phi ptr [ @2881, %bb.ap ], [ @2878, %bb.aj ], [ @2884, %bb.ax ], [ @2877, %bb.ai ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jp) #36
          to label %.cont303.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2765

.cont303.i.i.i:                                   ; preds = %.invoke302.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.jq = add nuw i64 %i.hd, 2
  %i.jr = call i64 @llvm.usub.sat.i64(i64 %i.gl, i64 %i.gm)
  %..i144.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.jq, i64 %i.jr) ; 2 uses
  %.not117.i.not.i.i = icmp ugt i64 %i.jm, %..i144.i.i.i
  br i1 %.not117.i.not.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.preheader.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.thread.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.preheader.i.i: ; preds = %bb.ay
  %i.js = sub nuw i64 %i.jm, %..i144.i.i.i
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.i.i: ; preds = %.outer.i43.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.preheader.i.i
  %.sroa.0.0.ph.i48300.i.i = phi i64 [ %i.ki, %.outer.i43.i.i ], [ 0, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.preheader.i.i ] ; 2 uses
  %.sroa.013.0.ph.i47299.i.i = phi i64 [ %i.kj, %.outer.i43.i.i ], [ %i.jm, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.preheader.i.i ] ; 6 uses
  %.sroa.036.0.ph.i45298.i.i = phi i64 [ %spec.select49.lcssa.i66.i.i, %.outer.i43.i.i ], [ %i.js, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.preheader.i.i ]
  %.sroa.7.0.ph.i44297.i.i = phi i32 [ %spec.select.lcssa.i65.i.i, %.outer.i43.i.i ], [ 32, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.preheader.i.i ] ; 3 uses
  %i.jt = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i44297.i.i)
          to label %.noexc74.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc74.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.i.i
  %i.ju = add i64 %.sroa.036.0.ph.i45298.i.i, -1  ; 2 uses
  %spec.select49.peel.i54.i.i = call i64 @llvm.umax.i64(i64 %i.ju, i64 1) ; 2 uses
  %.not8.i.peel.i52.i.i = icmp ne i64 %i.ju, 0    ; 2 uses
  %spec.select.peel.i53.i.i = select i1 %.not8.i.peel.i52.i.i, i32 %.sroa.7.0.ph.i44297.i.i, i32 -1 ; 2 uses
  %i.jv = extractvalue { i64, i64 } %i.jt, 0
  %i.jw = trunc nuw i64 %i.jv to i1
  br i1 %i.jw, label %.loopexit.i63.i.i, label %.peel.next.i55.i.i

.peel.next.i55.i.i:                               ; preds = %.noexc74.i.i, %.noexc75.i.i
  %.sroa.7.0.i56.i.i = phi i32 [ %spec.select.i61.i.i, %.noexc75.i.i ], [ %spec.select.peel.i53.i.i, %.noexc74.i.i ] ; 4 uses
  %.sroa.036.0.i57.i.i = phi i64 [ %spec.select49.i62.i.i, %.noexc75.i.i ], [ %spec.select49.peel.i54.i.i, %.noexc74.i.i ]
  %.not.i.i58.i.i = icmp eq i32 %.sroa.7.0.i56.i.i, -1
  br i1 %.not.i.i58.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i59.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i59.i.i: ; preds = %.peel.next.i55.i.i
  %i.jx = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i56.i.i)
          to label %.noexc75.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc75.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i59.i.i
  %i.jy = add i64 %.sroa.036.0.i57.i.i, -1        ; 2 uses
  %spec.select49.i62.i.i = call i64 @llvm.umax.i64(i64 %i.jy, i64 1) ; 2 uses
  %.not8.i.i60.i.i = icmp ne i64 %i.jy, 0         ; 2 uses
  %spec.select.i61.i.i = select i1 %.not8.i.i60.i.i, i32 %.sroa.7.0.i56.i.i, i32 -1 ; 2 uses
  %i.jz = extractvalue { i64, i64 } %i.jx, 0
  %i.ka = trunc nuw i64 %i.jz to i1
  br i1 %i.ka, label %.loopexit.i63.i.i, label %.peel.next.i55.i.i, !llvm.loop !2653

.loopexit.i63.i.i:                                ; preds = %.noexc75.i.i, %.noexc74.i.i
  %.not8.i.lcssa.i64.i.i = phi i1 [ %.not8.i.peel.i52.i.i, %.noexc74.i.i ], [ %.not8.i.i60.i.i, %.noexc75.i.i ]
  %spec.select.lcssa.i65.i.i = phi i32 [ %spec.select.peel.i53.i.i, %.noexc74.i.i ], [ %spec.select.i61.i.i, %.noexc75.i.i ] ; 2 uses
  %spec.select49.lcssa.i66.i.i = phi i64 [ %spec.select49.peel.i54.i.i, %.noexc74.i.i ], [ %spec.select49.i62.i.i, %.noexc75.i.i ]
  %.lcssa.i67.i.i = phi { i64, i64 } [ %i.jt, %.noexc74.i.i ], [ %i.jx, %.noexc75.i.i ]
  %.sroa.7.0.lcssa59.i68.i.i = phi i32 [ %.sroa.7.0.ph.i44297.i.i, %.noexc74.i.i ], [ %.sroa.7.0.i56.i.i, %.noexc75.i.i ]
  %i.kb = extractvalue { i64, i64 } %.lcssa.i67.i.i, 1 ; 3 uses
  %i.kc = icmp ugt i64 %i.kb, %.sroa.013.0.ph.i47299.i.i
  br i1 %i.kc, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i, label %bb.az

bb.az:                                            ; preds = %.loopexit.i63.i.i
  %i.kd = icmp eq i64 %i.kb, %.sroa.013.0.ph.i47299.i.i ; 2 uses
  %brmerge.not.i69.i.i = select i1 %i.kd, i1 %.not8.i.lcssa.i64.i.i, i1 false
  br i1 %brmerge.not.i69.i.i, label %bb.ba, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i71.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i71.i.i: ; preds = %bb.az
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i68.i.i, i32 noundef %.sroa.6129.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt)
          to label %.noexc76.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.noexc76.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i71.i.i
  %i.ke = icmp eq i64 %.sroa.0.0.ph.i48300.i.i, -1
  br i1 %i.ke, label %.invoke593.i.i, label %.outer.i43.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6129.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.noexc77.i.i:                                     ; preds = %bb.ba
  %i.kf = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc78.i.i:                                     ; preds = %.noexc77.i.i
  %i.kg = extractvalue { i64, i64 } %i.kf, 0
  %i.kh = trunc nuw i64 %i.kg to i1
  br i1 %i.kh, label %bb.bb, label %.invoke.i.i, !prof !8

.outer.i43.i.i:                                   ; preds = %.noexc76.i.i
  %i.ki = add nuw i64 %.sroa.0.0.ph.i48300.i.i, 1
  %i.kj = sub nuw i64 %.sroa.013.0.ph.i47299.i.i, %i.kb ; 2 uses
  %.not.i.peel.i49596.i.i = icmp eq i32 %spec.select.lcssa.i65.i.i, -1
  %or.cond.peel.i50.i.i = select i1 %i.kd, i1 true, i1 %.not.i.peel.i49596.i.i
  br i1 %or.cond.peel.i50.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i51.i.i

bb.bb:                                            ; preds = %.noexc78.i.i
  %i.kk = extractvalue { i64, i64 } %i.kf, 1
  %i.kl = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i47299.i.i, i64 %i.kk)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i: ; preds = %.outer.i43.i.i, %.loopexit.i63.i.i, %.peel.next.i55.i.i, %bb.bb
  %.sroa.013.2.i73.i.i = phi i64 [ %i.kl, %bb.bb ], [ %.sroa.013.0.ph.i47299.i.i, %.peel.next.i55.i.i ], [ %.sroa.013.0.ph.i47299.i.i, %.loopexit.i63.i.i ], [ %i.kj, %.outer.i43.i.i ] ; 2 uses
  %i.km = icmp ult i64 %i.jm, %.sroa.013.2.i73.i.i
  br i1 %i.km, label %.invoke.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.thread.i.i, !prof !2768

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.thread.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i, %bb.ay
  %.sroa.013.2.i73484.i.i = phi i64 [ %.sroa.013.2.i73.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.i.i ], [ %i.jm, %bb.ay ] ; 4 uses
  %i.kn = icmp ugt i64 %.sroa.013.2.i73484.i.i, 1
  br i1 %i.kn, label %bb.bc, label %.invoke300.i.i.i, !prof !8

.invoke300.i.i.i:                                 ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.thread.i.i, %bb.an
  %i.ko = phi ptr [ @2879, %bb.an ], [ @2885, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.thread.i.i ]
  %i.kp = phi i64 [ 41, %bb.an ], [ 37, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.thread.i.i ]
  %i.kq = phi ptr [ @2880, %bb.an ], [ @2886, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.thread.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ko, i64 noundef %i.kp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kq) #36
          to label %.cont301.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2765

.cont301.i.i.i:                                   ; preds = %.invoke300.i.i.i
  unreachable

bb.bc:                                            ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i72.thread.i.i
  %.124.i.i.i = select i1 %.sroa.05.0.i.i, i8 28, i8 20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2763
  store i8 0, ptr %i.g, align 1, !noalias !2763
  store i8 0, ptr %.sroa.573.0..sroa_idx.i.i.i, align 1, !noalias !2763
  store i8 %.124.i.i.i, ptr %.sroa.676.0..sroa_idx.i.i.i, align 1, !noalias !2763
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !2763
  %i.kr = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gt, ptr noundef nonnull @2887, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2887, i64 1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.g, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804 ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2763
  %i.ks = sub nuw i64 %.sroa.013.2.i73484.i.i, %i.kr ; 3 uses
  %i.kt = icmp ult i64 %.sroa.013.2.i73484.i.i, %i.kr
  br i1 %i.kt, label %.invoke298.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !2764, !nonnull !5, !noundef !5 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.kx = load i64, ptr %i.kw, align 8, !alias.scope !2764, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2763
  store i8 0, ptr %i.f, align 1, !noalias !2763
  store i8 0, ptr %.sroa.440.0..sroa_idx.i.i.i, align 1, !noalias !2763
  store i8 %.spec.select.i140.i.i.i, ptr %.sroa.541.0..sroa_idx.i.i.i, align 1, !noalias !2763
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.642.0..sroa_idx.i.i.i, align 1, !noalias !2763
  %i.ky = icmp eq i64 %.sroa.013.2.i73484.i.i, %i.kr
  br i1 %i.ky, label %.invoke298.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kz = add i64 %i.ks, -1
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.kx
  %i.lb = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt, ptr noundef nonnull %i.kv, ptr noundef nonnull %i.la, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.f, i64 noundef %i.kz, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2765 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2763
  %i.lc = sub nuw i64 %i.ks, %i.lb                ; 3 uses
  %i.ld = icmp ult i64 %i.ks, %i.lb
  br i1 %i.ld, label %.invoke298.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2763
  store i8 0, ptr %i.e, align 1, !noalias !2763
  store i8 0, ptr %.sroa.573.0..sroa_idx74.i.i.i, align 1, !noalias !2763
  store i8 %.124.i.i.i, ptr %.sroa.676.0..sroa_idx77.i.i.i, align 1, !noalias !2763
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.7.0..sroa_idx79.i.i.i, align 1, !noalias !2763
  %i.le = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gt, ptr noundef nonnull @2891, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2891, i64 1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.e, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804 ; 3 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2763
  %i.lf = icmp ult i64 %i.lc, %i.le
  br i1 %i.lf, label %.invoke298.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lg = sub nuw i64 %i.lc, %i.le                ; 3 uses
  %.not118.i.i.i = icmp eq i64 %i.lc, %i.le
  br i1 %.not118.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i: ; preds = %bb.bj, %.outer.i.i.i
  %.sroa.0.0.ph.i306.i.i = phi i64 [ %i.lw, %.outer.i.i.i ], [ 0, %bb.bj ] ; 2 uses
  %.sroa.013.0.ph.i305.i.i = phi i64 [ %i.lx, %.outer.i.i.i ], [ %i.lg, %bb.bj ] ; 6 uses
  %.sroa.036.0.ph.i304.i.i = phi i64 [ %spec.select49.lcssa.i.i.i, %.outer.i.i.i ], [ %i.lg, %bb.bj ]
  %.sroa.7.0.ph.i303.i.i = phi i32 [ %spec.select.lcssa.i.i.i, %.outer.i.i.i ], [ 32, %bb.bj ] ; 3 uses
  %i.lh = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i303.i.i)
          to label %.noexc34.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc34.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i
  %i.li = add i64 %.sroa.036.0.ph.i304.i.i, -1    ; 2 uses
  %spec.select49.peel.i.i.i = call i64 @llvm.umax.i64(i64 %i.li, i64 1) ; 2 uses
  %.not8.i.peel.i.i.i = icmp ne i64 %i.li, 0      ; 2 uses
  %spec.select.peel.i.i.i = select i1 %.not8.i.peel.i.i.i, i32 %.sroa.7.0.ph.i303.i.i, i32 -1 ; 2 uses
  %i.lj = extractvalue { i64, i64 } %i.lh, 0
  %i.lk = trunc nuw i64 %i.lj to i1
  br i1 %i.lk, label %.loopexit.i32.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %.noexc34.i.i, %.noexc35.i.i
  %.sroa.7.0.i30.i.i = phi i32 [ %spec.select.i.i.i, %.noexc35.i.i ], [ %spec.select.peel.i.i.i, %.noexc34.i.i ] ; 4 uses
  %.sroa.036.0.i.i.i = phi i64 [ %spec.select49.i.i.i, %.noexc35.i.i ], [ %spec.select49.peel.i.i.i, %.noexc34.i.i ]
  %.not.i.i31.i.i = icmp eq i32 %.sroa.7.0.i30.i.i, -1
  br i1 %.not.i.i31.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.peel.next.i.i.i
  %i.ll = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i30.i.i)
          to label %.noexc35.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc35.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i
  %i.lm = add i64 %.sroa.036.0.i.i.i, -1          ; 2 uses
  %spec.select49.i.i.i = call i64 @llvm.umax.i64(i64 %i.lm, i64 1) ; 2 uses
  %.not8.i.i.i.i = icmp ne i64 %i.lm, 0           ; 2 uses
  %spec.select.i.i.i = select i1 %.not8.i.i.i.i, i32 %.sroa.7.0.i30.i.i, i32 -1 ; 2 uses
  %i.ln = extractvalue { i64, i64 } %i.ll, 0
  %i.lo = trunc nuw i64 %i.ln to i1
  br i1 %i.lo, label %.loopexit.i32.i.i, label %.peel.next.i.i.i, !llvm.loop !2653

.loopexit.i32.i.i:                                ; preds = %.noexc35.i.i, %.noexc34.i.i
  %.not8.i.lcssa.i.i.i = phi i1 [ %.not8.i.peel.i.i.i, %.noexc34.i.i ], [ %.not8.i.i.i.i, %.noexc35.i.i ]
  %spec.select.lcssa.i.i.i = phi i32 [ %spec.select.peel.i.i.i, %.noexc34.i.i ], [ %spec.select.i.i.i, %.noexc35.i.i ] ; 2 uses
  %spec.select49.lcssa.i.i.i = phi i64 [ %spec.select49.peel.i.i.i, %.noexc34.i.i ], [ %spec.select49.i.i.i, %.noexc35.i.i ]
  %.lcssa.i.i.i = phi { i64, i64 } [ %i.lh, %.noexc34.i.i ], [ %i.ll, %.noexc35.i.i ]
  %.sroa.7.0.lcssa59.i.i.i = phi i32 [ %.sroa.7.0.ph.i303.i.i, %.noexc34.i.i ], [ %.sroa.7.0.i30.i.i, %.noexc35.i.i ]
  %i.lp = extractvalue { i64, i64 } %.lcssa.i.i.i, 1 ; 3 uses
  %i.lq = icmp ugt i64 %i.lp, %.sroa.013.0.ph.i305.i.i
  br i1 %i.lq, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i32.i.i
  %i.lr = icmp eq i64 %i.lp, %.sroa.013.0.ph.i305.i.i ; 2 uses
  %brmerge.not.i.i.i = select i1 %i.lr, i1 %.not8.i.lcssa.i.i.i, i1 false
  br i1 %brmerge.not.i.i.i, label %bb.bl, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.bk
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i.i.i, i32 noundef %.sroa.6129.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt)
          to label %.noexc36.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.noexc36.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i
  %i.ls = icmp eq i64 %.sroa.0.0.ph.i306.i.i, -1
  br i1 %i.ls, label %.invoke593.i.i, label %.outer.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6129.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt)
          to label %.noexc37.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.noexc37.i.i:                                     ; preds = %bb.bl
  %i.lt = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc38.i.i:                                     ; preds = %.noexc37.i.i
  %i.lu = extractvalue { i64, i64 } %i.lt, 0
  %i.lv = trunc nuw i64 %i.lu to i1
  br i1 %i.lv, label %bb.bm, label %.invoke.i.i, !prof !8

.outer.i.i.i:                                     ; preds = %.noexc36.i.i
  %i.lw = add nuw i64 %.sroa.0.0.ph.i306.i.i, 1
  %i.lx = sub nuw i64 %.sroa.013.0.ph.i305.i.i, %i.lp ; 2 uses
  %.not.i.peel.i597.i.i = icmp eq i32 %spec.select.lcssa.i.i.i, -1
  %or.cond.peel.i.i.i = select i1 %i.lr, i1 true, i1 %.not.i.peel.i597.i.i
  br i1 %or.cond.peel.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i

bb.bm:                                            ; preds = %.noexc38.i.i
  %i.ly = extractvalue { i64, i64 } %i.lt, 1
  %i.lz = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i305.i.i, i64 %i.ly)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i: ; preds = %.outer.i.i.i, %.loopexit.i32.i.i, %.peel.next.i.i.i, %bb.bm
  %.sroa.013.2.i33.i.i = phi i64 [ %i.lz, %bb.bm ], [ %.sroa.013.0.ph.i305.i.i, %.peel.next.i.i.i ], [ %.sroa.013.0.ph.i305.i.i, %.loopexit.i32.i.i ], [ %i.lx, %.outer.i.i.i ]
  %i.ma = icmp ult i64 %i.lg, %.sroa.013.2.i33.i.i
  br i1 %i.ma, label %.invoke.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, !prof !2768

bb.bn:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, %.lr.ph1685
  %.sroa.043.1.i.i.i = phi i64 [ %.sroa.043.0.i.i.i1684, %.lr.ph1685 ], [ %.sroa.013.2.i.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i ] ; 4 uses
  br i1 %.not17.not.i.i, label %bb.bu, label %bb.bx

.outer.us.i.i.i:                                  ; preds = %.lr.ph1685, %bb.br
  %.sroa.035.0.ph.us.i.idx.i.i = phi i64 [ %.sroa.035.0.us.i.add.i.i, %bb.br ], [ 0, %.lr.ph1685 ]
  %.sroa.013.0.ph.us.i.i.i = phi i64 [ %i.mj, %bb.br ], [ %.sroa.043.0.i.i.i1684, %.lr.ph1685 ] ; 6 uses
  %.sroa.0.0.ph.us.i.i.i = phi i64 [ %i.mi, %bb.br ], [ 0, %.lr.ph1685 ] ; 2 uses
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bs
  %i.mb = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 32)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bo
  %.sroa.035.0.us.i.add.i.i = add nuw nsw i64 %.sroa.035.0.us.i.idx.i.i, 4 ; 2 uses
  %i.mc = extractvalue { i64, i64 } %i.mb, 0
  %i.md = trunc nuw i64 %i.mc to i1
  br i1 %i.md, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.noexc.i.i
  %i.me = extractvalue { i64, i64 } %i.mb, 1      ; 3 uses
  %i.mf = icmp ugt i64 %i.me, %.sroa.013.0.ph.us.i.i.i
  br i1 %i.mf, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mg = icmp eq i64 %i.me, %.sroa.013.0.ph.us.i.i.i
  br i1 %i.mg, label %.loopexit.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i: ; preds = %bb.bq
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 32, i32 noundef %.sroa.6129.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt)
          to label %.noexc22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.noexc22.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i
  %i.mh = icmp eq i64 %.sroa.0.0.ph.us.i.i.i, -1
  br i1 %i.mh, label %.invoke593.i.i, label %bb.br

bb.br:                                            ; preds = %.noexc22.i.i
  %i.mi = add nuw i64 %.sroa.0.0.ph.us.i.i.i, 1
  %i.mj = sub nuw i64 %.sroa.013.0.ph.us.i.i.i, %i.me
  br label %.outer.us.i.i.i

bb.bs:                                            ; preds = %.noexc.i.i, %.outer.us.i.i.i
  %.sroa.035.0.us.i.idx.i.i = phi i64 [ %.sroa.035.0.us.i.add.i.i, %.noexc.i.i ], [ %.sroa.035.0.ph.us.i.idx.i.i, %.outer.us.i.i.i ] ; 2 uses
  %i.mk = icmp eq i64 %.sroa.035.0.us.i.idx.i.i, 8
  br i1 %i.mk, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, label %bb.bo

.loopexit.i.i.i:                                  ; preds = %bb.bq
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6129.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt)
          to label %.noexc24.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766

.noexc24.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ml = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2766 ; 2 uses

.noexc25.i.i:                                     ; preds = %.noexc24.i.i
  %i.mm = extractvalue { i64, i64 } %i.ml, 0
  %i.mn = trunc nuw i64 %i.mm to i1
  br i1 %i.mn, label %bb.bt, label %.invoke.i.i, !prof !8

bb.bt:                                            ; preds = %.noexc25.i.i
  %i.mo = extractvalue { i64, i64 } %i.ml, 1
  %i.mp = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.us.i.i.i, i64 %i.mo)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i: ; preds = %bb.bp, %bb.bs, %bb.bt
  %.sroa.013.2.i.i.i = phi i64 [ %i.mp, %bb.bt ], [ %.sroa.013.0.ph.us.i.i.i, %bb.bs ], [ %.sroa.013.0.ph.us.i.i.i, %bb.bp ] ; 2 uses
  %i.mq = icmp ult i64 %.sroa.043.0.i.i.i1684, %.sroa.013.2.i.i.i
  br i1 %i.mq, label %.invoke.i.i, label %bb.bn, !prof !7

bb.bu:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2763
  store i8 0, ptr %i.i, align 1, !noalias !2763
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !2763
  store i8 %.spec.select.i134.i.reass.i.i, ptr %.sroa.5.0..sroa_idx.i21.i.i, align 1, !noalias !2763
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 1, !noalias !2763
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1683, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !noalias !2765, !noundef !5 ; 2 uses
  %i.mt = icmp ult i64 %i.ms, 2305843009213693952
  call void @llvm.assume(i1 %i.mt)
  %i.mu = icmp ne i64 %i.ms, 0
  %i.mv = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gt, ptr noundef nonnull readonly align 4 %.sroa.06.0, ptr noundef nonnull readonly %i.dj, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.i, i64 noundef %.sroa.043.1.i.i.i, i1 noundef zeroext %i.mu, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2769 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2763
  %i.mw = icmp ult i64 %.sroa.043.1.i.i.i, %i.mv
  br i1 %i.mw, label %.invoke298.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mx = sub nuw i64 %.sroa.043.1.i.i.i, %i.mv
  br label %bb.bx

.invoke298.i.i.i:                                 ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bd, %bb.aw, %._crit_edge, %bb.bv
  %i.my = phi ptr [ @2893, %bb.bv ], [ @2881, %._crit_edge ], [ @2888, %bb.bd ], [ @2889, %bb.be ], [ @2890, %bb.bg ], [ @2892, %bb.bi ], [ @2883, %bb.aw ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.my) #36
          to label %.cont299.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2765

.cont299.i.i.i:                                   ; preds = %.invoke298.i.i.i
  unreachable

bb.bx:                                            ; preds = %bb.bw, %bb.bn
  %.sroa.043.2.i.i.i = phi i64 [ %i.mx, %bb.bw ], [ %.sroa.043.1.i.i.i, %bb.bn ] ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1683, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !2765, !nonnull !5, !noundef !5 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1683, i64 16
  %i.nc = load i64, ptr %i.nb, align 8, !noalias !2765, !noundef !5 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.nc, 2
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 %.idx.i.i.i ; 3 uses
  call void @llvm.assume(i1 %i.hy)
  %i.ne = icmp samesign ult i64 %i.ik, %i.hw
  br i1 %i.ne, label %.outer.us.i.i.i.i, label %.outer.i.preheader.i.i.i

.outer.i.preheader.i.i.i:                         ; preds = %bb.bx
  %i.nf = icmp eq i64 %i.nc, 0
  br i1 %i.nf, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %.lr.ph.i.i.i

.outer.us.i.i.i.i:                                ; preds = %bb.bx, %bb.cc
  %.sroa.0.045.ph.us.i.i.i.i = phi ptr [ %i.nm, %bb.cc ], [ %i.na, %bb.bx ]
  %.sroa.013.0.ph.us.i.i.i.i = phi i64 [ %i.nw, %bb.cc ], [ %.sroa.043.2.i.i.i, %bb.bx ] ; 6 uses
  %.sroa.0.0.ph.us.i.i.i.i = phi i64 [ %i.nv, %bb.cc ], [ 0, %bb.bx ] ; 5 uses
  br label %bb.cd

bb.by:                                            ; preds = %bb.cd
  %i.ng = load i32, ptr %.sroa.0.045.us.i.i.i.i, align 4, !noalias !2770, !noundef !5 ; 5 uses
  %i.nh = xor i32 %i.ng, 55296
  %i.ni = add i32 %i.nh, -1114112
  %i.nj = icmp ult i32 %i.ni, -1112064
  br i1 %i.nj, label %.split.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nk = icmp ult i32 %i.ng, 1114112
  call void @llvm.assume(i1 %i.nk)
  %i.nl = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %i.ng)
          to label %.noexc145.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexi1804, !noalias !2765 ; 2 uses

.noexc145.i.i.i:                                  ; preds = %bb.bz
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0.045.us.i.i.i.i, i64 4 ; 2 uses
  %i.nn = extractvalue { i64, i64 } %i.nl, 0
  %i.no = trunc nuw i64 %i.nn to i1
  br i1 %i.no, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %.noexc145.i.i.i
  %i.np = extractvalue { i64, i64 } %i.nl, 1      ; 3 uses
  %i.nq = icmp ugt i64 %i.np, %.sroa.013.0.ph.us.i.i.i.i
  br i1 %i.nq, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nr = icmp eq i64 %i.np, %.sroa.013.0.ph.us.i.i.i.i
  br i1 %i.nr, label %.loopexit.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i: ; preds = %bb.cb
  call void @llvm.assume(i1 %i.ic)
  br i1 %brmerge45.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i, label %._crit_edge.i.us.i.i.i.i

._crit_edge.i.us.i.i.i.i:                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i
  %i.ns = icmp ult i64 %.sroa.0.0.ph.us.i.i.i.i, %i.ib
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.sroa.0.0.ph.us.i.i.i.i
  %.sroa.03.0.i.us.i.i.i.i = select i1 %i.ns, ptr %i.nt, ptr null ; 2 uses
  %.not9.i.us.i.i.i.i = icmp eq ptr %.sroa.03.0.i.us.i.i.i.i, null
end_hunk_0
