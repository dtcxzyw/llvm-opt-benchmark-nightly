Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2945
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2945
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.d unwind label %bb.c, !noalias !2946

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.bn, %bb.e ], [ %i.bg, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #35
          to label %.body unwind label %bb.f, !noalias !2946

bb.c:                                             ; preds = %.noexc
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  %i.bj = load i64, ptr %i.bd, align 8, !range !22, !alias.scope !2944, !noalias !2946, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !2944, !noalias !2946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2945
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %bb.g unwind label %bb.e, !noalias !2946

bb.e:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #35
          to label %bb.b unwind label %bb.f, !noalias !2946

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2946
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i, %.loopexit.i.i, %bb.cp, %.body192.i, %bb.ew, %bb.gg, %bb.b, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.h ], [ %.pn.i, %bb.b ], [ %.pn130.i, %.body192.i ], [ %i.yi, %bb.gg ], [ %lpad.loopexit186.i.i, %.loopexit.i.i ], [ %i.tc, %bb.ew ], [ %i.pq, %bb.cp ], [ %lpad.phi.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i ], [ %lpad.loopexit160, %.loopexit ], [ %lpad.loopexit169, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager13PageRenderingEBF_(ptr noalias nofree noundef align 8 dereferenceable(296) %i.al) #35
          to label %bb.hl unwind label %bb.hk

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i, %.backedge.i.i
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph303.i.i
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.backedge524, %.sink.split.sink.split.i
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke992, %.invoke, %bb.n, %bb.a, %bb.l, %bb.z, %bb.gi
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.bp = trunc nuw i64 %i.bj to i1
  %.sroa.5.0.i = select i1 %i.bp, i64 %i.bl, i64 undef ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bt = load i8, ptr %i.bs, align 8, !range !28, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.bv = load i8, ptr %i.bu, align 1, !range !28, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !2944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2945
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !range !22, !alias.scope !2944, !noalias !2946, !noundef !5 ; 3 uses
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2944, !noalias !2946
  %.sroa.54.0.i = select i1 %i.by, i64 %i.ca, i64 undef ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !2944, !noalias !2946, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !2944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !2944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2945
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
  %i.ck = load i64, ptr %i.cj, align 8            ; 7 uses
  %i.cl = trunc nuw i64 %i.ci to i1               ; 4 uses
  %i.cm = icmp eq i64 %i.ck, 0
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
  %.fr452.i = freeze { i64, i1 } zeroinitializer  ; 2 uses
  %2 = extractvalue { i64, i1 } %.fr452.i, 1
  %3 = extractvalue { i64, i1 } %.fr452.i, 0      ; 2 uses
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
  %i.de = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.df = icmp ne i64 %i.ck, 0
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 275
  %.val.i143.i = load i8, ptr %i.di, align 1      ; 2 uses
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.584.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dj = sub i8 28, %.val.i143.i
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0, i64 %.sroa.37.0
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
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.466.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.571.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.466.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.571.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dw = load i64, ptr %i.dv, align 8            ; 5 uses
  %i.dx = icmp ult i64 %i.dw, 2305843009213693952
  %i.dy = icmp eq i64 %i.dw, 0
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val.i = load ptr, ptr %i.dz, align 8, !nonnull !5
  %i.ea = shl nuw nsw i64 %i.dw, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !5
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ee = load i64, ptr %i.ed, align 8            ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.not129.i = icmp eq i64 %i.ee, 0
  %i.eh = shl nuw nsw i64 %i.ee, 2
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %.sroa.689.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.ei = icmp ult i64 %i.ee, 2305843009213693952
  %i.ej = icmp samesign ult i64 %i.ee, 12
  %i.ek = sub nuw nsw i64 12, %i.ee               ; 2 uses
  %i.el = add i64 %i.ba, -1                       ; 2 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.not482 = xor i1 %i.cl, true
  %brmerge = select i1 %.not482, i1 true, i1 %i.cm ; 2 uses
  %brmerge484 = select i1 %brmerge, i1 true, i1 %.not2.i.i
  %.mux.mux = select i1 %i.cl, i64 %i.ck, i64 0
  %.mux483.mux = select i1 %brmerge, i64 %i.ci, i64 1
  %spec.select = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select777 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select784 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %brmerge486.not = select i1 %i.cl, i1 %i.df, i1 false
  %invariant.op = sub i8 20, %.val.i143.i
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %.backedge524

.backedge524:                                     ; preds = %.backedge524.backedge, %bb.i
  %.sroa.4.0481 = phi i64 [ 6, %bb.i ], [ %i.eo, %.backedge524.backedge ] ; 13 uses
  %i.eo = add i64 %.sroa.4.0481, -1               ; 5 uses
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish6screenNtB4_10ScreenData11clear_lines(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.thread:                                          ; preds = %.loopexit177.thread780, %.loopexit177.thread, %.loopexit177, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.al, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.j:                                             ; preds = %.backedge524
  call void @llvm.assume(i1 %i.cg)
  br i1 %i.ch, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ep = urem i64 %i.cf, %.sroa.4.0481
  %.not.i43 = icmp ne i64 %i.ep, 0
  %i.eq = udiv i64 %i.cf, %.sroa.4.0481
  %..i = zext i1 %.not.i43 to i64
  %i.er = add nuw nsw i64 %i.eq, %..i             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.er, ptr %i.ah, align 8
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2943) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.et = urem i64 %i.cf, %i.er
  %.not.i46 = icmp ne i64 %i.et, 0
  %i.eu = udiv i64 %i.cf, %i.er
  %..i47 = zext i1 %.not.i46 to i64
  %i.ev = add nuw nsw i64 %i.eu, %..i47           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not = icmp ugt i64 %i.ev, %.sroa.4.0481
  br i1 %.not, label %bb.n, label %.thread129, !prof !2947

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2920) #36
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  %.not142 = icmp eq i64 %.sroa.4.0481, 1
  br i1 %.not142, label %.loopexit177.thread780, label %.backedge524.backedge

.thread129:                                       ; preds = %bb.m
  %i.ew = icmp ne i64 %.sroa.4.0481, 1
  %i.ex = icmp ult i64 %i.ev, %.sroa.4.0481
  %or.cond132 = and i1 %i.ew, %i.ex
  br i1 %or.cond132, label %.backedge524.backedge, label %bb.q

.backedge524.backedge:                            ; preds = %.thread129, %bb.o, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  br label %.backedge524

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %.thread129
  store i64 %.sroa.4.0481, ptr %i.aq, align 8
  store i64 %i.er, ptr %i.ap, align 8
  br i1 %brmerge484, label %.loopexit177.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i = phi i64 [ %i.ey, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.er
  br i1 %.not6.i.i, label %.loopexit177, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ey = sub nuw i64 %.sroa.0.03.i.i, %i.er      ; 3 uses
  %.not.i.i = icmp ult i64 %i.ey, %i.cf
  br i1 %.not.i.i, label %.loopexit177, label %.lr.ph.i.i

.loopexit177:                                     ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.ey, %bb.r ]
  store i64 1, ptr %i.at, align 8
  store i64 %.sroa.7.0.i, ptr %i.au, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

.loopexit177.thread780:                           ; preds = %bb.o
  store i64 1, ptr %i.aq, align 8
  store i64 0, ptr %i.ap, align 8
  store i64 0, ptr %i.at, align 8
  br i1 %or.cond.i, label %.thread, label %.thread.i

.loopexit177.thread:                              ; preds = %bb.q
  store i64 %.mux483.mux, ptr %i.at, align 8
  store i64 %.mux.mux, ptr %i.au, align 8
  br i1 %or.cond.i, label %.thread, label %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i

_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i: ; preds = %.loopexit177, %.loopexit177.thread
  %spec.select778 = phi i64 [ %spec.select777, %.loopexit177.thread ], [ %spec.select, %.loopexit177 ] ; 5 uses
  %i.ez = urem i64 %i.cf, %.sroa.4.0481
  %.not.i.i52 = icmp ne i64 %i.ez, 0
  %i.fa = udiv i64 %i.cf, %.sroa.4.0481
  %..i138.i = zext i1 %.not.i.i52 to i64
  %i.fb = add nuw nsw i64 %i.fa, %..i138.i        ; 5 uses
  %i.fc = icmp ule i64 %i.fb, %spec.select778
  %or.cond4.not.i = select i1 %i.db, i1 true, i1 %i.fc
  br i1 %or.cond4.not.i, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %.loopexit177.thread780, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %spec.select779 = phi i64 [ %spec.select778, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ], [ %spec.select784, %.loopexit177.thread780 ]
  %.sroa.0.0.i208.i = phi i64 [ %i.fb, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ], [ 0, %.loopexit177.thread780 ]
  store i64 0, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  %.sroa.0.0.i207.fr678.i = freeze i64 %.sroa.0.0.i208.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %4 = sub nuw nsw i64 %i.fb, %spec.select778     ; 3 uses
  store i64 %4, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  %5 = icmp eq i64 %4, 1
  br i1 %5, label %bb.t, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

bb.t:                                             ; preds = %bb.s
  %6 = add nuw nsw i64 %spec.select778, 1
  store i64 0, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i: ; preds = %bb.t, %bb.s, %.thread.i
  %.sroa.0.0.i207.fr679.i = phi i64 [ %i.fb, %bb.t ], [ %i.fb, %bb.s ], [ %.sroa.0.0.i207.fr678.i, %.thread.i ] ; 38 uses
  %7 = phi i64 [ 0, %bb.t ], [ %4, %bb.s ], [ 0, %.thread.i ]
  %.sroa.08.1.i = phi i64 [ %6, %bb.t ], [ %spec.select778, %bb.s ], [ %spec.select779, %.thread.i ] ; 4 uses
  %.not.i58 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0 ; 2 uses
  br i1 %2, label %.outer.split.us.i, label %.outer.split.i.preheader

.outer.split.i.preheader:                         ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i
  br i1 %.not.i58, label %.split.i, label %.lr.ph

.invoke:                                          ; preds = %bb.gj, %bb.go, %bb.gt, %bb.gy, %bb.hd, %bb.hi, %.split.i, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %bb.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i, %bb.hj, %bb.gn, %bb.gs, %bb.gx, %bb.hc, %bb.hh, %11, %bb.gl, %bb.gq, %bb.gv, %bb.ha, %bb.hf, %bb.ag, %bb.ae
  %8 = phi ptr [ @2877, %bb.gs ], [ @3129, %bb.ae ], [ @2877, %bb.hj ], [ @2876, %bb.gq ], [ @2876, %bb.gv ], [ @2877, %bb.gn ], [ @2877, %bb.hc ], [ @2877, %bb.hh ], [ @2876, %11 ], [ @2876, %bb.gl ], [ @2877, %bb.gx ], [ @2876, %bb.ha ], [ @2876, %bb.hf ], [ @2856, %bb.ag ], [ @2874, %.split.i ], [ @2875, %bb.gj ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i ], [ @2874, %.split.5.i ], [ @2874, %.split.4.i ], [ @2874, %.split.3.i ], [ @2874, %.split.2.i ], [ @2874, %.split.1.i ], [ @2875, %bb.hi ], [ @2875, %bb.hd ], [ @2875, %bb.gy ], [ @2875, %bb.gt ], [ @2875, %bb.go ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i ], [ @2860, %bb.u ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i: ; preds = %bb.hi
  %..i199.5.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.abv) ; 2 uses
  %i.fd = add nuw i64 %.sroa.022.0.ph429.5.i.lcssa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2951
  store i64 %..i199689697703708.i, ptr %i.ag, align 8, !noalias !2951
  store i64 %i.zi, ptr %.sroa.6.0..sroa_idx.i54, align 8, !noalias !2951
  store i64 %..i199.1710.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.zh, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.zx, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.3.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.aap, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.4.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.abg, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.5.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.fd, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2951
  %i.fe = add i64 %..i199689697703708.i, %..i199.1710.i ; 3 uses
  %i.ff = icmp ult i64 %i.fe, %..i199689697703708.i
  br i1 %i.ff, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i
  %i.fg = add i64 %..i199.2.i, %i.fe              ; 3 uses
  %i.fh = icmp ult i64 %i.fg, %i.fe
  br i1 %i.fh, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i
  %i.fi = add i64 %..i199.3.i, %i.fg              ; 3 uses
  %i.fj = icmp ult i64 %i.fi, %i.fg
  br i1 %i.fj, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i
  %i.fk = add i64 %..i199.4.i, %i.fi              ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.fi
  br i1 %i.fl, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i
  %i.fm = add i64 %..i199.5.i, %i.fk              ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %i.fk
  br i1 %i.fn, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i
  %i.fo = icmp slt i64 %i.eo, 0
  br i1 %i.fo, label %.invoke992, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i
  %i.fp = shl nuw i64 %i.eo, 1
  %i.fq = add i64 %i.fm, %i.fp                    ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fm
  br i1 %i.fr, label %.invoke, label %bb.v

.invoke992:                                       ; preds = %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i, %.outer.split.us.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i, %bb.af
  %9 = phi ptr [ @2856, %bb.af ], [ @2859, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i ], [ @2876, %.outer.split.us.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ @2876, %.outer.split.us.1.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #37
          to label %.cont993 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont993:                                         ; preds = %.invoke992
  unreachable

bb.v:                                             ; preds = %bb.u
  %.not898.i.not = icmp uge i64 %i.ba, %i.fq      ; 2 uses
  br i1 %.not898.i.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not114.i = icmp ugt i64 %.sroa.0.0.i207.fr679.i, %.sroa.08.1.i
  br i1 %.not114.i, label %bb.y, label %.thread219.i

bb.x:                                             ; preds = %bb.v
  %.not132.i = icmp eq i64 %.sroa.4.0481, 1
  br i1 %.not132.i, label %bb.gi, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit, !prof !7

bb.y:                                             ; preds = %bb.w
  %i.fs = sub nuw nsw i64 %.sroa.0.0.i207.fr679.i, %.sroa.08.1.i
  %..i141.i = call noundef i64 @llvm.umin.i64(i64 %i.fs, i64 %i.cr) ; 2 uses
  %i.ft = add nuw nsw i64 %..i141.i, %.sroa.08.1.i
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.y, %bb.w
  %.sroa.034.0217224.i = phi i64 [ %..i141.i, %bb.y ], [ 0, %bb.w ] ; 7 uses
  %.sroa.028.0218223.i = phi i64 [ %i.ft, %bb.y ], [ %.sroa.0.0.i207.fr679.i, %bb.w ] ; 6 uses
  %i.fu = sub nuw nsw i64 %.sroa.028.0218223.i, %.sroa.034.0217224.i
  %.not118.i = icmp ugt i64 %i.fu, %.sroa.08.1.i
  br i1 %.not118.i, label %bb.z, label %bb.aa, !prof !7

bb.z:                                             ; preds = %.thread219.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2861, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2862) #37
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.thread219.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  store i64 %.sroa.034.0217224.i, ptr %i.ar, align 8, !alias.scope !2954, !noalias !2955
  store i64 %.sroa.028.0218223.i, ptr %i.as, align 8, !alias.scope !2954, !noalias !2955
  br i1 %i.ch, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fv = urem i64 %i.cf, %.sroa.4.0481
  %.not.i.i.i = icmp ne i64 %i.fv, 0
  %i.fw = udiv i64 %i.cf, %.sroa.4.0481
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.fx = add nuw nsw i64 %i.fw, %..i.i.i         ; 7 uses
  br i1 %brmerge486.not, label %bb.ac, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.fy = icmp eq i64 %i.fx, 0                    ; 3 uses
  %brmerge489 = select i1 %i.fy, i1 true, i1 %.not2.i.i
  %.mux491 = select i1 %i.fy, i64 undef, i64 %i.ck
  %not. = xor i1 %i.fy, true
  br i1 %brmerge489, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.fz, %bb.ad ], [ %i.ck, %bb.ac ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.sroa.0.03.i.i.i.i, %i.fx
  br i1 %.not6.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fz = sub nuw i64 %.sroa.0.03.i.i.i.i, %i.fx  ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.fz, %i.cf
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i, %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i138 = phi i64 [ %i.fx, %bb.ac ], [ %i.fx, %bb.ab ], [ 0, %bb.aa ], [ %i.fx, %.lr.ph.i.i.i.i ], [ %i.fx, %bb.ad ]
  %.sroa.7.0.i.i.i = phi i64 [ %.mux491, %bb.ac ], [ 0, %bb.ab ], [ undef, %bb.aa ], [ %i.fz, %bb.ad ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.i18.i.i = phi i1 [ %not., %bb.ac ], [ %i.cl, %bb.ab ], [ false, %bb.aa ], [ true, %.lr.ph.i.i.i.i ], [ true, %bb.ad ]
  %i.ga = icmp samesign ult i64 %.sroa.034.0217224.i, %.sroa.028.0218223.i
  br i1 %i.ga, label %.lr.ph303.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

.lr.ph303.i.i:                                    ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, %._crit_edge.i.i
  %.sroa.08.0302.i.i = phi i64 [ %i.gb, %._crit_edge.i.i ], [ %.sroa.034.0217224.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ] ; 4 uses
  %i.gb = add nuw nsw i64 %.sroa.08.0302.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2956
  store ptr %i.ag, ptr %i.m, align 8, !noalias !2956
  store ptr %i.de, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !2956
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2957
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit

.noexc65:                                         ; preds = %.lr.ph303.i.i
  %i.gc = load i64, ptr %i.k, align 8, !range !22, !noalias !2957, !noundef !5
  %i.gd = trunc nuw i64 %i.gc to i1
  br i1 %i.gd, label %.lr.ph.i.i57, label %._crit_edge.i.i

.lr.ph.i.i57:                                     ; preds = %.noexc65
  %i.ge = trunc i64 %.sroa.08.0302.i.i to i1      ; 4 uses
  %spec.select.i.i.i.i = select i1 %i.ge, i8 22, i8 18
  %i.gf = select i1 %i.ge, i8 4, i8 0
  %spec.select.i134.i.reass.reass.i.reass.i.reass.reass = add i8 %i.gf, %invariant.op
  %spec.select.i137.i.i.i = select i1 %i.ge, i8 24, i8 20
  %spec.select.i140.i.i.i = select i1 %i.ge, i8 25, i8 21
  %i.gg = sub nuw nsw i64 %.sroa.08.0302.i.i, %.sroa.034.0217224.i
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc72, %.lr.ph.i.i57
  call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  %i.gh = load i64, ptr %i.dg, align 8, !noalias !2959, !noundef !5 ; 8 uses
  %i.gi = load i64, ptr %i.dh, align 8, !noalias !2959, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2959
  %i.gj = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !2958, !noalias !2960, !noundef !5 ; 4 uses
  %i.gk = icmp eq i64 %i.gj, -1
  br i1 %i.gk, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gl = add nuw i64 %i.gj, 1
  store i64 %i.gl, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !2958, !noalias !2960
  %i.gm = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gj, i64 %.sroa.0.0.i.i.i138) ; 2 uses
  %i.gn = extractvalue { i64, i1 } %i.gm, 1
  br i1 %i.gn, label %.invoke992, label %bb.ag

._crit_edge.i.i:                                  ; preds = %.noexc72, %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2956
  %exitcond.not.i.i = icmp eq i64 %i.gb, %.sroa.028.0218223.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i, label %.lr.ph303.i.i

bb.ag:                                            ; preds = %bb.af
  %i.go = extractvalue { i64, i1 } %i.gm, 0       ; 2 uses
  %i.gp = add i64 %i.go, %.sroa.08.0302.i.i       ; 20 uses
  %i.gq = icmp ult i64 %i.gp, %i.go
  br i1 %i.gq, label %.invoke, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not16.i.i = icmp ugt i64 %i.cf, %i.gp
  br i1 %.not16.i.i, label %bb.ai, label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.gp ; 9 uses
  %i.gs = icmp eq i64 %i.gp, %.sroa.7.0.i.i.i
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i18.i.i, i1 %i.gs, i1 false ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  %i.gu = load i16, ptr %i.gt, align 8, !alias.scope !2961, !noalias !2962, !noundef !5
  %i.gv = and i16 %i.gu, 1024
  %.not17.not.i.i = icmp eq i16 %i.gv, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2956
  call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2964
  store i64 0, ptr %i.j, align 8, !noalias !2964
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.483.0..sroa_idx.i.i.i, align 8, !noalias !2964
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.584.0..sroa_idx.i.i.i, i8 0, i64 17, i1 false), !noalias !2964
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !2965, !noalias !2966, !noundef !5 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 136
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !2965, !noalias !2966, !noundef !5 ; 6 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %..i19.i.i = select i1 %i.ha, i64 0, i64 4
  %i.hb = add i64 %..i19.i.i, %i.gz               ; 4 uses
  %i.hc = icmp ult i64 %i.hb, %i.gz
  br i1 %i.hc, label %.invoke.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hd = add i64 %i.hb, %i.gx                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.gx
  br i1 %i.he, label %.invoke.i.i.i, label %bb.am

.invoke.i.i.i:                                    ; preds = %bb.ax, %bb.ap, %bb.aj, %bb.ai
  %i.hf = phi ptr [ @2884, %bb.ax ], [ @2881, %bb.ap ], [ @2878, %bb.aj ], [ @2877, %bb.ai ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hf) #36
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.bz
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.cg
  %lpad.loopexit52.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.us.i.i.i.i
  %lpad.loopexit56.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i, %bb.ce
  %lpad.loopexit60.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i: ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i
  %lpad.loopexit166.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.noexc152.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i, %bb.bu, %.noexc25.i.i, %.loopexit.i22.i.i
  %lpad.loopexit179.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke.i.i, %.split66.us.i.i.i
  %lpad.loopexit.split-lp180.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i
  %lpad.loopexit152.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i60.i.i
  %lpad.loopexit155.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i
  %lpad.loopexit158.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i
  %lpad.loopexit170.i.i = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.045.i.i.i.i, i64 4 ; 2 uses
  %i.on = extractvalue { i64, i64 } %i.ol, 0
  %i.oo = trunc nuw i64 %i.on to i1
  br i1 %i.oo, label %.loopexit119.i.i.i.i, label %.peel.next.i.i.i.i, !llvm.loop !2859

.loopexit119.i.i.i.i:                             ; preds = %.noexc149.i.i.i, %.noexc147.i.i.i
  %.lcssa107.i.i.i.i = phi ptr [ %i.ob, %.noexc147.i.i.i ], [ %i.om, %.noexc149.i.i.i ] ; 4 uses
  %.lcssa106.i.i.i.i = phi { i64, i64 } [ %i.oa, %.noexc147.i.i.i ], [ %i.ol, %.noexc149.i.i.i ]
  %.lcssa105.i.i.i.i = phi i32 [ %i.nv, %.noexc147.i.i.i ], [ %i.of, %.noexc149.i.i.i ]
  %i.op = extractvalue { i64, i64 } %.lcssa106.i.i.i.i, 1 ; 3 uses
  %i.oq = icmp ugt i64 %i.op, %.sroa.013.0.ph.i128.i.i.i
  br i1 %i.oq, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.loopexit119.i.i.i.i
  %i.or = icmp eq i64 %i.op, %.sroa.013.0.ph.i128.i.i.i ; 2 uses
  %i.os = icmp ne ptr %.lcssa107.i.i.i.i, %i.na
  %or.cond293.not.i.i.i = select i1 %i.or, i1 %i.os, i1 false
  br i1 %or.cond293.not.i.i.i, label %bb.ci, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i: ; preds = %bb.ch
  call void @llvm.assume(i1 %i.ic)
  br i1 %brmerge45.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i
  %i.ot = icmp ult i64 %.sroa.0.0.ph.i129.i.i.i, %i.ib
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.sroa.0.0.ph.i129.i.i.i
  %.sroa.03.0.i.i.i.i.i = select i1 %i.ot, ptr %i.ou, ptr null ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %.sroa.03.0.i.i.i.i.i, null
  %spec.select.i.i.i.i.i = select i1 %.not9.i.i.i.i.i, ptr %i.ig, ptr %.sroa.03.0.i.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i.i.i.i.i) ]
  br label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.i.i.i.i ]
  %.sroa.0.0.i33.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i, align 1, !noalias !2973
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.lcssa105.i.i.i.i, i32 noundef %.sroa.0.0.i33.i.i.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gp)
          to label %.noexc150.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2967

.noexc150.i.i.i:                                  ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit.i.i.i.i
  %i.ov = icmp eq i64 %.sroa.0.0.ph.i129.i.i.i, -1
  br i1 %i.ov, label %.split78.us.i.i.invoke.i.i, label %.outer.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.ow = load i32, ptr %.lcssa107.i.i.i.i, align 4, !noalias !2975, !noundef !5 ; 3 uses
  %i.ox = xor i32 %i.ow, 55296
  %i.oy = add i32 %i.ox, -1114112
  %i.oz = icmp ult i32 %i.oy, -1112064
  br i1 %i.oz, label %.split.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2976
  store i32 %i.ow, ptr %i.c, align 4, !noalias !2976
  br label %.split.i.i.invoke.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.ci
  %i.pa = icmp ult i32 %i.ow, 1114112
  call void @llvm.assume(i1 %i.pa)
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.cb, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i
  %.sroa.013.0.ph71.i.i.i.i = phi i64 [ %.sroa.013.0.ph.i128.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %.sroa.013.0.ph.us.i.i.i.i, %bb.cb ]
  %.sroa.0.0.ph65.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i129.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %.sroa.0.0.ph.us.i.i.i.i, %bb.cb ] ; 2 uses
  call void @llvm.assume(i1 %i.ic)
  br i1 %brmerge45.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i, label %._crit_edge.i34.i.i.i.i

._crit_edge.i34.i.i.i.i:                          ; preds = %.loopexit.i.i.i.i
  %i.pb = icmp ult i64 %.sroa.0.0.ph65.i.i.i.i, %i.ib
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.sroa.0.0.ph65.i.i.i.i
  %.sroa.03.0.i35.i.i.i.i = select i1 %i.pb, ptr %i.pc, ptr null ; 2 uses
  %.not9.i36.i.i.i.i = icmp eq ptr %.sroa.03.0.i35.i.i.i.i, null
  %spec.select.i37.i.i.i.i = select i1 %.not9.i36.i.i.i.i, ptr %i.ig, ptr %.sroa.03.0.i35.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i37.i.i.i.i) ]
  br label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i: ; preds = %._crit_edge.i34.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.0.in.i38.i.i.i.i = phi ptr [ %spec.select.i37.i.i.i.i, %._crit_edge.i34.i.i.i.i ], [ %.sroa.0.i.i.i, %.loopexit.i.i.i.i ]
  %.sroa.0.0.i39.i.i.i.i = load i32, ptr %.sroa.0.0.in.i38.i.i.i.i, align 1, !noalias !2977
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.0.0.i39.i.i.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gp)
          to label %.noexc152.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2967

.noexc152.i.i.i:                                  ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_items_0B8_.exit40.i.i.i.i
  %i.pd = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc153.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2967 ; 2 uses

.noexc153.i.i.i:                                  ; preds = %.noexc152.i.i.i
  %i.pe = extractvalue { i64, i64 } %i.pd, 0
  %i.pf = trunc nuw i64 %i.pe to i1
  br i1 %i.pf, label %bb.cj, label %.invoke290.i.invoke.i.i, !prof !8

.outer.i.i.i.i:                                   ; preds = %.noexc150.i.i.i
  %i.pg = add nuw i64 %.sroa.0.0.ph.i129.i.i.i, 1
  %i.ph = sub nuw i64 %.sroa.013.0.ph.i128.i.i.i, %i.op ; 2 uses
  %i.pi = icmp eq ptr %.lcssa107.i.i.i.i, %i.na
  %or.cond.peel.i.i.i.i = select i1 %i.or, i1 true, i1 %i.pi
  br i1 %or.cond.peel.i.i.i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %.lr.ph.i.i.i

.split78.us.i.i.invoke.i.i:                       ; preds = %.noexc118.i.i, %.noexc77.i.i, %.noexc37.i.i, %.noexc150.i.i.i, %.noexc146.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.split78.us.i.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.split78.us.i.i.cont.i.i:                         ; preds = %.split78.us.i.i.invoke.i.i
  unreachable

bb.cj:                                            ; preds = %.noexc153.i.i.i
  %i.pj = extractvalue { i64, i64 } %i.pd, 1
  %i.pk = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph71.i.i.i.i, i64 %i.pj)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i

.invoke290.i.invoke.i.i:                          ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, %.noexc39.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, %.noexc79.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, %.noexc120.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, %.noexc153.i.i.i
  %i.pl = phi ptr [ @16, %.noexc153.i.i.i ], [ @17, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i ], [ @16, %.noexc39.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i ], [ @16, %.noexc79.i.i ], [ @16, %.noexc120.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i ], [ @17, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pl) #37
          to label %.invoke290.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.invoke290.i.cont.i.i:                            ; preds = %.invoke290.i.invoke.i.i
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i: ; preds = %.outer.i.i.i.i, %.loopexit119.i.i.i.i, %bb.ca, %.peel.next.i.i.i.i, %bb.cd, %bb.cj, %.outer.i.preheader.i.i.i
  %.sroa.013.2.i.i.i.i = phi i64 [ %i.pk, %bb.cj ], [ %.sroa.013.0.ph.i128.i.i.i, %.peel.next.i.i.i.i ], [ %.sroa.013.0.ph.us.i.i.i.i, %bb.cd ], [ %.sroa.013.0.ph.us.i.i.i.i, %bb.ca ], [ %.sroa.043.2.i.i.i, %.outer.i.preheader.i.i.i ], [ %i.ph, %.outer.i.i.i.i ], [ %.sroa.013.0.ph.i128.i.i.i, %.loopexit119.i.i.i.i ] ; 3 uses
  %i.pm = icmp ult i64 %.sroa.043.2.i.i.i, %.sroa.013.2.i.i.i.i
  br i1 %i.pm, label %.invoke290.i.invoke.i.i, label %bb.ao, !prof !7

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ck, %bb.ak
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2967
  unreachable

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, %bb.bj, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !2978
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2964
  %i.po = icmp ult i64 %i.gj, %i.eo
  br i1 %i.po, label %bb.cl, label %bb.cm

.loopexit.i.i:                                    ; preds = %bb.cn, %bb.cm, %bb.cl
  %lpad.loopexit186.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l) #35
          to label %.body unwind label %bb.cr, !noalias !2968

bb.cl:                                            ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line10append_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @2857, i64 noundef 2, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %bb.cm unwind label %.loopexit.i.i, !noalias !2968

bb.cm:                                            ; preds = %bb.cl, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i
  %i.pp = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs8frGy5WneL6_4fish6screenNtB4_10ScreenData11create_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av, i64 noundef %i.gg)
          to label %bb.cn unwind label %.loopexit.i.i, !noalias !2968

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line11append_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %bb.co unwind label %.loopexit.i.i, !noalias !2968

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i unwind label %bb.cp, !noalias !2968

bb.cp:                                            ; preds = %bb.co
  %i.pq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.body unwind label %bb.cq, !noalias !2968

bb.cq:                                            ; preds = %bb.cp
  %i.pr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2968
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i: ; preds = %bb.co
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.noexc71 unwind label %.loopexit

.noexc71:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6screen4LineEBF_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2956
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.noexc71, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2979
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc72 unwind label %.loopexit

.noexc72:                                         ; preds = %.backedge.i.i
  %i.ps = load i64, ptr %i.k, align 8, !range !22, !noalias !2979, !noundef !5
  %i.pt = trunc nuw i64 %i.ps to i1
  br i1 %i.pt, label %bb.ae, label %._crit_edge.i.i

bb.cr:                                            ; preds = %.loopexit.i.i
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2968
  unreachable

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.i = load i64, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  br label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i: ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i
  %i.pv = phi i64 [ %.pre.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i ], [ %7, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2951
  store i64 0, ptr %i.af, align 8, !noalias !2951
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !2951
  store i64 0, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !2951
  switch i64 %i.pv, label %bb.cv [
    i64 1, label %bb.cs
    i64 0, label %bb.cu
  ], !prof !2980

bb.cs:                                            ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2863, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2864) #36
          to label %bb.ct unwind label %.loopexit.split-lp260.i.loopexit.split-lp, !noalias !2950

.body192.i:                                       ; preds = %.loopexit.split-lp260.i.loopexit, %.loopexit.split-lp260.i.loopexit.split-lp, %bb.dj, %bb.gd, %.loopexit.split-lp248.i, %.body162.i, %.body156.i, %.body148.i, %.body145.i, %bb.cy, %.loopexit259.i
  %.pn130.i = phi { ptr, i32 } [ %.pn.i55, %bb.cy ], [ %lpad.phi.i, %.loopexit.split-lp248.i ], [ %eh.lpad-body163.i, %.body162.i ], [ %.pn127.i, %.body156.i ], [ %.pn122.pn.i, %.body145.i ], [ %eh.lpad-body149.i, %.body148.i ], [ %i.yg, %bb.gd ], [ %lpad.loopexit261.i, %.loopexit259.i ], [ %i.qo, %bb.dj ], [ %lpad.loopexit186, %.loopexit.split-lp260.i.loopexit ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp260.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #35
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2950

.loopexit259.i:                                   ; preds = %bb.eq, %bb.ep
  %lpad.loopexit261.i = landingpad { ptr, i32 }
          cleanup
  br label %.body192.i

.loopexit.split-lp260.i.loopexit:                 ; preds = %bb.eo, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit.i, %bb.er, %bb.et, %bb.ey, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %.body192.i

.loopexit.split-lp260.i.loopexit.split-lp:        ; preds = %bb.cs, %bb.fa
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.body192.i

bb.ct:                                            ; preds = %bb.gf, %bb.fa, %bb.db, %bb.cs
  unreachable

bb.cu:                                            ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i
  %i.pw = icmp ne i64 %.sroa.034.0217224.i, 0
  %i.px = icmp ult i64 %.sroa.028.0218223.i, %.sroa.0.0.i207.fr679.i
  %or.cond6.i = or i1 %i.pw, %i.px
  br i1 %or.cond6.i, label %bb.dl, label %bb.cw

bb.cv:                                            ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2951
  store i64 0, ptr %i.ad, align 8, !noalias !2951
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.466.0..sroa_idx67.i, align 8, !noalias !2951
  store i64 0, ptr %.sroa.571.0..sroa_idx72.i, align 8, !noalias !2951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2951
  store ptr @2868, ptr %i.dt, align 8, !noalias !2951
  store i64 17, ptr %i.du, align 8, !noalias !2951
  store i64 -1, ptr %i.ab, align 8, !noalias !2951
  %i.py = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.ec unwind label %.loopexit.split-lp265.i, !noalias !2950 ; 2 uses

bb.cw:                                            ; preds = %bb.cu
  br i1 %brmerge.not.i, label %bb.cx, label %bb.eb

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2951
  store ptr @2865, ptr %i.dl, align 8, !noalias !2951
  store i64 12, ptr %i.dm, align 8, !noalias !2951
  store i64 -1, ptr %i.u, align 8, !noalias !2951
  %i.pz = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.cz unwind label %.loopexit181, !noalias !2950 ; 2 uses

bb.cy:                                            ; preds = %.loopexit181, %.loopexit.split-lp182, %.body83
  %.pn.i55 = phi { ptr, i32 } [ %eh.lpad-body84, %.body83 ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #35
          to label %.body192.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2950

.loopexit181:                                     ; preds = %bb.cx, %bb.cz
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp182:                            ; preds = %bb.db
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cz:                                            ; preds = %bb.cx
  %i.qa = extractvalue { ptr, i64 } %i.pz, 0
  %i.qb = extractvalue { ptr, i64 } %i.pz, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2951
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %i.qb, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.da unwind label %.loopexit181, !noalias !2950

bb.da:                                            ; preds = %bb.cz
  %i.qc = load i64, ptr %i.q, align 8, !range !22, !noalias !2951, !noundef !5
  %i.qd = trunc nuw i64 %i.qc to i1
  %i.qe = load i64, ptr %i.dn, align 8, !range !24, !noalias !2951, !noundef !5 ; 4 uses
  br i1 %i.qd, label %bb.db, label %bb.dc, !prof !7

bb.db:                                            ; preds = %bb.da
  %i.qf = load i64, ptr %i.do, align 8, !noalias !2951
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.qe, i64 %i.qf) #36
          to label %bb.ct unwind label %.loopexit.split-lp182, !noalias !2950

bb.dc:                                            ; preds = %bb.da
  %i.qg = load ptr, ptr %i.do, align 8, !noalias !2951, !nonnull !5, !noundef !5 ; 3 uses
  %i.qh = icmp ule i64 %i.qb, %i.qe
  call void @llvm.assume(i1 %i.qh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2951
  %.not120.i = icmp eq i64 %i.qb, 0
  br i1 %.not120.i, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dg, %bb.dc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.de, !noalias !2950

bb.de:                                            ; preds = %bb.dd
  %i.qi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body83 unwind label %bb.df, !noalias !2950

bb.df:                                            ; preds = %bb.de
  %i.qj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2950
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.dd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.dh

bb.dg:                                            ; preds = %bb.dc
  %i.qk = shl nuw nsw i64 %i.qb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qg, ptr align 4 %i.qa, i64 %i.qk, i1 false), !noalias !2950
  br label %bb.dd

bb.dh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.body83:                                          ; preds = %bb.de, %bb.dh
  %eh.lpad-body84 = phi { ptr, i32 } [ %i.ql, %bb.dh ], [ %i.qi, %bb.de ]
  store i64 %i.qe, ptr %i.af, align 8, !noalias !2951
  store ptr %i.qg, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.qb, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !2951
  br label %bb.cy

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  store i64 %i.qe, ptr %i.af, align 8, !noalias !2951
  store ptr %i.qg, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.qb, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !2951
  %i.qm = load i64, ptr %i.u, align 8, !range !4, !alias.scope !2981, !noalias !2950, !noundef !5
  %i.qn = icmp eq i64 %i.qm, -1
  br i1 %i.qn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.di

bb.di:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80 unwind label %bb.dj, !noalias !2950

bb.dj:                                            ; preds = %bb.di
  %i.qo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body192.i unwind label %bb.dk, !noalias !2950

bb.dk:                                            ; preds = %bb.dj
  %i.qp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2950
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80: ; preds = %bb.di
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %.loopexit.split-lp260.i.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2951
  br label %bb.eb

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ed, %.body192.i, %bb.cy, %.body.i, %bb.do, %.body145.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.body156.i, %.loopexit.split-lp248.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2950
  unreachable

bb.dl:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2951
  store i64 0, ptr %i.y, align 8, !noalias !2951
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.466.0..sroa_idx69.i, align 8, !noalias !2951
  store i64 0, ptr %.sroa.571.0..sroa_idx74.i, align 8, !noalias !2951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2951
  store ptr @2866, ptr %i.dp, align 8, !noalias !2951
  store i64 19, ptr %i.dq, align 8, !noalias !2951
  store i64 -1, ptr %i.w, align 8, !noalias !2951
  %i.qq = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.dn unwind label %bb.dm, !noalias !2950 ; 2 uses

.body.i:                                          ; preds = %bb.dr, %bb.ds, %bb.do, %bb.dm
  %.pn122.i = phi { ptr, i32 } [ %lpad.phi193, %bb.do ], [ %i.qr, %bb.dm ], [ %i.re, %bb.ds ], [ %i.re, %bb.dr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #35
          to label %.body145.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2950

bb.dm:                                            ; preds = %bb.dl
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2951
  %i.qs = add nuw nsw i64 %.sroa.034.0217224.i, 1
  %i.qt = extractvalue { ptr, i64 } %i.qq, 1
  %i.qu = extractvalue { ptr, i64 } %i.qq, 0
  store i64 4, ptr %i.v, align 8, !noalias !2951
  store i64 %i.qs, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !2951
  store i64 4, ptr %i.dr, align 8, !noalias !2951
  store i64 %.sroa.028.0218223.i, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !2951
  store i64 4, ptr %i.ds, align 8, !noalias !2951
  store i64 %.sroa.0.0.i207.fr679.i, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !2951
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.qu, i64 noundef %i.qt, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @40, ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef 3)
          to label %bb.dp unwind label %.loopexit189, !noalias !2950

.loopexit189:                                     ; preds = %bb.dn
  %lpad.loopexit191 = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.loopexit.split-lp190:                            ; preds = %bb.dq
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.do:                                            ; preds = %.loopexit.split-lp190, %.loopexit189
  %lpad.phi193 = phi { ptr, i32 } [ %lpad.loopexit191, %.loopexit189 ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp190 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.v) #35
          to label %.body.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2950

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  %i.qv = load i8, ptr %i.x, align 8, !range !28, !alias.scope !2982, !noalias !2983, !noundef !5
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.dq, label %.preheader.i.preheader, !prof !7

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2984
  %i.qx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.qy = load i8, ptr %i.qx, align 1, !range !29, !alias.scope !2982, !noalias !2983, !noundef !5
  store i8 %i.qy, ptr %i.n, align 1, !noalias !2984
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2867) #37
          to label %.noexc134.i unwind label %.loopexit.split-lp190, !noalias !2950

.noexc134.i:                                      ; preds = %bb.dq
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.preheader
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.em)
          to label %.preheader.i.1 unwind label %bb.ds, !noalias !2950

.preheader.i.1:                                   ; preds = %.preheader.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.en)
          to label %.preheader.i.2 unwind label %bb.ds, !noalias !2950

.preheader.i.2:                                   ; preds = %.preheader.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2951
  %i.qz = load i64, ptr %i.w, align 8, !range !4, !alias.scope !2985, !noalias !2951, !noundef !5
  %i.ra = icmp eq i64 %i.qz, -1
  br i1 %i.ra, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, label %bb.du

.preheader.i.preheader:                           ; preds = %bb.dp
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v)
          to label %.preheader.i unwind label %bb.ds, !noalias !2950

bb.dr:                                            ; preds = %.lr.ph1298
  %i.rb = add nuw nsw i64 %.sroa.0.1.i.i.i1296, 1 ; 2 uses
  %i.rc = icmp eq i64 %i.rb, 3
  br i1 %i.rc, label %.body.i, label %.lr.ph1298

bb.ds:                                            ; preds = %.preheader.i.1, %.preheader.i, %.preheader.i.preheader
  %i.rd = phi i1 [ false, %.preheader.i.preheader ], [ false, %.preheader.i ], [ true, %.preheader.i.1 ]
  %.lcssa1478 = phi i64 [ 1, %.preheader.i.preheader ], [ 2, %.preheader.i ], [ 3, %.preheader.i.1 ]
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.rd, label %.body.i, label %.lr.ph1298

.lr.ph1298:                                       ; preds = %bb.ds, %bb.dr
  %.sroa.0.1.i.i.i1296 = phi i64 [ %i.rb, %bb.dr ], [ %.lcssa1478, %bb.ds ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.1.i.i.i1296
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.rf) #35
          to label %bb.dr unwind label %bb.dt, !noalias !2950

bb.dt:                                            ; preds = %.lr.ph1298
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2950
  unreachable

bb.du:                                            ; preds = %.preheader.i.2
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.dv, !noalias !2950

bb.dv:                                            ; preds = %bb.du
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body145.i unwind label %bb.dw, !noalias !2950

bb.dw:                                            ; preds = %bb.dv
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2950
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.du
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i unwind label %bb.dx, !noalias !2950

.body145.i:                                       ; preds = %bb.dx, %bb.dv, %.body.i
  %.pn122.pn.i = phi { ptr, i32 } [ %.pn122.i, %.body.i ], [ %i.rj, %bb.dx ], [ %i.rh, %bb.dv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #35
          to label %.body192.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2950

bb.dx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %.preheader.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2951
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.dy, !noalias !2950

bb.dy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i
  %i.rk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body148.i unwind label %bb.dz, !noalias !2950

bb.dz:                                            ; preds = %bb.dy
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2950
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ea, !noalias !2950

bb.ea:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %.body148.i

.body148.i:                                       ; preds = %bb.ea, %bb.dy
  %eh.lpad-body149.i = phi { ptr, i32 } [ %i.rm, %bb.ea ], [ %i.rk, %bb.dy ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2951
  br label %.body192.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.eb

bb.eb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit165.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %bb.cw
  call void @llvm.assume(i1 %i.dx)
  %.pr.i = load i64, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !2951 ; 3 uses
  br i1 %i.dy, label %thread-pre-split.i, label %bb.en

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ed, %.loopexit.split-lp265.i, %.loopexit264.i
  %.pn125.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp267.i, %.loopexit.split-lp265.i ], [ %lpad.loopexit266.i, %.loopexit264.i ], [ %lpad.phi198, %bb.ed ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #35
          to label %.body156.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2950

.loopexit264.i:                                   ; preds = %.noexc152.i.preheader
  %lpad.loopexit266.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

.loopexit.split-lp265.i:                          ; preds = %bb.cv
  %lpad.loopexit.split-lp267.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.ec:                                            ; preds = %bb.cv
  %i.rn = extractvalue { ptr, i64 } %i.py, 0
  %i.ro = extractvalue { ptr, i64 } %i.py, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2951
  %i.rp = load i64, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950, !noundef !5
  store i64 4, ptr %i.aa, align 8, !noalias !2951
  store i64 %i.rp, ptr %.sroa.4.0..sroa_idx.i56, align 8, !noalias !2951
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.rn, i64 noundef %i.ro, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @40, ptr noalias nofree noundef nonnull align 8 %i.aa, i64 noundef 1)
          to label %bb.ee unwind label %.loopexit194, !noalias !2950

.loopexit194:                                     ; preds = %bb.ec
  %lpad.loopexit196 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp195:                            ; preds = %bb.ef
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit194, %.loopexit.split-lp195
  %lpad.phi198 = phi { ptr, i32 } [ %lpad.loopexit196, %.loopexit194 ], [ %lpad.loopexit.split-lp197, %.loopexit.split-lp195 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2950

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %i.rq = load i8, ptr %i.ac, align 8, !range !28, !alias.scope !2986, !noalias !2987, !noundef !5
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %bb.ef, label %.noexc152.i.preheader, !prof !7

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2988
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
end_hunk_1
begin_hunk_2_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  %i.wu = icmp ne ptr %i.wl, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  call void @llvm.assume(i1 %i.wu)
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 4
  %i.ww = load i8, ptr %i.wl, align 1, !noalias !2994, !noundef !5
  %i.wx = shl nuw nsw i32 %i.wa, 18
  %i.wy = and i32 %i.wx, 1835008
  %i.wz = shl nuw nsw i32 %i.wq, 6
  %i.xa = and i8 %i.ww, 63
  %i.xb = zext nneg i8 %i.xa to i32
  %i.xc = or disjoint i32 %i.wz, %i.xb
  %i.xd = or disjoint i32 %i.xc, %i.wy
  br label %bb.fs

bb.fs:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.fr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.11.1.ph.i.i = phi ptr [ %.sroa.11.0.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.wl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.wv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.vw, %bb.fr ] ; 2 uses
  %.sroa.036.1.ph.i.i = phi ptr [ %i.vu, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ null, %bb.fr ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi i32 [ %i.vp, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.ws, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.xd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.wj, %bb.fr ] ; 2 uses
  %i.xe = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.03.0.ph.i.i)
          to label %.noexc182.i unwind label %.loopexit247.i, !noalias !2950 ; 2 uses

.noexc182.i:                                      ; preds = %bb.fs
  %i.xf = extractvalue { i64, i64 } %i.xe, 0
  %i.xg = trunc nuw i64 %i.xf to i1
  br i1 %i.xg, label %.loopexit.i178.i, label %.peel.next.i.i, !llvm.loop !2922

.loopexit.i178.i:                                 ; preds = %.noexc182.i, %.noexc180.i
  %.sroa.11.1.ph.lcssa.i.i = phi ptr [ %.sroa.11.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.11.1.ph.i.i, %.noexc182.i ] ; 5 uses
  %.sroa.036.1.ph.lcssa.i.i = phi ptr [ %.sroa.036.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.036.1.ph.i.i, %.noexc182.i ] ; 4 uses
  %.sroa.03.0.ph.lcssa.i.i = phi i32 [ %.sroa.03.0.ph.peel.i.i, %.noexc180.i ], [ %.sroa.03.0.ph.i.i, %.noexc182.i ]
  %.lcssa72.i.i = phi { i64, i64 } [ %i.vl, %.noexc180.i ], [ %i.xe, %.noexc182.i ]
  %i.xh = extractvalue { i64, i64 } %.lcssa72.i.i, 1 ; 3 uses
  %i.xi = icmp ugt i64 %i.xh, %.sroa.013.0.ph.i450.i
  br i1 %i.xi, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %.loopexit.i178.i
  %.not453.i = icmp eq i64 %i.xh, %.sroa.013.0.ph.i450.i ; 2 uses
  br i1 %.not453.i, label %bb.fu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.fx, %bb.fw, %bb.ft
  %.sroa.11.2.i.i = phi ptr [ %.sroa.11.1.ph.lcssa.i.i, %bb.ft ], [ null, %bb.fw ], [ getelementptr inbounds nuw (i8, ptr @2870, i64 1), %bb.fx ]
  %.sroa.036.2.i.i = phi ptr [ %.sroa.036.1.ph.lcssa.i.i, %bb.ft ], [ null, %bb.fw ], [ null, %bb.fx ]
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tr, i32 noundef %.sroa.03.0.ph.lcssa.i.i, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc183.i unwind label %.loopexit.split-lp248.loopexit.i, !noalias !2950

.noexc183.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i
  %i.xj = icmp eq i64 %.sroa.0.0.ph.i451.i, -1
  br i1 %i.xj, label %bb.fz, label %.outer.i.i

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i.i.i34.i.i = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, null
  %i.xk = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, %i.tv
  %or.cond246.i = select i1 %.not.i.i.i.i34.i.i, i1 true, i1 %i.xk
  br i1 %or.cond246.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xl = load i32, ptr %.sroa.036.1.ph.lcssa.i.i, align 4, !noalias !2996, !noundef !5 ; 2 uses
  %i.xm = xor i32 %i.xl, 55296
  %i.xn = add i32 %i.xm, -1114112
  %i.xo = icmp ult i32 %i.xn, -1112064
  br i1 %i.xo, label %.split.i.i.i.i.i.i.i.i, label %.sink.split.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2997
  store i32 %i.xl, ptr %i.a, align 4, !noalias !2997
  br label %.split.i.i.i.i.i.invoke.i

bb.fw:                                            ; preds = %bb.fu
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xp = load i8, ptr %.sroa.11.1.ph.lcssa.i.i, align 1, !noalias !2998, !noundef !5
  %i.xq = icmp sgt i8 %i.xp, -1
  br i1 %i.xq, label %.sink.split.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i: ; preds = %bb.fy
  %i.xr = icmp ne ptr %.sroa.11.1.ph.lcssa.i.i, @2870
  call void @llvm.assume(i1 %i.xr)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i, %bb.fv, %bb.fy
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tr, i32 noundef 8230, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc185.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2950

.noexc185.i:                                      ; preds = %.sink.split.i.i
  %i.xs = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc186.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2950 ; 2 uses

.noexc186.i:                                      ; preds = %.noexc185.i
  %i.xt = extractvalue { i64, i64 } %i.xs, 0
  %i.xu = trunc nuw i64 %i.xt to i1
  br i1 %i.xu, label %bb.ga, label %.invoke.i, !prof !8

.outer.i.i:                                       ; preds = %.noexc183.i
  %i.xv = add nuw i64 %.sroa.0.0.ph.i451.i, 1
  %i.xw = sub nuw i64 %.sroa.013.0.ph.i450.i, %i.xh
  br i1 %.not453.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, label %bb.fi

bb.fz:                                            ; preds = %.noexc183.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.noexc187.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2950

.noexc187.i:                                      ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %.noexc186.i
  %i.xx = extractvalue { i64, i64 } %i.xs, 1
  %i.xy = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i450.i, i64 %i.xx)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

.invoke.i:                                        ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %.noexc186.i
  %i.xz = phi ptr [ @16, %.noexc186.i ], [ @17, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xz) #37
          to label %.cont.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2950

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %.loopexit.i178.i, %bb.fk, %bb.fp, %bb.ga
  %.sroa.013.2.i.i = phi i64 [ %i.xy, %bb.ga ], [ %.sroa.013.0.ph.i450.i, %bb.fp ], [ %.sroa.013.0.ph.i450.i, %bb.fk ], [ %.sroa.013.0.ph.i450.i, %.loopexit.i178.i ] ; 2 uses
  %i.ya = icmp ult i64 %i.el, %.sroa.013.2.i.i
  br i1 %i.ya, label %.invoke.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, !prof !2999

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread: ; preds = %.outer.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.013.2.i.i140 = phi i64 [ %.sroa.013.2.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.outer.i.i ] ; 2 uses
  %i.yb = load ptr, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !2951, !nonnull !5, !noundef !5 ; 2 uses
  %i.yc = load i64, ptr %.sroa.689.0..sroa_idx.i, align 8, !noalias !2951, !noundef !5
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.yc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2951
  store i8 0, ptr %i.r, align 1, !noalias !2951
  store i8 1, ptr %.sroa.454.0..sroa_idx.i, align 1, !noalias !2951
  store i16 0, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !2951
  %i.ye = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 0, i64 undef, ptr noundef nonnull %i.yb, ptr noundef nonnull %i.yd, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.r, i64 noundef %.sroa.013.2.i.i140, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(40) %i.tr)
          to label %bb.gb unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2950

bb.gb:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2951
  %i.yf = icmp ult i64 %.sroa.013.2.i.i140, %i.ye
  br i1 %i.yf, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i unwind label %bb.gd, !noalias !2950

bb.gd:                                            ; preds = %bb.gc
  %i.yg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body192.i unwind label %bb.ge, !noalias !2950

bb.ge:                                            ; preds = %bb.gd
  %i.yh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2950
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i: ; preds = %bb.gc
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i unwind label %.loopexit.split-lp260.i.loopexit, !noalias !2950

bb.gf:                                            ; preds = %bb.gb
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2871) #36
          to label %bb.ct unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2950

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2951
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.sink.split.sink.split.i unwind label %bb.gg, !noalias !2950

bb.gg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i
  %i.yi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.gh, !noalias !2950

bb.gh:                                            ; preds = %bb.gg
  %i.yj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2950
  unreachable

.sink.split.sink.split.i:                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit195.i, %bb.ev
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc73:                                         ; preds = %.sink.split.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2951
  br label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit

bb.gi:                                            ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2872, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2873) #37
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.gi
  unreachable

10:                                               ; preds = %14
  %exitcond.not.i = icmp eq i64 %15, %umax.i1217
  br i1 %exitcond.not.i, label %.split.i, label %11

.split.i:                                         ; preds = %.outer.i, %10, %.outer.split.i.preheader
  %.sroa.022.0.ph429.i.lcssa = phi i64 [ %.sroa.022.0.ph429.i1214, %10 ], [ 0, %.outer.split.i.preheader ], [ %..i200.i, %.outer.i ] ; 4 uses
  %.sroa.025.0.ph428.i.lcssa = phi i64 [ %.sroa.025.0.ph428.i1215, %10 ], [ 0, %.outer.split.i.preheader ], [ %..i201.i, %.outer.i ]
  %i.yk = add i64 %.sroa.025.0.ph428.i.lcssa, %.sroa.022.0.ph429.i.lcssa ; 2 uses
  %i.yl = icmp ult i64 %i.yk, %.sroa.022.0.ph429.i.lcssa
  br i1 %i.yl, label %.invoke, label %bb.gj

11:                                               ; preds = %.lr.ph, %10
  %.sroa.060.0.i1209 = phi i64 [ %.sroa.060.0.ph427.i1216, %.lr.ph ], [ %15, %10 ] ; 2 uses
  %12 = add i64 %.sroa.060.0.i1209, %3            ; 3 uses
  %13 = icmp ult i64 %12, %3
  br i1 %13, label %.invoke, label %14

bb.gj:                                            ; preds = %.split.i
  %i.ym = icmp ugt i64 %.sroa.022.0.ph429.i.lcssa, -3
  br i1 %i.ym, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i: ; preds = %bb.gj
  %..i199.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.yk) ; 2 uses
  %i.yn = add nuw i64 %.sroa.022.0.ph429.i.lcssa, 2 ; 2 uses
  br i1 %i.dd, label %.outer.split.us.1.i, label %.outer.split.preheader.1.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i: ; preds = %.outer.split.us.i
  br i1 %i.dd, label %.outer.split.preheader.2.i, label %.outer.split.preheader.1.i

.outer.split.preheader.1.i:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %i.yo = phi i64 [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ], [ %i.yn, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %..i199690.i = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ], [ %..i199.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %exitcond.1.not.i12201227 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.1.not.i12201227, label %.split.1.i, label %.lr.ph1222

.lr.ph1222:                                       ; preds = %.outer.split.preheader.1.i, %.outer.1.i
  %umax.1.i1231 = phi i64 [ %umax.1.i, %.outer.1.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.preheader.1.i ]
  %.sroa.060.0.ph427.1.i1230 = phi i64 [ %i.yr, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ]
  %.sroa.025.0.ph428.1.i1229 = phi i64 [ %..i201.1.i, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ] ; 2 uses
  %.sroa.022.0.ph429.1.i1228 = phi i64 [ %..i200.1.i, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ] ; 2 uses
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gm
  %exitcond.1.not.i = icmp eq i64 %i.yr, %umax.1.i1231
  br i1 %exitcond.1.not.i, label %.split.1.i, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph1222, %bb.gk
  %.sroa.060.0.1.i1221 = phi i64 [ %.sroa.060.0.ph427.1.i1230, %.lr.ph1222 ], [ %i.yr, %bb.gk ] ; 2 uses
  %i.yp = add i64 %.sroa.060.0.1.i1221, %.sroa.0.0.i207.fr679.i ; 3 uses
  %i.yq = icmp ult i64 %i.yp, %.sroa.0.0.i207.fr679.i
  br i1 %i.yq, label %.invoke, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.yr = add i64 %.sroa.060.0.1.i1221, 1         ; 5 uses
  %.not133.1.i = icmp ult i64 %i.yp, %i.cf
  br i1 %.not133.1.i, label %bb.gn, label %bb.gk

bb.gn:                                            ; preds = %bb.gm
  %i.ys = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.yp ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 136
  %i.yu = load i64, ptr %i.yt, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.yv = icmp eq i64 %i.yu, 0
  %..1.i = select i1 %i.yv, i64 0, i64 4
  %i.yw = add i64 %..1.i, %i.yu                   ; 2 uses
  %i.yx = icmp ult i64 %i.yw, %i.yu
  br i1 %i.yx, label %.invoke, label %.outer.1.i

.outer.1.i:                                       ; preds = %bb.gn
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 128
  %i.yz = load i64, ptr %i.yy, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.1.i = call noundef i64 @llvm.umax.i64(i64 %i.yz, i64 %.sroa.022.0.ph429.1.i1228) ; 2 uses
  %..i201.1.i = call noundef i64 @llvm.umax.i64(i64 %i.yw, i64 %.sroa.025.0.ph428.1.i1229) ; 2 uses
  %umax.1.i = call i64 @llvm.umax.i64(i64 %i.yr, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.1.not.i1220.not = icmp ult i64 %i.yr, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.1.not.i1220.not, label %.lr.ph1222, label %.split.1.i

.outer.split.us.1.i:                              ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %.not.1.i = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %.not.1.i, label %.outer.split.preheader.2.i, label %.invoke992

.split.1.i:                                       ; preds = %.outer.1.i, %bb.gk, %.outer.split.preheader.1.i
  %.sroa.022.0.ph429.1.i.lcssa = phi i64 [ %.sroa.022.0.ph429.1.i1228, %bb.gk ], [ 0, %.outer.split.preheader.1.i ], [ %..i200.1.i, %.outer.1.i ] ; 4 uses
  %.sroa.025.0.ph428.1.i.lcssa = phi i64 [ %.sroa.025.0.ph428.1.i1229, %bb.gk ], [ 0, %.outer.split.preheader.1.i ], [ %..i201.1.i, %.outer.1.i ]
  %i.za = add i64 %.sroa.025.0.ph428.1.i.lcssa, %.sroa.022.0.ph429.1.i.lcssa ; 2 uses
  %i.zb = icmp ult i64 %i.za, %.sroa.022.0.ph429.1.i.lcssa
  br i1 %i.zb, label %.invoke, label %bb.go

bb.go:                                            ; preds = %.split.1.i
  %i.zc = icmp ugt i64 %.sroa.022.0.ph429.1.i.lcssa, -3
  br i1 %i.zc, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i: ; preds = %bb.go
  %..i199.1.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.za)
  %i.zd = add nuw i64 %.sroa.022.0.ph429.1.i.lcssa, 2
  %i.ze = icmp slt i64 %.sroa.0.0.i207.fr679.i, 0
  %i.zf = shl nuw i64 %.sroa.0.0.i207.fr679.i, 1
  br i1 %i.ze, label %.invoke992, label %.outer.split.preheader.2.i

.outer.split.preheader.2.i:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i
  %i.zg = phi i64 [ %i.zf, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ] ; 2 uses
  %i.zh = phi i64 [ %i.zd, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 2, %.outer.split.us.1.i ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ]
  %..i199.1710.i = phi i64 [ %..i199.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ] ; 2 uses
  %..i199689697703708.i = phi i64 [ %..i199690.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %..i199.i, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ] ; 3 uses
  %i.zi = phi i64 [ %i.yo, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %i.yn, %.outer.split.us.1.i ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ]
  %exitcond.2.not.i12341241 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.2.not.i12341241, label %.split.2.i, label %.lr.ph1236

.lr.ph1236:                                       ; preds = %.outer.split.preheader.2.i, %.outer.2.i
  %umax.2.i1245 = phi i64 [ %umax.2.i, %.outer.2.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.preheader.2.i ]
  %.sroa.060.0.ph427.2.i1244 = phi i64 [ %i.zl, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ]
  %.sroa.025.0.ph428.2.i1243 = phi i64 [ %..i201.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  %.sroa.022.0.ph429.2.i1242 = phi i64 [ %..i200.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gr
  %exitcond.2.not.i = icmp eq i64 %i.zl, %umax.2.i1245
  br i1 %exitcond.2.not.i, label %.split.2.i, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph1236, %bb.gp
  %.sroa.060.0.2.i1235 = phi i64 [ %.sroa.060.0.ph427.2.i1244, %.lr.ph1236 ], [ %i.zl, %bb.gp ] ; 2 uses
  %i.zj = add i64 %.sroa.060.0.2.i1235, %i.zg     ; 3 uses
  %i.zk = icmp ult i64 %i.zj, %i.zg
  br i1 %i.zk, label %.invoke, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.zl = add i64 %.sroa.060.0.2.i1235, 1         ; 5 uses
  %.not133.2.i = icmp ult i64 %i.zj, %i.cf
  br i1 %.not133.2.i, label %bb.gs, label %bb.gp

bb.gs:                                            ; preds = %bb.gr
  %i.zm = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.zj ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 136
  %i.zo = load i64, ptr %i.zn, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.zp = icmp eq i64 %i.zo, 0
  %..2.i = select i1 %i.zp, i64 0, i64 4
  %i.zq = add i64 %..2.i, %i.zo                   ; 2 uses
  %i.zr = icmp ult i64 %i.zq, %i.zo
  br i1 %i.zr, label %.invoke, label %.outer.2.i

.outer.2.i:                                       ; preds = %bb.gs
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zm, i64 128
  %i.zt = load i64, ptr %i.zs, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.2.i = call noundef i64 @llvm.umax.i64(i64 %i.zt, i64 %.sroa.022.0.ph429.2.i1242) ; 2 uses
  %..i201.2.i = call noundef i64 @llvm.umax.i64(i64 %i.zq, i64 %.sroa.025.0.ph428.2.i1243) ; 2 uses
  %umax.2.i = call i64 @llvm.umax.i64(i64 %i.zl, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.2.not.i1234.not = icmp ult i64 %i.zl, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.2.not.i1234.not, label %.lr.ph1236, label %.split.2.i

.split.2.i:                                       ; preds = %.outer.2.i, %bb.gp, %.outer.split.preheader.2.i
  %.sroa.022.0.ph429.2.i.lcssa = phi i64 [ %.sroa.022.0.ph429.2.i1242, %bb.gp ], [ 0, %.outer.split.preheader.2.i ], [ %..i200.2.i, %.outer.2.i ] ; 4 uses
  %.sroa.025.0.ph428.2.i.lcssa = phi i64 [ %.sroa.025.0.ph428.2.i1243, %bb.gp ], [ 0, %.outer.split.preheader.2.i ], [ %..i201.2.i, %.outer.2.i ]
  %i.zu = add i64 %.sroa.025.0.ph428.2.i.lcssa, %.sroa.022.0.ph429.2.i.lcssa ; 2 uses
  %i.zv = icmp ult i64 %i.zu, %.sroa.022.0.ph429.2.i.lcssa
  br i1 %i.zv, label %.invoke, label %bb.gt

bb.gt:                                            ; preds = %.split.2.i
  %i.zw = icmp ugt i64 %.sroa.022.0.ph429.2.i.lcssa, -3
  br i1 %i.zw, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i: ; preds = %bb.gt
  %..i199.2.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.zu) ; 2 uses
  %i.zx = add nuw i64 %.sroa.022.0.ph429.2.i.lcssa, 2
  %i.zy = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr679.i, i64 3) ; 2 uses
  %i.zz = extractvalue { i64, i1 } %i.zy, 1
  %i.aaa = extractvalue { i64, i1 } %i.zy, 0      ; 2 uses
  br i1 %i.zz, label %.invoke992, label %.outer.split.3.i.preheader

.outer.split.3.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i
  %exitcond.3.not.i12481255 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.3.not.i12481255, label %.split.3.i, label %.lr.ph1250

.lr.ph1250:                                       ; preds = %.outer.split.3.i.preheader, %.outer.3.i
  %umax.3.i1259 = phi i64 [ %umax.3.i, %.outer.3.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.3.i.preheader ]
  %.sroa.060.0.ph427.3.i1258 = phi i64 [ %i.aad, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ]
  %.sroa.025.0.ph428.3.i1257 = phi i64 [ %..i201.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.3.i1256 = phi i64 [ %..i200.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gw
  %exitcond.3.not.i = icmp eq i64 %i.aad, %umax.3.i1259
  br i1 %exitcond.3.not.i, label %.split.3.i, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph1250, %bb.gu
  %.sroa.060.0.3.i1249 = phi i64 [ %.sroa.060.0.ph427.3.i1258, %.lr.ph1250 ], [ %i.aad, %bb.gu ] ; 2 uses
  %i.aab = add i64 %.sroa.060.0.3.i1249, %i.aaa   ; 3 uses
  %i.aac = icmp ult i64 %i.aab, %i.aaa
  br i1 %i.aac, label %.invoke, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aad = add i64 %.sroa.060.0.3.i1249, 1        ; 5 uses
  %.not133.3.i = icmp ult i64 %i.aab, %i.cf
  br i1 %.not133.3.i, label %bb.gx, label %bb.gu

bb.gx:                                            ; preds = %bb.gw
  %i.aae = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aab ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 136
  %i.aag = load i64, ptr %i.aaf, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.aah = icmp eq i64 %i.aag, 0
  %..3.i = select i1 %i.aah, i64 0, i64 4
  %i.aai = add i64 %..3.i, %i.aag                 ; 2 uses
  %i.aaj = icmp ult i64 %i.aai, %i.aag
  br i1 %i.aaj, label %.invoke, label %.outer.3.i

.outer.3.i:                                       ; preds = %bb.gx
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 128
  %i.aal = load i64, ptr %i.aak, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aal, i64 %.sroa.022.0.ph429.3.i1256) ; 2 uses
  %..i201.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aai, i64 %.sroa.025.0.ph428.3.i1257) ; 2 uses
  %umax.3.i = call i64 @llvm.umax.i64(i64 %i.aad, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.3.not.i1248.not = icmp ult i64 %i.aad, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.3.not.i1248.not, label %.lr.ph1250, label %.split.3.i

.split.3.i:                                       ; preds = %.outer.3.i, %bb.gu, %.outer.split.3.i.preheader
  %.sroa.022.0.ph429.3.i.lcssa = phi i64 [ %.sroa.022.0.ph429.3.i1256, %bb.gu ], [ 0, %.outer.split.3.i.preheader ], [ %..i200.3.i, %.outer.3.i ] ; 4 uses
  %.sroa.025.0.ph428.3.i.lcssa = phi i64 [ %.sroa.025.0.ph428.3.i1257, %bb.gu ], [ 0, %.outer.split.3.i.preheader ], [ %..i201.3.i, %.outer.3.i ]
  %i.aam = add i64 %.sroa.025.0.ph428.3.i.lcssa, %.sroa.022.0.ph429.3.i.lcssa ; 2 uses
  %i.aan = icmp ult i64 %i.aam, %.sroa.022.0.ph429.3.i.lcssa
  br i1 %i.aan, label %.invoke, label %bb.gy

bb.gy:                                            ; preds = %.split.3.i
  %i.aao = icmp ugt i64 %.sroa.022.0.ph429.3.i.lcssa, -3
  br i1 %i.aao, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i: ; preds = %bb.gy
  %..i199.3.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aam) ; 2 uses
  %i.aap = add nuw i64 %.sroa.022.0.ph429.3.i.lcssa, 2
  %i.aaq = icmp ugt i64 %.sroa.0.0.i207.fr679.i, 4611686018427387903
  %i.aar = shl nuw i64 %.sroa.0.0.i207.fr679.i, 2 ; 2 uses
  br i1 %i.aaq, label %.invoke992, label %.outer.split.4.i.preheader

.outer.split.4.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i
  %exitcond.4.not.i12621269 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.4.not.i12621269, label %.split.4.i, label %.lr.ph1264

.lr.ph1264:                                       ; preds = %.outer.split.4.i.preheader, %.outer.4.i
  %umax.4.i1273 = phi i64 [ %umax.4.i, %.outer.4.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.4.i.preheader ]
  %.sroa.060.0.ph427.4.i1272 = phi i64 [ %i.aau, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ]
  %.sroa.025.0.ph428.4.i1271 = phi i64 [ %..i201.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.4.i1270 = phi i64 [ %..i200.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  br label %bb.ha

bb.gz:                                            ; preds = %bb.hb
  %exitcond.4.not.i = icmp eq i64 %i.aau, %umax.4.i1273
  br i1 %exitcond.4.not.i, label %.split.4.i, label %bb.ha

bb.ha:                                            ; preds = %.lr.ph1264, %bb.gz
  %.sroa.060.0.4.i1263 = phi i64 [ %.sroa.060.0.ph427.4.i1272, %.lr.ph1264 ], [ %i.aau, %bb.gz ] ; 2 uses
  %i.aas = add i64 %.sroa.060.0.4.i1263, %i.aar   ; 3 uses
  %i.aat = icmp ult i64 %i.aas, %i.aar
  br i1 %i.aat, label %.invoke, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aau = add i64 %.sroa.060.0.4.i1263, 1        ; 5 uses
  %.not133.4.i = icmp ult i64 %i.aas, %i.cf
  br i1 %.not133.4.i, label %bb.hc, label %bb.gz

bb.hc:                                            ; preds = %bb.hb
  %i.aav = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aas ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 136
  %i.aax = load i64, ptr %i.aaw, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.aay = icmp eq i64 %i.aax, 0
  %..4.i = select i1 %i.aay, i64 0, i64 4
  %i.aaz = add i64 %..4.i, %i.aax                 ; 2 uses
  %i.aba = icmp ult i64 %i.aaz, %i.aax
  br i1 %i.aba, label %.invoke, label %.outer.4.i

.outer.4.i:                                       ; preds = %bb.hc
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aav, i64 128
  %i.abc = load i64, ptr %i.abb, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abc, i64 %.sroa.022.0.ph429.4.i1270) ; 2 uses
  %..i201.4.i = call noundef i64 @llvm.umax.i64(i64 %i.aaz, i64 %.sroa.025.0.ph428.4.i1271) ; 2 uses
  %umax.4.i = call i64 @llvm.umax.i64(i64 %i.aau, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.4.not.i1262.not = icmp ult i64 %i.aau, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.4.not.i1262.not, label %.lr.ph1264, label %.split.4.i

.split.4.i:                                       ; preds = %.outer.4.i, %bb.gz, %.outer.split.4.i.preheader
  %.sroa.022.0.ph429.4.i.lcssa = phi i64 [ %.sroa.022.0.ph429.4.i1270, %bb.gz ], [ 0, %.outer.split.4.i.preheader ], [ %..i200.4.i, %.outer.4.i ] ; 4 uses
  %.sroa.025.0.ph428.4.i.lcssa = phi i64 [ %.sroa.025.0.ph428.4.i1271, %bb.gz ], [ 0, %.outer.split.4.i.preheader ], [ %..i201.4.i, %.outer.4.i ]
  %i.abd = add i64 %.sroa.025.0.ph428.4.i.lcssa, %.sroa.022.0.ph429.4.i.lcssa ; 2 uses
  %i.abe = icmp ult i64 %i.abd, %.sroa.022.0.ph429.4.i.lcssa
  br i1 %i.abe, label %.invoke, label %bb.hd

bb.hd:                                            ; preds = %.split.4.i
  %i.abf = icmp ugt i64 %.sroa.022.0.ph429.4.i.lcssa, -3
  br i1 %i.abf, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i: ; preds = %bb.hd
  %..i199.4.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.abd) ; 2 uses
  %i.abg = add nuw i64 %.sroa.022.0.ph429.4.i.lcssa, 2
  %i.abh = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr679.i, i64 5) ; 2 uses
  %i.abi = extractvalue { i64, i1 } %i.abh, 1
  %i.abj = extractvalue { i64, i1 } %i.abh, 0     ; 2 uses
  br i1 %i.abi, label %.invoke992, label %.outer.split.5.i.preheader

.outer.split.5.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i
  %exitcond.5.not.i12761283 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.5.not.i12761283, label %.split.5.i, label %.lr.ph1278

.lr.ph1278:                                       ; preds = %.outer.split.5.i.preheader, %.outer.5.i
  %umax.5.i1287 = phi i64 [ %umax.5.i, %.outer.5.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.5.i.preheader ]
  %.sroa.060.0.ph427.5.i1286 = phi i64 [ %i.abm, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ]
  %.sroa.025.0.ph428.5.i1285 = phi i64 [ %..i201.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.5.i1284 = phi i64 [ %..i200.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  br label %bb.hf

bb.he:                                            ; preds = %bb.hg
  %exitcond.5.not.i = icmp eq i64 %i.abm, %umax.5.i1287
  br i1 %exitcond.5.not.i, label %.split.5.i, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph1278, %bb.he
  %.sroa.060.0.5.i1277 = phi i64 [ %.sroa.060.0.ph427.5.i1286, %.lr.ph1278 ], [ %i.abm, %bb.he ] ; 2 uses
  %i.abk = add i64 %.sroa.060.0.5.i1277, %i.abj   ; 3 uses
  %i.abl = icmp ult i64 %i.abk, %i.abj
  br i1 %i.abl, label %.invoke, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.abm = add i64 %.sroa.060.0.5.i1277, 1        ; 5 uses
  %.not133.5.i = icmp ult i64 %i.abk, %i.cf
  br i1 %.not133.5.i, label %bb.hh, label %bb.he

bb.hh:                                            ; preds = %bb.hg
  %i.abn = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.abk ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 136
  %i.abp = load i64, ptr %i.abo, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.abq = icmp eq i64 %i.abp, 0
  %..5.i = select i1 %i.abq, i64 0, i64 4
  %i.abr = add i64 %..5.i, %i.abp                 ; 2 uses
  %i.abs = icmp ult i64 %i.abr, %i.abp
  br i1 %i.abs, label %.invoke, label %.outer.5.i

.outer.5.i:                                       ; preds = %bb.hh
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abn, i64 128
  %i.abu = load i64, ptr %i.abt, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abu, i64 %.sroa.022.0.ph429.5.i1284) ; 2 uses
  %..i201.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abr, i64 %.sroa.025.0.ph428.5.i1285) ; 2 uses
  %umax.5.i = call i64 @llvm.umax.i64(i64 %i.abm, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.5.not.i1276.not = icmp ult i64 %i.abm, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.5.not.i1276.not, label %.lr.ph1278, label %.split.5.i

.split.5.i:                                       ; preds = %.outer.5.i, %bb.he, %.outer.split.5.i.preheader
  %.sroa.022.0.ph429.5.i.lcssa = phi i64 [ %.sroa.022.0.ph429.5.i1284, %bb.he ], [ 0, %.outer.split.5.i.preheader ], [ %..i200.5.i, %.outer.5.i ] ; 4 uses
  %.sroa.025.0.ph428.5.i.lcssa = phi i64 [ %.sroa.025.0.ph428.5.i1285, %bb.he ], [ 0, %.outer.split.5.i.preheader ], [ %..i201.5.i, %.outer.5.i ]
  %i.abv = add i64 %.sroa.025.0.ph428.5.i.lcssa, %.sroa.022.0.ph429.5.i.lcssa ; 2 uses
  %i.abw = icmp ult i64 %i.abv, %.sroa.022.0.ph429.5.i.lcssa
  br i1 %i.abw, label %.invoke, label %bb.hi

bb.hi:                                            ; preds = %.split.5.i
  %i.abx = icmp ugt i64 %.sroa.022.0.ph429.5.i.lcssa, -3
  br i1 %i.abx, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i

14:                                               ; preds = %11
  %15 = add i64 %.sroa.060.0.i1209, 1             ; 5 uses
  %.not133.i = icmp ult i64 %12, %i.cf
  br i1 %.not133.i, label %bb.hj, label %10

bb.hj:                                            ; preds = %14
  %16 = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %12 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %16, i64 136
  %i.abz = load i64, ptr %i.aby, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %17 = icmp eq i64 %i.abz, 0
  %..i53 = select i1 %17, i64 0, i64 4
  %18 = add i64 %..i53, %i.abz                    ; 2 uses
  %i.aca = icmp ult i64 %18, %i.abz
  br i1 %i.aca, label %.invoke, label %.outer.i

.outer.i:                                         ; preds = %bb.hj
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 128
  %20 = load i64, ptr %19, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.i = call noundef i64 @llvm.umax.i64(i64 %20, i64 %.sroa.022.0.ph429.i1214) ; 2 uses
  %..i201.i = call noundef i64 @llvm.umax.i64(i64 %18, i64 %.sroa.025.0.ph428.i1215) ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %15, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.not.i1208.not = icmp ult i64 %15, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.not.i1208.not, label %.lr.ph, label %.split.i

.outer.split.us.i:                                ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i
  br i1 %.not.i58, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i, label %.invoke992

.lr.ph:                                           ; preds = %.outer.split.i.preheader, %.outer.i
  %umax.i1217 = phi i64 [ %umax.i, %.outer.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.i.preheader ]
  %.sroa.060.0.ph427.i1216 = phi i64 [ %15, %.outer.i ], [ 0, %.outer.split.i.preheader ]
  %.sroa.025.0.ph428.i1215 = phi i64 [ %..i201.i, %.outer.i ], [ 0, %.outer.split.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.i1214 = phi i64 [ %..i200.i, %.outer.i ], [ 0, %.outer.split.i.preheader ] ; 2 uses
  br label %11

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit: ; preds = %bb.x, %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2951
  %.not.i = icmp eq i64 %i.eo, 0
  %or.cond = select i1 %.not898.i.not, i1 true, i1 %.not.i
  br i1 %or.cond, label %.thread, label %.backedge524.backedge

bb.hk:                                            ; preds = %.body
  %i.acb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.hl:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 121) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !3003
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !12

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !5
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !3003
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !13

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !8

end_hunk_2
