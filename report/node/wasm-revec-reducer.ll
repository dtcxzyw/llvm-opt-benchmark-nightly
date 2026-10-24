Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-revec-reducer?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1948
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj:bb.a
bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1058) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.32) #21
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ht = load i8, ptr %i.hs, align 8, !range !12, !noundef !13
  %i.hu = trunc nuw i8 %i.ht to i1
  %.sroa.5743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.5743.0.copyload = load i8, ptr %.sroa.5743.0..sroa_idx, align 8
  %i.hv = icmp eq i8 %.sroa.5743.0.copyload, 0
  %or.cond950 = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %or.cond950, label %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit, label %.thread869

_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit: ; preds = %bb.bk
  %.sroa.0741.0.copyload = load i64, ptr %15, align 8
  switch i64 %.sroa.0741.0.copyload, label %.thread869 [
    i64 8, label %bb.bl
    i64 0, label %bb.bm
  ]

bb.bl:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit
  %i.hw = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.bx

bb.bm:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit
  %i.hx = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 0, i32 noundef %2)
  br label %bb.bx

.thread869:                                       ; preds = %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit, %bb.bk
  %i.hy = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 1, i32 noundef %2)
  br label %bb.bx

bb.bn:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.hz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1075) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.33) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0.0.copyload.i.i621 = load i32, ptr %i.b, align 4
  %.sroa.0.0.copyload.i2.i = load i32, ptr %1, align 4
  %i.ib = icmp eq i32 %.sroa.0.0.copyload.i.i621, %.sroa.0.0.copyload.i2.i
  br i1 %i.ib, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ic = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.id = load i8, ptr %i.ic, align 8, !range !12, !noundef !13
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ig = load i8, ptr %i.if, align 8, !range !12
  %i.ih = icmp eq i8 %i.ig, 0
  %or.cond920 = select i1 %i.ie, i1 %i.ih, i1 false
  %i.ii = load i64, ptr %15, align 8
  %i.ij = icmp eq i64 %i.ii, 0
  %or.cond922 = select i1 %or.cond920, i1 %i.ij, i1 false
  br i1 %or.cond922, label %bb.br, label %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit623.thread

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ik = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.bx

_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit623.thread: ; preds = %bb.bq
  %i.il = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 1, i32 noundef %2)
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bh, %bb.bh
  %i.im = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1085) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.34) #21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.io = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ip = load i8, ptr %i.io, align 8, !range !12, !noundef !13
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.is = load i8, ptr %i.ir, align 8, !range !12
  %i.it = icmp eq i8 %i.is, 0
  %or.cond926 = select i1 %i.iq, i1 %i.it, i1 false
  %i.iu = load i64, ptr %15, align 8
  %i.iv = icmp eq i64 %i.iu, 0
  %or.cond928 = select i1 %or.cond926, i1 %i.iv, i1 false
  br i1 %or.cond928, label %bb.bv, label %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit625.thread

bb.bv:                                            ; preds = %bb.bu
  %i.iw = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 0, i32 noundef %2)
  br label %bb.bx

_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit625.thread: ; preds = %bb.bu
  %i.ix = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 1, i32 noundef %2)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13) #23
  unreachable

bb.bx:                                            ; preds = %bb.bl, %bb.bm, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit625.thread, %bb.bv, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit623.thread, %bb.br, %.thread869
  %.14 = phi ptr [ %i.hy, %.thread869 ], [ %i.ix, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit625.thread ], [ %i.ik, %bb.br ], [ %i.il, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit623.thread ], [ %i.iw, %bb.bv ], [ %i.hw, %bb.bl ], [ %i.hx, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bg
  %.15 = phi ptr [ %.14, %bb.bx ], [ %i.hn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %.thread

bb.bz:                                            ; preds = %bb.bd
  %i.iy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1098) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.35) #21
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %.sroa.0215.0.copyload = load i8, ptr %i.ja, align 1
  %.not946 = icmp eq i8 %.sroa.0215.0.copyload, 20
  br i1 %.not946, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jb = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %.sroa.0213.0.copyload = load i8, ptr %i.jb, align 1
  %.not947 = icmp eq i8 %.sroa.0213.0.copyload, 20
  br i1 %.not947, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.jc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.ce, label %.thread

bb.ce:                                            ; preds = %bb.cd
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1103) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.36) #21
  br label %.thread

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.je = load ptr, ptr %0, align 8, !nonnull !13, !align !17
  call void @_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_6LoadOpEEC2EPKNS2_5GraphEPKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %i.je, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.jf = load ptr, ptr %0, align 8, !nonnull !13, !align !17
  call void @_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_6LoadOpEEC2EPKNS2_5GraphEPKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull %i.jf, ptr noundef nonnull %i.l)
  %i.jg = load ptr, ptr %16, align 8              ; 2 uses
  %.not948 = icmp eq ptr %i.jg, null
  br i1 %.not948, label %.thread876, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jh = load ptr, ptr %17, align 8              ; 2 uses
  %.not949 = icmp eq ptr %i.jh, null
  br i1 %.not949, label %.thread876, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !80
  %i.jk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !80
  %.not.i = icmp eq ptr %i.jj, %i.jl
  br i1 %.not.i, label %bb.ci, label %.thread876

bb.ci:                                            ; preds = %bb.ch
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !80
  %i.jo = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !80
  %.not5.i = icmp eq ptr %i.jn, %i.jp
  br i1 %.not5.i, label %bb.cj, label %.thread876

bb.cj:                                            ; preds = %bb.ci
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.js = load i8, ptr %i.jq, align 1, !noalias !80
  %i.jt = load i8, ptr %i.jr, align 1, !noalias !80
  %i.ju = xor i8 %i.jt, %i.js
  %i.jv = and i8 %i.ju, 127
  %i.jw = icmp eq i8 %i.jv, 0
  br i1 %i.jw, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit626, label %.thread876

_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit626: ; preds = %bb.cj
  %i.jx = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.jy = load i64, ptr %i.jx, align 8, !noalias !80 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ka = load i64, ptr %i.jz, align 8, !noalias !80 ; 2 uses
  %.not.i.i.not = icmp ult i64 %i.jy, %i.ka
  br i1 %.not.i.i.not, label %.thread876, label %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit627

_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit627: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit626
  %i.kb = sub nuw i64 %i.jy, %i.ka
  switch i64 %i.kb, label %.thread876 [
    i64 16, label %bb.ck
    i64 0, label %bb.cl
  ]

bb.ck:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit627
  %i.kc = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.cm

bb.cl:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit627
  %i.kd = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 0, i32 noundef %2)
  br label %bb.cm

.thread876:                                       ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit626, %_ZNK2v88internal8compiler10turboshaft10OffsetDiffeqEl.exit627, %bb.ci, %bb.ch, %bb.cj, %bb.cg, %bb.cf
  %i.ke = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext 1, i32 noundef %2)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.thread876
  %.19 = phi ptr [ %i.ke, %.thread876 ], [ %i.kc, %bb.ck ], [ %i.kd, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %.thread

bb.cn:                                            ; preds = %bb.bd
  %i.kf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1127) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.37) #21
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.kh = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21NewPackNodeAndRecurseERKNS2_9NodeGroupEmmj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i64 noundef 1, i64 noundef 1, i32 noundef %2)
  br label %.thread

bb.cq:                                            ; preds = %bb.bd
  %i.ki = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1135) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.38) #21
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.kk = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.0209.0.copyload = load i8, ptr %i.kk, align 4
  %.not945 = icmp eq i8 %.sroa.0209.0.copyload, 6
  br i1 %.not945, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %bb.cs
  %i.kl = load i16, ptr %i.hc, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.kn = load i16, ptr %i.km, align 2
  %.not565 = icmp eq i16 %i.kl, %i.kn
  br i1 %.not565, label %bb.cv, label %.critedge

.critedge:                                        ; preds = %bb.cs, %bb.ct
  %i.ko = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.cu, label %.thread

bb.cu:                                            ; preds = %.critedge
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj, i32 noundef 1139) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.39) #21
  br label %.thread

bb.cv:                                            ; preds = %bb.ct
  %i.kq = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree21NewPackNodeAndRecurseERKNS2_9NodeGroupEmmj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i64 noundef 0, i64 noundef %i.he, i32 noundef %2)
  br label %.thread

bb.cw:                                            ; preds = %bb.bd
  %i.kr = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ks = load i8, ptr %i.kr, align 4             ; 7 uses
  switch i8 %i.ks, label %bb.ds [
    i8 42, label %bb.cx
    i8 43, label %..critedge28.thread_crit_edge
    i8 44, label %bb.da
    i8 45, label %..critedge30.thread_crit_edge
    i8 38, label %bb.dd
    i8 39, label %..critedge32.thread_crit_edge
    i8 40, label %bb.dg
    i8 41, label %..critedge34.thread_crit_edge
    i8 34, label %bb.dj
    i8 35, label %..critedge36.thread_crit_edge
    i8 36, label %bb.dm
    i8 37, label %..critedge38.thread_crit_edge
    i8 0, label %bb.dp
    i8 3, label %bb.dp
    i8 4, label %bb.dp
    i8 6, label %bb.dp
    i8 7, label %bb.dp
    i8 8, label %bb.dp
    i8 9, label %bb.dp
    i8 10, label %bb.dp
    i8 11, label %bb.dp
    i8 12, label %bb.dp
    i8 13, label %bb.dp
    i8 16, label %bb.dp
    i8 17, label %bb.dp
    i8 18, label %bb.dp
    i8 19, label %bb.dp
    i8 20, label %bb.dp
    i8 21, label %bb.dp
    i8 23, label %bb.dp
    i8 22, label %bb.dp
    i8 25, label %bb.dp
    i8 24, label %bb.dp
    i8 30, label %bb.dp
    i8 31, label %bb.dp
  ]

..critedge28.thread_crit_edge:                    ; preds = %bb.cw
  %.phi.trans.insert988 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre989 = load i8, ptr %.phi.trans.insert988, align 4
  br label %.critedge28.thread

..critedge30.thread_crit_edge:                    ; preds = %bb.cw
  %.phi.trans.insert986 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre987 = load i8, ptr %.phi.trans.insert986, align 4
  br label %.critedge30.thread

..critedge32.thread_crit_edge:                    ; preds = %bb.cw
  %.phi.trans.insert984 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre985 = load i8, ptr %.phi.trans.insert984, align 4
  br label %.critedge32.thread

..critedge34.thread_crit_edge:                    ; preds = %bb.cw
  %.phi.trans.insert982 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre983 = load i8, ptr %.phi.trans.insert982, align 4
  br label %.critedge34.thread

..critedge36.thread_crit_edge:                    ; preds = %bb.cw
  %.phi.trans.insert980 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre981 = load i8, ptr %.phi.trans.insert980, align 4
  br label %.critedge36.thread

..critedge38.thread_crit_edge:                    ; preds = %bb.cw
  %.phi.trans.insert978 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre979 = load i8, ptr %.phi.trans.insert978, align 4
  br label %.critedge38.thread

bb.cx:                                            ; preds = %bb.cw
  %.0.copyload.i.i.i = load i64, ptr %i.l, align 4 ; 2 uses
  %i.kt = and i64 %.0.copyload.i.i.i, 1095216660735
  %i.ku = icmp ne i64 %i.kt, 184683593765
  %.not563944 = icmp eq i64 %i.k, 0
  %.not563 = select i1 %i.ku, i1 true, i1 %.not563944
  %i.kv = lshr i64 %.0.copyload.i.i.i, 32
  %i.kw = trunc i64 %i.kv to i8                   ; 2 uses
  br i1 %.not563, label %.critedge28.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i629 = load i32, ptr %i.kx, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i630 = load i32, ptr %i.ky, align 4
  %i.kz = icmp eq i32 %.sroa.0.0.copyload.i.i629, %.sroa.0.0.copyload.i.i630
  br i1 %i.kz, label %.critedge28, label %.critedge28.thread

.critedge28:                                      ; preds = %bb.cy
  %i.la = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %.thread

.critedge28.thread:                               ; preds = %..critedge28.thread_crit_edge, %bb.cx, %bb.cy
  %i.lb = phi i8 [ %.pre989, %..critedge28.thread_crit_edge ], [ %i.kw, %bb.cx ], [ %i.kw, %bb.cy ]
  %i.lc = icmp eq i8 %i.lb, %i.ks
  br i1 %i.lc, label %bb.cz, label %.thread

bb.cz:                                            ; preds = %.critedge28.thread
  %i.ld = icmp ne i32 %.sroa.0.0.copyload.i579, %.sroa.0.0.copyload.i580
  %i.le = zext i1 %i.ld to i8
  %i.lf = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree16NewForcePackNodeERKNS2_9NodeGroupENS2_13ForcePackNode13ForcePackTypeEj(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i8 noundef zeroext %i.le, i32 noundef %2)
  br label %.thread

bb.da:                                            ; preds = %bb.cw
  %.0.copyload.i.i.i631 = load i64, ptr %i.l, align 4 ; 2 uses
  %i.lg = and i64 %.0.copyload.i.i.i631, 1095216660735
  %i.lh = icmp ne i64 %i.lg, 193273528357
  %.not561943 = icmp eq i64 %i.k, 0
  %.not561 = select i1 %i.lh, i1 true, i1 %.not561943
  %i.li = lshr i64 %.0.copyload.i.i.i631, 32
  %i.lj = trunc i64 %i.li to i8                   ; 2 uses
  br i1 %.not561, label %.critedge30.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i633 = load i32, ptr %i.lk, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i634 = load i32, ptr %i.ll, align 4
  %i.lm = icmp eq i32 %.sroa.0.0.copyload.i.i633, %.sroa.0.0.copyload.i.i634
  br i1 %i.lm, label %.critedge30, label %.critedge30.thread

.critedge30:                                      ; preds = %bb.db
  %i.ln = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree11NewPackNodeERKNS2_9NodeGroupE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %.thread

.critedge30.thread:                               ; preds = %..critedge30.thread_crit_edge, %bb.da, %bb.db
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE:bb.a

_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge22.i.i.i.i, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit
  %.0 = phi ptr [ %i.ap, %_ZNSt13unordered_mapIN2v88internal8compiler10turboshaft7OpIndexENS1_10ZoneVectorIPNS3_8PackNodeEEENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S8_EEEE4findERSG_.exit ], [ null, %..loopexit_crit_edge22.i.i.i.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.lr.ph.i.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_22Simd128LoadTransformOpEEC2EPKNS2_5GraphEPKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr %2, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load i8, ptr %i.k, align 4
  %.not = icmp eq i8 %i.m, 60
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i8, ptr %i.n, align 4
  %.not46 = icmp eq i8 %i.o, 0
  br i1 %.not46, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %.sroa.023.0.copyload = load i8, ptr %i.p, align 1
  %.not67 = icmp eq i8 %.sroa.023.0.copyload, 1
  br i1 %.not67, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  store ptr null, ptr %0, align 8
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i56 = load i32, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %.sroa.0.0.copyload.i.i56 to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.0.0.copyload.i.i57 = load i32, ptr %i.w, align 4
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = zext i32 %.sroa.0.0.copyload.i.i57 to i64
  %i.aa = add i64 %i.y, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %.not69 = icmp eq i8 %i.ac, 75
  br i1 %.not69, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 5 uses
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i59 = load i32, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = zext i32 %.sroa.0.0.copyload.i.i59 to i64
  %i.aj = add i64 %i.ah, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr               ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = load i8, ptr %i.ak, align 4
  switch i8 %i.am, label %.thread [
    i8 69, label %bb.g
    i8 75, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = load i8, ptr %i.an, align 4
  %.not50 = icmp eq i8 %i.ao, 10
  br i1 %.not50, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_22Simd128LoadTransformOpEEC2EPKNS2_5GraphEPKS4_, i32 noundef 127) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.76) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %0, align 8
  br label %.thread

bb.k:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.0.0.copyload.i.i61 = load i32, ptr %i.ar, align 4
  %i.as = load ptr, ptr %i.f, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = zext i32 %.sroa.0.0.copyload.i.i61 to i64
  %i.av = add i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  store ptr %i.aw, ptr %i.al, align 8
  %i.ax = load i8, ptr %i.aw, align 4
  %.not73 = icmp eq i8 %i.ax, 75
  br i1 %.not73, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 4294967295               ; 2 uses
  %i.bb = xor i64 %i.ba, 4294967295
  %i.bc = icmp ugt i64 %i.ae, %i.bb
  br i1 %i.bc, label %.critedge53, label %bb.m

.critedge53:                                      ; preds = %bb.l
  store ptr null, ptr %0, align 8
  br label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bd = add nuw nsw i64 %i.ba, %i.ae
  store i64 %i.bd, ptr %i.a, align 8
  store ptr null, ptr %i.al, align 8
  br label %.thread

bb.n:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = xor i64 %i.bf, -1
  %i.bh = icmp ugt i64 %i.ae, %i.bg
  br i1 %i.bh, label %.critedge55, label %bb.o

.critedge55:                                      ; preds = %bb.n
  store ptr null, ptr %0, align 8
  br label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bi = add i64 %i.bf, %i.ae
  store i64 %i.bi, ptr %i.a, align 8
  store ptr null, ptr %i.al, align 8
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %.critedge, %bb.j, %.critedge53, %.critedge55, %bb.o, %bb.m, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal8compiler10turboshaft13StoreLoadInfoINS2_22Simd128LoadTransformOpEEmiERKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.100") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.not6 = icmp eq ptr %i.f, %i.h
  br i1 %.not6, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.j, align 1
  %i.n = load i8, ptr %i.l, align 1
  %i.o = xor i8 %i.n, %i.m
  %i.p = and i8 %i.o, 127
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.u = load i8, ptr %i.t, align 1
  %.not7 = icmp eq i8 %i.s, %i.u
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %.not.i = icmp ult i64 %i.w, %i.y               ; 2 uses
  %3 = sub nuw i64 %i.y, %i.w
  %i.z = sub nuw i64 %i.w, %i.y
  %.sink8.i = select i1 %.not.i, i64 %3, i64 %i.z
  %.sink.i = zext i1 %.not.i to i8
  store i64 %.sink8.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.sink = phi i8 [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aa, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_6LoadOpEEC2EPKNS2_5GraphEPKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr %2, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64                     ; 5 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, 2
  br i1 %i.o, label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit, label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i31 = load i32, ptr %i.p, align 4 ; 2 uses
  %.not40 = icmp eq i32 %.sroa.0.0.copyload.i.i31, -1
  br i1 %.not40, label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.thread, label %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit34

_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit
  store ptr null, ptr %0, align 8
  br label %bb.k

_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit34: ; preds = %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = zext i32 %.sroa.0.0.copyload.i.i31 to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr                 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.u, ptr %i.v, align 8
  %i.w = load i8, ptr %i.u, align 4
  switch i8 %i.w, label %bb.k [
    i8 69, label %bb.b
    i8 75, label %bb.i
  ]

bb.b:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit34
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i8, ptr %i.x, align 4
  %.not27 = icmp eq i8 %i.y, 10
  br i1 %.not27, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_22Simd128LoadTransformOpEEC2EPKNS2_5GraphEPKS4_, i32 noundef 127) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.76) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.i35 = load i32, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = zext i32 %.sroa.0.0.copyload.i.i35 to i64
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  store ptr %i.ag, ptr %i.v, align 8
  %i.ah = load i8, ptr %i.ag, align 4
  %.not43 = icmp eq i8 %i.ah, 75
  br i1 %.not43, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  %i.al = xor i64 %i.ak, 4294967295
  %i.am = icmp ult i64 %i.al, %i.d
  br i1 %i.am, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.g
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, %i.d
  store i64 %i.an, ptr %i.a, align 8
  store ptr null, ptr %i.v, align 8
  br label %bb.k

bb.i:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.d, %i.aq
  br i1 %i.ar, label %.critedge30, label %bb.j

.critedge30:                                      ; preds = %bb.i
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = add i64 %i.ap, %i.d
  store i64 %i.as, ptr %i.a, align 8
  store ptr null, ptr %i.v, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit34, %bb.e, %.critedge, %.critedge30, %bb.j, %bb.h, %bb.f, %_ZNK2v88internal8compiler10turboshaft6LoadOp5indexEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchSplatILi4ELi16ELi16EEEbPKhPiQaaaagtT_Li0EeqrmT0_T1_Li0EeqrmT0_T_Li0E(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 6 uses
  %i.b = and i8 %i.a, 3
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.preheader34, label %.loopexit

.preheader34:                                     ; preds = %bb.a
  %i.c = zext i8 %i.a to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 4 uses
  %i.f = or disjoint i64 %i.c, 1
  %i.g = zext i8 %i.e to i64
  %.not28 = icmp eq i64 %i.f, %i.g
  br i1 %.not28, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 1               ; 4 uses
  %i.j = or disjoint i64 %i.c, 2
  %i.k = zext i8 %i.i to i64
  %.not28.1 = icmp eq i64 %i.j, %i.k
  br i1 %.not28.1, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1               ; 4 uses
  %i.n = or disjoint i64 %i.c, 3
  %i.o = zext i8 %i.m to i64
  %.not28.2 = icmp eq i64 %i.n, %i.o
  br i1 %.not28.2, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %.not29 = icmp eq i8 %i.a, %i.q
  br i1 %.not29, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.preheader.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.s = load i8, ptr %i.r, align 1
  %.not29.1 = icmp eq i8 %i.e, %i.s
  br i1 %.not29.1, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.u = load i8, ptr %i.t, align 1
  %.not29.2 = icmp eq i8 %i.i, %i.u
  br i1 %.not29.2, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.w = load i8, ptr %i.v, align 1
  %.not29.3 = icmp eq i8 %i.m, %i.w
  br i1 %.not29.3, label %.critedge31, label %.loopexit

.critedge31:                                      ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 1
  %.not29.143 = icmp eq i8 %i.a, %i.y
  br i1 %.not29.143, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.critedge31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aa = load i8, ptr %i.z, align 1
  %.not29.1.1 = icmp eq i8 %i.e, %i.aa
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer12ProcessBlockERKNS2_5BlockE:bb.a
  %.sroa.0.0.copyload.i.i35.i = load i32, ptr %i.bm, align 4
  %i.bn = load ptr, ptr %i.as, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = zext i32 %.sroa.0.0.copyload.i.i35.i to i64
  %i.bq = add i64 %i.bo, %i.bp
  %i.br = inttoptr i64 %i.bq to ptr               ; 3 uses
  store ptr %i.br, ptr %i.q, align 8
  %i.bs = load i8, ptr %i.br, align 4
  %.not43.i = icmp eq i8 %i.bs, 75
  br i1 %.not43.i, label %bb.i, label %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = and i64 %i.bu, 4294967295               ; 2 uses
  %i.bw = xor i64 %i.bv, 4294967295
  %i.bx = icmp ult i64 %i.bw, %i.aq
  br i1 %i.bx, label %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.thread, label %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.sink.split

bb.j:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit34.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = xor i64 %i.bz, -1
  %i.cb = icmp ugt i64 %i.aq, %i.ca
  br i1 %i.cb, label %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.thread, label %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.sink.split

_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.sink.split: ; preds = %bb.j, %bb.i
  %.sink121 = phi i64 [ %i.bv, %bb.i ], [ %i.bz, %bb.j ]
  %i.cc = add i64 %.sink121, %i.aq
  store i64 %i.cc, ptr %i.o, align 8
  store ptr null, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit

_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.sink.split, %bb.h, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit34.i
  %i.cd = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE16_M_insert_uniqueIRKS6_EESt4pairISt17_Rb_tree_iteratorIS6_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.thread

_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.thread: ; preds = %bb.j, %bb.i, %bb.f, %bb.g, %bb.d, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.i, %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pr92.pre = load i8, ptr %i.aj, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.thread, %bb.b
  %i.ce = phi i8 [ %i.ak, %bb.b ], [ %.pr92.pre, %_ZN2v88internal8compiler10turboshaft13StoreLoadInfoINS2_7StoreOpEEC2EPKNS2_5GraphEPKS4_.exit.thread ]
  %i.cf = icmp eq i8 %i.ce, 36
  br i1 %i.cf, label %bb.k, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread

bb.k:                                             ; preds = %thread-pre-split
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ch = load i8, ptr %i.cg, align 4
  switch i8 %i.ch, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread [
    i8 66, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 58, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 32, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 47, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 48, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 33, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 34, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 44, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 45, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 30, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
    i8 31, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
  ]

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit: ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0.0.copyload.i.i37 = load i32, ptr %i.ci, align 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %.sroa.0.0.copyload.i.i38 = load i32, ptr %i.cj, align 4 ; 2 uses
  %i.ck = load ptr, ptr %i.i, align 8, !nonnull !13, !align !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = zext i32 %.sroa.0.0.copyload.i.i37 to i64 ; 2 uses
  %i.cp = add i64 %i.cn, %i.co
  %i.cq = inttoptr i64 %i.cp to ptr               ; 2 uses
  %i.cr = zext i32 %.sroa.0.0.copyload.i.i38 to i64 ; 2 uses
  %i.cs = add i64 %i.cn, %i.cr
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %.not102 = icmp eq i32 %.sroa.0.0.copyload.i.i37, %.sroa.0.0.copyload.i.i38
  br i1 %.not102, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
  %i.cu = load i8, ptr %i.cq, align 4             ; 2 uses
  %i.cv = load i8, ptr %i.ct, align 4
  %i.cw = icmp eq i8 %i.cu, %i.cv
  br i1 %i.cw, label %bb.m, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread

bb.m:                                             ; preds = %bb.l
  switch i8 %i.cu, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread [
    i8 37, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
    i8 36, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
    i8 39, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
    i8 42, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
    i8 41, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
  ]

_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit: ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.da = load i8, ptr %i.cz, align 4
  %i.db = icmp eq i8 %i.cy, %i.da
  br i1 %i.db, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread: ; preds = %bb.m, %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
  %i.dc = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.dd = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.de = icmp ult ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit, label %bb.n, !prof !15

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread
  %i.df = load ptr, ptr %i.u, align 8
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = add nsw i64 %i.dj, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.dk)
  %.pre.i.i = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread, %bb.n
  %i.dl = phi ptr [ %i.dc, %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread ], [ %.pre.i.i, %bb.n ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dm, ptr %i.r, align 8
  %.sroa.465.0.insert.shift = shl nuw i64 %i.cr, 32
  %.sroa.064.0.insert.insert = or disjoint i64 %.sroa.465.0.insert.shift, %i.co
  store i64 %.sroa.064.0.insert.insert, ptr %i.dl, align 4
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread: ; preds = %bb.c, %bb.k, %thread-pre-split, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit, %bb.l, %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit
  %i.dn = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.z
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = zext i16 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 3
  %i.ds = sub i32 %.sroa.074.0106, %i.dr          ; 2 uses
  %.not.i.i = icmp eq i32 %i.ds, %.sroa.01.0.copyload.i
  br i1 %.not.i.i, label %._crit_edge, label %bb.b

_ZSt9__advanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader: ; preds = %._crit_edge
  %i.dt = load ptr, ptr %i.f, align 8
  %i.du = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.dt) #24 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.d
  br i1 %i.dv, label %.loopexit, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %.thread.jt0
  %.sroa.062.0107 = phi ptr [ %i.du, %.lr.ph.i.preheader.lr.ph ], [ %i.gc, %.thread.jt0 ] ; 12 uses
  %i.ea = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.062.0107) #24 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.062.0107, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.062.0107, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !90
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !90
  %.not.i42 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not.i42, label %bb.o, label %.thread.jt0

bb.o:                                             ; preds = %.lr.ph.i.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.062.0107, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !90
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !90
  %.not6.i43 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not6.i43, label %bb.p, label %.thread.jt0

bb.p:                                             ; preds = %bb.o
  %i.el = load ptr, ptr %i.ec, align 8, !noalias !90 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load ptr, ptr %i.eb, align 8, !noalias !90 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i8, ptr %i.em, align 1, !noalias !90
  %i.eq = load i8, ptr %i.eo, align 1, !noalias !90
  %i.er = xor i8 %i.eq, %i.ep
  %i.es = and i8 %i.er, 127
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.q, label %.thread.jt0

bb.q:                                             ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 6
  %i.ev = load i8, ptr %i.eu, align 2, !noalias !90
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  %i.ex = load i8, ptr %i.ew, align 2, !noalias !90
  %.not7.i = icmp eq i8 %i.ev, %i.ex
  br i1 %.not7.i, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit, label %.thread.jt0

_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit: ; preds = %bb.q
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.062.0107, i64 56
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !90 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !90 ; 2 uses
  %.not.i.i44 = icmp uge i64 %i.ez, %i.fb
  %i.fc = sub nuw i64 %i.ez, %i.fb
  %i.fd = icmp eq i64 %i.fc, 16
  %or.cond = select i1 %.not.i.i44, i1 %i.fd, i1 false
  br i1 %or.cond, label %bb.r, label %.thread.jt0

bb.r:                                             ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit
  %i.fe = load ptr, ptr %i.i, align 8, !nonnull !13, !align !17
  %i.ff = ptrtoint ptr %i.en to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = sub i64 %i.ff, %i.fi
  %i.fk = ptrtoint ptr %i.el to i64
  %i.fl = sub i64 %i.fk, %i.fi
  %i.fm = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.fn = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.fo = icmp ult ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.fp = load ptr, ptr %i.dz, align 8
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3
  %i.fu = add nsw i64 %i.ft, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 noundef %i.fu)
  %.pre.i.i45 = load ptr, ptr %i.dw, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46: ; preds = %bb.r, %bb.s
  %i.fv = phi ptr [ %i.fm, %bb.r ], [ %.pre.i.i45, %bb.s ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fw, ptr %i.dw, align 8
  %.sroa.4.0.insert.ext = shl i64 %i.fl, 32
  %.sroa.054.0.insert.ext = and i64 %i.fj, 4294967295
  %.sroa.054.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.054.0.insert.ext
  store i64 %.sroa.054.0.insert.insert, ptr %i.fv, align 4
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46, %.lr.ph.i47
  %.05.i = phi i64 [ %i.fy, %.lr.ph.i47 ], [ 0, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46 ] ; 2 uses
  %.sroa.02.04.i = phi ptr [ %i.fx, %.lr.ph.i47 ], [ %.sroa.062.0107, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46 ]
  %i.fx = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.04.i) #24 ; 2 uses
  %i.fy = add nuw nsw i64 %.05.i, 1
  %i.fz = icmp eq ptr %i.fx, %i.d
  br i1 %i.fz, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit, label %.lr.ph.i47, !llvm.loop !87

_ZSt10__distanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit: ; preds = %.lr.ph.i47
  %i.ga = icmp eq i64 %.05.i, 0
  br i1 %i.ga, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit
  %i.gb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.062.0107) #24
  br label %.thread.jt0, !llvm.loop !88

.thread.jt0:                                      ; preds = %bb.p, %bb.o, %.lr.ph.i.preheader, %bb.q, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit, %.preheader.preheader
  %.sink = phi ptr [ %i.gb, %.preheader.preheader ], [ %.sroa.062.0107, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit ], [ %.sroa.062.0107, %bb.q ], [ %.sroa.062.0107, %.lr.ph.i.preheader ], [ %.sroa.062.0107, %bb.o ], [ %.sroa.062.0107, %bb.p ]
  %i.gc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sink) #24 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.d
  br i1 %i.gd, label %.loopexit, label %.lr.ph.i.preheader, !llvm.loop !88

.loopexit:                                        ; preds = %.thread.jt0, %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit, %bb.a, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader, %._crit_edge
  %i.ge = load ptr, ptr %i.e, align 8
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.v8::internal::ZoneVector.58", align 8 ; 7 uses
  %2 = alloca %"class.v8::internal::compiler::turboshaft::NodeGroup", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::turboshaft::SLPTree", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.039.045 = phi ptr [ %i.r, %.lr.ph ], [ %i.l, %.lr.ph.preheader ]
  %i.r = getelementptr inbounds i8, ptr %.sroa.039.045, i64 -8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer12ProcessBlockERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(100) %i.s)
  %i.t = icmp eq ptr %i.r, %i.e
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv, i32 noundef 1474) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.53) #21
  br label %bb.t

bb.e:                                             ; preds = %bb.b, %._crit_edge
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.54) #21
  %i.ad = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not46 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not46, label %._crit_edge50, label %.lr.ph49

._crit_edge50:                                    ; preds = %.lr.ph49, %bb.f
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.58) #21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not3051 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not3051, label %.loopexit, label %.lr.ph54

.lr.ph49:                                         ; preds = %bb.f, %.lr.ph49
  %.02947 = phi ptr [ %i.az, %.lr.ph49 ], [ %i.ad, %bb.f ] ; 2 uses
  %i.aj = load i64, ptr %.02947, align 4          ; 4 uses
  %.sroa.037.0.extract.trunc = trunc i64 %i.aj to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.aj, 32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55) #21
  %i.ak = lshr i32 %.sroa.037.0.extract.trunc, 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.ak) #21
  %i.al = load ptr, ptr %i.b, align 8, !nonnull !13, !align !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.aj, 4294967295
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = inttoptr i64 %i.aq to ptr
  tail call void @_ZNK2v88internal8compiler10turboshaft9Operation5PrintEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ar) #21
  %sum.shift = lshr i64 %i.aj, 36
  %i.as = trunc nuw nsw i64 %sum.shift to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.as) #21
  %i.at = load ptr, ptr %i.b, align 8, !nonnull !13, !align !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %.sroa.5.0.extract.shift, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  tail call void @_ZNK2v88internal8compiler10turboshaft9Operation5PrintEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ay) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57) #21
  %i.az = getelementptr inbounds nuw i8, ptr %.02947, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ae
  br i1 %.not, label %._crit_edge50, label %.lr.ph49

.lr.ph54:                                         ; preds = %._crit_edge50, %.lr.ph54
  %.02852 = phi ptr [ %i.bd, %.lr.ph54 ], [ %i.ag, %._crit_edge50 ] ; 2 uses
  %i.ba = load i64, ptr %.02852, align 4          ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ba to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.59) #21
  %i.bb = lshr i32 %.sroa.0.0.extract.trunc, 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.60, i32 noundef %i.bb) #21
  %sum.shift44 = lshr i64 %i.ba, 36
  %i.bc = trunc nuw nsw i64 %sum.shift44 to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.bc) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %.02852, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.bd, %i.ai
  br i1 %.not30, label %.loopexit, label %.lr.ph54

.loopexit:                                        ; preds = %.lr.ph54, %._crit_edge50, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.be = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.bf = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 4 uses
  store ptr %i.bh, ptr %1, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i"

"_ZZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKcENK3$_1clEPKNS2_8PackNodeE.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE6insertIS9_Li0EEESt4pairINSG_8iteratorEbERKT_.exit.i32, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE8containsIS9_EEbRKT_.exit.thread7.i46, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gz = getelementptr inbounds nuw i8, ptr %.017.i, i64 8 ; 2 uses
  %.not.i33 = icmp eq ptr %i.gz, %i.dr
  br i1 %.not.i33, label %._crit_edge.i34, label %.lr.ph.i6

"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit": ; preds = %bb.s, %._crit_edge21.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPKN2v88internal8compiler10turboshaft8PackNodeEEENS0_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE7deallocEv.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %"_ZN2v88internal8compiler10turboshaft7ForEachIZNS2_17WasmRevecAnalyzer5PrintEPKcE3$_1EEvT_RKNS0_16ZoneUnorderedMapINS2_7OpIndexENS0_10ZoneVectorIPNS2_8PackNodeEEENS_4base4hashISA_EESt8equal_toISA_EEE.exit"
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft8PackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #21
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft8PackNodeEA_S6_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = shl nuw nsw i64 %1, 2
  %i.q = add i64 %i.p, %i.o
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.q, %i.r
  %i.t = and i64 %i.s, -4
  %i.u = add i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #21
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !194

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !15

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #23
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
end_hunk_3
