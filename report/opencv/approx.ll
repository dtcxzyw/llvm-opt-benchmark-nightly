Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/approx?download=true
inline.NumInlined: 338
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv11approxPolyNERKNS_11_InputArrayERKNS_12_OutputArrayEifb:bb.a
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0235.0, i64 %i.ll ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !83 ; 2 uses
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0235.0, i64 %i.lp ; 2 uses
  store i8 -1, ptr %i.lm, align 4, !tbaa !70
  store i8 0, ptr %i.iy, align 4, !tbaa !70
  store i8 0, ptr %i.lq, align 4, !tbaa !70
  %i.lr = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !82
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0235.0, i64 %i.lt
  store i8 0, ptr %i.lu, align 4, !tbaa !70
  store i32 %i.lo, ptr %i.lj, align 4, !tbaa !83
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !82
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !82
  br label %bb.ci

bb.ci:                                            ; preds = %bb.bw, %bb.ch, %bb.cc
  %.293 = phi i32 [ %i.lh, %bb.ch ], [ %.091271, %bb.bw ], [ %.091271, %bb.cc ] ; 3 uses
  %.390 = phi float [ %.188, %bb.ch ], [ %.087272, %bb.bw ], [ %.087272, %bb.cc ]
  %i.ly = icmp sgt i32 %.293, %2
  br i1 %i.ly, label %bb.bv, label %.thread251

.thread251:                                       ; preds = %bb.ci, %bb.cg, %.loopexit258
  %.091.lcssa = phi i32 [ %i.cy, %.loopexit258 ], [ %.091271, %bb.cg ], [ %.293, %bb.ci ]
  %i.lz = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cj unwind label %bb.bo

bb.cj:                                            ; preds = %.thread251
  br i1 %i.lz, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ma = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.cl unwind label %bb.bo

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.095 = phi i32 [ %i.ae, %bb.cj ], [ %i.ma, %bb.ck ] ; 2 uses
  %i.mb = and i32 %.095, 31
  %i.mc = or disjoint i32 %i.mb, 32
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1, i32 noundef %.091.lcssa, i32 noundef %i.mc, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.cm unwind label %bb.bo

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.md = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc195 unwind label %bb.cp

.noexc195:                                        ; preds = %bb.cm
  %i.me = icmp eq i32 %i.md, 65536
  br i1 %i.me, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.noexc195
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !15, !noalias !90
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %i.mg)
          to label %_ZNK2cv11_InputArray6getMatEi.exit198 unwind label %bb.cp

bb.co:                                            ; preds = %.noexc195
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit198 unwind label %bb.cp

_ZNK2cv11_InputArray6getMatEi.exit198:            ; preds = %bb.cn, %bb.co
  %i.mh = icmp eq i32 %.095, 4
  %i.mi = load i32, ptr %i.bj, align 8, !tbaa !69 ; 3 uses
  %i.mj = icmp sgt i32 %i.mi, 0                   ; 2 uses
  br i1 %i.mh, label %.preheader, label %.preheader255

.preheader255:                                    ; preds = %_ZNK2cv11_InputArray6getMatEi.exit198
  br i1 %i.mj, label %.lr.ph278, label %.loopexit

.lr.ph278:                                        ; preds = %.preheader255
  %i.mk = getelementptr inbounds nuw i8, ptr %25, i64 24
  br label %bb.ct

.preheader:                                       ; preds = %_ZNK2cv11_InputArray6getMatEi.exit198
  br i1 %i.mj, label %.lr.ph281, label %.loopexit

.lr.ph281:                                        ; preds = %.preheader
  %i.ml = getelementptr inbounds nuw i8, ptr %25, i64 24
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  br label %bb.cz

bb.cq:                                            ; preds = %.lr.ph281, %bb.cs
  %i.mn = phi i32 [ %i.mi, %.lr.ph281 ], [ %i.nc, %bb.cs ]
  %indvars.iv306 = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next307, %bb.cs ] ; 2 uses
  %.082279 = phi i32 [ 0, %.lr.ph281 ], [ %.1, %bb.cs ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0235.0, i64 %indvars.iv306 ; 3 uses
  %i.mp = load i8, ptr %i.mo, align 4, !tbaa !70
  %.not149 = icmp eq i8 %i.mp, -1
  br i1 %.not149, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !93
  %i.ms = call float @llvm.round.f32(float %i.mr)
  %i.mt = fptosi float %i.ms to i32
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !94
  %i.mw = call float @llvm.round.f32(float %i.mv)
  %i.mx = fptosi float %i.mw to i32
  %i.my = load ptr, ptr %i.ml, align 8, !tbaa !37
  %i.mz = sext i32 %.082279 to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.my, i64 %i.mz
  %.sroa.5.0.insert.ext = zext i32 %i.mx to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.mt to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.na, align 4
  %i.nb = add nsw i32 %.082279, 1
  %.pre311 = load i32, ptr %i.bj, align 8, !tbaa !69
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.nc = phi i32 [ %.pre311, %bb.cr ], [ %i.mn, %bb.cq ] ; 2 uses
  %.1 = phi i32 [ %i.nb, %bb.cr ], [ %.082279, %bb.cq ]
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %i.nd = sext i32 %i.nc to i64
  %i.ne = icmp slt i64 %indvars.iv.next307, %i.nd
  br i1 %i.ne, label %bb.cq, label %.loopexit, !llvm.loop !95

bb.ct:                                            ; preds = %.lr.ph278, %bb.cv
  %i.nf = phi i32 [ %i.mi, %.lr.ph278 ], [ %i.no, %bb.cv ]
  %indvars.iv303 = phi i64 [ 0, %.lr.ph278 ], [ %indvars.iv.next304, %bb.cv ] ; 2 uses
  %.2276 = phi i32 [ 0, %.lr.ph278 ], [ %.3, %bb.cv ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [20 x i8], ptr %.sroa.0235.0, i64 %indvars.iv303 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 4, !tbaa !70
  %.not148 = icmp eq i8 %i.nh, -1
  br i1 %.not148, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ni = load ptr, ptr %i.mk, align 8, !tbaa !37
  %i.nj = sext i32 %.2276 to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.nm = load i64, ptr %i.nl, align 4
  store i64 %i.nm, ptr %i.nk, align 4
  %i.nn = add nsw i32 %.2276, 1
  %.pre310 = load i32, ptr %i.bj, align 8, !tbaa !69
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.no = phi i32 [ %.pre310, %bb.cu ], [ %i.nf, %bb.ct ] ; 2 uses
  %.3 = phi i32 [ %i.nn, %bb.cu ], [ %.2276, %bb.ct ]
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = icmp slt i64 %indvars.iv.next304, %i.np
  br i1 %i.nq, label %bb.ct, label %.loopexit, !llvm.loop !96

.loopexit:                                        ; preds = %bb.cv, %bb.cs, %.preheader255, %.preheader
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.nr = load ptr, ptr %22, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i203, label %_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %.loopexit
  %i.ns = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !99
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nw) #17
  br label %_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit

_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit:       ; preds = %.loopexit, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.nx = ptrtoint ptr %.sroa.0235.0 to i64
  %i.ny = sub i64 %.sroa.25.0, %i.nx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.0, i64 noundef %i.ny) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !58
  %.not.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ob = landingpad { ptr, i32 }
          catch ptr null
  %i.oc = extractvalue { ptr, i32 } %i.ob, 0
  call void @__clang_call_terminate(ptr %i.oc) #19
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.cz:                                            ; preds = %bb.cd, %bb.ce, %bb.bu, %bb.bx, %bb.cp, %bb.bo
  %.pn155.pn = phi { ptr, i32 } [ %i.ir, %bb.bu ], [ %i.ja, %bb.bx ], [ %i.mm, %bb.cp ], [ %i.ei, %bb.bo ], [ %i.ld, %bb.cd ], [ %i.le, %bb.ce ] ; 2 uses
  %i.od = load ptr, ptr %22, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i.i204 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i204, label %_ZNSt14priority_queueI7changesSt6vectorIS0_SaIS0_EESt7greaterIS0_EED2Ev.exit205, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oe = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !99
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %i.od to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.oi) #17
  br label %_ZNSt14priority_queueI7changesSt6vectorIS0_SaIS0_EESt7greaterIS0_EED2Ev.exit205

_ZNSt14priority_queueI7changesSt6vectorIS0_SaIS0_EESt7greaterIS0_EED2Ev.exit205: ; preds = %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %.not.i.i.i206 = icmp eq ptr %.sroa.0235.0, null
  br i1 %.not.i.i.i206, label %_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit207, label %bb.db

bb.db:                                            ; preds = %_ZNSt14priority_queueI7changesSt6vectorIS0_SaIS0_EESt7greaterIS0_EED2Ev.exit205
  %i.oj = ptrtoint ptr %.sroa.0235.0 to i64
  %i.ok = sub i64 %.sroa.25.0, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.0, i64 noundef %i.ok) #17
  br label %_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit207

_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit207:    ; preds = %bb.bn, %_ZNSt14priority_queueI7changesSt6vectorIS0_SaIS0_EESt7greaterIS0_EED2Ev.exit205, %bb.db, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.aa
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %.pn129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %.pn140, %bb.bj ], [ %.pn138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %i.aq, %bb.aj ], [ %.pn133, %bb.ax ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %i.ag, %bb.aa ], [ %i.eh, %bb.bn ], [ %.pn155.pn, %_ZNSt14priority_queueI7changesSt6vectorIS0_SaIS0_EESt7greaterIS0_EED2Ev.exit205 ], [ %.pn155.pn, %bb.db ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn155.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn, %_ZNSt6vectorI10neighboursSaIS0_EED2Ev.exit207 ], [ %.pn127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %i.w, %bb.s ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn155.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2cv15isContourConvexERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef double @_ZN2cv11contourAreaERKNS_11_InputArrayEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14priority_queueI7changesSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !101
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !100
  %.pre = load ptr, ptr %0, align 8, !tbaa !88
  br label %_ZNSt6vectorI7changesSaIS0_EE9push_backEOS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !97     ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorI7changesSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #16
  unreachable

_ZNKSt6vectorI7changesSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #18 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !101
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI7changesSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorI7changesSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorI7changesSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorI7changesSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !101, !alias.scope !102
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7changesSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !106

_ZNSt6vectorI7changesSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorI7changesSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorI7changesSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI7changesSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI7changesSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #17
  br label %_ZNSt6vectorI7changesSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7changesSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorI7changesSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !97
  store ptr %i.v, ptr %i.a, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !99
  br label %_ZNSt6vectorI7changesSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7changesSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.b, %_ZNSt6vectorI7changesSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %i.aa = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorI7changesSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 3 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorI7changesSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %.sroa.02.0.copyload.i = load i64, ptr %i.ac, align 4 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.sroa.4.0.copyload.i = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1                   ; 2 uses
  %.sroa.012.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.02.0.copyload.i, 32
  %.sroa.012.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.012.sroa.3.0.extract.shift.i.i to i32
  %i.ai = icmp sgt i64 %i.ag, 1
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP7changesSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorI7changesSaIS0_EE9push_backEOS0_.exit
  %.sroa.012.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.02.0.copyload.i to i32
  %i.aj = bitcast i32 %.sroa.012.sroa.0.0.extract.trunc.i.i to float ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i, %.lr.ph.i.i
  %.022.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %.0923.i78.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i ] ; 4 uses
  %.0923.in.i.i = add nsw i64 %.022.i.i, -1
  %.0923.i78.i = lshr i64 %.0923.in.i.i, 1        ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.0923.i78.i ; 3 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !84 ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.aj
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = fcmp oeq float %i.al, %i.aj
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP7changesSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !86
  %i.aq = icmp sgt i32 %i.ap, %.sroa.012.sroa.3.0.extract.trunc.i.i
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP7changesSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i, %bb.f
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %.022.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !101
  %.not.i = icmp eq i64 %.0923.i78.i, 0
  br i1 %.not.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP7changesSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit, label %bb.f, !llvm.loop !107

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP7changesSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i, %_ZNSt6vectorI7changesSaIS0_EE9push_backEOS0_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ah, %_ZNSt6vectorI7changesSaIS0_EE9push_backEOS0_.exit ], [ %.022.i.i, %bb.g ], [ 0, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i ], [ %.022.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI7changesEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i ]
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %.0.lcssa.i.i ; 2 uses
  store i64 %.sroa.02.0.copyload.i, ptr %i.as, align 4
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store <2 x float> %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14priority_queueI7changesSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 16
end_hunk_0
