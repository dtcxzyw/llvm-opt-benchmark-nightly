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
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.h ], [ %.pn.i, %bb.b ], [ %.pn130.i, %.body192.i ], [ %i.yl, %bb.gg ], [ %lpad.loopexit186.i.i, %.loopexit.i.i ], [ %i.tf, %bb.ew ], [ %i.pt, %bb.cp ], [ %lpad.phi.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i ], [ %lpad.loopexit160, %.loopexit ], [ %lpad.loopexit169, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager13PageRenderingEBF_(ptr noalias nofree noundef align 8 dereferenceable(296) %i.al) #35
          to label %bb.hn unwind label %bb.hm

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
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.de = icmp ne i64 %i.ck, 0
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
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
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
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
  %.not482 = xor i1 %i.cl, true
  %brmerge = select i1 %.not482, i1 true, i1 %i.cm ; 2 uses
  %brmerge484 = select i1 %brmerge, i1 true, i1 %.not2.i.i
  %.mux.mux = select i1 %i.cl, i64 %i.ck, i64 0
  %.mux483.mux = select i1 %brmerge, i64 %i.ci, i64 1
  %spec.select = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select777 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %spec.select784 = select i1 %i.db, i64 %i.cy, i64 %..i137.i
  %brmerge486.not = select i1 %i.cl, i1 %i.de, i1 false
  %invariant.op = sub i8 20, %.val.i143.i
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %.backedge524

.backedge524:                                     ; preds = %.backedge524.backedge, %bb.i
  %.sroa.4.0481 = phi i64 [ 6, %bb.i ], [ %i.en, %.backedge524.backedge ] ; 13 uses
  %i.en = add i64 %.sroa.4.0481, -1               ; 5 uses
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
  %i.eo = urem i64 %i.cf, %.sroa.4.0481
  %.not.i43 = icmp ne i64 %i.eo, 0
  %i.ep = udiv i64 %i.cf, %.sroa.4.0481
  %..i = zext i1 %.not.i43 to i64
  %i.eq = add nuw nsw i64 %i.ep, %..i             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.eq, ptr %i.ah, align 8
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2943) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.es = urem i64 %i.cf, %i.eq
  %.not.i46 = icmp ne i64 %i.es, 0
  %i.et = udiv i64 %i.cf, %i.eq
  %..i47 = zext i1 %.not.i46 to i64
  %i.eu = add nuw nsw i64 %i.et, %..i47           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not = icmp ugt i64 %i.eu, %.sroa.4.0481
  br i1 %.not, label %bb.n, label %.thread129, !prof !2947

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2920) #36
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  %.not142 = icmp eq i64 %.sroa.4.0481, 1
  br i1 %.not142, label %.loopexit177.thread780, label %.backedge524.backedge

.thread129:                                       ; preds = %bb.m
  %i.ev = icmp ne i64 %.sroa.4.0481, 1
  %i.ew = icmp ult i64 %i.eu, %.sroa.4.0481
  %or.cond132 = and i1 %i.ev, %i.ew
  br i1 %or.cond132, label %.backedge524.backedge, label %bb.q

.backedge524.backedge:                            ; preds = %.thread129, %bb.o, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  br label %.backedge524

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %.thread129
  store i64 %.sroa.4.0481, ptr %i.aq, align 8
  store i64 %i.eq, ptr %i.ap, align 8
  br i1 %brmerge484, label %.loopexit177.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i = phi i64 [ %i.ex, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.eq
  br i1 %.not6.i.i, label %.loopexit177, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ex = sub nuw i64 %.sroa.0.03.i.i, %i.eq      ; 3 uses
  %.not.i.i = icmp ult i64 %i.ex, %i.cf
  br i1 %.not.i.i, label %.loopexit177, label %.lr.ph.i.i

.loopexit177:                                     ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.ex, %bb.r ]
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
  %i.ey = urem i64 %i.cf, %.sroa.4.0481
  %.not.i.i52 = icmp ne i64 %i.ey, 0
  %i.ez = udiv i64 %i.cf, %.sroa.4.0481
  %..i138.i = zext i1 %.not.i.i52 to i64
  %i.fa = add nuw nsw i64 %i.ez, %..i138.i        ; 5 uses
  %i.fb = icmp ule i64 %i.fa, %spec.select778
  %or.cond4.not.i = select i1 %i.db, i1 true, i1 %i.fb
  br i1 %or.cond4.not.i, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %.loopexit177.thread780, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %spec.select779 = phi i64 [ %spec.select778, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ], [ %spec.select784, %.loopexit177.thread780 ]
  %.sroa.0.0.i208.i = phi i64 [ %i.fa, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ], [ 0, %.loopexit177.thread780 ]
  store i64 0, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  %.sroa.0.0.i207.fr678.i = freeze i64 %.sroa.0.0.i208.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %i.fc = sub nuw nsw i64 %i.fa, %spec.select778  ; 3 uses
  store i64 %i.fc, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.t, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.fe = add nuw nsw i64 %spec.select778, 1
  store i64 0, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i: ; preds = %bb.t, %bb.s, %.thread.i
  %.sroa.0.0.i207.fr679.i = phi i64 [ %i.fa, %bb.t ], [ %i.fa, %bb.s ], [ %.sroa.0.0.i207.fr678.i, %.thread.i ] ; 37 uses
  %i.ff = phi i64 [ 0, %bb.t ], [ %i.fc, %bb.s ], [ 0, %.thread.i ]
  %.sroa.08.1.i = phi i64 [ %i.fe, %bb.t ], [ %spec.select778, %bb.s ], [ %spec.select779, %.thread.i ] ; 4 uses
  %.not.i58 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %.not.i58, label %.split.i, label %.lr.ph

.invoke:                                          ; preds = %bb.gk, %bb.gp, %bb.gu, %bb.gz, %bb.he, %bb.hj, %.split.i, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %bb.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i, %bb.hl, %bb.go, %bb.gt, %bb.gy, %bb.hd, %bb.hi, %bb.gm, %bb.gr, %bb.gw, %bb.hb, %bb.hg, %bb.ag, %bb.ae
  %2 = phi ptr [ @2877, %bb.gt ], [ @2876, %bb.hg ], [ @3129, %bb.ae ], [ @2876, %bb.gw ], [ @2876, %bb.hb ], [ @2877, %bb.hl ], [ @2877, %bb.go ], [ @2877, %bb.hd ], [ @2877, %bb.hi ], [ @2876, %bb.gm ], [ @2876, %bb.gr ], [ @2877, %bb.gy ], [ @2856, %bb.ag ], [ @2874, %.split.i ], [ @2875, %bb.gk ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i ], [ @2874, %.split.5.i ], [ @2874, %.split.4.i ], [ @2874, %.split.3.i ], [ @2874, %.split.2.i ], [ @2874, %.split.1.i ], [ @2875, %bb.hj ], [ @2875, %bb.he ], [ @2875, %bb.gz ], [ @2875, %bb.gu ], [ @2875, %bb.gp ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i ], [ @2860, %bb.u ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i: ; preds = %bb.hj
  %..i199.5.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.abt) ; 2 uses
  %i.fg = add nuw i64 %.sroa.022.0.ph429.5.i.lcssa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2951
  store i64 %..i199.i, ptr %i.ag, align 8, !noalias !2951
  store i64 %4, ptr %.sroa.6.0..sroa_idx.i54, align 8, !noalias !2951
  store i64 %..i199.1.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.ze, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.zv, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.3.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.aan, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.4.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.abe, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.5.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.fg, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2951
  %i.fh = add i64 %..i199.1.i, %..i199.i          ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %..i199.i
  br i1 %i.fi, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i
  %i.fj = add i64 %..i199.2.i, %i.fh              ; 3 uses
  %i.fk = icmp ult i64 %i.fj, %i.fh
  br i1 %i.fk, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i
  %i.fl = add i64 %..i199.3.i, %i.fj              ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %i.fj
  br i1 %i.fm, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i
  %i.fn = add i64 %..i199.4.i, %i.fl              ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.fl
  br i1 %i.fo, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i
  %i.fp = add i64 %..i199.5.i, %i.fn              ; 3 uses
  %i.fq = icmp ult i64 %i.fp, %i.fn
  br i1 %i.fq, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i
  %i.fr = icmp slt i64 %i.en, 0
  br i1 %i.fr, label %.invoke992, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i
  %i.fs = shl nuw i64 %i.en, 1
  %i.ft = add i64 %i.fp, %i.fs                    ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fp
  br i1 %i.fu, label %.invoke, label %bb.v

.invoke992:                                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i, %bb.af
  %3 = phi ptr [ @2856, %bb.af ], [ @2859, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #37
          to label %.cont993 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont993:                                         ; preds = %.invoke992
  unreachable

bb.v:                                             ; preds = %bb.u
  %.not898.i.not = icmp uge i64 %i.ba, %i.ft      ; 2 uses
  br i1 %.not898.i.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not114.i = icmp ugt i64 %.sroa.0.0.i207.fr679.i, %.sroa.08.1.i
  br i1 %.not114.i, label %bb.y, label %.thread219.i

bb.x:                                             ; preds = %bb.v
  %.not132.i = icmp eq i64 %.sroa.4.0481, 1
  br i1 %.not132.i, label %bb.gi, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit, !prof !7

bb.y:                                             ; preds = %bb.w
  %i.fv = sub nuw nsw i64 %.sroa.0.0.i207.fr679.i, %.sroa.08.1.i
  %..i141.i = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %i.cr) ; 2 uses
  %i.fw = add nuw nsw i64 %..i141.i, %.sroa.08.1.i
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.y, %bb.w
  %.sroa.034.0217224.i = phi i64 [ %..i141.i, %bb.y ], [ 0, %bb.w ] ; 7 uses
  %.sroa.028.0218223.i = phi i64 [ %i.fw, %bb.y ], [ %.sroa.0.0.i207.fr679.i, %bb.w ] ; 6 uses
  %i.fx = sub nuw nsw i64 %.sroa.028.0218223.i, %.sroa.034.0217224.i
  %.not118.i = icmp ugt i64 %i.fx, %.sroa.08.1.i
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
  %i.fy = urem i64 %i.cf, %.sroa.4.0481
  %.not.i.i.i = icmp ne i64 %i.fy, 0
  %i.fz = udiv i64 %i.cf, %.sroa.4.0481
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.ga = add nuw nsw i64 %i.fz, %..i.i.i         ; 7 uses
  br i1 %brmerge486.not, label %bb.ac, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.gb = icmp eq i64 %i.ga, 0                    ; 3 uses
  %brmerge489 = select i1 %i.gb, i1 true, i1 %.not2.i.i
  %.mux491 = select i1 %i.gb, i64 undef, i64 %i.ck
  %not. = xor i1 %i.gb, true
  br i1 %brmerge489, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.gc, %bb.ad ], [ %i.ck, %bb.ac ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.sroa.0.03.i.i.i.i, %i.ga
  br i1 %.not6.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gc = sub nuw i64 %.sroa.0.03.i.i.i.i, %i.ga  ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.gc, %i.cf
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i, %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i138 = phi i64 [ %i.ga, %bb.ac ], [ %i.ga, %bb.ab ], [ 0, %bb.aa ], [ %i.ga, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.ad ]
  %.sroa.7.0.i.i.i = phi i64 [ %.mux491, %bb.ac ], [ 0, %bb.ab ], [ undef, %bb.aa ], [ %i.gc, %bb.ad ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.i18.i.i = phi i1 [ %not., %bb.ac ], [ %i.cl, %bb.ab ], [ false, %bb.aa ], [ true, %.lr.ph.i.i.i.i ], [ true, %bb.ad ]
  %i.gd = icmp samesign ult i64 %.sroa.034.0217224.i, %.sroa.028.0218223.i
  br i1 %i.gd, label %.lr.ph303.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

.lr.ph303.i.i:                                    ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, %._crit_edge.i.i
  %.sroa.08.0302.i.i = phi i64 [ %i.ge, %._crit_edge.i.i ], [ %.sroa.034.0217224.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ] ; 4 uses
  %i.ge = add nuw nsw i64 %.sroa.08.0302.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2956
  store ptr %i.ag, ptr %i.m, align 8, !noalias !2956
  store ptr %i.dd, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !2956
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2957
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit

.noexc65:                                         ; preds = %.lr.ph303.i.i
  %i.gf = load i64, ptr %i.k, align 8, !range !22, !noalias !2957, !noundef !5
  %i.gg = trunc nuw i64 %i.gf to i1
  br i1 %i.gg, label %.lr.ph.i.i57, label %._crit_edge.i.i

.lr.ph.i.i57:                                     ; preds = %.noexc65
  %i.gh = trunc i64 %.sroa.08.0302.i.i to i1      ; 4 uses
  %spec.select.i.i.i.i = select i1 %i.gh, i8 22, i8 18
  %i.gi = select i1 %i.gh, i8 4, i8 0
  %spec.select.i134.i.reass.reass.i.reass.i.reass.reass = add i8 %i.gi, %invariant.op
  %spec.select.i137.i.i.i = select i1 %i.gh, i8 24, i8 20
  %spec.select.i140.i.i.i = select i1 %i.gh, i8 25, i8 21
  %i.gj = sub nuw nsw i64 %.sroa.08.0302.i.i, %.sroa.034.0217224.i
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc72, %.lr.ph.i.i57
  call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  %i.gk = load i64, ptr %i.df, align 8, !noalias !2959, !noundef !5 ; 8 uses
  %i.gl = load i64, ptr %i.dg, align 8, !noalias !2959, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2959
  %i.gm = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !2958, !noalias !2960, !noundef !5 ; 4 uses
  %i.gn = icmp eq i64 %i.gm, -1
  br i1 %i.gn, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.go = add nuw i64 %i.gm, 1
  store i64 %i.go, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !2958, !noalias !2960
  %i.gp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gm, i64 %.sroa.0.0.i.i.i138) ; 2 uses
  %i.gq = extractvalue { i64, i1 } %i.gp, 1
  br i1 %i.gq, label %.invoke992, label %bb.ag

._crit_edge.i.i:                                  ; preds = %.noexc72, %.noexc65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2956
  %exitcond.not.i.i = icmp eq i64 %i.ge, %.sroa.028.0218223.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.loopexit.i, label %.lr.ph303.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gr = extractvalue { i64, i1 } %i.gp, 0       ; 2 uses
  %i.gs = add i64 %i.gr, %.sroa.08.0302.i.i       ; 20 uses
  %i.gt = icmp ult i64 %i.gs, %i.gr
  br i1 %i.gt, label %.invoke, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not16.i.i = icmp ugt i64 %i.cf, %i.gs
  br i1 %.not16.i.i, label %bb.ai, label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.gu = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.gs ; 9 uses
  %i.gv = icmp eq i64 %i.gs, %.sroa.7.0.i.i.i
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i18.i.i, i1 %i.gv, i1 false ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.gx = load i16, ptr %i.gw, align 8, !alias.scope !2961, !noalias !2962, !noundef !5
  %i.gy = and i16 %i.gx, 1024
  %.not17.not.i.i = icmp eq i16 %i.gy, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2956
  call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2964
  store i64 0, ptr %i.j, align 8, !noalias !2964
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.483.0..sroa_idx.i.i.i, align 8, !noalias !2964
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.584.0..sroa_idx.i.i.i, i8 0, i64 17, i1 false), !noalias !2964
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !2965, !noalias !2966, !noundef !5 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 136
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !2965, !noalias !2966, !noundef !5 ; 6 uses
  %i.hd = icmp eq i64 %i.hc, 0
  %..i19.i.i = select i1 %i.hd, i64 0, i64 4
  %i.he = add i64 %..i19.i.i, %i.hc               ; 4 uses
  %i.hf = icmp ult i64 %i.he, %i.hc
  br i1 %i.hf, label %.invoke.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = add i64 %i.he, %i.ha                    ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.ha
  br i1 %i.hh, label %.invoke.i.i.i, label %bb.am

.invoke.i.i.i:                                    ; preds = %bb.ax, %bb.ap, %bb.aj, %bb.ai
  %i.hi = phi ptr [ @2884, %bb.ax ], [ @2881, %bb.ap ], [ @2878, %bb.aj ], [ @2877, %bb.ai ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hi) #36
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
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 4
  %i.wz = load i8, ptr %i.wo, align 1, !noalias !2994, !noundef !5
  %i.xa = shl nuw nsw i32 %i.wd, 18
  %i.xb = and i32 %i.xa, 1835008
  %i.xc = shl nuw nsw i32 %i.wt, 6
  %i.xd = and i8 %i.wz, 63
  %i.xe = zext nneg i8 %i.xd to i32
  %i.xf = or disjoint i32 %i.xc, %i.xe
  %i.xg = or disjoint i32 %i.xf, %i.xb
  br label %bb.fs

bb.fs:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.fr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.11.1.ph.i.i = phi ptr [ %.sroa.11.0.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.wo, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.wy, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.vz, %bb.fr ] ; 2 uses
  %.sroa.036.1.ph.i.i = phi ptr [ %i.vx, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ null, %bb.fr ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi i32 [ %i.vs, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.wk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.wv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.xg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.wm, %bb.fr ] ; 2 uses
  %i.xh = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.03.0.ph.i.i)
          to label %.noexc182.i unwind label %.loopexit247.i, !noalias !2950 ; 2 uses

.noexc182.i:                                      ; preds = %bb.fs
  %i.xi = extractvalue { i64, i64 } %i.xh, 0
  %i.xj = trunc nuw i64 %i.xi to i1
  br i1 %i.xj, label %.loopexit.i178.i, label %.peel.next.i.i, !llvm.loop !2922

.loopexit.i178.i:                                 ; preds = %.noexc182.i, %.noexc180.i
  %.sroa.11.1.ph.lcssa.i.i = phi ptr [ %.sroa.11.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.11.1.ph.i.i, %.noexc182.i ] ; 5 uses
  %.sroa.036.1.ph.lcssa.i.i = phi ptr [ %.sroa.036.1.ph.peel.i.i, %.noexc180.i ], [ %.sroa.036.1.ph.i.i, %.noexc182.i ] ; 4 uses
  %.sroa.03.0.ph.lcssa.i.i = phi i32 [ %.sroa.03.0.ph.peel.i.i, %.noexc180.i ], [ %.sroa.03.0.ph.i.i, %.noexc182.i ]
  %.lcssa72.i.i = phi { i64, i64 } [ %i.vo, %.noexc180.i ], [ %i.xh, %.noexc182.i ]
  %i.xk = extractvalue { i64, i64 } %.lcssa72.i.i, 1 ; 3 uses
  %i.xl = icmp ugt i64 %i.xk, %.sroa.013.0.ph.i450.i
  br i1 %i.xl, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %.loopexit.i178.i
  %.not453.i = icmp eq i64 %i.xk, %.sroa.013.0.ph.i450.i ; 2 uses
  br i1 %.not453.i, label %bb.fu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.fx, %bb.fw, %bb.ft
  %.sroa.11.2.i.i = phi ptr [ %.sroa.11.1.ph.lcssa.i.i, %bb.ft ], [ null, %bb.fw ], [ getelementptr inbounds nuw (i8, ptr @2870, i64 1), %bb.fx ]
  %.sroa.036.2.i.i = phi ptr [ %.sroa.036.1.ph.lcssa.i.i, %bb.ft ], [ null, %bb.fw ], [ null, %bb.fx ]
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tu, i32 noundef %.sroa.03.0.ph.lcssa.i.i, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc183.i unwind label %.loopexit.split-lp248.loopexit.i, !noalias !2950

.noexc183.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i
  %i.xm = icmp eq i64 %.sroa.0.0.ph.i451.i, -1
  br i1 %i.xm, label %bb.fz, label %.outer.i.i

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i.i.i34.i.i = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, null
  %i.xn = icmp eq ptr %.sroa.036.1.ph.lcssa.i.i, %i.ty
  %or.cond246.i = select i1 %.not.i.i.i.i34.i.i, i1 true, i1 %i.xn
  br i1 %or.cond246.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xo = load i32, ptr %.sroa.036.1.ph.lcssa.i.i, align 4, !noalias !2996, !noundef !5 ; 2 uses
  %i.xp = xor i32 %i.xo, 55296
  %i.xq = add i32 %i.xp, -1114112
  %i.xr = icmp ult i32 %i.xq, -1112064
  br i1 %i.xr, label %.split.i.i.i.i.i.i.i.i, label %.sink.split.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2997
  store i32 %i.xo, ptr %i.a, align 4, !noalias !2997
  br label %.split.i.i.i.i.i.invoke.i

bb.fw:                                            ; preds = %bb.fu
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.1.ph.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @2870, i64 1)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_5chain5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtB5_3str4iter5CharsEE4peek0ECs8frGy5WneL6_4fish.exit.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xs = load i8, ptr %.sroa.11.1.ph.lcssa.i.i, align 1, !noalias !2998, !noundef !5
  %i.xt = icmp sgt i8 %i.xs, -1
  br i1 %i.xt, label %.sink.split.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i: ; preds = %bb.fy
  %i.xu = icmp ne ptr %.sroa.11.1.ph.lcssa.i.i, @2870
  call void @llvm.assume(i1 %i.xu)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i, %bb.fv, %bb.fy
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tu, i32 noundef 8230, i32 noundef 0, i64 noundef 0, i64 undef)
          to label %.noexc185.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2950

.noexc185.i:                                      ; preds = %.sink.split.i.i
  %i.xv = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc186.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2950 ; 2 uses

.noexc186.i:                                      ; preds = %.noexc185.i
  %i.xw = extractvalue { i64, i64 } %i.xv, 0
  %i.xx = trunc nuw i64 %i.xw to i1
  br i1 %i.xx, label %bb.ga, label %.invoke.i, !prof !8

.outer.i.i:                                       ; preds = %.noexc183.i
  %i.xy = add nuw i64 %.sroa.0.0.ph.i451.i, 1
  %i.xz = sub nuw i64 %.sroa.013.0.ph.i450.i, %i.xk
  br i1 %.not453.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, label %bb.fi

bb.fz:                                            ; preds = %.noexc183.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.noexc187.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2950

.noexc187.i:                                      ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %.noexc186.i
  %i.ya = extractvalue { i64, i64 } %i.xv, 1
  %i.yb = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i450.i, i64 %i.ya)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

.invoke.i:                                        ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %.noexc186.i
  %i.yc = phi ptr [ @16, %.noexc186.i ], [ @17, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yc) #37
          to label %.cont.i unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !2950

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %.loopexit.i178.i, %bb.fk, %bb.fp, %bb.ga
  %.sroa.013.2.i.i = phi i64 [ %i.yb, %bb.ga ], [ %.sroa.013.0.ph.i450.i, %bb.fp ], [ %.sroa.013.0.ph.i450.i, %bb.fk ], [ %.sroa.013.0.ph.i450.i, %.loopexit.i178.i ] ; 2 uses
  %i.yd = icmp ult i64 %i.ek, %.sroa.013.2.i.i
  br i1 %i.yd, label %.invoke.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread, !prof !2999

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread: ; preds = %.outer.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.013.2.i.i140 = phi i64 [ %.sroa.013.2.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.outer.i.i ] ; 2 uses
  %i.ye = load ptr, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !2951, !nonnull !5, !noundef !5 ; 2 uses
  %i.yf = load i64, ptr %.sroa.689.0..sroa_idx.i, align 8, !noalias !2951, !noundef !5
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.yf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2951
  store i8 0, ptr %i.r, align 1, !noalias !2951
  store i8 1, ptr %.sroa.454.0..sroa_idx.i, align 1, !noalias !2951
  store i16 0, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !2951
  %i.yh = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 0, i64 undef, ptr noundef nonnull %i.ye, ptr noundef nonnull %i.yg, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.r, i64 noundef %.sroa.013.2.i.i140, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(40) %i.tu)
          to label %bb.gb unwind label %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2950

bb.gb:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2951
  %i.yi = icmp ult i64 %.sroa.013.2.i.i140, %i.yh
  br i1 %i.yi, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i191.i unwind label %bb.gd, !noalias !2950

bb.gd:                                            ; preds = %bb.gc
  %i.yj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body192.i unwind label %bb.ge, !noalias !2950

bb.ge:                                            ; preds = %bb.gd
  %i.yk = landingpad { ptr, i32 }
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
  %i.yl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.gh, !noalias !2950

bb.gh:                                            ; preds = %bb.gg
  %i.ym = landingpad { ptr, i32 }
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

bb.gj:                                            ; preds = %bb.hk
  %exitcond.not.i = icmp eq i64 %i.abw, %umax.i1217
  br i1 %exitcond.not.i, label %.split.i, label %bb.hk

.split.i:                                         ; preds = %.outer.i, %bb.gj, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i
  %.sroa.022.0.ph429.i.lcssa = phi i64 [ %.sroa.022.0.ph429.i1214, %bb.gj ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i ], [ %..i200.i, %.outer.i ] ; 4 uses
  %.sroa.025.0.ph428.i.lcssa = phi i64 [ %.sroa.025.0.ph428.i1215, %bb.gj ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i ], [ %..i201.i, %.outer.i ]
  %i.yn = add i64 %.sroa.025.0.ph428.i.lcssa, %.sroa.022.0.ph429.i.lcssa ; 2 uses
  %i.yo = icmp ult i64 %i.yn, %.sroa.022.0.ph429.i.lcssa
  br i1 %i.yo, label %.invoke, label %bb.gk

bb.gk:                                            ; preds = %.split.i
  %i.yp = icmp ugt i64 %.sroa.022.0.ph429.i.lcssa, -3
  br i1 %i.yp, label %.invoke, label %.outer.split.preheader.1.i

.outer.split.preheader.1.i:                       ; preds = %bb.gk
  %..i199.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.yn) ; 3 uses
  %4 = add nuw i64 %.sroa.022.0.ph429.i.lcssa, 2
  %exitcond.1.not.i12201227 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.1.not.i12201227, label %.split.1.i, label %.lr.ph1222

.lr.ph1222:                                       ; preds = %.outer.split.preheader.1.i, %.outer.1.i
  %umax.1.i1231 = phi i64 [ %umax.1.i, %.outer.1.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.preheader.1.i ]
  %.sroa.060.0.ph427.1.i1230 = phi i64 [ %i.ys, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ]
  %.sroa.025.0.ph428.1.i1229 = phi i64 [ %..i201.1.i, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ] ; 2 uses
  %.sroa.022.0.ph429.1.i1228 = phi i64 [ %..i200.1.i, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ] ; 2 uses
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gn
  %exitcond.1.not.i = icmp eq i64 %i.ys, %umax.1.i1231
  br i1 %exitcond.1.not.i, label %.split.1.i, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph1222, %bb.gl
  %.sroa.060.0.1.i1221 = phi i64 [ %.sroa.060.0.ph427.1.i1230, %.lr.ph1222 ], [ %i.ys, %bb.gl ] ; 2 uses
  %i.yq = add i64 %.sroa.060.0.1.i1221, %.sroa.0.0.i207.fr679.i ; 3 uses
  %i.yr = icmp ult i64 %i.yq, %.sroa.0.0.i207.fr679.i
  br i1 %i.yr, label %.invoke, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ys = add i64 %.sroa.060.0.1.i1221, 1         ; 5 uses
  %.not133.1.i = icmp ult i64 %i.yq, %i.cf
  br i1 %.not133.1.i, label %bb.go, label %bb.gl

bb.go:                                            ; preds = %bb.gn
  %i.yt = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.yq ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 136
  %i.yv = load i64, ptr %i.yu, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.yw = icmp eq i64 %i.yv, 0
  %..1.i = select i1 %i.yw, i64 0, i64 4
  %i.yx = add i64 %..1.i, %i.yv                   ; 2 uses
  %i.yy = icmp ult i64 %i.yx, %i.yv
  br i1 %i.yy, label %.invoke, label %.outer.1.i

.outer.1.i:                                       ; preds = %bb.go
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yt, i64 128
  %i.za = load i64, ptr %i.yz, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.1.i = call noundef i64 @llvm.umax.i64(i64 %i.za, i64 %.sroa.022.0.ph429.1.i1228) ; 2 uses
  %..i201.1.i = call noundef i64 @llvm.umax.i64(i64 %i.yx, i64 %.sroa.025.0.ph428.1.i1229) ; 2 uses
  %umax.1.i = call i64 @llvm.umax.i64(i64 %i.ys, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.1.not.i1220.not = icmp ult i64 %i.ys, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.1.not.i1220.not, label %.lr.ph1222, label %.split.1.i

.split.1.i:                                       ; preds = %.outer.1.i, %bb.gl, %.outer.split.preheader.1.i
  %.sroa.022.0.ph429.1.i.lcssa = phi i64 [ %.sroa.022.0.ph429.1.i1228, %bb.gl ], [ 0, %.outer.split.preheader.1.i ], [ %..i200.1.i, %.outer.1.i ] ; 4 uses
  %.sroa.025.0.ph428.1.i.lcssa = phi i64 [ %.sroa.025.0.ph428.1.i1229, %bb.gl ], [ 0, %.outer.split.preheader.1.i ], [ %..i201.1.i, %.outer.1.i ]
  %i.zb = add i64 %.sroa.025.0.ph428.1.i.lcssa, %.sroa.022.0.ph429.1.i.lcssa ; 2 uses
  %i.zc = icmp ult i64 %i.zb, %.sroa.022.0.ph429.1.i.lcssa
  br i1 %i.zc, label %.invoke, label %bb.gp

bb.gp:                                            ; preds = %.split.1.i
  %i.zd = icmp ugt i64 %.sroa.022.0.ph429.1.i.lcssa, -3
  br i1 %i.zd, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i: ; preds = %bb.gp
  %..i199.1.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.zb) ; 2 uses
  %i.ze = add nuw i64 %.sroa.022.0.ph429.1.i.lcssa, 2
  %i.zf = icmp slt i64 %.sroa.0.0.i207.fr679.i, 0
  %i.zg = shl nuw i64 %.sroa.0.0.i207.fr679.i, 1  ; 2 uses
  br i1 %i.zf, label %.invoke992, label %.outer.split.preheader.2.i

.outer.split.preheader.2.i:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i
  %exitcond.2.not.i12341241 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.2.not.i12341241, label %.split.2.i, label %.lr.ph1236

.lr.ph1236:                                       ; preds = %.outer.split.preheader.2.i, %.outer.2.i
  %umax.2.i1245 = phi i64 [ %umax.2.i, %.outer.2.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.preheader.2.i ]
  %.sroa.060.0.ph427.2.i1244 = phi i64 [ %i.zj, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ]
  %.sroa.025.0.ph428.2.i1243 = phi i64 [ %..i201.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  %.sroa.022.0.ph429.2.i1242 = phi i64 [ %..i200.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  br label %bb.gr

bb.gq:                                            ; preds = %bb.gs
  %exitcond.2.not.i = icmp eq i64 %i.zj, %umax.2.i1245
  br i1 %exitcond.2.not.i, label %.split.2.i, label %bb.gr

bb.gr:                                            ; preds = %.lr.ph1236, %bb.gq
  %.sroa.060.0.2.i1235 = phi i64 [ %.sroa.060.0.ph427.2.i1244, %.lr.ph1236 ], [ %i.zj, %bb.gq ] ; 2 uses
  %i.zh = add i64 %.sroa.060.0.2.i1235, %i.zg     ; 3 uses
  %i.zi = icmp ult i64 %i.zh, %i.zg
  br i1 %i.zi, label %.invoke, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.zj = add i64 %.sroa.060.0.2.i1235, 1         ; 5 uses
  %.not133.2.i = icmp ult i64 %i.zh, %i.cf
  br i1 %.not133.2.i, label %bb.gt, label %bb.gq

bb.gt:                                            ; preds = %bb.gs
  %i.zk = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.zh ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 136
  %i.zm = load i64, ptr %i.zl, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.zn = icmp eq i64 %i.zm, 0
  %..2.i = select i1 %i.zn, i64 0, i64 4
  %i.zo = add i64 %..2.i, %i.zm                   ; 2 uses
  %i.zp = icmp ult i64 %i.zo, %i.zm
  br i1 %i.zp, label %.invoke, label %.outer.2.i

.outer.2.i:                                       ; preds = %bb.gt
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zk, i64 128
  %i.zr = load i64, ptr %i.zq, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.2.i = call noundef i64 @llvm.umax.i64(i64 %i.zr, i64 %.sroa.022.0.ph429.2.i1242) ; 2 uses
  %..i201.2.i = call noundef i64 @llvm.umax.i64(i64 %i.zo, i64 %.sroa.025.0.ph428.2.i1243) ; 2 uses
  %umax.2.i = call i64 @llvm.umax.i64(i64 %i.zj, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.2.not.i1234.not = icmp ult i64 %i.zj, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.2.not.i1234.not, label %.lr.ph1236, label %.split.2.i

.split.2.i:                                       ; preds = %.outer.2.i, %bb.gq, %.outer.split.preheader.2.i
  %.sroa.022.0.ph429.2.i.lcssa = phi i64 [ %.sroa.022.0.ph429.2.i1242, %bb.gq ], [ 0, %.outer.split.preheader.2.i ], [ %..i200.2.i, %.outer.2.i ] ; 4 uses
  %.sroa.025.0.ph428.2.i.lcssa = phi i64 [ %.sroa.025.0.ph428.2.i1243, %bb.gq ], [ 0, %.outer.split.preheader.2.i ], [ %..i201.2.i, %.outer.2.i ]
  %i.zs = add i64 %.sroa.025.0.ph428.2.i.lcssa, %.sroa.022.0.ph429.2.i.lcssa ; 2 uses
  %i.zt = icmp ult i64 %i.zs, %.sroa.022.0.ph429.2.i.lcssa
  br i1 %i.zt, label %.invoke, label %bb.gu

bb.gu:                                            ; preds = %.split.2.i
  %i.zu = icmp ugt i64 %.sroa.022.0.ph429.2.i.lcssa, -3
  br i1 %i.zu, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i: ; preds = %bb.gu
  %..i199.2.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.zs) ; 2 uses
  %i.zv = add nuw i64 %.sroa.022.0.ph429.2.i.lcssa, 2
  %i.zw = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr679.i, i64 3) ; 2 uses
  %i.zx = extractvalue { i64, i1 } %i.zw, 1
  %i.zy = extractvalue { i64, i1 } %i.zw, 0       ; 2 uses
  br i1 %i.zx, label %.invoke992, label %.outer.split.3.i.preheader

.outer.split.3.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i
  %exitcond.3.not.i12481255 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.3.not.i12481255, label %.split.3.i, label %.lr.ph1250

.lr.ph1250:                                       ; preds = %.outer.split.3.i.preheader, %.outer.3.i
  %umax.3.i1259 = phi i64 [ %umax.3.i, %.outer.3.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.3.i.preheader ]
  %.sroa.060.0.ph427.3.i1258 = phi i64 [ %i.aab, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ]
  %.sroa.025.0.ph428.3.i1257 = phi i64 [ %..i201.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.3.i1256 = phi i64 [ %..i200.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gx
  %exitcond.3.not.i = icmp eq i64 %i.aab, %umax.3.i1259
  br i1 %exitcond.3.not.i, label %.split.3.i, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph1250, %bb.gv
  %.sroa.060.0.3.i1249 = phi i64 [ %.sroa.060.0.ph427.3.i1258, %.lr.ph1250 ], [ %i.aab, %bb.gv ] ; 2 uses
  %i.zz = add i64 %.sroa.060.0.3.i1249, %i.zy     ; 3 uses
  %i.aaa = icmp ult i64 %i.zz, %i.zy
  br i1 %i.aaa, label %.invoke, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aab = add i64 %.sroa.060.0.3.i1249, 1        ; 5 uses
  %.not133.3.i = icmp ult i64 %i.zz, %i.cf
  br i1 %.not133.3.i, label %bb.gy, label %bb.gv

bb.gy:                                            ; preds = %bb.gx
  %i.aac = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.zz ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 136
  %i.aae = load i64, ptr %i.aad, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.aaf = icmp eq i64 %i.aae, 0
  %..3.i = select i1 %i.aaf, i64 0, i64 4
  %i.aag = add i64 %..3.i, %i.aae                 ; 2 uses
  %i.aah = icmp ult i64 %i.aag, %i.aae
  br i1 %i.aah, label %.invoke, label %.outer.3.i

.outer.3.i:                                       ; preds = %bb.gy
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aac, i64 128
  %i.aaj = load i64, ptr %i.aai, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aaj, i64 %.sroa.022.0.ph429.3.i1256) ; 2 uses
  %..i201.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aag, i64 %.sroa.025.0.ph428.3.i1257) ; 2 uses
  %umax.3.i = call i64 @llvm.umax.i64(i64 %i.aab, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.3.not.i1248.not = icmp ult i64 %i.aab, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.3.not.i1248.not, label %.lr.ph1250, label %.split.3.i

.split.3.i:                                       ; preds = %.outer.3.i, %bb.gv, %.outer.split.3.i.preheader
  %.sroa.022.0.ph429.3.i.lcssa = phi i64 [ %.sroa.022.0.ph429.3.i1256, %bb.gv ], [ 0, %.outer.split.3.i.preheader ], [ %..i200.3.i, %.outer.3.i ] ; 4 uses
  %.sroa.025.0.ph428.3.i.lcssa = phi i64 [ %.sroa.025.0.ph428.3.i1257, %bb.gv ], [ 0, %.outer.split.3.i.preheader ], [ %..i201.3.i, %.outer.3.i ]
  %i.aak = add i64 %.sroa.025.0.ph428.3.i.lcssa, %.sroa.022.0.ph429.3.i.lcssa ; 2 uses
  %i.aal = icmp ult i64 %i.aak, %.sroa.022.0.ph429.3.i.lcssa
  br i1 %i.aal, label %.invoke, label %bb.gz

bb.gz:                                            ; preds = %.split.3.i
  %i.aam = icmp ugt i64 %.sroa.022.0.ph429.3.i.lcssa, -3
  br i1 %i.aam, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i: ; preds = %bb.gz
  %..i199.3.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aak) ; 2 uses
  %i.aan = add nuw i64 %.sroa.022.0.ph429.3.i.lcssa, 2
  %i.aao = icmp ugt i64 %.sroa.0.0.i207.fr679.i, 4611686018427387903
  %i.aap = shl nuw i64 %.sroa.0.0.i207.fr679.i, 2 ; 2 uses
  br i1 %i.aao, label %.invoke992, label %.outer.split.4.i.preheader

.outer.split.4.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i
  %exitcond.4.not.i12621269 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.4.not.i12621269, label %.split.4.i, label %.lr.ph1264

.lr.ph1264:                                       ; preds = %.outer.split.4.i.preheader, %.outer.4.i
  %umax.4.i1273 = phi i64 [ %umax.4.i, %.outer.4.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.4.i.preheader ]
  %.sroa.060.0.ph427.4.i1272 = phi i64 [ %i.aas, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ]
  %.sroa.025.0.ph428.4.i1271 = phi i64 [ %..i201.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.4.i1270 = phi i64 [ %..i200.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  br label %bb.hb

bb.ha:                                            ; preds = %bb.hc
  %exitcond.4.not.i = icmp eq i64 %i.aas, %umax.4.i1273
  br i1 %exitcond.4.not.i, label %.split.4.i, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph1264, %bb.ha
  %.sroa.060.0.4.i1263 = phi i64 [ %.sroa.060.0.ph427.4.i1272, %.lr.ph1264 ], [ %i.aas, %bb.ha ] ; 2 uses
  %i.aaq = add i64 %.sroa.060.0.4.i1263, %i.aap   ; 3 uses
  %i.aar = icmp ult i64 %i.aaq, %i.aap
  br i1 %i.aar, label %.invoke, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aas = add i64 %.sroa.060.0.4.i1263, 1        ; 5 uses
  %.not133.4.i = icmp ult i64 %i.aaq, %i.cf
  br i1 %.not133.4.i, label %bb.hd, label %bb.ha

bb.hd:                                            ; preds = %bb.hc
  %i.aat = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aaq ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 136
  %i.aav = load i64, ptr %i.aau, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.aaw = icmp eq i64 %i.aav, 0
  %..4.i = select i1 %i.aaw, i64 0, i64 4
  %i.aax = add i64 %..4.i, %i.aav                 ; 2 uses
  %i.aay = icmp ult i64 %i.aax, %i.aav
  br i1 %i.aay, label %.invoke, label %.outer.4.i

.outer.4.i:                                       ; preds = %bb.hd
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aat, i64 128
  %i.aba = load i64, ptr %i.aaz, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.4.i = call noundef i64 @llvm.umax.i64(i64 %i.aba, i64 %.sroa.022.0.ph429.4.i1270) ; 2 uses
  %..i201.4.i = call noundef i64 @llvm.umax.i64(i64 %i.aax, i64 %.sroa.025.0.ph428.4.i1271) ; 2 uses
  %umax.4.i = call i64 @llvm.umax.i64(i64 %i.aas, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.4.not.i1262.not = icmp ult i64 %i.aas, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.4.not.i1262.not, label %.lr.ph1264, label %.split.4.i

.split.4.i:                                       ; preds = %.outer.4.i, %bb.ha, %.outer.split.4.i.preheader
  %.sroa.022.0.ph429.4.i.lcssa = phi i64 [ %.sroa.022.0.ph429.4.i1270, %bb.ha ], [ 0, %.outer.split.4.i.preheader ], [ %..i200.4.i, %.outer.4.i ] ; 4 uses
  %.sroa.025.0.ph428.4.i.lcssa = phi i64 [ %.sroa.025.0.ph428.4.i1271, %bb.ha ], [ 0, %.outer.split.4.i.preheader ], [ %..i201.4.i, %.outer.4.i ]
  %i.abb = add i64 %.sroa.025.0.ph428.4.i.lcssa, %.sroa.022.0.ph429.4.i.lcssa ; 2 uses
  %i.abc = icmp ult i64 %i.abb, %.sroa.022.0.ph429.4.i.lcssa
  br i1 %i.abc, label %.invoke, label %bb.he

bb.he:                                            ; preds = %.split.4.i
  %i.abd = icmp ugt i64 %.sroa.022.0.ph429.4.i.lcssa, -3
  br i1 %i.abd, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i: ; preds = %bb.he
  %..i199.4.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.abb) ; 2 uses
  %i.abe = add nuw i64 %.sroa.022.0.ph429.4.i.lcssa, 2
  %i.abf = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr679.i, i64 5) ; 2 uses
  %i.abg = extractvalue { i64, i1 } %i.abf, 1
  %i.abh = extractvalue { i64, i1 } %i.abf, 0     ; 2 uses
  br i1 %i.abg, label %.invoke992, label %.outer.split.5.i.preheader

.outer.split.5.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i
  %exitcond.5.not.i12761283 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.5.not.i12761283, label %.split.5.i, label %.lr.ph1278

.lr.ph1278:                                       ; preds = %.outer.split.5.i.preheader, %.outer.5.i
  %umax.5.i1287 = phi i64 [ %umax.5.i, %.outer.5.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.5.i.preheader ]
  %.sroa.060.0.ph427.5.i1286 = phi i64 [ %i.abk, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ]
  %.sroa.025.0.ph428.5.i1285 = phi i64 [ %..i201.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.5.i1284 = phi i64 [ %..i200.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hh
  %exitcond.5.not.i = icmp eq i64 %i.abk, %umax.5.i1287
  br i1 %exitcond.5.not.i, label %.split.5.i, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph1278, %bb.hf
  %.sroa.060.0.5.i1277 = phi i64 [ %.sroa.060.0.ph427.5.i1286, %.lr.ph1278 ], [ %i.abk, %bb.hf ] ; 2 uses
  %i.abi = add i64 %.sroa.060.0.5.i1277, %i.abh   ; 3 uses
  %i.abj = icmp ult i64 %i.abi, %i.abh
  br i1 %i.abj, label %.invoke, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.abk = add i64 %.sroa.060.0.5.i1277, 1        ; 5 uses
  %.not133.5.i = icmp ult i64 %i.abi, %i.cf
  br i1 %.not133.5.i, label %bb.hi, label %bb.hf

bb.hi:                                            ; preds = %bb.hh
  %i.abl = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.abi ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 136
  %i.abn = load i64, ptr %i.abm, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.abo = icmp eq i64 %i.abn, 0
  %..5.i = select i1 %i.abo, i64 0, i64 4
  %i.abp = add i64 %..5.i, %i.abn                 ; 2 uses
  %i.abq = icmp ult i64 %i.abp, %i.abn
  br i1 %i.abq, label %.invoke, label %.outer.5.i

.outer.5.i:                                       ; preds = %bb.hi
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abl, i64 128
  %i.abs = load i64, ptr %i.abr, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abs, i64 %.sroa.022.0.ph429.5.i1284) ; 2 uses
  %..i201.5.i = call noundef i64 @llvm.umax.i64(i64 %i.abp, i64 %.sroa.025.0.ph428.5.i1285) ; 2 uses
  %umax.5.i = call i64 @llvm.umax.i64(i64 %i.abk, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.5.not.i1276.not = icmp ult i64 %i.abk, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.5.not.i1276.not, label %.lr.ph1278, label %.split.5.i

.split.5.i:                                       ; preds = %.outer.5.i, %bb.hf, %.outer.split.5.i.preheader
  %.sroa.022.0.ph429.5.i.lcssa = phi i64 [ %.sroa.022.0.ph429.5.i1284, %bb.hf ], [ 0, %.outer.split.5.i.preheader ], [ %..i200.5.i, %.outer.5.i ] ; 4 uses
  %.sroa.025.0.ph428.5.i.lcssa = phi i64 [ %.sroa.025.0.ph428.5.i1285, %bb.hf ], [ 0, %.outer.split.5.i.preheader ], [ %..i201.5.i, %.outer.5.i ]
  %i.abt = add i64 %.sroa.025.0.ph428.5.i.lcssa, %.sroa.022.0.ph429.5.i.lcssa ; 2 uses
  %i.abu = icmp ult i64 %i.abt, %.sroa.022.0.ph429.5.i.lcssa
  br i1 %i.abu, label %.invoke, label %bb.hj

bb.hj:                                            ; preds = %.split.5.i
  %i.abv = icmp ugt i64 %.sroa.022.0.ph429.5.i.lcssa, -3
  br i1 %i.abv, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i

bb.hk:                                            ; preds = %.lr.ph, %bb.gj
  %.sroa.060.0.i1210 = phi i64 [ %.sroa.060.0.ph427.i1216, %.lr.ph ], [ %i.abw, %bb.gj ] ; 3 uses
  %i.abw = add i64 %.sroa.060.0.i1210, 1          ; 5 uses
  %.not133.i = icmp ult i64 %.sroa.060.0.i1210, %i.cf
  br i1 %.not133.i, label %bb.hl, label %bb.gj

bb.hl:                                            ; preds = %bb.hk
  %i.abx = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %.sroa.060.0.i1210 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 136
  %i.abz = load i64, ptr %i.aby, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.aca = icmp eq i64 %i.abz, 0
  %..i53 = select i1 %i.aca, i64 0, i64 4
  %i.acb = add i64 %..i53, %i.abz                 ; 2 uses
  %i.acc = icmp ult i64 %i.acb, %i.abz
  br i1 %i.acc, label %.invoke, label %.outer.i

.outer.i:                                         ; preds = %bb.hl
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abx, i64 128
  %i.ace = load i64, ptr %i.acd, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.i = call noundef i64 @llvm.umax.i64(i64 %i.ace, i64 %.sroa.022.0.ph429.i1214) ; 2 uses
  %..i201.i = call noundef i64 @llvm.umax.i64(i64 %i.acb, i64 %.sroa.025.0.ph428.i1215) ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.abw, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.not.i1208.not = icmp ult i64 %i.abw, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.not.i1208.not, label %.lr.ph, label %.split.i

.lr.ph:                                           ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i, %.outer.i
  %umax.i1217 = phi i64 [ %umax.i, %.outer.i ], [ %.sroa.0.0.i207.fr679.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i ]
  %.sroa.060.0.ph427.i1216 = phi i64 [ %i.abw, %.outer.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i ]
  %.sroa.025.0.ph428.i1215 = phi i64 [ %..i201.i, %.outer.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i ] ; 2 uses
  %.sroa.022.0.ph429.i1214 = phi i64 [ %..i200.i, %.outer.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i ] ; 2 uses
  br label %bb.hk

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit: ; preds = %bb.x, %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2951
  %.not.i = icmp eq i64 %i.en, 0
  %or.cond = select i1 %.not898.i.not, i1 true, i1 %.not.i
  br i1 %or.cond, label %.thread, label %.backedge524.backedge

bb.hm:                                            ; preds = %.body
  %i.acf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.hn:                                            ; preds = %.body
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

end_hunk_1
