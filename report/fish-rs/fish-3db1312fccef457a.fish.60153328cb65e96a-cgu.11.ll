Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
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
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.h ], [ %.pn.i, %bb.b ], [ %.pn130.i, %.body192.i ], [ %i.yq, %bb.gg ], [ %lpad.loopexit186.i.i, %.loopexit.i.i ], [ %i.tk, %bb.ew ], [ %i.py, %bb.cp ], [ %lpad.phi.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i ], [ %lpad.loopexit160, %.loopexit ], [ %lpad.loopexit169, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5pager13PageRenderingEBF_(ptr noalias nofree noundef align 8 dereferenceable(296) %i.al) #35
          to label %bb.ho unwind label %bb.hn

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
  %..i137.i = call i64 @llvm.umin.i64(i64 %..i.i, i64 %i.cy) ; 4 uses
  %.fr452.i = freeze { i64, i1 } zeroinitializer  ; 2 uses
  %i.dd = extractvalue { i64, i1 } %.fr452.i, 1
  %i.de = extractvalue { i64, i1 } %.fr452.i, 0   ; 2 uses
  %.fr.i = freeze { i64, i1 } { i64 poison, i1 false }
  %i.df = extractvalue { i64, i1 } %.fr.i, 1      ; 2 uses
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
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.dh = icmp ne i64 %i.ck, 0
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 275
  %.val.i143.i = load i8, ptr %i.dk, align 1      ; 2 uses
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.584.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dl = sub i8 28, %.val.i143.i
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0, i64 %.sroa.37.0
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
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.466.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.571.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.466.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.571.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dy = load i64, ptr %i.dx, align 8            ; 5 uses
  %i.dz = icmp ult i64 %i.dy, 2305843009213693952
  %i.ea = icmp eq i64 %i.dy, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val.i = load ptr, ptr %i.eb, align 8, !nonnull !5
  %i.ec = shl nuw nsw i64 %i.dy, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !5
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eg = load i64, ptr %i.ef, align 8            ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.not129.i = icmp eq i64 %i.eg, 0
  %i.ej = shl nuw nsw i64 %i.eg, 2
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %.sroa.689.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.ek = icmp ult i64 %i.eg, 2305843009213693952
  %i.el = icmp samesign ult i64 %i.eg, 12
  %i.em = sub nuw nsw i64 12, %i.eg               ; 2 uses
  %i.en = add i64 %i.ba, -1                       ; 2 uses
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
  %brmerge486.not = select i1 %i.cl, i1 %i.dh, i1 false
  %invariant.op = sub i8 20, %.val.i143.i
  %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 2
  %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 3
  %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  br label %.backedge524

.backedge524:                                     ; preds = %.backedge524.backedge, %bb.i
  %.sroa.4.0481 = phi i64 [ 6, %bb.i ], [ %i.eq, %.backedge524.backedge ] ; 13 uses
  %i.eq = add i64 %.sroa.4.0481, -1               ; 5 uses
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
  %i.er = urem i64 %i.cf, %.sroa.4.0481
  %.not.i43 = icmp ne i64 %i.er, 0
  %i.es = udiv i64 %i.cf, %.sroa.4.0481
  %..i = zext i1 %.not.i43 to i64
  %i.et = add nuw nsw i64 %i.es, %..i             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %i.et, ptr %i.ah, align 8
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2943) #37
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ev = urem i64 %i.cf, %i.et
  %.not.i46 = icmp ne i64 %i.ev, 0
  %i.ew = udiv i64 %i.cf, %i.et
  %..i47 = zext i1 %.not.i46 to i64
  %i.ex = add nuw nsw i64 %i.ew, %..i47           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not = icmp ugt i64 %i.ex, %.sroa.4.0481
  br i1 %.not, label %bb.n, label %.thread129, !prof !2947

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2920) #36
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.j
  %.not142 = icmp eq i64 %.sroa.4.0481, 1
  br i1 %.not142, label %.loopexit177.thread780, label %.backedge524.backedge

.thread129:                                       ; preds = %bb.m
  %i.ey = icmp ne i64 %.sroa.4.0481, 1
  %i.ez = icmp ult i64 %i.ex, %.sroa.4.0481
  %or.cond132 = and i1 %i.ey, %i.ez
  br i1 %or.cond132, label %.backedge524.backedge, label %bb.q

.backedge524.backedge:                            ; preds = %.thread129, %bb.o, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit
  br label %.backedge524

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %.thread129
  store i64 %.sroa.4.0481, ptr %i.aq, align 8
  store i64 %i.et, ptr %i.ap, align 8
  br i1 %brmerge484, label %.loopexit177.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.0.03.i.i = phi i64 [ %i.fa, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %.not6.i.i = icmp ult i64 %.sroa.0.03.i.i, %i.et
  br i1 %.not6.i.i, label %.loopexit177, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.fa = sub nuw i64 %.sroa.0.03.i.i, %i.et      ; 3 uses
  %.not.i.i = icmp ult i64 %i.fa, %i.cf
  br i1 %.not.i.i, label %.loopexit177, label %.lr.ph.i.i

.loopexit177:                                     ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ %i.fa, %bb.r ]
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
  %spec.select778 = phi i64 [ %spec.select777, %.loopexit177.thread ], [ %spec.select, %.loopexit177 ] ; 4 uses
  %i.fb = urem i64 %i.cf, %.sroa.4.0481
  %.not.i.i52 = icmp ne i64 %i.fb, 0
  %i.fc = udiv i64 %i.cf, %.sroa.4.0481
  %..i138.i = zext i1 %.not.i.i52 to i64
  %i.fd = add nuw nsw i64 %i.fc, %..i138.i        ; 5 uses
  %i.fe = icmp samesign ule i64 %i.fd, %..i137.i
  %or.cond4.not.i = select i1 %i.db, i1 true, i1 %i.fe
  br i1 %or.cond4.not.i, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %.loopexit177.thread780, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %spec.select779 = phi i64 [ %spec.select778, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ], [ %spec.select784, %.loopexit177.thread780 ]
  %.sroa.0.0.i208.i = phi i64 [ %i.fd, %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i ], [ 0, %.loopexit177.thread780 ]
  store i64 0, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  %.sroa.0.0.i207.fr678.i = freeze i64 %.sroa.0.0.i208.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish5pager15divide_round_up.exit.i
  %i.ff = sub nuw nsw i64 %i.fd, %spec.select778  ; 3 uses
  store i64 %i.ff, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.t, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.fh = add nuw nsw i64 %spec.select778, 1
  store i64 0, ptr %i.aw, align 8, !alias.scope !2949, !noalias !2950
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i: ; preds = %bb.t, %bb.s, %.thread.i
  %.sroa.0.0.i207.fr679.i = phi i64 [ %i.fd, %bb.t ], [ %i.fd, %bb.s ], [ %.sroa.0.0.i207.fr678.i, %.thread.i ] ; 38 uses
  %i.fi = phi i64 [ 0, %bb.t ], [ %i.ff, %bb.s ], [ 0, %.thread.i ]
  %.sroa.08.1.i = phi i64 [ %i.fh, %bb.t ], [ %spec.select778, %bb.s ], [ %spec.select779, %.thread.i ] ; 4 uses
  %.not.i58 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0 ; 2 uses
  br i1 %i.dd, label %.outer.split.us.i, label %.outer.split.i.preheader

.outer.split.i.preheader:                         ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i
  br i1 %.not.i58, label %.split.i, label %.lr.ph

.invoke:                                          ; preds = %bb.gl, %bb.gq, %bb.gv, %bb.ha, %bb.hf, %bb.hk, %.split.i, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %bb.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i, %bb.hm, %bb.gp, %bb.gu, %bb.gz, %bb.he, %bb.hj, %bb.gk, %bb.gn, %bb.gs, %bb.gx, %bb.hc, %bb.hh, %bb.ag, %bb.ae
  %i.fj = phi ptr [ @2877, %bb.gu ], [ @3129, %bb.ae ], [ @2877, %bb.hm ], [ @2876, %bb.gs ], [ @2876, %bb.gx ], [ @2877, %bb.gp ], [ @2877, %bb.he ], [ @2877, %bb.hj ], [ @2876, %bb.gk ], [ @2876, %bb.gn ], [ @2877, %bb.gz ], [ @2876, %bb.hc ], [ @2876, %bb.hh ], [ @2856, %bb.ag ], [ @2874, %.split.i ], [ @2875, %bb.gl ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i ], [ @2874, %.split.5.i ], [ @2874, %.split.4.i ], [ @2874, %.split.3.i ], [ @2874, %.split.2.i ], [ @2874, %.split.1.i ], [ @2875, %bb.hk ], [ @2875, %bb.hf ], [ @2875, %bb.ha ], [ @2875, %bb.gv ], [ @2875, %bb.gq ], [ @21, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i ], [ @2860, %bb.u ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i: ; preds = %bb.hk
  %..i199.5.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.acf) ; 2 uses
  %i.fk = add nuw i64 %.sroa.022.0.ph429.5.i.lcssa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2951
  store i64 %..i199689697703708.i, ptr %i.ag, align 8, !noalias !2951
  store i64 %i.zs, ptr %.sroa.6.0..sroa_idx.i54, align 8, !noalias !2951
  store i64 %..i199.1710.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.zr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.aah, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.3.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.aaz, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.4.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.abq, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %..i199.5.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !2951
  store i64 %i.fk, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !2951
  %i.fl = add i64 %..i199689697703708.i, %..i199.1710.i ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %..i199689697703708.i
  br i1 %i.fm, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i
  %i.fn = add i64 %..i199.2.i, %i.fl              ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.fl
  br i1 %i.fo, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.1.i
  %i.fp = add i64 %..i199.3.i, %i.fn              ; 3 uses
  %i.fq = icmp ult i64 %i.fp, %i.fn
  br i1 %i.fq, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.2.i
  %i.fr = add i64 %..i199.4.i, %i.fp              ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %i.fp
  br i1 %i.fs, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.3.i
  %i.ft = add i64 %..i199.5.i, %i.fr              ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  br i1 %i.fu, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.4.i
  %i.fv = icmp slt i64 %i.eq, 0
  br i1 %i.fv, label %.invoke992, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i
  %i.fw = shl nuw i64 %i.eq, 1
  %i.fx = add i64 %i.ft, %i.fw                    ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ft
  br i1 %i.fy, label %.invoke, label %bb.v

.invoke992:                                       ; preds = %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i, %.outer.split.us.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i, %bb.af
  %i.fz = phi ptr [ @2856, %bb.af ], [ @2859, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.5.i ], [ @2876, %.outer.split.us.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i ], [ @2876, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ @2876, %.outer.split.us.1.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz) #37
          to label %.cont993 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont993:                                         ; preds = %.invoke992
  unreachable

bb.v:                                             ; preds = %bb.u
  %.not898.i.not = icmp uge i64 %i.ba, %i.fx      ; 2 uses
  br i1 %.not898.i.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not114.i = icmp ugt i64 %.sroa.0.0.i207.fr679.i, %.sroa.08.1.i
  br i1 %.not114.i, label %bb.y, label %.thread219.i

bb.x:                                             ; preds = %bb.v
  %.not132.i = icmp eq i64 %.sroa.4.0481, 1
  br i1 %.not132.i, label %bb.gi, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit, !prof !7

bb.y:                                             ; preds = %bb.w
  %i.ga = sub nuw nsw i64 %.sroa.0.0.i207.fr679.i, %.sroa.08.1.i
  %..i141.i = call noundef i64 @llvm.umin.i64(i64 %i.ga, i64 %i.cr) ; 2 uses
  %i.gb = add nuw nsw i64 %..i141.i, %.sroa.08.1.i
  br label %.thread219.i

.thread219.i:                                     ; preds = %bb.y, %bb.w
  %.sroa.034.0217224.i = phi i64 [ %..i141.i, %bb.y ], [ 0, %bb.w ] ; 7 uses
  %.sroa.028.0218223.i = phi i64 [ %i.gb, %bb.y ], [ %.sroa.0.0.i207.fr679.i, %bb.w ] ; 6 uses
  %i.gc = sub nuw nsw i64 %.sroa.028.0218223.i, %.sroa.034.0217224.i
  %.not118.i = icmp ugt i64 %i.gc, %.sroa.08.1.i
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
  %i.gd = urem i64 %i.cf, %.sroa.4.0481
  %.not.i.i.i = icmp ne i64 %i.gd, 0
  %i.ge = udiv i64 %i.cf, %.sroa.4.0481
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.gf = add nuw nsw i64 %i.ge, %..i.i.i         ; 7 uses
  br i1 %brmerge486.not, label %bb.ac, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.gg = icmp eq i64 %i.gf, 0                    ; 3 uses
  %brmerge489 = select i1 %i.gg, i1 true, i1 %.not2.i.i
  %.mux491 = select i1 %i.gg, i64 undef, i64 %i.ck
  %not. = xor i1 %i.gg, true
  br i1 %brmerge489, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.gh, %bb.ad ], [ %i.ck, %bb.ac ] ; 2 uses
  %.not6.i.i.i.i = icmp ult i64 %.sroa.0.03.i.i.i.i, %i.gf
  br i1 %.not6.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gh = sub nuw i64 %.sroa.0.03.i.i.i.i, %i.gf  ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.gh, %i.cf
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, label %.lr.ph.i.i.i.i

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i, %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i138 = phi i64 [ %i.gf, %bb.ac ], [ %i.gf, %bb.ab ], [ 0, %bb.aa ], [ %i.gf, %.lr.ph.i.i.i.i ], [ %i.gf, %bb.ad ]
  %.sroa.7.0.i.i.i = phi i64 [ %.mux491, %bb.ac ], [ 0, %bb.ab ], [ undef, %bb.aa ], [ %i.gh, %bb.ad ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.i18.i.i = phi i1 [ %not., %bb.ac ], [ %i.cl, %bb.ab ], [ false, %bb.aa ], [ true, %.lr.ph.i.i.i.i ], [ true, %bb.ad ]
  %i.gi = icmp samesign ult i64 %.sroa.034.0217224.i, %.sroa.028.0218223.i
  br i1 %i.gi, label %.lr.ph303.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager16completion_print.exit.i

.lr.ph303.i.i:                                    ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i, %._crit_edge.i.i
  %.sroa.08.0302.i.i = phi i64 [ %i.gj, %._crit_edge.i.i ], [ %.sroa.034.0217224.i, %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index.exit.i.i ] ; 4 uses
  %i.gj = add nuw nsw i64 %.sroa.08.0302.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2956
  store ptr %i.ag, ptr %i.m, align 8, !noalias !2956
  store ptr %i.dg, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !2956
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2957
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit

.noexc65:                                         ; preds = %.lr.ph303.i.i
  %i.gk = load i64, ptr %i.k, align 8, !range !22, !noalias !2957, !noundef !5
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %.lr.ph.i.i57, label %._crit_edge.i.i

.lr.ph.i.i57:                                     ; preds = %.noexc65
  %i.gm = trunc i64 %.sroa.08.0302.i.i to i1      ; 4 uses
  %spec.select.i.i.i.i = select i1 %i.gm, i8 22, i8 18
  %i.gn = select i1 %i.gm, i8 4, i8 0
  %spec.select.i134.i.reass.reass.i.reass.i.reass.reass = add i8 %i.gn, %invariant.op
  %spec.select.i137.i.i.i = select i1 %i.gm, i8 24, i8 20
  %spec.select.i140.i.i.i = select i1 %i.gm, i8 25, i8 21
  %i.go = sub nuw nsw i64 %.sroa.08.0302.i.i, %.sroa.034.0217224.i
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc72, %.lr.ph.i.i57
  call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  %i.gp = load i64, ptr %i.di, align 8, !noalias !2959, !noundef !5 ; 8 uses
  %i.gq = load i64, ptr %i.dj, align 8, !noalias !2959, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2959
  %i.gr = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !2958, !noalias !2960, !noundef !5 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a

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
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i72.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i
  %lpad.loopexit173.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i
  %lpad.loopexit177.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.av, %bb.bc, %bb.bh, %.noexc38.i.i, %bb.bl, %bb.bf, %.noexc78.i.i, %bb.ba, %.noexc119.i.i, %bb.at
  %lpad.loopexit183.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke290.i.invoke.i.i, %.split78.us.i.i.invoke.i.i, %.split.i.i.invoke.i.i.i, %.invoke288.i.i.i, %.invoke286.i.i.i, %.invoke.i.i.i
  %lpad.loopexit.split-lp184.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit52.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit56.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit60.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp180.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i ], [ %lpad.loopexit166.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit179.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit152.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit155.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit158.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit170.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit173.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit177.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit183.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp184.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i unwind label %bb.ak, !noalias !2967

bb.ak:                                            ; preds = %.loopexit.split-lp.i.i.i
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body.i.i unwind label %bb.al, !noalias !2967

bb.al:                                            ; preds = %bb.ak
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2967
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEEB1c_.exit.i.i.i: ; preds = %.loopexit.split-lp.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.body unwind label %bb.ck, !noalias !2968

bb.am:                                            ; preds = %bb.aj
  %.not.i20.i.i = icmp ugt i64 %i.hl, %i.gp
  br i1 %.not.i20.i.i, label %bb.an, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.hq = call i64 @llvm.usub.sat.i64(i64 %i.gp, i64 4) ; 2 uses
  %i.hr = udiv i64 %i.hq, 3
  %i.hs = shl nuw i64 %i.hr, 1
  %i.ht = urem i64 %i.hq, 3
  %.cmp.i.i.i = icmp samesign ugt i64 %i.ht, 1
  %i.hu = zext i1 %.cmp.i.i.i to i64
  %i.hv = or disjoint i64 %i.hs, %i.hu
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hv, i64 %i.hf) ; 2 uses
  %i.hw = icmp ugt i64 %i.gp, %i.hj
  %i.hx = sub nuw i64 %i.gp, %i.hj
  %..i133.i.i.i = call i64 @llvm.umax.i64(i64 %i.hx, i64 %..i.i.i.i)
  %.sroa.04.0.i.i.i = select i1 %i.hw, i64 %..i133.i.i.i, i64 %..i.i.i.i ; 2 uses
  %.not114.i.i.i = icmp ugt i64 %.sroa.04.0.i.i.i, %i.gp
  br i1 %.not114.i.i.i, label %.invoke286.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, !prof !7

.invoke286.i.i.i:                                 ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i, %bb.an
  %i.hy = phi ptr [ @2879, %bb.an ], [ @2885, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  %i.hz = phi i64 [ 41, %bb.an ], [ 37, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  %i.ia = phi ptr [ @2880, %bb.an ], [ @2886, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ia) #36
          to label %.cont287.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.cont287.i.i.i:                                   ; preds = %.invoke286.i.i.i
  unreachable

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.04.1.i.i.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.an ], [ %i.hf, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %.spec.select.i137.i.i.i = select i1 %.sroa.05.0.i.i, i8 28, i8 %spec.select.i137.i.i.i
  %.spec.select.i.i.i.i = select i1 %.sroa.05.0.i.i, i8 26, i8 %spec.select.i.i.i.i ; 7 uses
  %.spec.select.i134.i.reass.i.i = select i1 %.sroa.05.0.i.i, i8 %i.dl, i8 %spec.select.i134.i.reass.reass.i.reass.i.reass.reass
  %.spec.select.i140.i.i.i = select i1 %.sroa.05.0.i.i, i8 29, i8 %spec.select.i140.i.i.i
  store i8 %.spec.select.i137.i.i.i, ptr %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !noalias !2964
  store i8 0, ptr %.sroa.0.i.i.i, align 4, !noalias !2964
  store i8 0, ptr %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !noalias !2964
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !2965, !noalias !2966, !nonnull !5, !noundef !5 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !2965, !noalias !2966, !noundef !5 ; 4 uses
  %.idx = mul nuw nsw i64 %i.ie, 24
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.idx
  %i.ig = icmp ult i64 %i.ie, 384307168202282326
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gz, i64 120
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  %i.ij = load i64, ptr %i.ih, align 8, !alias.scope !2965, !noalias !2966 ; 6 uses
  %i.ik = icmp ult i64 %i.ij, 2305843009213693952 ; 3 uses
  %i.il = icmp eq i64 %i.ij, 0
  %brmerge45.i.i.i = or i1 %.sroa.05.0.i.i, %i.il ; 3 uses
  %i.im = load ptr, ptr %i.ii, align 8, !alias.scope !2965, !noalias !2966 ; 4 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %i.ij
  %i.io = getelementptr i8, ptr %i.in, i64 -4     ; 3 uses
  %.sroa.6130.0.insert.ext.i.i = zext nneg i8 %.spec.select.i.i.i.i to i32
  %.sroa.6130.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.6130.0.insert.ext.i.i, 24 ; 8 uses
  %i.ip = icmp eq i64 %i.ie, 0
  br i1 %i.ip, label %._crit_edge, label %.lr.ph1293

bb.ao:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i
  %i.iq = icmp eq ptr %i.ir, %i.if
  br i1 %i.iq, label %._crit_edge, label %.lr.ph1293

.lr.ph1293:                                       ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, %bb.ao
  %.sroa.043.0.i.i.i1292 = phi i64 [ %.sroa.013.2.i.i.i.i, %bb.ao ], [ %.sroa.04.1.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i1291 = phi ptr [ %i.ir, %bb.ao ], [ %i.ic, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 4 uses
  %.sroa.72.0.i.i.i1290 = phi i64 [ %i.is, %bb.ao ], [ 0, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 24 ; 2 uses
  %i.is = add nuw nsw i64 %.sroa.72.0.i.i.i1290, 1 ; 2 uses
  %.not119.i.i.i = icmp eq i64 %.sroa.72.0.i.i.i1290, 0
  br i1 %.not119.i.i.i, label %bb.bn, label %.outer.us.i.i.i

._crit_edge:                                      ; preds = %bb.ao, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i
  %.sroa.043.0.i.i.i.lcssa = phi i64 [ %.sroa.04.1.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ], [ %.sroa.013.2.i.i.i.i, %bb.ao ]
  %i.it = icmp ult i64 %i.gp, %.sroa.04.1.i.i.i
  br i1 %i.it, label %.invoke288.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.iu = sub nuw i64 %i.gp, %.sroa.04.1.i.i.i    ; 2 uses
  %i.iv = add i64 %.sroa.043.0.i.i.i.lcssa, %i.iu ; 9 uses
  %i.iw = icmp ult i64 %i.iv, %i.iu
  br i1 %i.iw, label %.invoke.i.i.i, label %bb.aq

.invoke288.i.i.i:                                 ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bd, %bb.aw, %._crit_edge, %bb.bv
  %i.ix = phi ptr [ @2893, %bb.bv ], [ @2889, %bb.be ], [ @2888, %bb.bd ], [ @2892, %bb.bi ], [ @2883, %bb.aw ], [ @2881, %._crit_edge ], [ @2890, %bb.bg ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ix) #36
          to label %.cont289.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.cont289.i.i.i:                                   ; preds = %.invoke288.i.i.i
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.iy = icmp ne i64 %i.hh, 0
  %i.iz = icmp ugt i64 %i.iv, 4
  %or.cond.i.i.i = and i1 %i.iy, %i.iz
  br i1 %or.cond.i.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not116.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not116.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i: ; preds = %bb.ar, %.outer.i85.i.i
  %.sroa.0.0.ph.i90287.i.i = phi i64 [ %i.jp, %.outer.i85.i.i ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.013.0.ph.i89286.i.i = phi i64 [ %i.jq, %.outer.i85.i.i ], [ %i.iv, %bb.ar ] ; 6 uses
  %.sroa.036.0.ph.i87285.i.i = phi i64 [ %spec.select49.lcssa.i108.i.i, %.outer.i85.i.i ], [ %i.iv, %bb.ar ]
  %.sroa.7.0.ph.i86284.i.i = phi i32 [ %spec.select.mux.i112.i.i, %.outer.i85.i.i ], [ 32, %bb.ar ] ; 3 uses
  %i.ja = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i86284.i.i)
          to label %.noexc116.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc116.i.i:                                    ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i
  %i.jb = add i64 %.sroa.036.0.ph.i87285.i.i, -1  ; 2 uses
  %spec.select49.peel.i96.i.i = call i64 @llvm.umax.i64(i64 %i.jb, i64 1) ; 2 uses
  %.not8.i.peel.i94.i.i = icmp ne i64 %i.jb, 0    ; 2 uses
  %spec.select.peel.i95.i.i = select i1 %.not8.i.peel.i94.i.i, i32 %.sroa.7.0.ph.i86284.i.i, i32 -1 ; 2 uses
  %i.jc = extractvalue { i64, i64 } %i.ja, 0
  %i.jd = trunc nuw i64 %i.jc to i1
  br i1 %i.jd, label %.loopexit.i105.i.i, label %.peel.next.i97.i.i

.peel.next.i97.i.i:                               ; preds = %.noexc116.i.i, %.noexc117.i.i
  %.sroa.7.0.i98.i.i = phi i32 [ %spec.select.i103.i.i, %.noexc117.i.i ], [ %spec.select.peel.i95.i.i, %.noexc116.i.i ] ; 4 uses
  %.sroa.036.0.i99.i.i = phi i64 [ %spec.select49.i104.i.i, %.noexc117.i.i ], [ %spec.select49.peel.i96.i.i, %.noexc116.i.i ]
  %.not.i.i100.i.i = icmp eq i32 %.sroa.7.0.i98.i.i, -1
  br i1 %.not.i.i100.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i: ; preds = %.peel.next.i97.i.i
  %i.je = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i98.i.i)
          to label %.noexc117.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc117.i.i:                                    ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i
  %i.jf = add i64 %.sroa.036.0.i99.i.i, -1        ; 2 uses
  %spec.select49.i104.i.i = call i64 @llvm.umax.i64(i64 %i.jf, i64 1) ; 2 uses
  %.not8.i.i102.i.i = icmp ne i64 %i.jf, 0        ; 2 uses
  %spec.select.i103.i.i = select i1 %.not8.i.i102.i.i, i32 %.sroa.7.0.i98.i.i, i32 -1 ; 2 uses
  %i.jg = extractvalue { i64, i64 } %i.je, 0
  %i.jh = trunc nuw i64 %i.jg to i1
  br i1 %i.jh, label %.loopexit.i105.i.i, label %.peel.next.i97.i.i, !llvm.loop !2851

.loopexit.i105.i.i:                               ; preds = %.noexc117.i.i, %.noexc116.i.i
  %.not8.i.lcssa.i106.i.i = phi i1 [ %.not8.i.peel.i94.i.i, %.noexc116.i.i ], [ %.not8.i.i102.i.i, %.noexc117.i.i ]
  %spec.select.lcssa.i107.i.i = phi i32 [ %spec.select.peel.i95.i.i, %.noexc116.i.i ], [ %spec.select.i103.i.i, %.noexc117.i.i ] ; 2 uses
  %spec.select49.lcssa.i108.i.i = phi i64 [ %spec.select49.peel.i96.i.i, %.noexc116.i.i ], [ %spec.select49.i104.i.i, %.noexc117.i.i ]
  %.lcssa.i109.i.i = phi { i64, i64 } [ %i.ja, %.noexc116.i.i ], [ %i.je, %.noexc117.i.i ]
  %.sroa.7.0.lcssa59.i110.i.i = phi i32 [ %.sroa.7.0.ph.i86284.i.i, %.noexc116.i.i ], [ %.sroa.7.0.i98.i.i, %.noexc117.i.i ]
  %i.ji = extractvalue { i64, i64 } %.lcssa.i109.i.i, 1 ; 3 uses
  %i.jj = icmp ugt i64 %i.ji, %.sroa.013.0.ph.i89286.i.i
  br i1 %i.jj, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %bb.as

bb.as:                                            ; preds = %.loopexit.i105.i.i
  %i.jk = icmp eq i64 %i.ji, %.sroa.013.0.ph.i89286.i.i ; 3 uses
  %brmerge.not.i111.i.i = select i1 %i.jk, i1 %.not8.i.lcssa.i106.i.i, i1 false
  %spec.select.mux.i112.i.i = select i1 %i.jk, i32 -1, i32 %spec.select.lcssa.i107.i.i
  br i1 %brmerge.not.i111.i.i, label %bb.at, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i: ; preds = %bb.as
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i110.i.i, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc118.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc118.i.i:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i
  %i.jl = icmp eq i64 %.sroa.0.0.ph.i90287.i.i, -1
  br i1 %i.jl, label %.split78.us.i.i.invoke.i.i, label %.outer.i85.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc119.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc119.i.i:                                    ; preds = %bb.at
  %i.jm = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc120.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc120.i.i:                                    ; preds = %.noexc119.i.i
  %i.jn = extractvalue { i64, i64 } %i.jm, 0
  %i.jo = trunc nuw i64 %i.jn to i1
  br i1 %i.jo, label %bb.au, label %.invoke290.i.invoke.i.i, !prof !8

.outer.i85.i.i:                                   ; preds = %.noexc118.i.i
  %i.jp = add nuw i64 %.sroa.0.0.ph.i90287.i.i, 1
  %i.jq = sub nuw i64 %.sroa.013.0.ph.i89286.i.i, %i.ji ; 2 uses
  %.not.i.peel.i91552.i.i = icmp eq i32 %spec.select.lcssa.i107.i.i, -1
  %or.cond.peel.i92.i.i = select i1 %i.jk, i1 true, i1 %.not.i.peel.i91552.i.i
  br i1 %or.cond.peel.i92.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i

bb.au:                                            ; preds = %.noexc120.i.i
  %i.jr = extractvalue { i64, i64 } %i.jm, 1
  %i.js = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i89286.i.i, i64 %i.jr)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i: ; preds = %.outer.i85.i.i, %.loopexit.i105.i.i, %.peel.next.i97.i.i, %bb.au
  %.sroa.013.2.i115.i.i = phi i64 [ %i.js, %bb.au ], [ %.sroa.013.0.ph.i89286.i.i, %.peel.next.i97.i.i ], [ %.sroa.013.0.ph.i89286.i.i, %.loopexit.i105.i.i ], [ %i.jq, %.outer.i85.i.i ]
  %i.jt = icmp ult i64 %i.iv, %.sroa.013.2.i115.i.i
  br i1 %i.jt, label %.invoke290.i.invoke.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, !prof !2969

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2964
  store i8 0, ptr %i.h, align 1, !noalias !2964
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !2964
  %i.ju = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull @2882, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2882, i64 2), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.h, i64 noundef %i.iv, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2964
  %i.jv = sub nuw i64 %i.iv, %i.ju                ; 5 uses
  %i.jw = icmp ult i64 %i.iv, %i.ju
  br i1 %i.jw, label %.invoke288.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jx = icmp ugt i64 %i.hh, -3
  br i1 %i.jx, label %.invoke.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jy = add nuw i64 %i.hh, 2
  %i.jz = call i64 @llvm.usub.sat.i64(i64 %i.gp, i64 %i.gq)
  %..i144.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.jy, i64 %i.jz) ; 2 uses
  %.not117.i.not.i.i = icmp ugt i64 %i.jv, %..i144.i.i.i
  br i1 %.not117.i.not.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i: ; preds = %bb.ay
  %i.ka = sub nuw i64 %i.jv, %..i144.i.i.i
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i: ; preds = %.outer.i44.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i
  %.sroa.0.0.ph.i49293.i.i = phi i64 [ %i.kq, %.outer.i44.i.i ], [ 0, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 2 uses
  %.sroa.013.0.ph.i48292.i.i = phi i64 [ %i.kr, %.outer.i44.i.i ], [ %i.jv, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 6 uses
  %.sroa.036.0.ph.i46291.i.i = phi i64 [ %spec.select49.lcssa.i67.i.i, %.outer.i44.i.i ], [ %i.ka, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ]
  %.sroa.7.0.ph.i45290.i.i = phi i32 [ %spec.select.mux.i71.i.i, %.outer.i44.i.i ], [ 32, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 3 uses
  %i.kb = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i45290.i.i)
          to label %.noexc75.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc75.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i
  %i.kc = add i64 %.sroa.036.0.ph.i46291.i.i, -1  ; 2 uses
  %spec.select49.peel.i55.i.i = call i64 @llvm.umax.i64(i64 %i.kc, i64 1) ; 2 uses
  %.not8.i.peel.i53.i.i = icmp ne i64 %i.kc, 0    ; 2 uses
  %spec.select.peel.i54.i.i = select i1 %.not8.i.peel.i53.i.i, i32 %.sroa.7.0.ph.i45290.i.i, i32 -1 ; 2 uses
  %i.kd = extractvalue { i64, i64 } %i.kb, 0
  %i.ke = trunc nuw i64 %i.kd to i1
  br i1 %i.ke, label %.loopexit.i64.i.i, label %.peel.next.i56.i.i

.peel.next.i56.i.i:                               ; preds = %.noexc75.i.i, %.noexc76.i.i
  %.sroa.7.0.i57.i.i = phi i32 [ %spec.select.i62.i.i, %.noexc76.i.i ], [ %spec.select.peel.i54.i.i, %.noexc75.i.i ] ; 4 uses
  %.sroa.036.0.i58.i.i = phi i64 [ %spec.select49.i63.i.i, %.noexc76.i.i ], [ %spec.select49.peel.i55.i.i, %.noexc75.i.i ]
  %.not.i.i59.i.i = icmp eq i32 %.sroa.7.0.i57.i.i, -1
  br i1 %.not.i.i59.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i60.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i60.i.i: ; preds = %.peel.next.i56.i.i
  %i.kf = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i57.i.i)
          to label %.noexc76.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc76.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i60.i.i
  %i.kg = add i64 %.sroa.036.0.i58.i.i, -1        ; 2 uses
  %spec.select49.i63.i.i = call i64 @llvm.umax.i64(i64 %i.kg, i64 1) ; 2 uses
  %.not8.i.i61.i.i = icmp ne i64 %i.kg, 0         ; 2 uses
  %spec.select.i62.i.i = select i1 %.not8.i.i61.i.i, i32 %.sroa.7.0.i57.i.i, i32 -1 ; 2 uses
  %i.kh = extractvalue { i64, i64 } %i.kf, 0
  %i.ki = trunc nuw i64 %i.kh to i1
  br i1 %i.ki, label %.loopexit.i64.i.i, label %.peel.next.i56.i.i, !llvm.loop !2851

.loopexit.i64.i.i:                                ; preds = %.noexc76.i.i, %.noexc75.i.i
  %.not8.i.lcssa.i65.i.i = phi i1 [ %.not8.i.peel.i53.i.i, %.noexc75.i.i ], [ %.not8.i.i61.i.i, %.noexc76.i.i ]
  %spec.select.lcssa.i66.i.i = phi i32 [ %spec.select.peel.i54.i.i, %.noexc75.i.i ], [ %spec.select.i62.i.i, %.noexc76.i.i ] ; 2 uses
  %spec.select49.lcssa.i67.i.i = phi i64 [ %spec.select49.peel.i55.i.i, %.noexc75.i.i ], [ %spec.select49.i63.i.i, %.noexc76.i.i ]
  %.lcssa.i68.i.i = phi { i64, i64 } [ %i.kb, %.noexc75.i.i ], [ %i.kf, %.noexc76.i.i ]
  %.sroa.7.0.lcssa59.i69.i.i = phi i32 [ %.sroa.7.0.ph.i45290.i.i, %.noexc75.i.i ], [ %.sroa.7.0.i57.i.i, %.noexc76.i.i ]
  %i.kj = extractvalue { i64, i64 } %.lcssa.i68.i.i, 1 ; 3 uses
  %i.kk = icmp ugt i64 %i.kj, %.sroa.013.0.ph.i48292.i.i
  br i1 %i.kk, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, label %bb.az

bb.az:                                            ; preds = %.loopexit.i64.i.i
  %i.kl = icmp eq i64 %i.kj, %.sroa.013.0.ph.i48292.i.i ; 3 uses
  %brmerge.not.i70.i.i = select i1 %i.kl, i1 %.not8.i.lcssa.i65.i.i, i1 false
  %spec.select.mux.i71.i.i = select i1 %i.kl, i32 -1, i32 %spec.select.lcssa.i66.i.i
  br i1 %brmerge.not.i70.i.i, label %bb.ba, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i72.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i72.i.i: ; preds = %bb.az
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i69.i.i, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc77.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i72.i.i
  %i.km = icmp eq i64 %.sroa.0.0.ph.i49293.i.i, -1
  br i1 %i.km, label %.split78.us.i.i.invoke.i.i, label %.outer.i44.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc78.i.i:                                     ; preds = %bb.ba
  %i.kn = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc79.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc79.i.i:                                     ; preds = %.noexc78.i.i
  %i.ko = extractvalue { i64, i64 } %i.kn, 0
  %i.kp = trunc nuw i64 %i.ko to i1
  br i1 %i.kp, label %bb.bb, label %.invoke290.i.invoke.i.i, !prof !8

.outer.i44.i.i:                                   ; preds = %.noexc77.i.i
  %i.kq = add nuw i64 %.sroa.0.0.ph.i49293.i.i, 1
  %i.kr = sub nuw i64 %.sroa.013.0.ph.i48292.i.i, %i.kj ; 2 uses
  %.not.i.peel.i50553.i.i = icmp eq i32 %spec.select.lcssa.i66.i.i, -1
  %or.cond.peel.i51.i.i = select i1 %i.kl, i1 true, i1 %.not.i.peel.i50553.i.i
  br i1 %or.cond.peel.i51.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i

bb.bb:                                            ; preds = %.noexc79.i.i
  %i.ks = extractvalue { i64, i64 } %i.kn, 1
  %i.kt = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i48292.i.i, i64 %i.ks)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i: ; preds = %.outer.i44.i.i, %.loopexit.i64.i.i, %.peel.next.i56.i.i, %bb.bb
  %.sroa.013.2.i74.i.i = phi i64 [ %i.kt, %bb.bb ], [ %.sroa.013.0.ph.i48292.i.i, %.peel.next.i56.i.i ], [ %.sroa.013.0.ph.i48292.i.i, %.loopexit.i64.i.i ], [ %i.kr, %.outer.i44.i.i ] ; 2 uses
  %i.ku = icmp ult i64 %i.jv, %.sroa.013.2.i74.i.i
  br i1 %i.ku, label %.invoke290.i.invoke.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i, !prof !2970

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, %bb.ay
  %.sroa.013.2.i74443.i.i = phi i64 [ %.sroa.013.2.i74.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i ], [ %i.jv, %bb.ay ] ; 4 uses
  %i.kv = icmp ugt i64 %.sroa.013.2.i74443.i.i, 1
  br i1 %i.kv, label %bb.bc, label %.invoke286.i.i.i, !prof !8

bb.bc:                                            ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i
  %.124.i.i.i = select i1 %.sroa.05.0.i.i, i8 28, i8 20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2964
  store i8 0, ptr %i.g, align 1, !noalias !2964
  store i8 0, ptr %.sroa.573.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.124.i.i.i, ptr %.sroa.676.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !2964
  %i.kw = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull @2887, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2887, i64 1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.g, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2964
  %i.kx = sub nuw i64 %.sroa.013.2.i74443.i.i, %i.kw ; 3 uses
  %i.ky = icmp ult i64 %.sroa.013.2.i74443.i.i, %i.kw
  br i1 %i.ky, label %.invoke288.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !2965, !noalias !2966, !nonnull !5, !noundef !5 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.lc = load i64, ptr %i.lb, align 8, !alias.scope !2965, !noalias !2966, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2964
  store i8 0, ptr %i.f, align 1, !noalias !2964
  store i8 0, ptr %.sroa.440.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i140.i.i.i, ptr %.sroa.541.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.642.0..sroa_idx.i.i.i, align 1, !noalias !2964
  %i.ld = icmp eq i64 %.sroa.013.2.i74443.i.i, %i.kw
  br i1 %i.ld, label %.invoke288.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.le = add i64 %i.kx, -1
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lc
  %i.lg = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lf, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.f, i64 noundef %i.le, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2967 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2964
  %i.lh = sub nuw i64 %i.kx, %i.lg                ; 3 uses
  %i.li = icmp ult i64 %i.kx, %i.lg
  br i1 %i.li, label %.invoke288.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2964
  store i8 0, ptr %i.e, align 1, !noalias !2964
  store i8 0, ptr %.sroa.573.0..sroa_idx74.i.i.i, align 1, !noalias !2964
  store i8 %.124.i.i.i, ptr %.sroa.676.0..sroa_idx77.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.7.0..sroa_idx79.i.i.i, align 1, !noalias !2964
  %i.lj = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull @2891, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2891, i64 1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.e, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 3 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2964
  %i.lk = icmp ult i64 %i.lh, %i.lj
  br i1 %i.lk, label %.invoke288.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ll = sub nuw i64 %i.lh, %i.lj                ; 3 uses
  %.not118.i.i.i = icmp eq i64 %i.lh, %i.lj
  br i1 %.not118.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i: ; preds = %bb.bj, %.outer.i.i.i
  %.sroa.0.0.ph.i299.i.i = phi i64 [ %i.mb, %.outer.i.i.i ], [ 0, %bb.bj ] ; 2 uses
  %.sroa.013.0.ph.i298.i.i = phi i64 [ %i.mc, %.outer.i.i.i ], [ %i.ll, %bb.bj ] ; 6 uses
  %.sroa.036.0.ph.i297.i.i = phi i64 [ %spec.select49.lcssa.i.i.i, %.outer.i.i.i ], [ %i.ll, %bb.bj ]
  %.sroa.7.0.ph.i296.i.i = phi i32 [ %spec.select.mux.i.i.i, %.outer.i.i.i ], [ 32, %bb.bj ] ; 3 uses
  %i.lm = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i296.i.i)
          to label %.noexc35.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc35.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i
  %i.ln = add i64 %.sroa.036.0.ph.i297.i.i, -1    ; 2 uses
  %spec.select49.peel.i.i.i = call i64 @llvm.umax.i64(i64 %i.ln, i64 1) ; 2 uses
  %.not8.i.peel.i.i.i = icmp ne i64 %i.ln, 0      ; 2 uses
  %spec.select.peel.i.i.i = select i1 %.not8.i.peel.i.i.i, i32 %.sroa.7.0.ph.i296.i.i, i32 -1 ; 2 uses
  %i.lo = extractvalue { i64, i64 } %i.lm, 0
  %i.lp = trunc nuw i64 %i.lo to i1
  br i1 %i.lp, label %.loopexit.i33.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %.noexc35.i.i, %.noexc36.i.i
  %.sroa.7.0.i31.i.i = phi i32 [ %spec.select.i.i.i, %.noexc36.i.i ], [ %spec.select.peel.i.i.i, %.noexc35.i.i ] ; 4 uses
  %.sroa.036.0.i.i.i = phi i64 [ %spec.select49.i.i.i, %.noexc36.i.i ], [ %spec.select49.peel.i.i.i, %.noexc35.i.i ]
  %.not.i.i32.i.i = icmp eq i32 %.sroa.7.0.i31.i.i, -1
  br i1 %.not.i.i32.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.peel.next.i.i.i
  %i.lq = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i31.i.i)
          to label %.noexc36.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc36.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i
  %i.lr = add i64 %.sroa.036.0.i.i.i, -1          ; 2 uses
  %spec.select49.i.i.i = call i64 @llvm.umax.i64(i64 %i.lr, i64 1) ; 2 uses
  %.not8.i.i.i.i = icmp ne i64 %i.lr, 0           ; 2 uses
  %spec.select.i.i.i = select i1 %.not8.i.i.i.i, i32 %.sroa.7.0.i31.i.i, i32 -1 ; 2 uses
  %i.ls = extractvalue { i64, i64 } %i.lq, 0
  %i.lt = trunc nuw i64 %i.ls to i1
  br i1 %i.lt, label %.loopexit.i33.i.i, label %.peel.next.i.i.i, !llvm.loop !2851

.loopexit.i33.i.i:                                ; preds = %.noexc36.i.i, %.noexc35.i.i
  %.not8.i.lcssa.i.i.i = phi i1 [ %.not8.i.peel.i.i.i, %.noexc35.i.i ], [ %.not8.i.i.i.i, %.noexc36.i.i ]
  %spec.select.lcssa.i.i.i = phi i32 [ %spec.select.peel.i.i.i, %.noexc35.i.i ], [ %spec.select.i.i.i, %.noexc36.i.i ] ; 2 uses
  %spec.select49.lcssa.i.i.i = phi i64 [ %spec.select49.peel.i.i.i, %.noexc35.i.i ], [ %spec.select49.i.i.i, %.noexc36.i.i ]
  %.lcssa.i.i.i = phi { i64, i64 } [ %i.lm, %.noexc35.i.i ], [ %i.lq, %.noexc36.i.i ]
  %.sroa.7.0.lcssa59.i.i.i = phi i32 [ %.sroa.7.0.ph.i296.i.i, %.noexc35.i.i ], [ %.sroa.7.0.i31.i.i, %.noexc36.i.i ]
  %i.lu = extractvalue { i64, i64 } %.lcssa.i.i.i, 1 ; 3 uses
  %i.lv = icmp ugt i64 %i.lu, %.sroa.013.0.ph.i298.i.i
  br i1 %i.lv, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i33.i.i
  %i.lw = icmp eq i64 %i.lu, %.sroa.013.0.ph.i298.i.i ; 3 uses
  %brmerge.not.i.i.i = select i1 %i.lw, i1 %.not8.i.lcssa.i.i.i, i1 false
  %spec.select.mux.i.i.i = select i1 %i.lw, i32 -1, i32 %spec.select.lcssa.i.i.i
  br i1 %brmerge.not.i.i.i, label %bb.bl, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.bk
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i.i.i, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc37.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc37.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i
  %i.lx = icmp eq i64 %.sroa.0.0.ph.i299.i.i, -1
  br i1 %i.lx, label %.split78.us.i.i.invoke.i.i, label %.outer.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc38.i.i:                                     ; preds = %bb.bl
  %i.ly = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc39.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc39.i.i:                                     ; preds = %.noexc38.i.i
  %i.lz = extractvalue { i64, i64 } %i.ly, 0
  %i.ma = trunc nuw i64 %i.lz to i1
  br i1 %i.ma, label %bb.bm, label %.invoke290.i.invoke.i.i, !prof !8

.outer.i.i.i:                                     ; preds = %.noexc37.i.i
  %i.mb = add nuw i64 %.sroa.0.0.ph.i299.i.i, 1
  %i.mc = sub nuw i64 %.sroa.013.0.ph.i298.i.i, %i.lu ; 2 uses
  %.not.i.peel.i554.i.i = icmp eq i32 %spec.select.lcssa.i.i.i, -1
  %or.cond.peel.i.i.i = select i1 %i.lw, i1 true, i1 %.not.i.peel.i554.i.i
  br i1 %or.cond.peel.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i

bb.bm:                                            ; preds = %.noexc39.i.i
  %i.md = extractvalue { i64, i64 } %i.ly, 1
  %i.me = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i298.i.i, i64 %i.md)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i: ; preds = %.outer.i.i.i, %.loopexit.i33.i.i, %.peel.next.i.i.i, %bb.bm
  %.sroa.013.2.i34.i.i = phi i64 [ %i.me, %bb.bm ], [ %.sroa.013.0.ph.i298.i.i, %.peel.next.i.i.i ], [ %.sroa.013.0.ph.i298.i.i, %.loopexit.i33.i.i ], [ %i.mc, %.outer.i.i.i ]
  %i.mf = icmp ult i64 %i.ll, %.sroa.013.2.i34.i.i
  br i1 %i.mf, label %.invoke290.i.invoke.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, !prof !2970

bb.bn:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, %.lr.ph1293
  %.sroa.043.1.i.i.i = phi i64 [ %.sroa.043.0.i.i.i1292, %.lr.ph1293 ], [ %.sroa.013.2.i.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i ] ; 4 uses
  br i1 %.not17.not.i.i, label %bb.bu, label %bb.bx

.outer.us.i.i.i:                                  ; preds = %.lr.ph1293, %bb.br
  %.sroa.035.0.ph.us.i.idx.i.i = phi i64 [ %.sroa.035.0.us.i.add.i.i, %bb.br ], [ 0, %.lr.ph1293 ]
  %.sroa.013.0.ph.us.i.i.i = phi i64 [ %i.mo, %bb.br ], [ %.sroa.043.0.i.i.i1292, %.lr.ph1293 ] ; 6 uses
  %.sroa.0.0.ph.us.i.i.i = phi i64 [ %i.mn, %bb.br ], [ 0, %.lr.ph1293 ] ; 2 uses
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bs
  %i.mg = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 32)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bo
  %.sroa.035.0.us.i.add.i.i = add nuw nsw i64 %.sroa.035.0.us.i.idx.i.i, 4 ; 2 uses
  %i.mh = extractvalue { i64, i64 } %i.mg, 0
  %i.mi = trunc nuw i64 %i.mh to i1
  br i1 %i.mi, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.noexc.i.i
  %i.mj = extractvalue { i64, i64 } %i.mg, 1      ; 3 uses
  %i.mk = icmp ugt i64 %i.mj, %.sroa.013.0.ph.us.i.i.i
  br i1 %i.mk, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ml = icmp eq i64 %i.mj, %.sroa.013.0.ph.us.i.i.i
  br i1 %i.ml, label %.loopexit.i22.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i: ; preds = %bb.bq
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 32, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc23.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc23.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i
  %i.mm = icmp eq i64 %.sroa.0.0.ph.us.i.i.i, -1
  br i1 %i.mm, label %.split66.us.i.i.i, label %bb.br

bb.br:                                            ; preds = %.noexc23.i.i
  %i.mn = add nuw i64 %.sroa.0.0.ph.us.i.i.i, 1
  %i.mo = sub nuw i64 %.sroa.013.0.ph.us.i.i.i, %i.mj
  br label %.outer.us.i.i.i

bb.bs:                                            ; preds = %.noexc.i.i, %.outer.us.i.i.i
  %.sroa.035.0.us.i.idx.i.i = phi i64 [ %.sroa.035.0.us.i.add.i.i, %.noexc.i.i ], [ %.sroa.035.0.ph.us.i.idx.i.i, %.outer.us.i.i.i ] ; 2 uses
  %i.mp = icmp eq i64 %.sroa.035.0.us.i.idx.i.i, 8
  br i1 %i.mp, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, label %bb.bo

.loopexit.i22.i.i:                                ; preds = %bb.bq
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc25.i.i:                                     ; preds = %.loopexit.i22.i.i
  %i.mq = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc26.i.i:                                     ; preds = %.noexc25.i.i
  %i.mr = extractvalue { i64, i64 } %i.mq, 0
  %i.ms = trunc nuw i64 %i.mr to i1
  br i1 %i.ms, label %bb.bt, label %.invoke.i.i, !prof !8

.split66.us.i.i.i:                                ; preds = %.noexc23.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2968

.noexc27.i.i:                                     ; preds = %.split66.us.i.i.i
  unreachable

bb.bt:                                            ; preds = %.noexc26.i.i
  %i.mt = extractvalue { i64, i64 } %i.mq, 1
  %i.mu = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.us.i.i.i, i64 %i.mt)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i

.invoke.i.i:                                      ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, %.noexc26.i.i
  %i.mv = phi ptr [ @16, %.noexc26.i.i ], [ @17, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mv) #37
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2968

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i: ; preds = %bb.bp, %bb.bs, %bb.bt
  %.sroa.013.2.i.i.i = phi i64 [ %i.mu, %bb.bt ], [ %.sroa.013.0.ph.us.i.i.i, %bb.bs ], [ %.sroa.013.0.ph.us.i.i.i, %bb.bp ] ; 2 uses
  %i.mw = icmp ult i64 %.sroa.043.0.i.i.i1292, %.sroa.013.2.i.i.i
  br i1 %i.mw, label %.invoke.i.i, label %bb.bn, !prof !7

bb.bu:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2964
  store i8 0, ptr %i.i, align 1, !noalias !2964
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i134.i.reass.i.i, ptr %.sroa.5.0..sroa_idx.i21.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 1, !noalias !2964
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 16
  %i.my = load i64, ptr %i.mx, align 8, !noalias !2967, !noundef !5 ; 2 uses
  %i.mz = icmp ult i64 %i.my, 2305843009213693952
  call void @llvm.assume(i1 %i.mz)
  %i.na = icmp ne i64 %i.my, 0
  %i.nb = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull readonly align 4 %.sroa.06.0, ptr noundef nonnull readonly %i.dm, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.i, i64 noundef %.sroa.043.1.i.i.i, i1 noundef zeroext %i.na, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2971 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2964
  %i.nc = icmp ult i64 %.sroa.043.1.i.i.i, %i.nb
  br i1 %i.nc, label %.invoke288.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nd = sub nuw i64 %.sroa.043.1.i.i.i, %i.nb
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bn
  %.sroa.043.2.i.i.i = phi i64 [ %i.nd, %bb.bw ], [ %.sroa.043.1.i.i.i, %bb.bn ] ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !2967, !nonnull !5, !noundef !5 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !2967, !noundef !5 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.nh, 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 %.idx.i.i.i ; 4 uses
  call void @llvm.assume(i1 %i.ig)
  %i.nj = icmp samesign ult i64 %i.is, %i.ie
  br i1 %i.nj, label %.outer.us.i.i.i.i, label %.outer.i.preheader.i.i.i

.outer.i.preheader.i.i.i:                         ; preds = %bb.bx
  %i.nk = icmp eq i64 %i.nh, 0
  br i1 %i.nk, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %.lr.ph.i.i.i

.outer.us.i.i.i.i:                                ; preds = %bb.bx, %bb.cc
  %.sroa.0.045.ph.us.i.i.i.i = phi ptr [ %i.nr, %bb.cc ], [ %i.nf, %bb.bx ]
  %.sroa.013.0.ph.us.i.i.i.i = phi i64 [ %i.ob, %bb.cc ], [ %.sroa.043.2.i.i.i, %bb.bx ] ; 6 uses
  %.sroa.0.0.ph.us.i.i.i.i = phi i64 [ %i.oa, %bb.cc ], [ 0, %bb.bx ] ; 5 uses
  br label %bb.cd

bb.by:                                            ; preds = %bb.cd
  %i.nl = load i32, ptr %.sroa.0.045.us.i.i.i.i, align 4, !noalias !2972, !noundef !5 ; 5 uses
  %i.nm = xor i32 %i.nl, 55296
  %i.nn = add i32 %i.nm, -1114112
  %i.no = icmp ult i32 %i.nn, -1112064
  br i1 %i.no, label %.split.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.np = icmp ult i32 %i.nl, 1114112
  call void @llvm.assume(i1 %i.np)
  %i.nq = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %i.nl)
          to label %.noexc145.i.i.i unwind label %.loopexit.i.i.i, !noalias !2967 ; 2 uses

.noexc145.i.i.i:                                  ; preds = %bb.bz
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0.045.us.i.i.i.i, i64 4 ; 2 uses
  %i.ns = extractvalue { i64, i64 } %i.nq, 0
  %i.nt = trunc nuw i64 %i.ns to i1
  br i1 %i.nt, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %.noexc145.i.i.i
  %i.nu = extractvalue { i64, i64 } %i.nq, 1      ; 3 uses
  %i.nv = icmp ugt i64 %i.nu, %.sroa.013.0.ph.us.i.i.i.i
  br i1 %i.nv, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nw = icmp eq i64 %i.nu, %.sroa.013.0.ph.us.i.i.i.i
  br i1 %i.nw, label %.loopexit.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i.i: ; preds = %bb.cb
  call void @llvm.assume(i1 %i.ik)
end_hunk_1
