Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/butteraugli?download=true
inline.NumInlined: 2552
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN3jxl6N_SSE215SeparateMFAndHFERKNS_17ButteraugliParamsEPNS_6Image3IfEEPNS_5PlaneIfEEPNS_8BlurTempE:bb.a
  %i.y = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #45 ; 0 uses
  %i.z = load i64, ptr %i.u, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46, !noalias !793
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %i.a, i32 noundef %i.d, i64 noundef 4) #45, !noalias !793
  %i.ab = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %i.g, i64 noundef 0) #45, !noalias !793 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  br i1 %i.ac, label %.critedge.i119, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.ab, ptr %i.ad, align 8, !tbaa !77, !alias.scope !793
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit120

.critedge.i119:                                   ; preds = %bb.c
  store i32 0, ptr %i.ad, align 8, !tbaa !77, !alias.scope !793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af) #45
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !78, !noalias !793
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !78, !alias.scope !793
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit120

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit120: ; preds = %bb.d, %.critedge.i119
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aj) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46, !noalias !793
  %i.ak = load i32, ptr %i.ad, align 8, !tbaa !77 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.preheader148, label %.critedge.thread

.preheader148:                                    ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(60) %8, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an) #45
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !78, !noalias !794
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !78, !alias.scope !794
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.at = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.am) #45 ; 0 uses
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !78
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.au, ptr %i.av, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not163 = icmp eq i32 %i.a, 0                  ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br i1 %.not, label %._crit_edge153.thread191, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader148
  br i1 %.not163, label %._crit_edge153.thread, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph152
  %i.bd = add nsw i64 %i.b, -1
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %xtraiter = and i64 %i.bf, 3                    ; 3 uses
  %i.bg = icmp ult i32 %i.a, 13
  %unroll_iter = and i64 %i.bf, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod193 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0112151.us = phi i64 [ %i.cj, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !69
  %i.bi = mul i64 %i.bh, %.0112151.us
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bj, i64 64) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !68
  %i.bm = load i64, ptr %i.bc, align 8, !tbaa !69
  %i.bn = mul i64 %i.bm, %.0112151.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bo, i64 64) ]
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.0113150.us = phi i64 [ %i.ce, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.0113150.us
  %i.bq = load <4 x float>, ptr %i.bp, align 64, !tbaa !79
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.0113150.us
  store <4 x float> %i.bq, ptr %i.br, align 64, !tbaa !79
  %i.bs = or disjoint i64 %.0113150.us, 4         ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bs
  %i.bu = load <4 x float>, ptr %i.bt, align 16, !tbaa !79
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bs
  store <4 x float> %i.bu, ptr %i.bv, align 16, !tbaa !79
  %i.bw = or disjoint i64 %.0113150.us, 8         ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bw
  %i.by = load <4 x float>, ptr %i.bx, align 32, !tbaa !79
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bw
  store <4 x float> %i.by, ptr %i.bz, align 32, !tbaa !79
  %i.ca = or disjoint i64 %.0113150.us, 12        ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ca
  %i.cc = load <4 x float>, ptr %i.cb, align 16, !tbaa !79
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ca
  store <4 x float> %i.cc, ptr %i.cd, align 16, !tbaa !79
  %i.ce = add nuw nsw i64 %.0113150.us, 16        ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !781

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.0113150.us.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.ce, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod193)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.0113150.us.epil = phi i64 [ %.0113150.us.epil.init, %.epil.preheader ], [ %i.ci, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.0113150.us.epil
  %i.cg = load <4 x float>, ptr %i.cf, align 16, !tbaa !79
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.0113150.us.epil
  store <4 x float> %i.cg, ptr %i.ch, align 16, !tbaa !79
  %i.ci = add nuw nsw i64 %.0113150.us.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.e, !llvm.loop !782

._crit_edge.us:                                   ; preds = %bb.e, %._crit_edge.us.unr-lcssa
  %i.cj = add nuw nsw i64 %.0112151.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, %i.e
  br i1 %exitcond.not, label %._crit_edge153, label %.lr.ph.us, !llvm.loop !783

._crit_edge153:                                   ; preds = %._crit_edge.us
  %i.ck = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %1, float noundef f0x404E64BF, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %1) #49 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph161.preheader, label %.critedge

._crit_edge153.thread191:                         ; preds = %.preheader148
  %i.cm = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %1, float noundef f0x404E64BF, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %1) #49 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %._crit_edge153.1, label %.critedge

._crit_edge153.thread:                            ; preds = %.lr.ph152
  %i.co = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %1, float noundef f0x404E64BF, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %1) #49 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph161.preheader, label %.critedge

.lr.ph161.preheader:                              ; preds = %._crit_edge153, %._crit_edge153.thread
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %._crit_edge
  %.0114160 = phi i64 [ %i.cy, %._crit_edge ], [ 0, %.lr.ph161.preheader ] ; 3 uses
  %i.cq = load i64, ptr %i.aw, align 8, !tbaa !69
  %i.cr = mul i64 %i.cq, %.0114160
  %i.cs = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cs, i64 64) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ct, i64 64) ]
  %i.cu = load ptr, ptr %i.bb, align 8, !tbaa !68
  %i.cv = load i64, ptr %i.bc, align 8, !tbaa !69
  %i.cw = mul i64 %i.cv, %.0114160
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cx, i64 64) ]
  br i1 %.not163, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph161
  %i.cy = add nuw nsw i64 %.0114160, 1            ; 2 uses
  %exitcond176.not = icmp eq i64 %i.cy, %i.e
  br i1 %exitcond176.not, label %.lr.ph152.1, label %.lr.ph161, !llvm.loop !784

.lr.ph:                                           ; preds = %.lr.ph161, %.lr.ph
  %.0117159 = phi i64 [ %i.di, %.lr.ph ], [ 0, %.lr.ph161 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.0117159 ; 2 uses
  %i.da = load <4 x float>, ptr %i.cz, align 16, !tbaa !79 ; 5 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.0117159 ; 2 uses
  %i.dc = load <4 x float>, ptr %i.db, align 16, !tbaa !79
  %i.dd = fsub <4 x float> %i.dc, %i.da
  %i.de = fcmp ule <4 x float> %i.da, splat (float 2.900000e-01)
  %i.df = fadd <4 x float> %i.da, splat (float -2.900000e-01)
  %i.dg = fcmp olt <4 x float> %i.da, splat (float -2.900000e-01)
  %i.dh = fadd <4 x float> %i.da, splat (float 2.900000e-01)
  %10 = bitcast <4 x float> %i.dh to <4 x i32>
  %11 = bitcast <4 x float> %i.df to <4 x i32>
  %12 = select <4 x i1> %i.de, <4 x i32> zeroinitializer, <4 x i32> %11
  %13 = select <4 x i1> %i.dg, <4 x i32> %10, <4 x i32> zeroinitializer
  %14 = or <4 x i32> %12, %13
  store <4 x i32> %14, ptr %i.cz, align 16, !tbaa !79
  store <4 x float> %i.dd, ptr %i.db, align 16, !tbaa !79
  %i.di = add nuw nsw i64 %.0117159, 4            ; 2 uses
  %i.dj = icmp samesign ult i64 %i.di, %i.b
  br i1 %i.dj, label %.lr.ph, label %._crit_edge, !llvm.loop !785

.lr.ph152.1:                                      ; preds = %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 72
  br i1 %.not163, label %._crit_edge153.1.thread, label %.lr.ph.us.1.preheader

.lr.ph.us.1.preheader:                            ; preds = %.lr.ph152.1
  %i.dn = add nsw i64 %i.b, -1
  %i.do = lshr i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %xtraiter196 = and i64 %i.dp, 3                 ; 3 uses
  %i.dq = icmp ult i32 %i.a, 13
  %unroll_iter200 = and i64 %i.dp, 9223372036854775804
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  %lcmp.mod199 = icmp ne i64 %xtraiter196, 0
  br label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %.lr.ph.us.1.preheader, %._crit_edge.us.1
  %.0112151.us.1 = phi i64 [ %i.et, %._crit_edge.us.1 ], [ 0, %.lr.ph.us.1.preheader ] ; 3 uses
  %i.dr = load i64, ptr %i.aw, align 8, !tbaa !69
  %i.ds = mul i64 %i.dr, %.0112151.us.1
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dt, i64 64) ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 64) ]
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !68
  %i.dw = load i64, ptr %i.dm, align 8, !tbaa !69
  %i.dx = mul i64 %i.dw, %.0112151.us.1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dy, i64 64) ]
  br i1 %i.dq, label %.epil.preheader195, label %.lr.ph.us.1.new

.lr.ph.us.1.new:                                  ; preds = %.lr.ph.us.1, %.lr.ph.us.1.new
  %.0113150.us.1 = phi i64 [ %i.eo, %.lr.ph.us.1.new ], [ 0, %.lr.ph.us.1 ] ; 6 uses
  %niter201 = phi i64 [ %niter201.next.3, %.lr.ph.us.1.new ], [ 0, %.lr.ph.us.1 ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.0113150.us.1
  %i.ea = load <4 x float>, ptr %i.dz, align 64, !tbaa !79
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.0113150.us.1
  store <4 x float> %i.ea, ptr %i.eb, align 64, !tbaa !79
  %i.ec = or disjoint i64 %.0113150.us.1, 4       ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load <4 x float>, ptr %i.ed, align 16, !tbaa !79
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ec
  store <4 x float> %i.ee, ptr %i.ef, align 16, !tbaa !79
  %i.eg = or disjoint i64 %.0113150.us.1, 8       ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.eg
  %i.ei = load <4 x float>, ptr %i.eh, align 32, !tbaa !79
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.eg
  store <4 x float> %i.ei, ptr %i.ej, align 32, !tbaa !79
  %i.ek = or disjoint i64 %.0113150.us.1, 12      ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ek
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !79
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ek
  store <4 x float> %i.em, ptr %i.en, align 16, !tbaa !79
  %i.eo = add nuw nsw i64 %.0113150.us.1, 16      ; 2 uses
  %niter201.next.3 = add nuw nsw i64 %niter201, 4 ; 2 uses
  %niter201.ncmp.3.not = icmp eq i64 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3.not, label %._crit_edge.us.1.unr-lcssa, label %.lr.ph.us.1.new, !llvm.loop !781

._crit_edge.us.1.unr-lcssa:                       ; preds = %.lr.ph.us.1.new
  br i1 %lcmp.mod198.not, label %._crit_edge.us.1, label %.epil.preheader195

.epil.preheader195:                               ; preds = %._crit_edge.us.1.unr-lcssa, %.lr.ph.us.1
  %.0113150.us.1.epil.init = phi i64 [ 0, %.lr.ph.us.1 ], [ %i.eo, %._crit_edge.us.1.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod199)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader195
  %.0113150.us.1.epil = phi i64 [ %.0113150.us.1.epil.init, %.epil.preheader195 ], [ %i.es, %bb.f ] ; 3 uses
  %epil.iter197 = phi i64 [ 0, %.epil.preheader195 ], [ %epil.iter197.next, %bb.f ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.0113150.us.1.epil
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !79
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.0113150.us.1.epil
  store <4 x float> %i.eq, ptr %i.er, align 16, !tbaa !79
  %i.es = add nuw nsw i64 %.0113150.us.1.epil, 4
  %epil.iter197.next = add i64 %epil.iter197, 1   ; 2 uses
  %epil.iter197.cmp.not = icmp eq i64 %epil.iter197.next, %xtraiter196
  br i1 %epil.iter197.cmp.not, label %._crit_edge.us.1, label %bb.f, !llvm.loop !786

._crit_edge.us.1:                                 ; preds = %bb.f, %._crit_edge.us.1.unr-lcssa
  %i.et = add nuw nsw i64 %.0112151.us.1, 1       ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.et, %i.e
  br i1 %exitcond.1.not, label %._crit_edge153.1, label %.lr.ph.us.1, !llvm.loop !783

._crit_edge153.1:                                 ; preds = %._crit_edge.us.1, %._crit_edge153.thread191
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ev = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, float noundef f0x404E64BF, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.eu) #49 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %.preheader146.1, label %.critedge

._crit_edge153.1.thread:                          ; preds = %.lr.ph152.1
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ey = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ex, float noundef f0x404E64BF, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.ex) #49 ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %.loopexit.1, label %.critedge

.preheader146.1:                                  ; preds = %._crit_edge153.1
  %brmerge = or i1 %.not, %.not163
  br i1 %brmerge, label %.loopexit.1, label %.lr.ph.us157.1

.lr.ph.us157.1:                                   ; preds = %.preheader146.1, %._crit_edge.us158.1
  %.0116155.us.1 = phi i64 [ %i.fq, %._crit_edge.us158.1 ], [ 0, %.preheader146.1 ] ; 3 uses
  %i.fa = load i64, ptr %i.aw, align 8, !tbaa !69
  %i.fb = mul i64 %i.fa, %.0116155.us.1
  %i.fc = load ptr, ptr %i.ax, align 8, !tbaa !68 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fc, i64 64) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fd, i64 64) ]
  %i.fe = load ptr, ptr %i.ay, align 8, !tbaa !68
  %i.ff = load i64, ptr %i.az, align 8, !tbaa !69
  %i.fg = mul i64 %i.ff, %.0116155.us.1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fh, i64 64) ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us157.1
  %.0115154.us.1 = phi i64 [ 0, %.lr.ph.us157.1 ], [ %i.fo, %bb.g ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.0115154.us.1 ; 2 uses
  %i.fj = load <4 x float>, ptr %i.fi, align 16, !tbaa !79 ; 5 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.0115154.us.1 ; 2 uses
  %i.fl = load <4 x float>, ptr %i.fk, align 16, !tbaa !79
  %i.fm = fsub <4 x float> %i.fl, %i.fj
  %i.fn = fcmp ule <4 x float> %i.fj, splat (float 1.000000e-01)
  %.inv.us.1 = fcmp olt <4 x float> %i.fj, splat (float -1.000000e-01)
  %.v.v.us.1 = select <4 x i1> %.inv.us.1, <4 x float> splat (float -1.000000e-01), <4 x float> %i.fj
  %.v145.v.us.1 = select <4 x i1> %i.fn, <4 x float> %.v.v.us.1, <4 x float> splat (float 1.000000e-01)
  %.v145.us.1 = fadd <4 x float> %i.fj, %.v145.v.us.1
  store <4 x float> %.v145.us.1, ptr %i.fi, align 16, !tbaa !79
  store <4 x float> %i.fm, ptr %i.fk, align 16, !tbaa !79
  %i.fo = add nuw nsw i64 %.0115154.us.1, 4       ; 2 uses
  %i.fp = icmp samesign ult i64 %i.fo, %i.b
  br i1 %i.fp, label %bb.g, label %._crit_edge.us158.1, !llvm.loop !787

._crit_edge.us158.1:                              ; preds = %bb.g
  %i.fq = add nuw nsw i64 %.0116155.us.1, 1       ; 2 uses
  %exitcond174.1.not = icmp eq i64 %i.fq, %i.e
  br i1 %exitcond174.1.not, label %.loopexit.1, label %.lr.ph.us157.1, !llvm.loop !788

.loopexit.1:                                      ; preds = %._crit_edge.us158.1, %.preheader146.1, %._crit_edge153.1.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.fs = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.fr, float noundef f0x404E64BF, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.fr) #49 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.loopexit.1
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.fu = load i32, ptr %2, align 8, !tbaa !65, !alias.scope !795 ; 3 uses
  %i.fv = load i32, ptr %i.ar, align 8, !tbaa !65, !noalias !795
  %i.fw = icmp eq i32 %i.fu, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !alias.scope !795 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ga = load i32, ptr %i.fz, align 4, !noalias !795
  %i.gb = icmp eq i32 %i.fy, %i.ga
  %i.gc = select i1 %i.fw, i1 %i.gb, i1 false
  br i1 %i.gc, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.gd = zext i32 %i.fu to i64
  %i.ge = zext i32 %i.fy to i64
  %.not.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i, label %.critedge, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %bb.i
  %i.gf = load ptr, ptr %i.bb, align 8, !tbaa !68, !alias.scope !795
  %i.gg = load i64, ptr %i.bc, align 8, !tbaa !69, !alias.scope !795
  %.not44.i = icmp eq i32 %i.fu, 0
  br i1 %.not44.i, label %.critedge, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph43.i
  %i.gh = add nsw i64 %i.gd, -1                   ; 2 uses
  %i.gi = lshr i64 %i.gh, 2                       ; 2 uses
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %i.gk = icmp eq i64 %i.gi, 0
  %unroll_iter207 = and i64 %i.gj, 9223372036854775806
  %i.gl = and i64 %i.gh, 4
  %lcmp.mod205.not.not = icmp eq i64 %i.gl, 0
  %lcmp.mod206 = trunc i64 %i.gj to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.041.us.i = phi i64 [ %i.hy, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.gm = load ptr, ptr %i.ay, align 8, !tbaa !68, !noalias !795
  %i.gn = load i64, ptr %i.az, align 8, !tbaa !69, !noalias !795
  %i.go = mul i64 %i.gn, %.041.us.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.go ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gp, i64 64) ]
  %i.gq = mul i64 %.041.us.i, %i.gg
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gq ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gr, i64 64) ]
  br i1 %i.gk, label %.epil.preheader202, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.03840.us.i = phi i64 [ %i.hn, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %niter208 = phi i64 [ %niter208.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE216SeparateHFAndUHFERKNS_17ButteraugliParamsEPNS_5PlaneIfEES6_PNS_8BlurTempE:bb.a

.lr.ph.us.preheader:                              ; preds = %.lr.ph155
  %scevgep = getelementptr i8, ptr %i.bj, i64 %i.be
  %i.br = mul i64 %i.bf, %i.bl
  %scevgep191 = getelementptr i8, ptr %scevgep, i64 %i.br
  %scevgep192 = getelementptr i8, ptr %i.bo, i64 %i.be
  %i.bs = mul i64 %i.bf, %i.bq
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.bs
  %bound0 = icmp ult ptr %i.bj, %scevgep193
  %bound1 = icmp ult ptr %i.bo, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  %i.bt = or i64 %i.bq, %i.bl
  %i.bu = icmp slt i64 %i.bt, 0
  %i.bv = or i1 %found.conflict, %i.bu
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0115154.us = phi i64 [ %i.db, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bw = mul i64 %i.bl, %.0115154.us
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bw ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bx, i64 64) ]
  %i.by = mul i64 %i.bq, %.0115154.us
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.by ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bz, i64 64) ]
  %brmerge197 = select i1 %min.iters.check, i1 true, i1 %i.bv
  br i1 %brmerge197, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <4 x float>, ptr %i.ca, align 32, !tbaa !58, !alias.scope !820
  %wide.load195 = load <4 x float>, ptr %i.cb, align 16, !tbaa !58, !alias.scope !820
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <4 x float> %wide.load, ptr %i.cc, align 32, !tbaa !58, !alias.scope !821, !noalias !820
  store <4 x float> %wide.load195, ptr %i.cd, align 16, !tbaa !58, !alias.scope !821, !noalias !820
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !807

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.0116153.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0116153.us.prol = phi i64 [ %i.ci, %scalar.ph.prol ], [ %.0116153.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0116153.us.prol
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !58
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.0116153.us.prol
  store float %i.cg, ptr %i.ch, align 4, !tbaa !58
  %i.ci = add nuw nsw i64 %.0116153.us.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !808

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0116153.us.unr = phi i64 [ %.0116153.us.ph, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %i.cj = sub nsw i64 %.0116153.us.ph, %i.b
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0116153.us = phi i64 [ %i.da, %scalar.ph ], [ %.0116153.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0116153.us
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !58
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.0116153.us
  store float %i.cm, ptr %i.cn, align 4, !tbaa !58
  %i.co = add nuw nsw i64 %.0116153.us, 1         ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !58
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.co
  store float %i.cq, ptr %i.cr, align 4, !tbaa !58
  %i.cs = add nuw nsw i64 %.0116153.us, 2         ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !58
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cs
  store float %i.cu, ptr %i.cv, align 4, !tbaa !58
  %i.cw = add nuw nsw i64 %.0116153.us, 3         ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !58
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cw
  store float %i.cy, ptr %i.cz, align 4, !tbaa !58
  %i.da = add nuw nsw i64 %.0116153.us, 4         ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.da, %i.b
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !809

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.db = add nuw nsw i64 %.0115154.us, 1         ; 2 uses
  %exitcond175.not = icmp eq i64 %i.db, %i.e
  br i1 %exitcond175.not, label %._crit_edge156, label %.lr.ph.us, !llvm.loop !810

._crit_edge156:                                   ; preds = %._crit_edge.us, %.lr.ph155, %.preheader152
  %i.dc = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.dd = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, float noundef f0x3FC83681, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.dc) #49 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.f, label %.critedge

bb.f:                                             ; preds = %._crit_edge156
  br i1 %i.bg, label %.preheader, label %.preheader150

.preheader150:                                    ; preds = %bb.f
  br i1 %brmerge, label %.critedge, label %.lr.ph.us160

.lr.ph.us160:                                     ; preds = %.preheader150, %._crit_edge.us161
  %.0119158.us = phi i64 [ %i.en, %._crit_edge.us161 ], [ 0, %.preheader150 ] ; 3 uses
  %i.df = load ptr, ptr %i.aw, align 8, !tbaa !68
  %i.dg = load i64, ptr %i.ax, align 8, !tbaa !69
  %i.dh = mul i64 %i.dg, %.0119158.us
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.di, i64 64) ]
  %i.dj = load ptr, ptr %i.ay, align 8, !tbaa !68
  %i.dk = load i64, ptr %i.az, align 8, !tbaa !69
  %i.dl = mul i64 %i.dk, %.0119158.us
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dm, i64 64) ]
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.us160, %bb.g
  %.0120157.us = phi i64 [ 0, %.lr.ph.us160 ], [ %i.el, %bb.g ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.0120157.us ; 2 uses
  %i.do = load <4 x float>, ptr %i.dn, align 16, !tbaa !79 ; 5 uses
  %i.dp = fadd <4 x float> %i.do, splat (float f0xC1E3C0E2)
  %i.dq = fmul <4 x float> %i.dp, splat (float f0x3F39663B)
  %i.dr = fadd <4 x float> %i.dq, splat (float f0x41E3C0E2)
  %i.ds = fadd <4 x float> %i.do, splat (float f0x41E3C0E2)
  %i.dt = fmul <4 x float> %i.ds, splat (float f0x3F39663B)
  %i.du = fadd <4 x float> %i.dt, splat (float f0xC1E3C0E2)
  %i.dv = fcmp ult <4 x float> %i.do, splat (float f0x41E3C0E2)
  %.v.us = select <4 x i1> %i.dv, <4 x float> %i.do, <4 x float> %i.dr
  %i.dw = fcmp uge <4 x float> %i.do, splat (float f0xC1E3C0E2)
  %.v145.us = select <4 x i1> %i.dw, <4 x float> %.v.us, <4 x float> %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.0120157.us ; 2 uses
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !tbaa !79
  %i.dz = fsub <4 x float> %i.dy, %.v145.us       ; 5 uses
  %i.ea = fadd <4 x float> %i.dz, splat (float f0xC0A622D7)
  %i.eb = fmul <4 x float> %i.ea, splat (float f0x3F39663B)
  %i.ec = fadd <4 x float> %i.eb, splat (float f0x40A622D7)
  %i.ed = fadd <4 x float> %i.dz, splat (float f0x40A622D7)
  %i.ee = fmul <4 x float> %i.ed, splat (float f0x3F39663B)
  %i.ef = fadd <4 x float> %i.ee, splat (float f0xC0A622D7)
  %i.eg = fcmp ult <4 x float> %i.dz, splat (float f0x40A622D7)
  %.v146.us = select <4 x i1> %i.eg, <4 x float> %i.dz, <4 x float> %i.ec
  %i.eh = fcmp uge <4 x float> %i.dz, splat (float f0xC0A622D7)
  %.v147.us = select <4 x i1> %i.eh, <4 x float> %.v146.us, <4 x float> %i.ef
  %i.ei = fmul <4 x float> %.v147.us, splat (float f0x402C5C5E)
  store <4 x float> %i.ei, ptr %i.dx, align 16, !tbaa !79
  %i.ej = fmul <4 x float> %.v145.us, splat (float 2.155000e+00) ; 4 uses
  %i.ek = fcmp ule <4 x float> %i.ej, splat (float 1.320000e-01)
  %.inv.us = fcmp olt <4 x float> %i.ej, splat (float -1.320000e-01)
  %.v148.v.us = select <4 x i1> %.inv.us, <4 x float> splat (float -1.320000e-01), <4 x float> %i.ej
  %.v149.v.us = select <4 x i1> %i.ek, <4 x float> %.v148.v.us, <4 x float> splat (float 1.320000e-01)
  %.v149.us = fadd <4 x float> %i.ej, %.v149.v.us
  store <4 x float> %.v149.us, ptr %i.dn, align 16, !tbaa !79
  %i.el = add nuw nsw i64 %.0120157.us, 4         ; 2 uses
  %i.em = icmp samesign ult i64 %i.el, %i.b
  br i1 %i.em, label %bb.g, label %._crit_edge.us161, !llvm.loop !811

._crit_edge.us161:                                ; preds = %bb.g
  %i.en = add nuw nsw i64 %.0119158.us, 1         ; 2 uses
  %exitcond177.not = icmp eq i64 %i.en, %i.e
  br i1 %exitcond177.not, label %.loopexit, label %.lr.ph.us160, !llvm.loop !812

.preheader:                                       ; preds = %bb.f
  br i1 %.not, label %.loopexit, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader, %._crit_edge
  %.0117163 = phi i64 [ %i.ew, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %i.eo = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.ep = load i64, ptr %i.bb, align 8, !tbaa !69
  %i.eq = mul i64 %i.ep, %.0117163
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.er, i64 64) ]
  %i.es = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.et = load i64, ptr %i.bd, align 8, !tbaa !69
  %i.eu = mul i64 %i.et, %.0117163
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ev, i64 64) ]
  br i1 %.not166, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph164
  %i.ew = add nuw nsw i64 %.0117163, 1            ; 2 uses
  %exitcond179.not = icmp eq i64 %i.ew, %i.e
  br i1 %exitcond179.not, label %.loopexit, label %.lr.ph164, !llvm.loop !813

.lr.ph:                                           ; preds = %.lr.ph164, %.lr.ph
  %.0118162 = phi i64 [ %i.fk, %.lr.ph ], [ 0, %.lr.ph164 ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0118162 ; 2 uses
  %i.ey = load <4 x float>, ptr %i.ex, align 16, !tbaa !79 ; 5 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.0118162 ; 2 uses
  %i.fa = load <4 x float>, ptr %i.ez, align 16, !tbaa !79
  %i.fb = fsub <4 x float> %i.fa, %i.ey           ; 4 uses
  %i.fc = fcmp ule <4 x float> %i.ey, splat (float 1.500000e+00)
  %i.fd = fadd <4 x float> %i.ey, splat (float -1.500000e+00)
  %i.fe = fcmp olt <4 x float> %i.ey, splat (float -1.500000e+00)
  %i.ff = fadd <4 x float> %i.ey, splat (float 1.500000e+00)
  %10 = bitcast <4 x float> %i.ff to <4 x i32>
  %11 = bitcast <4 x float> %i.fd to <4 x i32>
  %12 = select <4 x i1> %i.fc, <4 x i32> zeroinitializer, <4 x i32> %11
  %13 = select <4 x i1> %i.fe, <4 x i32> %10, <4 x i32> zeroinitializer
  %14 = or <4 x i32> %12, %13
  %i.fg = fcmp ule <4 x float> %i.fb, splat (float 4.000000e-02)
  %i.fh = fadd <4 x float> %i.fb, splat (float -4.000000e-02)
  %i.fi = fcmp olt <4 x float> %i.fb, splat (float -4.000000e-02)
  %i.fj = fadd <4 x float> %i.fb, splat (float 4.000000e-02)
  %15 = bitcast <4 x float> %i.fj to <4 x i32>
  %16 = bitcast <4 x float> %i.fh to <4 x i32>
  %17 = select <4 x i1> %i.fg, <4 x i32> zeroinitializer, <4 x i32> %16
  %18 = select <4 x i1> %i.fi, <4 x i32> %15, <4 x i32> zeroinitializer
  %19 = or <4 x i32> %17, %18
  store <4 x i32> %14, ptr %i.ex, align 16, !tbaa !79
  store <4 x i32> %19, ptr %i.ez, align 16, !tbaa !79
  %i.fk = add nuw nsw i64 %.0118162, 4            ; 2 uses
  %i.fl = icmp samesign ult i64 %i.fk, %i.b
  br i1 %i.fl, label %.lr.ph, label %._crit_edge, !llvm.loop !814

.loopexit:                                        ; preds = %._crit_edge.us161, %._crit_edge, %.preheader
  br i1 %i.bg, label %.preheader152, label %.critedge, !llvm.loop !815

.critedge:                                        ; preds = %.preheader150, %.loopexit, %._crit_edge156
  %.sroa.0.0.ph = phi i32 [ %i.dd, %._crit_edge156 ], [ 0, %.loopexit ], [ 0, %.preheader150 ] ; 2 uses
  %.pr = load i32, ptr %i.ad, align 8, !tbaa !77
  %i.fm = icmp eq i32 %.pr, 0
  br i1 %i.fm, label %bb.h, label %.thread

bb.h:                                             ; preds = %.critedge
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #45
  br label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit123, %bb.h, %.critedge
  %.sroa.0.0140 = phi i32 [ %.sroa.0.0.ph, %bb.h ], [ %.sroa.0.0.ph, %.critedge ], [ %i.ak, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit123 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  %.pr141 = load i32, ptr %i.j, align 8, !tbaa !77
  %i.fn = icmp eq i32 %.pr141, 0
  br i1 %i.fn, label %bb.i, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit124

bb.i:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #45
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit124

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit124:      ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.thread, %bb.i
  %.sroa.0.1144 = phi i32 [ %.sroa.0.0140, %bb.i ], [ %.sroa.0.0140, %.thread ], [ %i.q, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret i32 %.sroa.0.1144
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl6N_SSE218DeallocateHFAndUHFEPNS_5PlaneIfEES3_(ptr noundef initializes((0, 24)) %0, ptr noundef initializes((0, 24)) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %3 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #45 ; 0 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.g, ptr %i.h, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #45 ; 0 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.k, ptr %i.l, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #45 ; 0 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.p, ptr %i.q, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #45 ; 0 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.u, ptr %i.v, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE219SeparateFrequenciesEmmRKNS_17ButteraugliParamsEPNS_8BlurTempERKNS_6Image3IfEERNS_11PsychoImageE(i64 %0, i64 %1, ptr nofree nonnull readnone align 4 captures(none) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(560) %5) #0 {
bb.a:
  %6 = alloca %"class.jxl::StatusOr.1", align 8   ; 13 uses
  %7 = alloca %"class.jxl::Image3", align 8       ; 12 uses
  %8 = alloca %"class.jxl::StatusOr.1", align 8   ; 13 uses
  %9 = alloca %"class.jxl::Image3", align 8       ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.c = load i32, ptr %4, align 8, !tbaa !65
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !67
  %i.g = zext i32 %i.f to i64
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %6, ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.g) #49
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit31

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.k, i8 0, i64 144, i1 false), !alias.scope !826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(172) %6, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.m = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l) #45 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !78, !noalias !826
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !78, !alias.scope !826
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.u = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t) #45 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.w = load i64, ptr %i.v, align 8, !tbaa !78, !noalias !826
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !78, !alias.scope !826
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #45 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !78, !noalias !826
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !78, !alias.scope !826
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 392 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ag, ptr noundef nonnull align 8 dereferenceable(168) %7, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 416
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #45 ; 0 uses
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 440
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.an = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #45 ; 0 uses
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 496
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 528
  %i.as = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #45 ; 0 uses
  %i.at = load i64, ptr %i.af, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 552
  store i64 %i.at, ptr %i.au, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  %i.av = load i32, ptr %4, align 8, !tbaa !65
  %i.aw = zext i32 %i.av to i64
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !67
  %i.ay = zext i32 %i.ax to i64
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %8, ptr noundef %i.b, i64 noundef %i.aw, i64 noundef %i.ay) #49
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !81 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bc, i8 0, i64 144, i1 false), !alias.scope !827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %9, ptr noundef nonnull align 8 dereferenceable(172) %8, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.be = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #45 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !78, !noalias !827
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !78, !alias.scope !827
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #45 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !78, !noalias !827
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !78, !alias.scope !827
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 112
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE225ButteraugliDiffmapInPlaceERNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE:bb.a
  br i1 %i.pf, label %bb.bb, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit238

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ay) #45
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit238

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit238:      ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %bb.ba, %bb.bb
  %.sroa.0.11331 = phi i32 [ %.sroa.0.10, %bb.bb ], [ %.sroa.0.10, %bb.ba ], [ %i.av, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.bd

.critedge201:                                     ; preds = %bb.c, %bb.b
  %.sroa.0.12 = phi i32 [ %i.ag, %bb.b ], [ %i.ai, %bb.c ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  %i.pg = load i32, ptr %i.h, align 8, !tbaa !81
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.bc, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit239

bb.bc:                                            ; preds = %.critedge201
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #45
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit239

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit239:     ; preds = %.critedge201, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit239, %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit238
  %.sroa.0.13 = phi i32 [ %.sroa.0.11331, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit238 ], [ %.sroa.0.12, %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit239 ], [ %i.i, %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit ]
  %i.pi = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.pi) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  ret i32 %.sroa.0.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE2L6L2DiffERKNS_5PlaneIfEES4_fPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, float noundef %2, ptr noalias nofree noundef readonly captures(none) %3) #20 {
bb.a:
  %i.a = fcmp oeq float %2, 0.000000e+00
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = insertelement <4 x float> poison, float %2, i64 0
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> zeroinitializer
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !69
  %.pre = load i32, ptr %0, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph38, %._crit_edge
  %i.n = phi i32 [ %i.e, %.lr.ph38 ], [ %i.z, %._crit_edge ]
  %i.o = phi i32 [ %.pre, %.lr.ph38 ], [ %i.aa, %._crit_edge ]
  %.036 = phi i64 [ 0, %.lr.ph38 ], [ %i.ab, %._crit_edge ] ; 4 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.q = load i64, ptr %i.g, align 8, !tbaa !69
  %i.r = mul i64 %i.q, %.036
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.u = load i64, ptr %i.i, align 8, !tbaa !69
  %i.v = mul i64 %i.u, %.036
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = mul i64 %i.m, %.036
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %.not39 = icmp eq i32 %i.o, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre40 = load i32, ptr %i.d, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.z = phi i32 [ %.pre40, %._crit_edge.loopexit ], [ %i.n, %bb.c ] ; 2 uses
  %i.aa = phi i32 [ %i.ap, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.ab = add nuw nsw i64 %.036, 1                ; 2 uses
  %i.ac = zext i32 %i.z to i64
  %i.ad = icmp samesign ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %.loopexit, !llvm.loop !35

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.03335 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %bb.c ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.03335
  %i.af = load <4 x float>, ptr %i.ae, align 16, !tbaa !79
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.03335
  %i.ah = load <4 x float>, ptr %i.ag, align 16, !tbaa !79
  %i.ai = fsub <4 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = fmul <4 x float> %i.ai, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.03335 ; 2 uses
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !79
  %i.am = fmul <4 x float> %i.c, %i.aj
  %i.an = fadd <4 x float> %i.al, %i.am
  store <4 x float> %i.an, ptr %i.ak, align 16, !tbaa !79
  %i.ao = add nuw nsw i64 %.03335, 4              ; 2 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !65    ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE2L16L2DiffAsymmetricERKNS_5PlaneIfEES4_ffPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, float noundef %2, float noundef %3, ptr noalias nofree noundef readonly captures(none) %4) #20 {
bb.a:
  %i.a = fcmp oeq float %2, 0.000000e+00
  %i.b = fcmp oeq float %3, 0.000000e+00
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = insertelement <2 x float> poison, float %2, i64 0
  %i.d = insertelement <2 x float> %i.c, float %3, i64 1
  %i.e = fpext <2 x float> %i.d to <2 x double>
  %i.f = fmul <2 x double> %i.e, splat (double 8.000000e-01)
  %i.g = fptrunc <2 x double> %i.f to <2 x float> ; 2 uses
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> zeroinitializer
  %i.i = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67   ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !69
  %.pre = load i32, ptr %0, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph113, %._crit_edge
  %i.t = phi i32 [ %i.k, %.lr.ph113 ], [ %i.af, %._crit_edge ]
  %i.u = phi i32 [ %.pre, %.lr.ph113 ], [ %i.ag, %._crit_edge ]
  %.0111 = phi i64 [ 0, %.lr.ph113 ], [ %i.ah, %._crit_edge ] ; 4 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.w = load i64, ptr %i.m, align 8, !tbaa !69
  %i.x = mul i64 %i.w, %.0111
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !69
  %i.ab = mul i64 %i.aa, %.0111
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = mul i64 %i.s, %.0111
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 64) ]
  %.not114 = icmp eq i32 %i.u, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre115 = load i32, ptr %i.j, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.af = phi i32 [ %.pre115, %._crit_edge.loopexit ], [ %i.t, %bb.c ] ; 2 uses
  %i.ag = phi i32 [ %i.bw, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.ah = add nuw nsw i64 %.0111, 1               ; 2 uses
  %i.ai = zext i32 %i.af to i64
  %i.aj = icmp samesign ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.c, label %.loopexit, !llvm.loop !1375

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0106110 = phi i64 [ %i.bv, %.lr.ph ], [ 0, %bb.c ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.0106110
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !79 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.0106110
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !79 ; 9 uses
  %i.ao = fsub <4 x float> %i.al, %i.an           ; 2 uses
  %i.ap = fmul <4 x float> %i.ao, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.0106110 ; 2 uses
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !79
  %i.as = fmul <4 x float> %i.h, %i.ap
  %i.at = fadd <4 x float> %i.ar, %i.as
  %i.au = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.al) ; 5 uses
  %i.av = fmul <4 x float> %i.au, splat (float 4.000000e-01) ; 4 uses
  %i.aw = fneg <4 x float> %i.av
  %i.ax = fcmp ule <4 x float> %i.an, %i.aw       ; 2 uses
  %i.ay = fadd <4 x float> %i.an, %i.av
  %i.az = fneg <4 x float> %i.au
  %i.ba = fcmp olt <4 x float> %i.an, %i.az
  %i.bb = fneg <4 x float> %i.an
  %i.bc = fsub <4 x float> %i.bb, %i.au
  %i.bd = bitcast <4 x float> %i.bc to <4 x i32>
  %i.be = bitcast <4 x float> %i.ay to <4 x i32>
  %i.bf = select <4 x i1> %i.ax, <4 x i32> zeroinitializer, <4 x i32> %i.be
  %5 = select <4 x i1> %i.ax, <4 x i1> %i.ba, <4 x i1> zeroinitializer
  %i.bg = select <4 x i1> %5, <4 x i32> %i.bd, <4 x i32> zeroinitializer
  %6 = or <4 x i32> %i.bf, %i.bg
  %i.bh = fcmp uge <4 x float> %i.an, %i.av       ; 2 uses
  %i.bi = fsub <4 x float> %i.av, %i.an
  %i.bj = fcmp olt <4 x float> %i.au, %i.an
  %i.bk = fsub <4 x float> %i.an, %i.au
  %i.bl = bitcast <4 x float> %i.bk to <4 x i32>
  %i.bm = bitcast <4 x float> %i.bi to <4 x i32>
  %i.bn = select <4 x i1> %i.bh, <4 x i32> zeroinitializer, <4 x i32> %i.bm
  %7 = and <4 x i1> %i.bj, %i.bh
  %i.bo = select <4 x i1> %7, <4 x i32> %i.bl, <4 x i32> zeroinitializer
  %8 = or <4 x i32> %i.bn, %i.bo
  %i.bp = fcmp uge <4 x float> %i.al, zeroinitializer
  %i.bq = select <4 x i1> %i.bp, <4 x i32> %8, <4 x i32> %6
  %i.br = bitcast <4 x i32> %i.bq to <4 x float>  ; 2 uses
  %i.bs = fmul <4 x float> %i.br, %i.br
  %i.bt = fmul <4 x float> %i.i, %i.bs
  %i.bu = fadd <4 x float> %i.at, %i.bt
  store <4 x float> %i.bu, ptr %i.aq, align 16, !tbaa !79
  %i.bv = add nuw nsw i64 %.0106110, 4            ; 2 uses
  %i.bw = load i32, ptr %0, align 8, !tbaa !65    ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %i.bv, %i.bx
  br i1 %i.by, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1376

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden noundef ptr @_ZNK3jxl21ButteraugliComparator4TempEv(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(840) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.b = atomicrmw xchg ptr %i.a, i8 1 acq_rel, align 1
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.0 = select i1 %i.c, ptr null, ptr %i.d
  ret ptr %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @_ZNK3jxl21ButteraugliComparator11ReleaseTempEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(840) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768
  store atomic i8 0, ptr %i.a seq_cst, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3jxl21ButteraugliComparatorC2EmmRKNS_17ButteraugliParamsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(840) initializes((0, 36), (40, 769), (776, 840)) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3) unnamed_addr #26 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3jxl21ButteraugliComparatorE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(729) %i.d, i8 0, i64 729, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3jxl21ButteraugliComparator4MakeERKNS_6Image3IfEERKNS_17ButteraugliParamsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.jxl::StatusOr.6") align 8 captures(none) initializes((8, 12)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.jxl::StatusOr.1", align 8   ; 14 uses
  %4 = alloca %"class.jxl::Image3", align 8       ; 12 uses
  %5 = alloca %"class.jxl::StatusOr.1", align 8   ; 13 uses
  %6 = alloca %"class.jxl::Image3", align 8       ; 13 uses
  %7 = alloca %"class.jxl::StatusOr.1", align 8   ; 8 uses
  %8 = alloca %"class.jxl::Image3", align 8       ; 5 uses
  %9 = alloca %"class.jxl::StatusOr.6", align 8   ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(840) ptr @_Znwm(i64 noundef 840) #44 ; 26 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3jxl21ButteraugliComparatorE, i64 16), ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.b, ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.e, ptr %i.j, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 776 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(729) %i.l, i8 0, i64 729, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %3, ptr noundef %i.g, i64 noundef %i.b, i64 noundef %i.e) #49
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !81   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit64.thread

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit64.thread: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.q, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %_ZNKSt3__114default_deleteIN3jxl21ButteraugliComparatorEEclB8nn180100EPS2_.exit.i.i66

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, i8 0, i64 144, i1 false), !alias.scope !1384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(172) %3, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.t = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #45 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !78, !noalias !1384
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !78, !alias.scope !1384
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #45 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !78, !noalias !1384
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !78, !alias.scope !1384
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #45 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !78, !noalias !1384
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !78, !alias.scope !1384
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 600 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.an, ptr noundef nonnull align 8 dereferenceable(168) %4, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #45 ; 0 uses
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 648
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !78
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 680
  %i.au = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.z) #45 ; 0 uses
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 736
  %i.az = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #45 ; 0 uses
  %i.ba = load i64, ptr %i.am, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 760
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !78
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.bc = icmp ult i32 %i.a, 8
  %i.bd = icmp ult i32 %i.d, 8
  %or.cond = or i1 %i.bc, %i.bd
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.be, align 8, !tbaa !104
  store ptr %i.h, ptr %0, align 8, !tbaa !1385
  br label %bb.l

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %5, ptr noundef %i.g, i64 noundef %i.b, i64 noundef %i.e) #49
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !81 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.critedge52, label %.thread113

.thread113:                                       ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bg, ptr %i.bi, align 8, !tbaa !104
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit63

.critedge52:                                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bj, i8 0, i64 144, i1 false), !alias.scope !1386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(172) %5, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #45 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !78, !noalias !1386
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !78, !alias.scope !1386
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #45 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !78, !noalias !1386
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !78, !alias.scope !1386
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
end_hunk_2
