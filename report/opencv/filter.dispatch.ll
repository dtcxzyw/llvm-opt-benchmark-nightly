Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 195
begin_hunk_0_@_ZN2cv12cpu_baseline19FilterEngine__applyERNS_12FilterEngineERKNS_3MatERS3_RKNS_5Size_IiEERKNS_6Point_IiEE:bb.a
  %i.fl = icmp sgt i32 %i.et, -1
  %i.fm = zext i1 %i.fl to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fn = phi i32 [ %i.fi, %bb.az ], [ %i.fk, %bb.ba ]
  %i.fo = phi i32 [ %i.fj, %bb.az ], [ %i.fm, %bb.ba ]
  store i32 %i.er, ptr %25, align 4, !tbaa !132
  %i.fp = getelementptr inbounds nuw i8, ptr %25, i64 4
  store i32 %i.es, ptr %i.fp, align 4, !tbaa !133
  %i.fq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !134
  %i.fr = getelementptr inbounds nuw i8, ptr %25, i64 12
  store i32 %i.fo, ptr %i.fr, align 4, !tbaa !135
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 4 dereferenceable(16) %25)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit146 unwind label %bb.bg

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit146:            ; preds = %bb.bb
  %i.fs = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.bc unwind label %bb.bh     ; 0 uses

bb.bc:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit146
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.bv

bb.bd:                                            ; preds = %bb.ah
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.be:                                            ; preds = %bb.ar, %bb.ak
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body124

bb.bf:                                            ; preds = %bb.as, %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #25
  br label %.body124

.body124:                                         ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115, %bb.bf
  %.pn85 = phi { ptr, i32 } [ %i.fv, %bb.bf ], [ %i.fu, %bb.be ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bb, %bb.au
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.bh:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit146
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  br label %.body142

.body142:                                         ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133, %bb.bg
  %.pn87.pn = phi { ptr, i32 } [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133 ], [ %i.fx, %bb.bh ], [ %i.fw, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  br label %bb.bi

bb.bi:                                            ; preds = %.body142, %.body124
  %.pn87.pn.pn = phi { ptr, i32 } [ %.pn87.pn, %.body142 ], [ %.pn85, %.body124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.bw

bb.bj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.fy = load i32, ptr %i.av, align 8, !tbaa !130 ; 6 uses
  %i.fz = icmp slt i32 %i.fy, 3
  br i1 %i.fz, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc156 unwind label %bb.bt

.noexc156:                                        ; preds = %bb.bk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.52, i32 noundef 109) #26
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %.noexc156
  unreachable

bb.bm:                                            ; preds = %.noexc156
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147: ; preds = %bb.bm
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !21
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body157

bb.bn:                                            ; preds = %bb.bj
  %i.gg = icmp sgt i32 %i.fy, 0
  br i1 %i.gg, label %bb.bo, label %.thread.i150

.thread.i150:                                     ; preds = %bb.bn
  %i.gh = icmp eq i32 %i.fy, 0
  %i.gi = zext i1 %i.gh to i32
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.gk = icmp eq i32 %i.fy, 2
  %i.gl = zext i1 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !14 ; 2 uses
  %.not.i155 = icmp eq i32 %i.fy, 1
  br i1 %.not.i155, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.go = load i32, ptr %i.gj, align 4, !tbaa !14
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %.thread.i150
  %i.gp = phi i32 [ %i.gi, %.thread.i150 ], [ %i.gn, %bb.bo ]
  %i.gq = icmp sgt i32 %i.fy, -1
  %i.gr = zext i1 %i.gq to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gs = phi i32 [ %i.gn, %bb.bp ], [ %i.gp, %bb.bq ]
  %i.gt = phi i32 [ %i.go, %bb.bp ], [ %i.gr, %bb.bq ]
  %i.gu = load <2 x i32>, ptr %17, align 8, !tbaa !14
  store <2 x i32> %i.gu, ptr %27, align 8, !tbaa !14
  %i.gv = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %i.gs, ptr %i.gv, align 8, !tbaa !134
  %i.gw = getelementptr inbounds nuw i8, ptr %27, i64 12
  store i32 %i.gt, ptr %i.gw, align 4, !tbaa !135
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(16) %27)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit161 unwind label %bb.bt

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit161:            ; preds = %bb.br
  %i.gx = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.bs unwind label %bb.bu     ; 0 uses

bb.bs:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit161
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br, %bb.bk
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.bu:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit161
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #25
  br label %.body157

.body157:                                         ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, %bb.bu
  %.pn = phi { ptr, i32 } [ %i.gz, %bb.bu ], [ %i.gy, %bb.bt ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs, %bb.bc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.by

bb.bw:                                            ; preds = %.body157, %bb.bi
  %.pn87.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn, %bb.bi ], [ %.pn, %.body157 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bd
  %.pn87.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn, %bb.bw ], [ %i.ft, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.body

bb.by:                                            ; preds = %bb.bv, %bb.ac
  %i.ha = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %bb.by
  %i.hb = icmp ult i64 %i.ha, %i.aa               ; 2 uses
  %i.hc = select i1 %i.hb, i32 64, i32 128        ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %31 = load <2 x i32>, ptr %i.hd, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv12cpu_baseline18TiledFilterInvokerE, i64 16), ptr %28, align 8, !tbaa !77
  %i.he = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %0, ptr %i.he, align 8, !tbaa !136
  %i.hf = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %18, ptr %i.hf, align 8, !tbaa !138
  %i.hg = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  store ptr %2, ptr %i.hg, align 8, !tbaa !138
  %i.hh = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  store i32 %i.hc, ptr %i.hh, align 8, !tbaa !140
  %i.hi = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 5 uses
  invoke void @_ZN2cv16TLSDataContainerC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %i.hi)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %28) #25
  br label %.body162

bb.cb:                                            ; preds = %bb.bz
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEEE, i64 16), ptr %i.hi, align 8, !tbaa !77
  %i.hk = load ptr, ptr %i.hg, align 8, !tbaa !145, !nonnull !146, !align !147
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !148
  %i.hn = load i32, ptr %i.hh, align 8, !tbaa !140 ; 2 uses
  %i.ho = add i32 %i.hm, -1
  %i.hp = add i32 %i.ho, %i.hn
  %i.hq = sdiv i32 %i.hp, %i.hn
  %i.hr = getelementptr inbounds nuw i8, ptr %28, i64 36
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !149
  %i.hs = add nsw i32 %i.hc, -1
  %32 = insertelement <2 x i32> poison, i32 %i.hs, i64 0
  %33 = shufflevector <2 x i32> %32, <2 x i32> poison, <2 x i32> zeroinitializer
  %34 = add <2 x i32> %33, %31                    ; 2 uses
  %35 = sdiv <2 x i32> %34, splat (i32 64)
  %36 = sdiv <2 x i32> %34, splat (i32 128)
  %37 = insertelement <2 x i1> poison, i1 %i.hb, i64 0
  %38 = shufflevector <2 x i1> %37, <2 x i1> poison, <2 x i32> zeroinitializer
  %39 = select <2 x i1> %38, <2 x i32> %35, <2 x i32> %36 ; 2 uses
  %40 = extractelement <2 x i32> %39, i64 0
  %41 = extractelement <2 x i32> %39, i64 1
  %i.ht = mul nsw i32 %40, %41
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  store i32 0, ptr %29, align 4, !tbaa !150
  %i.hu = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !152
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28, double noundef -1.000000e+00)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv12cpu_baseline18TiledFilterInvokerE, i64 16), ptr %28, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEEE, i64 16), ptr %i.hi, align 8, !tbaa !77
  invoke void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.hi)
          to label %_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev.exit unwind label %bb.cd, !inline_history !153

bb.cd:                                            ; preds = %bb.cc
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #28, !inline_history !153
  unreachable

_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev.exit: ; preds = %bb.cc
  call void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.hi) #25, !inline_history !153
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %28) #25, !inline_history !154
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.cq

bb.ce:                                            ; preds = %bb.by
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cf:                                            ; preds = %bb.cb
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #25
  br label %.body162

.body162:                                         ; preds = %bb.ca, %bb.cf
  %.pn95 = phi { ptr, i32 } [ %i.hy, %bb.cf ], [ %i.hj, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.body

.body:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ce, %.body162, %bb.bx, %bb.ag
  %.pn95.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.ce ], [ %.pn93, %bb.ag ], [ %.pn87.pn.pn.pn.pn, %bb.bx ], [ %.pn95, %.body162 ], [ %i.bx, %bb.ad ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.cg

bb.cg:                                            ; preds = %.body, %bb.m
  %.pn95.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn.pn, %.body ], [ %i.ak, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.cv

.critedge:                                        ; preds = %bb.h, %_ZNK2cv12FilterEngine11isStatelessEv.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !130 ; 6 uses
  %i.ib = icmp slt i32 %i.ia, 3
  br i1 %i.ib, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc173 unwind label %bb.ct

.noexc173:                                        ; preds = %bb.ch
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.52, i32 noundef 109) #26
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %.noexc173
  unreachable

bb.cj:                                            ; preds = %.noexc173
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164: ; preds = %bb.cj
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !21
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i165: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body174

bb.ck:                                            ; preds = %.critedge
  %i.ii = icmp sgt i32 %i.ia, 0
  br i1 %i.ii, label %bb.cl, label %.thread.i167

.thread.i167:                                     ; preds = %bb.ck
  %i.ij = icmp eq i32 %i.ia, 0
  %i.ik = zext i1 %i.ij to i32
  br label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.im = icmp eq i32 %i.ia, 2
  %i.in = zext i1 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !14 ; 2 uses
  %.not.i172 = icmp eq i32 %i.ia, 1
  br i1 %.not.i172, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.iq = load i32, ptr %i.il, align 4, !tbaa !14
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl, %.thread.i167
  %i.ir = phi i32 [ %i.ik, %.thread.i167 ], [ %i.ip, %bb.cl ]
  %i.is = icmp sgt i32 %i.ia, -1
  %i.it = zext i1 %i.is to i32
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.iu = phi i32 [ %i.ip, %bb.cm ], [ %i.ir, %bb.cn ]
  %i.iv = phi i32 [ %i.iq, %bb.cm ], [ %i.it, %bb.cn ]
  %.sroa.2.0.insert.ext.i168 = zext i32 %i.iv to i64
  %.sroa.2.0.insert.shift.i169 = shl nuw i64 %.sroa.2.0.insert.ext.i168, 32
  %.sroa.0.0.insert.ext.i170 = zext i32 %i.iu to i64
  %.sroa.0.0.insert.insert.i171 = or disjoint i64 %.sroa.2.0.insert.shift.i169, %.sroa.0.0.insert.ext.i170
  store i64 %.sroa.0.0.insert.insert.i171, ptr %30, align 8
  %i.iw = invoke noundef i32 @_ZN2cv12cpu_baseline19FilterEngine__startERNS_12FilterEngineERKNS_5Size_IiEES6_RKNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.cp unwind label %bb.ct     ; 0 uses

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !99 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !10
  %i.jb = sub nsw i32 %i.iy, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !122
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.jf = sext i32 %i.jb to i64
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !107 ; 2 uses
  %i.jh = mul nsw i64 %i.jg, %i.jf
  %i.ji = getelementptr inbounds i8, ptr %i.jd, i64 %i.jh
  %i.jj = trunc i64 %i.jg to i32
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !101
  %i.jm = sub nsw i32 %i.jl, %i.iy
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !122
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !107
  %i.jr = trunc i64 %i.jq to i32
  %i.js = invoke noundef i32 @_ZN2cv12cpu_baseline21FilterEngine__proceedERNS_12FilterEngineEPKhiiPhi(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.ji, i32 noundef %i.jj, i32 noundef %i.jm, ptr noundef %i.jo, i32 noundef %i.jr)
          to label %bb.cq unwind label %bb.cu     ; 0 uses

bb.cq:                                            ; preds = %bb.cp, %_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !103
  %.not.i177 = icmp eq i32 %i.ju, 0
  br i1 %.not.i177, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %15)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  ret void

bb.ct:                                            ; preds = %bb.ch, %bb.co
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body174

.body174:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i165, %bb.ct
  %eh.lpad-body175 = phi { ptr, i32 } [ %i.jx, %bb.ct ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cp
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.body174, %bb.cg, %bb.l
  %.pn95.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn.pn.pn, %bb.cg ], [ %i.jy, %bb.cu ], [ %eh.lpad-body175, %.body174 ], [ %i.aj, %bb.l ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  resume { ptr, i32 } %.pn95.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv13getNumThreadsEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv12FilterEngine11isStatelessEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76   ; 3 uses
  %.not4 = icmp eq ptr %i.i, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.n = and i1 %i.g, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %or.cond = phi i1 [ %i.g, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102  ; 3 uses
  %.not5 = icmp eq ptr %i.p, null
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.u = and i1 %or.cond, %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i1 [ %or.cond, %bb.e ], [ %i.u, %bb.f ]
  ret i1 %i.v
}

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv12cpu_baseline18TiledFilterInvokerE, i64 16), ptr %0, align 8, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEEE, i64 16), ptr %i.a, align 8, !tbaa !77
  invoke void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.a)
          to label %_ZN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEED2Ev.exit unwind label %bb.b, !inline_history !155

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28, !inline_history !155
  unreachable

_ZN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #25, !inline_history !155
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv12cpu_baseline18getLinearRowFilterEiiRKNS_3MatEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.10") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.cv::cpu_baseline::RowNoVec", align 1 ; 3 uses
  %7 = alloca %"struct.cv::cpu_baseline::RowNoVec", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %11 = alloca %"struct.cv::cpu_baseline::SymmRowSmallNoVec", align 1 ; 4 uses
  %12 = alloca %"struct.cv::cpu_baseline::SymmRowSmallNoVec", align 1 ; 4 uses
  %13 = alloca %"struct.cv::cpu_baseline::RowNoVec", align 1 ; 4 uses
  %14 = alloca %"struct.cv::cpu_baseline::RowNoVec", align 1 ; 4 uses
  %15 = alloca %"struct.cv::Ptr.45", align 16     ; 8 uses
  %16 = alloca %"struct.cv::Ptr.49", align 16     ; 8 uses
  %17 = alloca %"struct.cv::cpu_baseline::RowNoVec", align 1 ; 4 uses
  %18 = alloca %"struct.cv::Ptr.53", align 16     ; 8 uses
  %19 = alloca %"struct.cv::Ptr.57", align 16     ; 8 uses
  %20 = alloca %"struct.cv::cpu_baseline::RowNoVec", align 1 ; 4 uses
  %21 = alloca %"struct.cv::Ptr.61", align 16     ; 8 uses
  %22 = alloca %"struct.cv::Ptr.65", align 16     ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline18getLinearRowFilterEiiRKNS_3MatEiiE26__cv_trace_location_fn3242)
  %i.b = and i32 %1, 31                           ; 8 uses
  %i.c = and i32 %2, 31                           ; 7 uses
  %i.d = xor i32 %2, %1
  %i.e = and i32 %i.d, 4064
  %i.f = icmp ne i32 %i.e, 0
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.b, i32 4)
  %.not = icmp samesign ult i32 %i.c, %.sroa.speculated
  %or.cond145 = select i1 %i.f, i1 true, i1 %.not
  br i1 %or.cond145, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !tbaa !131
  %i.h = and i32 %i.g, 4095
  %i.i = icmp eq i32 %i.h, %i.c
  br i1 %i.i, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.critedge
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline18getLinearRowFilterEiiRKNS_3MatEii, ptr noundef nonnull @.str.1, i32 noundef 3248) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.critedge
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %9, align 8, !tbaa !15     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !21
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body103

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !156
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !148
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = and i32 %5, 3
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp slt i32 %i.u, 7
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %i.b, 0
  %i.z = icmp eq i32 %i.c, 4
  %or.cond3 = and i1 %i.y, %i.z
  br i1 %or.cond3, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.aa = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #29
          to label %.noexc unwind label %bb.j     ; 6 uses

.noexc:                                           ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 1, ptr %i.ab, align 8, !tbaa !157, !noalias !159
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 1, ptr %i.ac, align 4, !tbaa !164, !noalias !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS1_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aa, align 8, !tbaa !77, !noalias !159
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  invoke void @_ZN2cv12cpu_baseline18SymmRowSmallFilterIhiNS0_17SymmRowSmallNoVecEEC2ERKNS_3MatEiiRKS2_(ptr noundef nonnull align 8 dereferenceable(232) %i.ad, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS1_17SymmRowSmallNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS2_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, !noalias !159

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS2_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i: ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 248) #27, !noalias !159
  br label %.body

_ZNSt12__shared_ptrIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS1_17SymmRowSmallNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  store ptr %i.ad, ptr %0, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bb

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS2_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.ae, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS2_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body103

bb.k:                                             ; preds = %bb.h
  %i.ah = icmp eq i32 %i.b, 5
  %i.ai = icmp eq i32 %i.c, 5
  %or.cond5 = and i1 %i.ah, %i.ai
  br i1 %or.cond5, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.aj = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #29
          to label %.noexc81 unwind label %bb.m   ; 6 uses

.noexc81:                                         ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.ak, align 8, !tbaa !157, !noalias !166
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 1, ptr %i.al, align 4, !tbaa !164, !noalias !166
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIffNS1_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aj, align 8, !tbaa !77, !noalias !166
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  invoke void @_ZN2cv12cpu_baseline18SymmRowSmallFilterIffNS0_17SymmRowSmallNoVecEEC2ERKNS_3MatEiiRKS2_(ptr noundef nonnull align 8 dereferenceable(232) %i.am, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline18SymmRowSmallFilterIffNS1_17SymmRowSmallNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIffNS2_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, !noalias !166

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIffNS2_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i: ; preds = %.noexc81
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 248) #27, !noalias !166
  br label %.body82

_ZNSt12__shared_ptrIN2cv12cpu_baseline18SymmRowSmallFilterIffNS1_17SymmRowSmallNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc81
  store ptr %i.am, ptr %0, align 8, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.bb

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.body82:                                          ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIffNS2_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, %bb.m
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.an, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline18SymmRowSmallFilterIffNS2_17SymmRowSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body103

._crit_edge:                                      ; preds = %bb.g, %bb.k
  %i.aq = icmp eq i32 %i.b, 0                     ; 3 uses
  %i.ar = icmp eq i32 %i.c, 4
  %or.cond7 = and i1 %i.aq, %i.ar
  br i1 %or.cond7, label %bb.n, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.as = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #29
          to label %.noexc88 unwind label %bb.o   ; 6 uses

.noexc88:                                         ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 1, ptr %i.at, align 8, !tbaa !157, !noalias !171
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 1, ptr %i.au, align 4, !tbaa !164, !noalias !171
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhiNS1_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.as, align 8, !tbaa !77, !noalias !171
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  invoke void @_ZN2cv12cpu_baseline9RowFilterIhiNS0_8RowNoVecEEC2ERKNS_3MatEiRKS2_(ptr noundef nonnull align 8 dereferenceable(225) %i.av, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIhiNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhiNS2_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !171

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhiNS2_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc88
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 248) #27, !noalias !171
  br label %.body89

_ZNSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIhiNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc88
  store ptr %i.av, ptr %0, align 8, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bb

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body89

.body89:                                          ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhiNS2_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.o
  %eh.lpad-body90 = phi { ptr, i32 } [ %i.ay, %bb.o ], [ %i.aw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhiNS2_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body103

bb.p:                                             ; preds = %._crit_edge
  %i.az = icmp eq i32 %i.c, 5                     ; 4 uses
  %or.cond9 = and i1 %i.aq, %i.az
  br i1 %or.cond9, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ba = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #29
          to label %.noexc95 unwind label %bb.r   ; 6 uses

.noexc95:                                         ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 1, ptr %i.bb, align 8, !tbaa !157, !noalias !176
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 1, ptr %i.bc, align 4, !tbaa !164, !noalias !176
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhfNS1_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ba, align 8, !tbaa !77, !noalias !176
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  invoke void @_ZN2cv12cpu_baseline9RowFilterIhfNS0_8RowNoVecEEC2ERKNS_3MatEiRKS2_(ptr noundef nonnull align 8 dereferenceable(225) %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIhfNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhfNS2_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !176

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhfNS2_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc95
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 248) #27, !noalias !176
  br label %.body96

_ZNSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIhfNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc95
  store ptr %i.bd, ptr %0, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bb

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.body96:                                          ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhfNS2_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.r
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %i.be, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhfNS2_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body103

bb.s:                                             ; preds = %bb.p
  %i.bh = icmp eq i32 %i.c, 6                     ; 5 uses
  %or.cond11 = and i1 %i.aq, %i.bh
  br i1 %or.cond11, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bi = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #29
          to label %.noexc102 unwind label %bb.u  ; 6 uses

.noexc102:                                        ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 1, ptr %i.bj, align 8, !tbaa !157, !noalias !181
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 1, ptr %i.bk, align 4, !tbaa !164, !noalias !181
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline9RowFilterIhdNS1_8RowNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bi, align 8, !tbaa !77, !noalias !181
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !181
  invoke void @_ZN2cv12cpu_baseline9RowFilterIhdNS0_8RowNoVecEEC2ERKNS_3MatEiRKS2_(ptr noundef nonnull align 8 dereferenceable(225) %i.bl, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7)
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline21getLinearColumnFilterEiiRKNS_3MatEiidi:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 1, ptr %i.aq, align 8, !tbaa !157, !noalias !243
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 1, ptr %i.ar, align 4, !tbaa !164, !noalias !243
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ap, align 8, !tbaa !77, !noalias !243
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !243
  invoke void @_ZN2cv12cpu_baseline12ColumnFilterINS0_4CastIdhEENS0_11ColumnNoVecEEC2ERKNS_3MatEidRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(240) %i.as, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, double noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12ColumnFilterINS2_4CastIdhEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !243

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12ColumnFilterINS2_4CastIdhEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc143
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 256) #27, !noalias !243
  br label %.body137

_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc143
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !243
  store ptr %i.as, ptr %0, align 8, !tbaa !102
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !165
  br label %.critedge133

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.q:                                             ; preds = %bb.n
  %i.aw = icmp eq i32 %i.e, 2                     ; 2 uses
  %or.cond7 = and i1 %i.ag, %i.aw
  br i1 %or.cond7, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ax = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #29
          to label %.noexc150 unwind label %bb.s  ; 6 uses

.noexc150:                                        ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 1, ptr %i.ay, align 8, !tbaa !157, !noalias !248
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 1, ptr %i.az, align 4, !tbaa !164, !noalias !248
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12ColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ax, align 8, !tbaa !77, !noalias !248
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !248
  invoke void @_ZN2cv12cpu_baseline12ColumnFilterINS0_4CastIftEENS0_11ColumnNoVecEEC2ERKNS_3MatEidRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(232) %i.ba, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, double noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12ColumnFilterINS2_4CastIftEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !248

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12ColumnFilterINS2_4CastIftEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc150
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 248) #27, !noalias !248
  br label %.body137

_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !248
  store ptr %i.ba, ptr %0, align 8, !tbaa !102
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !165
  br label %.critedge133

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.t:                                             ; preds = %bb.q
  %or.cond9 = and i1 %i.ao, %i.aw
  br i1 %or.cond9, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke fastcc void @_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIdtEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_(ptr dead_on_unwind noalias writable align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bf = load <2 x ptr>, ptr %23, align 16, !tbaa !191
  store ptr null, ptr %i.be, align 8, !tbaa !165
  store <2 x ptr> %i.bf, ptr %0, align 8, !tbaa !191
  store ptr null, ptr %23, align 16, !tbaa !253
  call void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdtEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %.critedge133

bb.w:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %.body137

bb.x:                                             ; preds = %bb.t
  %i.bh = icmp eq i32 %i.e, 3                     ; 2 uses
  %or.cond11 = and i1 %i.ag, %i.bh
  br i1 %or.cond11, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  invoke fastcc void @_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIfsEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_(ptr dead_on_unwind noalias writable align 8 %24, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bj = load <2 x ptr>, ptr %24, align 16, !tbaa !191
  store ptr null, ptr %i.bi, align 8, !tbaa !165
  store <2 x ptr> %i.bj, ptr %0, align 8, !tbaa !191
  store ptr null, ptr %24, align 16, !tbaa !256
  call void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIfsEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.critedge133

bb.aa:                                            ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.body137

bb.ab:                                            ; preds = %bb.x
  %or.cond13 = and i1 %i.ao, %i.bh
  br i1 %or.cond13, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke fastcc void @_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIdsEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_(ptr dead_on_unwind noalias writable align 8 %25, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bm = load <2 x ptr>, ptr %25, align 16, !tbaa !191
  store ptr null, ptr %i.bl, align 8, !tbaa !165
  store <2 x ptr> %i.bm, ptr %0, align 8, !tbaa !191
  store ptr null, ptr %25, align 16, !tbaa !259
  call void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdsEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %.critedge133

bb.ae:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %.body137

bb.af:                                            ; preds = %bb.ab
  %i.bo = icmp eq i32 %i.e, 5
  %or.cond15 = and i1 %i.ag, %i.bo
  br i1 %or.cond15, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  invoke fastcc void @_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIffEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bp = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bq = load <2 x ptr>, ptr %26, align 16, !tbaa !191
  store ptr null, ptr %i.bp, align 8, !tbaa !165
  store <2 x ptr> %i.bq, ptr %0, align 8, !tbaa !191
  store ptr null, ptr %26, align 16, !tbaa !262
  call void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIffEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %.critedge133

bb.ai:                                            ; preds = %bb.ag
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %.body137

bb.aj:                                            ; preds = %bb.af
  %i.bs = icmp eq i32 %i.e, 6
  %or.cond17 = and i1 %i.ao, %i.bs
  br i1 %or.cond17, label %bb.ak, label %bb.cg

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  invoke fastcc void @_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIddEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_(ptr dead_on_unwind noalias writable align 8 %27, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bt = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bu = load <2 x ptr>, ptr %27, align 16, !tbaa !191
  store ptr null, ptr %i.bt, align 8, !tbaa !165
  store <2 x ptr> %i.bu, ptr %0, align 8, !tbaa !191
  store ptr null, ptr %27, align 16, !tbaa !265
  call void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIddEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %.critedge133

bb.am:                                            ; preds = %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %.body137

bb.an:                                            ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !156
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !148
  %i.ca = add nsw i32 %i.bz, %i.bx
  %i.cb = icmp eq i32 %i.ca, 4
  br i1 %i.cb, label %bb.ao, label %._crit_edge

bb.ao:                                            ; preds = %bb.an
  %i.cc = icmp eq i32 %i.e, 0
  %i.cd = icmp eq i32 %i.d, 4                     ; 2 uses
  %or.cond19 = and i1 %i.cd, %i.cc
  br i1 %or.cond19, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  store i32 %7, ptr %28, align 4, !tbaa !230
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 4
  %.not.i157 = icmp eq i32 %7, 0
  %i.cf = add nsw i32 %7, -1
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = select i1 %.not.i157, i32 0, i32 %i.cg
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.ci = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #29
          to label %.noexc158 unwind label %bb.aq ; 6 uses

.noexc158:                                        ; preds = %bb.ap
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 1, ptr %i.cj, align 8, !tbaa !157, !noalias !268
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 1, ptr %i.ck, align 4, !tbaa !164, !noalias !268
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ci, align 8, !tbaa !77, !noalias !268
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  invoke void @_ZN2cv12cpu_baseline21SymmColumnSmallFilterINS0_13FixedPtCastExIihEENS0_11ColumnNoVecEEC2ERKNS_3MatEidiRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(244) %i.cl, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, double noundef %6, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(8) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_13FixedPtCastExIihEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i, !noalias !268

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_13FixedPtCastExIihEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i: ; preds = %.noexc158
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 264) #27, !noalias !268
  br label %.body159

_ZNSt12__shared_ptrIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc158
  store ptr %i.cl, ptr %0, align 8, !tbaa !102
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.critedge133

bb.aq:                                            ; preds = %bb.ap
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body159

.body159:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_13FixedPtCastExIihEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i, %bb.aq
  %eh.lpad-body160 = phi { ptr, i32 } [ %i.co, %bb.aq ], [ %i.cm, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_13FixedPtCastExIihEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.body137

bb.ar:                                            ; preds = %bb.ao
  %i.cp = icmp eq i32 %i.e, 3
  %i.cq = icmp eq i32 %7, 0
  %i.cr = and i1 %i.cp, %i.cq
  %or.cond23 = and i1 %i.cd, %i.cr
  br i1 %or.cond23, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.cs = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #29
          to label %.noexc165 unwind label %bb.at ; 6 uses

.noexc165:                                        ; preds = %bb.as
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 1, ptr %i.ct, align 8, !tbaa !157, !noalias !273
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 1, ptr %i.cu, align 4, !tbaa !164, !noalias !273
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIisEENS1_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cs, align 8, !tbaa !77, !noalias !273
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  invoke void @_ZN2cv12cpu_baseline21SymmColumnSmallFilterINS0_4CastIisEENS0_20SymmColumnSmallNoVecEEC2ERKNS_3MatEidiRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(236) %i.cv, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, double noundef %6, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIisEENS1_20SymmColumnSmallNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_4CastIisEENS2_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i, !noalias !273

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_4CastIisEENS2_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i: ; preds = %.noexc165
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 256) #27, !noalias !273
  br label %.body166

_ZNSt12__shared_ptrIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIisEENS1_20SymmColumnSmallNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc165
  store ptr %i.cv, ptr %0, align 8, !tbaa !102
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.cx, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %.critedge133

bb.at:                                            ; preds = %bb.as
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body166

.body166:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_4CastIisEENS2_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i, %bb.at
  %eh.lpad-body167 = phi { ptr, i32 } [ %i.cy, %bb.at ], [ %i.cw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_4CastIisEENS2_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %.body137

bb.au:                                            ; preds = %bb.ar
  %i.cz = icmp eq i32 %i.e, 5
  %i.da = icmp eq i32 %i.d, 5
  %or.cond25 = and i1 %i.da, %i.cz
  br i1 %or.cond25, label %bb.av, label %._crit_edge

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.db = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #29
          to label %.noexc172 unwind label %bb.aw ; 6 uses

.noexc172:                                        ; preds = %bb.av
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 1, ptr %i.dc, align 8, !tbaa !157, !noalias !278
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 1, ptr %i.dd, align 4, !tbaa !164, !noalias !278
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIffEENS1_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.db, align 8, !tbaa !77, !noalias !278
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  invoke void @_ZN2cv12cpu_baseline21SymmColumnSmallFilterINS0_4CastIffEENS0_20SymmColumnSmallNoVecEEC2ERKNS_3MatEidiRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(236) %i.de, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, double noundef %6, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIffEENS1_20SymmColumnSmallNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_4CastIffEENS2_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i, !noalias !278

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_4CastIffEENS2_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i: ; preds = %.noexc172
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 256) #27, !noalias !278
  br label %.body173

_ZNSt12__shared_ptrIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIffEENS1_20SymmColumnSmallNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc172
  store ptr %i.de, ptr %0, align 8, !tbaa !102
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %i.dg, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %.critedge133

bb.aw:                                            ; preds = %bb.av
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body173

.body173:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_4CastIffEENS2_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i, %bb.aw
  %eh.lpad-body174 = phi { ptr, i32 } [ %i.dh, %bb.aw ], [ %i.df, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline21SymmColumnSmallFilterINS2_4CastIffEENS2_20SymmColumnSmallNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %.body137

._crit_edge:                                      ; preds = %bb.an, %bb.au
  %i.di = icmp eq i32 %i.e, 0                     ; 3 uses
  %i.dj = icmp eq i32 %i.d, 4                     ; 2 uses
  %or.cond27 = and i1 %i.dj, %i.di
  br i1 %or.cond27, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  store i32 %7, ptr %34, align 4, !tbaa !230
  %i.dk = getelementptr inbounds nuw i8, ptr %34, i64 4
  %.not.i179 = icmp eq i32 %7, 0
  %i.dl = add nsw i32 %7, -1
  %i.dm = shl nuw i32 1, %i.dl
  %i.dn = select i1 %.not.i179, i32 0, i32 %i.dm
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  %i.do = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #29
          to label %.noexc180 unwind label %bb.ay ; 6 uses

.noexc180:                                        ; preds = %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 1, ptr %i.dp, align 8, !tbaa !157, !noalias !283
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 1, ptr %i.dq, align 4, !tbaa !164, !noalias !283
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline16SymmColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.do, align 8, !tbaa !77, !noalias !283
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  invoke void @_ZN2cv12cpu_baseline16SymmColumnFilterINS0_13FixedPtCastExIihEENS0_11ColumnNoVecEEC2ERKNS_3MatEidiRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(244) %i.dr, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4, double noundef %6, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %_ZNSt12__shared_ptrIN2cv12cpu_baseline16SymmColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline16SymmColumnFilterINS2_13FixedPtCastExIihEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i, !noalias !283

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline16SymmColumnFilterINS2_13FixedPtCastExIihEENS2_11ColumnNoVecEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i: ; preds = %.noexc180
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 264) #27, !noalias !283
  br label %.body181

_ZNSt12__shared_ptrIN2cv12cpu_baseline16SymmColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc180
  store ptr %i.dr, ptr %0, align 8, !tbaa !102
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dt, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  br label %.critedge133

bb.ay:                                            ; preds = %bb.ax
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body181
end_hunk_1
begin_hunk_2_@_ZN2cv12FilterEngine7proceedEPKhiiPhi:bb.a

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.n = invoke noundef i32 @_ZN2cv12cpu_baseline21FilterEngine__proceedERNS_12FilterEngineEPKhiiPhi(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !103
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %i.n

bb.l:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.s, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv12FilterEngine5applyERKNS_3MatERS1_RKNS_5Size_IiEERKNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12FilterEngine5applyERKNS_3MatERS1_RKNS_5Size_IiEERKNS_6Point_IiEEE25__cv_trace_location_fn220)
  %i.a = load i32, ptr %1, align 8, !tbaa !131
  %i.b = and i32 %i.a, 4095                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !tbaa !131
  %i.h = and i32 %i.g, 4095                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !436  ; 2 uses
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.a
  %i.l = phi i32 [ %i.b, %bb.a ], [ %i.h, %bb.c ]
  %i.m = phi i32 [ %i.d, %bb.a ], [ %i.j, %bb.c ]
  %i.n = phi ptr [ @_ZZN2cv12FilterEngine5applyERKNS_3MatERS1_RKNS_5Size_IiEERKNS_6Point_IiEEE15__cv_check__222, %bb.a ], [ @_ZZN2cv12FilterEngine5applyERKNS_3MatERS1_RKNS_5Size_IiEERKNS_6Point_IiEEE15__cv_check__223, %bb.c ]
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.l, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n) #26
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv12cpu_baseline19FilterEngine__applyERNS_12FilterEngineERKNS_3MatERS3_RKNS_5Size_IiEERKNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !103
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 16) i32 @_ZN2cv13getKernelTypeERKNS_11_InputArrayENS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !449
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !356, !noalias !449
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = load i32, ptr %2, align 8, !tbaa !131
  %i.f = and i32 %i.e, 4064
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv13getKernelTypeERKNS_11_InputArrayENS_6Point_IiEE, ptr noundef nonnull @.str.19, i32 noundef 236) #26
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.m = load i64, ptr %i.k, align 8, !tbaa !21
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.o

bb.i:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !156
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !148
  %i.s = mul i32 %i.r, %i.p                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !354
  store ptr %5, ptr %i.t, align 8, !tbaa !356
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !122  ; 2 uses
  %i.x = load i32, ptr %i.o, align 8, !tbaa !156  ; 2 uses
  %i.y = icmp eq i32 %i.x, 1
  %i.z = load i32, ptr %i.q, align 4              ; 2 uses
  %i.aa = icmp eq i32 %i.z, 1
  %or.cond = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ab = shl nsw i32 %.sroa.0.0.extract.trunc, 1
  %i.ac = or disjoint i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.ac, %i.z
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %sh.diff = lshr i64 %1, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.ae = or i32 %tr.sh.diff, 1
  %i.af = icmp eq i32 %i.ae, %i.x
  %spec.select = select i1 %i.af, i32 15, i32 12
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.k
  %.034 = phi i32 [ 12, %bb.j ], [ %spec.select, %bb.l ], [ 12, %bb.k ] ; 2 uses
  %i.ah = icmp sgt i32 %i.s, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.ai = zext nneg i32 %i.s to i64
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.13549 = phi i32 [ %.034, %.lr.ph.preheader ], [ %.5, %.lr.ph ] ; 2 uses
  %.03848 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.al = load double, ptr %i.ak, align 8, !tbaa !228 ; 6 uses
  %i.am = xor i64 %indvars.iv, -1
  %i.an = getelementptr [8 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !228 ; 2 uses
  %i.ap = fcmp une double %i.al, %i.ao
  %i.aq = and i32 %.13549, -2
  %.236 = select i1 %i.ap, i32 %i.aq, i32 %.13549 ; 2 uses
  %i.ar = fneg double %i.ao
  %i.as = fcmp une double %i.al, %i.ar
  %i.at = and i32 %.236, -3
  %.337 = select i1 %i.as, i32 %i.at, i32 %.236   ; 2 uses
  %i.au = fcmp olt double %i.al, 0.000000e+00
  %i.av = and i32 %.337, -5
  %.4 = select i1 %i.au, i32 %i.av, i32 %.337     ; 2 uses
  %i.aw = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ax = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.aw)
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fcmp une double %i.al, %i.ay
  %i.ba = and i32 %.4, -9
  %.5 = select i1 %i.az, i32 %i.ba, i32 %.4       ; 2 uses
  %i.bb = fadd double %.03848, %i.al              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !452

._crit_edge:                                      ; preds = %.lr.ph, %bb.n
  %.038.lcssa = phi double [ 0.000000e+00, %bb.n ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.135.lcssa = phi i32 [ %.034, %bb.n ], [ %.5, %.lr.ph ] ; 2 uses
  %i.bc = fadd double %.038.lcssa, -1.000000e+00
  %i.bd = call double @llvm.fabs.f64(double %i.bc)
  %i.be = call double @llvm.fabs.f64(double %.038.lcssa)
  %i.bf = fadd double %i.be, 1.000000e+00
  %i.bg = fmul double %i.bf, f0x3E80000000000000
  %i.bh = fcmp ogt double %i.bd, %i.bg
  %i.bi = and i32 %.135.lcssa, -5
  %.6 = select i1 %i.bh, i32 %i.bi, i32 %.135.lcssa
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i32 %.6

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn44.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn44.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv18getLinearRowFilterEiiRKNS_11_InputArrayEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.10") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv18getLinearRowFilterEiiRKNS_11_InputArrayEiiE25__cv_trace_location_fn275)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !356, !noalias !453
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.g

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.g

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  invoke void @_ZN2cv12cpu_baseline18getLinearRowFilterEiiRKNS_3MatEii(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.10") align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %4, i32 noundef %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv21getLinearColumnFilterEiiRKNS_11_InputArrayEiidi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.14") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i32 noundef %5, double noundef %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv21getLinearColumnFilterEiiRKNS_11_InputArrayEiidiE25__cv_trace_location_fn289)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !356, !noalias !456
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.g

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.g

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  invoke void @_ZN2cv12cpu_baseline21getLinearColumnFilterEiiRKNS_3MatEiidi(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.14") align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %4, i32 noundef %5, double noundef %6, i32 noundef %7)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv27createSeparableLinearFilterEiiRKNS_11_InputArrayES2_NS_6Point_IiEEdiiRKNS_7Scalar_IdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.212") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %5, double noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(32) %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"struct.cv::Ptr.10", align 8      ; 7 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"struct.cv::Ptr.14", align 8      ; 7 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %24 = alloca %"struct.cv::Ptr", align 8         ; 9 uses
  %.sroa.0.0.extract.trunc = trunc i64 %5 to i32  ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %5, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !459
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !356, !noalias !459
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !356, !noalias !462
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit116 unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit116 unwind label %bb.f

_ZNK2cv11_InputArray6getMatEi.exit116:            ; preds = %bb.d, %bb.e
  %i.i = and i32 %1, 4095                         ; 2 uses
  %i.j = and i32 %2, 4095                         ; 2 uses
  %i.k = and i32 %1, 31                           ; 2 uses
  %i.l = and i32 %2, 31                           ; 3 uses
  %i.m = lshr i32 %1, 5
  %i.n = and i32 %i.m, 127                        ; 2 uses
  %i.o = lshr i32 %2, 5
  %i.p = and i32 %i.o, 127
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.l, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv27createSeparableLinearFilterEiiRKNS_11_InputArrayES2_NS_6Point_IiEEdiiRKNS_7Scalar_IdEE, ptr noundef nonnull @.str.19, i32 noundef 325) #26
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %12, align 8, !tbaa !15    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.x = load i64, ptr %i.v, align 8, !tbaa !21
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.t, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.bu

bb.l:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit116
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !156
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !148
  %i.ae = add i32 %i.ab, -1
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %.pre = load i32, ptr %i.z, align 8, !tbaa !156 ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !148
  %i.aj = add i32 %.pre, -1
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.0.0 = phi i32 [ %i.al, %bb.m ], [ %.sroa.0.0.extract.trunc, %bb.l ] ; 3 uses
  %i.am = icmp slt i64 %5, 0
  %i.an = sdiv i32 %i.af, 2
  %.sroa.6.0 = select i1 %i.am, i32 %i.an, i32 %.sroa.6.0.extract.trunc ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.ao, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.ap, align 4, !tbaa !13
  store i32 16842752, ptr %14, align 8, !tbaa !354
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %10, ptr %i.aq, align 8, !tbaa !356
  %i.ar = icmp eq i32 %.pre, 1                    ; 2 uses
  %spec.select = select i1 %i.ar, i32 %.sroa.0.0, i32 0
  %spec.select155 = select i1 %i.ar, i32 0, i32 %.sroa.0.0
  %.sroa.3128.0.insert.ext = zext i32 %spec.select155 to i64
  %.sroa.3128.0.insert.shift = shl nuw i64 %.sroa.3128.0.insert.ext, 32
  %.sroa.0127.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.0127.0.insert.insert = or disjoint i64 %.sroa.3128.0.insert.shift, %.sroa.0127.0.insert.ext
  %i.as = invoke noundef i32 @_ZN2cv13getKernelTypeERKNS_11_InputArrayENS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.0127.0.insert.insert)
          to label %bb.o unwind label %bb.v       ; 4 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.at, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.au, align 4, !tbaa !13
  store i32 16842752, ptr %15, align 8, !tbaa !354
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %11, ptr %i.av, align 8, !tbaa !356
  %i.aw = load i32, ptr %i.aa, align 8, !tbaa !156
  %i.ax = icmp eq i32 %i.aw, 1                    ; 2 uses
  %spec.select156 = select i1 %i.ax, i32 0, i32 %.sroa.6.0
  %spec.select157 = select i1 %i.ax, i32 %.sroa.6.0, i32 0
  %.sroa.3.0.insert.ext = zext i32 %spec.select156 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %spec.select157 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  %i.ay = invoke noundef i32 @_ZN2cv13getKernelTypeERKNS_11_InputArrayENS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 %.sroa.0.0.insert.insert)
          to label %bb.p unwind label %bb.w       ; 4 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #25
  %.sroa.speculated131 = call i32 @llvm.umax.i32(i32 %i.k, i32 %i.l)
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.sroa.speculated131, i32 5) ; 6 uses
  %i.az = icmp eq i32 %i.k, 0
  br i1 %i.az, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp eq i32 %i.as, 5
  %i.bb = icmp eq i32 %i.ay, 5
  %or.cond = and i1 %i.ba, %i.bb
  %i.bc = icmp eq i32 %i.l, 0                     ; 2 uses
  %or.cond3 = and i1 %i.bc, %or.cond
  br i1 %or.cond3, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = and i32 %i.as, 3
  %.not = icmp eq i32 %i.bd, 0
  %i.be = and i32 %i.ay, 3
  %.not91 = icmp eq i32 %i.be, 0
  %or.cond113 = or i1 %.not, %.not91
  br i1 %or.cond113, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = and i32 %i.ay, %i.as
  %i.bg = icmp samesign ugt i32 %i.bf, 7
  %i.bh = icmp eq i32 %i.l, 3
  %or.cond5 = and i1 %i.bh, %i.bg
  br i1 %or.cond5, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.bi = select i1 %i.bc, i32 8, i32 0           ; 3 uses
  %i.bj = invoke fastcc noundef zeroext i1 @_ZN2cvL24createBitExactKernel_32SERKNS_3MatERS0_i(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef %i.bi)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bk = invoke fastcc noundef zeroext i1 @_ZN2cvL24createBitExactKernel_32SERKNS_3MatERS0_i(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %i.bi)
          to label %bb.z unwind label %bb.y

bb.v:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bu

bb.w:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.bu

bb.x:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.y:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.z:                                             ; preds = %bb.u
  %or.cond7 = and i1 %i.bj, %i.bk
  %i.bp = shl nuw nsw i32 %i.bi, 1                ; 2 uses
  %i.bq = shl nuw nsw i32 1, %i.bp
  %i.br = uitofp nneg i32 %i.bq to double
  %i.bs = fmul double %6, %i.br
  br i1 %or.cond7, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.r, %bb.p, %bb.s, %bb.z
  %i.bt = load i32, ptr %10, align 8, !tbaa !131
  %i.bu = and i32 %i.bt, 4095
  %.not94 = icmp eq i32 %i.bu, %.sroa.speculated
  br i1 %.not94, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.bw, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !354
  store ptr %16, ptr %i.bv, align 8, !tbaa !356
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %.sroa.speculated, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.af

bb.ac:                                            ; preds = %bb.aj, %bb.ae
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ad:                                            ; preds = %bb.aa
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.bt

bb.ae:                                            ; preds = %.thread
  %i.bz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.af unwind label %bb.ac     ; 0 uses

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %i.ca = load i32, ptr %11, align 8, !tbaa !131
  %i.cb = and i32 %i.ca, 4095
  %.not97 = icmp eq i32 %i.cb, %.sroa.speculated
  br i1 %.not97, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.cd, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !354
  store ptr %17, ptr %i.cc, align 8, !tbaa !356
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %.sroa.speculated, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.bt

bb.aj:                                            ; preds = %bb.af
  %i.cf = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.ak unwind label %bb.ac     ; 0 uses

bb.ak:                                            ; preds = %bb.z, %bb.aj, %bb.ah
  %.1151 = phi i32 [ 0, %bb.ah ], [ 0, %bb.aj ], [ %i.bp, %bb.z ]
  %.163149 = phi i32 [ %.sroa.speculated, %bb.ah ], [ %.sroa.speculated, %bb.aj ], [ 4, %bb.z ]
  %.167147 = phi double [ %6, %bb.ah ], [ %6, %bb.aj ], [ %i.bs, %bb.z ]
  %i.cg = shl nuw nsw i32 %i.n, 5
  %i.ch = add nuw nsw i32 %.163149, %i.cg         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.ci = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.ci, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 0, ptr %i.cj, align 4, !tbaa !13
  store i32 16842752, ptr %21, align 8, !tbaa !354
  %i.ck = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %16, ptr %i.ck, align 8, !tbaa !356
  invoke void @_ZN2cv18getLinearRowFilterEiiRKNS_11_InputArrayEii(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.10") align 8 %20, i32 noundef %i.i, i32 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef %.sroa.0.0, i32 noundef %i.as)
          to label %bb.al unwind label %bb.bm

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.cl = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.cl, align 8, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.cm, align 4, !tbaa !13
  store i32 16842752, ptr %23, align 8, !tbaa !354
  %i.cn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %17, ptr %i.cn, align 8, !tbaa !356
  invoke void @_ZN2cv21getLinearColumnFilterEiiRKNS_11_InputArrayEiidi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.14") align 8 %22, i32 noundef %i.ch, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 noundef %.sroa.6.0, i32 noundef %i.ay, double noundef %.167147, i32 noundef %.1151)
          to label %bb.am unwind label %bb.bn

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.co = invoke noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #29
          to label %bb.an unwind label %bb.bo     ; 6 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv12FilterEngineC2ERKNS_3PtrINS_10BaseFilterEEERKNS1_INS_13BaseRowFilterEEERKNS1_INS_16BaseColumnFilterEEEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(304) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %22, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.ch, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ao unwind label %bb.bp

bb.ao:                                            ; preds = %bb.an
  store ptr %i.co, ptr %0, align 8, !tbaa !465
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !165
  %i.cq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.at unwind label %bb.ap     ; 5 uses

bb.ap:                                            ; preds = %bb.ao
  %i.cr = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN2cvL24createBitExactKernel_32SERKNS_3MatERS0_i:bb.a
.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  br i1 %or.cond.i39, label %.lr.ph.split.split.us.split.split.us, label %_ZN2cv3Mat2atIiEERT_i.exit.us49.preheader

_ZN2cv3Mat2atIiEERT_i.exit.us49.preheader:        ; preds = %.lr.ph.split.split.us.split
  %wide.trip.count167 = and i64 %i.j, 2147483647
  br label %_ZN2cv3Mat2atIiEERT_i.exit.us49

.lr.ph.split.split.us.split.split.us:             ; preds = %.lr.ph.split.split.us.split
  %i.cc = load i32, ptr %i.bn, align 4, !tbaa !14
  %i.cd = load double, ptr %i.ak, align 8, !tbaa !228
  %i.ce = sitofp i32 %i.cc to double
  %i.cf = fsub double %i.cd, %i.ce
  %i.cg = call double @llvm.fabs.f64(double %i.cf)
  %i.ch = fcmp ule double %i.cg, %i.n
  br i1 %i.ch, label %.lr.ph116.preheader, label %.critedge

.lr.ph116.preheader:                              ; preds = %.lr.ph.split.split.us.split.split.us
  %wide.trip.count172 = and i64 %i.j, 2147483647  ; 2 uses
  %exitcond173.not228 = icmp eq i64 %wide.trip.count172, 1
  br i1 %exitcond173.not228, label %.critedge, label %_ZN2cv3Mat2atIiEERT_i.exit.us49.us106.lr.ph, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us49.us106.lr.ph:      ; preds = %.lr.ph116.preheader
  br label %_ZN2cv3Mat2atIiEERT_i.exit.us49.us106, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us49.us106:            ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us49.us106.lr.ph, %.lr.ph116
  %indvars.iv169229 = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit.us49.us106.lr.ph ], [ %indvars.iv.next170, %.lr.ph116 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv169229
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !14
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv169229
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !228
  %i.cm = sitofp i32 %i.cj to double
  %i.cn = fsub double %i.cl, %i.cm
  %i.co = call double @llvm.fabs.f64(double %i.cn)
  %i.cp = fcmp ule double %i.co, %i.n
  br i1 %i.cp, label %.lr.ph116, label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90..critedge.loopexit211_crit_edge, !llvm.loop !471

.lr.ph116:                                        ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us49.us106
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169229, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.lr.ph100..critedge.loopexit211_crit_edge, label %_ZN2cv3Mat2atIiEERT_i.exit.us49.us106, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us49:                  ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.us51, %_ZN2cv3Mat2atIiEERT_i.exit.us49.preheader
  %indvars.iv164 = phi i64 [ 0, %_ZN2cv3Mat2atIiEERT_i.exit.us49.preheader ], [ %indvars.iv.next165, %_ZN2cv3Mat2atIdEERT_i.exit.us51 ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv164
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !14
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us49
  %i.cs = trunc nuw nsw i64 %indvars.iv164 to i32 ; 2 uses
  %i.ct = sdiv i32 %i.cs, %i.ai                   ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %i.ai                ; 0 uses
  %.recomposed267 = srem i32 %i.cs, %i.ai
  %i.cv = sext i32 %i.ct to i64
  %i.cw = mul i64 %i.am, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cw
  %i.cy = sext i32 %.recomposed267 to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cy
  br label %_ZN2cv3Mat2atIdEERT_i.exit.us51

bb.k:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us49
  %i.da = mul i64 %i.am, %indvars.iv164
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.da
  br label %_ZN2cv3Mat2atIdEERT_i.exit.us51

_ZN2cv3Mat2atIdEERT_i.exit.us51:                  ; preds = %bb.k, %bb.j
  %.0.i40.us52 = phi ptr [ %i.cz, %bb.j ], [ %i.db, %bb.k ]
  %i.dc = load double, ptr %.0.i40.us52, align 8, !tbaa !228
  %i.dd = sitofp i32 %i.cr to double
  %i.de = fsub double %i.dc, %i.dd
  %i.df = call double @llvm.fabs.f64(double %i.de)
  %i.dg = fcmp ule double %i.df, %i.n             ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp ne i64 %indvars.iv.next165, %wide.trip.count167
  %or.cond237.not = select i1 %i.dg, i1 %exitcond168.not, i1 false
  br i1 %or.cond237.not, label %_ZN2cv3Mat2atIiEERT_i.exit.us49, label %.critedge, !llvm.loop !471

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.dh = load i32, ptr %i.r, align 8, !tbaa !14
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.dj = load ptr, ptr %i.t, align 8, !tbaa !122 ; 5 uses
  %i.dk = load i64, ptr %i.u, align 8, !tbaa !107 ; 3 uses
  br i1 %i.x, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !14
  %i.dm = load double, ptr %i.ak, align 8, !tbaa !228
  %i.dn = sitofp i32 %i.dl to double
  %i.do = fsub double %i.dm, %i.dn
  %i.dp = call double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp ule double %i.dp, %i.n
  br i1 %i.dq, label %.lr.ph102.preheader, label %.critedge

.lr.ph102.preheader:                              ; preds = %.lr.ph.split.split.split.us.split.us
  %wide.trip.count162 = and i64 %i.j, 2147483647  ; 2 uses
  %exitcond163.not224 = icmp eq i64 %wide.trip.count162, 1
  br i1 %exitcond163.not224, label %.critedge, label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us.lr.ph, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us60.us.lr.ph:         ; preds = %.lr.ph102.preheader
  br label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us60.us:               ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us60.us.lr.ph, %.lr.ph102
  %indvars.iv159225 = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit.us60.us.lr.ph ], [ %indvars.iv.next160, %.lr.ph102 ] ; 3 uses
  %i.dr = mul i64 %i.dk, %indvars.iv159225
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !14
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv159225
  %i.dv = load double, ptr %i.du, align 8, !tbaa !228
  %i.dw = sitofp i32 %i.dt to double
  %i.dx = fsub double %i.dv, %i.dw
  %i.dy = call double @llvm.fabs.f64(double %i.dx)
  %i.dz = fcmp ule double %i.dy, %i.n
  br i1 %i.dz, label %.lr.ph102, label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90..critedge.loopexit211_crit_edge, !llvm.loop !471

.lr.ph102:                                        ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us60.us
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159225, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.lr.ph100..critedge.loopexit211_crit_edge, label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us, !llvm.loop !471

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  br i1 %or.cond.i39, label %.lr.ph.split.split.split.us.split.split.us, label %_ZN2cv3Mat2atIiEERT_i.exit.us60.preheader

_ZN2cv3Mat2atIiEERT_i.exit.us60.preheader:        ; preds = %.lr.ph.split.split.split.us.split
  %wide.trip.count152 = and i64 %i.j, 2147483647
  br label %_ZN2cv3Mat2atIiEERT_i.exit.us60

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us.split
  %i.ea = load i32, ptr %i.dj, align 4, !tbaa !14
  %i.eb = load double, ptr %i.ak, align 8, !tbaa !228
  %i.ec = sitofp i32 %i.ea to double
  %i.ed = fsub double %i.eb, %i.ec
  %i.ee = call double @llvm.fabs.f64(double %i.ed)
  %i.ef = fcmp ule double %i.ee, %i.n
  br i1 %i.ef, label %.lr.ph100.preheader, label %.critedge

.lr.ph100.preheader:                              ; preds = %.lr.ph.split.split.split.us.split.split.us
  %wide.trip.count157 = and i64 %i.j, 2147483647  ; 2 uses
  %exitcond158.not221 = icmp eq i64 %wide.trip.count157, 1
  br i1 %exitcond158.not221, label %.critedge, label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90.lr.ph, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us60.us90.lr.ph:       ; preds = %.lr.ph100.preheader
  br label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us60.us90:             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90.lr.ph, %.lr.ph100
  %indvars.iv154222 = phi i64 [ 1, %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90.lr.ph ], [ %indvars.iv.next155, %.lr.ph100 ] ; 3 uses
  %i.eg = mul i64 %i.dk, %indvars.iv154222
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !14
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv154222
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !228
  %i.el = sitofp i32 %i.ei to double
  %i.em = fsub double %i.ek, %i.el
  %i.en = call double @llvm.fabs.f64(double %i.em)
  %i.eo = fcmp ule double %i.en, %i.n
  br i1 %i.eo, label %.lr.ph100, label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90..critedge.loopexit211_crit_edge, !llvm.loop !471

.lr.ph100:                                        ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154222, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %.lr.ph100..critedge.loopexit211_crit_edge, label %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us60:                  ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.us62, %_ZN2cv3Mat2atIiEERT_i.exit.us60.preheader
  %indvars.iv149 = phi i64 [ 0, %_ZN2cv3Mat2atIiEERT_i.exit.us60.preheader ], [ %indvars.iv.next150, %_ZN2cv3Mat2atIdEERT_i.exit.us62 ] ; 4 uses
  %i.ep = mul i64 %i.dk, %indvars.iv149
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !14
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us60
  %i.es = trunc nuw nsw i64 %indvars.iv149 to i32 ; 2 uses
  %i.et = sdiv i32 %i.es, %i.ai                   ; 2 uses
  %i.eu = mul nsw i32 %i.et, %i.ai                ; 0 uses
  %.recomposed268 = srem i32 %i.es, %i.ai
  %i.ev = sext i32 %i.et to i64
  %i.ew = mul i64 %i.am, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ew
  %i.ey = sext i32 %.recomposed268 to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ey
  br label %_ZN2cv3Mat2atIdEERT_i.exit.us62

bb.m:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us60
  %i.fa = mul i64 %i.am, %indvars.iv149
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.fa
  br label %_ZN2cv3Mat2atIdEERT_i.exit.us62

_ZN2cv3Mat2atIdEERT_i.exit.us62:                  ; preds = %bb.m, %bb.l
  %.0.i40.us63 = phi ptr [ %i.ez, %bb.l ], [ %i.fb, %bb.m ]
  %i.fc = load double, ptr %.0.i40.us63, align 8, !tbaa !228
  %i.fd = sitofp i32 %i.er to double
  %i.fe = fsub double %i.fc, %i.fd
  %i.ff = call double @llvm.fabs.f64(double %i.fe)
  %i.fg = fcmp ule double %i.ff, %i.n             ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp ne i64 %indvars.iv.next150, %wide.trip.count152
  %or.cond239.not = select i1 %i.fg, i1 %exitcond153.not, i1 false
  br i1 %or.cond239.not, label %_ZN2cv3Mat2atIiEERT_i.exit.us60, label %.critedge, !llvm.loop !471

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fh = load i32, ptr %i.s, align 4, !tbaa !148 ; 9 uses
  %i.fi = load ptr, ptr %i.t, align 8, !tbaa !122 ; 3 uses
  %i.fj = load i64, ptr %i.u, align 8, !tbaa !107 ; 3 uses
  %wide.trip.count147 = and i64 %i.j, 2147483647  ; 3 uses
  br i1 %i.x, label %_ZN2cv3Mat2atIiEERT_i.exit.us68, label %.lr.ph.split.split.split.split

_ZN2cv3Mat2atIiEERT_i.exit.us68:                  ; preds = %.lr.ph.split.split.split, %_ZN2cv3Mat2atIiEERT_i.exit.us68
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %_ZN2cv3Mat2atIiEERT_i.exit.us68 ], [ 0, %.lr.ph.split.split.split ] ; 3 uses
  %i.fk = trunc nuw nsw i64 %indvars.iv144 to i32 ; 2 uses
  %i.fl = sdiv i32 %i.fk, %i.fh                   ; 2 uses
  %i.fm = mul nsw i32 %i.fl, %i.fh                ; 0 uses
  %.recomposed269 = srem i32 %i.fk, %i.fh
  %i.fn = sext i32 %i.fl to i64
  %i.fo = mul i64 %i.fj, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fo
  %i.fq = sext i32 %.recomposed269 to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !14
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv144
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !228
  %i.fv = sitofp i32 %i.fs to double
  %i.fw = fsub double %i.fu, %i.fv
  %i.fx = call double @llvm.fabs.f64(double %i.fw)
  %i.fy = fcmp ule double %i.fx, %i.n             ; 2 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp ne i64 %indvars.iv.next145, %wide.trip.count147
  %or.cond241.not = select i1 %i.fy, i1 %exitcond148.not, i1 false
  br i1 %or.cond241.not, label %_ZN2cv3Mat2atIiEERT_i.exit.us68, label %.critedge, !llvm.loop !471

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %or.cond.i39, label %_ZN2cv3Mat2atIiEERT_i.exit.us78, label %_ZN2cv3Mat2atIiEERT_i.exit

_ZN2cv3Mat2atIiEERT_i.exit.us78:                  ; preds = %.lr.ph.split.split.split.split, %_ZN2cv3Mat2atIiEERT_i.exit.us78
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %_ZN2cv3Mat2atIiEERT_i.exit.us78 ], [ 0, %.lr.ph.split.split.split.split ] ; 3 uses
  %i.fz = trunc nuw nsw i64 %indvars.iv139 to i32 ; 2 uses
  %i.ga = sdiv i32 %i.fz, %i.fh                   ; 2 uses
  %i.gb = mul nsw i32 %i.ga, %i.fh                ; 0 uses
  %.recomposed270 = srem i32 %i.fz, %i.fh
  %i.gc = sext i32 %i.ga to i64
  %i.gd = mul i64 %i.fj, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.gd
  %i.gf = sext i32 %.recomposed270 to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !14
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv139
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !228
  %i.gk = sitofp i32 %i.gh to double
  %i.gl = fsub double %i.gj, %i.gk
  %i.gm = call double @llvm.fabs.f64(double %i.gl)
  %i.gn = fcmp ule double %i.gm, %i.n             ; 2 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp ne i64 %indvars.iv.next140, %wide.trip.count147
  %or.cond243.not = select i1 %i.gn, i1 %exitcond143.not, i1 false
  br i1 %or.cond243.not, label %_ZN2cv3Mat2atIiEERT_i.exit.us78, label %.critedge, !llvm.loop !471

bb.n:                                             ; preds = %bb.a
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.r

bb.o:                                             ; preds = %bb.b
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN2cv3Mat2atIiEERT_i.exit:                       ; preds = %.lr.ph.split.split.split.split, %_ZN2cv3Mat2atIdEERT_i.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3Mat2atIdEERT_i.exit ], [ 0, %.lr.ph.split.split.split.split ] ; 3 uses
  %i.gq = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.gr = sdiv i32 %i.gq, %i.fh                   ; 2 uses
  %i.gs = mul nsw i32 %i.gr, %i.fh                ; 0 uses
  %.recomposed271 = srem i32 %i.gq, %i.fh
  %i.gt = sext i32 %i.gr to i64
  %i.gu = mul i64 %i.fj, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.gu
  %i.gw = sext i32 %.recomposed271 to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !14
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  %i.gz = mul i64 %i.am, %indvars.iv
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.gz
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.q:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  %i.hb = sdiv i32 %i.gq, %i.ai                   ; 2 uses
  %i.hc = mul nsw i32 %i.hb, %i.ai                ; 0 uses
  %.recomposed272 = srem i32 %i.gq, %i.ai
  %i.hd = sext i32 %i.hb to i64
  %i.he = mul i64 %i.am, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.he
  %i.hg = sext i32 %.recomposed272 to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.hg
  br label %_ZN2cv3Mat2atIdEERT_i.exit

_ZN2cv3Mat2atIdEERT_i.exit:                       ; preds = %bb.q, %bb.p
  %.0.i40 = phi ptr [ %i.hh, %bb.q ], [ %i.ha, %bb.p ]
  %i.hi = load double, ptr %.0.i40, align 8, !tbaa !228
  %i.hj = sitofp i32 %i.gy to double
  %i.hk = fsub double %i.hi, %i.hj
  %i.hl = call double @llvm.fabs.f64(double %i.hk)
  %i.hm = fcmp ule double %i.hl, %i.n             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count147
  %or.cond245.not = select i1 %i.hm, i1 %exitcond.not, i1 false
  br i1 %or.cond245.not, label %_ZN2cv3Mat2atIiEERT_i.exit, label %.critedge, !llvm.loop !471

.lr.ph100..critedge.loopexit211_crit_edge:        ; preds = %.lr.ph100, %.lr.ph102, %.lr.ph116, %.lr.ph118
  br label %.critedge, !llvm.loop !471

_ZN2cv3Mat2atIiEERT_i.exit.us60.us90..critedge.loopexit211_crit_edge: ; preds = %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90, %_ZN2cv3Mat2atIiEERT_i.exit.us60.us, %_ZN2cv3Mat2atIiEERT_i.exit.us49.us106, %_ZN2cv3Mat2atIiEERT_i.exit.us49.us
  br label %.critedge, !llvm.loop !471

.critedge:                                        ; preds = %_ZN2cv3Mat2atIdEERT_i.exit, %_ZN2cv3Mat2atIiEERT_i.exit.us78, %_ZN2cv3Mat2atIiEERT_i.exit.us68, %_ZN2cv3Mat2atIdEERT_i.exit.us62, %_ZN2cv3Mat2atIdEERT_i.exit.us51, %_ZN2cv3Mat2atIdEERT_i.exit.us, %.lr.ph100.preheader, %.lr.ph100..critedge.loopexit211_crit_edge, %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90..critedge.loopexit211_crit_edge, %.lr.ph102.preheader, %.lr.ph116.preheader, %.lr.ph118.preheader, %.lr.ph.split.split.split.us.split.split.us, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.us.split.us, %.lr.ph.split.split.us.split.split.us, %bb.c
  %.not.lcssa = phi i1 [ true, %bb.c ], [ false, %.lr.ph.split.split.us.split.us ], [ true, %.lr.ph100..critedge.loopexit211_crit_edge ], [ %i.dg, %_ZN2cv3Mat2atIdEERT_i.exit.us51 ], [ false, %.lr.ph.split.split.us.split.split.us ], [ false, %.lr.ph.split.split.split.us.split.split.us ], [ true, %.lr.ph100.preheader ], [ false, %.lr.ph.split.split.split.us.split.us ], [ %i.fg, %_ZN2cv3Mat2atIdEERT_i.exit.us62 ], [ true, %.lr.ph118.preheader ], [ true, %.lr.ph116.preheader ], [ %i.gn, %_ZN2cv3Mat2atIiEERT_i.exit.us78 ], [ %i.bg, %_ZN2cv3Mat2atIdEERT_i.exit.us ], [ true, %.lr.ph102.preheader ], [ %i.fy, %_ZN2cv3Mat2atIiEERT_i.exit.us68 ], [ false, %_ZN2cv3Mat2atIiEERT_i.exit.us60.us90..critedge.loopexit211_crit_edge ], [ %i.hm, %_ZN2cv3Mat2atIdEERT_i.exit ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i1 %.not.lcssa

bb.r:                                             ; preds = %bb.o, %bb.n
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.go, %bb.n ], [ %i.gp, %bb.o ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn34.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv18preprocess2DKernelERKNS_3MatERSt6vectorINS_6Point_IiEESaIS5_EERS3_IhSaIhEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !13
  store i32 16842752, ptr %3, align 8, !tbaa !354
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !356
  %i.d = call noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.e = load i32, ptr %0, align 8, !tbaa !131
  %i.f = and i32 %i.e, 4095                       ; 4 uses
  switch i32 %i.f, label %bb.b [
    i32 6, label %bb.e
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv18preprocess2DKernelERKNS_3MatERSt6vectorINS_6Point_IiEESaIS5_EERS3_IhSaIhEE, ptr noundef nonnull @.str.19, i32 noundef 403) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %i.m = sext i32 %spec.store.select to i64       ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !472  ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !475    ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.m
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = sub nuw nsw i64 %i.m, %i.t
  call void @_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.v)
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %i.t, %i.m
  br i1 %i.w, label %bb.h, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.x
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.x, ptr %i.n, align 8, !tbaa !472
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.y = lshr i32 %i.f, 5
  %i.z = add nuw nsw i32 %i.y, 1
  %i.aa = shl nuw nsw i32 %i.f, 2
  %i.ab = and i32 %i.aa, 124
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 1275511473185297, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 15
  %i.ag = mul nuw nsw i32 %i.af, %i.z
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, %i.m                 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !62 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !63    ; 5 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp ugt i64 %i.ai, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit
  %i.aq = sub nuw i64 %i.ai, %i.ao
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.aq)
  %.pre = load ptr, ptr %2, align 8, !tbaa !63
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE6resizeEm.exit
  %i.ar = icmp ult i64 %i.ai, %i.ao
  br i1 %i.ar, label %bb.k, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ak, %i.as
  br i1 %.not.i.i81, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.as, ptr %i.aj, align 8, !tbaa !62
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.at = phi ptr [ %.pre, %bb.i ], [ %i.al, %bb.j ], [ %i.al, %bb.k ], [ %i.al, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !156
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !148 ; 6 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph104.split, label %._crit_edge105

.lr.ph104.split:                                  ; preds = %.lr.ph104, %._crit_edge
  %i.bc = phi i32 [ %i.du, %._crit_edge ], [ %i.ba, %.lr.ph104 ] ; 5 uses
  %i.bd = phi i32 [ %i.dv, %._crit_edge ], [ %i.ba, %.lr.ph104 ] ; 4 uses
  %i.be = phi i32 [ %i.dw, %._crit_edge ], [ %i.ba, %.lr.ph104 ] ; 3 uses
  %i.bf = phi i32 [ %i.dx, %._crit_edge ], [ %i.ba, %.lr.ph104 ] ; 2 uses
  %i.bg = phi i32 [ %i.dy, %._crit_edge ], [ %i.ba, %.lr.ph104 ] ; 2 uses
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %._crit_edge ], [ 0, %.lr.ph104 ] ; 3 uses
  %.071102 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.lr.ph104 ] ; 5 uses
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !122
  %i.bi = load i64, ptr %i.ay, align 8, !tbaa !107
  %i.bj = mul i64 %i.bi, %indvars.iv120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj ; 4 uses
  %i.bl = icmp sgt i32 %i.bg, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph104.split
  %.sroa.483.0.insert.shift = shl nuw nsw i64 %indvars.iv120, 32 ; 4 uses
  switch i32 %i.f, label %.lr.ph.split [
    i32 0, label %.lr.ph.split.us
    i32 4, label %.lr.ph.split.us90
    i32 5, label %.lr.ph.split.us96
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %i.bm = phi i32 [ %i.bw, %bb.m ], [ %i.bc, %.lr.ph ]
  %i.bn = phi i32 [ %i.bx, %bb.m ], [ %i.bd, %.lr.ph ]
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %.188.us = phi i32 [ %.6.us, %bb.m ], [ %.071102, %.lr.ph ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv114
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !21  ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.br = sext i32 %.188.us to i64                ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !475
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %.sroa.086.0.insert.insert.us = or disjoint i64 %.sroa.483.0.insert.shift, %indvars.iv114
  store i64 %.sroa.086.0.insert.insert.us, ptr %i.bt, align 4
  %i.bu = add nsw i32 %.188.us, 1
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 %i.br
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !21
  %.pre125 = load i32, ptr %i.az, align 4, !tbaa !148 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us
  %i.bw = phi i32 [ %.pre125, %bb.l ], [ %i.bm, %.lr.ph.split.us ] ; 2 uses
  %i.bx = phi i32 [ %.pre125, %bb.l ], [ %i.bn, %.lr.ph.split.us ] ; 6 uses
  %.6.us = phi i32 [ %i.bu, %bb.l ], [ %.188.us, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next115, %i.by
  br i1 %i.bz, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !476

.lr.ph.split.us90:                                ; preds = %.lr.ph, %bb.o
  %i.ca = phi i32 [ %i.cl, %bb.o ], [ %i.bc, %.lr.ph ]
  %i.cb = phi i32 [ %i.cm, %bb.o ], [ %i.bd, %.lr.ph ]
  %i.cc = phi i32 [ %i.cn, %bb.o ], [ %i.be, %.lr.ph ]
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.o ], [ 0, %.lr.ph ] ; 3 uses
  %.188.us92 = phi i32 [ %.6.us93, %bb.o ], [ %.071102, %.lr.ph ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv111
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us90
  %i.cg = sext i32 %.188.us92 to i64              ; 2 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !475
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  %.sroa.084.0.insert.insert.us = or disjoint i64 %.sroa.483.0.insert.shift, %indvars.iv111
  store i64 %.sroa.084.0.insert.insert.us, ptr %i.ci, align 4
  %i.cj = add nsw i32 %.188.us92, 1
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.cg
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !14
  %.pre124 = load i32, ptr %i.az, align 4, !tbaa !148 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.us90
  %i.cl = phi i32 [ %.pre124, %bb.n ], [ %i.ca, %.lr.ph.split.us90 ] ; 2 uses
  %i.cm = phi i32 [ %.pre124, %bb.n ], [ %i.cb, %.lr.ph.split.us90 ] ; 2 uses
  %i.cn = phi i32 [ %.pre124, %bb.n ], [ %i.cc, %.lr.ph.split.us90 ] ; 5 uses
  %.6.us93 = phi i32 [ %i.cj, %bb.n ], [ %.188.us92, %.lr.ph.split.us90 ] ; 2 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next112, %i.co
  br i1 %i.cp, label %.lr.ph.split.us90, label %._crit_edge, !llvm.loop !476

.lr.ph.split.us96:                                ; preds = %.lr.ph, %bb.q
  %i.cq = phi i32 [ %i.dc, %bb.q ], [ %i.bc, %.lr.ph ]
  %i.cr = phi i32 [ %i.dd, %bb.q ], [ %i.bd, %.lr.ph ]
  %i.cs = phi i32 [ %i.de, %bb.q ], [ %i.be, %.lr.ph ]
  %i.ct = phi i32 [ %i.df, %bb.q ], [ %i.bf, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %.188.us98 = phi i32 [ %.6.us99, %bb.q ], [ %.071102, %.lr.ph ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !477 ; 2 uses
  %i.cw = fcmp oeq float %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us96
  %i.cx = sext i32 %.188.us98 to i64              ; 2 uses
  %i.cy = load ptr, ptr %1, align 8, !tbaa !475
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  %.sroa.082.0.insert.insert.us = or disjoint i64 %.sroa.483.0.insert.shift, %indvars.iv
  store i64 %.sroa.082.0.insert.insert.us, ptr %i.cz, align 4
  %i.da = add nsw i32 %.188.us98, 1
  %i.db = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.cx
  store float %i.cv, ptr %i.db, align 4, !tbaa !477
  %.pre123 = load i32, ptr %i.az, align 4, !tbaa !148 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split.us96
  %i.dc = phi i32 [ %i.cq, %.lr.ph.split.us96 ], [ %.pre123, %bb.p ] ; 2 uses
  %i.dd = phi i32 [ %i.cr, %.lr.ph.split.us96 ], [ %.pre123, %bb.p ] ; 2 uses
  %i.de = phi i32 [ %i.cs, %.lr.ph.split.us96 ], [ %.pre123, %bb.p ] ; 2 uses
  %i.df = phi i32 [ %i.ct, %.lr.ph.split.us96 ], [ %.pre123, %bb.p ] ; 4 uses
  %.6.us99 = phi i32 [ %.188.us98, %.lr.ph.split.us96 ], [ %i.da, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %.lr.ph.split.us96, label %._crit_edge, !llvm.loop !476

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %i.di = phi i32 [ %i.dr, %bb.s ], [ %i.bc, %.lr.ph ]
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.s ], [ 0, %.lr.ph ] ; 3 uses
  %.188 = phi i32 [ %.6, %bb.s ], [ %.071102, %.lr.ph ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv117
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !228 ; 2 uses
  %i.dl = fcmp oeq double %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split
  %i.dm = sext i32 %.188 to i64                   ; 2 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !475
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.483.0.insert.shift, %indvars.iv117
  store i64 %.sroa.0.0.insert.insert, ptr %i.do, align 4
  %i.dp = add nsw i32 %.188, 1
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.dm
  store double %i.dk, ptr %i.dq, align 8, !tbaa !228
  %.pre126 = load i32, ptr %i.az, align 4, !tbaa !148
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.split
  %i.dr = phi i32 [ %i.di, %.lr.ph.split ], [ %.pre126, %bb.r ] ; 7 uses
  %.6 = phi i32 [ %.188, %.lr.ph.split ], [ %i.dp, %bb.r ] ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next118, %i.ds
  br i1 %i.dt, label %.lr.ph.split, label %._crit_edge, !llvm.loop !476

._crit_edge:                                      ; preds = %bb.q, %bb.o, %bb.m, %bb.s, %.lr.ph104.split
  %i.du = phi i32 [ %i.bc, %.lr.ph104.split ], [ %i.cl, %bb.o ], [ %i.dr, %bb.s ], [ %i.bw, %bb.m ], [ %i.dc, %bb.q ]
  %i.dv = phi i32 [ %i.bd, %.lr.ph104.split ], [ %i.cm, %bb.o ], [ %i.dr, %bb.s ], [ %i.bx, %bb.m ], [ %i.dd, %bb.q ]
  %i.dw = phi i32 [ %i.be, %.lr.ph104.split ], [ %i.cn, %bb.o ], [ %i.dr, %bb.s ], [ %i.bx, %bb.m ], [ %i.de, %bb.q ]
  %i.dx = phi i32 [ %i.bf, %.lr.ph104.split ], [ %i.cn, %bb.o ], [ %i.dr, %bb.s ], [ %i.bx, %bb.m ], [ %i.df, %bb.q ]
  %i.dy = phi i32 [ %i.bg, %.lr.ph104.split ], [ %i.cn, %bb.o ], [ %i.dr, %bb.s ], [ %i.bx, %bb.m ], [ %i.df, %bb.q ]
  %.1.lcssa = phi i32 [ %.071102, %.lr.ph104.split ], [ %.6.us93, %bb.o ], [ %.6, %bb.s ], [ %.6.us, %bb.m ], [ %.6.us99, %bb.q ]
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.dz = load i32, ptr %i.au, align 8, !tbaa !156
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next121, %i.ea
  br i1 %i.eb, label %.lr.ph104.split, label %._crit_edge105, !llvm.loop !479

._crit_edge105:                                   ; preds = %._crit_edge, %.lr.ph104, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  ret void
}

declare noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv15getLinearFilterEiiRKNS_11_InputArrayENS_6Point_IiEEdi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4, double noundef %5, i32 noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv15getLinearFilterEiiRKNS_11_InputArrayENS_6Point_IiEEdiE26__cv_trace_location_fn1126)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !356, !noalias !481
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.g

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.g

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  invoke void @_ZN2cv12cpu_baseline15getLinearFilterEiiRKNS_3MatENS_6Point_IiEEdi(ptr dead_on_unwind writable sret(%"struct.cv::Ptr") align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %4, double noundef %5, i32 noundef %6)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv18createLinearFilterEiiRKNS_11_InputArrayENS_6Point_IiEEdiiRKNS_7Scalar_IdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.212") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4, double noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"struct.cv::Ptr", align 8         ; 7 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"struct.cv::Ptr.10", align 8      ; 6 uses
  %16 = alloca %"struct.cv::Ptr.14", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !484
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !356, !noalias !484
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = and i32 %1, 4095                         ; 3 uses
  %i.f = and i32 %2, 4095                         ; 2 uses
  %i.g = xor i32 %2, %1
  %i.h = and i32 %i.g, 4064
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv18createLinearFilterEiiRKNS_11_InputArrayENS_6Point_IiEEdiiRKNS_7Scalar_IdEE, ptr noundef nonnull @.str.19, i32 noundef 1145) #26
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %10, align 8, !tbaa !15    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.o = load i64, ptr %i.m, align 8, !tbaa !21
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.w

bb.i:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !13
  store i32 16842752, ptr %14, align 8, !tbaa !354
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %12, ptr %i.s, align 8, !tbaa !356
  invoke void @_ZN2cv15getLinearFilterEiiRKNS_11_InputArrayENS_6Point_IiEEdi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %13, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %4, double noundef %5, i32 noundef 0)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.t = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #29
          to label %.noexc unwind label %bb.t     ; 6 uses

.noexc:                                           ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !157, !noalias !490
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !164, !noalias !490
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12FilterEngineESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.t, align 8, !tbaa !77, !noalias !490
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  invoke void @_ZN2cv12FilterEngineC2ERKNS_3PtrINS_10BaseFilterEEERKNS1_INS_13BaseRowFilterEEERKNS1_INS_16BaseColumnFilterEEEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(304) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(16) %13, ptr noundef nonnull readonly align 8 dereferenceable(16) %15, ptr noundef nonnull readonly align 8 dereferenceable(16) %16, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.e, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt12__shared_ptrIN2cv13BaseRowFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12FilterEngineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit18.i.i.i.i.i, !noalias !490

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12FilterEngineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit18.i.i.i.i.i: ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 320) #27, !noalias !490
  br label %.body

_ZNSt12__shared_ptrIN2cv13BaseRowFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  store ptr %i.w, ptr %0, align 8, !tbaa !465, !alias.scope !487
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
begin_hunk_4_@_ZN2cv8filter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_NS_6Point_IiEEdi:bb.a

bb.z:                                             ; preds = %.noexc45
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

bb.aa:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit44
  %i.an = icmp sgt i32 %i.ac, 0
  br i1 %i.an, label %bb.ab, label %.thread.i

.thread.i:                                        ; preds = %bb.aa
  %i.ao = icmp eq i32 %i.ac, 0
  %i.ap = zext i1 %i.ao to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 84
  %i.ar = icmp eq i32 %i.ac, 2
  %.sroa.gep71 = getelementptr inbounds nuw i8, ptr %18, i64 88
  %.sroa.gep71.val = load i32, ptr %.sroa.gep71, align 8
  %.val = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = select i1 %i.ar, i32 %.sroa.gep71.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 1
  br i1 %.not.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %.thread.i
  %i.at = phi i32 [ %i.ap, %.thread.i ], [ %i.as, %bb.ab ]
  %i.au = icmp sgt i32 %i.ac, -1
  %i.av = zext i1 %i.au to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.aw = phi i32 [ %i.at, %bb.ac ], [ %i.as, %bb.ab ]
  %i.ax = phi i32 [ %i.av, %bb.ac ], [ %.val, %bb.ab ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.ax to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ay = and i32 %i.aa, 4064
  %i.az = and i32 %.0, 31
  %i.ba = or disjoint i32 %i.az, %i.ay
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.ba, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ae unwind label %bb.w

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.bb = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.ae
  %i.bc = icmp eq i32 %i.bb, 65536
  br i1 %i.bc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc46
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !356, !noalias !501
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.be)
          to label %_ZNK2cv11_InputArray6getMatEi.exit49 unwind label %bb.as

bb.ag:                                            ; preds = %.noexc46
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit49 unwind label %bb.as

_ZNK2cv11_InputArray6getMatEi.exit49:             ; preds = %bb.af, %bb.ag
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !130 ; 6 uses
  %i.bh = icmp slt i32 %i.bg, 3
  br i1 %i.bh, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc59 unwind label %bb.at

.noexc59:                                         ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.52, i32 noundef 109) #26
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc59
  unreachable

bb.aj:                                            ; preds = %.noexc59
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %bb.aj
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body60

bb.ak:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit49
  %i.bo = icmp sgt i32 %i.bg, 0
  br i1 %i.bo, label %bb.al, label %.thread.i53

.thread.i53:                                      ; preds = %bb.ak
  %i.bp = icmp eq i32 %i.bg, 0
  %i.bq = zext i1 %i.bp to i32
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 84
  %i.bs = icmp eq i32 %i.bg, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %19, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val74 = load i32, ptr %i.br, align 4          ; 2 uses
  %i.bt = select i1 %i.bs, i32 %.sroa.gep.val, i32 %.val74 ; 2 uses
  %.not.i58 = icmp eq i32 %i.bg, 1
  br i1 %.not.i58, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %.thread.i53
  %i.bu = phi i32 [ %i.bq, %.thread.i53 ], [ %i.bt, %bb.al ]
  %i.bv = icmp sgt i32 %i.bg, -1
  %i.bw = zext i1 %i.bv to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.bx = phi i32 [ %i.bu, %bb.am ], [ %i.bt, %bb.al ] ; 2 uses
  %i.by = phi i32 [ %i.bw, %bb.am ], [ %.val74, %bb.al ] ; 2 uses
  %.sroa.06.0.extract.trunc.i = trunc i64 %4 to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %4, 32    ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %i.bz = icmp eq i32 %.sroa.06.0.extract.trunc.i, -1
  %i.ca = sdiv i32 %i.bx, 2
  %.sroa.06.0.i = select i1 %i.bz, i32 %i.ca, i32 %.sroa.06.0.extract.trunc.i ; 3 uses
  %i.cb = icmp eq i64 %.sroa.5.0.extract.shift.i, 4294967295
  %i.cc = sdiv i32 %i.by, 2
  %.sroa.5.0.i = select i1 %i.cb, i32 %i.cc, i32 %.sroa.5.0.extract.trunc.i ; 3 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.06.0.i, -1
  %i.cd = icmp slt i32 %.sroa.06.0.i, %i.bx
  %or.cond.not11.not13.i = select i1 %.not.i.i.i, i1 %i.cd, i1 false
  %.not8.i.i.i = icmp sgt i32 %.sroa.5.0.i, -1
  %or.cond9.not12.i = select i1 %or.cond.not11.not13.i, i1 %.not8.i.i.i, i1 false
  %i.ce = icmp slt i32 %.sroa.5.0.i, %i.by
  %or.cond10.i = select i1 %or.cond9.not12.i, i1 %i.ce, i1 false
  br i1 %or.cond10.i, label %bb.aq, label %_ZNK2cv6Point_IiE6insideERKNS_5Rect_IiEE.exit.thread.i

_ZNK2cv6Point_IiE6insideERKNS_5Rect_IiEE.exit.thread.i: ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc66 unwind label %bb.at

.noexc66:                                         ; preds = %_ZNK2cv6Point_IiE6insideERKNS_5Rect_IiEE.exit.thread.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cvL15normalizeAnchorENS_6Point_IiEENS_5Size_IiEE, ptr noundef nonnull @.str.54, i32 noundef 376) #26
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc66
  unreachable

bb.ap:                                            ; preds = %.noexc66
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.ap
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !21
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body60

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store i32 0, ptr %21, align 4, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  store i32 0, ptr %i.cl, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !148 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !156 ; 2 uses
  store i32 %i.cn, ptr %22, align 4, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !13
  %i.cr = and i32 %6, 16
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %21)
          to label %._crit_edge unwind label %bb.au

._crit_edge:                                      ; preds = %bb.ar
  %.pre = load i32, ptr %22, align 4, !tbaa !11
  %.pre75 = load i32, ptr %i.cq, align 4, !tbaa !13
  %.pre76 = load i32, ptr %21, align 4, !tbaa !8
  %.pre77 = load i32, ptr %i.cl, align 4, !tbaa !10
  br label %bb.av

bb.as:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.at:                                            ; preds = %_ZNK2cv6Point_IiE6insideERKNS_5Rect_IiEE.exit.thread.i, %bb.ah
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body60

bb.au:                                            ; preds = %bb.av, %bb.ar
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %.body60

bb.av:                                            ; preds = %._crit_edge, %bb.aq
  %i.cw = phi i32 [ %.pre77, %._crit_edge ], [ 0, %bb.aq ]
  %i.cx = phi i32 [ %.pre76, %._crit_edge ], [ 0, %bb.aq ]
  %i.cy = phi i32 [ %.pre75, %._crit_edge ], [ %i.cp, %bb.aq ]
  %i.cz = phi i32 [ %.pre, %._crit_edge ], [ %i.cn, %bb.aq ]
  %i.da = load i32, ptr %18, align 8, !tbaa !131
  %i.db = and i32 %i.da, 4095
  %i.dc = load i32, ptr %20, align 8, !tbaa !131
  %i.dd = and i32 %i.dc, 4095
  %i.de = load i32, ptr %19, align 8, !tbaa !131
  %i.df = and i32 %i.de, 4095
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !122
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !107
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !122
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !107
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !148
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !156
  %i.ds = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !122
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !107
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !148
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !156
  invoke void @_ZN2cv3hal8filter2DEiiiPhmS1_miiiiiiS1_miiiidib(i32 noundef %i.db, i32 noundef %i.dd, i32 noundef %i.df, ptr noundef %i.dh, i64 noundef %i.dj, ptr noundef %i.dl, i64 noundef %i.dn, i32 noundef %i.dp, i32 noundef %i.dr, i32 noundef %i.cz, i32 noundef %i.cy, i32 noundef %i.cx, i32 noundef %i.cw, ptr noundef %i.dt, i64 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %.sroa.06.0.i, i32 noundef %.sroa.5.0.i, double noundef %5, i32 noundef %6, i1 zeroext poison)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !103
  %.not.i69 = icmp eq i32 %i.eb, 0
  br i1 %.not.i69, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %13)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  ret void

.body60:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64, %bb.at, %bb.au
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.au ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51 ], [ %i.cu, %bb.at ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  br label %bb.az

bb.az:                                            ; preds = %.body60, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body60 ], [ %i.ct, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.body

.body:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.az
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.az ], [ %i.ag, %bb.w ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  br label %bb.ba

bb.ba:                                            ; preds = %.body, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.af, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ba ], [ %i.ae, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn.pn.pn.pn.pn, %bb.bb ], [ %i.b, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  resume { ptr, i32 } %.pn33.pn
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8filter2DERKNS_11_InputArrayERKNS_12_OutputArrayES2_RKNS_14Filter2DParamsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !504
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !356, !noalias !504
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #25
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.f = load double, ptr %i.e, align 8, !tbaa !507 ; 2 uses
  %i.g = fcmp une double %i.f, 1.000000e+00
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.h = load i32, ptr %4, align 8, !tbaa !131
  %i.i = and i32 %i.h, 31                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !354
  store ptr %5, ptr %i.j, align 8, !tbaa !356
  %i.l = add nsw i32 %i.i, -5
  %or.cond = icmp ult i32 %i.l, 2
  %i.m = select i1 %or.cond, i32 %i.i, i32 5
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.m, double noundef %i.f, double noundef 0.000000e+00)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.n = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.h unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.r

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !228
  %i.s = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.i, label %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !228
  %i.v = fcmp oeq double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.j, label %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !228
  %i.y = fcmp oeq double %i.x, 0.000000e+00
  br i1 %i.y, label %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit, label %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit.thread

_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit:          ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !228
  %i.ab = fcmp oeq double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.o, label %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit.thread

_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit.thread:   ; preds = %bb.h, %bb.i, %bb.j, %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8filter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_NS_6Point_IiEEdi, ptr noundef nonnull @.str.19, i32 noundef 1642) #26
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit.thread
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !21
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn24 = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ad, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.r

bb.o:                                             ; preds = %_ZN2cveqIdEEbRKNS_7Scalar_IT_EES5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !11
end_hunk_4
begin_hunk_5_@_ZN2cv11sepFilter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_S2_NS_6Point_IiEEdi:bb.a

bb.y:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ad

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.ad = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc60 unwind label %bb.ae

.noexc60:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ae = icmp eq i32 %i.ad, 65536
  br i1 %i.ae, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc60
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !356, !noalias !518
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.ag)
          to label %_ZNK2cv11_InputArray6getMatEi.exit63 unwind label %bb.ae

bb.aa:                                            ; preds = %.noexc60
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit63 unwind label %bb.ae

_ZNK2cv11_InputArray6getMatEi.exit63:             ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.ah = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc64 unwind label %bb.af

.noexc64:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit63
  %i.ai = icmp eq i32 %i.ah, 65536
  br i1 %i.ai, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc64
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !356, !noalias !521
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.ak)
          to label %_ZNK2cv11_InputArray6getMatEi.exit67 unwind label %bb.af

bb.ac:                                            ; preds = %.noexc64
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit67 unwind label %bb.af

_ZNK2cv11_InputArray6getMatEi.exit67:             ; preds = %bb.ab, %bb.ac
  %i.al = icmp slt i32 %2, 0
  %i.am = load i32, ptr %17, align 8              ; 2 uses
  %.0 = select i1 %i.al, i32 %i.am, i32 %2
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !130 ; 6 uses
  %i.ap = icmp slt i32 %i.ao, 3
  br i1 %i.ap, label %bb.ak, label %bb.ah

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ae:                                            ; preds = %bb.aa, %bb.z, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.af:                                            ; preds = %bb.ac, %bb.ab, %_ZNK2cv11_InputArray6getMatEi.exit63
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ag:                                            ; preds = %bb.ah, %bb.an
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc68 unwind label %bb.ag

.noexc68:                                         ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.52, i32 noundef 109) #26
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc68
  unreachable

bb.aj:                                            ; preds = %.noexc68
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.ak:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit67
  %i.ba = icmp sgt i32 %i.ao, 0
  br i1 %i.ba, label %bb.al, label %.thread.i

.thread.i:                                        ; preds = %bb.ak
  %i.bb = icmp eq i32 %i.ao, 0
  %i.bc = zext i1 %i.bb to i32
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bd = getelementptr inbounds nuw i8, ptr %17, i64 84
  %i.be = icmp eq i32 %i.ao, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %17, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = select i1 %i.be, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.ao, 1
  br i1 %.not.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %.thread.i
  %i.bg = phi i32 [ %i.bc, %.thread.i ], [ %i.bf, %bb.al ]
  %i.bh = icmp sgt i32 %i.ao, -1
  %i.bi = zext i1 %i.bh to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.bj = phi i32 [ %i.bg, %bb.am ], [ %i.bf, %bb.al ]
  %i.bk = phi i32 [ %i.bi, %bb.am ], [ %.val, %bb.al ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bj to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bl = and i32 %i.am, 4064
  %i.bm = and i32 %.0, 31
  %i.bn = or disjoint i32 %i.bm, %i.bl
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.bn, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ao unwind label %bb.ag

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.bo = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc69 unwind label %bb.as

.noexc69:                                         ; preds = %bb.ao
  %i.bp = icmp eq i32 %i.bo, 65536
  br i1 %i.bp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.noexc69
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !356, !noalias !524
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.br)
          to label %_ZNK2cv11_InputArray6getMatEi.exit72 unwind label %bb.as

bb.aq:                                            ; preds = %.noexc69
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit72 unwind label %bb.as

_ZNK2cv11_InputArray6getMatEi.exit72:             ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store i32 0, ptr %21, align 4, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.bv = load <2 x i32>, ptr %i.bt, align 8, !tbaa !14
  %i.bw = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bw, ptr %22, align 8, !tbaa !14
  %i.bx = and i32 %7, 16
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit72
  invoke void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %21)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.at:                                            ; preds = %bb.ar
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.au:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit72, %bb.ar
  %i.cb = load i32, ptr %18, align 8, !tbaa !131  ; 2 uses
  %i.cc = load i32, ptr %19, align 8, !tbaa !131
  %i.cd = xor i32 %i.cc, %i.cb
  %i.ce = and i32 %i.cd, 4095
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !148
  %i.ci = icmp eq i32 %i.ch, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp eq i32 %i.ck, 1
  %or.cond = select i1 %i.ci, i1 true, i1 %i.cl
  br i1 %or.cond, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !148
  %i.co = icmp eq i32 %i.cn, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = icmp eq i32 %i.cq, 1
  %or.cond5 = select i1 %i.co, i1 true, i1 %i.cr
  br i1 %or.cond5, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cv11sepFilter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_S2_NS_6Point_IiEEdi, ptr noundef nonnull @.str.19, i32 noundef 1675) #26
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.bb:                                            ; preds = %bb.ay
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %23, align 8, !tbaa !15   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.bb
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !21
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.ba ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.ct, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.br

bb.bc:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.cz = and i32 %i.cb, 16384
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.bf unwind label %bb.bm

bb.be:                                            ; preds = %bb.bc
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %25, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.bf unwind label %bb.bm

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.da = load i32, ptr %19, align 8, !tbaa !131
  %i.db = and i32 %i.da, 16384
  %.not78 = icmp eq i32 %i.db, 0
  br i1 %.not78, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.bi unwind label %bb.bn

bb.bh:                                            ; preds = %bb.bf
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %26, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.dc = load i32, ptr %17, align 8, !tbaa !131
  %i.dd = and i32 %i.dc, 4095
  %i.de = load i32, ptr %20, align 8, !tbaa !131
  %i.df = and i32 %i.de, 4095
  %i.dg = load i32, ptr %18, align 8, !tbaa !131
  %i.dh = and i32 %i.dg, 4095
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !122
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !107
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !122
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !107
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !148
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !156
  %i.du = load i32, ptr %22, align 8, !tbaa !11
  %i.dv = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.dw = load i32, ptr %21, align 4, !tbaa !8
  %i.dx = load i32, ptr %i.bs, align 4, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !122
  %i.ea = load i32, ptr %i.cg, align 4, !tbaa !148
  %i.eb = load i32, ptr %i.cj, align 8, !tbaa !156
  %i.ec = add i32 %i.ea, -1
  %i.ed = add i32 %i.ec, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !122
  %i.eg = load i32, ptr %i.cm, align 4, !tbaa !148
  %i.eh = load i32, ptr %i.cp, align 8, !tbaa !156
  %i.ei = add i32 %i.eg, -1
  %i.ej = add i32 %i.ei, %i.eh
  %i.ek = and i32 %7, -17
  invoke void @_ZN2cv3hal11sepFilter2DEiiiPhmS1_miiiiiiS1_iS1_iiidi(i32 noundef %i.dd, i32 noundef %i.df, i32 noundef %i.dh, ptr noundef %i.dj, i64 noundef %i.dl, ptr noundef %i.dn, i64 noundef %i.dp, i32 noundef %i.dr, i32 noundef %i.dt, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef %i.dx, ptr noundef %i.dz, i32 noundef %i.ed, ptr noundef %i.ef, i32 noundef %i.ej, i32 noundef %.sroa.019.0.extract.trunc, i32 noundef %.sroa.2.0.extract.trunc, double noundef %6, i32 noundef %i.ek)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !103
  %.not.i76 = icmp eq i32 %i.em, 0
  br i1 %.not.i76, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %10)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void

bb.bm:                                            ; preds = %bb.be, %bb.bd
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bh, %bb.bg
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bi
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #25
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn36 = phi { ptr, i32 } [ %i.er, %bb.bo ], [ %i.eq, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #25
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.bp ], [ %i.ep, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.at
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %bb.bq ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.ca, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.as
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.br ], [ %i.bz, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.body

.body:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bs
  %.pn36.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn, %bb.bs ], [ %i.at, %bb.ag ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #25
  br label %bb.bt

bb.bt:                                            ; preds = %.body, %bb.af
  %.pn36.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn, %.body ], [ %i.as, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.ae
  %.pn36.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.pn, %bb.bt ], [ %i.ar, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.ad
  %.pn36.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.aq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn36.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %i.b, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  resume { ptr, i32 } %.pn49.pn
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv13BaseRowFilter11isStatelessEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv16BaseColumnFilter11isStatelessEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv10BaseFilter11isStatelessEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline18TiledFilterInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv12cpu_baseline18TiledFilterInvokerE, i64 16), ptr %0, align 8, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEEE, i64 16), ptr %i.a, align 8, !tbaa !77
  invoke void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.a)
          to label %_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev.exit unwind label %bb.b, !inline_history !153

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28, !inline_history !153
  unreachable

_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev.exit: ; preds = %bb.a
  tail call void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #25, !inline_history !153
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #25, !inline_history !154
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %3 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %4 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %5 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %6 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %7 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %8 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %9 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %10 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %11 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %12 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %13 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %14 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %15 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %16 = alloca %"class.cv::AutoBuffer.229", align 8 ; 9 uses
  %17 = alloca %"class.cv::AutoBuffer.230", align 8 ; 9 uses
  %18 = alloca %"class.cv::Size_", align 4        ; 7 uses
  %19 = alloca %"class.cv::Point_", align 4       ; 7 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %22 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %25 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %26 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::AutoBuffer", align 8   ; 9 uses
  %30 = alloca %"class.cv::AutoBuffer", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !527, !nonnull !146, !align !147 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !81   ; 23 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61   ; 21 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 4 uses
  %i.k = xor i32 %i.d, -1
  %i.l = add i32 %i.f, %i.k                       ; 2 uses
  %i.m = xor i32 %i.h, -1
  %i.n = add i32 %i.j, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !86   ; 34 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22
  %i.s = lshr i32 %i.r, 5
  %i.t = and i32 %i.s, 127
  %i.u = add nuw nsw i32 %i.t, 1                  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  %.not.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = tail call noundef nonnull align 8 dereferenceable(416) ptr @_ZNK2cv16TLSDataContainer7getDataEv(ptr noundef nonnull align 8 dereferenceable(12) %i.x) ; 9 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !150    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !152
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph1174, label %._crit_edge1175

.lr.ph1174:                                       ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.am = add i32 %i.f, -1                        ; 2 uses
  %i.an = add i32 %i.j, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %23, i64 128 ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = icmp eq i32 %i.p, 0                     ; 31 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.cp = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 220
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.cs = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cu = sub i32 %i.am, %i.d
  %wide.trip.count1194 = zext nneg i32 %i.u to i64
  %i.cv = xor i32 %i.d, -1
  %i.cw = add i32 %i.f, %i.cv
  %i.cx = xor i32 %i.d, -1
  %i.cy = add i32 %i.f, %i.cx
  %i.cz = xor i32 %i.d, -1
  %i.da = add i32 %i.f, %i.cz
  %i.db = xor i32 %i.d, -1
  %i.dc = add i32 %i.f, %i.db
  %i.dd = xor i32 %i.d, -1
  %i.de = add i32 %i.f, %i.dd
  %i.df = xor i32 %i.d, -1
  %i.dg = add i32 %i.f, %i.df
  %i.dh = xor i32 %i.d, -1
  %i.di = add i32 %i.f, %i.dh
  %i.dj = xor i32 %i.d, -1
  %i.dk = add i32 %i.f, %i.dj
  %i.dl = xor i32 %i.d, -1
  %i.dm = add i32 %i.f, %i.dl
  %i.dn = xor i32 %i.d, -1
  %i.do = add i32 %i.f, %i.dn
  %i.dp = xor i32 %i.d, -1
  %i.dq = add i32 %i.f, %i.dp
  %i.dr = xor i32 %i.d, -1
  %i.ds = add i32 %i.f, %i.dr
  %i.dt = xor i32 %i.d, -1
  %i.du = add i32 %i.f, %i.dt
  %i.dv = xor i32 %i.d, -1
  %i.dw = add i32 %i.f, %i.dv
  %i.dx = xor i32 %i.d, -1
  %i.dy = add i32 %i.f, %i.dx
  %i.dz = xor i32 %i.d, -1
  %i.ea = add i32 %i.f, %i.dz
  %i.eb = xor i32 %i.d, -1
  %i.ec = add i32 %i.f, %i.eb
  br label %bb.b

._crit_edge1175:                                  ; preds = %bb.ha, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph1174, %bb.ha
  %.01961172 = phi i32 [ %i.z, %.lr.ph1174 ], [ %i.cen, %bb.ha ] ; 3 uses
  %i.ed = load i32, ptr %i.ad, align 4, !tbaa !149 ; 2 uses
  %i.ee = sdiv i32 %.01961172, %i.ed
  %i.ef = srem i32 %.01961172, %i.ed
  %i.eg = load i32, ptr %i.ae, align 8, !tbaa !140 ; 4 uses
  %i.eh = mul i32 %i.eg, %i.ef                    ; 24 uses
  %i.ei = mul i32 %i.eg, %i.ee                    ; 4 uses
  %i.ej = load ptr, ptr %i.af, align 8, !tbaa !145, !nonnull !146, !align !147 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !148
  %i.em = sub i32 %i.el, %i.eh
  %.sroa.speculated1061 = call i32 @llvm.smin.i32(i32 %i.em, i32 %i.eg) ; 27 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !156
  %i.ep = sub nsw i32 %i.eo, %i.ei
  %.sroa.speculated1057 = call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.eg) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store i32 0, ptr %18, align 4, !tbaa !11
  store i32 0, ptr %i.ag, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store i32 0, ptr %19, align 4, !tbaa !8
  store i32 0, ptr %i.ah, align 4, !tbaa !10
  %i.eq = load ptr, ptr %i.ai, align 8, !tbaa !528, !nonnull !146, !align !147
  call void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %i.eq, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19)
  %i.er = load i32, ptr %19, align 4, !tbaa !8    ; 21 uses
  %i.es = add i32 %i.er, %i.eh                    ; 2 uses
  %.neg214 = sub i32 %i.d, %i.es                  ; 22 uses
  %i.et = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.eu = add i32 %i.et, %i.ei                    ; 2 uses
  %.neg = sub i32 %i.h, %i.eu                     ; 28 uses
  %i.ev = icmp sgt i32 %.neg, 0                   ; 18 uses
  %.sroa.speculated1052 = call i32 @llvm.smax.i32(i32 %.neg, i32 0) ; 42 uses
  %i.ew = load i32, ptr %i.ag, align 4, !tbaa !13
  %i.ex = add i32 %.sroa.speculated1057, %i.n
  %i.ey = add i32 %i.ex, %i.eu
  %i.ez = sub i32 %i.ey, %i.ew                    ; 27 uses
  %i.fa = icmp sgt i32 %i.ez, 0                   ; 26 uses
  %.sroa.speculated1047 = call i32 @llvm.smax.i32(i32 %i.ez, i32 0)
  %i.fb = icmp sgt i32 %.neg214, 0                ; 24 uses
  %.sroa.speculated1042 = call i32 @llvm.smax.i32(i32 %.neg214, i32 0) ; 58 uses
  %i.fc = load i32, ptr %18, align 4, !tbaa !11   ; 21 uses
  %i.fd = add i32 %.sroa.speculated1061, %i.l
  %i.fe = add i32 %i.fd, %i.es
  %i.ff = sub i32 %i.fe, %i.fc                    ; 11 uses
  %i.fg = icmp sgt i32 %i.ff, 0                   ; 24 uses
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ff, i32 0) ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.fh = load ptr, ptr %i.ai, align 8, !tbaa !528, !nonnull !146, !align !147
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 %i.eh, ptr %22, align 4, !tbaa !132
  store i32 %i.ei, ptr %i.aj, align 4, !tbaa !133
  store i32 %.sroa.speculated1061, ptr %i.ak, align 4, !tbaa !134
  store i32 %.sroa.speculated1057, ptr %i.al, align 4, !tbaa !135
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %22)
  %i.fi = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %i.h, i32 noundef %i.n, i32 noundef %i.d, i32 noundef %i.l)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.fi)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #25
  %i.fj = icmp slt i32 %.neg, 1
  %i.fk = icmp slt i32 %i.ez, 1
  %or.cond = select i1 %i.fj, i1 %i.fk, i1 false
  %i.fl = icmp slt i32 %.neg214, 1
  %or.cond3 = select i1 %or.cond, i1 %i.fl, i1 false
  %i.fm = icmp slt i32 %i.ff, 1
  %or.cond5 = select i1 %or.cond3, i1 %i.fm, i1 false
  br i1 %or.cond5, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.fn = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.gd unwind label %bb.g      ; 0 uses

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.hb

bb.g:                                             ; preds = %bb.e
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.fq = add i32 %i.am, %.sroa.speculated1061    ; 3 uses
  %i.fr = add i32 %i.an, %.sroa.speculated1057    ; 3 uses
  %i.fs = load i32, ptr %i.ao, align 4, !tbaa !529
  %i.ft = icmp slt i32 %i.fs, %i.fq
  br i1 %i.ft, label %._crit_edge1209, label %bb.i

._crit_edge1209:                                  ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !527
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.fu = load i32, ptr %i.ap, align 8, !tbaa !531
  %i.fv = icmp slt i32 %i.fu, %i.fr
  %.pre1210 = load ptr, ptr %i.a, align 8, !tbaa !527 ; 3 uses
  br i1 %i.fv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fw = load i32, ptr %i.y, align 8, !tbaa !131
  %i.fx = and i32 %i.fw, 4095
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre1210, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !22
  %.not = icmp eq i32 %i.fx, %i.fz
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge1209, %bb.j, %bb.i
  %i.ga = phi ptr [ %.pre, %._crit_edge1209 ], [ %.pre1210, %bb.j ], [ %.pre1210, %bb.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !22
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.y, i32 noundef %i.fr, i32 noundef %i.fq, i32 noundef %i.gc)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  store i32 0, ptr %25, align 4, !tbaa !132
  store i32 0, ptr %i.aq, align 4, !tbaa !133
  store i32 %i.fq, ptr %i.ar, align 4, !tbaa !134
  store i32 %i.fr, ptr %i.as, align 4, !tbaa !135
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %25)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.o

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.m
  %i.ge = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !527, !nonnull !146, !align !147 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !22 ; 2 uses
  %i.gi = lshr i32 %i.gh, 5
  %i.gj = and i32 %i.gi, 127
  %i.gk = add nuw nsw i32 %i.gj, 1
  %i.gl = shl i32 %i.gh, 2
  %i.gm = and i32 %i.gl, 124
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = lshr i64 1275511473185297, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = and i32 %i.gp, 15
  %i.gr = mul nuw nsw i32 %i.gq, %i.gk
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 160
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !55 ; 117 uses
  switch i32 %i.gr, label %bb.fp [
    i32 1, label %bb.r
    i32 2, label %bb.am
    i32 3, label %bb.bf
    i32 4, label %bb.by
    i32 6, label %bb.cr
    i32 8, label %bb.dk
    i32 12, label %bb.ed
    i32 16, label %bb.ew
  ]

bb.o:                                             ; preds = %bb.m
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.gv, %bb.p ], [ %i.gu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.gw = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.gx = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.gy = load i32, ptr %i.av, align 4, !tbaa !148 ; 6 uses
  %i.gz = load i32, ptr %i.aw, align 8, !tbaa !156 ; 11 uses
  %i.ha = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 13 uses
  %i.hb = load i64, ptr %i.ay, align 8, !tbaa !107 ; 23 uses
  %i.hc = add i32 %i.gy, %.sroa.speculated1042    ; 3 uses
  %i.hd = add i32 %i.hc, %.sroa.speculated        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.he = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1042 ; 2 uses
  %i.hf = zext nneg i32 %i.he to i64              ; 2 uses
  store ptr %i.cc, ptr %16, align 8, !tbaa !532
  %.not.i.i.i = icmp samesign ugt i32 %i.he, 264
  store i64 %i.hf, ptr %i.cd, align 8, !tbaa !534
  br i1 %.not.i.i.i, label %bb.s, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

bb.s:                                             ; preds = %bb.r
  %i.hg = shl nuw nsw i64 %i.hf, 2
  %i.hh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hg) #29
          to label %.noexc unwind label %bb.al    ; 2 uses

.noexc:                                           ; preds = %bb.s
  store ptr %i.hh, ptr %16, align 8, !tbaa !532
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i:           ; preds = %.noexc, %bb.r
  %i.hi = phi ptr [ %i.cc, %bb.r ], [ %i.hh, %.noexc ] ; 8 uses
  br i1 %i.fb, label %.lr.ph.preheader.i, label %.preheader176.i

.lr.ph.preheader.i:                               ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  %wide.trip.count.i = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i

.preheader176.i:                                  ; preds = %bb.t, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  br i1 %i.fg, label %.lr.ph179.preheader.i, label %._crit_edge.i

.lr.ph179.preheader.i:                            ; preds = %.preheader176.i
  %i.hj = zext nneg i32 %.sroa.speculated1042 to i64
  %wide.trip.count211.i = zext nneg i32 %i.ff to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.hi, i64 %i.hj
  br label %.lr.ph179.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.hk = trunc i64 %indvars.iv.i to i32
  %i.hl = sub i32 %i.hk, %.sroa.speculated1042
  %i.hm = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hl, i32 noundef %i.gy, i32 noundef %i.p)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.i
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader176.i, label %.lr.ph.i, !llvm.loop !535

bb.u:                                             ; preds = %.lr.ph.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

._crit_edge.i:                                    ; preds = %bb.v, %.preheader176.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store ptr %i.ce, ptr %17, align 8, !tbaa !536
  store i64 1032, ptr %i.cf, align 8, !tbaa !538
  br i1 %i.bd, label %bb.x, label %.loopexit175.thread.i

.lr.ph179.i:                                      ; preds = %bb.v, %.lr.ph179.preheader.i
  %indvars.iv208.i = phi i64 [ 0, %.lr.ph179.preheader.i ], [ %indvars.iv.next209.i, %bb.v ] ; 3 uses
  %i.hp = trunc i64 %indvars.iv208.i to i32
  %i.hq = add i32 %i.gy, %i.hp
  %i.hr = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.hq, i32 noundef %i.gy, i32 noundef %i.p)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph179.i
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv208.i
  store i32 %i.hr, ptr %gep.i, align 4, !tbaa !14
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %exitcond212.not.i = icmp eq i64 %indvars.iv.next209.i, %wide.trip.count211.i
  br i1 %exitcond212.not.i, label %._crit_edge.i, label %.lr.ph179.i, !llvm.loop !539

bb.w:                                             ; preds = %.lr.ph179.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.x:                                             ; preds = %._crit_edge.i
  %or.cond.i = or i1 %i.ev, %i.fa
  br i1 %or.cond.i, label %bb.y, label %.loopexit175.i

bb.y:                                             ; preds = %bb.x
  %i.ht = sext i32 %i.hd to i64                   ; 2 uses
  %.not.i.i = icmp ugt i32 %i.hd, 1032
  store i64 %i.ht, ptr %i.cf, align 8, !tbaa !538
  br i1 %.not.i.i, label %bb.z, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i

bb.z:                                             ; preds = %bb.y
  %i.hu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #29
          to label %.noexc.i unwind label %bb.aa  ; 2 uses

.noexc.i:                                         ; preds = %bb.z
  store ptr %i.hu, ptr %17, align 8, !tbaa !536
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i:   ; preds = %.noexc.i, %bb.y
  %i.hv = phi ptr [ %i.hu, %.noexc.i ], [ %i.ce, %bb.y ] ; 3 uses
  %i.hw = icmp sgt i32 %i.hd, 0
  br i1 %i.hw, label %.lr.ph181.preheader.i, label %.loopexit175.i

.lr.ph181.preheader.i:                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i
  %wide.trip.count216.i = zext nneg i32 %i.hd to i64
  %.pre.i = load i8, ptr %i.gt, align 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hv, i8 %.pre.i, i64 %wide.trip.count216.i, i1 false)
  br label %.loopexit175.i

bb.aa:                                            ; preds = %bb.z
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit175.i:                                   ; preds = %.lr.ph181.preheader.i, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i, %bb.x
  %.0143.i = phi ptr [ %i.hv, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i ], [ null, %bb.x ], [ %i.hv, %.lr.ph181.preheader.i ] ; 3 uses
  %i.hy = icmp sgt i32 %i.gz, 0
  br i1 %i.hy, label %.lr.ph196.i, label %.preheader.i.thread

.loopexit175.thread.i:                            ; preds = %._crit_edge.i
  %i.hz = icmp sgt i32 %i.gz, 0
  br i1 %i.hz, label %.lr.ph196.thread.i, label %.preheader.thread.i

.lr.ph196.thread.i:                               ; preds = %.loopexit175.thread.i
  %i.ia = zext nneg i32 %.sroa.speculated1052 to i64
  %i.ib = mul i64 %i.hb, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.ib
  %i.id = zext nneg i32 %.sroa.speculated1042 to i64 ; 4 uses
  %i.ie = sext i32 %i.gy to i64
  %i.if = sext i32 %i.hc to i64
  %invariant.gep300.i = getelementptr [4 x i8], ptr %i.hi, i64 %i.id ; 5 uses
  %i.ig = add i32 %i.ec, %i.er
  %i.ih = add i32 %i.ig, %.sroa.speculated1061
  %i.ii = add i32 %i.ih, %i.eh
  %i.ij = sub i32 %i.ii, %i.fc
  %smax1802 = call i32 @llvm.smax.i32(i32 %i.ij, i32 0) ; 2 uses
  %i.ik = zext nneg i32 %smax1802 to i64          ; 2 uses
  %xtraiter1796 = and i64 %i.id, 3                ; 3 uses
  %i.il = add nsw i32 %.sroa.speculated1042, -1
  %i.im = icmp ult i32 %i.il, 3
  %unroll_iter1800 = and i64 %i.id, 2147483644
  %lcmp.mod1798.not = icmp eq i64 %xtraiter1796, 0
  %lcmp.mod1799 = icmp ne i64 %xtraiter1796, 0
  %xtraiter1803 = and i64 %i.ik, 3                ; 3 uses
  %i.in = add nsw i32 %smax1802, -1
  %i.io = icmp ult i32 %i.in, 3
  %unroll_iter1807 = and i64 %i.ik, 2147483644
  %lcmp.mod1805.not = icmp eq i64 %xtraiter1803, 0
  %lcmp.mod1806 = icmp ne i64 %xtraiter1803, 0
  br label %.preheader174.i

.lr.ph196.i:                                      ; preds = %.loopexit175.i
  %i.ip = zext nneg i32 %.sroa.speculated1042 to i64 ; 2 uses
  %i.iq = sext i32 %i.gy to i64
  %i.ir = zext nneg i32 %.sroa.speculated1052 to i64 ; 2 uses
  %i.is = mul i64 %i.hb, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.is
  %i.iu = sext i32 %i.hc to i64
  %i.iv = add i32 %i.cu, %i.er
  %i.iw = add i32 %i.iv, %.sroa.speculated1061
  %i.ix = add i32 %i.iw, %i.eh
  %i.iy = sub i32 %i.ix, %i.fc
  %smax = call i32 @llvm.smax.i32(i32 %i.iy, i32 0)
  %i.iz = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %i.gz to i64
  br label %.preheader171.us.i

.preheader171.us.i:                               ; preds = %.loopexit.us.i, %.lr.ph196.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.us.i ], [ 0, %.lr.ph196.i ] ; 2 uses
  %.0193.us.i = phi ptr [ %i.je, %.loopexit.us.i ], [ %i.gw, %.lr.ph196.i ] ; 2 uses
  %.0141190.us.i = phi ptr [ %i.jd, %.loopexit.us.i ], [ %i.it, %.lr.ph196.i ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0141190.us.i, i64 %i.ip
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr align 1 %.0193.us.i, i64 %i.iq, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.preheader.i, label %.preheader170.us.i

.lr.ph187.us.preheader.i:                         ; preds = %.preheader171.us.i
  %i.jb = add nuw i64 %indvar, %i.ir
  %i.jc = mul i64 %i.hb, %i.jb
  %scevgep = getelementptr nuw i8, ptr %i.ha, i64 %i.jc
  %.pre260.i = load i8, ptr %i.gt, align 1
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %.pre260.i, i64 %i.ip, i1 false)
  br label %.preheader170.us.i

.preheader170.us.i:                               ; preds = %.lr.ph187.us.preheader.i, %.preheader171.us.i
  br i1 %i.fg, label %.lr.ph189.us.preheader.i, label %.loopexit.us.i

.lr.ph189.us.preheader.i:                         ; preds = %.preheader170.us.i
  %.pre261.i = load i8, ptr %i.gt, align 1
  %invariant.gep302.i = getelementptr i8, ptr %.0141190.us.i, i64 %i.iu
  call void @llvm.memset.p0.i64(ptr align 1 %invariant.gep302.i, i8 %.pre261.i, i64 %i.iz, i1 false)
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph189.us.preheader.i, %.preheader170.us.i
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0141190.us.i, i64 %i.hb
  %i.je = getelementptr inbounds nuw i8, ptr %.0193.us.i, i64 %i.gx
  %exitcond = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond, label %.preheader.i, label %.preheader171.us.i, !llvm.loop !540
end_hunk_5
begin_hunk_6_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %i.md = mul i64 %i.hb, %i.mc
  br label %.lr.ph202.split.us.preheader.i

._crit_edge199.thread.i:                          ; preds = %.preheader.thread.i
  br i1 %i.fa, label %.lr.ph202.thread.i, label %._crit_edge203.i

.lr.ph202.thread.i:                               ; preds = %._crit_edge199.thread.i
  %i.me = sext i32 %i.gz to i64
  %i.mf = mul i64 %i.hb, %i.me
  %i.mg = sext i32 %i.hd to i64
  br label %.lr.ph202.split.preheader.i

.lr.ph202.i:                                      ; preds = %._crit_edge199.i
  %i.mh = add nsw i32 %i.gz, %.sroa.speculated1052
  %i.mi = sext i32 %i.mh to i64
  %i.mj = mul i64 %i.hb, %i.mi                    ; 2 uses
  %i.mk = sext i32 %i.hd to i64                   ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i, label %.lr.ph202.split.preheader.i

.lr.ph202.split.preheader.i:                      ; preds = %.lr.ph202.i, %.lr.ph202.thread.i
  %i.ml = phi i64 [ %i.mg, %.lr.ph202.thread.i ], [ %i.mk, %.lr.ph202.i ]
  %i.mm = phi i64 [ %i.mf, %.lr.ph202.thread.i ], [ %i.mj, %.lr.ph202.i ]
  %wide.trip.count253.i = zext nneg i32 %i.ez to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.mm
  br label %.lr.ph202.split.i

.lr.ph202.split.us.preheader.i:                   ; preds = %.lr.ph202.i.thread, %.lr.ph202.i, %.lr.ph202.thread293.i
  %i.mo = phi i64 [ %i.jj, %.lr.ph202.thread293.i ], [ %i.mk, %.lr.ph202.i ], [ %i.ly, %.lr.ph202.i.thread ] ; 5 uses
  %.0143279285289295.i = phi ptr [ %.0143279.i10651067, %.lr.ph202.thread293.i ], [ %.0143279285.i, %.lr.ph202.i ], [ %.0143.i, %.lr.ph202.i.thread ] ; 5 uses
  %.pn.i = phi i64 [ %i.md, %.lr.ph202.thread293.i ], [ %i.mj, %.lr.ph202.i ], [ %i.lx, %.lr.ph202.i.thread ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.pn.i ; 5 uses
  %wide.trip.count258.i = zext nneg i32 %i.ez to i64 ; 2 uses
  %xtraiter1815 = and i64 %wide.trip.count258.i, 3 ; 3 uses
  %i.mq = add i32 %i.ez, -1
  %i.mr = icmp ult i32 %i.mq, 3
  br i1 %i.mr, label %.lr.ph202.split.us.i.epil.preheader, label %.lr.ph202.split.us.preheader.i.new

.lr.ph202.split.us.preheader.i.new:               ; preds = %.lr.ph202.split.us.preheader.i
  %unroll_iter1819 = and i64 %wide.trip.count258.i, 2147483644
  br label %.lr.ph202.split.us.i

.lr.ph202.split.us.i:                             ; preds = %.lr.ph202.split.us.i, %.lr.ph202.split.us.preheader.i.new
  %indvars.iv255.i = phi i64 [ 0, %.lr.ph202.split.us.preheader.i.new ], [ %indvars.iv.next256.i.3, %.lr.ph202.split.us.i ] ; 5 uses
  %niter1820 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i.new ], [ %niter1820.next.3, %.lr.ph202.split.us.i ]
  %i.ms = mul i64 %indvars.iv255.i, %i.hb
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.ms
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mt, ptr align 1 %.0143279285289295.i, i64 %i.mo, i1 false)
  %indvars.iv.next256.i = or disjoint i64 %indvars.iv255.i, 1
  %i.mu = mul i64 %indvars.iv.next256.i, %i.hb
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mv, ptr align 1 %.0143279285289295.i, i64 %i.mo, i1 false)
  %indvars.iv.next256.i.1 = or disjoint i64 %indvars.iv255.i, 2
  %i.mw = mul i64 %indvars.iv.next256.i.1, %i.hb
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mx, ptr align 1 %.0143279285289295.i, i64 %i.mo, i1 false)
  %indvars.iv.next256.i.2 = or disjoint i64 %indvars.iv255.i, 3
  %i.my = mul i64 %indvars.iv.next256.i.2, %i.hb
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.my
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mz, ptr align 1 %.0143279285289295.i, i64 %i.mo, i1 false)
  %indvars.iv.next256.i.3 = add nuw nsw i64 %indvars.iv255.i, 4 ; 2 uses
  %niter1820.next.3 = add i64 %niter1820, 4       ; 2 uses
  %niter1820.ncmp.3 = icmp eq i64 %niter1820.next.3, %unroll_iter1819
  br i1 %niter1820.ncmp.3, label %._crit_edge203.i.loopexit.unr-lcssa, label %.lr.ph202.split.us.i, !llvm.loop !547

.lr.ph198.split.i:                                ; preds = %bb.ab, %.lr.ph198.split.preheader.i
  %indvars.iv240.i = phi i64 [ 0, %.lr.ph198.split.preheader.i ], [ %indvars.iv.next241.i, %bb.ab ] ; 3 uses
  %i.na = trunc i64 %indvars.iv240.i to i32
  %i.nb = sub i32 %i.na, %.sroa.speculated1052
  %i.nc = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.nb, i32 noundef %i.gz, i32 noundef %i.p)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.lr.ph198.split.i
  %i.nd = mul i64 %indvars.iv240.i, %i.hb
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.nd
  %i.nf = add nsw i32 %i.nc, %.sroa.speculated1052
  %i.ng = sext i32 %i.nf to i64
  %i.nh = mul i64 %i.hb, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.nh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ne, ptr align 1 %i.ni, i64 %i.ji, i1 false)
  %indvars.iv.next241.i = add nuw nsw i64 %indvars.iv240.i, 1 ; 2 uses
  %exitcond244.not.i = icmp eq i64 %indvars.iv.next241.i, %wide.trip.count243.i
  br i1 %exitcond244.not.i, label %._crit_edge199.i, label %.lr.ph198.split.i, !llvm.loop !541

bb.ac:                                            ; preds = %.lr.ph198.split.i
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

._crit_edge203.i.loopexit.unr-lcssa:              ; preds = %.lr.ph202.split.us.i
  %lcmp.mod1817.not = icmp eq i64 %xtraiter1815, 0
  br i1 %lcmp.mod1817.not, label %._crit_edge203.i, label %.lr.ph202.split.us.i.epil.preheader

.lr.ph202.split.us.i.epil.preheader:              ; preds = %._crit_edge203.i.loopexit.unr-lcssa, %.lr.ph202.split.us.preheader.i
  %indvars.iv255.i.epil.init = phi i64 [ 0, %.lr.ph202.split.us.preheader.i ], [ %indvars.iv.next256.i.3, %._crit_edge203.i.loopexit.unr-lcssa ]
  %lcmp.mod1818 = icmp ne i64 %xtraiter1815, 0
  call void @llvm.assume(i1 %lcmp.mod1818)
  br label %.lr.ph202.split.us.i.epil

.lr.ph202.split.us.i.epil:                        ; preds = %.lr.ph202.split.us.i.epil, %.lr.ph202.split.us.i.epil.preheader
  %indvars.iv255.i.epil = phi i64 [ %indvars.iv255.i.epil.init, %.lr.ph202.split.us.i.epil.preheader ], [ %indvars.iv.next256.i.epil, %.lr.ph202.split.us.i.epil ] ; 2 uses
  %epil.iter1816 = phi i64 [ 0, %.lr.ph202.split.us.i.epil.preheader ], [ %epil.iter1816.next, %.lr.ph202.split.us.i.epil ]
  %i.nk = mul i64 %indvars.iv255.i.epil, %i.hb
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.nk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nl, ptr align 1 %.0143279285289295.i, i64 %i.mo, i1 false)
  %indvars.iv.next256.i.epil = add nuw nsw i64 %indvars.iv255.i.epil, 1
  %epil.iter1816.next = add i64 %epil.iter1816, 1 ; 2 uses
  %epil.iter1816.cmp.not = icmp eq i64 %epil.iter1816.next, %xtraiter1815
  br i1 %epil.iter1816.cmp.not, label %._crit_edge203.i, label %.lr.ph202.split.us.i.epil, !llvm.loop !548

._crit_edge203.i:                                 ; preds = %bb.af, %._crit_edge203.i.loopexit.unr-lcssa, %.lr.ph202.split.us.i.epil, %._crit_edge199.i.thread, %._crit_edge199.thread.i, %._crit_edge199.thread291.i, %._crit_edge199.i
  %i.nm = load ptr, ptr %17, align 8, !tbaa !536  ; 3 uses
  %.not.i.i159.i = icmp eq ptr %i.nm, %i.ce
  %i.nn = icmp eq ptr %i.nm, null
  %or.cond.i.i = or i1 %.not.i.i159.i, %i.nn
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge203.i
  call void @_ZdaPv(ptr noundef nonnull %i.nm) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i:          ; preds = %bb.ad, %._crit_edge203.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.no = load ptr, ptr %16, align 8, !tbaa !532  ; 3 uses
  %.not.i.i161.i = icmp eq ptr %i.no, %i.cc
  %i.np = icmp eq ptr %i.no, null
  %or.cond.i162.i = or i1 %.not.i.i161.i, %i.np
  br i1 %or.cond.i162.i, label %_ZN2cv12cpu_baselineL14fillTileBorderILi1EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.no) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi1EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i:                                ; preds = %bb.af, %.lr.ph202.split.preheader.i
  %indvars.iv250.i = phi i64 [ 0, %.lr.ph202.split.preheader.i ], [ %indvars.iv.next251.i, %bb.af ] ; 3 uses
  %i.nq = trunc i64 %indvars.iv250.i to i32
  %i.nr = add i32 %i.gz, %i.nq
  %i.ns = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.nr, i32 noundef %i.gz, i32 noundef %i.p)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.lr.ph202.split.i
  %i.nt = mul i64 %indvars.iv250.i, %i.hb
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.nt
  %i.nv = add nsw i32 %i.ns, %.sroa.speculated1052
  %i.nw = sext i32 %i.nv to i64
  %i.nx = mul i64 %i.hb, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.nx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nu, ptr align 1 %i.ny, i64 %i.ml, i1 false)
  %indvars.iv.next251.i = add nuw nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %exitcond254.not.i = icmp eq i64 %indvars.iv.next251.i, %wide.trip.count253.i
  br i1 %exitcond254.not.i, label %._crit_edge203.i, label %.lr.ph202.split.i, !llvm.loop !547

bb.ag:                                            ; preds = %.lr.ph202.split.i
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ac, %bb.aa
  %.pn.pn.i = phi { ptr, i32 } [ %i.hx, %bb.aa ], [ %i.nj, %bb.ac ], [ %i.nz, %bb.ag ]
  %i.oa = load ptr, ptr %17, align 8, !tbaa !536  ; 3 uses
  %.not.i.i163.i = icmp eq ptr %i.oa, %i.ce
  %i.ob = icmp eq ptr %i.oa, null
  %or.cond.i164.i = or i1 %.not.i.i163.i, %i.ob
  br i1 %or.cond.i164.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.oa) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i:       ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i, %bb.w, %bb.u
  %.pn156.i = phi { ptr, i32 } [ %i.ho, %bb.u ], [ %i.hs, %bb.w ], [ %.pn.pn.i, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i ]
  %i.oc = load ptr, ptr %16, align 8, !tbaa !532  ; 3 uses
  %.not.i.i167.i = icmp eq ptr %i.oc, %i.cc
  %i.od = icmp eq ptr %i.oc, null
  %or.cond.i168.i = or i1 %.not.i.i167.i, %i.od
  br i1 %or.cond.i168.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.oc) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i:        ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi1EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.gd

bb.al:                                            ; preds = %bb.ex, %bb.ee, %bb.dl, %bb.cs, %bb.bz, %bb.bg, %bb.an, %bb.s
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.n
  %i.of = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.og = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.oh = load i32, ptr %i.av, align 4, !tbaa !148 ; 5 uses
  %i.oi = load i32, ptr %i.aw, align 8, !tbaa !156 ; 10 uses
  %i.oj = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 14 uses
  %i.ok = load i64, ptr %i.ay, align 8, !tbaa !107 ; 23 uses
  %i.ol = add i32 %i.oh, %.sroa.speculated1042    ; 2 uses
  %i.om = add i32 %i.ol, %.sroa.speculated        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.on = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1042 ; 2 uses
  %i.oo = zext nneg i32 %i.on to i64              ; 2 uses
  store ptr %i.by, ptr %14, align 8, !tbaa !532
  %.not.i.i.i238 = icmp samesign ugt i32 %i.on, 264
  store i64 %i.oo, ptr %i.bz, align 8, !tbaa !534
  br i1 %.not.i.i.i238, label %bb.an, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239

bb.an:                                            ; preds = %bb.am
  %i.op = shl nuw nsw i64 %i.oo, 2
  %i.oq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.op) #29
          to label %.noexc340 unwind label %bb.al ; 2 uses

.noexc340:                                        ; preds = %bb.an
  store ptr %i.oq, ptr %14, align 8, !tbaa !532
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239:        ; preds = %.noexc340, %bb.am
  %i.or = phi ptr [ %i.by, %bb.am ], [ %i.oq, %.noexc340 ] ; 8 uses
  br i1 %i.fb, label %.lr.ph.preheader.i334, label %.preheader176.i240

.lr.ph.preheader.i334:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239
  %wide.trip.count.i335 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i336

.preheader176.i240:                               ; preds = %bb.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i239
  br i1 %i.fg, label %.lr.ph179.preheader.i326, label %._crit_edge.i241

.lr.ph179.preheader.i326:                         ; preds = %.preheader176.i240
  %i.os = zext nneg i32 %.sroa.speculated1042 to i64
  %wide.trip.count211.i327 = zext nneg i32 %i.ff to i64
  %invariant.gep.i328 = getelementptr [4 x i8], ptr %i.or, i64 %i.os
  br label %.lr.ph179.i329

.lr.ph.i336:                                      ; preds = %bb.ao, %.lr.ph.preheader.i334
  %indvars.iv.i337 = phi i64 [ 0, %.lr.ph.preheader.i334 ], [ %indvars.iv.next.i338, %bb.ao ] ; 3 uses
  %i.ot = trunc i64 %indvars.iv.i337 to i32
  %i.ou = sub i32 %i.ot, %.sroa.speculated1042
  %i.ov = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ou, i32 noundef %i.oh, i32 noundef %i.p)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i336
  %i.ow = shl nsw i32 %i.ov, 1
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv.i337
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !14
  %indvars.iv.next.i338 = add nuw nsw i64 %indvars.iv.i337, 1 ; 2 uses
  %exitcond.not.i339 = icmp eq i64 %indvars.iv.next.i338, %wide.trip.count.i335
  br i1 %exitcond.not.i339, label %.preheader176.i240, label %.lr.ph.i336, !llvm.loop !549

bb.ap:                                            ; preds = %.lr.ph.i336
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

._crit_edge.i241:                                 ; preds = %bb.aq, %.preheader176.i240
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %i.ca, ptr %15, align 8, !tbaa !536
  store i64 1032, ptr %i.cb, align 8, !tbaa !538
  %or.cond.i315 = or i1 %i.ev, %i.fa
  %or.cond1071 = select i1 %i.bd, i1 %or.cond.i315, i1 false
  br i1 %or.cond1071, label %bb.as, label %.loopexit175.i242

.lr.ph179.i329:                                   ; preds = %bb.aq, %.lr.ph179.preheader.i326
  %indvars.iv208.i330 = phi i64 [ 0, %.lr.ph179.preheader.i326 ], [ %indvars.iv.next209.i332, %bb.aq ] ; 3 uses
  %i.oz = trunc i64 %indvars.iv208.i330 to i32
  %i.pa = add i32 %i.oh, %i.oz
  %i.pb = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.pa, i32 noundef %i.oh, i32 noundef %i.p)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.lr.ph179.i329
  %i.pc = shl nsw i32 %i.pb, 1
  %gep.i331 = getelementptr [4 x i8], ptr %invariant.gep.i328, i64 %indvars.iv208.i330
  store i32 %i.pc, ptr %gep.i331, align 4, !tbaa !14
  %indvars.iv.next209.i332 = add nuw nsw i64 %indvars.iv208.i330, 1 ; 2 uses
  %exitcond212.not.i333 = icmp eq i64 %indvars.iv.next209.i332, %wide.trip.count211.i327
  br i1 %exitcond212.not.i333, label %._crit_edge.i241, label %.lr.ph179.i329, !llvm.loop !550

bb.ar:                                            ; preds = %.lr.ph179.i329
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.as:                                            ; preds = %._crit_edge.i241
  %i.pe = shl nsw i32 %i.om, 1                    ; 2 uses
  %i.pf = sext i32 %i.pe to i64                   ; 2 uses
  %.not.i.i316 = icmp ugt i32 %i.pe, 1032
  store i64 %i.pf, ptr %i.cb, align 8, !tbaa !538
  br i1 %.not.i.i316, label %bb.at, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i317

bb.at:                                            ; preds = %bb.as
  %i.pg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pf) #29
          to label %.noexc.i325 unwind label %bb.au ; 2 uses

.noexc.i325:                                      ; preds = %bb.at
  store ptr %i.pg, ptr %15, align 8, !tbaa !536
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i317

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i317: ; preds = %.noexc.i325, %bb.as
  %i.ph = phi ptr [ %i.pg, %.noexc.i325 ], [ %i.ca, %bb.as ] ; 7 uses
  %i.pi = icmp sgt i32 %i.om, 0
  br i1 %i.pi, label %iter.check1395, label %.loopexit175.i242

iter.check1395:                                   ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i317
  %wide.trip.count216.i319 = zext nneg i32 %i.om to i64 ; 6 uses
  %.pre.i320 = load i16, ptr %i.gt, align 1       ; 3 uses
  %min.iters.check1382 = icmp ult i32 %i.om, 4
  br i1 %min.iters.check1382, label %.lr.ph181.i321.preheader, label %vector.main.loop.iter.check1383

vector.main.loop.iter.check1383:                  ; preds = %iter.check1395
  %min.iters.check1384 = icmp ult i32 %i.om, 16
  br i1 %min.iters.check1384, label %vec.epilog.ph1399, label %vector.ph1385

vector.ph1385:                                    ; preds = %vector.main.loop.iter.check1383
  %i.pj = and i64 %wide.trip.count216.i319, 12
  %n.vec1386 = and i64 %wide.trip.count216.i319, 2147483632 ; 4 uses
  %broadcast.splatinsert1387 = insertelement <8 x i16> poison, i16 %.pre.i320, i64 0
  %broadcast.splat1388 = shufflevector <8 x i16> %broadcast.splatinsert1387, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %vector.ph1385
  %index1390 = phi i64 [ 0, %vector.ph1385 ], [ %index.next1391, %vector.body1389 ] ; 2 uses
  %i.pk = shl nuw nsw i64 %index1390, 1
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pk ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  store <8 x i16> %broadcast.splat1388, ptr %i.pl, align 1
  store <8 x i16> %broadcast.splat1388, ptr %i.pm, align 1
  %index.next1391 = add nuw i64 %index1390, 16    ; 2 uses
  %i.pn = icmp eq i64 %index.next1391, %n.vec1386
  br i1 %i.pn, label %middle.block1392, label %vector.body1389, !llvm.loop !551

middle.block1392:                                 ; preds = %vector.body1389
  %cmp.n1393 = icmp eq i64 %n.vec1386, %wide.trip.count216.i319
  br i1 %cmp.n1393, label %.loopexit175.i242, label %vec.epilog.iter.check1397

vec.epilog.iter.check1397:                        ; preds = %middle.block1392
  %min.epilog.iters.check1398 = icmp eq i64 %i.pj, 0
  br i1 %min.epilog.iters.check1398, label %.lr.ph181.i321.preheader, label %vec.epilog.ph1399, !prof !552

vec.epilog.ph1399:                                ; preds = %vector.main.loop.iter.check1383, %vec.epilog.iter.check1397
  %vec.epilog.resume.val1394 = phi i64 [ %n.vec1386, %vec.epilog.iter.check1397 ], [ 0, %vector.main.loop.iter.check1383 ]
  %n.vec1400 = and i64 %wide.trip.count216.i319, 2147483644 ; 3 uses
  %broadcast.splatinsert1401 = insertelement <4 x i16> poison, i16 %.pre.i320, i64 0
  %broadcast.splat1402 = shufflevector <4 x i16> %broadcast.splatinsert1401, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1403

vec.epilog.vector.body1403:                       ; preds = %vec.epilog.vector.body1403, %vec.epilog.ph1399
  %index1404 = phi i64 [ %vec.epilog.resume.val1394, %vec.epilog.ph1399 ], [ %index.next1405, %vec.epilog.vector.body1403 ] ; 2 uses
  %i.po = shl nuw nsw i64 %index1404, 1
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.po
  store <4 x i16> %broadcast.splat1402, ptr %i.pp, align 1
  %index.next1405 = add nuw i64 %index1404, 4     ; 2 uses
  %i.pq = icmp eq i64 %index.next1405, %n.vec1400
  br i1 %i.pq, label %vec.epilog.middle.block1406, label %vec.epilog.vector.body1403, !llvm.loop !553

vec.epilog.middle.block1406:                      ; preds = %vec.epilog.vector.body1403
  %cmp.n1407 = icmp eq i64 %n.vec1400, %wide.trip.count216.i319
  br i1 %cmp.n1407, label %.loopexit175.i242, label %.lr.ph181.i321.preheader

.lr.ph181.i321.preheader:                         ; preds = %iter.check1395, %vec.epilog.iter.check1397, %vec.epilog.middle.block1406
  %indvars.iv213.i322.ph = phi i64 [ 0, %iter.check1395 ], [ %n.vec1386, %vec.epilog.iter.check1397 ], [ %n.vec1400, %vec.epilog.middle.block1406 ]
  br label %.lr.ph181.i321

bb.au:                                            ; preds = %bb.at
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph181.i321:                                   ; preds = %.lr.ph181.i321.preheader, %.lr.ph181.i321
  %indvars.iv213.i322 = phi i64 [ %indvars.iv.next214.i323, %.lr.ph181.i321 ], [ %indvars.iv213.i322.ph, %.lr.ph181.i321.preheader ] ; 2 uses
  %i.ps = shl nuw nsw i64 %indvars.iv213.i322, 1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.ps
  store i16 %.pre.i320, ptr %i.pt, align 1
  %indvars.iv.next214.i323 = add nuw nsw i64 %indvars.iv213.i322, 1 ; 2 uses
  %exitcond217.not.i324 = icmp eq i64 %indvars.iv.next214.i323, %wide.trip.count216.i319
  br i1 %exitcond217.not.i324, label %.loopexit175.i242, label %.lr.ph181.i321, !llvm.loop !554

.loopexit175.i242:                                ; preds = %.lr.ph181.i321, %middle.block1392, %vec.epilog.middle.block1406, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i317, %._crit_edge.i241
  %.0141.i = phi ptr [ null, %._crit_edge.i241 ], [ %i.ph, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i317 ], [ %i.ph, %middle.block1392 ], [ %i.ph, %vec.epilog.middle.block1406 ], [ %i.ph, %.lr.ph181.i321 ] ; 10 uses
  %i.pu = icmp sgt i32 %i.oi, 0
  br i1 %i.pu, label %.lr.ph196.i284, label %.preheader.i243

.lr.ph196.i284:                                   ; preds = %.loopexit175.i242
  %i.pv = zext nneg i32 %.sroa.speculated1052 to i64 ; 3 uses
  %i.pw = mul i64 %i.ok, %i.pv                    ; 2 uses
  %i.px = getelementptr i8, ptr %i.oj, i64 %i.pw  ; 3 uses
  %i.py = shl nuw nsw i32 %.sroa.speculated1042, 1
  %i.pz = zext nneg i32 %i.py to i64              ; 2 uses
  %i.qa = shl nsw i32 %i.oh, 1
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  %i.qc = sext i32 %i.ol to i64                   ; 11 uses
  %wide.trip.count232.i300 = zext nneg i32 %.sroa.speculated1042 to i64 ; 12 uses
  %wide.trip.count237.i301 = zext nneg i32 %.sroa.speculated to i64
  br i1 %i.bd, label %.preheader171.us.i302.preheader, label %.preheader174.preheader.i

.preheader171.us.i302.preheader:                  ; preds = %.lr.ph196.i284
  %i.qd = shl nsw i64 %i.qc, 1                    ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  call void @llvm.assume(i1 %lcmp.mod1787)
  br label %.lr.ph198.split.us.i278.epil

.lr.ph198.split.us.i278.epil:                     ; preds = %.lr.ph198.split.us.i278.epil, %.lr.ph198.split.us.i278.epil.preheader
  %indvars.iv245.i279.epil = phi i64 [ %indvars.iv.next246.i280.epil, %.lr.ph198.split.us.i278.epil ], [ %indvars.iv245.i279.epil.init, %.lr.ph198.split.us.i278.epil.preheader ] ; 2 uses
  %epil.iter1785 = phi i64 [ %epil.iter1785.next, %.lr.ph198.split.us.i278.epil ], [ 0, %.lr.ph198.split.us.i278.epil.preheader ]
  %i.wz = mul i64 %indvars.iv245.i279.epil, %i.ok
  %i.xa = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.wz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xa, ptr align 1 %.0141.i, i64 %i.uc, i1 false)
  %indvars.iv.next246.i280.epil = add nuw nsw i64 %indvars.iv245.i279.epil, 1
  %epil.iter1785.next = add i64 %epil.iter1785, 1 ; 2 uses
  %epil.iter1785.cmp.not = icmp eq i64 %epil.iter1785.next, %xtraiter1784
  br i1 %epil.iter1785.cmp.not, label %._crit_edge199.thread.i282, label %.lr.ph198.split.us.i278.epil, !llvm.loop !578

._crit_edge199.thread.i282:                       ; preds = %.lr.ph198.split.us.i278.epil, %._crit_edge199.thread.i282.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i283, label %._crit_edge203.i245

.lr.ph202.thread.i283:                            ; preds = %._crit_edge199.thread.i282
  %i.xb = add nsw i32 %i.oi, %.neg
  %i.xc = sext i32 %i.xb to i64
  %i.xd = mul i64 %i.ok, %i.xc
  br label %.lr.ph202.split.us.preheader.i266

.lr.ph202.i251:                                   ; preds = %._crit_edge199.i244
  %i.xe = shl nsw i32 %i.om, 1
  %i.xf = sext i32 %i.xe to i64                   ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i266, label %.lr.ph202.split.preheader.i252

.lr.ph202.split.preheader.i252:                   ; preds = %.lr.ph202.i251
  %wide.trip.count253.i253 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i254

.lr.ph202.split.us.preheader.i266:                ; preds = %.lr.ph202.i251, %.lr.ph202.thread.i283
  %i.xg = phi i64 [ %i.uc, %.lr.ph202.thread.i283 ], [ %i.xf, %.lr.ph202.i251 ] ; 5 uses
  %i.xh = phi i64 [ %i.xd, %.lr.ph202.thread.i283 ], [ %i.wx, %.lr.ph202.i251 ]
  %wide.trip.count258.i267 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.xh ; 5 uses
  %xtraiter1790 = and i64 %wide.trip.count258.i267, 3 ; 3 uses
  %i.xj = add i32 %i.ez, -1
  %i.xk = icmp ult i32 %i.xj, 3
  br i1 %i.xk, label %.lr.ph202.split.us.i268.epil.preheader, label %.lr.ph202.split.us.preheader.i266.new

.lr.ph202.split.us.preheader.i266.new:            ; preds = %.lr.ph202.split.us.preheader.i266
  %unroll_iter1794 = and i64 %wide.trip.count258.i267, 2147483644
  br label %.lr.ph202.split.us.i268

.lr.ph202.split.us.i268:                          ; preds = %.lr.ph202.split.us.i268, %.lr.ph202.split.us.preheader.i266.new
  %indvars.iv255.i269 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i266.new ], [ %indvars.iv.next256.i270.3, %.lr.ph202.split.us.i268 ] ; 5 uses
  %niter1795 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i266.new ], [ %niter1795.next.3, %.lr.ph202.split.us.i268 ]
  %i.xl = mul i64 %indvars.iv255.i269, %i.ok
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xm, ptr align 1 %.0141.i, i64 %i.xg, i1 false)
  %indvars.iv.next256.i270 = or disjoint i64 %indvars.iv255.i269, 1
  %i.xn = mul i64 %indvars.iv.next256.i270, %i.ok
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xo, ptr align 1 %.0141.i, i64 %i.xg, i1 false)
  %indvars.iv.next256.i270.1 = or disjoint i64 %indvars.iv255.i269, 2
  %i.xp = mul i64 %indvars.iv.next256.i270.1, %i.ok
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xq, ptr align 1 %.0141.i, i64 %i.xg, i1 false)
  %indvars.iv.next256.i270.2 = or disjoint i64 %indvars.iv255.i269, 3
  %i.xr = mul i64 %indvars.iv.next256.i270.2, %i.ok
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xs, ptr align 1 %.0141.i, i64 %i.xg, i1 false)
  %indvars.iv.next256.i270.3 = add nuw nsw i64 %indvars.iv255.i269, 4 ; 2 uses
  %niter1795.next.3 = add i64 %niter1795, 4       ; 2 uses
  %niter1795.ncmp.3 = icmp eq i64 %niter1795.next.3, %unroll_iter1794
  br i1 %niter1795.ncmp.3, label %._crit_edge203.i245.loopexit.unr-lcssa, label %.lr.ph202.split.us.i268, !llvm.loop !579

.lr.ph198.split.i274:                             ; preds = %.lr.ph198.i272, %bb.av
  %indvars.iv240.i275 = phi i64 [ %indvars.iv.next241.i276, %bb.av ], [ 0, %.lr.ph198.i272 ] ; 3 uses
  %i.xt = trunc i64 %indvars.iv240.i275 to i32
  %i.xu = sub i32 %i.xt, %.sroa.speculated1052
  %i.xv = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.xu, i32 noundef %i.oi, i32 noundef %i.p)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.lr.ph198.split.i274
  %i.xw = mul i64 %indvars.iv240.i275, %i.ok
  %i.xx = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.xw
  %i.xy = add nsw i32 %i.xv, %.sroa.speculated1052
  %i.xz = sext i32 %i.xy to i64
  %i.ya = mul i64 %i.ok, %i.xz
  %i.yb = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ya
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xx, ptr align 1 %i.yb, i64 %i.uc, i1 false)
  %indvars.iv.next241.i276 = add nuw nsw i64 %indvars.iv240.i275, 1 ; 2 uses
  %exitcond244.not.i277 = icmp eq i64 %indvars.iv.next241.i276, %wide.trip.count248.i273
  br i1 %exitcond244.not.i277, label %._crit_edge199.i244, label %.lr.ph198.split.i274, !llvm.loop !574

bb.aw:                                            ; preds = %.lr.ph198.split.i274
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

._crit_edge203.i245.loopexit.unr-lcssa:           ; preds = %.lr.ph202.split.us.i268
  %lcmp.mod1792.not = icmp eq i64 %xtraiter1790, 0
  br i1 %lcmp.mod1792.not, label %._crit_edge203.i245, label %.lr.ph202.split.us.i268.epil.preheader

.lr.ph202.split.us.i268.epil.preheader:           ; preds = %._crit_edge203.i245.loopexit.unr-lcssa, %.lr.ph202.split.us.preheader.i266
  %indvars.iv255.i269.epil.init = phi i64 [ 0, %.lr.ph202.split.us.preheader.i266 ], [ %indvars.iv.next256.i270.3, %._crit_edge203.i245.loopexit.unr-lcssa ]
  %lcmp.mod1793 = icmp ne i64 %xtraiter1790, 0
  call void @llvm.assume(i1 %lcmp.mod1793)
  br label %.lr.ph202.split.us.i268.epil

.lr.ph202.split.us.i268.epil:                     ; preds = %.lr.ph202.split.us.i268.epil, %.lr.ph202.split.us.i268.epil.preheader
  %indvars.iv255.i269.epil = phi i64 [ %indvars.iv255.i269.epil.init, %.lr.ph202.split.us.i268.epil.preheader ], [ %indvars.iv.next256.i270.epil, %.lr.ph202.split.us.i268.epil ] ; 2 uses
  %epil.iter1791 = phi i64 [ 0, %.lr.ph202.split.us.i268.epil.preheader ], [ %epil.iter1791.next, %.lr.ph202.split.us.i268.epil ]
  %i.yd = mul i64 %indvars.iv255.i269.epil, %i.ok
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.yd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ye, ptr align 1 %.0141.i, i64 %i.xg, i1 false)
  %indvars.iv.next256.i270.epil = add nuw nsw i64 %indvars.iv255.i269.epil, 1
  %epil.iter1791.next = add i64 %epil.iter1791, 1 ; 2 uses
  %epil.iter1791.cmp.not = icmp eq i64 %epil.iter1791.next, %xtraiter1790
  br i1 %epil.iter1791.cmp.not, label %._crit_edge203.i245, label %.lr.ph202.split.us.i268.epil, !llvm.loop !580

._crit_edge203.i245:                              ; preds = %bb.az, %._crit_edge203.i245.loopexit.unr-lcssa, %.lr.ph202.split.us.i268.epil, %._crit_edge199.thread.i282, %._crit_edge199.i244
  %i.yf = load ptr, ptr %15, align 8, !tbaa !536  ; 3 uses
  %.not.i.i159.i246 = icmp eq ptr %i.yf, %i.ca
  %i.yg = icmp eq ptr %i.yf, null
  %or.cond.i.i247 = or i1 %.not.i.i159.i246, %i.yg
  br i1 %or.cond.i.i247, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i248, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge203.i245
  call void @_ZdaPv(ptr noundef nonnull %i.yf) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i248

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i248:       ; preds = %bb.ax, %._crit_edge203.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.yh = load ptr, ptr %14, align 8, !tbaa !532  ; 3 uses
  %.not.i.i161.i249 = icmp eq ptr %i.yh, %i.by
  %i.yi = icmp eq ptr %i.yh, null
  %or.cond.i162.i250 = or i1 %.not.i.i161.i249, %i.yi
  br i1 %or.cond.i162.i250, label %_ZN2cv12cpu_baselineL14fillTileBorderILi2EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i248
  call void @_ZdaPv(ptr noundef nonnull %i.yh) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi2EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i254:                             ; preds = %bb.az, %.lr.ph202.split.preheader.i252
  %indvars.iv250.i255 = phi i64 [ 0, %.lr.ph202.split.preheader.i252 ], [ %indvars.iv.next251.i264, %bb.az ] ; 3 uses
  %i.yj = trunc i64 %indvars.iv250.i255 to i32
  %i.yk = add i32 %i.oi, %i.yj
  %i.yl = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.yk, i32 noundef %i.oi, i32 noundef %i.p)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.lr.ph202.split.i254
  %i.ym = mul i64 %indvars.iv250.i255, %i.ok
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.ym
  %i.yo = add nsw i32 %i.yl, %.sroa.speculated1052
  %i.yp = sext i32 %i.yo to i64
  %i.yq = mul i64 %i.ok, %i.yp
  %i.yr = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.yq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yn, ptr align 1 %i.yr, i64 %i.xf, i1 false)
  %indvars.iv.next251.i264 = add nuw nsw i64 %indvars.iv250.i255, 1 ; 2 uses
  %exitcond254.not.i265 = icmp eq i64 %indvars.iv.next251.i264, %wide.trip.count253.i253
  br i1 %exitcond254.not.i265, label %._crit_edge203.i245, label %.lr.ph202.split.i254, !llvm.loop !579

bb.ba:                                            ; preds = %.lr.ph202.split.i254
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw, %bb.au
  %.pn.pn.i256 = phi { ptr, i32 } [ %i.pr, %bb.au ], [ %i.yc, %bb.aw ], [ %i.ys, %bb.ba ]
  %i.yt = load ptr, ptr %15, align 8, !tbaa !536  ; 3 uses
  %.not.i.i163.i257 = icmp eq ptr %i.yt, %i.ca
  %i.yu = icmp eq ptr %i.yt, null
  %or.cond.i164.i258 = or i1 %.not.i.i163.i257, %i.yu
  br i1 %or.cond.i164.i258, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i259, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.yt) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i259

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i259:    ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i259, %bb.ar, %bb.ap
  %.pn156.i260 = phi { ptr, i32 } [ %i.oy, %bb.ap ], [ %i.pd, %bb.ar ], [ %.pn.pn.i256, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i259 ]
  %i.yv = load ptr, ptr %14, align 8, !tbaa !532  ; 3 uses
  %.not.i.i167.i261 = icmp eq ptr %i.yv, %i.by
  %i.yw = icmp eq ptr %i.yv, null
  %or.cond.i168.i262 = or i1 %.not.i.i167.i261, %i.yw
  br i1 %or.cond.i168.i262, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i263, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.yv) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i263

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i263:     ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi2EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i248, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.gd

bb.bf:                                            ; preds = %bb.n
  %i.yx = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.yy = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.yz = load i32, ptr %i.av, align 4, !tbaa !148 ; 5 uses
  %i.za = load i32, ptr %i.aw, align 8, !tbaa !156 ; 8 uses
  %i.zb = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 11 uses
  %i.zc = load i64, ptr %i.ay, align 8, !tbaa !107 ; 19 uses
  %i.zd = add i32 %i.yz, %.sroa.speculated1042    ; 2 uses
  %i.ze = add i32 %i.zd, %.sroa.speculated        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.zf = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1042 ; 2 uses
  %i.zg = zext nneg i32 %i.zf to i64              ; 2 uses
  store ptr %i.bu, ptr %12, align 8, !tbaa !532
  %.not.i.i.i343 = icmp samesign ugt i32 %i.zf, 264
  store i64 %i.zg, ptr %i.bv, align 8, !tbaa !534
  br i1 %.not.i.i.i343, label %bb.bg, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i344

bb.bg:                                            ; preds = %bb.bf
  %i.zh = shl nuw nsw i64 %i.zg, 2
  %i.zi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zh) #29
          to label %.noexc453 unwind label %bb.al ; 2 uses

.noexc453:                                        ; preds = %bb.bg
  store ptr %i.zi, ptr %12, align 8, !tbaa !532
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i344

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i344:        ; preds = %.noexc453, %bb.bf
  %i.zj = phi ptr [ %i.bu, %bb.bf ], [ %i.zi, %.noexc453 ] ; 6 uses
  br i1 %i.fb, label %.lr.ph.preheader.i447, label %.preheader176.i345

.lr.ph.preheader.i447:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i344
  %wide.trip.count.i448 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i449

.preheader176.i345:                               ; preds = %bb.bh, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i344
  br i1 %i.fg, label %.lr.ph179.preheader.i439, label %._crit_edge.i346

.lr.ph179.preheader.i439:                         ; preds = %.preheader176.i345
  %i.zk = zext nneg i32 %.sroa.speculated1042 to i64
  %wide.trip.count211.i440 = zext nneg i32 %i.ff to i64
  %invariant.gep.i441 = getelementptr [4 x i8], ptr %i.zj, i64 %i.zk
  br label %.lr.ph179.i442

.lr.ph.i449:                                      ; preds = %bb.bh, %.lr.ph.preheader.i447
  %indvars.iv.i450 = phi i64 [ 0, %.lr.ph.preheader.i447 ], [ %indvars.iv.next.i451, %bb.bh ] ; 3 uses
  %i.zl = trunc i64 %indvars.iv.i450 to i32
  %i.zm = sub i32 %i.zl, %.sroa.speculated1042
  %i.zn = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.zm, i32 noundef %i.yz, i32 noundef %i.p)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i449
  %i.zo = mul nsw i32 %i.zn, 3
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv.i450
  store i32 %i.zo, ptr %i.zp, align 4, !tbaa !14
  %indvars.iv.next.i451 = add nuw nsw i64 %indvars.iv.i450, 1 ; 2 uses
  %exitcond.not.i452 = icmp eq i64 %indvars.iv.next.i451, %wide.trip.count.i448
  br i1 %exitcond.not.i452, label %.preheader176.i345, label %.lr.ph.i449, !llvm.loop !581

bb.bi:                                            ; preds = %.lr.ph.i449
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

._crit_edge.i346:                                 ; preds = %bb.bj, %.preheader176.i345
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %i.bw, ptr %13, align 8, !tbaa !536
  store i64 1032, ptr %i.bx, align 8, !tbaa !538
  %or.cond.i429 = or i1 %i.ev, %i.fa
  %or.cond1072 = select i1 %i.bd, i1 %or.cond.i429, i1 false
  br i1 %or.cond1072, label %bb.bl, label %.loopexit175.i347

.lr.ph179.i442:                                   ; preds = %bb.bj, %.lr.ph179.preheader.i439
  %indvars.iv208.i443 = phi i64 [ 0, %.lr.ph179.preheader.i439 ], [ %indvars.iv.next209.i445, %bb.bj ] ; 3 uses
  %i.zr = trunc i64 %indvars.iv208.i443 to i32
  %i.zs = add i32 %i.yz, %i.zr
  %i.zt = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.zs, i32 noundef %i.yz, i32 noundef %i.p)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.lr.ph179.i442
  %i.zu = mul nsw i32 %i.zt, 3
  %gep.i444 = getelementptr [4 x i8], ptr %invariant.gep.i441, i64 %indvars.iv208.i443
  store i32 %i.zu, ptr %gep.i444, align 4, !tbaa !14
  %indvars.iv.next209.i445 = add nuw nsw i64 %indvars.iv208.i443, 1 ; 2 uses
  %exitcond212.not.i446 = icmp eq i64 %indvars.iv.next209.i445, %wide.trip.count211.i440
  br i1 %exitcond212.not.i446, label %._crit_edge.i346, label %.lr.ph179.i442, !llvm.loop !582

bb.bk:                                            ; preds = %.lr.ph179.i442
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bl:                                            ; preds = %._crit_edge.i346
  %i.zw = mul nsw i32 %i.ze, 3                    ; 2 uses
  %i.zx = sext i32 %i.zw to i64                   ; 2 uses
  %.not.i.i430 = icmp ugt i32 %i.zw, 1032
  store i64 %i.zx, ptr %i.bx, align 8, !tbaa !538
  br i1 %.not.i.i430, label %bb.bm, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i431

bb.bm:                                            ; preds = %bb.bl
  %i.zy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zx) #29
          to label %.noexc.i438 unwind label %bb.bn ; 2 uses

.noexc.i438:                                      ; preds = %bb.bm
  store ptr %i.zy, ptr %13, align 8, !tbaa !536
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i431

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i431: ; preds = %.noexc.i438, %bb.bl
  %i.zz = phi ptr [ %i.zy, %.noexc.i438 ], [ %i.bw, %bb.bl ] ; 8 uses
  %i.aaa = icmp sgt i32 %i.ze, 0
  br i1 %i.aaa, label %.lr.ph181.preheader.i432, label %.loopexit175.i347

.lr.ph181.preheader.i432:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i431
  %wide.trip.count216.i433 = zext nneg i32 %i.ze to i64 ; 2 uses
  %xtraiter1720 = and i64 %wide.trip.count216.i433, 3 ; 3 uses
  %i.aab = icmp ult i32 %i.ze, 4
  br i1 %i.aab, label %.lr.ph181.i434.epil.preheader, label %.lr.ph181.preheader.i432.new

.lr.ph181.preheader.i432.new:                     ; preds = %.lr.ph181.preheader.i432
  %unroll_iter1724 = and i64 %wide.trip.count216.i433, 2147483644
  br label %.lr.ph181.i434

bb.bn:                                            ; preds = %bb.bm
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.lr.ph181.i434:                                   ; preds = %.lr.ph181.i434, %.lr.ph181.preheader.i432.new
  %indvars.iv213.i435 = phi i64 [ 0, %.lr.ph181.preheader.i432.new ], [ %indvars.iv.next214.i436.3, %.lr.ph181.i434 ] ; 5 uses
  %niter1725 = phi i64 [ 0, %.lr.ph181.preheader.i432.new ], [ %niter1725.next.3, %.lr.ph181.i434 ]
  %i.aad = mul nuw nsw i64 %indvars.iv213.i435, 3
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zz, i64 %i.aad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aae, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.aaf = mul nuw i64 %indvars.iv213.i435, 3
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zz, i64 %i.aaf
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aah, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.aai = mul nuw i64 %indvars.iv213.i435, 3
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zz, i64 %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aak, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %i.aal = mul nuw i64 %indvars.iv213.i435, 3
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zz, i64 %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aan, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %indvars.iv.next214.i436.3 = add nuw nsw i64 %indvars.iv213.i435, 4 ; 2 uses
  %niter1725.next.3 = add i64 %niter1725, 4       ; 2 uses
  %niter1725.ncmp.3 = icmp eq i64 %niter1725.next.3, %unroll_iter1724
  br i1 %niter1725.ncmp.3, label %.loopexit175.i347.loopexit.unr-lcssa, label %.lr.ph181.i434, !llvm.loop !583

.loopexit175.i347.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i434
  %lcmp.mod1722.not = icmp eq i64 %xtraiter1720, 0
  br i1 %lcmp.mod1722.not, label %.loopexit175.i347, label %.lr.ph181.i434.epil.preheader

.lr.ph181.i434.epil.preheader:                    ; preds = %.loopexit175.i347.loopexit.unr-lcssa, %.lr.ph181.preheader.i432
  %indvars.iv213.i435.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i432 ], [ %indvars.iv.next214.i436.3, %.loopexit175.i347.loopexit.unr-lcssa ]
  %lcmp.mod1723 = icmp ne i64 %xtraiter1720, 0
  call void @llvm.assume(i1 %lcmp.mod1723)
  br label %.lr.ph181.i434.epil

.lr.ph181.i434.epil:                              ; preds = %.lr.ph181.i434.epil, %.lr.ph181.i434.epil.preheader
  %indvars.iv213.i435.epil = phi i64 [ %indvars.iv213.i435.epil.init, %.lr.ph181.i434.epil.preheader ], [ %indvars.iv.next214.i436.epil, %.lr.ph181.i434.epil ] ; 2 uses
  %epil.iter1721 = phi i64 [ 0, %.lr.ph181.i434.epil.preheader ], [ %epil.iter1721.next, %.lr.ph181.i434.epil ]
  %i.aao = mul nuw nsw i64 %indvars.iv213.i435.epil, 3
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zz, i64 %i.aao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aap, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.gt, i64 3, i1 false)
  %indvars.iv.next214.i436.epil = add nuw nsw i64 %indvars.iv213.i435.epil, 1
  %epil.iter1721.next = add i64 %epil.iter1721, 1 ; 2 uses
  %epil.iter1721.cmp.not = icmp eq i64 %epil.iter1721.next, %xtraiter1720
  br i1 %epil.iter1721.cmp.not, label %.loopexit175.i347, label %.lr.ph181.i434.epil, !llvm.loop !584

.loopexit175.i347:                                ; preds = %.loopexit175.i347.loopexit.unr-lcssa, %.lr.ph181.i434.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i431, %._crit_edge.i346
  %.0141.i348 = phi ptr [ null, %._crit_edge.i346 ], [ %i.zz, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i431 ], [ %i.zz, %.lr.ph181.i434.epil ], [ %i.zz, %.loopexit175.i347.loopexit.unr-lcssa ] ; 10 uses
  %i.aaq = icmp sgt i32 %i.za, 0
  br i1 %i.aaq, label %.lr.ph196.i390, label %.preheader.i349

.lr.ph196.i390:                                   ; preds = %.loopexit175.i347
  %i.aar = zext nneg i32 %.sroa.speculated1052 to i64
  %i.aas = mul i64 %i.zc, %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.aas ; 2 uses
  %i.aau = mul nuw nsw i32 %.sroa.speculated1042, 3
  %i.aav = zext nneg i32 %i.aau to i64            ; 2 uses
  %i.aaw = mul nsw i32 %i.yz, 3
  %i.aax = sext i32 %i.aaw to i64                 ; 2 uses
  %i.aay = sext i32 %i.zd to i64                  ; 6 uses
  %wide.trip.count232.i412 = zext nneg i32 %.sroa.speculated1042 to i64 ; 5 uses
  br i1 %i.bd, label %.preheader171.us.i414.preheader, label %.preheader174.preheader.i391

.preheader171.us.i414.preheader:                  ; preds = %.lr.ph196.i390
  %i.aaz = add i32 %i.dw, %i.er
  %i.aba = add i32 %i.aaz, %.sroa.speculated1061
  %i.abb = add i32 %i.aba, %i.eh
  %i.abc = sub i32 %i.abb, %i.fc                  ; 2 uses
  %smax1745 = call i32 @llvm.smax.i32(i32 %i.abc, i32 0) ; 2 uses
  %i.abd = zext nneg i32 %smax1745 to i64         ; 2 uses
  %xtraiter1739 = and i64 %wide.trip.count232.i412, 3 ; 3 uses
  %i.abe = add nsw i32 %.sroa.speculated1042, -1
  %i.abf = icmp ult i32 %i.abe, 3
  %unroll_iter1743 = and i64 %wide.trip.count232.i412, 2147483644
  %lcmp.mod1741.not = icmp eq i64 %xtraiter1739, 0
  %lcmp.mod1742 = icmp ne i64 %xtraiter1739, 0
  %xtraiter1746 = and i64 %i.abd, 1
  %i.abg = icmp eq i32 %i.abc, 1
  %unroll_iter1750 = and i64 %i.abd, 2147483646
  %lcmp.mod1748.not = icmp eq i64 %xtraiter1746, 0
  %lcmp.mod1749 = trunc i32 %smax1745 to i1
end_hunk_7
begin_hunk_8_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  call void @llvm.assume(i1 %lcmp.mod1755)
  br label %.lr.ph198.split.us.i384.epil

.lr.ph198.split.us.i384.epil:                     ; preds = %.lr.ph198.split.us.i384.epil, %.lr.ph198.split.us.i384.epil.preheader
  %indvars.iv245.i385.epil = phi i64 [ %indvars.iv.next246.i386.epil, %.lr.ph198.split.us.i384.epil ], [ %indvars.iv245.i385.epil.init, %.lr.ph198.split.us.i384.epil.preheader ] ; 2 uses
  %epil.iter1753 = phi i64 [ %epil.iter1753.next, %.lr.ph198.split.us.i384.epil ], [ 0, %.lr.ph198.split.us.i384.epil.preheader ]
  %i.aes = mul i64 %indvars.iv245.i385.epil, %i.zc
  %i.aet = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.aes
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aet, ptr align 1 %.0141.i348, i64 %i.acp, i1 false)
  %indvars.iv.next246.i386.epil = add nuw nsw i64 %indvars.iv245.i385.epil, 1
  %epil.iter1753.next = add i64 %epil.iter1753, 1 ; 2 uses
  %epil.iter1753.cmp.not = icmp eq i64 %epil.iter1753.next, %xtraiter1752
  br i1 %epil.iter1753.cmp.not, label %._crit_edge199.thread.i388, label %.lr.ph198.split.us.i384.epil, !llvm.loop !592

._crit_edge199.thread.i388:                       ; preds = %.lr.ph198.split.us.i384.epil, %._crit_edge199.thread.i388.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i389, label %._crit_edge203.i351

.lr.ph202.thread.i389:                            ; preds = %._crit_edge199.thread.i388
  %i.aeu = add nsw i32 %i.za, %.neg
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = mul i64 %i.zc, %i.aev
  br label %.lr.ph202.split.us.preheader.i372

.lr.ph202.i357:                                   ; preds = %._crit_edge199.i350
  %i.aex = mul nsw i32 %i.ze, 3
  %i.aey = sext i32 %i.aex to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i372, label %.lr.ph202.split.preheader.i358

.lr.ph202.split.preheader.i358:                   ; preds = %.lr.ph202.i357
  %wide.trip.count253.i359 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i360

.lr.ph202.split.us.preheader.i372:                ; preds = %.lr.ph202.i357, %.lr.ph202.thread.i389
  %i.aez = phi i64 [ %i.acp, %.lr.ph202.thread.i389 ], [ %i.aey, %.lr.ph202.i357 ] ; 5 uses
  %i.afa = phi i64 [ %i.aew, %.lr.ph202.thread.i389 ], [ %i.aeq, %.lr.ph202.i357 ]
  %wide.trip.count258.i373 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.afa ; 5 uses
  %xtraiter1758 = and i64 %wide.trip.count258.i373, 3 ; 3 uses
  %i.afc = add i32 %i.ez, -1
  %i.afd = icmp ult i32 %i.afc, 3
  br i1 %i.afd, label %.lr.ph202.split.us.i374.epil.preheader, label %.lr.ph202.split.us.preheader.i372.new

.lr.ph202.split.us.preheader.i372.new:            ; preds = %.lr.ph202.split.us.preheader.i372
  %unroll_iter1762 = and i64 %wide.trip.count258.i373, 2147483644
  br label %.lr.ph202.split.us.i374

.lr.ph202.split.us.i374:                          ; preds = %.lr.ph202.split.us.i374, %.lr.ph202.split.us.preheader.i372.new
  %indvars.iv255.i375 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i372.new ], [ %indvars.iv.next256.i376.3, %.lr.ph202.split.us.i374 ] ; 5 uses
  %niter1763 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i372.new ], [ %niter1763.next.3, %.lr.ph202.split.us.i374 ]
  %i.afe = mul i64 %indvars.iv255.i375, %i.zc
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afe
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aff, ptr align 1 %.0141.i348, i64 %i.aez, i1 false)
  %indvars.iv.next256.i376 = or disjoint i64 %indvars.iv255.i375, 1
  %i.afg = mul i64 %indvars.iv.next256.i376, %i.zc
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afh, ptr align 1 %.0141.i348, i64 %i.aez, i1 false)
  %indvars.iv.next256.i376.1 = or disjoint i64 %indvars.iv255.i375, 2
  %i.afi = mul i64 %indvars.iv.next256.i376.1, %i.zc
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afj, ptr align 1 %.0141.i348, i64 %i.aez, i1 false)
  %indvars.iv.next256.i376.2 = or disjoint i64 %indvars.iv255.i375, 3
  %i.afk = mul i64 %indvars.iv.next256.i376.2, %i.zc
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afl, ptr align 1 %.0141.i348, i64 %i.aez, i1 false)
  %indvars.iv.next256.i376.3 = add nuw nsw i64 %indvars.iv255.i375, 4 ; 2 uses
  %niter1763.next.3 = add i64 %niter1763, 4       ; 2 uses
  %niter1763.ncmp.3 = icmp eq i64 %niter1763.next.3, %unroll_iter1762
  br i1 %niter1763.ncmp.3, label %._crit_edge203.i351.loopexit.unr-lcssa, label %.lr.ph202.split.us.i374, !llvm.loop !593

.lr.ph198.split.i380:                             ; preds = %.lr.ph198.i378, %bb.bo
  %indvars.iv240.i381 = phi i64 [ %indvars.iv.next241.i382, %bb.bo ], [ 0, %.lr.ph198.i378 ] ; 3 uses
  %i.afm = trunc i64 %indvars.iv240.i381 to i32
  %i.afn = sub i32 %i.afm, %.sroa.speculated1052
  %i.afo = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.afn, i32 noundef %i.za, i32 noundef %i.p)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.lr.ph198.split.i380
  %i.afp = mul i64 %indvars.iv240.i381, %i.zc
  %i.afq = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.afp
  %i.afr = add nsw i32 %i.afo, %.sroa.speculated1052
  %i.afs = sext i32 %i.afr to i64
  %i.aft = mul i64 %i.zc, %i.afs
  %i.afu = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.aft
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afq, ptr align 1 %i.afu, i64 %i.acp, i1 false)
  %indvars.iv.next241.i382 = add nuw nsw i64 %indvars.iv240.i381, 1 ; 2 uses
  %exitcond244.not.i383 = icmp eq i64 %indvars.iv.next241.i382, %wide.trip.count248.i379
  br i1 %exitcond244.not.i383, label %._crit_edge199.i350, label %.lr.ph198.split.i380, !llvm.loop !589

bb.bp:                                            ; preds = %.lr.ph198.split.i380
  %i.afv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

._crit_edge203.i351.loopexit.unr-lcssa:           ; preds = %.lr.ph202.split.us.i374
  %lcmp.mod1760.not = icmp eq i64 %xtraiter1758, 0
  br i1 %lcmp.mod1760.not, label %._crit_edge203.i351, label %.lr.ph202.split.us.i374.epil.preheader

.lr.ph202.split.us.i374.epil.preheader:           ; preds = %._crit_edge203.i351.loopexit.unr-lcssa, %.lr.ph202.split.us.preheader.i372
  %indvars.iv255.i375.epil.init = phi i64 [ 0, %.lr.ph202.split.us.preheader.i372 ], [ %indvars.iv.next256.i376.3, %._crit_edge203.i351.loopexit.unr-lcssa ]
  %lcmp.mod1761 = icmp ne i64 %xtraiter1758, 0
  call void @llvm.assume(i1 %lcmp.mod1761)
  br label %.lr.ph202.split.us.i374.epil

.lr.ph202.split.us.i374.epil:                     ; preds = %.lr.ph202.split.us.i374.epil, %.lr.ph202.split.us.i374.epil.preheader
  %indvars.iv255.i375.epil = phi i64 [ %indvars.iv255.i375.epil.init, %.lr.ph202.split.us.i374.epil.preheader ], [ %indvars.iv.next256.i376.epil, %.lr.ph202.split.us.i374.epil ] ; 2 uses
  %epil.iter1759 = phi i64 [ 0, %.lr.ph202.split.us.i374.epil.preheader ], [ %epil.iter1759.next, %.lr.ph202.split.us.i374.epil ]
  %i.afw = mul i64 %indvars.iv255.i375.epil, %i.zc
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afx, ptr align 1 %.0141.i348, i64 %i.aez, i1 false)
  %indvars.iv.next256.i376.epil = add nuw nsw i64 %indvars.iv255.i375.epil, 1
  %epil.iter1759.next = add i64 %epil.iter1759, 1 ; 2 uses
  %epil.iter1759.cmp.not = icmp eq i64 %epil.iter1759.next, %xtraiter1758
  br i1 %epil.iter1759.cmp.not, label %._crit_edge203.i351, label %.lr.ph202.split.us.i374.epil, !llvm.loop !594

._crit_edge203.i351:                              ; preds = %bb.bs, %._crit_edge203.i351.loopexit.unr-lcssa, %.lr.ph202.split.us.i374.epil, %._crit_edge199.thread.i388, %._crit_edge199.i350
  %i.afy = load ptr, ptr %13, align 8, !tbaa !536 ; 3 uses
  %.not.i.i159.i352 = icmp eq ptr %i.afy, %i.bw
  %i.afz = icmp eq ptr %i.afy, null
  %or.cond.i.i353 = or i1 %.not.i.i159.i352, %i.afz
  br i1 %or.cond.i.i353, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i354, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge203.i351
  call void @_ZdaPv(ptr noundef nonnull %i.afy) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i354

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i354:       ; preds = %bb.bq, %._crit_edge203.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.aga = load ptr, ptr %12, align 8, !tbaa !532 ; 3 uses
  %.not.i.i161.i355 = icmp eq ptr %i.aga, %i.bu
  %i.agb = icmp eq ptr %i.aga, null
  %or.cond.i162.i356 = or i1 %.not.i.i161.i355, %i.agb
  br i1 %or.cond.i162.i356, label %_ZN2cv12cpu_baselineL14fillTileBorderILi3EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.br

bb.br:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i354
  call void @_ZdaPv(ptr noundef nonnull %i.aga) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi3EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i360:                             ; preds = %bb.bs, %.lr.ph202.split.preheader.i358
  %indvars.iv250.i361 = phi i64 [ 0, %.lr.ph202.split.preheader.i358 ], [ %indvars.iv.next251.i370, %bb.bs ] ; 3 uses
  %i.agc = trunc i64 %indvars.iv250.i361 to i32
  %i.agd = add i32 %i.za, %i.agc
  %i.age = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.agd, i32 noundef %i.za, i32 noundef %i.p)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.lr.ph202.split.i360
  %i.agf = mul i64 %indvars.iv250.i361, %i.zc
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.agf
  %i.agh = add nsw i32 %i.age, %.sroa.speculated1052
  %i.agi = sext i32 %i.agh to i64
  %i.agj = mul i64 %i.zc, %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.agj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agg, ptr align 1 %i.agk, i64 %i.aey, i1 false)
  %indvars.iv.next251.i370 = add nuw nsw i64 %indvars.iv250.i361, 1 ; 2 uses
  %exitcond254.not.i371 = icmp eq i64 %indvars.iv.next251.i370, %wide.trip.count253.i359
  br i1 %exitcond254.not.i371, label %._crit_edge203.i351, label %.lr.ph202.split.i360, !llvm.loop !593

bb.bt:                                            ; preds = %.lr.ph202.split.i360
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bp, %bb.bn
  %.pn.pn.i362 = phi { ptr, i32 } [ %i.aac, %bb.bn ], [ %i.afv, %bb.bp ], [ %i.agl, %bb.bt ]
  %i.agm = load ptr, ptr %13, align 8, !tbaa !536 ; 3 uses
  %.not.i.i163.i363 = icmp eq ptr %i.agm, %i.bw
  %i.agn = icmp eq ptr %i.agm, null
  %or.cond.i164.i364 = or i1 %.not.i.i163.i363, %i.agn
  br i1 %or.cond.i164.i364, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i365, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.agm) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i365

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i365:    ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i365, %bb.bk, %bb.bi
  %.pn156.i366 = phi { ptr, i32 } [ %i.zq, %bb.bi ], [ %i.zv, %bb.bk ], [ %.pn.pn.i362, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i365 ]
  %i.ago = load ptr, ptr %12, align 8, !tbaa !532 ; 3 uses
  %.not.i.i167.i367 = icmp eq ptr %i.ago, %i.bu
  %i.agp = icmp eq ptr %i.ago, null
  %or.cond.i168.i368 = or i1 %.not.i.i167.i367, %i.agp
  br i1 %or.cond.i168.i368, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i369, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %i.ago) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i369

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i369:     ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi3EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i354, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.gd

bb.by:                                            ; preds = %bb.n
  %i.agq = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.agr = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.ags = load i32, ptr %i.av, align 4, !tbaa !148 ; 5 uses
  %i.agt = load i32, ptr %i.aw, align 8, !tbaa !156 ; 10 uses
  %i.agu = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 14 uses
  %i.agv = load i64, ptr %i.ay, align 8, !tbaa !107 ; 23 uses
  %i.agw = add i32 %i.ags, %.sroa.speculated1042  ; 2 uses
  %i.agx = add i32 %i.agw, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.agy = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1042 ; 2 uses
  %i.agz = zext nneg i32 %i.agy to i64            ; 2 uses
  store ptr %i.bq, ptr %10, align 8, !tbaa !532
  %.not.i.i.i456 = icmp samesign ugt i32 %i.agy, 264
  store i64 %i.agz, ptr %i.br, align 8, !tbaa !534
  br i1 %.not.i.i.i456, label %bb.bz, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i457

bb.bz:                                            ; preds = %bb.by
  %i.aha = shl nuw nsw i64 %i.agz, 2
  %i.ahb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aha) #29
          to label %.noexc567 unwind label %bb.al ; 2 uses

.noexc567:                                        ; preds = %bb.bz
  store ptr %i.ahb, ptr %10, align 8, !tbaa !532
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i457

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i457:        ; preds = %.noexc567, %bb.by
  %i.ahc = phi ptr [ %i.bq, %bb.by ], [ %i.ahb, %.noexc567 ] ; 8 uses
  br i1 %i.fb, label %.lr.ph.preheader.i561, label %.preheader176.i458

.lr.ph.preheader.i561:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i457
  %wide.trip.count.i562 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i563

.preheader176.i458:                               ; preds = %bb.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i457
  br i1 %i.fg, label %.lr.ph179.preheader.i553, label %._crit_edge.i459

.lr.ph179.preheader.i553:                         ; preds = %.preheader176.i458
  %i.ahd = zext nneg i32 %.sroa.speculated1042 to i64
  %wide.trip.count211.i554 = zext nneg i32 %i.ff to i64
  %invariant.gep.i555 = getelementptr [4 x i8], ptr %i.ahc, i64 %i.ahd
  br label %.lr.ph179.i556

.lr.ph.i563:                                      ; preds = %bb.ca, %.lr.ph.preheader.i561
  %indvars.iv.i564 = phi i64 [ 0, %.lr.ph.preheader.i561 ], [ %indvars.iv.next.i565, %bb.ca ] ; 3 uses
  %i.ahe = trunc i64 %indvars.iv.i564 to i32
  %i.ahf = sub i32 %i.ahe, %.sroa.speculated1042
  %i.ahg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ahf, i32 noundef %i.ags, i32 noundef %i.p)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i563
  %i.ahh = shl nsw i32 %i.ahg, 2
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.i564
  store i32 %i.ahh, ptr %i.ahi, align 4, !tbaa !14
  %indvars.iv.next.i565 = add nuw nsw i64 %indvars.iv.i564, 1 ; 2 uses
  %exitcond.not.i566 = icmp eq i64 %indvars.iv.next.i565, %wide.trip.count.i562
  br i1 %exitcond.not.i566, label %.preheader176.i458, label %.lr.ph.i563, !llvm.loop !595

bb.cb:                                            ; preds = %.lr.ph.i563
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

._crit_edge.i459:                                 ; preds = %bb.cc, %.preheader176.i458
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.bs, ptr %11, align 8, !tbaa !536
  store i64 1032, ptr %i.bt, align 8, !tbaa !538
  %or.cond.i542 = or i1 %i.ev, %i.fa
  %or.cond1073 = select i1 %i.bd, i1 %or.cond.i542, i1 false
  br i1 %or.cond1073, label %bb.ce, label %.loopexit175.i460

.lr.ph179.i556:                                   ; preds = %bb.cc, %.lr.ph179.preheader.i553
  %indvars.iv208.i557 = phi i64 [ 0, %.lr.ph179.preheader.i553 ], [ %indvars.iv.next209.i559, %bb.cc ] ; 3 uses
  %i.ahk = trunc i64 %indvars.iv208.i557 to i32
  %i.ahl = add i32 %i.ags, %i.ahk
  %i.ahm = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ahl, i32 noundef %i.ags, i32 noundef %i.p)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.lr.ph179.i556
  %i.ahn = shl nsw i32 %i.ahm, 2
  %gep.i558 = getelementptr [4 x i8], ptr %invariant.gep.i555, i64 %indvars.iv208.i557
  store i32 %i.ahn, ptr %gep.i558, align 4, !tbaa !14
  %indvars.iv.next209.i559 = add nuw nsw i64 %indvars.iv208.i557, 1 ; 2 uses
  %exitcond212.not.i560 = icmp eq i64 %indvars.iv.next209.i559, %wide.trip.count211.i554
  br i1 %exitcond212.not.i560, label %._crit_edge.i459, label %.lr.ph179.i556, !llvm.loop !596

bb.cd:                                            ; preds = %.lr.ph179.i556
  %i.aho = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ce:                                            ; preds = %._crit_edge.i459
  %i.ahp = shl nsw i32 %i.agx, 2                  ; 2 uses
  %i.ahq = sext i32 %i.ahp to i64                 ; 2 uses
  %.not.i.i543 = icmp ugt i32 %i.ahp, 1032
  store i64 %i.ahq, ptr %i.bt, align 8, !tbaa !538
  br i1 %.not.i.i543, label %bb.cf, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i544

bb.cf:                                            ; preds = %bb.ce
  %i.ahr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahq) #29
          to label %.noexc.i552 unwind label %bb.cg ; 2 uses

.noexc.i552:                                      ; preds = %bb.cf
  store ptr %i.ahr, ptr %11, align 8, !tbaa !536
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i544

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i544: ; preds = %.noexc.i552, %bb.ce
  %i.ahs = phi ptr [ %i.ahr, %.noexc.i552 ], [ %i.bs, %bb.ce ] ; 5 uses
  %i.aht = icmp sgt i32 %i.agx, 0
  br i1 %i.aht, label %.lr.ph181.preheader.i545, label %.loopexit175.i460

.lr.ph181.preheader.i545:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i544
  %wide.trip.count216.i546 = zext nneg i32 %i.agx to i64 ; 3 uses
  %.pre.i547 = load i32, ptr %i.gt, align 1       ; 2 uses
  %min.iters.check1449 = icmp ult i32 %i.agx, 8
  br i1 %min.iters.check1449, label %.lr.ph181.i548.preheader, label %vector.ph1450

vector.ph1450:                                    ; preds = %.lr.ph181.preheader.i545
  %n.vec1451 = and i64 %wide.trip.count216.i546, 2147483640 ; 3 uses
  %broadcast.splatinsert1452 = insertelement <4 x i32> poison, i32 %.pre.i547, i64 0
  %broadcast.splat1453 = shufflevector <4 x i32> %broadcast.splatinsert1452, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1454

vector.body1454:                                  ; preds = %vector.body1454, %vector.ph1450
  %index1455 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1456, %vector.body1454 ] ; 2 uses
  %i.ahu = shl nuw nsw i64 %index1455, 2
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahu ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 16
  store <4 x i32> %broadcast.splat1453, ptr %i.ahv, align 1
  store <4 x i32> %broadcast.splat1453, ptr %i.ahw, align 1
  %index.next1456 = add nuw i64 %index1455, 8     ; 2 uses
  %i.ahx = icmp eq i64 %index.next1456, %n.vec1451
  br i1 %i.ahx, label %middle.block1457, label %vector.body1454, !llvm.loop !597

middle.block1457:                                 ; preds = %vector.body1454
  %cmp.n1458 = icmp eq i64 %n.vec1451, %wide.trip.count216.i546
  br i1 %cmp.n1458, label %.loopexit175.i460, label %.lr.ph181.i548.preheader

.lr.ph181.i548.preheader:                         ; preds = %.lr.ph181.preheader.i545, %middle.block1457
  %indvars.iv213.i549.ph = phi i64 [ 0, %.lr.ph181.preheader.i545 ], [ %n.vec1451, %middle.block1457 ]
  br label %.lr.ph181.i548

bb.cg:                                            ; preds = %bb.cf
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.lr.ph181.i548:                                   ; preds = %.lr.ph181.i548.preheader, %.lr.ph181.i548
  %indvars.iv213.i549 = phi i64 [ %indvars.iv.next214.i550, %.lr.ph181.i548 ], [ %indvars.iv213.i549.ph, %.lr.ph181.i548.preheader ] ; 2 uses
  %i.ahz = shl nuw nsw i64 %indvars.iv213.i549, 2
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahz
  store i32 %.pre.i547, ptr %i.aia, align 1
  %indvars.iv.next214.i550 = add nuw nsw i64 %indvars.iv213.i549, 1 ; 2 uses
  %exitcond217.not.i551 = icmp eq i64 %indvars.iv.next214.i550, %wide.trip.count216.i546
  br i1 %exitcond217.not.i551, label %.loopexit175.i460, label %.lr.ph181.i548, !llvm.loop !598

.loopexit175.i460:                                ; preds = %.lr.ph181.i548, %middle.block1457, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i544, %._crit_edge.i459
  %.0141.i461 = phi ptr [ null, %._crit_edge.i459 ], [ %i.ahs, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i544 ], [ %i.ahs, %middle.block1457 ], [ %i.ahs, %.lr.ph181.i548 ] ; 10 uses
  %i.aib = icmp sgt i32 %i.agt, 0
  br i1 %i.aib, label %.lr.ph196.i503, label %.preheader.i462

.lr.ph196.i503:                                   ; preds = %.loopexit175.i460
  %i.aic = zext nneg i32 %.sroa.speculated1052 to i64 ; 3 uses
  %i.aid = mul i64 %i.agv, %i.aic                 ; 2 uses
  %i.aie = getelementptr i8, ptr %i.agu, i64 %i.aid ; 3 uses
  %i.aif = shl nsw i32 %.sroa.speculated1042, 2
  %i.aig = zext nneg i32 %i.aif to i64            ; 2 uses
  %i.aih = shl nsw i32 %i.ags, 2
  %i.aii = sext i32 %i.aih to i64                 ; 2 uses
  %i.aij = sext i32 %i.agw to i64                 ; 10 uses
  %wide.trip.count232.i525 = zext nneg i32 %.sroa.speculated1042 to i64 ; 9 uses
  %wide.trip.count237.i526 = zext nneg i32 %.sroa.speculated to i64
  br i1 %i.bd, label %.preheader171.us.i527.preheader, label %.preheader174.preheader.i504

.preheader171.us.i527.preheader:                  ; preds = %.lr.ph196.i503
  %i.aik = shl nsw i64 %i.aij, 2                  ; 2 uses
  %i.ail = getelementptr i8, ptr %i.agu, i64 %i.aid
  %scevgep1410 = getelementptr i8, ptr %i.ail, i64 %i.aik
  %i.aim = add nsw i32 %i.agt, -1
  %i.ain = zext i32 %i.aim to i64
  %i.aio = add nuw nsw i64 %i.aic, %i.ain
  %i.aip = mul i64 %i.agv, %i.aio
  %i.aiq = add i32 %i.da, %i.er
  %i.air = add i32 %i.aiq, %.sroa.speculated1061
  %i.ais = add i32 %i.air, %i.eh
  %i.ait = sub i32 %i.ais, %i.fc
  %smax1411 = call i32 @llvm.smax.i32(i32 %i.ait, i32 0)
  %i.aiu = zext nneg i32 %smax1411 to i64
  %i.aiv = shl nuw nsw i64 %i.aiu, 2
  %i.aiw = getelementptr i8, ptr %i.agu, i64 %i.aip
  %i.aix = getelementptr i8, ptr %i.aiw, i64 %i.aik
  %scevgep1412 = getelementptr i8, ptr %i.aix, i64 %i.aiv
  %scevgep1413 = getelementptr i8, ptr %i.gt, i64 4
  %i.aiy = add nsw i32 %i.agt, -1
  %i.aiz = zext i32 %i.aiy to i64
  %i.aja = add nuw nsw i64 %i.aic, %i.aiz
  %i.ajb = mul i64 %i.agv, %i.aja
  %i.ajc = shl nuw nsw i64 %wide.trip.count232.i525, 2
  %i.ajd = getelementptr i8, ptr %i.agu, i64 %i.ajb
  %scevgep1430 = getelementptr i8, ptr %i.ajd, i64 %i.ajc
  %scevgep1431 = getelementptr i8, ptr %i.gt, i64 4
  %min.iters.check1437 = icmp slt i32 %.neg214, 8
  %bound01432 = icmp ult ptr %i.aie, %scevgep1431
  %bound11433 = icmp ult ptr %i.gt, %scevgep1430
  %found.conflict1434 = and i1 %bound01432, %bound11433
end_hunk_8
begin_hunk_9_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  call void @llvm.assume(i1 %lcmp.mod1711)
  br label %.lr.ph198.split.us.i497.epil

.lr.ph198.split.us.i497.epil:                     ; preds = %.lr.ph198.split.us.i497.epil, %.lr.ph198.split.us.i497.epil.preheader
  %indvars.iv245.i498.epil = phi i64 [ %indvars.iv.next246.i499.epil, %.lr.ph198.split.us.i497.epil ], [ %indvars.iv245.i498.epil.init, %.lr.ph198.split.us.i497.epil.preheader ] ; 2 uses
  %epil.iter1709 = phi i64 [ %epil.iter1709.next, %.lr.ph198.split.us.i497.epil ], [ 0, %.lr.ph198.split.us.i497.epil.preheader ]
  %i.aot = mul i64 %indvars.iv245.i498.epil, %i.agv
  %i.aou = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.aot
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aou, ptr align 1 %.0141.i461, i64 %i.alw, i1 false)
  %indvars.iv.next246.i499.epil = add nuw nsw i64 %indvars.iv245.i498.epil, 1
  %epil.iter1709.next = add i64 %epil.iter1709, 1 ; 2 uses
  %epil.iter1709.cmp.not = icmp eq i64 %epil.iter1709.next, %xtraiter1708
  br i1 %epil.iter1709.cmp.not, label %._crit_edge199.thread.i501, label %.lr.ph198.split.us.i497.epil, !llvm.loop !620

._crit_edge199.thread.i501:                       ; preds = %.lr.ph198.split.us.i497.epil, %._crit_edge199.thread.i501.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i502, label %._crit_edge203.i464

.lr.ph202.thread.i502:                            ; preds = %._crit_edge199.thread.i501
  %i.aov = add nsw i32 %i.agt, %.neg
  %i.aow = sext i32 %i.aov to i64
  %i.aox = mul i64 %i.agv, %i.aow
  br label %.lr.ph202.split.us.preheader.i485

.lr.ph202.i470:                                   ; preds = %._crit_edge199.i463
  %i.aoy = shl nsw i32 %i.agx, 2
  %i.aoz = sext i32 %i.aoy to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i485, label %.lr.ph202.split.preheader.i471

.lr.ph202.split.preheader.i471:                   ; preds = %.lr.ph202.i470
  %wide.trip.count253.i472 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i473

.lr.ph202.split.us.preheader.i485:                ; preds = %.lr.ph202.i470, %.lr.ph202.thread.i502
  %i.apa = phi i64 [ %i.alw, %.lr.ph202.thread.i502 ], [ %i.aoz, %.lr.ph202.i470 ] ; 5 uses
  %i.apb = phi i64 [ %i.aox, %.lr.ph202.thread.i502 ], [ %i.aor, %.lr.ph202.i470 ]
  %wide.trip.count258.i486 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.apb ; 5 uses
  %xtraiter1714 = and i64 %wide.trip.count258.i486, 3 ; 3 uses
  %i.apd = add i32 %i.ez, -1
  %i.ape = icmp ult i32 %i.apd, 3
  br i1 %i.ape, label %.lr.ph202.split.us.i487.epil.preheader, label %.lr.ph202.split.us.preheader.i485.new

.lr.ph202.split.us.preheader.i485.new:            ; preds = %.lr.ph202.split.us.preheader.i485
  %unroll_iter1718 = and i64 %wide.trip.count258.i486, 2147483644
  br label %.lr.ph202.split.us.i487

.lr.ph202.split.us.i487:                          ; preds = %.lr.ph202.split.us.i487, %.lr.ph202.split.us.preheader.i485.new
  %indvars.iv255.i488 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i485.new ], [ %indvars.iv.next256.i489.3, %.lr.ph202.split.us.i487 ] ; 5 uses
  %niter1719 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i485.new ], [ %niter1719.next.3, %.lr.ph202.split.us.i487 ]
  %i.apf = mul i64 %indvars.iv255.i488, %i.agv
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 %i.apf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apg, ptr align 1 %.0141.i461, i64 %i.apa, i1 false)
  %indvars.iv.next256.i489 = or disjoint i64 %indvars.iv255.i488, 1
  %i.aph = mul i64 %indvars.iv.next256.i489, %i.agv
  %i.api = getelementptr inbounds nuw i8, ptr %i.apc, i64 %i.aph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.api, ptr align 1 %.0141.i461, i64 %i.apa, i1 false)
  %indvars.iv.next256.i489.1 = or disjoint i64 %indvars.iv255.i488, 2
  %i.apj = mul i64 %indvars.iv.next256.i489.1, %i.agv
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apc, i64 %i.apj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apk, ptr align 1 %.0141.i461, i64 %i.apa, i1 false)
  %indvars.iv.next256.i489.2 = or disjoint i64 %indvars.iv255.i488, 3
  %i.apl = mul i64 %indvars.iv.next256.i489.2, %i.agv
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apc, i64 %i.apl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apm, ptr align 1 %.0141.i461, i64 %i.apa, i1 false)
  %indvars.iv.next256.i489.3 = add nuw nsw i64 %indvars.iv255.i488, 4 ; 2 uses
  %niter1719.next.3 = add i64 %niter1719, 4       ; 2 uses
  %niter1719.ncmp.3 = icmp eq i64 %niter1719.next.3, %unroll_iter1718
  br i1 %niter1719.ncmp.3, label %._crit_edge203.i464.loopexit.unr-lcssa, label %.lr.ph202.split.us.i487, !llvm.loop !621

.lr.ph198.split.i493:                             ; preds = %.lr.ph198.i491, %bb.ch
  %indvars.iv240.i494 = phi i64 [ %indvars.iv.next241.i495, %bb.ch ], [ 0, %.lr.ph198.i491 ] ; 3 uses
  %i.apn = trunc i64 %indvars.iv240.i494 to i32
  %i.apo = sub i32 %i.apn, %.sroa.speculated1052
  %i.app = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.apo, i32 noundef %i.agt, i32 noundef %i.p)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %.lr.ph198.split.i493
  %i.apq = mul i64 %indvars.iv240.i494, %i.agv
  %i.apr = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.apq
  %i.aps = add nsw i32 %i.app, %.sroa.speculated1052
  %i.apt = sext i32 %i.aps to i64
  %i.apu = mul i64 %i.agv, %i.apt
  %i.apv = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.apu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apr, ptr align 1 %i.apv, i64 %i.alw, i1 false)
  %indvars.iv.next241.i495 = add nuw nsw i64 %indvars.iv240.i494, 1 ; 2 uses
  %exitcond244.not.i496 = icmp eq i64 %indvars.iv.next241.i495, %wide.trip.count248.i492
  br i1 %exitcond244.not.i496, label %._crit_edge199.i463, label %.lr.ph198.split.i493, !llvm.loop !616

bb.ci:                                            ; preds = %.lr.ph198.split.i493
  %i.apw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

._crit_edge203.i464.loopexit.unr-lcssa:           ; preds = %.lr.ph202.split.us.i487
  %lcmp.mod1716.not = icmp eq i64 %xtraiter1714, 0
  br i1 %lcmp.mod1716.not, label %._crit_edge203.i464, label %.lr.ph202.split.us.i487.epil.preheader

.lr.ph202.split.us.i487.epil.preheader:           ; preds = %._crit_edge203.i464.loopexit.unr-lcssa, %.lr.ph202.split.us.preheader.i485
  %indvars.iv255.i488.epil.init = phi i64 [ 0, %.lr.ph202.split.us.preheader.i485 ], [ %indvars.iv.next256.i489.3, %._crit_edge203.i464.loopexit.unr-lcssa ]
  %lcmp.mod1717 = icmp ne i64 %xtraiter1714, 0
  call void @llvm.assume(i1 %lcmp.mod1717)
  br label %.lr.ph202.split.us.i487.epil

.lr.ph202.split.us.i487.epil:                     ; preds = %.lr.ph202.split.us.i487.epil, %.lr.ph202.split.us.i487.epil.preheader
  %indvars.iv255.i488.epil = phi i64 [ %indvars.iv255.i488.epil.init, %.lr.ph202.split.us.i487.epil.preheader ], [ %indvars.iv.next256.i489.epil, %.lr.ph202.split.us.i487.epil ] ; 2 uses
  %epil.iter1715 = phi i64 [ 0, %.lr.ph202.split.us.i487.epil.preheader ], [ %epil.iter1715.next, %.lr.ph202.split.us.i487.epil ]
  %i.apx = mul i64 %indvars.iv255.i488.epil, %i.agv
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apc, i64 %i.apx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apy, ptr align 1 %.0141.i461, i64 %i.apa, i1 false)
  %indvars.iv.next256.i489.epil = add nuw nsw i64 %indvars.iv255.i488.epil, 1
  %epil.iter1715.next = add i64 %epil.iter1715, 1 ; 2 uses
  %epil.iter1715.cmp.not = icmp eq i64 %epil.iter1715.next, %xtraiter1714
  br i1 %epil.iter1715.cmp.not, label %._crit_edge203.i464, label %.lr.ph202.split.us.i487.epil, !llvm.loop !622

._crit_edge203.i464:                              ; preds = %bb.cl, %._crit_edge203.i464.loopexit.unr-lcssa, %.lr.ph202.split.us.i487.epil, %._crit_edge199.thread.i501, %._crit_edge199.i463
  %i.apz = load ptr, ptr %11, align 8, !tbaa !536 ; 3 uses
  %.not.i.i159.i465 = icmp eq ptr %i.apz, %i.bs
  %i.aqa = icmp eq ptr %i.apz, null
  %or.cond.i.i466 = or i1 %.not.i.i159.i465, %i.aqa
  br i1 %or.cond.i.i466, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i467, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge203.i464
  call void @_ZdaPv(ptr noundef nonnull %i.apz) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i467

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i467:       ; preds = %bb.cj, %._crit_edge203.i464
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.aqb = load ptr, ptr %10, align 8, !tbaa !532 ; 3 uses
  %.not.i.i161.i468 = icmp eq ptr %i.aqb, %i.bq
  %i.aqc = icmp eq ptr %i.aqb, null
  %or.cond.i162.i469 = or i1 %.not.i.i161.i468, %i.aqc
  br i1 %or.cond.i162.i469, label %_ZN2cv12cpu_baselineL14fillTileBorderILi4EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i467
  call void @_ZdaPv(ptr noundef nonnull %i.aqb) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi4EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i473:                             ; preds = %bb.cl, %.lr.ph202.split.preheader.i471
  %indvars.iv250.i474 = phi i64 [ 0, %.lr.ph202.split.preheader.i471 ], [ %indvars.iv.next251.i483, %bb.cl ] ; 3 uses
  %i.aqd = trunc i64 %indvars.iv250.i474 to i32
  %i.aqe = add i32 %i.agt, %i.aqd
  %i.aqf = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.aqe, i32 noundef %i.agt, i32 noundef %i.p)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %.lr.ph202.split.i473
  %i.aqg = mul i64 %indvars.iv250.i474, %i.agv
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aqg
  %i.aqi = add nsw i32 %i.aqf, %.sroa.speculated1052
  %i.aqj = sext i32 %i.aqi to i64
  %i.aqk = mul i64 %i.agv, %i.aqj
  %i.aql = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.aqk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqh, ptr align 1 %i.aql, i64 %i.aoz, i1 false)
  %indvars.iv.next251.i483 = add nuw nsw i64 %indvars.iv250.i474, 1 ; 2 uses
  %exitcond254.not.i484 = icmp eq i64 %indvars.iv.next251.i483, %wide.trip.count253.i472
  br i1 %exitcond254.not.i484, label %._crit_edge203.i464, label %.lr.ph202.split.i473, !llvm.loop !621

bb.cm:                                            ; preds = %.lr.ph202.split.i473
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ci, %bb.cg
  %.pn.pn.i475 = phi { ptr, i32 } [ %i.ahy, %bb.cg ], [ %i.apw, %bb.ci ], [ %i.aqm, %bb.cm ]
  %i.aqn = load ptr, ptr %11, align 8, !tbaa !536 ; 3 uses
  %.not.i.i163.i476 = icmp eq ptr %i.aqn, %i.bs
  %i.aqo = icmp eq ptr %i.aqn, null
  %or.cond.i164.i477 = or i1 %.not.i.i163.i476, %i.aqo
  br i1 %or.cond.i164.i477, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i478, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.aqn) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i478

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i478:    ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i478, %bb.cd, %bb.cb
  %.pn156.i479 = phi { ptr, i32 } [ %i.ahj, %bb.cb ], [ %i.aho, %bb.cd ], [ %.pn.pn.i475, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i478 ]
  %i.aqp = load ptr, ptr %10, align 8, !tbaa !532 ; 3 uses
  %.not.i.i167.i480 = icmp eq ptr %i.aqp, %i.bq
  %i.aqq = icmp eq ptr %i.aqp, null
  %or.cond.i168.i481 = or i1 %.not.i.i167.i480, %i.aqq
  br i1 %or.cond.i168.i481, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i482, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZdaPv(ptr noundef nonnull %i.aqp) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i482

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i482:     ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi4EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i467, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.gd

bb.cr:                                            ; preds = %bb.n
  %i.aqr = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.aqs = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.aqt = load i32, ptr %i.av, align 4, !tbaa !148 ; 5 uses
  %i.aqu = load i32, ptr %i.aw, align 8, !tbaa !156 ; 8 uses
  %i.aqv = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 11 uses
  %i.aqw = load i64, ptr %i.ay, align 8, !tbaa !107 ; 19 uses
  %i.aqx = add i32 %i.aqt, %.sroa.speculated1042  ; 2 uses
  %i.aqy = add i32 %i.aqx, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aqz = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1042 ; 2 uses
  %i.ara = zext nneg i32 %i.aqz to i64            ; 2 uses
  store ptr %i.bm, ptr %8, align 8, !tbaa !532
  %.not.i.i.i570 = icmp samesign ugt i32 %i.aqz, 264
  store i64 %i.ara, ptr %i.bn, align 8, !tbaa !534
  br i1 %.not.i.i.i570, label %bb.cs, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i571

bb.cs:                                            ; preds = %bb.cr
  %i.arb = shl nuw nsw i64 %i.ara, 2
  %i.arc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.arb) #29
          to label %.noexc680 unwind label %bb.al ; 2 uses

.noexc680:                                        ; preds = %bb.cs
  store ptr %i.arc, ptr %8, align 8, !tbaa !532
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i571

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i571:        ; preds = %.noexc680, %bb.cr
  %i.ard = phi ptr [ %i.bm, %bb.cr ], [ %i.arc, %.noexc680 ] ; 6 uses
  br i1 %i.fb, label %.lr.ph.preheader.i674, label %.preheader176.i572

.lr.ph.preheader.i674:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i571
  %wide.trip.count.i675 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i676

.preheader176.i572:                               ; preds = %bb.ct, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i571
  br i1 %i.fg, label %.lr.ph179.preheader.i666, label %._crit_edge.i573

.lr.ph179.preheader.i666:                         ; preds = %.preheader176.i572
  %i.are = zext nneg i32 %.sroa.speculated1042 to i64
  %wide.trip.count211.i667 = zext nneg i32 %i.ff to i64
  %invariant.gep.i668 = getelementptr [4 x i8], ptr %i.ard, i64 %i.are
  br label %.lr.ph179.i669

.lr.ph.i676:                                      ; preds = %bb.ct, %.lr.ph.preheader.i674
  %indvars.iv.i677 = phi i64 [ 0, %.lr.ph.preheader.i674 ], [ %indvars.iv.next.i678, %bb.ct ] ; 3 uses
  %i.arf = trunc i64 %indvars.iv.i677 to i32
  %i.arg = sub i32 %i.arf, %.sroa.speculated1042
  %i.arh = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.arg, i32 noundef %i.aqt, i32 noundef %i.p)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %.lr.ph.i676
  %i.ari = mul nsw i32 %i.arh, 6
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.ard, i64 %indvars.iv.i677
  store i32 %i.ari, ptr %i.arj, align 4, !tbaa !14
  %indvars.iv.next.i678 = add nuw nsw i64 %indvars.iv.i677, 1 ; 2 uses
  %exitcond.not.i679 = icmp eq i64 %indvars.iv.next.i678, %wide.trip.count.i675
  br i1 %exitcond.not.i679, label %.preheader176.i572, label %.lr.ph.i676, !llvm.loop !623

bb.cu:                                            ; preds = %.lr.ph.i676
  %i.ark = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

._crit_edge.i573:                                 ; preds = %bb.cv, %.preheader176.i572
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.bo, ptr %9, align 8, !tbaa !536
  store i64 1032, ptr %i.bp, align 8, !tbaa !538
  %or.cond.i656 = or i1 %i.ev, %i.fa
  %or.cond1074 = select i1 %i.bd, i1 %or.cond.i656, i1 false
  br i1 %or.cond1074, label %bb.cx, label %.loopexit175.i574

.lr.ph179.i669:                                   ; preds = %bb.cv, %.lr.ph179.preheader.i666
  %indvars.iv208.i670 = phi i64 [ 0, %.lr.ph179.preheader.i666 ], [ %indvars.iv.next209.i672, %bb.cv ] ; 3 uses
  %i.arl = trunc i64 %indvars.iv208.i670 to i32
  %i.arm = add i32 %i.aqt, %i.arl
  %i.arn = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.arm, i32 noundef %i.aqt, i32 noundef %i.p)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %.lr.ph179.i669
  %i.aro = mul nsw i32 %i.arn, 6
  %gep.i671 = getelementptr [4 x i8], ptr %invariant.gep.i668, i64 %indvars.iv208.i670
  store i32 %i.aro, ptr %gep.i671, align 4, !tbaa !14
  %indvars.iv.next209.i672 = add nuw nsw i64 %indvars.iv208.i670, 1 ; 2 uses
  %exitcond212.not.i673 = icmp eq i64 %indvars.iv.next209.i672, %wide.trip.count211.i667
  br i1 %exitcond212.not.i673, label %._crit_edge.i573, label %.lr.ph179.i669, !llvm.loop !624

bb.cw:                                            ; preds = %.lr.ph179.i669
  %i.arp = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cx:                                            ; preds = %._crit_edge.i573
  %i.arq = mul nsw i32 %i.aqy, 6                  ; 2 uses
  %i.arr = sext i32 %i.arq to i64                 ; 2 uses
  %.not.i.i657 = icmp ugt i32 %i.arq, 1032
  store i64 %i.arr, ptr %i.bp, align 8, !tbaa !538
  br i1 %.not.i.i657, label %bb.cy, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i658

bb.cy:                                            ; preds = %bb.cx
  %i.ars = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.arr) #29
          to label %.noexc.i665 unwind label %bb.cz ; 2 uses

.noexc.i665:                                      ; preds = %bb.cy
  store ptr %i.ars, ptr %9, align 8, !tbaa !536
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i658

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i658: ; preds = %.noexc.i665, %bb.cx
  %i.art = phi ptr [ %i.ars, %.noexc.i665 ], [ %i.bo, %bb.cx ] ; 8 uses
  %i.aru = icmp sgt i32 %i.aqy, 0
  br i1 %i.aru, label %.lr.ph181.preheader.i659, label %.loopexit175.i574

.lr.ph181.preheader.i659:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i658
  %wide.trip.count216.i660 = zext nneg i32 %i.aqy to i64 ; 2 uses
  %xtraiter1645 = and i64 %wide.trip.count216.i660, 3 ; 3 uses
  %i.arv = icmp ult i32 %i.aqy, 4
  br i1 %i.arv, label %.lr.ph181.i661.epil.preheader, label %.lr.ph181.preheader.i659.new

.lr.ph181.preheader.i659.new:                     ; preds = %.lr.ph181.preheader.i659
  %unroll_iter1649 = and i64 %wide.trip.count216.i660, 2147483644
  br label %.lr.ph181.i661

bb.cz:                                            ; preds = %bb.cy
  %i.arw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

.lr.ph181.i661:                                   ; preds = %.lr.ph181.i661, %.lr.ph181.preheader.i659.new
  %indvars.iv213.i662 = phi i64 [ 0, %.lr.ph181.preheader.i659.new ], [ %indvars.iv.next214.i663.3, %.lr.ph181.i661 ] ; 5 uses
  %niter1650 = phi i64 [ 0, %.lr.ph181.preheader.i659.new ], [ %niter1650.next.3, %.lr.ph181.i661 ]
  %i.arx = mul nuw nsw i64 %indvars.iv213.i662, 6
  %i.ary = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.arx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ary, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.arz = mul nuw i64 %indvars.iv213.i662, 6
  %i.asa = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.arz
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.asb, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.asc = mul nuw i64 %indvars.iv213.i662, 6
  %i.asd = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.asc
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ase, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %i.asf = mul nuw i64 %indvars.iv213.i662, 6
  %i.asg = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ash, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %indvars.iv.next214.i663.3 = add nuw nsw i64 %indvars.iv213.i662, 4 ; 2 uses
  %niter1650.next.3 = add i64 %niter1650, 4       ; 2 uses
  %niter1650.ncmp.3 = icmp eq i64 %niter1650.next.3, %unroll_iter1649
  br i1 %niter1650.ncmp.3, label %.loopexit175.i574.loopexit.unr-lcssa, label %.lr.ph181.i661, !llvm.loop !625

.loopexit175.i574.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i661
  %lcmp.mod1647.not = icmp eq i64 %xtraiter1645, 0
  br i1 %lcmp.mod1647.not, label %.loopexit175.i574, label %.lr.ph181.i661.epil.preheader

.lr.ph181.i661.epil.preheader:                    ; preds = %.loopexit175.i574.loopexit.unr-lcssa, %.lr.ph181.preheader.i659
  %indvars.iv213.i662.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i659 ], [ %indvars.iv.next214.i663.3, %.loopexit175.i574.loopexit.unr-lcssa ]
  %lcmp.mod1648 = icmp ne i64 %xtraiter1645, 0
  call void @llvm.assume(i1 %lcmp.mod1648)
  br label %.lr.ph181.i661.epil

.lr.ph181.i661.epil:                              ; preds = %.lr.ph181.i661.epil, %.lr.ph181.i661.epil.preheader
  %indvars.iv213.i662.epil = phi i64 [ %indvars.iv213.i662.epil.init, %.lr.ph181.i661.epil.preheader ], [ %indvars.iv.next214.i663.epil, %.lr.ph181.i661.epil ] ; 2 uses
  %epil.iter1646 = phi i64 [ 0, %.lr.ph181.i661.epil.preheader ], [ %epil.iter1646.next, %.lr.ph181.i661.epil ]
  %i.asi = mul nuw nsw i64 %indvars.iv213.i662.epil, 6
  %i.asj = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.asi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.asj, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.gt, i64 6, i1 false)
  %indvars.iv.next214.i663.epil = add nuw nsw i64 %indvars.iv213.i662.epil, 1
  %epil.iter1646.next = add i64 %epil.iter1646, 1 ; 2 uses
  %epil.iter1646.cmp.not = icmp eq i64 %epil.iter1646.next, %xtraiter1645
  br i1 %epil.iter1646.cmp.not, label %.loopexit175.i574, label %.lr.ph181.i661.epil, !llvm.loop !626

.loopexit175.i574:                                ; preds = %.loopexit175.i574.loopexit.unr-lcssa, %.lr.ph181.i661.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i658, %._crit_edge.i573
  %.0141.i575 = phi ptr [ null, %._crit_edge.i573 ], [ %i.art, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i658 ], [ %i.art, %.lr.ph181.i661.epil ], [ %i.art, %.loopexit175.i574.loopexit.unr-lcssa ] ; 10 uses
  %i.ask = icmp sgt i32 %i.aqu, 0
  br i1 %i.ask, label %.lr.ph196.i617, label %.preheader.i576

.lr.ph196.i617:                                   ; preds = %.loopexit175.i574
  %i.asl = zext nneg i32 %.sroa.speculated1052 to i64
  %i.asm = mul i64 %i.aqw, %i.asl
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %i.asm ; 2 uses
  %i.aso = mul nuw nsw i32 %.sroa.speculated1042, 6
  %i.asp = zext nneg i32 %i.aso to i64            ; 2 uses
  %i.asq = mul nsw i32 %i.aqt, 6
  %i.asr = sext i32 %i.asq to i64                 ; 2 uses
  %i.ass = sext i32 %i.aqx to i64                 ; 6 uses
  %wide.trip.count232.i639 = zext nneg i32 %.sroa.speculated1042 to i64 ; 5 uses
  br i1 %i.bd, label %.preheader171.us.i641.preheader, label %.preheader174.preheader.i618

.preheader171.us.i641.preheader:                  ; preds = %.lr.ph196.i617
  %i.ast = add i32 %i.dq, %i.er
  %i.asu = add i32 %i.ast, %.sroa.speculated1061
  %i.asv = add i32 %i.asu, %i.eh
  %i.asw = sub i32 %i.asv, %i.fc                  ; 2 uses
  %smax1670 = call i32 @llvm.smax.i32(i32 %i.asw, i32 0) ; 2 uses
  %i.asx = zext nneg i32 %smax1670 to i64         ; 2 uses
  %xtraiter1664 = and i64 %wide.trip.count232.i639, 3 ; 3 uses
  %i.asy = add nsw i32 %.sroa.speculated1042, -1
  %i.asz = icmp ult i32 %i.asy, 3
  %unroll_iter1668 = and i64 %wide.trip.count232.i639, 2147483644
  %lcmp.mod1666.not = icmp eq i64 %xtraiter1664, 0
  %lcmp.mod1667 = icmp ne i64 %xtraiter1664, 0
  %xtraiter1671 = and i64 %i.asx, 1
  %i.ata = icmp eq i32 %i.asw, 1
  %unroll_iter1675 = and i64 %i.asx, 2147483646
  %lcmp.mod1673.not = icmp eq i64 %xtraiter1671, 0
  %lcmp.mod1674 = trunc i32 %smax1670 to i1
end_hunk_9
begin_hunk_10_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  call void @llvm.assume(i1 %lcmp.mod1680)
  br label %.lr.ph198.split.us.i611.epil

.lr.ph198.split.us.i611.epil:                     ; preds = %.lr.ph198.split.us.i611.epil, %.lr.ph198.split.us.i611.epil.preheader
  %indvars.iv245.i612.epil = phi i64 [ %indvars.iv.next246.i613.epil, %.lr.ph198.split.us.i611.epil ], [ %indvars.iv245.i612.epil.init, %.lr.ph198.split.us.i611.epil.preheader ] ; 2 uses
  %epil.iter1678 = phi i64 [ %epil.iter1678.next, %.lr.ph198.split.us.i611.epil ], [ 0, %.lr.ph198.split.us.i611.epil.preheader ]
  %i.awm = mul i64 %indvars.iv245.i612.epil, %i.aqw
  %i.awn = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %i.awm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awn, ptr align 1 %.0141.i575, i64 %i.auj, i1 false)
  %indvars.iv.next246.i613.epil = add nuw nsw i64 %indvars.iv245.i612.epil, 1
  %epil.iter1678.next = add i64 %epil.iter1678, 1 ; 2 uses
  %epil.iter1678.cmp.not = icmp eq i64 %epil.iter1678.next, %xtraiter1677
  br i1 %epil.iter1678.cmp.not, label %._crit_edge199.thread.i615, label %.lr.ph198.split.us.i611.epil, !llvm.loop !634

._crit_edge199.thread.i615:                       ; preds = %.lr.ph198.split.us.i611.epil, %._crit_edge199.thread.i615.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i616, label %._crit_edge203.i578

.lr.ph202.thread.i616:                            ; preds = %._crit_edge199.thread.i615
  %i.awo = add nsw i32 %i.aqu, %.neg
  %i.awp = sext i32 %i.awo to i64
  %i.awq = mul i64 %i.aqw, %i.awp
  br label %.lr.ph202.split.us.preheader.i599

.lr.ph202.i584:                                   ; preds = %._crit_edge199.i577
  %i.awr = mul nsw i32 %i.aqy, 6
  %i.aws = sext i32 %i.awr to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i599, label %.lr.ph202.split.preheader.i585

.lr.ph202.split.preheader.i585:                   ; preds = %.lr.ph202.i584
  %wide.trip.count253.i586 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i587

.lr.ph202.split.us.preheader.i599:                ; preds = %.lr.ph202.i584, %.lr.ph202.thread.i616
  %i.awt = phi i64 [ %i.auj, %.lr.ph202.thread.i616 ], [ %i.aws, %.lr.ph202.i584 ] ; 5 uses
  %i.awu = phi i64 [ %i.awq, %.lr.ph202.thread.i616 ], [ %i.awk, %.lr.ph202.i584 ]
  %wide.trip.count258.i600 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %i.awu ; 5 uses
  %xtraiter1683 = and i64 %wide.trip.count258.i600, 3 ; 3 uses
  %i.aww = add i32 %i.ez, -1
  %i.awx = icmp ult i32 %i.aww, 3
  br i1 %i.awx, label %.lr.ph202.split.us.i601.epil.preheader, label %.lr.ph202.split.us.preheader.i599.new

.lr.ph202.split.us.preheader.i599.new:            ; preds = %.lr.ph202.split.us.preheader.i599
  %unroll_iter1687 = and i64 %wide.trip.count258.i600, 2147483644
  br label %.lr.ph202.split.us.i601

.lr.ph202.split.us.i601:                          ; preds = %.lr.ph202.split.us.i601, %.lr.ph202.split.us.preheader.i599.new
  %indvars.iv255.i602 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i599.new ], [ %indvars.iv.next256.i603.3, %.lr.ph202.split.us.i601 ] ; 5 uses
  %niter1688 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i599.new ], [ %niter1688.next.3, %.lr.ph202.split.us.i601 ]
  %i.awy = mul i64 %indvars.iv255.i602, %i.aqw
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.awy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awz, ptr align 1 %.0141.i575, i64 %i.awt, i1 false)
  %indvars.iv.next256.i603 = or disjoint i64 %indvars.iv255.i602, 1
  %i.axa = mul i64 %indvars.iv.next256.i603, %i.aqw
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.axa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axb, ptr align 1 %.0141.i575, i64 %i.awt, i1 false)
  %indvars.iv.next256.i603.1 = or disjoint i64 %indvars.iv255.i602, 2
  %i.axc = mul i64 %indvars.iv.next256.i603.1, %i.aqw
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.axc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axd, ptr align 1 %.0141.i575, i64 %i.awt, i1 false)
  %indvars.iv.next256.i603.2 = or disjoint i64 %indvars.iv255.i602, 3
  %i.axe = mul i64 %indvars.iv.next256.i603.2, %i.aqw
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.axe
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axf, ptr align 1 %.0141.i575, i64 %i.awt, i1 false)
  %indvars.iv.next256.i603.3 = add nuw nsw i64 %indvars.iv255.i602, 4 ; 2 uses
  %niter1688.next.3 = add i64 %niter1688, 4       ; 2 uses
  %niter1688.ncmp.3 = icmp eq i64 %niter1688.next.3, %unroll_iter1687
  br i1 %niter1688.ncmp.3, label %._crit_edge203.i578.loopexit.unr-lcssa, label %.lr.ph202.split.us.i601, !llvm.loop !635

.lr.ph198.split.i607:                             ; preds = %.lr.ph198.i605, %bb.da
  %indvars.iv240.i608 = phi i64 [ %indvars.iv.next241.i609, %bb.da ], [ 0, %.lr.ph198.i605 ] ; 3 uses
  %i.axg = trunc i64 %indvars.iv240.i608 to i32
  %i.axh = sub i32 %i.axg, %.sroa.speculated1052
  %i.axi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.axh, i32 noundef %i.aqu, i32 noundef %i.p)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %.lr.ph198.split.i607
  %i.axj = mul i64 %indvars.iv240.i608, %i.aqw
  %i.axk = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %i.axj
  %i.axl = add nsw i32 %i.axi, %.sroa.speculated1052
  %i.axm = sext i32 %i.axl to i64
  %i.axn = mul i64 %i.aqw, %i.axm
  %i.axo = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %i.axn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axk, ptr align 1 %i.axo, i64 %i.auj, i1 false)
  %indvars.iv.next241.i609 = add nuw nsw i64 %indvars.iv240.i608, 1 ; 2 uses
  %exitcond244.not.i610 = icmp eq i64 %indvars.iv.next241.i609, %wide.trip.count248.i606
  br i1 %exitcond244.not.i610, label %._crit_edge199.i577, label %.lr.ph198.split.i607, !llvm.loop !631

bb.db:                                            ; preds = %.lr.ph198.split.i607
  %i.axp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

._crit_edge203.i578.loopexit.unr-lcssa:           ; preds = %.lr.ph202.split.us.i601
  %lcmp.mod1685.not = icmp eq i64 %xtraiter1683, 0
  br i1 %lcmp.mod1685.not, label %._crit_edge203.i578, label %.lr.ph202.split.us.i601.epil.preheader

.lr.ph202.split.us.i601.epil.preheader:           ; preds = %._crit_edge203.i578.loopexit.unr-lcssa, %.lr.ph202.split.us.preheader.i599
  %indvars.iv255.i602.epil.init = phi i64 [ 0, %.lr.ph202.split.us.preheader.i599 ], [ %indvars.iv.next256.i603.3, %._crit_edge203.i578.loopexit.unr-lcssa ]
  %lcmp.mod1686 = icmp ne i64 %xtraiter1683, 0
  call void @llvm.assume(i1 %lcmp.mod1686)
  br label %.lr.ph202.split.us.i601.epil

.lr.ph202.split.us.i601.epil:                     ; preds = %.lr.ph202.split.us.i601.epil, %.lr.ph202.split.us.i601.epil.preheader
  %indvars.iv255.i602.epil = phi i64 [ %indvars.iv255.i602.epil.init, %.lr.ph202.split.us.i601.epil.preheader ], [ %indvars.iv.next256.i603.epil, %.lr.ph202.split.us.i601.epil ] ; 2 uses
  %epil.iter1684 = phi i64 [ 0, %.lr.ph202.split.us.i601.epil.preheader ], [ %epil.iter1684.next, %.lr.ph202.split.us.i601.epil ]
  %i.axq = mul i64 %indvars.iv255.i602.epil, %i.aqw
  %i.axr = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.axq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axr, ptr align 1 %.0141.i575, i64 %i.awt, i1 false)
  %indvars.iv.next256.i603.epil = add nuw nsw i64 %indvars.iv255.i602.epil, 1
  %epil.iter1684.next = add i64 %epil.iter1684, 1 ; 2 uses
  %epil.iter1684.cmp.not = icmp eq i64 %epil.iter1684.next, %xtraiter1683
  br i1 %epil.iter1684.cmp.not, label %._crit_edge203.i578, label %.lr.ph202.split.us.i601.epil, !llvm.loop !636

._crit_edge203.i578:                              ; preds = %bb.de, %._crit_edge203.i578.loopexit.unr-lcssa, %.lr.ph202.split.us.i601.epil, %._crit_edge199.thread.i615, %._crit_edge199.i577
  %i.axs = load ptr, ptr %9, align 8, !tbaa !536  ; 3 uses
  %.not.i.i159.i579 = icmp eq ptr %i.axs, %i.bo
  %i.axt = icmp eq ptr %i.axs, null
  %or.cond.i.i580 = or i1 %.not.i.i159.i579, %i.axt
  br i1 %or.cond.i.i580, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i581, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge203.i578
  call void @_ZdaPv(ptr noundef nonnull %i.axs) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i581

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i581:       ; preds = %bb.dc, %._crit_edge203.i578
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.axu = load ptr, ptr %8, align 8, !tbaa !532  ; 3 uses
  %.not.i.i161.i582 = icmp eq ptr %i.axu, %i.bm
  %i.axv = icmp eq ptr %i.axu, null
  %or.cond.i162.i583 = or i1 %.not.i.i161.i582, %i.axv
  br i1 %or.cond.i162.i583, label %_ZN2cv12cpu_baselineL14fillTileBorderILi6EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i581
  call void @_ZdaPv(ptr noundef nonnull %i.axu) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi6EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i587:                             ; preds = %bb.de, %.lr.ph202.split.preheader.i585
  %indvars.iv250.i588 = phi i64 [ 0, %.lr.ph202.split.preheader.i585 ], [ %indvars.iv.next251.i597, %bb.de ] ; 3 uses
  %i.axw = trunc i64 %indvars.iv250.i588 to i32
  %i.axx = add i32 %i.aqu, %i.axw
  %i.axy = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.axx, i32 noundef %i.aqu, i32 noundef %i.p)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %.lr.ph202.split.i587
  %i.axz = mul i64 %indvars.iv250.i588, %i.aqw
  %i.aya = getelementptr inbounds nuw i8, ptr %i.awl, i64 %i.axz
  %i.ayb = add nsw i32 %i.axy, %.sroa.speculated1052
  %i.ayc = sext i32 %i.ayb to i64
  %i.ayd = mul i64 %i.aqw, %i.ayc
  %i.aye = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %i.ayd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aya, ptr align 1 %i.aye, i64 %i.aws, i1 false)
  %indvars.iv.next251.i597 = add nuw nsw i64 %indvars.iv250.i588, 1 ; 2 uses
  %exitcond254.not.i598 = icmp eq i64 %indvars.iv.next251.i597, %wide.trip.count253.i586
  br i1 %exitcond254.not.i598, label %._crit_edge203.i578, label %.lr.ph202.split.i587, !llvm.loop !635

bb.df:                                            ; preds = %.lr.ph202.split.i587
  %i.ayf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.db, %bb.cz
  %.pn.pn.i589 = phi { ptr, i32 } [ %i.arw, %bb.cz ], [ %i.axp, %bb.db ], [ %i.ayf, %bb.df ]
  %i.ayg = load ptr, ptr %9, align 8, !tbaa !536  ; 3 uses
  %.not.i.i163.i590 = icmp eq ptr %i.ayg, %i.bo
  %i.ayh = icmp eq ptr %i.ayg, null
  %or.cond.i164.i591 = or i1 %.not.i.i163.i590, %i.ayh
  br i1 %or.cond.i164.i591, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i592, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZdaPv(ptr noundef nonnull %i.ayg) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i592

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i592:    ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.di

bb.di:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i592, %bb.cw, %bb.cu
  %.pn156.i593 = phi { ptr, i32 } [ %i.ark, %bb.cu ], [ %i.arp, %bb.cw ], [ %.pn.pn.i589, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i592 ]
  %i.ayi = load ptr, ptr %8, align 8, !tbaa !532  ; 3 uses
  %.not.i.i167.i594 = icmp eq ptr %i.ayi, %i.bm
  %i.ayj = icmp eq ptr %i.ayi, null
  %or.cond.i168.i595 = or i1 %.not.i.i167.i594, %i.ayj
  br i1 %or.cond.i168.i595, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i596, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZdaPv(ptr noundef nonnull %i.ayi) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i596

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i596:     ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi6EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i581, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.gd

bb.dk:                                            ; preds = %bb.n
  %i.ayk = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.ayl = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.aym = load i32, ptr %i.av, align 4, !tbaa !148 ; 5 uses
  %i.ayn = load i32, ptr %i.aw, align 8, !tbaa !156 ; 10 uses
  %i.ayo = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 14 uses
  %i.ayp = load i64, ptr %i.ay, align 8, !tbaa !107 ; 23 uses
  %i.ayq = add i32 %i.aym, %.sroa.speculated1042  ; 2 uses
  %i.ayr = add i32 %i.ayq, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ays = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1042 ; 2 uses
  %i.ayt = zext nneg i32 %i.ays to i64            ; 2 uses
  store ptr %i.bi, ptr %6, align 8, !tbaa !532
  %.not.i.i.i683 = icmp samesign ugt i32 %i.ays, 264
  store i64 %i.ayt, ptr %i.bj, align 8, !tbaa !534
  br i1 %.not.i.i.i683, label %bb.dl, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i684

bb.dl:                                            ; preds = %bb.dk
  %i.ayu = shl nuw nsw i64 %i.ayt, 2
  %i.ayv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ayu) #29
          to label %.noexc794 unwind label %bb.al ; 2 uses

.noexc794:                                        ; preds = %bb.dl
  store ptr %i.ayv, ptr %6, align 8, !tbaa !532
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i684

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i684:        ; preds = %.noexc794, %bb.dk
  %i.ayw = phi ptr [ %i.bi, %bb.dk ], [ %i.ayv, %.noexc794 ] ; 8 uses
  br i1 %i.fb, label %.lr.ph.preheader.i788, label %.preheader176.i685

.lr.ph.preheader.i788:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i684
  %wide.trip.count.i789 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i790

.preheader176.i685:                               ; preds = %bb.dm, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i684
  br i1 %i.fg, label %.lr.ph179.preheader.i780, label %._crit_edge.i686

.lr.ph179.preheader.i780:                         ; preds = %.preheader176.i685
  %i.ayx = zext nneg i32 %.sroa.speculated1042 to i64
  %wide.trip.count211.i781 = zext nneg i32 %i.ff to i64
  %invariant.gep.i782 = getelementptr [4 x i8], ptr %i.ayw, i64 %i.ayx
  br label %.lr.ph179.i783

.lr.ph.i790:                                      ; preds = %bb.dm, %.lr.ph.preheader.i788
  %indvars.iv.i791 = phi i64 [ 0, %.lr.ph.preheader.i788 ], [ %indvars.iv.next.i792, %bb.dm ] ; 3 uses
  %i.ayy = trunc i64 %indvars.iv.i791 to i32
  %i.ayz = sub i32 %i.ayy, %.sroa.speculated1042
  %i.aza = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ayz, i32 noundef %i.aym, i32 noundef %i.p)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i790
  %i.azb = shl nsw i32 %i.aza, 3
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv.i791
  store i32 %i.azb, ptr %i.azc, align 4, !tbaa !14
  %indvars.iv.next.i792 = add nuw nsw i64 %indvars.iv.i791, 1 ; 2 uses
  %exitcond.not.i793 = icmp eq i64 %indvars.iv.next.i792, %wide.trip.count.i789
  br i1 %exitcond.not.i793, label %.preheader176.i685, label %.lr.ph.i790, !llvm.loop !637

bb.dn:                                            ; preds = %.lr.ph.i790
  %i.azd = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

._crit_edge.i686:                                 ; preds = %bb.do, %.preheader176.i685
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.bk, ptr %7, align 8, !tbaa !536
  store i64 1032, ptr %i.bl, align 8, !tbaa !538
  %or.cond.i769 = or i1 %i.ev, %i.fa
  %or.cond1075 = select i1 %i.bd, i1 %or.cond.i769, i1 false
  br i1 %or.cond1075, label %bb.dq, label %.loopexit175.i687

.lr.ph179.i783:                                   ; preds = %bb.do, %.lr.ph179.preheader.i780
  %indvars.iv208.i784 = phi i64 [ 0, %.lr.ph179.preheader.i780 ], [ %indvars.iv.next209.i786, %bb.do ] ; 3 uses
  %i.aze = trunc i64 %indvars.iv208.i784 to i32
  %i.azf = add i32 %i.aym, %i.aze
  %i.azg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.azf, i32 noundef %i.aym, i32 noundef %i.p)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %.lr.ph179.i783
  %i.azh = shl nsw i32 %i.azg, 3
  %gep.i785 = getelementptr [4 x i8], ptr %invariant.gep.i782, i64 %indvars.iv208.i784
  store i32 %i.azh, ptr %gep.i785, align 4, !tbaa !14
  %indvars.iv.next209.i786 = add nuw nsw i64 %indvars.iv208.i784, 1 ; 2 uses
  %exitcond212.not.i787 = icmp eq i64 %indvars.iv.next209.i786, %wide.trip.count211.i781
  br i1 %exitcond212.not.i787, label %._crit_edge.i686, label %.lr.ph179.i783, !llvm.loop !638

bb.dp:                                            ; preds = %.lr.ph179.i783
  %i.azi = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dq:                                            ; preds = %._crit_edge.i686
  %i.azj = shl nsw i32 %i.ayr, 3                  ; 2 uses
  %i.azk = sext i32 %i.azj to i64                 ; 2 uses
  %.not.i.i770 = icmp ugt i32 %i.azj, 1032
  store i64 %i.azk, ptr %i.bl, align 8, !tbaa !538
  br i1 %.not.i.i770, label %bb.dr, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i771

bb.dr:                                            ; preds = %bb.dq
  %i.azl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.azk) #29
          to label %.noexc.i779 unwind label %bb.ds ; 2 uses

.noexc.i779:                                      ; preds = %bb.dr
  store ptr %i.azl, ptr %7, align 8, !tbaa !536
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i771

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i771: ; preds = %.noexc.i779, %bb.dq
  %i.azm = phi ptr [ %i.azl, %.noexc.i779 ], [ %i.bk, %bb.dq ] ; 5 uses
  %i.azn = icmp sgt i32 %i.ayr, 0
  br i1 %i.azn, label %.lr.ph181.preheader.i772, label %.loopexit175.i687

.lr.ph181.preheader.i772:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i771
  %wide.trip.count216.i773 = zext nneg i32 %i.ayr to i64 ; 3 uses
  %.pre.i774 = load i64, ptr %i.gt, align 1       ; 2 uses
  %min.iters.check1501 = icmp ult i32 %i.ayr, 4
  br i1 %min.iters.check1501, label %.lr.ph181.i775.preheader, label %vector.ph1502

vector.ph1502:                                    ; preds = %.lr.ph181.preheader.i772
  %n.vec1503 = and i64 %wide.trip.count216.i773, 2147483644 ; 3 uses
  %broadcast.splatinsert1504 = insertelement <2 x i64> poison, i64 %.pre.i774, i64 0
  %broadcast.splat1505 = shufflevector <2 x i64> %broadcast.splatinsert1504, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1502
  %index1507 = phi i64 [ 0, %vector.ph1502 ], [ %index.next1508, %vector.body1506 ] ; 2 uses
  %i.azo = shl nuw nsw i64 %index1507, 3
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azm, i64 %i.azo ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 16
  store <2 x i64> %broadcast.splat1505, ptr %i.azp, align 1
  store <2 x i64> %broadcast.splat1505, ptr %i.azq, align 1
  %index.next1508 = add nuw i64 %index1507, 4     ; 2 uses
  %i.azr = icmp eq i64 %index.next1508, %n.vec1503
  br i1 %i.azr, label %middle.block1509, label %vector.body1506, !llvm.loop !639

middle.block1509:                                 ; preds = %vector.body1506
  %cmp.n1510 = icmp eq i64 %n.vec1503, %wide.trip.count216.i773
  br i1 %cmp.n1510, label %.loopexit175.i687, label %.lr.ph181.i775.preheader

.lr.ph181.i775.preheader:                         ; preds = %.lr.ph181.preheader.i772, %middle.block1509
  %indvars.iv213.i776.ph = phi i64 [ 0, %.lr.ph181.preheader.i772 ], [ %n.vec1503, %middle.block1509 ]
  br label %.lr.ph181.i775

bb.ds:                                            ; preds = %bb.dr
  %i.azs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.lr.ph181.i775:                                   ; preds = %.lr.ph181.i775.preheader, %.lr.ph181.i775
  %indvars.iv213.i776 = phi i64 [ %indvars.iv.next214.i777, %.lr.ph181.i775 ], [ %indvars.iv213.i776.ph, %.lr.ph181.i775.preheader ] ; 2 uses
  %i.azt = shl nuw nsw i64 %indvars.iv213.i776, 3
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azm, i64 %i.azt
  store i64 %.pre.i774, ptr %i.azu, align 1
  %indvars.iv.next214.i777 = add nuw nsw i64 %indvars.iv213.i776, 1 ; 2 uses
  %exitcond217.not.i778 = icmp eq i64 %indvars.iv.next214.i777, %wide.trip.count216.i773
  br i1 %exitcond217.not.i778, label %.loopexit175.i687, label %.lr.ph181.i775, !llvm.loop !640

.loopexit175.i687:                                ; preds = %.lr.ph181.i775, %middle.block1509, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i771, %._crit_edge.i686
  %.0141.i688 = phi ptr [ null, %._crit_edge.i686 ], [ %i.azm, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i771 ], [ %i.azm, %middle.block1509 ], [ %i.azm, %.lr.ph181.i775 ] ; 10 uses
  %i.azv = icmp sgt i32 %i.ayn, 0
  br i1 %i.azv, label %.lr.ph196.i730, label %.preheader.i689

.lr.ph196.i730:                                   ; preds = %.loopexit175.i687
  %i.azw = zext nneg i32 %.sroa.speculated1052 to i64 ; 3 uses
  %i.azx = mul i64 %i.ayp, %i.azw                 ; 2 uses
  %i.azy = getelementptr i8, ptr %i.ayo, i64 %i.azx ; 3 uses
  %i.azz = shl nsw i32 %.sroa.speculated1042, 3
  %i.baa = zext nneg i32 %i.azz to i64            ; 2 uses
  %i.bab = shl nsw i32 %i.aym, 3
  %i.bac = sext i32 %i.bab to i64                 ; 2 uses
  %i.bad = sext i32 %i.ayq to i64                 ; 10 uses
  %wide.trip.count232.i752 = zext nneg i32 %.sroa.speculated1042 to i64 ; 9 uses
  %wide.trip.count237.i753 = zext nneg i32 %.sroa.speculated to i64
  br i1 %i.bd, label %.preheader171.us.i754.preheader, label %.preheader174.preheader.i731

.preheader171.us.i754.preheader:                  ; preds = %.lr.ph196.i730
  %i.bae = shl nsw i64 %i.bad, 3                  ; 2 uses
  %i.baf = getelementptr i8, ptr %i.ayo, i64 %i.azx
  %scevgep1461 = getelementptr i8, ptr %i.baf, i64 %i.bae
  %i.bag = add nsw i32 %i.ayn, -1
  %i.bah = zext i32 %i.bag to i64
  %i.bai = add nuw nsw i64 %i.azw, %i.bah
  %i.baj = mul i64 %i.ayp, %i.bai
  %i.bak = add i32 %i.dc, %i.er
  %i.bal = add i32 %i.bak, %.sroa.speculated1061
  %i.bam = add i32 %i.bal, %i.eh
  %i.ban = sub i32 %i.bam, %i.fc
  %smax1462 = call i32 @llvm.smax.i32(i32 %i.ban, i32 0)
  %i.bao = zext nneg i32 %smax1462 to i64
  %i.bap = shl nuw nsw i64 %i.bao, 3
  %i.baq = getelementptr i8, ptr %i.ayo, i64 %i.baj
  %i.bar = getelementptr i8, ptr %i.baq, i64 %i.bae
  %scevgep1463 = getelementptr i8, ptr %i.bar, i64 %i.bap
  %scevgep1464 = getelementptr i8, ptr %i.gt, i64 8
  %i.bas = add nsw i32 %i.ayn, -1
  %i.bat = zext i32 %i.bas to i64
  %i.bau = add nuw nsw i64 %i.azw, %i.bat
  %i.bav = mul i64 %i.ayp, %i.bau
  %i.baw = shl nuw nsw i64 %wide.trip.count232.i752, 3
  %i.bax = getelementptr i8, ptr %i.ayo, i64 %i.bav
  %scevgep1482 = getelementptr i8, ptr %i.bax, i64 %i.baw
  %scevgep1483 = getelementptr i8, ptr %i.gt, i64 8
  %min.iters.check1489 = icmp slt i32 %.neg214, 4
  %bound01484 = icmp ult ptr %i.azy, %scevgep1483
  %bound11485 = icmp ult ptr %i.gt, %scevgep1482
  %found.conflict1486 = and i1 %bound01484, %bound11485
end_hunk_10
begin_hunk_11_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  call void @llvm.assume(i1 %lcmp.mod1636)
  br label %.lr.ph198.split.us.i724.epil

.lr.ph198.split.us.i724.epil:                     ; preds = %.lr.ph198.split.us.i724.epil, %.lr.ph198.split.us.i724.epil.preheader
  %indvars.iv245.i725.epil = phi i64 [ %indvars.iv.next246.i726.epil, %.lr.ph198.split.us.i724.epil ], [ %indvars.iv245.i725.epil.init, %.lr.ph198.split.us.i724.epil.preheader ] ; 2 uses
  %epil.iter1634 = phi i64 [ %epil.iter1634.next, %.lr.ph198.split.us.i724.epil ], [ 0, %.lr.ph198.split.us.i724.epil.preheader ]
  %i.bgm = mul i64 %indvars.iv245.i725.epil, %i.ayp
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bgm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bgn, ptr align 1 %.0141.i688, i64 %i.bdp, i1 false)
  %indvars.iv.next246.i726.epil = add nuw nsw i64 %indvars.iv245.i725.epil, 1
  %epil.iter1634.next = add i64 %epil.iter1634, 1 ; 2 uses
  %epil.iter1634.cmp.not = icmp eq i64 %epil.iter1634.next, %xtraiter1633
  br i1 %epil.iter1634.cmp.not, label %._crit_edge199.thread.i728, label %.lr.ph198.split.us.i724.epil, !llvm.loop !662

._crit_edge199.thread.i728:                       ; preds = %.lr.ph198.split.us.i724.epil, %._crit_edge199.thread.i728.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i729, label %._crit_edge203.i691

.lr.ph202.thread.i729:                            ; preds = %._crit_edge199.thread.i728
  %i.bgo = add nsw i32 %i.ayn, %.neg
  %i.bgp = sext i32 %i.bgo to i64
  %i.bgq = mul i64 %i.ayp, %i.bgp
  br label %.lr.ph202.split.us.preheader.i712

.lr.ph202.i697:                                   ; preds = %._crit_edge199.i690
  %i.bgr = shl nsw i32 %i.ayr, 3
  %i.bgs = sext i32 %i.bgr to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i712, label %.lr.ph202.split.preheader.i698

.lr.ph202.split.preheader.i698:                   ; preds = %.lr.ph202.i697
  %wide.trip.count253.i699 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i700

.lr.ph202.split.us.preheader.i712:                ; preds = %.lr.ph202.i697, %.lr.ph202.thread.i729
  %i.bgt = phi i64 [ %i.bdp, %.lr.ph202.thread.i729 ], [ %i.bgs, %.lr.ph202.i697 ] ; 5 uses
  %i.bgu = phi i64 [ %i.bgq, %.lr.ph202.thread.i729 ], [ %i.bgk, %.lr.ph202.i697 ]
  %wide.trip.count258.i713 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bgu ; 5 uses
  %xtraiter1639 = and i64 %wide.trip.count258.i713, 3 ; 3 uses
  %i.bgw = add i32 %i.ez, -1
  %i.bgx = icmp ult i32 %i.bgw, 3
  br i1 %i.bgx, label %.lr.ph202.split.us.i714.epil.preheader, label %.lr.ph202.split.us.preheader.i712.new

.lr.ph202.split.us.preheader.i712.new:            ; preds = %.lr.ph202.split.us.preheader.i712
  %unroll_iter1643 = and i64 %wide.trip.count258.i713, 2147483644
  br label %.lr.ph202.split.us.i714

.lr.ph202.split.us.i714:                          ; preds = %.lr.ph202.split.us.i714, %.lr.ph202.split.us.preheader.i712.new
  %indvars.iv255.i715 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i712.new ], [ %indvars.iv.next256.i716.3, %.lr.ph202.split.us.i714 ] ; 5 uses
  %niter1644 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i712.new ], [ %niter1644.next.3, %.lr.ph202.split.us.i714 ]
  %i.bgy = mul i64 %indvars.iv255.i715, %i.ayp
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgv, i64 %i.bgy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bgz, ptr align 1 %.0141.i688, i64 %i.bgt, i1 false)
  %indvars.iv.next256.i716 = or disjoint i64 %indvars.iv255.i715, 1
  %i.bha = mul i64 %indvars.iv.next256.i716, %i.ayp
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgv, i64 %i.bha
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhb, ptr align 1 %.0141.i688, i64 %i.bgt, i1 false)
  %indvars.iv.next256.i716.1 = or disjoint i64 %indvars.iv255.i715, 2
  %i.bhc = mul i64 %indvars.iv.next256.i716.1, %i.ayp
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgv, i64 %i.bhc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhd, ptr align 1 %.0141.i688, i64 %i.bgt, i1 false)
  %indvars.iv.next256.i716.2 = or disjoint i64 %indvars.iv255.i715, 3
  %i.bhe = mul i64 %indvars.iv.next256.i716.2, %i.ayp
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgv, i64 %i.bhe
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhf, ptr align 1 %.0141.i688, i64 %i.bgt, i1 false)
  %indvars.iv.next256.i716.3 = add nuw nsw i64 %indvars.iv255.i715, 4 ; 2 uses
  %niter1644.next.3 = add i64 %niter1644, 4       ; 2 uses
  %niter1644.ncmp.3 = icmp eq i64 %niter1644.next.3, %unroll_iter1643
  br i1 %niter1644.ncmp.3, label %._crit_edge203.i691.loopexit.unr-lcssa, label %.lr.ph202.split.us.i714, !llvm.loop !663

.lr.ph198.split.i720:                             ; preds = %.lr.ph198.i718, %bb.dt
  %indvars.iv240.i721 = phi i64 [ %indvars.iv.next241.i722, %bb.dt ], [ 0, %.lr.ph198.i718 ] ; 3 uses
  %i.bhg = trunc i64 %indvars.iv240.i721 to i32
  %i.bhh = sub i32 %i.bhg, %.sroa.speculated1052
  %i.bhi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bhh, i32 noundef %i.ayn, i32 noundef %i.p)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %.lr.ph198.split.i720
  %i.bhj = mul i64 %indvars.iv240.i721, %i.ayp
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bhj
  %i.bhl = add nsw i32 %i.bhi, %.sroa.speculated1052
  %i.bhm = sext i32 %i.bhl to i64
  %i.bhn = mul i64 %i.ayp, %i.bhm
  %i.bho = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bhn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhk, ptr align 1 %i.bho, i64 %i.bdp, i1 false)
  %indvars.iv.next241.i722 = add nuw nsw i64 %indvars.iv240.i721, 1 ; 2 uses
  %exitcond244.not.i723 = icmp eq i64 %indvars.iv.next241.i722, %wide.trip.count248.i719
  br i1 %exitcond244.not.i723, label %._crit_edge199.i690, label %.lr.ph198.split.i720, !llvm.loop !658

bb.du:                                            ; preds = %.lr.ph198.split.i720
  %i.bhp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

._crit_edge203.i691.loopexit.unr-lcssa:           ; preds = %.lr.ph202.split.us.i714
  %lcmp.mod1641.not = icmp eq i64 %xtraiter1639, 0
  br i1 %lcmp.mod1641.not, label %._crit_edge203.i691, label %.lr.ph202.split.us.i714.epil.preheader

.lr.ph202.split.us.i714.epil.preheader:           ; preds = %._crit_edge203.i691.loopexit.unr-lcssa, %.lr.ph202.split.us.preheader.i712
  %indvars.iv255.i715.epil.init = phi i64 [ 0, %.lr.ph202.split.us.preheader.i712 ], [ %indvars.iv.next256.i716.3, %._crit_edge203.i691.loopexit.unr-lcssa ]
  %lcmp.mod1642 = icmp ne i64 %xtraiter1639, 0
  call void @llvm.assume(i1 %lcmp.mod1642)
  br label %.lr.ph202.split.us.i714.epil

.lr.ph202.split.us.i714.epil:                     ; preds = %.lr.ph202.split.us.i714.epil, %.lr.ph202.split.us.i714.epil.preheader
  %indvars.iv255.i715.epil = phi i64 [ %indvars.iv255.i715.epil.init, %.lr.ph202.split.us.i714.epil.preheader ], [ %indvars.iv.next256.i716.epil, %.lr.ph202.split.us.i714.epil ] ; 2 uses
  %epil.iter1640 = phi i64 [ 0, %.lr.ph202.split.us.i714.epil.preheader ], [ %epil.iter1640.next, %.lr.ph202.split.us.i714.epil ]
  %i.bhq = mul i64 %indvars.iv255.i715.epil, %i.ayp
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bgv, i64 %i.bhq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bhr, ptr align 1 %.0141.i688, i64 %i.bgt, i1 false)
  %indvars.iv.next256.i716.epil = add nuw nsw i64 %indvars.iv255.i715.epil, 1
  %epil.iter1640.next = add i64 %epil.iter1640, 1 ; 2 uses
  %epil.iter1640.cmp.not = icmp eq i64 %epil.iter1640.next, %xtraiter1639
  br i1 %epil.iter1640.cmp.not, label %._crit_edge203.i691, label %.lr.ph202.split.us.i714.epil, !llvm.loop !664

._crit_edge203.i691:                              ; preds = %bb.dx, %._crit_edge203.i691.loopexit.unr-lcssa, %.lr.ph202.split.us.i714.epil, %._crit_edge199.thread.i728, %._crit_edge199.i690
  %i.bhs = load ptr, ptr %7, align 8, !tbaa !536  ; 3 uses
  %.not.i.i159.i692 = icmp eq ptr %i.bhs, %i.bk
  %i.bht = icmp eq ptr %i.bhs, null
  %or.cond.i.i693 = or i1 %.not.i.i159.i692, %i.bht
  br i1 %or.cond.i.i693, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i694, label %bb.dv

bb.dv:                                            ; preds = %._crit_edge203.i691
  call void @_ZdaPv(ptr noundef nonnull %i.bhs) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i694

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i694:       ; preds = %bb.dv, %._crit_edge203.i691
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bhu = load ptr, ptr %6, align 8, !tbaa !532  ; 3 uses
  %.not.i.i161.i695 = icmp eq ptr %i.bhu, %i.bi
  %i.bhv = icmp eq ptr %i.bhu, null
  %or.cond.i162.i696 = or i1 %.not.i.i161.i695, %i.bhv
  br i1 %or.cond.i162.i696, label %_ZN2cv12cpu_baselineL14fillTileBorderILi8EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.dw

bb.dw:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i694
  call void @_ZdaPv(ptr noundef nonnull %i.bhu) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi8EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i700:                             ; preds = %bb.dx, %.lr.ph202.split.preheader.i698
  %indvars.iv250.i701 = phi i64 [ 0, %.lr.ph202.split.preheader.i698 ], [ %indvars.iv.next251.i710, %bb.dx ] ; 3 uses
  %i.bhw = trunc i64 %indvars.iv250.i701 to i32
  %i.bhx = add i32 %i.ayn, %i.bhw
  %i.bhy = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bhx, i32 noundef %i.ayn, i32 noundef %i.p)
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %.lr.ph202.split.i700
  %i.bhz = mul i64 %indvars.iv250.i701, %i.ayp
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bgl, i64 %i.bhz
  %i.bib = add nsw i32 %i.bhy, %.sroa.speculated1052
  %i.bic = sext i32 %i.bib to i64
  %i.bid = mul i64 %i.ayp, %i.bic
  %i.bie = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bid
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bia, ptr align 1 %i.bie, i64 %i.bgs, i1 false)
  %indvars.iv.next251.i710 = add nuw nsw i64 %indvars.iv250.i701, 1 ; 2 uses
  %exitcond254.not.i711 = icmp eq i64 %indvars.iv.next251.i710, %wide.trip.count253.i699
  br i1 %exitcond254.not.i711, label %._crit_edge203.i691, label %.lr.ph202.split.i700, !llvm.loop !663

bb.dy:                                            ; preds = %.lr.ph202.split.i700
  %i.bif = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.du, %bb.ds
  %.pn.pn.i702 = phi { ptr, i32 } [ %i.azs, %bb.ds ], [ %i.bhp, %bb.du ], [ %i.bif, %bb.dy ]
  %i.big = load ptr, ptr %7, align 8, !tbaa !536  ; 3 uses
  %.not.i.i163.i703 = icmp eq ptr %i.big, %i.bk
  %i.bih = icmp eq ptr %i.big, null
  %or.cond.i164.i704 = or i1 %.not.i.i163.i703, %i.bih
  br i1 %or.cond.i164.i704, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i705, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @_ZdaPv(ptr noundef nonnull %i.big) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i705

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i705:    ; preds = %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i705, %bb.dp, %bb.dn
  %.pn156.i706 = phi { ptr, i32 } [ %i.azd, %bb.dn ], [ %i.azi, %bb.dp ], [ %.pn.pn.i702, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i705 ]
  %i.bii = load ptr, ptr %6, align 8, !tbaa !532  ; 3 uses
  %.not.i.i167.i707 = icmp eq ptr %i.bii, %i.bi
  %i.bij = icmp eq ptr %i.bii, null
  %or.cond.i168.i708 = or i1 %.not.i.i167.i707, %i.bij
  br i1 %or.cond.i168.i708, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i709, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_ZdaPv(ptr noundef nonnull %i.bii) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i709

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i709:     ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi8EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i694, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.gd

bb.ed:                                            ; preds = %bb.n
  %i.bik = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.bil = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.bim = load i32, ptr %i.av, align 4, !tbaa !148 ; 5 uses
  %i.bin = load i32, ptr %i.aw, align 8, !tbaa !156 ; 8 uses
  %i.bio = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 11 uses
  %i.bip = load i64, ptr %i.ay, align 8, !tbaa !107 ; 19 uses
  %i.biq = add i32 %i.bim, %.sroa.speculated1042  ; 2 uses
  %i.bir = add i32 %i.biq, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bis = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1042 ; 2 uses
  %i.bit = zext nneg i32 %i.bis to i64            ; 2 uses
  store ptr %i.be, ptr %4, align 8, !tbaa !532
  %.not.i.i.i797 = icmp samesign ugt i32 %i.bis, 264
  store i64 %i.bit, ptr %i.bf, align 8, !tbaa !534
  br i1 %.not.i.i.i797, label %bb.ee, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i798

bb.ee:                                            ; preds = %bb.ed
  %i.biu = shl nuw nsw i64 %i.bit, 2
  %i.biv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.biu) #29
          to label %.noexc907 unwind label %bb.al ; 2 uses

.noexc907:                                        ; preds = %bb.ee
  store ptr %i.biv, ptr %4, align 8, !tbaa !532
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i798

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i798:        ; preds = %.noexc907, %bb.ed
  %i.biw = phi ptr [ %i.be, %bb.ed ], [ %i.biv, %.noexc907 ] ; 6 uses
  br i1 %i.fb, label %.lr.ph.preheader.i901, label %.preheader176.i799

.lr.ph.preheader.i901:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i798
  %wide.trip.count.i902 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i903

.preheader176.i799:                               ; preds = %bb.ef, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i798
  br i1 %i.fg, label %.lr.ph179.preheader.i893, label %._crit_edge.i800

.lr.ph179.preheader.i893:                         ; preds = %.preheader176.i799
  %i.bix = zext nneg i32 %.sroa.speculated1042 to i64
  %wide.trip.count211.i894 = zext nneg i32 %i.ff to i64
  %invariant.gep.i895 = getelementptr [4 x i8], ptr %i.biw, i64 %i.bix
  br label %.lr.ph179.i896

.lr.ph.i903:                                      ; preds = %bb.ef, %.lr.ph.preheader.i901
  %indvars.iv.i904 = phi i64 [ 0, %.lr.ph.preheader.i901 ], [ %indvars.iv.next.i905, %bb.ef ] ; 3 uses
  %i.biy = trunc i64 %indvars.iv.i904 to i32
  %i.biz = sub i32 %i.biy, %.sroa.speculated1042
  %i.bja = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.biz, i32 noundef %i.bim, i32 noundef %i.p)
          to label %bb.ef unwind label %bb.eg

bb.ef:                                            ; preds = %.lr.ph.i903
  %i.bjb = mul nsw i32 %i.bja, 12
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %indvars.iv.i904
  store i32 %i.bjb, ptr %i.bjc, align 4, !tbaa !14
  %indvars.iv.next.i905 = add nuw nsw i64 %indvars.iv.i904, 1 ; 2 uses
  %exitcond.not.i906 = icmp eq i64 %indvars.iv.next.i905, %wide.trip.count.i902
  br i1 %exitcond.not.i906, label %.preheader176.i799, label %.lr.ph.i903, !llvm.loop !665

bb.eg:                                            ; preds = %.lr.ph.i903
  %i.bjd = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

._crit_edge.i800:                                 ; preds = %bb.eh, %.preheader176.i799
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.bg, ptr %5, align 8, !tbaa !536
  store i64 1032, ptr %i.bh, align 8, !tbaa !538
  %or.cond.i883 = or i1 %i.ev, %i.fa
  %or.cond1076 = select i1 %i.bd, i1 %or.cond.i883, i1 false
  br i1 %or.cond1076, label %bb.ej, label %.loopexit175.i801

.lr.ph179.i896:                                   ; preds = %bb.eh, %.lr.ph179.preheader.i893
  %indvars.iv208.i897 = phi i64 [ 0, %.lr.ph179.preheader.i893 ], [ %indvars.iv.next209.i899, %bb.eh ] ; 3 uses
  %i.bje = trunc i64 %indvars.iv208.i897 to i32
  %i.bjf = add i32 %i.bim, %i.bje
  %i.bjg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bjf, i32 noundef %i.bim, i32 noundef %i.p)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %.lr.ph179.i896
  %i.bjh = mul nsw i32 %i.bjg, 12
  %gep.i898 = getelementptr [4 x i8], ptr %invariant.gep.i895, i64 %indvars.iv208.i897
  store i32 %i.bjh, ptr %gep.i898, align 4, !tbaa !14
  %indvars.iv.next209.i899 = add nuw nsw i64 %indvars.iv208.i897, 1 ; 2 uses
  %exitcond212.not.i900 = icmp eq i64 %indvars.iv.next209.i899, %wide.trip.count211.i894
  br i1 %exitcond212.not.i900, label %._crit_edge.i800, label %.lr.ph179.i896, !llvm.loop !666

bb.ei:                                            ; preds = %.lr.ph179.i896
  %i.bji = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ej:                                            ; preds = %._crit_edge.i800
  %i.bjj = mul nsw i32 %i.bir, 12                 ; 2 uses
  %i.bjk = sext i32 %i.bjj to i64                 ; 2 uses
  %.not.i.i884 = icmp ugt i32 %i.bjj, 1032
  store i64 %i.bjk, ptr %i.bh, align 8, !tbaa !538
  br i1 %.not.i.i884, label %bb.ek, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i885

bb.ek:                                            ; preds = %bb.ej
  %i.bjl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bjk) #29
          to label %.noexc.i892 unwind label %bb.el ; 2 uses

.noexc.i892:                                      ; preds = %bb.ek
  store ptr %i.bjl, ptr %5, align 8, !tbaa !536
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i885

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i885: ; preds = %.noexc.i892, %bb.ej
  %i.bjm = phi ptr [ %i.bjl, %.noexc.i892 ], [ %i.bg, %bb.ej ] ; 8 uses
  %i.bjn = icmp sgt i32 %i.bir, 0
  br i1 %i.bjn, label %.lr.ph181.preheader.i886, label %.loopexit175.i801

.lr.ph181.preheader.i886:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i885
  %wide.trip.count216.i887 = zext nneg i32 %i.bir to i64 ; 2 uses
  %xtraiter1571 = and i64 %wide.trip.count216.i887, 3 ; 3 uses
  %i.bjo = icmp ult i32 %i.bir, 4
  br i1 %i.bjo, label %.lr.ph181.i888.epil.preheader, label %.lr.ph181.preheader.i886.new

.lr.ph181.preheader.i886.new:                     ; preds = %.lr.ph181.preheader.i886
  %unroll_iter1575 = and i64 %wide.trip.count216.i887, 2147483644
  br label %.lr.ph181.i888

bb.el:                                            ; preds = %bb.ek
  %i.bjp = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.lr.ph181.i888:                                   ; preds = %.lr.ph181.i888, %.lr.ph181.preheader.i886.new
  %indvars.iv213.i889 = phi i64 [ 0, %.lr.ph181.preheader.i886.new ], [ %indvars.iv.next214.i890.3, %.lr.ph181.i888 ] ; 5 uses
  %niter1576 = phi i64 [ 0, %.lr.ph181.preheader.i886.new ], [ %niter1576.next.3, %.lr.ph181.i888 ]
  %i.bjq = mul nuw nsw i64 %indvars.iv213.i889, 12
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.bjq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bjr, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %i.bjs = mul nuw i64 %indvars.iv213.i889, 12
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.bjs
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bju, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %i.bjv = mul nuw i64 %indvars.iv213.i889, 12
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.bjv
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bjx, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %i.bjy = mul nuw i64 %indvars.iv213.i889, 12
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.bjy
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bka, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %indvars.iv.next214.i890.3 = add nuw nsw i64 %indvars.iv213.i889, 4 ; 2 uses
  %niter1576.next.3 = add i64 %niter1576, 4       ; 2 uses
  %niter1576.ncmp.3 = icmp eq i64 %niter1576.next.3, %unroll_iter1575
  br i1 %niter1576.ncmp.3, label %.loopexit175.i801.loopexit.unr-lcssa, label %.lr.ph181.i888, !llvm.loop !667

.loopexit175.i801.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i888
  %lcmp.mod1573.not = icmp eq i64 %xtraiter1571, 0
  br i1 %lcmp.mod1573.not, label %.loopexit175.i801, label %.lr.ph181.i888.epil.preheader

.lr.ph181.i888.epil.preheader:                    ; preds = %.loopexit175.i801.loopexit.unr-lcssa, %.lr.ph181.preheader.i886
  %indvars.iv213.i889.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i886 ], [ %indvars.iv.next214.i890.3, %.loopexit175.i801.loopexit.unr-lcssa ]
  %lcmp.mod1574 = icmp ne i64 %xtraiter1571, 0
  call void @llvm.assume(i1 %lcmp.mod1574)
  br label %.lr.ph181.i888.epil

.lr.ph181.i888.epil:                              ; preds = %.lr.ph181.i888.epil, %.lr.ph181.i888.epil.preheader
  %indvars.iv213.i889.epil = phi i64 [ %indvars.iv213.i889.epil.init, %.lr.ph181.i888.epil.preheader ], [ %indvars.iv.next214.i890.epil, %.lr.ph181.i888.epil ] ; 2 uses
  %epil.iter1572 = phi i64 [ 0, %.lr.ph181.i888.epil.preheader ], [ %epil.iter1572.next, %.lr.ph181.i888.epil ]
  %i.bkb = mul nuw nsw i64 %indvars.iv213.i889.epil, 12
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.bkb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bkc, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.gt, i64 12, i1 false)
  %indvars.iv.next214.i890.epil = add nuw nsw i64 %indvars.iv213.i889.epil, 1
  %epil.iter1572.next = add i64 %epil.iter1572, 1 ; 2 uses
  %epil.iter1572.cmp.not = icmp eq i64 %epil.iter1572.next, %xtraiter1571
  br i1 %epil.iter1572.cmp.not, label %.loopexit175.i801, label %.lr.ph181.i888.epil, !llvm.loop !668

.loopexit175.i801:                                ; preds = %.loopexit175.i801.loopexit.unr-lcssa, %.lr.ph181.i888.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i885, %._crit_edge.i800
  %.0141.i802 = phi ptr [ null, %._crit_edge.i800 ], [ %i.bjm, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i885 ], [ %i.bjm, %.lr.ph181.i888.epil ], [ %i.bjm, %.loopexit175.i801.loopexit.unr-lcssa ] ; 10 uses
  %i.bkd = icmp sgt i32 %i.bin, 0
  br i1 %i.bkd, label %.lr.ph196.i844, label %.preheader.i803

.lr.ph196.i844:                                   ; preds = %.loopexit175.i801
  %i.bke = zext nneg i32 %.sroa.speculated1052 to i64
  %i.bkf = mul i64 %i.bip, %i.bke
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bkf ; 2 uses
  %i.bkh = mul nuw nsw i32 %.sroa.speculated1042, 12
  %i.bki = zext nneg i32 %i.bkh to i64            ; 2 uses
  %i.bkj = mul nsw i32 %i.bim, 12
  %i.bkk = sext i32 %i.bkj to i64                 ; 2 uses
  %i.bkl = sext i32 %i.biq to i64                 ; 6 uses
  %wide.trip.count232.i866 = zext nneg i32 %.sroa.speculated1042 to i64 ; 5 uses
  br i1 %i.bd, label %.preheader171.us.i868.preheader, label %.preheader174.preheader.i845

.preheader171.us.i868.preheader:                  ; preds = %.lr.ph196.i844
  %i.bkm = add i32 %i.dk, %i.er
  %i.bkn = add i32 %i.bkm, %.sroa.speculated1061
  %i.bko = add i32 %i.bkn, %i.eh
  %i.bkp = sub i32 %i.bko, %i.fc                  ; 2 uses
  %smax1596 = call i32 @llvm.smax.i32(i32 %i.bkp, i32 0) ; 2 uses
  %i.bkq = zext nneg i32 %smax1596 to i64         ; 2 uses
  %xtraiter1590 = and i64 %wide.trip.count232.i866, 3 ; 3 uses
  %i.bkr = icmp slt i32 %.neg214, 4
  %unroll_iter1594 = and i64 %wide.trip.count232.i866, 2147483644
  %lcmp.mod1592.not = icmp eq i64 %xtraiter1590, 0
  %lcmp.mod1593 = icmp ne i64 %xtraiter1590, 0
  %xtraiter1597 = and i64 %i.bkq, 1
  %i.bks = icmp eq i32 %i.bkp, 1
  %unroll_iter1601 = and i64 %i.bkq, 2147483646
  %lcmp.mod1599.not = icmp eq i64 %xtraiter1597, 0
  %lcmp.mod1600 = trunc i32 %smax1596 to i1
  br label %.preheader171.us.i868
end_hunk_11
begin_hunk_12_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  call void @llvm.assume(i1 %lcmp.mod1606)
  br label %.lr.ph198.split.us.i838.epil

.lr.ph198.split.us.i838.epil:                     ; preds = %.lr.ph198.split.us.i838.epil, %.lr.ph198.split.us.i838.epil.preheader
  %indvars.iv245.i839.epil = phi i64 [ %indvars.iv.next246.i840.epil, %.lr.ph198.split.us.i838.epil ], [ %indvars.iv245.i839.epil.init, %.lr.ph198.split.us.i838.epil.preheader ] ; 2 uses
  %epil.iter1604 = phi i64 [ %epil.iter1604.next, %.lr.ph198.split.us.i838.epil ], [ 0, %.lr.ph198.split.us.i838.epil.preheader ]
  %i.boe = mul i64 %indvars.iv245.i839.epil, %i.bip
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.boe
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bof, ptr align 1 %.0141.i802, i64 %i.bmb, i1 false)
  %indvars.iv.next246.i840.epil = add nuw nsw i64 %indvars.iv245.i839.epil, 1
  %epil.iter1604.next = add i64 %epil.iter1604, 1 ; 2 uses
  %epil.iter1604.cmp.not = icmp eq i64 %epil.iter1604.next, %xtraiter1603
  br i1 %epil.iter1604.cmp.not, label %._crit_edge199.thread.i842, label %.lr.ph198.split.us.i838.epil, !llvm.loop !676

._crit_edge199.thread.i842:                       ; preds = %.lr.ph198.split.us.i838.epil, %._crit_edge199.thread.i842.unr-lcssa
  br i1 %i.fa, label %.lr.ph202.thread.i843, label %._crit_edge203.i805

.lr.ph202.thread.i843:                            ; preds = %._crit_edge199.thread.i842
  %i.bog = add nsw i32 %i.bin, %.neg
  %i.boh = sext i32 %i.bog to i64
  %i.boi = mul i64 %i.bip, %i.boh
  br label %.lr.ph202.split.us.preheader.i826

.lr.ph202.i811:                                   ; preds = %._crit_edge199.i804
  %i.boj = mul nsw i32 %i.bir, 12
  %i.bok = sext i32 %i.boj to i64                 ; 2 uses
  br i1 %i.bd, label %.lr.ph202.split.us.preheader.i826, label %.lr.ph202.split.preheader.i812

.lr.ph202.split.preheader.i812:                   ; preds = %.lr.ph202.i811
  %wide.trip.count253.i813 = zext nneg i32 %i.ez to i64
  br label %.lr.ph202.split.i814

.lr.ph202.split.us.preheader.i826:                ; preds = %.lr.ph202.i811, %.lr.ph202.thread.i843
  %i.bol = phi i64 [ %i.bmb, %.lr.ph202.thread.i843 ], [ %i.bok, %.lr.ph202.i811 ] ; 5 uses
  %i.bom = phi i64 [ %i.boi, %.lr.ph202.thread.i843 ], [ %i.boc, %.lr.ph202.i811 ]
  %wide.trip.count258.i827 = zext nneg i32 %i.ez to i64 ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bom ; 5 uses
  %xtraiter1609 = and i64 %wide.trip.count258.i827, 3 ; 3 uses
  %i.boo = add i32 %i.ez, -1
  %i.bop = icmp ult i32 %i.boo, 3
  br i1 %i.bop, label %.lr.ph202.split.us.i828.epil.preheader, label %.lr.ph202.split.us.preheader.i826.new

.lr.ph202.split.us.preheader.i826.new:            ; preds = %.lr.ph202.split.us.preheader.i826
  %unroll_iter1613 = and i64 %wide.trip.count258.i827, 2147483644
  br label %.lr.ph202.split.us.i828

.lr.ph202.split.us.i828:                          ; preds = %.lr.ph202.split.us.i828, %.lr.ph202.split.us.preheader.i826.new
  %indvars.iv255.i829 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i826.new ], [ %indvars.iv.next256.i830.3, %.lr.ph202.split.us.i828 ] ; 5 uses
  %niter1614 = phi i64 [ 0, %.lr.ph202.split.us.preheader.i826.new ], [ %niter1614.next.3, %.lr.ph202.split.us.i828 ]
  %i.boq = mul i64 %indvars.iv255.i829, %i.bip
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.boq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bor, ptr align 1 %.0141.i802, i64 %i.bol, i1 false)
  %indvars.iv.next256.i830 = or disjoint i64 %indvars.iv255.i829, 1
  %i.bos = mul i64 %indvars.iv.next256.i830, %i.bip
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bos
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bot, ptr align 1 %.0141.i802, i64 %i.bol, i1 false)
  %indvars.iv.next256.i830.1 = or disjoint i64 %indvars.iv255.i829, 2
  %i.bou = mul i64 %indvars.iv.next256.i830.1, %i.bip
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bou
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bov, ptr align 1 %.0141.i802, i64 %i.bol, i1 false)
  %indvars.iv.next256.i830.2 = or disjoint i64 %indvars.iv255.i829, 3
  %i.bow = mul i64 %indvars.iv.next256.i830.2, %i.bip
  %i.box = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bow
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.box, ptr align 1 %.0141.i802, i64 %i.bol, i1 false)
  %indvars.iv.next256.i830.3 = add nuw nsw i64 %indvars.iv255.i829, 4 ; 2 uses
  %niter1614.next.3 = add i64 %niter1614, 4       ; 2 uses
  %niter1614.ncmp.3 = icmp eq i64 %niter1614.next.3, %unroll_iter1613
  br i1 %niter1614.ncmp.3, label %._crit_edge203.i805.loopexit.unr-lcssa, label %.lr.ph202.split.us.i828, !llvm.loop !677

.lr.ph198.split.i834:                             ; preds = %.lr.ph198.i832, %bb.em
  %indvars.iv240.i835 = phi i64 [ %indvars.iv.next241.i836, %bb.em ], [ 0, %.lr.ph198.i832 ] ; 3 uses
  %i.boy = trunc i64 %indvars.iv240.i835 to i32
  %i.boz = sub i32 %i.boy, %.sroa.speculated1052
  %i.bpa = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.boz, i32 noundef %i.bin, i32 noundef %i.p)
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %.lr.ph198.split.i834
  %i.bpb = mul i64 %indvars.iv240.i835, %i.bip
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bpb
  %i.bpd = add nsw i32 %i.bpa, %.sroa.speculated1052
  %i.bpe = sext i32 %i.bpd to i64
  %i.bpf = mul i64 %i.bip, %i.bpe
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bpf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bpc, ptr align 1 %i.bpg, i64 %i.bmb, i1 false)
  %indvars.iv.next241.i836 = add nuw nsw i64 %indvars.iv240.i835, 1 ; 2 uses
  %exitcond244.not.i837 = icmp eq i64 %indvars.iv.next241.i836, %wide.trip.count248.i833
  br i1 %exitcond244.not.i837, label %._crit_edge199.i804, label %.lr.ph198.split.i834, !llvm.loop !673

bb.en:                                            ; preds = %.lr.ph198.split.i834
  %i.bph = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

._crit_edge203.i805.loopexit.unr-lcssa:           ; preds = %.lr.ph202.split.us.i828
  %lcmp.mod1611.not = icmp eq i64 %xtraiter1609, 0
  br i1 %lcmp.mod1611.not, label %._crit_edge203.i805, label %.lr.ph202.split.us.i828.epil.preheader

.lr.ph202.split.us.i828.epil.preheader:           ; preds = %._crit_edge203.i805.loopexit.unr-lcssa, %.lr.ph202.split.us.preheader.i826
  %indvars.iv255.i829.epil.init = phi i64 [ 0, %.lr.ph202.split.us.preheader.i826 ], [ %indvars.iv.next256.i830.3, %._crit_edge203.i805.loopexit.unr-lcssa ]
  %lcmp.mod1612 = icmp ne i64 %xtraiter1609, 0
  call void @llvm.assume(i1 %lcmp.mod1612)
  br label %.lr.ph202.split.us.i828.epil

.lr.ph202.split.us.i828.epil:                     ; preds = %.lr.ph202.split.us.i828.epil, %.lr.ph202.split.us.i828.epil.preheader
  %indvars.iv255.i829.epil = phi i64 [ %indvars.iv255.i829.epil.init, %.lr.ph202.split.us.i828.epil.preheader ], [ %indvars.iv.next256.i830.epil, %.lr.ph202.split.us.i828.epil ] ; 2 uses
  %epil.iter1610 = phi i64 [ 0, %.lr.ph202.split.us.i828.epil.preheader ], [ %epil.iter1610.next, %.lr.ph202.split.us.i828.epil ]
  %i.bpi = mul i64 %indvars.iv255.i829.epil, %i.bip
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bpi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bpj, ptr align 1 %.0141.i802, i64 %i.bol, i1 false)
  %indvars.iv.next256.i830.epil = add nuw nsw i64 %indvars.iv255.i829.epil, 1
  %epil.iter1610.next = add i64 %epil.iter1610, 1 ; 2 uses
  %epil.iter1610.cmp.not = icmp eq i64 %epil.iter1610.next, %xtraiter1609
  br i1 %epil.iter1610.cmp.not, label %._crit_edge203.i805, label %.lr.ph202.split.us.i828.epil, !llvm.loop !678

._crit_edge203.i805:                              ; preds = %bb.eq, %._crit_edge203.i805.loopexit.unr-lcssa, %.lr.ph202.split.us.i828.epil, %._crit_edge199.thread.i842, %._crit_edge199.i804
  %i.bpk = load ptr, ptr %5, align 8, !tbaa !536  ; 3 uses
  %.not.i.i159.i806 = icmp eq ptr %i.bpk, %i.bg
  %i.bpl = icmp eq ptr %i.bpk, null
  %or.cond.i.i807 = or i1 %.not.i.i159.i806, %i.bpl
  br i1 %or.cond.i.i807, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i808, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge203.i805
  call void @_ZdaPv(ptr noundef nonnull %i.bpk) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i808

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i808:       ; preds = %bb.eo, %._crit_edge203.i805
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bpm = load ptr, ptr %4, align 8, !tbaa !532  ; 3 uses
  %.not.i.i161.i809 = icmp eq ptr %i.bpm, %i.be
  %i.bpn = icmp eq ptr %i.bpm, null
  %or.cond.i162.i810 = or i1 %.not.i.i161.i809, %i.bpn
  br i1 %or.cond.i162.i810, label %_ZN2cv12cpu_baselineL14fillTileBorderILi12EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.ep

bb.ep:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i808
  call void @_ZdaPv(ptr noundef nonnull %i.bpm) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi12EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i814:                             ; preds = %bb.eq, %.lr.ph202.split.preheader.i812
  %indvars.iv250.i815 = phi i64 [ 0, %.lr.ph202.split.preheader.i812 ], [ %indvars.iv.next251.i824, %bb.eq ] ; 3 uses
  %i.bpo = trunc i64 %indvars.iv250.i815 to i32
  %i.bpp = add i32 %i.bin, %i.bpo
  %i.bpq = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bpp, i32 noundef %i.bin, i32 noundef %i.p)
          to label %bb.eq unwind label %bb.er

bb.eq:                                            ; preds = %.lr.ph202.split.i814
  %i.bpr = mul i64 %indvars.iv250.i815, %i.bip
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bod, i64 %i.bpr
  %i.bpt = add nsw i32 %i.bpq, %.sroa.speculated1052
  %i.bpu = sext i32 %i.bpt to i64
  %i.bpv = mul i64 %i.bip, %i.bpu
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.bpv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bps, ptr align 1 %i.bpw, i64 %i.bok, i1 false)
  %indvars.iv.next251.i824 = add nuw nsw i64 %indvars.iv250.i815, 1 ; 2 uses
  %exitcond254.not.i825 = icmp eq i64 %indvars.iv.next251.i824, %wide.trip.count253.i813
  br i1 %exitcond254.not.i825, label %._crit_edge203.i805, label %.lr.ph202.split.i814, !llvm.loop !677

bb.er:                                            ; preds = %.lr.ph202.split.i814
  %i.bpx = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.en, %bb.el
  %.pn.pn.i816 = phi { ptr, i32 } [ %i.bjp, %bb.el ], [ %i.bph, %bb.en ], [ %i.bpx, %bb.er ]
  %i.bpy = load ptr, ptr %5, align 8, !tbaa !536  ; 3 uses
  %.not.i.i163.i817 = icmp eq ptr %i.bpy, %i.bg
  %i.bpz = icmp eq ptr %i.bpy, null
  %or.cond.i164.i818 = or i1 %.not.i.i163.i817, %i.bpz
  br i1 %or.cond.i164.i818, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i819, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @_ZdaPv(ptr noundef nonnull %i.bpy) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i819

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i819:    ; preds = %bb.et, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.eu

bb.eu:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i819, %bb.ei, %bb.eg
  %.pn156.i820 = phi { ptr, i32 } [ %i.bjd, %bb.eg ], [ %i.bji, %bb.ei ], [ %.pn.pn.i816, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i819 ]
  %i.bqa = load ptr, ptr %4, align 8, !tbaa !532  ; 3 uses
  %.not.i.i167.i821 = icmp eq ptr %i.bqa, %i.be
  %i.bqb = icmp eq ptr %i.bqa, null
  %or.cond.i168.i822 = or i1 %.not.i.i167.i821, %i.bqb
  br i1 %or.cond.i168.i822, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i823, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @_ZdaPv(ptr noundef nonnull %i.bqa) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i823

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i823:     ; preds = %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi12EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i808, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.gd

bb.ew:                                            ; preds = %bb.n
  %i.bqc = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.bqd = load i64, ptr %i.au, align 8, !tbaa !107 ; 2 uses
  %i.bqe = load i32, ptr %i.av, align 4, !tbaa !148 ; 5 uses
  %i.bqf = load i32, ptr %i.aw, align 8, !tbaa !156 ; 8 uses
  %i.bqg = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 11 uses
  %i.bqh = load i64, ptr %i.ay, align 8, !tbaa !107 ; 19 uses
  %i.bqi = add i32 %i.bqe, %.sroa.speculated1042  ; 2 uses
  %i.bqj = add i32 %i.bqi, %.sroa.speculated      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bqk = add nuw nsw i32 %.sroa.speculated, %.sroa.speculated1042 ; 2 uses
  %i.bql = zext nneg i32 %i.bqk to i64            ; 2 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !532
  %.not.i.i.i910 = icmp samesign ugt i32 %i.bqk, 264
  store i64 %i.bql, ptr %i.ba, align 8, !tbaa !534
  br i1 %.not.i.i.i910, label %bb.ex, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i911

bb.ex:                                            ; preds = %bb.ew
  %i.bqm = shl nuw nsw i64 %i.bql, 2
  %i.bqn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bqm) #29
          to label %.noexc1020 unwind label %bb.al ; 2 uses

.noexc1020:                                       ; preds = %bb.ex
  store ptr %i.bqn, ptr %2, align 8, !tbaa !532
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i911

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i911:        ; preds = %.noexc1020, %bb.ew
  %i.bqo = phi ptr [ %i.az, %bb.ew ], [ %i.bqn, %.noexc1020 ] ; 6 uses
  br i1 %i.fb, label %.lr.ph.preheader.i1014, label %.preheader176.i912

.lr.ph.preheader.i1014:                           ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i911
  %wide.trip.count.i1015 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i1016

.preheader176.i912:                               ; preds = %bb.ey, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i911
  br i1 %i.fg, label %.lr.ph179.preheader.i1006, label %._crit_edge.i913

.lr.ph179.preheader.i1006:                        ; preds = %.preheader176.i912
  %i.bqp = zext nneg i32 %.sroa.speculated1042 to i64
  %wide.trip.count211.i1007 = zext nneg i32 %i.ff to i64
  %invariant.gep.i1008 = getelementptr [4 x i8], ptr %i.bqo, i64 %i.bqp
  br label %.lr.ph179.i1009

.lr.ph.i1016:                                     ; preds = %bb.ey, %.lr.ph.preheader.i1014
  %indvars.iv.i1017 = phi i64 [ 0, %.lr.ph.preheader.i1014 ], [ %indvars.iv.next.i1018, %bb.ey ] ; 3 uses
  %i.bqq = trunc i64 %indvars.iv.i1017 to i32
  %i.bqr = sub i32 %i.bqq, %.sroa.speculated1042
  %i.bqs = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bqr, i32 noundef %i.bqe, i32 noundef %i.p)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %.lr.ph.i1016
  %i.bqt = shl nsw i32 %i.bqs, 4
  %i.bqu = getelementptr inbounds nuw [4 x i8], ptr %i.bqo, i64 %indvars.iv.i1017
  store i32 %i.bqt, ptr %i.bqu, align 4, !tbaa !14
  %indvars.iv.next.i1018 = add nuw nsw i64 %indvars.iv.i1017, 1 ; 2 uses
  %exitcond.not.i1019 = icmp eq i64 %indvars.iv.next.i1018, %wide.trip.count.i1015
  br i1 %exitcond.not.i1019, label %.preheader176.i912, label %.lr.ph.i1016, !llvm.loop !679

bb.ez:                                            ; preds = %.lr.ph.i1016
  %i.bqv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

._crit_edge.i913:                                 ; preds = %bb.fa, %.preheader176.i912
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.bb, ptr %3, align 8, !tbaa !536
  store i64 1032, ptr %i.bc, align 8, !tbaa !538
  %or.cond.i996 = or i1 %i.ev, %i.fa
  %or.cond1077 = select i1 %i.bd, i1 %or.cond.i996, i1 false
  br i1 %or.cond1077, label %bb.fc, label %.loopexit175.i914

.lr.ph179.i1009:                                  ; preds = %bb.fa, %.lr.ph179.preheader.i1006
  %indvars.iv208.i1010 = phi i64 [ 0, %.lr.ph179.preheader.i1006 ], [ %indvars.iv.next209.i1012, %bb.fa ] ; 3 uses
  %i.bqw = trunc i64 %indvars.iv208.i1010 to i32
  %i.bqx = add i32 %i.bqe, %i.bqw
  %i.bqy = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bqx, i32 noundef %i.bqe, i32 noundef %i.p)
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %.lr.ph179.i1009
  %i.bqz = shl nsw i32 %i.bqy, 4
  %gep.i1011 = getelementptr [4 x i8], ptr %invariant.gep.i1008, i64 %indvars.iv208.i1010
  store i32 %i.bqz, ptr %gep.i1011, align 4, !tbaa !14
  %indvars.iv.next209.i1012 = add nuw nsw i64 %indvars.iv208.i1010, 1 ; 2 uses
  %exitcond212.not.i1013 = icmp eq i64 %indvars.iv.next209.i1012, %wide.trip.count211.i1007
  br i1 %exitcond212.not.i1013, label %._crit_edge.i913, label %.lr.ph179.i1009, !llvm.loop !680

bb.fb:                                            ; preds = %.lr.ph179.i1009
  %i.bra = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fc:                                            ; preds = %._crit_edge.i913
  %i.brb = shl nsw i32 %i.bqj, 4                  ; 2 uses
  %i.brc = sext i32 %i.brb to i64                 ; 2 uses
  %.not.i.i997 = icmp ugt i32 %i.brb, 1032
  store i64 %i.brc, ptr %i.bc, align 8, !tbaa !538
  br i1 %.not.i.i997, label %bb.fd, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i998

bb.fd:                                            ; preds = %bb.fc
  %i.brd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.brc) #29
          to label %.noexc.i1005 unwind label %bb.fe ; 2 uses

.noexc.i1005:                                     ; preds = %bb.fd
  store ptr %i.brd, ptr %3, align 8, !tbaa !536
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i998

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i998: ; preds = %.noexc.i1005, %bb.fc
  %i.bre = phi ptr [ %i.brd, %.noexc.i1005 ], [ %i.bb, %bb.fc ] ; 8 uses
  %i.brf = icmp sgt i32 %i.bqj, 0
  br i1 %i.brf, label %.lr.ph181.preheader.i999, label %.loopexit175.i914

.lr.ph181.preheader.i999:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i998
  %wide.trip.count216.i1000 = zext nneg i32 %i.bqj to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count216.i1000, 3 ; 3 uses
  %i.brg = icmp ult i32 %i.bqj, 4
  br i1 %i.brg, label %.lr.ph181.i1001.epil.preheader, label %.lr.ph181.preheader.i999.new

.lr.ph181.preheader.i999.new:                     ; preds = %.lr.ph181.preheader.i999
  %unroll_iter = and i64 %wide.trip.count216.i1000, 2147483644
  br label %.lr.ph181.i1001

bb.fe:                                            ; preds = %bb.fd
  %i.brh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

.lr.ph181.i1001:                                  ; preds = %.lr.ph181.i1001, %.lr.ph181.preheader.i999.new
  %indvars.iv213.i1002 = phi i64 [ 0, %.lr.ph181.preheader.i999.new ], [ %indvars.iv.next214.i1003.3, %.lr.ph181.i1001 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph181.preheader.i999.new ], [ %niter.next.3, %.lr.ph181.i1001 ]
  %i.bri = shl nuw nsw i64 %indvars.iv213.i1002, 4
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bre, i64 %i.bri
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.brj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.gt, i64 16, i1 false)
  %indvars.iv.next214.i1003 = shl i64 %indvars.iv213.i1002, 4
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bre, i64 %indvars.iv.next214.i1003
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.brl, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.gt, i64 16, i1 false)
  %indvars.iv.next214.i1003.1 = shl i64 %indvars.iv213.i1002, 4
  %i.brm = getelementptr inbounds nuw i8, ptr %i.bre, i64 %indvars.iv.next214.i1003.1
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.brn, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.gt, i64 16, i1 false)
  %indvars.iv.next214.i1003.2 = shl i64 %indvars.iv213.i1002, 4
  %i.bro = getelementptr inbounds nuw i8, ptr %i.bre, i64 %indvars.iv.next214.i1003.2
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.brp, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.gt, i64 16, i1 false)
  %indvars.iv.next214.i1003.3 = add nuw nsw i64 %indvars.iv213.i1002, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit175.i914.loopexit.unr-lcssa, label %.lr.ph181.i1001, !llvm.loop !681

.loopexit175.i914.loopexit.unr-lcssa:             ; preds = %.lr.ph181.i1001
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit175.i914, label %.lr.ph181.i1001.epil.preheader

.lr.ph181.i1001.epil.preheader:                   ; preds = %.loopexit175.i914.loopexit.unr-lcssa, %.lr.ph181.preheader.i999
  %indvars.iv213.i1002.epil.init = phi i64 [ 0, %.lr.ph181.preheader.i999 ], [ %indvars.iv.next214.i1003.3, %.loopexit175.i914.loopexit.unr-lcssa ]
  %lcmp.mod1532 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1532)
  br label %.lr.ph181.i1001.epil

.lr.ph181.i1001.epil:                             ; preds = %.lr.ph181.i1001.epil, %.lr.ph181.i1001.epil.preheader
  %indvars.iv213.i1002.epil = phi i64 [ %indvars.iv213.i1002.epil.init, %.lr.ph181.i1001.epil.preheader ], [ %indvars.iv.next214.i1003.epil, %.lr.ph181.i1001.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph181.i1001.epil.preheader ], [ %epil.iter.next, %.lr.ph181.i1001.epil ]
  %i.brq = shl nuw nsw i64 %indvars.iv213.i1002.epil, 4
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bre, i64 %i.brq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.brr, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.gt, i64 16, i1 false)
  %indvars.iv.next214.i1003.epil = add nuw nsw i64 %indvars.iv213.i1002.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit175.i914, label %.lr.ph181.i1001.epil, !llvm.loop !682

.loopexit175.i914:                                ; preds = %.loopexit175.i914.loopexit.unr-lcssa, %.lr.ph181.i1001.epil, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i998, %._crit_edge.i913
  %.0141.i915 = phi ptr [ null, %._crit_edge.i913 ], [ %i.bre, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i998 ], [ %i.bre, %.lr.ph181.i1001.epil ], [ %i.bre, %.loopexit175.i914.loopexit.unr-lcssa ] ; 10 uses
  %i.brs = icmp sgt i32 %i.bqf, 0
  br i1 %i.brs, label %.lr.ph196.i957, label %.preheader.i916

.lr.ph196.i957:                                   ; preds = %.loopexit175.i914
  %i.brt = zext nneg i32 %.sroa.speculated1052 to i64
  %i.bru = mul i64 %i.bqh, %i.brt
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bqg, i64 %i.bru ; 2 uses
  %i.brw = shl nsw i32 %.sroa.speculated1042, 4
  %i.brx = zext nneg i32 %i.brw to i64            ; 2 uses
  %i.bry = shl nsw i32 %i.bqe, 4
  %i.brz = sext i32 %i.bry to i64                 ; 2 uses
  %i.bsa = sext i32 %i.bqi to i64                 ; 6 uses
  %wide.trip.count232.i979 = zext nneg i32 %.sroa.speculated1042 to i64 ; 5 uses
  br i1 %i.bd, label %.preheader171.us.i981.preheader, label %.preheader174.preheader.i958

.preheader171.us.i981.preheader:                  ; preds = %.lr.ph196.i957
  %i.bsb = add i32 %i.dg, %i.er
  %i.bsc = add i32 %i.bsb, %.sroa.speculated1061
  %i.bsd = add i32 %i.bsc, %i.eh
  %i.bse = sub i32 %i.bsd, %i.fc                  ; 2 uses
  %smax1552 = call i32 @llvm.smax.i32(i32 %i.bse, i32 0) ; 2 uses
  %i.bsf = zext nneg i32 %smax1552 to i64         ; 2 uses
  %xtraiter1546 = and i64 %wide.trip.count232.i979, 3 ; 3 uses
  %i.bsg = icmp slt i32 %.neg214, 4
  %unroll_iter1550 = and i64 %wide.trip.count232.i979, 2147483644
  %lcmp.mod1548.not = icmp eq i64 %xtraiter1546, 0
  %lcmp.mod1549 = icmp ne i64 %xtraiter1546, 0
  %xtraiter1553 = and i64 %i.bsf, 1
  %i.bsh = icmp eq i32 %i.bse, 1
  %unroll_iter1557 = and i64 %i.bsf, 2147483646
  %lcmp.mod1555.not = icmp eq i64 %xtraiter1553, 0
  %lcmp.mod1556 = trunc i32 %smax1552 to i1
  br label %.preheader171.us.i981
end_hunk_12
begin_hunk_13_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %epil.iter1566 = phi i64 [ 0, %.lr.ph202.split.us.i941.epil.preheader ], [ %epil.iter1566.next, %.lr.ph202.split.us.i941.epil ]
  %i.bwt = mul i64 %indvars.iv255.i942.epil, %i.bqh
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bvy, i64 %i.bwt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bwu, ptr align 1 %.0141.i915, i64 %i.bvw, i1 false)
  %indvars.iv.next256.i943.epil = add nuw nsw i64 %indvars.iv255.i942.epil, 1
  %epil.iter1566.next = add i64 %epil.iter1566, 1 ; 2 uses
  %epil.iter1566.cmp.not = icmp eq i64 %epil.iter1566.next, %xtraiter1565
  br i1 %epil.iter1566.cmp.not, label %._crit_edge203.i918, label %.lr.ph202.split.us.i941.epil, !llvm.loop !692

._crit_edge203.i918:                              ; preds = %bb.fj, %._crit_edge203.i918.loopexit.unr-lcssa, %.lr.ph202.split.us.i941.epil, %._crit_edge199.thread.i955, %._crit_edge199.i917
  %i.bwv = load ptr, ptr %3, align 8, !tbaa !536  ; 3 uses
  %.not.i.i159.i919 = icmp eq ptr %i.bwv, %i.bb
  %i.bww = icmp eq ptr %i.bwv, null
  %or.cond.i.i920 = or i1 %.not.i.i159.i919, %i.bww
  br i1 %or.cond.i.i920, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i921, label %bb.fh

bb.fh:                                            ; preds = %._crit_edge203.i918
  call void @_ZdaPv(ptr noundef nonnull %i.bwv) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i921

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i921:       ; preds = %bb.fh, %._crit_edge203.i918
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bwx = load ptr, ptr %2, align 8, !tbaa !532  ; 3 uses
  %.not.i.i161.i922 = icmp eq ptr %i.bwx, %i.az
  %i.bwy = icmp eq ptr %i.bwx, null
  %or.cond.i162.i923 = or i1 %.not.i.i161.i922, %i.bwy
  br i1 %or.cond.i162.i923, label %_ZN2cv12cpu_baselineL14fillTileBorderILi16EEEvPKhmiiPhmiiiiiS3_.exit, label %bb.fi

bb.fi:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i921
  call void @_ZdaPv(ptr noundef nonnull %i.bwx) #27
  br label %_ZN2cv12cpu_baselineL14fillTileBorderILi16EEEvPKhmiiPhmiiiiiS3_.exit

.lr.ph202.split.i927:                             ; preds = %bb.fj, %.lr.ph202.split.preheader.i925
  %indvars.iv250.i928 = phi i64 [ 0, %.lr.ph202.split.preheader.i925 ], [ %indvars.iv.next251.i937, %bb.fj ] ; 3 uses
  %i.bwz = trunc i64 %indvars.iv250.i928 to i32
  %i.bxa = add i32 %i.bqf, %i.bwz
  %i.bxb = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bxa, i32 noundef %i.bqf, i32 noundef %i.p)
          to label %bb.fj unwind label %bb.fk

bb.fj:                                            ; preds = %.lr.ph202.split.i927
  %i.bxc = mul i64 %indvars.iv250.i928, %i.bqh
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bvo, i64 %i.bxc
  %i.bxe = add nsw i32 %i.bxb, %.sroa.speculated1052
  %i.bxf = sext i32 %i.bxe to i64
  %i.bxg = mul i64 %i.bqh, %i.bxf
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bqg, i64 %i.bxg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bxd, ptr align 1 %i.bxh, i64 %i.bvv, i1 false)
  %indvars.iv.next251.i937 = add nuw nsw i64 %indvars.iv250.i928, 1 ; 2 uses
  %exitcond254.not.i938 = icmp eq i64 %indvars.iv.next251.i937, %wide.trip.count253.i926
  br i1 %exitcond254.not.i938, label %._crit_edge203.i918, label %.lr.ph202.split.i927, !llvm.loop !691

bb.fk:                                            ; preds = %.lr.ph202.split.i927
  %i.bxi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fg, %bb.fe
  %.pn.pn.i929 = phi { ptr, i32 } [ %i.brh, %bb.fe ], [ %i.bws, %bb.fg ], [ %i.bxi, %bb.fk ]
  %i.bxj = load ptr, ptr %3, align 8, !tbaa !536  ; 3 uses
  %.not.i.i163.i930 = icmp eq ptr %i.bxj, %i.bb
  %i.bxk = icmp eq ptr %i.bxj, null
  %or.cond.i164.i931 = or i1 %.not.i.i163.i930, %i.bxk
  br i1 %or.cond.i164.i931, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i932, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @_ZdaPv(ptr noundef nonnull %i.bxj) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i932

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i932:    ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i932, %bb.fb, %bb.ez
  %.pn156.i933 = phi { ptr, i32 } [ %i.bqv, %bb.ez ], [ %i.bra, %bb.fb ], [ %.pn.pn.i929, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit166.i932 ]
  %i.bxl = load ptr, ptr %2, align 8, !tbaa !532  ; 3 uses
  %.not.i.i167.i934 = icmp eq ptr %i.bxl, %i.az
  %i.bxm = icmp eq ptr %i.bxl, null
  %or.cond.i168.i935 = or i1 %.not.i.i167.i934, %i.bxm
  br i1 %or.cond.i168.i935, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i936, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @_ZdaPv(ptr noundef nonnull %i.bxl) #27
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i936

_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i936:     ; preds = %bb.fo, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

_ZN2cv12cpu_baselineL14fillTileBorderILi16EEEvPKhmiiPhmiiiiiS3_.exit: ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit.i921, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.gd

bb.fp:                                            ; preds = %bb.n
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.gf, i64 168
  %i.bxo = load ptr, ptr %i.bxn, align 8, !tbaa !55
  %i.bxp = icmp eq ptr %i.gt, %i.bxo
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 32, i1 false)
  br i1 %i.bxp, label %.loopexit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bxq = load i32, ptr %i.gg, align 8, !tbaa !22
  %i.bxr = and i32 %i.bxq, 31
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.ga
  %indvars.iv = phi i64 [ 0, %bb.fq ], [ %indvars.iv.next, %bb.ga ] ; 10 uses
  switch i32 %i.bxr, label %bb.fz [
    i32 0, label %bb.fs
    i32 1, label %bb.ft
    i32 2, label %bb.fu
    i32 3, label %bb.fv
    i32 4, label %bb.fw
    i32 5, label %bb.fx
    i32 6, label %bb.fy
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !21
  %i.bxu = uitofp i8 %i.bxt to double
  br label %bb.ga

bb.ft:                                            ; preds = %bb.fr
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv
  %i.bxw = load i8, ptr %i.bxv, align 1, !tbaa !21
  %i.bxx = sitofp i8 %i.bxw to double
  br label %bb.ga

bb.fu:                                            ; preds = %bb.fr
  %i.bxy = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %indvars.iv
  %i.bxz = load i16, ptr %i.bxy, align 2, !tbaa !693
  %i.bya = uitofp i16 %i.bxz to double
  br label %bb.ga

bb.fv:                                            ; preds = %bb.fr
  %i.byb = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %indvars.iv
  %i.byc = load i16, ptr %i.byb, align 2, !tbaa !693
  %i.byd = sitofp i16 %i.byc to double
  br label %bb.ga

bb.fw:                                            ; preds = %bb.fr
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv
  %i.byf = load i32, ptr %i.bye, align 4, !tbaa !14
  %i.byg = sitofp i32 %i.byf to double
  br label %bb.ga

bb.fx:                                            ; preds = %bb.fr
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv
  %i.byi = load float, ptr %i.byh, align 4, !tbaa !477
  %i.byj = fpext float %i.byi to double
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fr
  %i.byk = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv
  %i.byl = load double, ptr %i.byk, align 8, !tbaa !228
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fr
  %i.bym = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv
  %i.byn = load i8, ptr %i.bym, align 1, !tbaa !21
  %i.byo = uitofp i8 %i.byn to double
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fw, %bb.fx, %bb.fy, %bb.fz
  %.sink = phi double [ %i.bxu, %bb.fs ], [ %i.bxx, %bb.ft ], [ %i.bya, %bb.fu ], [ %i.byd, %bb.fv ], [ %i.byg, %bb.fw ], [ %i.byj, %bb.fx ], [ %i.byl, %bb.fy ], [ %i.byo, %bb.fz ]
  %i.byp = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %indvars.iv
  store double %.sink, ptr %i.byp, align 8, !tbaa !228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1195.not = icmp eq i64 %indvars.iv.next, %wide.trip.count1194
  br i1 %exitcond1195.not, label %.loopexit, label %bb.fr, !llvm.loop !695

.loopexit:                                        ; preds = %bb.ga, %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store i32 0, ptr %i.cg, align 8, !tbaa !11
  store i32 0, ptr %i.ch, align 4, !tbaa !13
  store i32 16842752, ptr %27, align 8, !tbaa !354
  store ptr %20, ptr %i.ci, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  store i64 0, ptr %i.ck, align 8
  store i32 33619968, ptr %28, align 8, !tbaa !354
  store ptr %23, ptr %i.cj, align 8, !tbaa !356
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, i32 noundef %.sroa.speculated1052, i32 noundef %.sroa.speculated1047, i32 noundef %.sroa.speculated1042, i32 noundef %.sroa.speculated, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.gd

bb.gc:                                            ; preds = %.loopexit
  %i.byq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %.body

bb.gd:                                            ; preds = %_ZN2cv12cpu_baselineL14fillTileBorderILi16EEEvPKhmiiPhmiiiiiS3_.exit, %_ZN2cv12cpu_baselineL14fillTileBorderILi12EEEvPKhmiiPhmiiiiiS3_.exit, %_ZN2cv12cpu_baselineL14fillTileBorderILi8EEEvPKhmiiPhmiiiiiS3_.exit, %_ZN2cv12cpu_baselineL14fillTileBorderILi6EEEvPKhmiiPhmiiiiiS3_.exit, %_ZN2cv12cpu_baselineL14fillTileBorderILi4EEEvPKhmiiPhmiiiiiS3_.exit, %_ZN2cv12cpu_baselineL14fillTileBorderILi3EEEvPKhmiiPhmiiiiiS3_.exit, %_ZN2cv12cpu_baselineL14fillTileBorderILi2EEEvPKhmiiPhmiiiiiS3_.exit, %_ZN2cv12cpu_baselineL14fillTileBorderILi1EEEvPKhmiiPhmiiiiiS3_.exit, %bb.gb, %bb.e
  %i.byr = load ptr, ptr %i.af, align 8, !tbaa !145, !nonnull !146, !align !147 ; 3 uses
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byr, i64 24
  %i.byt = load ptr, ptr %i.bys, align 8, !tbaa !122
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byr, i64 128
  %i.byv = load i64, ptr %i.byu, align 8, !tbaa !107
  %i.byw = sext i32 %i.ei to i64
  %i.byx = mul i64 %i.byv, %i.byw
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byt, i64 %i.byx
  %i.byz = sext i32 %i.eh to i64
  %i.bza = load i32, ptr %i.byr, align 8, !tbaa !131 ; 2 uses
  %i.bzb = lshr i32 %i.bza, 5
  %i.bzc = and i32 %i.bzb, 127
  %i.bzd = add nuw nsw i32 %i.bzc, 1
  %i.bze = shl i32 %i.bza, 2
  %i.bzf = and i32 %i.bze, 124
  %i.bzg = zext nneg i32 %i.bzf to i64
  %i.bzh = lshr i64 1275511473185297, %i.bzg
  %i.bzi = trunc i64 %i.bzh to i32
  %i.bzj = and i32 %i.bzi, 15
  %i.bzk = mul nuw nsw i32 %i.bzj, %i.bzd
  %i.bzl = zext nneg i32 %i.bzk to i64
  %i.bzm = mul nsw i64 %i.bzl, %i.byz
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.byy, i64 %i.bzm ; 2 uses
  br i1 %.not.i, label %bb.ge, label %bb.gr

bb.ge:                                            ; preds = %bb.gd
  %i.bzo = load ptr, ptr %i.a, align 8, !tbaa !527, !nonnull !146, !align !147
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzo, i64 16
  %i.bzq = load i32, ptr %i.bzp, align 8, !tbaa !54 ; 2 uses
  %i.bzr = lshr i32 %i.bzq, 5
  %i.bzs = and i32 %i.bzr, 127
  %i.bzt = add nuw nsw i32 %i.bzs, 1
  %i.bzu = shl i32 %i.bzq, 2
  %i.bzv = and i32 %i.bzu, 124
  %i.bzw = zext nneg i32 %i.bzv to i64
  %i.bzx = lshr i64 1275511473185297, %i.bzw
  %i.bzy = trunc i64 %i.bzx to i32
  %i.bzz = and i32 %i.bzy, 15
  %i.caa = mul i32 %i.bzt, %.sroa.speculated1061
  %i.cab = mul i32 %i.caa, %i.bzz
  %i.cac = add i32 %i.cab, 63
  %i.cad = and i32 %i.cac, -64                    ; 4 uses
  %i.cae = load i32, ptr %i.co, align 8, !tbaa !696
  %i.caf = load i32, ptr %i.cp, align 8, !tbaa !156 ; 3 uses
  %i.cag = icmp slt i32 %i.cae, %i.caf
  br i1 %i.cag, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.cah = load i32, ptr %i.cq, align 4, !tbaa !697
  %i.cai = icmp slt i32 %i.cah, %i.cad
  br i1 %i.cai, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.cn, i32 noundef %i.caf, i32 noundef %i.cad, i32 noundef 0)
          to label %._crit_edge1212 unwind label %bb.gh

._crit_edge1212:                                  ; preds = %bb.gg
  %.pre1213 = load i32, ptr %i.cp, align 8, !tbaa !156
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.caj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gi:                                            ; preds = %._crit_edge1212, %bb.gf
  %i.cak = phi i32 [ %.pre1213, %._crit_edge1212 ], [ %i.caf, %bb.gf ]
  %i.cal = load ptr, ptr %i.cr, align 8, !tbaa !122 ; 6 uses
  %i.cam = icmp sgt i32 %i.cak, 0
  br i1 %i.cam, label %.lr.ph1167.preheader, label %._crit_edge1168

.lr.ph1167.preheader:                             ; preds = %bb.gi
  %i.can = sext i32 %i.cad to i64
  br label %.lr.ph1167

._crit_edge1168:                                  ; preds = %bb.gk, %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.cao = add nsw i32 %.sroa.speculated1057, %i.j ; 4 uses
  %i.cap = add nsw i32 %i.cao, -1                 ; 3 uses
  %i.caq = sext i32 %i.cap to i64                 ; 2 uses
  store ptr %i.cs, ptr %29, align 8, !tbaa !698
  %.not.i.i1023 = icmp ugt i32 %i.cap, 136
  store i64 %i.caq, ptr %i.ct, align 8, !tbaa !700
  br i1 %.not.i.i1023, label %bb.gj, label %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit

bb.gj:                                            ; preds = %._crit_edge1168
  %i.car = icmp slt i32 %i.cao, 1
  %i.cas = shl nuw nsw i64 %i.caq, 3
  %i.cat = select i1 %i.car, i64 -1, i64 %i.cas
  %i.cau = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cat) #29
          to label %.noexc1024 unwind label %bb.gm ; 2 uses

.noexc1024:                                       ; preds = %bb.gj
  store ptr %i.cau, ptr %29, align 8, !tbaa !698
  br label %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit

.lr.ph1167:                                       ; preds = %.lr.ph1167.preheader, %bb.gk
  %indvars.iv1201 = phi i64 [ 0, %.lr.ph1167.preheader ], [ %indvars.iv.next1202, %bb.gk ] ; 3 uses
  %i.cav = load ptr, ptr %i.a, align 8, !tbaa !527, !nonnull !146, !align !147
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 272
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !76 ; 2 uses
  %i.cay = load ptr, ptr %i.ax, align 8, !tbaa !122
  %i.caz = load i64, ptr %i.ay, align 8, !tbaa !107
  %i.cba = mul i64 %i.caz, %indvars.iv1201
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cay, i64 %i.cba
  %i.cbc = mul nsw i64 %indvars.iv1201, %i.can
  %i.cbd = getelementptr inbounds i8, ptr %i.cal, i64 %i.cbc
  %i.cbe = load ptr, ptr %i.cax, align 8, !tbaa !77
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cbe, i64 16
  %i.cbg = load ptr, ptr %i.cbf, align 8
  invoke void %i.cbg(ptr noundef nonnull align 8 dereferenceable(16) %i.cax, ptr noundef %i.cbb, ptr noundef %i.cbd, i32 noundef %.sroa.speculated1061, i32 noundef %i.u)
          to label %bb.gk unwind label %bb.gl

bb.gk:                                            ; preds = %.lr.ph1167
  %indvars.iv.next1202 = add nuw nsw i64 %indvars.iv1201, 1 ; 2 uses
  %i.cbh = load i32, ptr %i.cp, align 8, !tbaa !156
  %i.cbi = sext i32 %i.cbh to i64
  %i.cbj = icmp slt i64 %indvars.iv.next1202, %i.cbi
  br i1 %i.cbj, label %.lr.ph1167, label %._crit_edge1168, !llvm.loop !701

bb.gl:                                            ; preds = %.lr.ph1167
  %i.cbk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit:           ; preds = %.noexc1024, %._crit_edge1168
  %i.cbl = phi ptr [ %i.cau, %.noexc1024 ], [ %i.cs, %._crit_edge1168 ] ; 6 uses
  %i.cbm = icmp sgt i32 %i.cao, 1
  br i1 %i.cbm, label %.lr.ph1170.preheader, label %._crit_edge1171

.lr.ph1170.preheader:                             ; preds = %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit
  %i.cbn = sext i32 %i.cad to i64                 ; 5 uses
  %wide.trip.count1207 = zext nneg i32 %i.cap to i64 ; 2 uses
  %xtraiter1827 = and i64 %wide.trip.count1207, 3 ; 3 uses
  %i.cbo = add nsw i32 %i.cao, -2
  %i.cbp = icmp ult i32 %i.cbo, 3
  br i1 %i.cbp, label %.lr.ph1170.epil.preheader, label %.lr.ph1170.preheader.new

.lr.ph1170.preheader.new:                         ; preds = %.lr.ph1170.preheader
  %unroll_iter1831 = and i64 %wide.trip.count1207, 2147483644
  br label %.lr.ph1170

._crit_edge1171.loopexit.unr-lcssa:               ; preds = %.lr.ph1170
  %lcmp.mod1829.not = icmp eq i64 %xtraiter1827, 0
  br i1 %lcmp.mod1829.not, label %._crit_edge1171, label %.lr.ph1170.epil.preheader

.lr.ph1170.epil.preheader:                        ; preds = %._crit_edge1171.loopexit.unr-lcssa, %.lr.ph1170.preheader
  %indvars.iv1204.epil.init = phi i64 [ 0, %.lr.ph1170.preheader ], [ %indvars.iv.next1205.3, %._crit_edge1171.loopexit.unr-lcssa ]
  %lcmp.mod1830 = icmp ne i64 %xtraiter1827, 0
  call void @llvm.assume(i1 %lcmp.mod1830)
  br label %.lr.ph1170.epil

.lr.ph1170.epil:                                  ; preds = %.lr.ph1170.epil, %.lr.ph1170.epil.preheader
  %indvars.iv1204.epil = phi i64 [ %indvars.iv1204.epil.init, %.lr.ph1170.epil.preheader ], [ %indvars.iv.next1205.epil, %.lr.ph1170.epil ] ; 3 uses
  %epil.iter1828 = phi i64 [ 0, %.lr.ph1170.epil.preheader ], [ %epil.iter1828.next, %.lr.ph1170.epil ]
  %i.cbq = mul nsw i64 %indvars.iv1204.epil, %i.cbn
  %i.cbr = getelementptr inbounds i8, ptr %i.cal, i64 %i.cbq
  %i.cbs = getelementptr inbounds nuw [8 x i8], ptr %i.cbl, i64 %indvars.iv1204.epil
  store ptr %i.cbr, ptr %i.cbs, align 8, !tbaa !55
  %indvars.iv.next1205.epil = add nuw nsw i64 %indvars.iv1204.epil, 1
  %epil.iter1828.next = add i64 %epil.iter1828, 1 ; 2 uses
  %epil.iter1828.cmp.not = icmp eq i64 %epil.iter1828.next, %xtraiter1827
  br i1 %epil.iter1828.cmp.not, label %._crit_edge1171, label %.lr.ph1170.epil, !llvm.loop !702

._crit_edge1171:                                  ; preds = %._crit_edge1171.loopexit.unr-lcssa, %.lr.ph1170.epil, %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit
  %i.cbt = load ptr, ptr %i.a, align 8, !tbaa !527, !nonnull !146, !align !147
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbt, i64 288
  %i.cbv = load ptr, ptr %i.cbu, align 8, !tbaa !102 ; 2 uses
  %i.cbw = load ptr, ptr %i.af, align 8, !tbaa !145, !nonnull !146, !align !147
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 128
  %i.cby = load i64, ptr %i.cbx, align 8, !tbaa !107
  %i.cbz = trunc i64 %i.cby to i32
  %i.cca = mul nsw i32 %.sroa.speculated1061, %i.u
  %i.ccb = load ptr, ptr %i.cbv, align 8, !tbaa !77
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.ccb, i64 16
  %i.ccd = load ptr, ptr %i.ccc, align 8
  invoke void %i.ccd(ptr noundef nonnull align 8 dereferenceable(16) %i.cbv, ptr noundef nonnull %i.cbl, ptr noundef %i.bzn, i32 noundef %i.cbz, i32 noundef %.sroa.speculated1057, i32 noundef %i.cca)
          to label %bb.gp unwind label %bb.gn

bb.gm:                                            ; preds = %bb.gj
  %i.cce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit

bb.gn:                                            ; preds = %._crit_edge1171
  %i.ccf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ccg = load ptr, ptr %29, align 8, !tbaa !698 ; 3 uses
  %.not.i.i1025 = icmp eq ptr %i.ccg, %i.cs
  %i.cch = icmp eq ptr %i.ccg, null
  %or.cond.i1026 = or i1 %.not.i.i1025, %i.cch
  br i1 %or.cond.i1026, label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @_ZdaPv(ptr noundef nonnull %i.ccg) #27
  br label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit

.lr.ph1170:                                       ; preds = %.lr.ph1170, %.lr.ph1170.preheader.new
  %indvars.iv1204 = phi i64 [ 0, %.lr.ph1170.preheader.new ], [ %indvars.iv.next1205.3, %.lr.ph1170 ] ; 6 uses
  %niter1832 = phi i64 [ 0, %.lr.ph1170.preheader.new ], [ %niter1832.next.3, %.lr.ph1170 ]
  %i.cci = mul nsw i64 %indvars.iv1204, %i.cbn
  %i.ccj = getelementptr inbounds i8, ptr %i.cal, i64 %i.cci
  %i.cck = getelementptr inbounds nuw [8 x i8], ptr %i.cbl, i64 %indvars.iv1204
  store ptr %i.ccj, ptr %i.cck, align 8, !tbaa !55
  %indvars.iv.next1205 = or disjoint i64 %indvars.iv1204, 1 ; 2 uses
  %i.ccl = mul nsw i64 %indvars.iv.next1205, %i.cbn
  %i.ccm = getelementptr inbounds i8, ptr %i.cal, i64 %i.ccl
  %i.ccn = getelementptr inbounds nuw [8 x i8], ptr %i.cbl, i64 %indvars.iv.next1205
  store ptr %i.ccm, ptr %i.ccn, align 8, !tbaa !55
  %indvars.iv.next1205.1 = or disjoint i64 %indvars.iv1204, 2 ; 2 uses
  %i.cco = mul nsw i64 %indvars.iv.next1205.1, %i.cbn
  %i.ccp = getelementptr inbounds i8, ptr %i.cal, i64 %i.cco
  %i.ccq = getelementptr inbounds nuw [8 x i8], ptr %i.cbl, i64 %indvars.iv.next1205.1
  store ptr %i.ccp, ptr %i.ccq, align 8, !tbaa !55
  %indvars.iv.next1205.2 = or disjoint i64 %indvars.iv1204, 3 ; 2 uses
  %i.ccr = mul nsw i64 %indvars.iv.next1205.2, %i.cbn
  %i.ccs = getelementptr inbounds i8, ptr %i.cal, i64 %i.ccr
  %i.cct = getelementptr inbounds nuw [8 x i8], ptr %i.cbl, i64 %indvars.iv.next1205.2
  store ptr %i.ccs, ptr %i.cct, align 8, !tbaa !55
  %indvars.iv.next1205.3 = add nuw nsw i64 %indvars.iv1204, 4 ; 2 uses
  %niter1832.next.3 = add i64 %niter1832, 4       ; 2 uses
  %niter1832.ncmp.3 = icmp eq i64 %niter1832.next.3, %unroll_iter1831
  br i1 %niter1832.ncmp.3, label %._crit_edge1171.loopexit.unr-lcssa, label %.lr.ph1170, !llvm.loop !703

bb.gp:                                            ; preds = %._crit_edge1171
  %i.ccu = load ptr, ptr %29, align 8, !tbaa !698 ; 3 uses
  %.not.i.i1027 = icmp eq ptr %i.ccu, %i.cs
  %i.ccv = icmp eq ptr %i.ccu, null
  %or.cond.i1028 = or i1 %.not.i.i1027, %i.ccv
  br i1 %or.cond.i1028, label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1029, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @_ZdaPv(ptr noundef nonnull %i.ccu) #27
  br label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1029

_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1029:       ; preds = %bb.gp, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.ha

_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit:           ; preds = %bb.go, %bb.gn, %bb.gm
  %.pn225 = phi { ptr, i32 } [ %i.cce, %bb.gm ], [ %i.ccf, %bb.gn ], [ %i.ccf, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %.body

bb.gr:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.ccw = add nsw i32 %.sroa.speculated1057, %i.j ; 4 uses
  %i.ccx = add nsw i32 %i.ccw, -1                 ; 3 uses
  %i.ccy = sext i32 %i.ccx to i64                 ; 2 uses
  store ptr %i.cl, ptr %30, align 8, !tbaa !698
  %.not.i.i1030 = icmp ugt i32 %i.ccx, 136
  store i64 %i.ccy, ptr %i.cm, align 8, !tbaa !700
  br i1 %.not.i.i1030, label %bb.gs, label %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit1032

bb.gs:                                            ; preds = %bb.gr
  %i.ccz = icmp slt i32 %i.ccw, 1
  %i.cda = shl nuw nsw i64 %i.ccy, 3
  %i.cdb = select i1 %i.ccz, i64 -1, i64 %i.cda
  %i.cdc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cdb) #29
          to label %.noexc1031 unwind label %bb.gu ; 2 uses

.noexc1031:                                       ; preds = %bb.gs
  store ptr %i.cdc, ptr %30, align 8, !tbaa !698
  br label %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit1032

_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit1032:       ; preds = %.noexc1031, %bb.gr
  %i.cdd = phi ptr [ %i.cdc, %.noexc1031 ], [ %i.cl, %bb.gr ] ; 6 uses
  %i.cde = icmp sgt i32 %i.ccw, 1
  br i1 %i.cde, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit1032
  %i.cdf = load i64, ptr %i.ay, align 8, !tbaa !107 ; 5 uses
  %wide.trip.count1199 = zext nneg i32 %i.ccx to i64 ; 2 uses
  %.pre1211 = load ptr, ptr %i.ax, align 8, !tbaa !122 ; 5 uses
  %xtraiter1821 = and i64 %wide.trip.count1199, 3 ; 3 uses
  %i.cdg = add nsw i32 %i.ccw, -2
  %i.cdh = icmp ult i32 %i.cdg, 3
  br i1 %i.cdh, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter1825 = and i64 %wide.trip.count1199, 2147483644
  br label %bb.gx

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.gx
  %lcmp.mod1823.not = icmp eq i64 %xtraiter1821, 0
  br i1 %lcmp.mod1823.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv1196.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1197.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1824 = icmp ne i64 %xtraiter1821, 0
  call void @llvm.assume(i1 %lcmp.mod1824)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gt, %.epil.preheader
  %indvars.iv1196.epil = phi i64 [ %indvars.iv1196.epil.init, %.epil.preheader ], [ %indvars.iv.next1197.epil, %bb.gt ] ; 3 uses
  %epil.iter1822 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1822.next, %bb.gt ]
  %i.cdi = mul i64 %i.cdf, %indvars.iv1196.epil
  %i.cdj = getelementptr inbounds nuw i8, ptr %.pre1211, i64 %i.cdi
  %i.cdk = getelementptr inbounds nuw [8 x i8], ptr %i.cdd, i64 %indvars.iv1196.epil
  store ptr %i.cdj, ptr %i.cdk, align 8, !tbaa !55
  %indvars.iv.next1197.epil = add nuw nsw i64 %indvars.iv1196.epil, 1
  %epil.iter1822.next = add i64 %epil.iter1822, 1 ; 2 uses
  %epil.iter1822.cmp.not = icmp eq i64 %epil.iter1822.next, %xtraiter1821
  br i1 %epil.iter1822.cmp.not, label %._crit_edge, label %bb.gt, !llvm.loop !704

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.gt, %_ZN2cv10AutoBufferIPKhLm136EEC2Em.exit1032
  %i.cdl = load ptr, ptr %i.a, align 8, !tbaa !527, !nonnull !146, !align !147
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdl, i64 256
  %i.cdn = load ptr, ptr %i.cdm, align 8, !tbaa !65 ; 2 uses
  %i.cdo = load ptr, ptr %i.af, align 8, !tbaa !145, !nonnull !146, !align !147
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdo, i64 128
  %i.cdq = load i64, ptr %i.cdp, align 8, !tbaa !107
  %i.cdr = trunc i64 %i.cdq to i32
  %i.cds = load ptr, ptr %i.cdn, align 8, !tbaa !77
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cds, i64 16
  %i.cdu = load ptr, ptr %i.cdt, align 8
  invoke void %i.cdu(ptr noundef nonnull align 8 dereferenceable(24) %i.cdn, ptr noundef nonnull %i.cdd, ptr noundef %i.bzn, i32 noundef %i.cdr, i32 noundef %.sroa.speculated1057, i32 noundef %.sroa.speculated1061, i32 noundef %i.u)
          to label %bb.gy unwind label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.cdv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1035

bb.gv:                                            ; preds = %._crit_edge
  %i.cdw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cdx = load ptr, ptr %30, align 8, !tbaa !698 ; 3 uses
  %.not.i.i1033 = icmp eq ptr %i.cdx, %i.cl
  %i.cdy = icmp eq ptr %i.cdx, null
  %or.cond.i1034 = or i1 %.not.i.i1033, %i.cdy
  br i1 %or.cond.i1034, label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1035, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_ZdaPv(ptr noundef nonnull %i.cdx) #27
  br label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1035

bb.gx:                                            ; preds = %bb.gx, %.lr.ph.new
  %indvars.iv1196 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next1197.3, %bb.gx ] ; 6 uses
  %niter1826 = phi i64 [ 0, %.lr.ph.new ], [ %niter1826.next.3, %bb.gx ]
  %i.cdz = mul i64 %i.cdf, %indvars.iv1196
  %i.cea = getelementptr inbounds nuw i8, ptr %.pre1211, i64 %i.cdz
  %i.ceb = getelementptr inbounds nuw [8 x i8], ptr %i.cdd, i64 %indvars.iv1196
  store ptr %i.cea, ptr %i.ceb, align 8, !tbaa !55
  %indvars.iv.next1197 = or disjoint i64 %indvars.iv1196, 1 ; 2 uses
  %i.cec = mul i64 %i.cdf, %indvars.iv.next1197
  %i.ced = getelementptr inbounds nuw i8, ptr %.pre1211, i64 %i.cec
  %i.cee = getelementptr inbounds nuw [8 x i8], ptr %i.cdd, i64 %indvars.iv.next1197
  store ptr %i.ced, ptr %i.cee, align 8, !tbaa !55
  %indvars.iv.next1197.1 = or disjoint i64 %indvars.iv1196, 2 ; 2 uses
  %i.cef = mul i64 %i.cdf, %indvars.iv.next1197.1
  %i.ceg = getelementptr inbounds nuw i8, ptr %.pre1211, i64 %i.cef
  %i.ceh = getelementptr inbounds nuw [8 x i8], ptr %i.cdd, i64 %indvars.iv.next1197.1
  store ptr %i.ceg, ptr %i.ceh, align 8, !tbaa !55
  %indvars.iv.next1197.2 = or disjoint i64 %indvars.iv1196, 3 ; 2 uses
  %i.cei = mul i64 %i.cdf, %indvars.iv.next1197.2
  %i.cej = getelementptr inbounds nuw i8, ptr %.pre1211, i64 %i.cei
  %i.cek = getelementptr inbounds nuw [8 x i8], ptr %i.cdd, i64 %indvars.iv.next1197.2
  store ptr %i.cej, ptr %i.cek, align 8, !tbaa !55
  %indvars.iv.next1197.3 = add nuw nsw i64 %indvars.iv1196, 4 ; 2 uses
  %niter1826.next.3 = add i64 %niter1826, 4       ; 2 uses
  %niter1826.ncmp.3 = icmp eq i64 %niter1826.next.3, %unroll_iter1825
  br i1 %niter1826.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.gx, !llvm.loop !705

bb.gy:                                            ; preds = %._crit_edge
  %i.cel = load ptr, ptr %30, align 8, !tbaa !698 ; 3 uses
  %.not.i.i1036 = icmp eq ptr %i.cel, %i.cl
  %i.cem = icmp eq ptr %i.cel, null
  %or.cond.i1037 = or i1 %.not.i.i1036, %i.cem
  br i1 %or.cond.i1037, label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1038, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZdaPv(ptr noundef nonnull %i.cel) #27
  br label %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1038

_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1038:       ; preds = %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.ha

_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1035:       ; preds = %bb.gw, %bb.gv, %bb.gu
  %.pn223 = phi { ptr, i32 } [ %i.cdv, %bb.gu ], [ %i.cdw, %bb.gv ], [ %i.cdw, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %.body

bb.ha:                                            ; preds = %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1038, %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1029
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.cen = add nsw i32 %.01961172, 1              ; 2 uses
  %i.ceo = load i32, ptr %i.aa, align 4, !tbaa !152
  %i.cep = icmp slt i32 %i.cen, %i.ceo
  br i1 %i.cep, label %bb.b, label %._crit_edge1175, !llvm.loop !706

.body:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i369, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i596, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i823, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i936, %bb.al, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i709, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i482, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i263, %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1035, %bb.gl, %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit, %bb.gh, %bb.l, %bb.q, %bb.gc, %bb.g
  %.pn227.pn.pn.pn = phi { ptr, i32 } [ %.pn225, %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit ], [ %i.fp, %bb.g ], [ %i.gd, %bb.l ], [ %.pn, %bb.q ], [ %i.byq, %bb.gc ], [ %.pn223, %_ZN2cv10AutoBufferIPKhLm136EED2Ev.exit1035 ], [ %i.caj, %bb.gh ], [ %i.cbk, %bb.gl ], [ %.pn156.i, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i ], [ %.pn156.i260, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i263 ], [ %.pn156.i366, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i369 ], [ %.pn156.i479, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i482 ], [ %.pn156.i593, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i596 ], [ %.pn156.i706, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i709 ], [ %.pn156.i820, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i823 ], [ %i.oe, %bb.al ], [ %.pn156.i933, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit169.i936 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #25
  br label %bb.hb

bb.hb:                                            ; preds = %.body, %bb.f
  %.pn227.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn227.pn.pn.pn, %.body ], [ %i.fo, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  resume { ptr, i32 } %.pn227.pn.pn.pn.pn
}

declare void @_ZN2cv16TLSDataContainerC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEEE, i64 16), ptr %0, align 8, !tbaa !77
  invoke void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEEE, i64 16), ptr %0, align 8, !tbaa !77
  invoke void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %_ZN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEED2Ev.exit unwind label %bb.b, !inline_history !155

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #28, !inline_history !155
  unreachable

_ZN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #25, !inline_history !155
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEE18createDataInstanceEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(416) ptr @_Znwm(i64 noundef 416) #29 ; 3 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(416) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #25
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEE18deleteDataInstanceEPv(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #25
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(416) %1) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 416) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12)) unnamed_addr #6

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef ptr @_ZNK2cv16TLSDataContainer7getDataEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !707
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !14   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !14
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !707
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #20

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare noundef zeroext i1 @_ZN2cv20checkHardwareSupportEi(i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv9crossCorrERKNS_3MatES2_RS0_NS_6Point_IiEEdi(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), i64, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPhSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !437
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !55
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPhmS0_ET_S2_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPhmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPhmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPhmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPhmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPhmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPhmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !59
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #26
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !55
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPhmS0_ET_S2_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPhmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPhmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !55
  br label %_ZSt27__uninitialized_default_n_aIPPhmS0_ET_S2_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPhmS0_ET_S2_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPhmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPhmS0_ET_S2_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPhmS0_ET_S2_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
end_hunk_13
begin_hunk_14_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN2cv6Point_IiEE", !5, i64 0, !5, i64 4}
!10 = !{!9, !5, i64 4}
!11 = !{!12, !5, i64 0}
!12 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!13 = !{!12, !5, i64 4}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !18, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !20, i64 8, !6, i64 16}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!23, !5, i64 8}
!23 = !{!"_ZTSN2cv12FilterEngineE", !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 20, !9, i64 28, !5, i64 36, !12, i64 40, !24, i64 48, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !25, i64 80, !5, i64 104, !30, i64 112, !30, i64 136, !30, i64 160, !30, i64 184, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !34, i64 232, !40, i64 256, !46, i64 272, !50, i64 288}
!24 = !{!"_ZTSN2cv5Rect_IiEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!25 = !{!"_ZTSSt6vectorIiSaIiEE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 int", !19, i64 0}
!30 = !{!"_ZTSSt6vectorIhSaIhEE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!34 = !{!"_ZTSSt6vectorIPhSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIPhSaIS0_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p2 omnipotent char", !39, i64 0}
!39 = !{!"any p2 pointer", !19, i64 0}
!40 = !{!"_ZTSN2cv3PtrINS_10BaseFilterEEE", !41, i64 0}
!41 = !{!"_ZTSSt10shared_ptrIN2cv10BaseFilterEE", !42, i64 0}
!42 = !{!"_ZTSSt12__shared_ptrIN2cv10BaseFilterELN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0, !44, i64 8}
!43 = !{!"p1 _ZTSN2cv10BaseFilterE", !19, i64 0}
!44 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!45 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!46 = !{!"_ZTSN2cv3PtrINS_13BaseRowFilterEEE", !47, i64 0}
!47 = !{!"_ZTSSt10shared_ptrIN2cv13BaseRowFilterEE", !48, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN2cv13BaseRowFilterELN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0, !44, i64 8}
!49 = !{!"p1 _ZTSN2cv13BaseRowFilterE", !19, i64 0}
!50 = !{!"_ZTSN2cv3PtrINS_16BaseColumnFilterEEE", !51, i64 0}
!51 = !{!"_ZTSSt10shared_ptrIN2cv16BaseColumnFilterEE", !52, i64 0}
!52 = !{!"_ZTSSt12__shared_ptrIN2cv16BaseColumnFilterELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !44, i64 8}
!53 = !{!"p1 _ZTSN2cv16BaseColumnFilterE", !19, i64 0}
!54 = !{!23, !5, i64 16}
!55 = !{!18, !18, i64 0}
!56 = !{!23, !5, i64 24}
!57 = !{!23, !5, i64 32}
!58 = !{!23, !5, i64 36}
!59 = !{!37, !38, i64 8}
!60 = !{!37, !38, i64 0}
!61 = !{!23, !5, i64 20}
!62 = !{!33, !18, i64 8}
!63 = !{!33, !18, i64 0}
!64 = !{!23, !5, i64 76}
!65 = !{!42, !43, i64 0}
!66 = distinct !{!66, !67, !68, !69}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 28}
!71 = distinct !{!71, !67, !68, !69}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !67, !68}
!75 = distinct !{!75, !67}
!76 = !{!48, !49, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"vtable pointer", !7, i64 0}
!79 = !{!23, !5, i64 56}
!80 = !{!23, !5, i64 208}
!81 = !{!23, !5, i64 28}
!82 = !{!23, !5, i64 48}
!83 = !{!23, !5, i64 64}
!84 = !{!23, !5, i64 40}
!85 = !{!23, !5, i64 68}
!86 = !{!23, !5, i64 72}
!87 = distinct !{!87, !67}
!88 = !{!23, !5, i64 104}
!89 = !{!28, !29, i64 0}
!90 = distinct !{!90, !67, !68, !69}
!91 = distinct !{!91, !67, !69, !68}
!92 = distinct !{!92, !67}
!93 = distinct !{!93, !67}
!94 = distinct !{!94, !67}
!95 = !{!23, !5, i64 228}
!96 = !{!23, !5, i64 224}
!97 = !{!23, !5, i64 52}
!98 = !{!23, !5, i64 216}
!99 = !{!23, !5, i64 212}
!100 = !{!23, !5, i64 60}
!101 = !{!23, !5, i64 220}
!102 = !{!52, !53, i64 0}
!103 = !{!104, !5, i64 8}
!104 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !105, i64 0, !5, i64 8}
!105 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !19, i64 0}
!106 = !{!17, !18, i64 0}
!107 = !{!20, !20, i64 0}
!108 = !{!16, !20, i64 8}
!109 = distinct !{!109, !73}
!110 = distinct !{!110, !67}
!111 = distinct !{!111, !67}
!112 = distinct !{!112, !73}
!113 = distinct !{!113, !67}
!114 = distinct !{!114, !67}
!115 = distinct !{!115, !73}
!116 = distinct !{!116, !73}
!117 = distinct !{!117, !67}
!118 = !{!23, !5, i64 44}
!119 = distinct !{!119, !67}
!120 = distinct !{!120, !67}
!121 = !{ptr @_ZNK2cv12FilterEngine11isStatelessEv}
!122 = !{!123, !18, i64 24}
!123 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !124, i64 56, !125, i64 64, !126, i64 72, !128, i64 128}
!124 = !{!"p1 _ZTSN2cv12MatAllocatorE", !19, i64 0}
!125 = !{!"p1 _ZTSN2cv8UMatDataE", !19, i64 0}
!126 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !127, i64 4, !5, i64 8, !6, i64 12}
!127 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!128 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!129 = !{!123, !18, i64 40}
!130 = !{!126, !5, i64 0}
!131 = !{!123, !5, i64 0}
!132 = !{!24, !5, i64 0}
!133 = !{!24, !5, i64 4}
!134 = !{!24, !5, i64 8}
!135 = !{!24, !5, i64 12}
!136 = !{!137, !137, i64 0}
!137 = !{!"p1 _ZTSN2cv12FilterEngineE", !19, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"p1 _ZTSN2cv3MatE", !19, i64 0}
!140 = !{!141, !5, i64 32}
!141 = !{!"_ZTSN2cv12cpu_baseline18TiledFilterInvokerE", !142, i64 0, !137, i64 8, !139, i64 16, !139, i64 24, !5, i64 32, !5, i64 36, !143, i64 40}
!142 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!143 = !{!"_ZTSN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEEE", !144, i64 0}
!144 = !{!"_ZTSN2cv16TLSDataContainerE", !5, i64 8}
!145 = !{!141, !139, i64 24}
!146 = !{}
!147 = !{i64 8}
!148 = !{!123, !5, i64 12}
!149 = !{!141, !5, i64 36}
!150 = !{!151, !5, i64 0}
!151 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!152 = !{!151, !5, i64 4}
!153 = !{ptr @_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev, ptr @_ZN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEED2Ev}
!154 = !{ptr @_ZN2cv12cpu_baseline18TiledFilterInvokerD2Ev}
!155 = !{ptr @_ZN2cv7TLSDataINS_12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersEED2Ev}
!156 = !{!123, !5, i64 8}
!157 = !{!158, !5, i64 8}
!158 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!159 = !{!160, !162}
!160 = distinct !{!160, !161, !"_ZSt11make_sharedIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS1_17SymmRowSmallNoVecEEEJRKNS0_3MatERKiS9_RKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!161 = distinct !{!161, !"_ZSt11make_sharedIN2cv12cpu_baseline18SymmRowSmallFilterIhiNS1_17SymmRowSmallNoVecEEEJRKNS0_3MatERKiS9_RKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!162 = distinct !{!162, !163, !"_ZN2cvL7makePtrINS_12cpu_baseline18SymmRowSmallFilterIhiNS1_17SymmRowSmallNoVecEEEJNS_3MatEiiS3_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!163 = distinct !{!163, !"_ZN2cvL7makePtrINS_12cpu_baseline18SymmRowSmallFilterIhiNS1_17SymmRowSmallNoVecEEEJNS_3MatEiiS3_EEENS_3PtrIT_EEDpRKT0_"}
!164 = !{!158, !5, i64 12}
!165 = !{!44, !45, i64 0}
!166 = !{!167, !169}
!167 = distinct !{!167, !168, !"_ZSt11make_sharedIN2cv12cpu_baseline18SymmRowSmallFilterIffNS1_17SymmRowSmallNoVecEEEJRKNS0_3MatERKiS9_RKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!168 = distinct !{!168, !"_ZSt11make_sharedIN2cv12cpu_baseline18SymmRowSmallFilterIffNS1_17SymmRowSmallNoVecEEEJRKNS0_3MatERKiS9_RKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!169 = distinct !{!169, !170, !"_ZN2cvL7makePtrINS_12cpu_baseline18SymmRowSmallFilterIffNS1_17SymmRowSmallNoVecEEEJNS_3MatEiiS3_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!170 = distinct !{!170, !"_ZN2cvL7makePtrINS_12cpu_baseline18SymmRowSmallFilterIffNS1_17SymmRowSmallNoVecEEEJNS_3MatEiiS3_EEENS_3PtrIT_EEDpRKT0_"}
!171 = !{!172, !174}
!172 = distinct !{!172, !173, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIhiNS1_8RowNoVecEEEJRKNS0_3MatERKiRKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!173 = distinct !{!173, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIhiNS1_8RowNoVecEEEJRKNS0_3MatERKiRKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!174 = distinct !{!174, !175, !"_ZN2cvL7makePtrINS_12cpu_baseline9RowFilterIhiNS1_8RowNoVecEEEJNS_3MatEiS3_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!175 = distinct !{!175, !"_ZN2cvL7makePtrINS_12cpu_baseline9RowFilterIhiNS1_8RowNoVecEEEJNS_3MatEiS3_EEENS_3PtrIT_EEDpRKT0_"}
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIhfNS1_8RowNoVecEEEJRKNS0_3MatERKiRKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!178 = distinct !{!178, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIhfNS1_8RowNoVecEEEJRKNS0_3MatERKiRKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!179 = distinct !{!179, !180, !"_ZN2cvL7makePtrINS_12cpu_baseline9RowFilterIhfNS1_8RowNoVecEEEJNS_3MatEiS3_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!180 = distinct !{!180, !"_ZN2cvL7makePtrINS_12cpu_baseline9RowFilterIhfNS1_8RowNoVecEEEJNS_3MatEiS3_EEENS_3PtrIT_EEDpRKT0_"}
!181 = !{!182, !184}
!182 = distinct !{!182, !183, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIhdNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!183 = distinct !{!183, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIhdNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!184 = distinct !{!184, !185, !"_ZN2cvL7makePtrINS_12cpu_baseline9RowFilterIhdNS1_8RowNoVecEEEJNS_3MatEiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!185 = distinct !{!185, !"_ZN2cvL7makePtrINS_12cpu_baseline9RowFilterIhdNS1_8RowNoVecEEEJNS_3MatEiEEENS_3PtrIT_EEDpRKT0_"}
!186 = !{!187, !189}
!187 = distinct !{!187, !188, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterItfNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!188 = distinct !{!188, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterItfNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!189 = distinct !{!189, !190, !"_ZN2cvL7makePtrINS_12cpu_baseline9RowFilterItfNS1_8RowNoVecEEEJNS_3MatEiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!190 = distinct !{!190, !"_ZN2cvL7makePtrINS_12cpu_baseline9RowFilterItfNS1_8RowNoVecEEEJNS_3MatEiEEENS_3PtrIT_EEDpRKT0_"}
!191 = !{!19, !19, i64 0}
!192 = !{!193, !194, i64 0}
!193 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline9RowFilterItdNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !194, i64 0, !44, i64 8}
!194 = !{!"p1 _ZTSN2cv12cpu_baseline9RowFilterItdNS0_8RowNoVecEEE", !19, i64 0}
!195 = !{!196, !197, i64 0}
!196 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIsfNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !197, i64 0, !44, i64 8}
!197 = !{!"p1 _ZTSN2cv12cpu_baseline9RowFilterIsfNS0_8RowNoVecEEE", !19, i64 0}
!198 = !{!199, !200, i64 0}
!199 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIsdNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !200, i64 0, !44, i64 8}
!200 = !{!"p1 _ZTSN2cv12cpu_baseline9RowFilterIsdNS0_8RowNoVecEEE", !19, i64 0}
!201 = !{!202, !203, i64 0}
!202 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIffNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !203, i64 0, !44, i64 8}
!203 = !{!"p1 _ZTSN2cv12cpu_baseline9RowFilterIffNS0_8RowNoVecEEE", !19, i64 0}
!204 = !{!205, !206, i64 0}
!205 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIfdNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !206, i64 0, !44, i64 8}
!206 = !{!"p1 _ZTSN2cv12cpu_baseline9RowFilterIfdNS0_8RowNoVecEEE", !19, i64 0}
!207 = !{!208, !209, i64 0}
!208 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline9RowFilterIddNS1_8RowNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !209, i64 0, !44, i64 8}
!209 = !{!"p1 _ZTSN2cv12cpu_baseline9RowFilterIddNS0_8RowNoVecEEE", !19, i64 0}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterItdNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!212 = distinct !{!212, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterItdNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIsfNS1_8RowNoVecEEEJRKNS0_3MatERKiRKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!215 = distinct !{!215, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIsfNS1_8RowNoVecEEEJRKNS0_3MatERKiRKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIsdNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!218 = distinct !{!218, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIsdNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIffNS1_8RowNoVecEEEJRKNS0_3MatERKiRKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!221 = distinct !{!221, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIffNS1_8RowNoVecEEEJRKNS0_3MatERKiRKS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIfdNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!224 = distinct !{!224, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIfdNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIddNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!227 = distinct !{!227, !"_ZSt11make_sharedIN2cv12cpu_baseline9RowFilterIddNS1_8RowNoVecEEEJRKNS0_3MatERKiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!228 = !{!229, !229, i64 0}
!229 = !{!"double", !6, i64 0}
!230 = !{!231, !5, i64 0}
!231 = !{!"_ZTSN2cv12cpu_baseline13FixedPtCastExIihEE", !5, i64 0, !5, i64 4}
!232 = !{!231, !5, i64 4}
!233 = !{!234, !236}
!234 = distinct !{!234, !235, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdRKS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!235 = distinct !{!235, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdRKS4_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!236 = distinct !{!236, !237, !"_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJNS_3MatEidS4_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!237 = distinct !{!237, !"_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJNS_3MatEidS4_EEENS_3PtrIT_EEDpRKT0_"}
!238 = !{!239, !241}
!239 = distinct !{!239, !240, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIfhEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!240 = distinct !{!240, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIfhEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!241 = distinct !{!241, !242, !"_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIfhEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!242 = distinct !{!242, !"_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIfhEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_"}
!243 = !{!244, !246}
!244 = distinct !{!244, !245, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!245 = distinct !{!245, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!246 = distinct !{!246, !247, !"_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!247 = distinct !{!247, !"_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_"}
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!250 = distinct !{!250, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!251 = distinct !{!251, !252, !"_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!252 = distinct !{!252, !"_ZN2cvL7makePtrINS_12cpu_baseline12ColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEEJNS_3MatEidEEENS_3PtrIT_EEDpRKT0_"}
!253 = !{!254, !255, i64 0}
!254 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdtEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !255, i64 0, !44, i64 8}
!255 = !{!"p1 _ZTSN2cv12cpu_baseline12ColumnFilterINS0_4CastIdtEENS0_11ColumnNoVecEEE", !19, i64 0}
!256 = !{!257, !258, i64 0}
!257 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIfsEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !258, i64 0, !44, i64 8}
!258 = !{!"p1 _ZTSN2cv12cpu_baseline12ColumnFilterINS0_4CastIfsEENS0_11ColumnNoVecEEE", !19, i64 0}
!259 = !{!260, !261, i64 0}
!260 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdsEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !261, i64 0, !44, i64 8}
!261 = !{!"p1 _ZTSN2cv12cpu_baseline12ColumnFilterINS0_4CastIdsEENS0_11ColumnNoVecEEE", !19, i64 0}
!262 = !{!263, !264, i64 0}
!263 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIffEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !264, i64 0, !44, i64 8}
!264 = !{!"p1 _ZTSN2cv12cpu_baseline12ColumnFilterINS0_4CastIffEENS0_11ColumnNoVecEEE", !19, i64 0}
!265 = !{!266, !267, i64 0}
!266 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12ColumnFilterINS1_4CastIddEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !267, i64 0, !44, i64 8}
!267 = !{!"p1 _ZTSN2cv12cpu_baseline12ColumnFilterINS0_4CastIddEENS0_11ColumnNoVecEEE", !19, i64 0}
!268 = !{!269, !271}
!269 = distinct !{!269, !270, !"_ZSt11make_sharedIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_: argument 0"}
!270 = distinct !{!270, !"_ZSt11make_sharedIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_"}
!271 = distinct !{!271, !272, !"_ZN2cvL7makePtrINS_12cpu_baseline21SymmColumnSmallFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!272 = distinct !{!272, !"_ZN2cvL7makePtrINS_12cpu_baseline21SymmColumnSmallFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_"}
!273 = !{!274, !276}
!274 = distinct !{!274, !275, !"_ZSt11make_sharedIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIisEENS1_20SymmColumnSmallNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_: argument 0"}
!275 = distinct !{!275, !"_ZSt11make_sharedIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIisEENS1_20SymmColumnSmallNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_"}
!276 = distinct !{!276, !277, !"_ZN2cvL7makePtrINS_12cpu_baseline21SymmColumnSmallFilterINS1_4CastIisEENS1_20SymmColumnSmallNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!277 = distinct !{!277, !"_ZN2cvL7makePtrINS_12cpu_baseline21SymmColumnSmallFilterINS1_4CastIisEENS1_20SymmColumnSmallNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_"}
!278 = !{!279, !281}
!279 = distinct !{!279, !280, !"_ZSt11make_sharedIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIffEENS1_20SymmColumnSmallNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_: argument 0"}
!280 = distinct !{!280, !"_ZSt11make_sharedIN2cv12cpu_baseline21SymmColumnSmallFilterINS1_4CastIffEENS1_20SymmColumnSmallNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_"}
!281 = distinct !{!281, !282, !"_ZN2cvL7makePtrINS_12cpu_baseline21SymmColumnSmallFilterINS1_4CastIffEENS1_20SymmColumnSmallNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!282 = distinct !{!282, !"_ZN2cvL7makePtrINS_12cpu_baseline21SymmColumnSmallFilterINS1_4CastIffEENS1_20SymmColumnSmallNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_"}
!283 = !{!284, !286}
!284 = distinct !{!284, !285, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_: argument 0"}
!285 = distinct !{!285, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_"}
!286 = distinct !{!286, !287, !"_ZN2cvL7makePtrINS_12cpu_baseline16SymmColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!287 = distinct !{!287, !"_ZN2cvL7makePtrINS_12cpu_baseline16SymmColumnFilterINS1_13FixedPtCastExIihEENS1_11ColumnNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_"}
!288 = !{!289, !291}
!289 = distinct !{!289, !290, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIfhEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_: argument 0"}
!290 = distinct !{!290, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIfhEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_"}
!291 = distinct !{!291, !292, !"_ZN2cvL7makePtrINS_12cpu_baseline16SymmColumnFilterINS1_4CastIfhEENS1_11ColumnNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!292 = distinct !{!292, !"_ZN2cvL7makePtrINS_12cpu_baseline16SymmColumnFilterINS1_4CastIfhEENS1_11ColumnNoVecEEEJNS_3MatEidiS4_S5_EEENS_3PtrIT_EEDpRKT0_"}
!293 = !{!294, !296}
!294 = distinct !{!294, !295, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!295 = distinct !{!295, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!296 = distinct !{!296, !297, !"_ZN2cvL7makePtrINS_12cpu_baseline16SymmColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEEJNS_3MatEidiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!297 = distinct !{!297, !"_ZN2cvL7makePtrINS_12cpu_baseline16SymmColumnFilterINS1_4CastIdhEENS1_11ColumnNoVecEEEJNS_3MatEidiEEENS_3PtrIT_EEDpRKT0_"}
!298 = !{!299, !301}
!299 = distinct !{!299, !300, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!300 = distinct !{!300, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!301 = distinct !{!301, !302, !"_ZN2cvL7makePtrINS_12cpu_baseline16SymmColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEEJNS_3MatEidiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!302 = distinct !{!302, !"_ZN2cvL7makePtrINS_12cpu_baseline16SymmColumnFilterINS1_4CastIftEENS1_11ColumnNoVecEEEJNS_3MatEidiEEENS_3PtrIT_EEDpRKT0_"}
!303 = !{!304, !305, i64 0}
!304 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIdtEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !305, i64 0, !44, i64 8}
!305 = !{!"p1 _ZTSN2cv12cpu_baseline16SymmColumnFilterINS0_4CastIdtEENS0_11ColumnNoVecEEE", !19, i64 0}
!306 = !{!307, !308, i64 0}
!307 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIisEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !308, i64 0, !44, i64 8}
!308 = !{!"p1 _ZTSN2cv12cpu_baseline16SymmColumnFilterINS0_4CastIisEENS0_11ColumnNoVecEEE", !19, i64 0}
!309 = !{!310, !311, i64 0}
!310 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIfsEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !311, i64 0, !44, i64 8}
!311 = !{!"p1 _ZTSN2cv12cpu_baseline16SymmColumnFilterINS0_4CastIfsEENS0_11ColumnNoVecEEE", !19, i64 0}
!312 = !{!313, !314, i64 0}
!313 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIdsEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !314, i64 0, !44, i64 8}
!314 = !{!"p1 _ZTSN2cv12cpu_baseline16SymmColumnFilterINS0_4CastIdsEENS0_11ColumnNoVecEEE", !19, i64 0}
!315 = !{!316, !317, i64 0}
!316 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIffEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !317, i64 0, !44, i64 8}
!317 = !{!"p1 _ZTSN2cv12cpu_baseline16SymmColumnFilterINS0_4CastIffEENS0_11ColumnNoVecEEE", !19, i64 0}
!318 = !{!319, !320, i64 0}
!319 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIddEENS1_11ColumnNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !320, i64 0, !44, i64 8}
!320 = !{!"p1 _ZTSN2cv12cpu_baseline16SymmColumnFilterINS0_4CastIddEENS0_11ColumnNoVecEEE", !19, i64 0}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdtEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!323 = distinct !{!323, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdtEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIfsEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!326 = distinct !{!326, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIfsEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdsEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!329 = distinct !{!329, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIdsEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIffEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!332 = distinct !{!332, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIffEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIddEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!335 = distinct !{!335, !"_ZSt11make_sharedIN2cv12cpu_baseline12ColumnFilterINS1_4CastIddEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIdtEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!338 = distinct !{!338, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIdtEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIisEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!341 = distinct !{!341, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIisEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIfsEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_: argument 0"}
!344 = distinct !{!344, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIfsEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIdsEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!347 = distinct !{!347, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIdsEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIffEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_: argument 0"}
!350 = distinct !{!350, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIffEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_RKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESK_E4typeEEDpOT0_"}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIddEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!353 = distinct !{!353, !"_ZSt11make_sharedIN2cv12cpu_baseline16SymmColumnFilterINS1_4CastIddEENS1_11ColumnNoVecEEEJRKNS0_3MatERKiRKdSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!354 = !{!355, !5, i64 0}
!355 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !19, i64 8, !12, i64 16}
!356 = !{!355, !19, i64 8}
!357 = !{!358, !360}
!358 = distinct !{!358, !359, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIfhEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdRKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESM_E4typeEEDpOT0_: argument 0"}
!359 = distinct !{!359, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIfhEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdRKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESM_E4typeEEDpOT0_"}
!360 = distinct !{!360, !361, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIfhEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdS4_S5_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!361 = distinct !{!361, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIfhEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdS4_S5_EEENS_3PtrIT_EEDpRKT0_"}
!362 = !{!363, !365}
!363 = distinct !{!363, !364, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIftEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!364 = distinct !{!364, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIftEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!365 = distinct !{!365, !366, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIftEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!366 = distinct !{!366, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIftEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdEEENS_3PtrIT_EEDpRKT0_"}
!367 = !{!368, !370}
!368 = distinct !{!368, !369, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIfsEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdRKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESM_E4typeEEDpOT0_: argument 0"}
!369 = distinct !{!369, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIfsEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdRKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESM_E4typeEEDpOT0_"}
!370 = distinct !{!370, !371, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIfsEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdS4_S5_EEENS_3PtrIT_EEDpRKT0_: argument 0"}
!371 = distinct !{!371, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIfsEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdS4_S5_EEENS_3PtrIT_EEDpRKT0_"}
!372 = !{!373, !375}
!373 = distinct !{!373, !374, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIffEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!374 = distinct !{!374, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIffEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!375 = distinct !{!375, !376, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIffEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!376 = distinct !{!376, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIffEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdEEENS_3PtrIT_EEDpRKT0_"}
!377 = !{!378, !380}
!378 = distinct !{!378, !379, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIddEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!379 = distinct !{!379, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIhNS1_4CastIddEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!380 = distinct !{!380, !381, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIddEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!381 = distinct !{!381, !"_ZN2cvL7makePtrINS_12cpu_baseline8Filter2DIhNS1_4CastIddEENS1_11FilterNoVecEEEJNS_3MatENS_6Point_IiEEdEEENS_3PtrIT_EEDpRKT0_"}
!382 = !{!383, !384, i64 0}
!383 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline8Filter2DItNS1_4CastIftEENS1_11FilterNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !384, i64 0, !44, i64 8}
!384 = !{!"p1 _ZTSN2cv12cpu_baseline8Filter2DItNS0_4CastIftEENS0_11FilterNoVecEEE", !19, i64 0}
!385 = !{!386, !387, i64 0}
!386 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline8Filter2DItNS1_4CastIffEENS1_11FilterNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !387, i64 0, !44, i64 8}
!387 = !{!"p1 _ZTSN2cv12cpu_baseline8Filter2DItNS0_4CastIffEENS0_11FilterNoVecEEE", !19, i64 0}
!388 = !{!389, !390, i64 0}
!389 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline8Filter2DItNS1_4CastIddEENS1_11FilterNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !390, i64 0, !44, i64 8}
!390 = !{!"p1 _ZTSN2cv12cpu_baseline8Filter2DItNS0_4CastIddEENS0_11FilterNoVecEEE", !19, i64 0}
!391 = !{!392, !393, i64 0}
!392 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline8Filter2DIsNS1_4CastIfsEENS1_11FilterNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !393, i64 0, !44, i64 8}
!393 = !{!"p1 _ZTSN2cv12cpu_baseline8Filter2DIsNS0_4CastIfsEENS0_11FilterNoVecEEE", !19, i64 0}
!394 = !{!395, !396, i64 0}
!395 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline8Filter2DIsNS1_4CastIffEENS1_11FilterNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !396, i64 0, !44, i64 8}
!396 = !{!"p1 _ZTSN2cv12cpu_baseline8Filter2DIsNS0_4CastIffEENS0_11FilterNoVecEEE", !19, i64 0}
!397 = !{!398, !399, i64 0}
!398 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline8Filter2DIsNS1_4CastIddEENS1_11FilterNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !399, i64 0, !44, i64 8}
!399 = !{!"p1 _ZTSN2cv12cpu_baseline8Filter2DIsNS0_4CastIddEENS0_11FilterNoVecEEE", !19, i64 0}
!400 = !{!401, !402, i64 0}
!401 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline8Filter2DIfNS1_4CastIffEENS1_11FilterNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !402, i64 0, !44, i64 8}
!402 = !{!"p1 _ZTSN2cv12cpu_baseline8Filter2DIfNS0_4CastIffEENS0_11FilterNoVecEEE", !19, i64 0}
!403 = !{!404, !405, i64 0}
!404 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline8Filter2DIdNS1_4CastIddEENS1_11FilterNoVecEEELN9__gnu_cxx12_Lock_policyE2EE", !405, i64 0, !44, i64 8}
!405 = !{!"p1 _ZTSN2cv12cpu_baseline8Filter2DIdNS0_4CastIddEENS0_11FilterNoVecEEE", !19, i64 0}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DItNS1_4CastIftEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!408 = distinct !{!408, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DItNS1_4CastIftEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!409 = !{!410}
!410 = distinct !{!410, !411, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DItNS1_4CastIffEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!411 = distinct !{!411, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DItNS1_4CastIffEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DItNS1_4CastIddEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!414 = distinct !{!414, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DItNS1_4CastIddEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIsNS1_4CastIfsEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!417 = distinct !{!417, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIsNS1_4CastIfsEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIsNS1_4CastIffEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!420 = distinct !{!420, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIsNS1_4CastIffEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIsNS1_4CastIddEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!423 = distinct !{!423, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIsNS1_4CastIddEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIfNS1_4CastIffEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdRKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESM_E4typeEEDpOT0_: argument 0"}
!426 = distinct !{!426, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIfNS1_4CastIffEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdRKS4_RKS5_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESM_E4typeEEDpOT0_"}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIdNS1_4CastIddEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!429 = distinct !{!429, !"_ZSt11make_sharedIN2cv12cpu_baseline8Filter2DIdNS1_4CastIddEENS1_11FilterNoVecEEEJRKNS0_3MatERKNS0_6Point_IiEERKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!430 = !{!431, !5, i64 8}
!431 = !{!"_ZTSN2cv13BaseRowFilterE", !5, i64 8, !5, i64 12}
!432 = !{!431, !5, i64 12}
!433 = !{!434, !5, i64 8}
!434 = !{!"_ZTSN2cv16BaseColumnFilterE", !5, i64 8, !5, i64 12}
!435 = !{!434, !5, i64 12}
!436 = !{!23, !5, i64 12}
!437 = !{!37, !38, i64 16}
!438 = !{!33, !18, i64 16}
!439 = !{!28, !29, i64 16}
!440 = distinct !{null, null, null, null, null}
!441 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!442 = distinct !{null, null, null, null, null}
!443 = distinct !{null, null, null, null, null}
!444 = !{!28, !29, i64 8}
!445 = distinct !{null, null}
!446 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv16BaseColumnFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!447 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv13BaseRowFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!448 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv10BaseFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!451 = distinct !{!451, !"_ZNK2cv11_InputArray6getMatEi"}
!452 = distinct !{!452, !67}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!455 = distinct !{!455, !"_ZNK2cv11_InputArray6getMatEi"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!458 = distinct !{!458, !"_ZNK2cv11_InputArray6getMatEi"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!461 = distinct !{!461, !"_ZNK2cv11_InputArray6getMatEi"}
!462 = !{!463}
!463 = distinct !{!463, !464, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!464 = distinct !{!464, !"_ZNK2cv11_InputArray6getMatEi"}
!465 = !{!466, !137, i64 0}
!466 = !{!"_ZTSSt12__shared_ptrIN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EE", !137, i64 0, !44, i64 8}
!467 = distinct !{null, null, null, null, null, null}
!468 = !{!469, !137, i64 16}
!469 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EE", !158, i64 0, !137, i64 16}
!470 = !{!123, !5, i64 4}
!471 = distinct !{!471, !67}
!472 = !{!473, !474, i64 8}
!473 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !474, i64 0, !474, i64 8, !474, i64 16}
!474 = !{!"p1 _ZTSN2cv6Point_IiEE", !19, i64 0}
!475 = !{!473, !474, i64 0}
!476 = distinct !{!476, !67}
!477 = !{!478, !478, i64 0}
!478 = !{!"float", !6, i64 0}
!479 = distinct !{!479, !67, !480}
!480 = !{!"llvm.loop.unswitch.partial.disable"}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!483 = distinct !{!483, !"_ZNK2cv11_InputArray6getMatEi"}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!486 = distinct !{!486, !"_ZNK2cv11_InputArray6getMatEi"}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_ZN2cvL7makePtrINS_12FilterEngineEJNS_3PtrINS_10BaseFilterEEENS2_INS_13BaseRowFilterEEENS2_INS_16BaseColumnFilterEEEiiiiiNS_7Scalar_IdEEEEENS2_IT_EEDpRKT0_: argument 0"}
!489 = distinct !{!489, !"_ZN2cvL7makePtrINS_12FilterEngineEJNS_3PtrINS_10BaseFilterEEENS2_INS_13BaseRowFilterEEENS2_INS_16BaseColumnFilterEEEiiiiiNS_7Scalar_IdEEEEENS2_IT_EEDpRKT0_"}
!490 = !{!491, !488}
!491 = distinct !{!491, !492, !"_ZSt11make_sharedIN2cv12FilterEngineEJRKNS0_3PtrINS0_10BaseFilterEEERKNS2_INS0_13BaseRowFilterEEERKNS2_INS0_16BaseColumnFilterEEERKiSG_SG_SG_SG_RKNS0_7Scalar_IdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESN_E4typeEEDpOT0_: argument 0"}
!492 = distinct !{!492, !"_ZSt11make_sharedIN2cv12FilterEngineEJRKNS0_3PtrINS0_10BaseFilterEEERKNS2_INS0_13BaseRowFilterEEERKNS2_INS0_16BaseColumnFilterEEERKiSG_SG_SG_SG_RKNS0_7Scalar_IdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESN_E4typeEEDpOT0_"}
!493 = distinct !{null, ptr @_ZNSt12__shared_ptrIN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!494 = distinct !{null, ptr @_ZNSt12__shared_ptrIN2cv12FilterEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!497 = distinct !{!497, !"_ZNK2cv11_InputArray6getMatEi"}
!498 = !{!499}
!499 = distinct !{!499, !500, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!500 = distinct !{!500, !"_ZNK2cv11_InputArray6getMatEi"}
!501 = !{!502}
!502 = distinct !{!502, !503, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!503 = distinct !{!503, !"_ZNK2cv11_InputArray6getMatEi"}
!504 = !{!505}
!505 = distinct !{!505, !506, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!506 = distinct !{!506, !"_ZNK2cv11_InputArray6getMatEi"}
!507 = !{!508, !229, i64 56}
!508 = !{!"_ZTSN2cv14Filter2DParamsE", !5, i64 0, !5, i64 4, !5, i64 8, !509, i64 16, !5, i64 48, !229, i64 56, !229, i64 64}
!509 = !{!"_ZTSN2cv7Scalar_IdEE", !510, i64 0}
!510 = !{!"_ZTSN2cv3VecIdLi4EEE", !511, i64 0}
!511 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!512 = !{!508, !5, i64 48}
!513 = !{!508, !229, i64 64}
!514 = !{!508, !5, i64 8}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!517 = distinct !{!517, !"_ZNK2cv11_InputArray6getMatEi"}
!518 = !{!519}
!519 = distinct !{!519, !520, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!520 = distinct !{!520, !"_ZNK2cv11_InputArray6getMatEi"}
!521 = !{!522}
!522 = distinct !{!522, !523, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!523 = distinct !{!523, !"_ZNK2cv11_InputArray6getMatEi"}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!526 = distinct !{!526, !"_ZNK2cv11_InputArray6getMatEi"}
!527 = !{!141, !137, i64 8}
!528 = !{!141, !139, i64 16}
!529 = !{!530, !5, i64 12}
!530 = !{!"_ZTSN2cv12cpu_baseline18TiledFilterInvoker18TiledFilterBuffersE", !123, i64 0, !123, i64 208}
!531 = !{!530, !5, i64 8}
!532 = !{!533, !29, i64 0}
!533 = !{!"_ZTSN2cv10AutoBufferIiLm264EEE", !29, i64 0, !20, i64 8, !6, i64 16}
!534 = !{!533, !20, i64 8}
!535 = distinct !{!535, !67}
!536 = !{!537, !18, i64 0}
!537 = !{!"_ZTSN2cv10AutoBufferIhLm1032EEE", !18, i64 0, !20, i64 8, !6, i64 16}
!538 = !{!537, !20, i64 8}
!539 = distinct !{!539, !67}
!540 = distinct !{!540, !67}
!541 = distinct !{!541, !67}
!542 = distinct !{!542, !73}
!543 = distinct !{!543, !67}
!544 = distinct !{!544, !67}
!545 = distinct !{!545, !73}
!546 = distinct !{!546, !73}
!547 = distinct !{!547, !67}
!548 = distinct !{!548, !73}
!549 = distinct !{!549, !67}
!550 = distinct !{!550, !67}
!551 = distinct !{!551, !67, !68, !69}
!552 = !{!"branch_weights", i32 4, i32 12}
!553 = distinct !{!553, !67, !68, !69}
!554 = distinct !{!554, !67, !69, !68}
!555 = !{!556}
!556 = distinct !{!556, !557}
!557 = distinct !{!557, !"LVerDomain"}
!558 = !{!559}
!559 = distinct !{!559, !557}
!560 = distinct !{!560, !67, !68, !69}
!561 = distinct !{!561, !67, !68, !69}
!562 = distinct !{!562, !73}
!563 = distinct !{!563, !67, !68}
!564 = distinct !{!564, !67, !68}
!565 = !{!566}
!566 = distinct !{!566, !567}
!567 = distinct !{!567, !"LVerDomain"}
!568 = !{!569}
!569 = distinct !{!569, !567}
!570 = distinct !{!570, !67, !68, !69}
!571 = distinct !{!571, !67, !68, !69}
!572 = distinct !{!572, !73}
!573 = distinct !{!573, !67}
!574 = distinct !{!574, !67}
!575 = distinct !{!575, !73}
!576 = distinct !{!576, !67}
!577 = distinct !{!577, !67}
!578 = distinct !{!578, !73}
!579 = distinct !{!579, !67}
!580 = distinct !{!580, !73}
!581 = distinct !{!581, !67}
!582 = distinct !{!582, !67}
!583 = distinct !{!583, !67}
!584 = distinct !{!584, !73}
!585 = distinct !{!585, !67}
!586 = distinct !{!586, !67}
!587 = distinct !{!587, !73}
!588 = distinct !{!588, !67}
!589 = distinct !{!589, !67}
!590 = distinct !{!590, !67}
!591 = distinct !{!591, !67}
!592 = distinct !{!592, !73}
!593 = distinct !{!593, !67}
!594 = distinct !{!594, !73}
!595 = distinct !{!595, !67}
!596 = distinct !{!596, !67}
!597 = distinct !{!597, !67, !68, !69}
!598 = distinct !{!598, !67, !69, !68}
!599 = !{!600}
!600 = distinct !{!600, !601}
!601 = distinct !{!601, !"LVerDomain"}
!602 = !{!603}
!603 = distinct !{!603, !601}
!604 = distinct !{!604, !67, !68, !69}
!605 = distinct !{!605, !73}
!606 = distinct !{!606, !67, !68}
!607 = distinct !{!607, !67, !68}
!608 = !{!609}
!609 = distinct !{!609, !610}
!610 = distinct !{!610, !"LVerDomain"}
!611 = !{!612}
!612 = distinct !{!612, !610}
!613 = distinct !{!613, !67, !68, !69}
!614 = distinct !{!614, !73}
!615 = distinct !{!615, !67}
!616 = distinct !{!616, !67}
!617 = distinct !{!617, !73}
!618 = distinct !{!618, !67}
!619 = distinct !{!619, !67}
!620 = distinct !{!620, !73}
!621 = distinct !{!621, !67}
!622 = distinct !{!622, !73}
!623 = distinct !{!623, !67}
!624 = distinct !{!624, !67}
!625 = distinct !{!625, !67}
!626 = distinct !{!626, !73}
!627 = distinct !{!627, !67}
!628 = distinct !{!628, !67}
!629 = distinct !{!629, !73}
!630 = distinct !{!630, !67}
!631 = distinct !{!631, !67}
!632 = distinct !{!632, !67}
!633 = distinct !{!633, !67}
!634 = distinct !{!634, !73}
!635 = distinct !{!635, !67}
!636 = distinct !{!636, !73}
!637 = distinct !{!637, !67}
!638 = distinct !{!638, !67}
!639 = distinct !{!639, !67, !68, !69}
!640 = distinct !{!640, !67, !69, !68}
!641 = !{!642}
!642 = distinct !{!642, !643}
!643 = distinct !{!643, !"LVerDomain"}
!644 = !{!645}
!645 = distinct !{!645, !643}
!646 = distinct !{!646, !67, !68, !69}
!647 = distinct !{!647, !73}
!648 = distinct !{!648, !67, !68}
!649 = distinct !{!649, !67, !68}
!650 = !{!651}
!651 = distinct !{!651, !652}
!652 = distinct !{!652, !"LVerDomain"}
!653 = !{!654}
!654 = distinct !{!654, !652}
!655 = distinct !{!655, !67, !68, !69}
!656 = distinct !{!656, !73}
!657 = distinct !{!657, !67}
!658 = distinct !{!658, !67}
!659 = distinct !{!659, !73}
!660 = distinct !{!660, !67}
!661 = distinct !{!661, !67}
!662 = distinct !{!662, !73}
!663 = distinct !{!663, !67}
!664 = distinct !{!664, !73}
!665 = distinct !{!665, !67}
!666 = distinct !{!666, !67}
!667 = distinct !{!667, !67}
!668 = distinct !{!668, !73}
!669 = distinct !{!669, !67}
!670 = distinct !{!670, !67}
!671 = distinct !{!671, !73}
!672 = distinct !{!672, !67}
!673 = distinct !{!673, !67}
!674 = distinct !{!674, !67}
!675 = distinct !{!675, !67}
!676 = distinct !{!676, !73}
!677 = distinct !{!677, !67}
!678 = distinct !{!678, !73}
!679 = distinct !{!679, !67}
!680 = distinct !{!680, !67}
!681 = distinct !{!681, !67}
!682 = distinct !{!682, !73}
!683 = distinct !{!683, !67}
!684 = distinct !{!684, !67}
!685 = distinct !{!685, !73}
!686 = distinct !{!686, !67}
!687 = distinct !{!687, !67}
!688 = distinct !{!688, !67}
!689 = distinct !{!689, !67}
!690 = distinct !{!690, !73}
!691 = distinct !{!691, !67}
!692 = distinct !{!692, !73}
!693 = !{!694, !694, i64 0}
!694 = !{!"short", !6, i64 0}
!695 = distinct !{!695, !67}
!696 = !{!530, !5, i64 216}
!697 = !{!530, !5, i64 220}
!698 = !{!699, !38, i64 0}
!699 = !{!"_ZTSN2cv10AutoBufferIPKhLm136EEE", !38, i64 0, !20, i64 8, !6, i64 16}
!700 = !{!699, !20, i64 8}
!701 = distinct !{!701, !67}
!702 = distinct !{!702, !73}
!703 = distinct !{!703, !67}
!704 = distinct !{!704, !73}
!705 = distinct !{!705, !67}
!706 = distinct !{!706, !67}
!707 = distinct !{null}
!708 = distinct !{null}
!709 = !{!710, !18, i64 8}
!710 = !{!"_ZTSSt9type_info", !18, i64 8}
!711 = !{!712, !5, i64 228}
!712 = !{!"_ZTSN2cv12cpu_baseline18SymmRowSmallFilterIhiNS0_17SymmRowSmallNoVecEEE", !713, i64 0, !5, i64 228}
!713 = !{!"_ZTSN2cv12cpu_baseline9RowFilterIhiNS0_17SymmRowSmallNoVecEEE", !431, i64 0, !123, i64 16, !714, i64 224}
!714 = !{!"_ZTSN2cv12cpu_baseline17SymmRowSmallNoVecE"}
!715 = !{ptr @_ZN2cv12cpu_baseline9RowFilterIhiNS0_17SymmRowSmallNoVecEED2Ev}
!716 = !{!713, !5, i64 24}
!717 = !{!713, !5, i64 28}
!718 = distinct !{!718, !67}
!719 = distinct !{!719, !73}
!720 = distinct !{!720, !67}
!721 = distinct !{!721, !67}
!722 = distinct !{!722, !67}
!723 = distinct !{!723, !67}
!724 = distinct !{!724, !67}
!725 = !{!726}
!726 = distinct !{!726, !727}
!727 = distinct !{!727, !"LVerDomain"}
!728 = !{!729}
end_hunk_14
