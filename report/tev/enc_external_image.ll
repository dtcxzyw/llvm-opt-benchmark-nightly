Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_external_image?download=true
inline.NumInlined: 322
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3jxl30ConvertFromExternalNoSizeCheckEPKhmmmRKNS_13ColorEncodingEmm14JxlPixelFormatPNS_10ThreadPoolEPNS_11ImageBundleE:bb.a
.loopexit.loopexit:                               ; preds = %bb.g
  %.pre = load i32, ptr %11, align 8, !tbaa !25, !noalias !124
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f
  %i.bm = phi i32 [ %i.bj, %.loopexit.loopexit ], [ %i.am, %bb.f ] ; 2 uses
  %i.bn = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.ai, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.bo = load i32, ptr %i.w, align 8, !tbaa !25, !alias.scope !124
  %i.bp = icmp eq i32 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 116
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !124
  %i.bs = icmp eq i32 %i.bm, %i.br
  %i.bt = select i1 %i.bp, i1 %i.bs, i1 false
  br i1 %i.bt, label %bb.h, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread

bb.h:                                             ; preds = %.loopexit
  %i.bu = icmp ne i32 %i.bm, 0
  %i.bv = icmp ne i32 %i.bn, 0
  %or.cond.not20.i74 = and i1 %i.bv, %i.bu
  br i1 %or.cond.not20.i74, label %.lr.ph.i75, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit77.thread

.lr.ph.i75:                                       ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !78, !alias.scope !124
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !79, !alias.scope !124
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i75
  %.015.i76 = phi i64 [ 0, %.lr.ph.i75 ], [ %i.cl, %bb.i ] ; 3 uses
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !78, !noalias !124
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !79, !noalias !124
  %i.ce = mul i64 %i.cd, %.015.i76
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cf, i64 64) ]
  %i.cg = mul i64 %.015.i76, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ch, i64 64) ]
  %i.ci = load i32, ptr %11, align 8, !tbaa !25, !noalias !124
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.ch, ptr align 64 %i.cf, i64 %i.ck, i1 false), !noalias !124
  %i.cl = add nuw nsw i64 %.015.i76, 1            ; 2 uses
  %i.cm = load i32, ptr %i.al, align 4, !tbaa !26, !noalias !124
  %i.cn = zext i32 %i.cm to i64
  %i.co = icmp samesign ult i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.i, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit77.thread, !llvm.loop !0

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit77.thread: ; preds = %bb.i, %bb.c, %bb.h, %.critedge
  %i.cp = call i32 @_ZN3jxl11ImageBundle12SetFromImageEONS_6Image3IfEERKNS_13ColorEncodingE(ptr noundef nonnull align 8 dereferenceable(504) %9, ptr noundef nonnull align 8 dereferenceable(168) %11, ptr noundef nonnull align 8 dereferenceable(200) %4) #12 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.j, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread

bb.j:                                             ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit77.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 96
  %.pre134 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80 ; 2 uses
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %.pre134, i64 328
  %.pre136 = load ptr, ptr %.phi.trans.insert135, align 8, !tbaa !85 ; 4 uses
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %.pre134, i64 336
  %.pre138 = load ptr, ptr %.phi.trans.insert137, align 8, !tbaa !86 ; 4 uses
  switch i32 %i.b, label %._crit_edge [
    i32 4, label %bb.k
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %.not1516.i.i = icmp eq ptr %.pre136, %.pre138
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.l
  %.sroa.010.017.i.i = phi ptr [ %i.ct, %bb.l ], [ %.pre136, %bb.k ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !90
  %.not.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ct, %.pre138
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.18") align 8 %12, ptr noundef %i.a, i64 noundef %1, i64 noundef %2, i64 noundef 0) #11
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !92 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.n, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(60) %12, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #12
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.db = load i64, ptr %i.da, align 8, !tbaa !77, !noalias !125
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !77, !alias.scope !125
  %i.dc = add i32 %i.b, -1
  %i.dd = zext i32 %i.dc to i64
  %i.de = call i32 @_ZN3jxl30ConvertFromExternalNoSizeCheckEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %6, ptr noundef nonnull byval(%struct.JxlPixelFormat) align 8 %7, i64 noundef %i.dd, ptr noundef %8, ptr noundef nonnull %13) #11
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.o, label %.critedge70

bb.o:                                             ; preds = %bb.n
  %i.dg = call i32 @_ZN3jxl11ImageBundle8SetAlphaEONS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(504) %9, ptr noundef nonnull align 8 dereferenceable(56) %13) #12 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.p, label %.critedge70

bb.p:                                             ; preds = %bb.o
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cx) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.di = load i32, ptr %i.cu, align 8, !tbaa !92
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.q, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit78

bb.q:                                             ; preds = %bb.p
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cy) #12
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit78

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit78:       ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread

_ZNK3jxl11ImageBundle8HasAlphaEv.exit:            ; preds = %bb.l, %bb.k
  switch i32 %i.b, label %._crit_edge [
    i32 4, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread
    i32 2, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread
  ]

._crit_edge:                                      ; preds = %bb.j, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit
  %.not1516.i.i79 = icmp eq ptr %.pre136, %.pre138
  br i1 %.not1516.i.i79, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread, label %.lr.ph.i.i80

.lr.ph.i.i80:                                     ; preds = %._crit_edge, %bb.r
  %.sroa.010.017.i.i81 = phi ptr [ %i.dm, %bb.r ], [ %.pre136, %._crit_edge ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i81, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !90
  %.not.i.i82 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i82, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i80
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i81, i64 96 ; 2 uses
  %.not15.i.i83 = icmp eq ptr %i.dm, %.pre138
  br i1 %.not15.i.i83, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread, label %.lr.ph.i.i80

bb.s:                                             ; preds = %.lr.ph.i.i80
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.18") align 8 %14, ptr noundef %i.a, i64 noundef %1, i64 noundef %2, i64 noundef 0) #11
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !92 ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.t, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87:       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(60) %14, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.dr) #12
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !77, !noalias !126
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !77, !alias.scope !126
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !26 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %.not.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !78
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !79
  %i.ec = load i32, ptr %15, align 8, !tbaa !25   ; 3 uses
  %i.ed = zext i32 %i.ec to i64                   ; 3 uses
  %.not16.i = icmp eq i32 %i.ec, 0
  br i1 %.not16.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph14.i
  %min.iters.check = icmp ult i32 %i.ec, 8
  %n.vec = and i64 %i.ed, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ed
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %scalar.ph.a
  %.01012.us.i = phi i64 [ %i.ej, %scalar.ph.a ], [ 0, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.ee = mul i64 %.01012.us.i, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ee ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ef, i64 64) ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.eg, align 32, !tbaa !29
  store <4 x float> splat (float 1.000000e+00), ptr %i.eh, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %scalar.ph.a, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %.011.us.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ]
  br label %._crit_edge.us.i

scalar.ph.a:                                      ; preds = %._crit_edge.us.i, %middle.block
  %i.ej = add nuw nsw i64 %.01012.us.i, 1         ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %i.ej, %i.dx
  br i1 %exitcond.not.i.a, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph.us.i, !llvm.loop !1

._crit_edge.us.i:                                 ; preds = %scalar.ph.preheader, %._crit_edge.us.i
  %.011.i = phi i64 [ %i.ek, %._crit_edge.us.i ], [ %.011.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.011.i
  store float 1.000000e+00, ptr %16, align 4, !tbaa !29
  %i.ek = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.ek, %i.ed
  br i1 %exitcond18.not.i, label %scalar.ph.a, label %._crit_edge.us.i, !llvm.loop !121

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit:    ; preds = %scalar.ph.a, %bb.t, %.lr.ph14.i
  %i.el = call i32 @_ZN3jxl11ImageBundle8SetAlphaEONS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(504) %9, ptr noundef nonnull align 8 dereferenceable(56) %15) #12 ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dq) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  %i.en = load i32, ptr %i.dn, align 8, !tbaa !92
  %i.eo = icmp eq i32 %i.en, 0                    ; 2 uses
  br i1 %i.em, label %.critedge72, label %bb.u

bb.u:                                             ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit
  br i1 %i.eo, label %bb.v, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit88

bb.v:                                             ; preds = %bb.u
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dr) #12
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit88

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit88:       ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread

.critedge72:                                      ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit
  br i1 %i.eo, label %bb.w, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit89

bb.w:                                             ; preds = %.critedge72
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dr) #12
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit89

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit89:       ; preds = %.critedge72, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread

.critedge70:                                      ; preds = %bb.o, %bb.n
  %.sroa.091.0 = phi i32 [ 1, %bb.n ], [ %i.dg, %bb.o ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cx) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.ep = load i32, ptr %i.cu, align 8, !tbaa !92
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.x, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit90

bb.x:                                             ; preds = %.critedge70
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cy) #12
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit90

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit90:       ; preds = %.critedge70, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread

_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread:   ; preds = %.lr.ph, %bb.r, %._crit_edge, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit90, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit88, %bb.e, %.loopexit, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit77.thread, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit89, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit78, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit
  %.sroa.091.1 = phi i32 [ 0, %bb.r ], [ %i.cp, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit77.thread ], [ %i.el, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit88 ], [ %i.do, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87 ], [ %.sroa.091.0, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit90 ], [ %i.cv, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit ], [ 1, %.loopexit ], [ 1, %bb.e ], [ 0, %._crit_edge ], [ 0, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit ], [ 0, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit89 ], [ 0, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit78 ], [ 0, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit ], [ 1, %.lr.ph ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  %.pr = load i32, ptr %i.e, align 8, !tbaa !76
  %i.er = icmp eq i32 %.pr, 0
  br i1 %i.er, label %bb.y, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.y:                                             ; preds = %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #12
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit:        ; preds = %bb.b, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread, %bb.y
  %.sroa.091.2129 = phi i32 [ %.sroa.091.1, %bb.y ], [ %.sroa.091.1, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit86.thread ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit
  %.sroa.091.3 = phi i32 [ %.sroa.091.2129, %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit ], [ 1, %bb.a ]
  ret i32 %.sroa.091.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr") align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %5 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %6 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %7 = alloca %"class.jxl::StatusOr.18", align 8  ; 10 uses
  %8 = alloca %"class.jxl::Plane", align 8        ; 6 uses
  %9 = alloca %"class.jxl::StatusOr.18", align 8  ; 10 uses
  %10 = alloca %"class.jxl::Plane", align 8       ; 6 uses
  %11 = alloca %"class.jxl::StatusOr.18", align 8 ; 10 uses
  %12 = alloca %"class.jxl::Plane", align 8       ; 6 uses
  %13 = alloca %"class.jxl::Image3", align 8      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.a = trunc nuw i64 %2 to i32                  ; 3 uses
  %i.b = trunc nuw i64 %3 to i32                  ; 3 uses
  %i.c = or i64 %2, %3
  %or.cond = icmp ult i64 %i.c, 4294967296
  br i1 %or.cond, label %bb.b, label %.thread45

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !139
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %i.a, i32 noundef %i.b, i64 noundef 4) #12, !noalias !139
  %i.d = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, i64 noundef 0) #12, !noalias !139 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  br i1 %i.e, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.f, align 8, !tbaa !92, !alias.scope !139
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !92, !alias.scope !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77, !noalias !139
  store i64 %i.k, ptr %i.i, align 8, !tbaa !77, !alias.scope !139
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !139
  %.pre = load i32, ptr %i.f, align 8, !tbaa !92  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.n = icmp eq i32 %.pre, 0
  br i1 %i.n, label %bb.d, label %.thread45

.thread45:                                        ; preds = %bb.a, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  %i.o = phi i32 [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.o, ptr %i.p, align 8, !tbaa !76
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit30

bb.d:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(60) %7, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #12
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77, !noalias !140
  store i64 %i.u, ptr %i.s, align 8, !tbaa !77, !alias.scope !140
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !141
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %i.a, i32 noundef %i.b, i64 noundef 4) #12, !noalias !141
  %i.v = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, i64 noundef 0) #12, !noalias !141 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  br i1 %i.w, label %.critedge.i25, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %i.x, align 8, !tbaa !92, !alias.scope !141
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26

.critedge.i25:                                    ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !92, !alias.scope !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77, !noalias !141
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !77, !alias.scope !141
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26: ; preds = %bb.e, %.critedge.i25
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10, !noalias !141
  %.pre47 = load i32, ptr %i.x, align 8, !tbaa !92 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.af = icmp eq i32 %.pre47, 0
  br i1 %i.af, label %bb.f, label %.thread43

.thread43:                                        ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.pre47, ptr %i.ag, align 8, !tbaa !76
  br label %bb.l

bb.f:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(60) %9, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !77, !noalias !142
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !77, !alias.scope !142
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10, !noalias !143
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %i.a, i32 noundef %i.b, i64 noundef 4) #12, !noalias !143
  %i.am = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %1, i64 noundef 0) #12, !noalias !143 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl19ConvertFromExternalENS_4SpanIKhEEmmRKNS_13ColorEncodingEmm14JxlPixelFormatPNS_10ThreadPoolEPNS_11ImageBundleE:bb.a
.loopexit.loopexit:                               ; preds = %bb.i
  %.pre = load i32, ptr %11, align 8, !tbaa !25, !noalias !161
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h
  %i.cf = phi i32 [ %i.cc, %.loopexit.loopexit ], [ %i.bf, %bb.h ] ; 2 uses
  %i.cg = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.bb, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ch = load i32, ptr %i.w, align 8, !tbaa !25, !alias.scope !161
  %i.ci = icmp eq i32 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 116
  %i.ck = load i32, ptr %i.cj, align 4, !alias.scope !161
  %i.cl = icmp eq i32 %i.cf, %i.ck
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.j, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread

bb.j:                                             ; preds = %.loopexit
  %i.cn = icmp ne i32 %i.cf, 0
  %i.co = icmp ne i32 %i.cg, 0
  %or.cond.not20.i70 = and i1 %i.co, %i.cn
  br i1 %or.cond.not20.i70, label %.lr.ph.i71, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit73.thread

.lr.ph.i71:                                       ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78, !alias.scope !161
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !79, !alias.scope !161
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i71
  %.015.i72 = phi i64 [ 0, %.lr.ph.i71 ], [ %i.de, %bb.k ] ; 3 uses
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !78, !noalias !161
  %i.cw = load i64, ptr %i.cq, align 8, !tbaa !79, !noalias !161
  %i.cx = mul i64 %i.cw, %.015.i72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cy, i64 64) ]
  %i.cz = mul i64 %.015.i72, %i.cu
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.da, i64 64) ]
  %i.db = load i32, ptr %11, align 8, !tbaa !25, !noalias !161
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.da, ptr align 64 %i.cy, i64 %i.dd, i1 false), !noalias !161
  %i.de = add nuw nsw i64 %.015.i72, 1            ; 2 uses
  %i.df = load i32, ptr %i.be, align 4, !tbaa !26, !noalias !161
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.k, label %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit73.thread, !llvm.loop !0

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit73.thread: ; preds = %bb.k, %bb.c, %bb.j, %.critedge
  %i.di = call i32 @_ZN3jxl11ImageBundle12SetFromImageEONS_6Image3IfEERKNS_13ColorEncodingE(ptr noundef nonnull align 8 dereferenceable(504) %9, ptr noundef nonnull align 8 dereferenceable(168) %11, ptr noundef nonnull align 8 dereferenceable(200) %4) #12 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.l, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread

bb.l:                                             ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit73.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 96
  %.pre136 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80 ; 2 uses
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %.pre136, i64 328
  %.pre138 = load ptr, ptr %.phi.trans.insert137, align 8, !tbaa !85 ; 4 uses
  %.phi.trans.insert139 = getelementptr inbounds nuw i8, ptr %.pre136, i64 336
  %.pre140 = load ptr, ptr %.phi.trans.insert139, align 8, !tbaa !86 ; 4 uses
  switch i32 %i.b, label %._crit_edge [
    i32 4, label %bb.m
    i32 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %.not1516.i.i = icmp eq ptr %.pre138, %.pre140
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.sroa.010.017.i.i = phi ptr [ %i.dm, %bb.n ], [ %.pre138, %bb.m ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !90
  %.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.dm, %.pre140
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, label %.lr.ph.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.18") align 8 %12, ptr noundef %i.a, i64 noundef %2, i64 noundef %3, i64 noundef 0) #11
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !92 ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.p, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(60) %12, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.dr) #12
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !77, !noalias !162
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !77, !alias.scope !162
  %i.dv = add i32 %i.b, -1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = call i32 @_ZN3jxl19ConvertFromExternalEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %6, ptr noundef nonnull byval(%struct.JxlPixelFormat) align 8 %7, i64 noundef %i.dw, ptr noundef %8, ptr noundef nonnull %13) #11
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.q, label %.critedge66

bb.q:                                             ; preds = %bb.p
  %i.dz = call i32 @_ZN3jxl11ImageBundle8SetAlphaEONS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(504) %9, ptr noundef nonnull align 8 dereferenceable(56) %13) #12 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.r, label %.critedge66

bb.r:                                             ; preds = %bb.q
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dq) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.eb = load i32, ptr %i.dn, align 8, !tbaa !92
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.s, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit74

bb.s:                                             ; preds = %bb.r
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dr) #12
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit74

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit74:       ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread

_ZNK3jxl11ImageBundle8HasAlphaEv.exit:            ; preds = %bb.n, %bb.m
  switch i32 %i.b, label %._crit_edge [
    i32 4, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread
    i32 2, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread
  ]

._crit_edge:                                      ; preds = %bb.l, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit
  %.not1516.i.i75 = icmp eq ptr %.pre138, %.pre140
  br i1 %.not1516.i.i75, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread, label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %._crit_edge, %bb.t
  %.sroa.010.017.i.i77 = phi ptr [ %i.ef, %bb.t ], [ %.pre138, %._crit_edge ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i77, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !90
  %.not.i.i78 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i78, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i76
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i77, i64 96 ; 2 uses
  %.not15.i.i79 = icmp eq ptr %i.ef, %.pre140
  br i1 %.not15.i.i79, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread, label %.lr.ph.i.i76

bb.u:                                             ; preds = %.lr.ph.i.i76
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.18") align 8 %14, ptr noundef %i.a, i64 noundef %2, i64 noundef %3, i64 noundef 0) #11
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !92 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.v, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit83

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit83:       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(60) %14, i64 24, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.ek) #12
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.en = load i64, ptr %i.em, align 8, !tbaa !77, !noalias !163
  store i64 %i.en, ptr %i.el, align 8, !tbaa !77, !alias.scope !163
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !26 ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %.not.i84 = icmp eq i32 %i.ep, 0
  br i1 %.not.i84, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !78
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !79
  %i.ev = load i32, ptr %15, align 8, !tbaa !25   ; 3 uses
  %i.ew = zext i32 %i.ev to i64                   ; 3 uses
  %.not16.i = icmp eq i32 %i.ev, 0
  br i1 %.not16.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph14.i
  %min.iters.check = icmp ult i32 %i.ev, 8
  %n.vec = and i64 %i.ew, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ew
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %scalar.ph.a
  %.01012.us.i = phi i64 [ %i.fc, %scalar.ph.a ], [ 0, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.ex = mul i64 %.01012.us.i, %i.eu
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ex ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ey, i64 64) ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ez, align 32, !tbaa !29
  store <4 x float> splat (float 1.000000e+00), ptr %i.fa, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %scalar.ph.a, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %.011.us.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ]
  br label %._crit_edge.us.i

scalar.ph.a:                                      ; preds = %._crit_edge.us.i, %middle.block
  %i.fc = add nuw nsw i64 %.01012.us.i, 1         ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %i.fc, %i.eq
  br i1 %exitcond.not.i.a, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit, label %.lr.ph.us.i, !llvm.loop !1

._crit_edge.us.i:                                 ; preds = %scalar.ph.preheader, %._crit_edge.us.i
  %.011.i = phi i64 [ %i.fd, %._crit_edge.us.i ], [ %.011.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.011.i
  store float 1.000000e+00, ptr %16, align 4, !tbaa !29
  %i.fd = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.fd, %i.ew
  br i1 %exitcond18.not.i, label %scalar.ph.a, label %._crit_edge.us.i, !llvm.loop !158

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit:    ; preds = %scalar.ph.a, %bb.v, %.lr.ph14.i
  %i.fe = call i32 @_ZN3jxl11ImageBundle8SetAlphaEONS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(504) %9, ptr noundef nonnull align 8 dereferenceable(56) %15) #12 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ej) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  %i.fg = load i32, ptr %i.eg, align 8, !tbaa !92
  %i.fh = icmp eq i32 %i.fg, 0                    ; 2 uses
  br i1 %i.ff, label %.critedge68, label %bb.w

bb.w:                                             ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit
  br i1 %i.fh, label %bb.x, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit85

bb.x:                                             ; preds = %bb.w
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ek) #12
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit85

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit85:       ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread

.critedge68:                                      ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit
  br i1 %i.fh, label %bb.y, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit86

bb.y:                                             ; preds = %.critedge68
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ek) #12
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit86

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit86:       ; preds = %.critedge68, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread

.critedge66:                                      ; preds = %bb.q, %bb.p
  %.sroa.091.0 = phi i32 [ 1, %bb.p ], [ %i.dz, %bb.q ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dq) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.fi = load i32, ptr %i.dn, align 8, !tbaa !92
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.z, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87

bb.z:                                             ; preds = %.critedge66
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dr) #12
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87:       ; preds = %.critedge66, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread

_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread:   ; preds = %_ZN3jxl19ConvertFromExternalEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE.exit, %bb.t, %.lr.ph, %bb.f, %._crit_edge, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit83, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit85, %bb.g, %.loopexit, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit73.thread, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit86, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit74, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit
  %.sroa.091.1 = phi i32 [ 1, %.lr.ph ], [ %i.di, %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit73.thread ], [ %i.fe, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit85 ], [ %i.eh, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit83 ], [ %.sroa.091.0, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit87 ], [ %i.do, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit ], [ 1, %.loopexit ], [ 1, %bb.g ], [ 0, %bb.t ], [ 0, %._crit_edge ], [ 0, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit ], [ 0, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit86 ], [ 0, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit74 ], [ 0, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit ], [ 1, %bb.f ], [ 1, %_ZN3jxl19ConvertFromExternalEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE.exit ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  %.pr = load i32, ptr %i.e, align 8, !tbaa !76
  %i.fk = icmp eq i32 %.pr, 0
  br i1 %i.fk, label %bb.aa, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.aa:                                            ; preds = %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #12
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #12
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit:        ; preds = %bb.b, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread, %bb.aa
  %.sroa.091.2131 = phi i32 [ %.sroa.091.1, %bb.aa ], [ %.sroa.091.1, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit82.thread ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit
  %.sroa.091.3 = phi i32 [ %.sroa.091.2131, %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit ], [ 1, %bb.a ]
  ret i32 %.sroa.091.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl19ConvertFromExternalENS_4SpanIKhEEmmRKNS_13ColorEncodingEm14JxlPixelFormatPNS_10ThreadPoolEPNS_11ImageBundleE(ptr %0, i64 %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 noundef %5, ptr nofree noundef readonly byval(%struct.JxlPixelFormat) align 8 captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !95
  %i.c = icmp eq i32 %i.b, 1
  %i.d = select i1 %i.c, i64 1, i64 3
  %i.e = tail call i32 @_ZN3jxl19ConvertFromExternalENS_4SpanIKhEEmmRKNS_13ColorEncodingEmm14JxlPixelFormatPNS_10ThreadPoolEPNS_11ImageBundleE(ptr %0, i64 %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 noundef %i.d, i64 noundef %5, ptr noundef nonnull byval(%struct.JxlPixelFormat) align 8 %6, ptr noundef %7, ptr noundef %8) #11
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl14BufferToImageFERK14JxlPixelFormatmmPKvmPNS_10ThreadPoolEPNS_5PlaneIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = icmp ult i32 %i.b, 6
  br i1 %i.c, label %switch.lookup, label %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19BufferToImageBundleERK14JxlPixelFormatjjPKvmPNS_10ThreadPoolERKNS_13ColorEncodingEPNS_11ImageBundleE, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit

_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0.copyload = load i32, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.514.0.copyload = load i64, ptr %.sroa.514.0..sroa_idx, align 8 ; 3 uses
  %i.e = icmp ult i32 %.sroa.4.0.copyload, 6
  br i1 %i.e, label %switch.lookup10, label %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit.i

switch.lookup10:                                  ; preds = %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit
  %i.f = zext nneg i32 %.sroa.4.0.copyload to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl14BufferToImageFERK14JxlPixelFormatmmPKvmPNS_10ThreadPoolEPNS_5PlaneIfEE.7, i64 %i.f
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext13 = zext i8 %switch.load12 to i64
  %i.g = mul i64 %1, %switch.ext13
  br label %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit.i

_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit.i: ; preds = %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit, %switch.lookup10
  %.0.i.i = phi i64 [ %i.g, %switch.lookup10 ], [ 0, %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit ]
  %i.h = zext i32 %.sroa.0.0.copyload to i64
  %i.i = mul i64 %.0.i.i, %i.h                    ; 3 uses
  %i.j = icmp ugt i64 %.sroa.514.0.copyload, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit.i
  %i.k = add i64 %.sroa.514.0.copyload, -1
  %i.l = add i64 %i.k, %i.i
  %.fr.i = freeze i64 %i.l                        ; 2 uses
  %i.m = urem i64 %.fr.i, %.sroa.514.0.copyload
  %i.n = sub nuw i64 %.fr.i, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit.i
  %i.o = phi i64 [ %i.n, %bb.b ], [ %i.i, %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit.i ] ; 3 uses
  %i.p = icmp eq i64 %1, 0
  %i.q = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.p, %i.q
  br i1 %or.cond.i, label %_ZN3jxl19ConvertFromExternalEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %2, -1
  %i.s = mul i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.i
  %.not.i = icmp ne i64 %4, 0
  %i.u = icmp ult i64 %4, %i.t
  %or.cond38.i = select i1 %.not.i, i1 %i.u, i1 false
  %i.v = mul i64 %i.o, %2
  %i.w = icmp ugt i64 %4, %i.v
  %or.cond43.i = select i1 %or.cond38.i, i1 true, i1 %i.w
  br i1 %or.cond43.i, label %_ZN3jxl19ConvertFromExternalEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call i32 @_ZN3jxl30ConvertFromExternalNoSizeCheckEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE(ptr noundef %3, i64 noundef %1, i64 noundef %2, i64 noundef %i.o, i64 noundef %.0.i, ptr noundef nonnull byval(%struct.JxlPixelFormat) align 8 %0, i64 noundef 0, ptr noundef readonly %5, ptr noundef %6) #11
  br label %_ZN3jxl19ConvertFromExternalEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE.exit

_ZN3jxl19ConvertFromExternalEPKhmmmm14JxlPixelFormatmPNS_10ThreadPoolEPNS_5PlaneIfEE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.041.0.i = phi i32 [ %i.x, %bb.e ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.sroa.041.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl19BufferToImageBundleERK14JxlPixelFormatjjPKvmPNS_10ThreadPoolERKNS_13ColorEncodingEPNS_11ImageBundleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef nonnull align 8 dereferenceable(200) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = icmp ult i32 %i.b, 6
  br i1 %i.c, label %switch.lookup, label %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19BufferToImageBundleERK14JxlPixelFormatjjPKvmPNS_10ThreadPoolERKNS_13ColorEncodingEPNS_11ImageBundleE, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit

_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %i.e = zext i32 %1 to i64
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !95
  %i.i = icmp eq i32 %i.h, 1
  %i.j = select i1 %i.i, i64 1, i64 3
  %i.k = tail call i32 @_ZN3jxl19ConvertFromExternalENS_4SpanIKhEEmmRKNS_13ColorEncodingEmm14JxlPixelFormatPNS_10ThreadPoolEPNS_11ImageBundleE(ptr %3, i64 %4, i64 noundef %i.e, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(200) %6, i64 noundef %i.j, i64 noundef %.0.i, ptr noundef nonnull byval(%struct.JxlPixelFormat) align 8 %0, ptr noundef readonly %5, ptr noundef %7) #11 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit
  %i.m = tail call i32 @_ZNK3jxl11ImageBundle14VerifyMetadataEv(ptr noundef nonnull align 8 dereferenceable(504) %7) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit
  %.sroa.013.0 = phi i32 [ %i.m, %bb.b ], [ %i.k, %_ZN3jxl12_GLOBAL__N_116JxlDataTypeBytesE11JxlDataType.exit ]
  ret i32 %.sroa.013.0
}

declare i32 @_ZNK3jxl11ImageBundle14VerifyMetadataEv(ptr noundef nonnull align 8 dereferenceable(504)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

end_hunk_1
