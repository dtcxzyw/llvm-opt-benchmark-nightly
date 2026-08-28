Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample_x86?download=true
inline.NumInlined: 346
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK4ncnn14GridSample_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  switch i32 %i.kw, label %_ZNK4ncnn3Mat5emptyEv.exit140.thread [
    i32 1, label %bb.dm
    i32 2, label %bb.dn
  ]

bb.dm:                                            ; preds = %bb.dl
  call fastcc void @_ZN4ncnnL45gridsample_3d_bilinear_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit140.thread

bb.dn:                                            ; preds = %bb.dl
  call fastcc void @_ZN4ncnnL41gridsample_nearest_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit140.thread

_ZNK4ncnn3Mat5emptyEv.exit140.thread:             ; preds = %bb.ci, %bb.bu, %bb.br, %bb.bd, %bb.ap, %bb.ab, %bb.y, %bb.db, %bb.de, %bb.dd, %bb.cy, %bb.da, %bb.cz, %bb.cx, %bb.dc, %bb.dk, %bb.dn, %bb.dm, %bb.dh, %bb.dj, %bb.di, %.thread, %bb.dg, %bb.dl, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit135, %_ZNK4ncnn3Mat5emptyEv.exit136, %_ZNK4ncnn3Mat5emptyEv.exit137, %_ZNK4ncnn3Mat5emptyEv.exit138, %_ZNK4ncnn3Mat5emptyEv.exit139, %_ZNK4ncnn3Mat5emptyEv.exit140, %bb.cv, %bb.ct, %bb.cf, %bb.bo, %bb.ba, %bb.am
  %.0 = phi i32 [ -100, %bb.am ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit140 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit139 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit138 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit137 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit136 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit135 ], [ -100, %bb.cv ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.ct ], [ -100, %bb.cf ], [ -100, %bb.bo ], [ -100, %bb.ba ], [ 0, %bb.dl ], [ 0, %bb.dg ], [ 0, %.thread ], [ 0, %bb.di ], [ 0, %bb.dj ], [ 0, %bb.dh ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.dk ], [ -100, %bb.bu ], [ 0, %bb.db ], [ -100, %bb.y ], [ -100, %bb.ab ], [ -100, %bb.ap ], [ -100, %bb.bd ], [ -100, %bb.br ], [ 0, %bb.dc ], [ 0, %bb.cx ], [ 0, %bb.cz ], [ 0, %bb.da ], [ 0, %bb.cy ], [ 0, %bb.dd ], [ 0, %bb.de ], [ -100, %bb.ci ]
  %i.kx = load ptr, ptr %i.v, align 8, !tbaa !22  ; 2 uses
  %.not.i146 = icmp eq ptr %i.kx, null
  br i1 %.not.i146, label %_ZN4ncnn3MatD2Ev.exit142, label %bb.do

bb.do:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit140.thread
  %i.ky = atomicrmw add ptr %i.kx, i32 -1 acq_rel, align 4
  %i.kz = icmp eq i32 %i.ky, 1
  br i1 %i.kz, label %bb.dp, label %_ZN4ncnn3MatD2Ev.exit142

bb.dp:                                            ; preds = %bb.do
  %i.la = load ptr, ptr %i.y, align 16, !tbaa !23 ; 3 uses
  %.not3.i147 = icmp eq ptr %i.la, null
  %i.lb = load ptr, ptr %5, align 16, !tbaa !24   ; 3 uses
  br i1 %.not3.i147, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lc = load ptr, ptr %i.la, align 8, !tbaa !25
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8
  invoke void %i.le(ptr noundef nonnull align 8 dereferenceable(8) %i.la, ptr noundef %i.lb)
          to label %_ZN4ncnn3MatD2Ev.exit142 unwind label %bb.dt, !inline_history !27

bb.dr:                                            ; preds = %bb.dp
  %.not.i167 = icmp eq ptr %i.lb, null
  br i1 %.not.i167, label %_ZN4ncnn3MatD2Ev.exit142, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @free(ptr noundef nonnull %i.lb) #9
  br label %_ZN4ncnn3MatD2Ev.exit142

bb.dt:                                            ; preds = %bb.dq
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit142:                         ; preds = %bb.do, %_ZNK4ncnn3Mat5emptyEv.exit140.thread, %bb.dq, %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.lh = load ptr, ptr %i.r, align 8, !tbaa !22  ; 2 uses
  %.not.i150 = icmp eq ptr %i.lh, null
  br i1 %.not.i150, label %_ZN4ncnn3MatD2Ev.exit141, label %bb.du

bb.du:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit142
  %i.li = atomicrmw add ptr %i.lh, i32 -1 acq_rel, align 4
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %bb.dv, label %_ZN4ncnn3MatD2Ev.exit141

bb.dv:                                            ; preds = %bb.du
  %i.lk = load ptr, ptr %i.s, align 8, !tbaa !23  ; 3 uses
  %.not3.i151 = icmp eq ptr %i.lk, null
  %i.ll = load ptr, ptr %4, align 8, !tbaa !24    ; 3 uses
  br i1 %.not3.i151, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.lm = load ptr, ptr %i.lk, align 8, !tbaa !25
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8
  invoke void %i.lo(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, ptr noundef %i.ll)
          to label %_ZN4ncnn3MatD2Ev.exit141 unwind label %bb.dz, !inline_history !27

bb.dx:                                            ; preds = %bb.dv
  %.not.i165 = icmp eq ptr %i.ll, null
  br i1 %.not.i165, label %_ZN4ncnn3MatD2Ev.exit141, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @free(ptr noundef nonnull %i.ll) #9
  br label %_ZN4ncnn3MatD2Ev.exit141

bb.dz:                                            ; preds = %bb.dw
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit141:                         ; preds = %bb.du, %_ZN4ncnn3MatD2Ev.exit142, %bb.dw, %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn14GridSample_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn10GridSampleC2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn14GridSample_x86E, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !56
  ret void
}

declare void @_ZN4ncnn10GridSampleC2Ev(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit161:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !57 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit159

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit160.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160.lr.ph:                   ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !60
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !60
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !60
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160:                         ; preds = %_ZN4ncnn3MatD2Ev.exit160.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ] ; 2 uses
  %.0158247 = phi ptr [ %i.cb, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit160, %bb.i
  %.0155245 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cc, %bb.i ]
  %.0156244 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.ca, %bb.i ] ; 2 uses
  %.1243 = phi ptr [ %.0158247, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cb, %bb.i ] ; 6 uses
  %i.t = load <2 x float>, ptr %.0156244, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.v = sitofp <2 x i32> %i.u to <2 x float>
  %i.w = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.x = fadd fast <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul fast <2 x float> %i.x, %i.v
  %i.z = fadd fast <2 x float> %i.y, splat (float -5.000000e-01) ; 2 uses
  %i.aa = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.z)
  %i.ab = fptosi <2 x float> %i.aa to <2 x i32>   ; 5 uses
  %i.ac = extractelement <2 x i32> %i.ab, i64 0   ; 4 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  %i.ae = extractelement <2 x i32> %i.ab, i64 1   ; 4 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 3 uses
  %i.ag = icmp sgt i32 %i.ac, -2
  %i.ah = extractelement <2 x i32> %i.u, i64 0    ; 2 uses
  %i.ai = icmp slt i32 %i.ad, %i.ah
  %i.aj = and i1 %i.ag, %i.ai                     ; 2 uses
  %i.ak = icmp sgt <2 x i32> %i.ab, splat (i32 -1)
  %i.al = icmp sgt <2 x i32> %i.u, %i.ab
  %i.am = and <2 x i1> %i.ak, %i.al               ; 2 uses
  %i.an = icmp sgt i32 %i.ae, -2
  %i.ao = extractelement <2 x i32> %i.u, i64 1
  %i.ap = icmp slt i32 %i.af, %i.ao
  %i.aq = and i1 %i.an, %i.ap                     ; 2 uses
  %i.ar = extractelement <2 x i1> %i.am, i64 0    ; 2 uses
  %i.as = extractelement <2 x i1> %i.am, i64 1    ; 2 uses
  %i.at = and i1 %i.ar, %i.as
  %i.au = and i1 %i.aj, %i.as
  %i.av = and i1 %i.ar, %i.aq
  %i.aw = and i1 %i.aj, %i.aq
  %i.ax = getelementptr inbounds nuw i8, ptr %.1243, i64 16
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = mul nuw nsw i32 %i.ah, %i.ae
  %i.az = add nsw i32 %i.ay, %i.ac
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bb = mul nsw i32 %i.ba, %i.az
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bc = phi i32 [ %i.bb, %bb.b ], [ -1, %bb.a ]
  store i32 %i.bc, ptr %.1243, align 4, !tbaa !29
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = load i32, ptr %i.q, align 4, !tbaa !52
  %i.be = mul nsw i32 %i.bd, %i.ae
  %i.bf = add nsw i32 %i.be, %i.ad
  %i.bg = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bh = mul nsw i32 %i.bf, %i.bg
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bi = phi i32 [ %i.bh, %bb.d ], [ -1, %bb.c ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.1243, i64 4
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !29
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bl = mul nsw i32 %i.bk, %i.af
  %i.bm = add nsw i32 %i.bl, %i.ac
  %i.bn = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bo = mul nsw i32 %i.bm, %i.bn
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bp = phi i32 [ %i.bo, %bb.f ], [ -1, %bb.e ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.1243, i64 8
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !29
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bs = mul nsw i32 %i.br, %i.af
  %i.bt = add nsw i32 %i.bs, %i.ad
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bv = mul nsw i32 %i.bt, %i.bu
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bw = phi i32 [ %i.bv, %bb.h ], [ -1, %bb.g ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.1243, i64 12
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !29
  %i.by = sitofp <2 x i32> %i.ab to <2 x float>
  %i.bz = fsub fast <2 x float> %i.z, %i.by
  store <2 x float> %i.bz, ptr %i.ax, align 4, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %.0156244, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.1243, i64 24 ; 2 uses
  %i.cc = add nuw nsw i32 %.0155245, 2            ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.e
  br i1 %i.cd, label %bb.a, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i32, ptr %i.h, align 8, !tbaa !18
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit, !llvm.loop !67

_ZN4ncnn3MatD2Ev.exit159:                         ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.ch = icmp sgt i32 %i.e, 0
  br i1 %i.ch, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit159
  %i.ci = load ptr, ptr %1, align 8, !tbaa !24, !noalias !68 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !20, !noalias !71
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !21, !noalias !71
  %i.cn = mul i64 %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.0242 = phi i32 [ 0, %.lr.ph ], [ %i.fe, %bb.r ]
  %.0153241 = phi ptr [ %i.co, %.lr.ph ], [ %i.fc, %bb.r ] ; 2 uses
  %.0154240 = phi ptr [ %i.ci, %.lr.ph ], [ %i.fb, %bb.r ] ; 2 uses
  %.2239 = phi ptr [ %i.f, %.lr.ph ], [ %i.fd, %bb.r ] ; 6 uses
  %i.cr = load float, ptr %.0154240, align 4, !tbaa !63
  %i.cs = load float, ptr %.0153241, align 4, !tbaa !63
  %i.ct = load <2 x i32>, ptr %i.cp, align 4, !tbaa !29 ; 4 uses
  %i.cu = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cv = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cs, i64 1
  %i.cx = fmul fast <2 x float> %i.cw, splat (float 5.000000e-01)
  %i.cy = fadd fast <2 x float> %i.cx, splat (float 5.000000e-01)
  %i.cz = fmul fast <2 x float> %i.cy, %i.cu
  %i.da = fadd fast <2 x float> %i.cz, splat (float -5.000000e-01) ; 2 uses
  %i.db = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.da)
  %i.dc = fptosi <2 x float> %i.db to <2 x i32>   ; 5 uses
  %i.dd = extractelement <2 x i32> %i.dc, i64 0   ; 4 uses
  %i.de = add nsw i32 %i.dd, 1                    ; 3 uses
  %i.df = extractelement <2 x i32> %i.dc, i64 1   ; 4 uses
  %i.dg = add nsw i32 %i.df, 1                    ; 3 uses
  %i.dh = icmp sgt i32 %i.dd, -2
  %i.di = extractelement <2 x i32> %i.ct, i64 0   ; 2 uses
  %i.dj = icmp slt i32 %i.de, %i.di
  %i.dk = and i1 %i.dh, %i.dj                     ; 2 uses
  %i.dl = icmp sgt <2 x i32> %i.dc, splat (i32 -1)
  %i.dm = icmp sgt <2 x i32> %i.ct, %i.dc
  %i.dn = and <2 x i1> %i.dl, %i.dm               ; 2 uses
  %i.do = icmp sgt i32 %i.df, -2
  %i.dp = extractelement <2 x i32> %i.ct, i64 1
  %i.dq = icmp slt i32 %i.dg, %i.dp
  %i.dr = and i1 %i.do, %i.dq                     ; 2 uses
  %i.ds = extractelement <2 x i1> %i.dn, i64 0    ; 2 uses
  %i.dt = extractelement <2 x i1> %i.dn, i64 1    ; 2 uses
  %i.du = and i1 %i.ds, %i.dt
  %i.dv = and i1 %i.dk, %i.dt
  %i.dw = and i1 %i.ds, %i.dr
  %i.dx = and i1 %i.dk, %i.dr
  %i.dy = getelementptr inbounds nuw i8, ptr %.2239, i64 16
  br i1 %i.du, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dz = mul nuw nsw i32 %i.di, %i.df
  %i.ea = add nsw i32 %i.dz, %i.dd
  %i.eb = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.ec = mul nsw i32 %i.eb, %i.ea
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ed = phi i32 [ %i.ec, %bb.k ], [ -1, %bb.j ]
  store i32 %i.ed, ptr %.2239, align 4, !tbaa !29
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ee = load i32, ptr %i.cp, align 4, !tbaa !52
  %i.ef = mul nsw i32 %i.ee, %i.df
  %i.eg = add nsw i32 %i.ef, %i.de
  %i.eh = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.ei = mul nsw i32 %i.eg, %i.eh
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ej = phi i32 [ %i.ei, %bb.m ], [ -1, %bb.l ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.2239, i64 4
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !29
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.el = load i32, ptr %i.cp, align 4, !tbaa !52
  %i.em = mul nsw i32 %i.el, %i.dg
  %i.en = add nsw i32 %i.em, %i.dd
  %i.eo = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.ep = mul nsw i32 %i.en, %i.eo
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.eq = phi i32 [ %i.ep, %bb.o ], [ -1, %bb.n ]
  %i.er = getelementptr inbounds nuw i8, ptr %.2239, i64 8
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !29
  br i1 %i.dx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.es = load i32, ptr %i.cp, align 4, !tbaa !52
  %i.et = mul nsw i32 %i.es, %i.dg
  %i.eu = add nsw i32 %i.et, %i.de
  %i.ev = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.ew = mul nsw i32 %i.eu, %i.ev
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ex = phi i32 [ %i.ew, %bb.q ], [ -1, %bb.p ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.2239, i64 12
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !29
  %i.ez = sitofp <2 x i32> %i.dc to <2 x float>
  %i.fa = fsub fast <2 x float> %i.da, %i.ez
  store <2 x float> %i.fa, ptr %i.dy, align 4, !tbaa !63
  %i.fb = getelementptr inbounds nuw i8, ptr %.0154240, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.0153241, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.2239, i64 24
  %i.fe = add nuw nsw i32 %.0242, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !74

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit159, %.preheader, %_ZN4ncnn3MatD2Ev.exit160.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit161:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !75 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit159

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit160.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160.lr.ph:                   ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !78
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !78
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !78
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160:                         ; preds = %_ZN4ncnn3MatD2Ev.exit160.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ] ; 2 uses
  %.0158247 = phi ptr [ %i.cb, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit160, %bb.i
  %.0155245 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cc, %bb.i ]
  %.0156244 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.ca, %bb.i ] ; 2 uses
  %.1243 = phi ptr [ %.0158247, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cb, %bb.i ] ; 6 uses
  %i.t = load <2 x float>, ptr %.0156244, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.v = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.w = fadd fast <2 x float> %i.v, splat (float 5.000000e-01)
  %i.x = add nsw <2 x i32> %i.u, splat (i32 -1)
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fmul fast <2 x float> %i.w, %i.y         ; 2 uses
  %i.aa = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.z)
  %i.ab = fptosi <2 x float> %i.aa to <2 x i32>   ; 5 uses
  %i.ac = extractelement <2 x i32> %i.ab, i64 0   ; 4 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  %i.ae = extractelement <2 x i32> %i.ab, i64 1   ; 4 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 3 uses
  %i.ag = icmp sgt i32 %i.ac, -2
  %i.ah = extractelement <2 x i32> %i.u, i64 0    ; 2 uses
  %i.ai = icmp slt i32 %i.ad, %i.ah
  %i.aj = and i1 %i.ag, %i.ai                     ; 2 uses
  %i.ak = icmp sgt <2 x i32> %i.ab, splat (i32 -1)
  %i.al = icmp sgt <2 x i32> %i.u, %i.ab
  %i.am = and <2 x i1> %i.ak, %i.al               ; 2 uses
  %i.an = icmp sgt i32 %i.ae, -2
  %i.ao = extractelement <2 x i32> %i.u, i64 1
  %i.ap = icmp slt i32 %i.af, %i.ao
  %i.aq = and i1 %i.an, %i.ap                     ; 2 uses
  %i.ar = extractelement <2 x i1> %i.am, i64 0    ; 2 uses
  %i.as = extractelement <2 x i1> %i.am, i64 1    ; 2 uses
  %i.at = and i1 %i.ar, %i.as
  %i.au = and i1 %i.aj, %i.as
  %i.av = and i1 %i.ar, %i.aq
  %i.aw = and i1 %i.aj, %i.aq
  %i.ax = getelementptr inbounds nuw i8, ptr %.1243, i64 16
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = mul nuw nsw i32 %i.ah, %i.ae
  %i.az = add nsw i32 %i.ay, %i.ac
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bb = mul nsw i32 %i.ba, %i.az
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bc = phi i32 [ %i.bb, %bb.b ], [ -1, %bb.a ]
  store i32 %i.bc, ptr %.1243, align 4, !tbaa !29
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = load i32, ptr %i.q, align 4, !tbaa !52
  %i.be = mul nsw i32 %i.bd, %i.ae
  %i.bf = add nsw i32 %i.be, %i.ad
  %i.bg = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bh = mul nsw i32 %i.bf, %i.bg
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bi = phi i32 [ %i.bh, %bb.d ], [ -1, %bb.c ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.1243, i64 4
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !29
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bl = mul nsw i32 %i.bk, %i.af
  %i.bm = add nsw i32 %i.bl, %i.ac
  %i.bn = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bo = mul nsw i32 %i.bm, %i.bn
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bp = phi i32 [ %i.bo, %bb.f ], [ -1, %bb.e ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.1243, i64 8
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !29
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bs = mul nsw i32 %i.br, %i.af
  %i.bt = add nsw i32 %i.bs, %i.ad
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bv = mul nsw i32 %i.bt, %i.bu
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bw = phi i32 [ %i.bv, %bb.h ], [ -1, %bb.g ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.1243, i64 12
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !29
  %i.by = sitofp <2 x i32> %i.ab to <2 x float>
  %i.bz = fsub fast <2 x float> %i.z, %i.by
  store <2 x float> %i.bz, ptr %i.ax, align 4, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %.0156244, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.1243, i64 24 ; 2 uses
  %i.cc = add nuw nsw i32 %.0155245, 2            ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.e
  br i1 %i.cd, label %bb.a, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i32, ptr %i.h, align 8, !tbaa !18
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit, !llvm.loop !82

_ZN4ncnn3MatD2Ev.exit159:                         ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.ch = icmp sgt i32 %i.e, 0
  br i1 %i.ch, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit159
  %i.ci = load ptr, ptr %1, align 8, !tbaa !24, !noalias !83 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !20, !noalias !86
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !21, !noalias !86
  %i.cn = mul i64 %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.0242 = phi i32 [ 0, %.lr.ph ], [ %i.fe, %bb.r ]
  %.0153241 = phi ptr [ %i.co, %.lr.ph ], [ %i.fc, %bb.r ] ; 2 uses
  %.0154240 = phi ptr [ %i.ci, %.lr.ph ], [ %i.fb, %bb.r ] ; 2 uses
  %.2239 = phi ptr [ %i.f, %.lr.ph ], [ %i.fd, %bb.r ] ; 6 uses
  %i.cr = load float, ptr %.0154240, align 4, !tbaa !63
  %i.cs = load float, ptr %.0153241, align 4, !tbaa !63
  %i.ct = load <2 x i32>, ptr %i.cp, align 4, !tbaa !29 ; 4 uses
  %i.cu = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cs, i64 1
  %i.cw = fmul fast <2 x float> %i.cv, splat (float 5.000000e-01)
  %i.cx = fadd fast <2 x float> %i.cw, splat (float 5.000000e-01)
  %i.cy = add nsw <2 x i32> %i.ct, splat (i32 -1)
  %i.cz = sitofp <2 x i32> %i.cy to <2 x float>
  %i.da = fmul fast <2 x float> %i.cx, %i.cz      ; 2 uses
  %i.db = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.da)
  %i.dc = fptosi <2 x float> %i.db to <2 x i32>   ; 5 uses
  %i.dd = extractelement <2 x i32> %i.dc, i64 0   ; 4 uses
  %i.de = add nsw i32 %i.dd, 1                    ; 3 uses
  %i.df = extractelement <2 x i32> %i.dc, i64 1   ; 4 uses
  %i.dg = add nsw i32 %i.df, 1                    ; 3 uses
  %i.dh = icmp sgt i32 %i.dd, -2
  %i.di = extractelement <2 x i32> %i.ct, i64 0   ; 2 uses
  %i.dj = icmp slt i32 %i.de, %i.di
  %i.dk = and i1 %i.dh, %i.dj                     ; 2 uses
  %i.dl = icmp sgt <2 x i32> %i.dc, splat (i32 -1)
  %i.dm = icmp sgt <2 x i32> %i.ct, %i.dc
  %i.dn = and <2 x i1> %i.dl, %i.dm               ; 2 uses
  %i.do = icmp sgt i32 %i.df, -2
  %i.dp = extractelement <2 x i32> %i.ct, i64 1
  %i.dq = icmp slt i32 %i.dg, %i.dp
  %i.dr = and i1 %i.do, %i.dq                     ; 2 uses
  %i.ds = extractelement <2 x i1> %i.dn, i64 0    ; 2 uses
  %i.dt = extractelement <2 x i1> %i.dn, i64 1    ; 2 uses
  %i.du = and i1 %i.ds, %i.dt
  %i.dv = and i1 %i.dk, %i.dt
  %i.dw = and i1 %i.ds, %i.dr
  %i.dx = and i1 %i.dk, %i.dr
  %i.dy = getelementptr inbounds nuw i8, ptr %.2239, i64 16
  br i1 %i.du, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dz = mul nuw nsw i32 %i.di, %i.df
  %i.ea = add nsw i32 %i.dz, %i.dd
  %i.eb = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.ec = mul nsw i32 %i.eb, %i.ea
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ed = phi i32 [ %i.ec, %bb.k ], [ -1, %bb.j ]
  store i32 %i.ed, ptr %.2239, align 4, !tbaa !29
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ee = load i32, ptr %i.cp, align 4, !tbaa !52
  %i.ef = mul nsw i32 %i.ee, %i.df
  %i.eg = add nsw i32 %i.ef, %i.de
  %i.eh = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.ei = mul nsw i32 %i.eg, %i.eh
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ej = phi i32 [ %i.ei, %bb.m ], [ -1, %bb.l ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.2239, i64 4
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !29
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.el = load i32, ptr %i.cp, align 4, !tbaa !52
  %i.em = mul nsw i32 %i.el, %i.dg
  %i.en = add nsw i32 %i.em, %i.dd
  %i.eo = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.ep = mul nsw i32 %i.en, %i.eo
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.eq = phi i32 [ %i.ep, %bb.o ], [ -1, %bb.n ]
  %i.er = getelementptr inbounds nuw i8, ptr %.2239, i64 8
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !29
  br i1 %i.dx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.es = load i32, ptr %i.cp, align 4, !tbaa !52
  %i.et = mul nsw i32 %i.es, %i.dg
  %i.eu = add nsw i32 %i.et, %i.de
  %i.ev = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.ew = mul nsw i32 %i.eu, %i.ev
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ex = phi i32 [ %i.ew, %bb.q ], [ -1, %bb.p ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.2239, i64 12
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !29
  %i.ez = sitofp <2 x i32> %i.dc to <2 x float>
  %i.fa = fsub fast <2 x float> %i.da, %i.ez
  store <2 x float> %i.fa, ptr %i.dy, align 4, !tbaa !63
  %i.fb = getelementptr inbounds nuw i8, ptr %.0154240, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.0153241, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.2239, i64 24
  %i.fe = add nuw nsw i32 %.0242, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !89

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit159, %.preheader, %_ZN4ncnn3MatD2Ev.exit160.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit161:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !90 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit159

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit160.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160.lr.ph:                   ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !93
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !93
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !93
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160:                         ; preds = %_ZN4ncnn3MatD2Ev.exit160.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ] ; 2 uses
  %.0158253 = phi ptr [ %i.ce, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit160, %bb.i
  %.0155251 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cf, %bb.i ]
  %.0156250 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cd, %bb.i ] ; 2 uses
  %.1249 = phi ptr [ %.0158253, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.ce, %bb.i ] ; 6 uses
  %i.t = load <2 x float>, ptr %.0156250, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.v = sitofp <2 x i32> %i.u to <2 x float>     ; 2 uses
  %i.w = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.x = fadd fast <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul fast <2 x float> %i.x, %i.v
  %i.z = fadd fast <2 x float> %i.y, splat (float -5.000000e-01)
  %i.aa = fadd fast <2 x float> %i.v, splat (float -1.000000e+00)
  %i.ab = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.z, <2 x float> zeroinitializer)
  %i.ac = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ab, <2 x float> %i.aa) ; 2 uses
  %i.ad = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ac)
  %i.ae = fptosi <2 x float> %i.ad to <2 x i32>   ; 5 uses
  %i.af = extractelement <2 x i32> %i.ae, i64 0   ; 4 uses
  %i.ag = add nsw i32 %i.af, 1                    ; 3 uses
  %i.ah = extractelement <2 x i32> %i.ae, i64 1   ; 4 uses
  %i.ai = add nsw i32 %i.ah, 1                    ; 3 uses
  %i.aj = icmp sgt i32 %i.af, -2
  %i.ak = extractelement <2 x i32> %i.u, i64 0    ; 2 uses
  %i.al = icmp slt i32 %i.ag, %i.ak
  %i.am = and i1 %i.aj, %i.al                     ; 2 uses
  %i.an = icmp sgt <2 x i32> %i.ae, splat (i32 -1)
  %i.ao = icmp sgt <2 x i32> %i.u, %i.ae
  %i.ap = and <2 x i1> %i.an, %i.ao               ; 2 uses
  %i.aq = icmp sgt i32 %i.ah, -2
  %i.ar = extractelement <2 x i32> %i.u, i64 1
  %i.as = icmp slt i32 %i.ai, %i.ar
  %i.at = and i1 %i.aq, %i.as                     ; 2 uses
  %i.au = extractelement <2 x i1> %i.ap, i64 0    ; 2 uses
  %i.av = extractelement <2 x i1> %i.ap, i64 1    ; 2 uses
  %i.aw = and i1 %i.au, %i.av
  %i.ax = and i1 %i.am, %i.av
  %i.ay = and i1 %i.au, %i.at
  %i.az = and i1 %i.am, %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %.1249, i64 16
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = mul nuw nsw i32 %i.ak, %i.ah
  %i.bc = add nsw i32 %i.bb, %i.af
  %i.bd = load i32, ptr %i.r, align 8, !tbaa !13
  %i.be = mul nsw i32 %i.bd, %i.bc
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bf = phi i32 [ %i.be, %bb.b ], [ -1, %bb.a ]
  store i32 %i.bf, ptr %.1249, align 4, !tbaa !29
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bg = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bh = mul nsw i32 %i.bg, %i.ah
  %i.bi = add nsw i32 %i.bh, %i.ag
  %i.bj = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bk = mul nsw i32 %i.bi, %i.bj
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bl = phi i32 [ %i.bk, %bb.d ], [ -1, %bb.c ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.1249, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !29
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bo = mul nsw i32 %i.bn, %i.ai
  %i.bp = add nsw i32 %i.bo, %i.af
  %i.bq = load i32, ptr %i.r, align 8, !tbaa !13
  %i.br = mul nsw i32 %i.bp, %i.bq
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bs = phi i32 [ %i.br, %bb.f ], [ -1, %bb.e ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.1249, i64 8
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !29
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bv = mul nsw i32 %i.bu, %i.ai
  %i.bw = add nsw i32 %i.bv, %i.ag
  %i.bx = load i32, ptr %i.r, align 8, !tbaa !13
  %i.by = mul nsw i32 %i.bw, %i.bx
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.h ], [ -1, %bb.g ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.1249, i64 12
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !29
  %i.cb = sitofp <2 x i32> %i.ae to <2 x float>
  %i.cc = fsub fast <2 x float> %i.ac, %i.cb
  store <2 x float> %i.cc, ptr %i.ba, align 4, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %.0156250, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.1249, i64 24 ; 2 uses
  %i.cf = add nuw nsw i32 %.0155251, 2            ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.e
  br i1 %i.cg, label %bb.a, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.h, align 8, !tbaa !18
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit, !llvm.loop !97

_ZN4ncnn3MatD2Ev.exit159:                         ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.ck = icmp sgt i32 %i.e, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit159
  %i.cl = load ptr, ptr %1, align 8, !tbaa !24, !noalias !98 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !20, !noalias !101
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !21, !noalias !101
  %i.cq = mul i64 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.0248 = phi i32 [ 0, %.lr.ph ], [ %i.fk, %bb.r ]
  %.0153247 = phi ptr [ %i.cr, %.lr.ph ], [ %i.fi, %bb.r ] ; 2 uses
  %.0154246 = phi ptr [ %i.cl, %.lr.ph ], [ %i.fh, %bb.r ] ; 2 uses
  %.2245 = phi ptr [ %i.f, %.lr.ph ], [ %i.fj, %bb.r ] ; 6 uses
  %i.cu = load float, ptr %.0154246, align 4, !tbaa !63
  %i.cv = load float, ptr %.0153247, align 4, !tbaa !63
  %i.cw = load <2 x i32>, ptr %i.cs, align 4, !tbaa !29 ; 4 uses
  %i.cx = sitofp <2 x i32> %i.cw to <2 x float>   ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cv, i64 1
  %i.da = fmul fast <2 x float> %i.cz, splat (float 5.000000e-01)
  %i.db = fadd fast <2 x float> %i.da, splat (float 5.000000e-01)
  %i.dc = fmul fast <2 x float> %i.db, %i.cx
  %i.dd = fadd fast <2 x float> %i.dc, splat (float -5.000000e-01)
  %i.de = fadd fast <2 x float> %i.cx, splat (float -1.000000e+00)
  %i.df = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dd, <2 x float> zeroinitializer)
  %i.dg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.df, <2 x float> %i.de) ; 2 uses
  %i.dh = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dg)
  %i.di = fptosi <2 x float> %i.dh to <2 x i32>   ; 5 uses
  %i.dj = extractelement <2 x i32> %i.di, i64 0   ; 4 uses
  %i.dk = add nsw i32 %i.dj, 1                    ; 3 uses
  %i.dl = extractelement <2 x i32> %i.di, i64 1   ; 4 uses
  %i.dm = add nsw i32 %i.dl, 1                    ; 3 uses
  %i.dn = icmp sgt i32 %i.dj, -2
  %i.do = extractelement <2 x i32> %i.cw, i64 0   ; 2 uses
  %i.dp = icmp slt i32 %i.dk, %i.do
  %i.dq = and i1 %i.dn, %i.dp                     ; 2 uses
  %i.dr = icmp sgt <2 x i32> %i.di, splat (i32 -1)
  %i.ds = icmp sgt <2 x i32> %i.cw, %i.di
  %i.dt = and <2 x i1> %i.dr, %i.ds               ; 2 uses
  %i.du = icmp sgt i32 %i.dl, -2
  %i.dv = extractelement <2 x i32> %i.cw, i64 1
  %i.dw = icmp slt i32 %i.dm, %i.dv
  %i.dx = and i1 %i.du, %i.dw                     ; 2 uses
  %i.dy = extractelement <2 x i1> %i.dt, i64 0    ; 2 uses
  %i.dz = extractelement <2 x i1> %i.dt, i64 1    ; 2 uses
  %i.ea = and i1 %i.dy, %i.dz
  %i.eb = and i1 %i.dq, %i.dz
  %i.ec = and i1 %i.dy, %i.dx
  %i.ed = and i1 %i.dq, %i.dx
  %i.ee = getelementptr inbounds nuw i8, ptr %.2245, i64 16
  br i1 %i.ea, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ef = mul nuw nsw i32 %i.do, %i.dl
  %i.eg = add nsw i32 %i.ef, %i.dj
  %i.eh = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.ei = mul nsw i32 %i.eh, %i.eg
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ej = phi i32 [ %i.ei, %bb.k ], [ -1, %bb.j ]
  store i32 %i.ej, ptr %.2245, align 4, !tbaa !29
  br i1 %i.eb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ek = load i32, ptr %i.cs, align 4, !tbaa !52
  %i.el = mul nsw i32 %i.ek, %i.dl
  %i.em = add nsw i32 %i.el, %i.dk
  %i.en = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.eo = mul nsw i32 %i.em, %i.en
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ep = phi i32 [ %i.eo, %bb.m ], [ -1, %bb.l ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.2245, i64 4
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !29
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.er = load i32, ptr %i.cs, align 4, !tbaa !52
  %i.es = mul nsw i32 %i.er, %i.dm
  %i.et = add nsw i32 %i.es, %i.dj
  %i.eu = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.ev = mul nsw i32 %i.et, %i.eu
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ew = phi i32 [ %i.ev, %bb.o ], [ -1, %bb.n ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.2245, i64 8
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !29
  br i1 %i.ed, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ey = load i32, ptr %i.cs, align 4, !tbaa !52
  %i.ez = mul nsw i32 %i.ey, %i.dm
  %i.fa = add nsw i32 %i.ez, %i.dk
  %i.fb = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.fc = mul nsw i32 %i.fa, %i.fb
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.fd = phi i32 [ %i.fc, %bb.q ], [ -1, %bb.p ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.2245, i64 12
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !29
  %i.ff = sitofp <2 x i32> %i.di to <2 x float>
  %i.fg = fsub fast <2 x float> %i.dg, %i.ff
  store <2 x float> %i.fg, ptr %i.ee, align 4, !tbaa !63
  %i.fh = getelementptr inbounds nuw i8, ptr %.0154246, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %.0153247, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.2245, i64 24
  %i.fk = add nuw nsw i32 %.0248, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fk, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !104

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit159, %.preheader, %_ZN4ncnn3MatD2Ev.exit160.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit161:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !105 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit159

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit160.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160.lr.ph:                   ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !108
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !108
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !108
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160:                         ; preds = %_ZN4ncnn3MatD2Ev.exit160.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ] ; 2 uses
  %.0158253 = phi ptr [ %i.cf, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit160, %bb.i
  %.0155251 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cg, %bb.i ]
  %.0156250 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.ce, %bb.i ] ; 2 uses
  %.1249 = phi ptr [ %.0158253, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cf, %bb.i ] ; 6 uses
  %i.t = load <2 x float>, ptr %.0156250, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 5 uses
  %i.v = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.w = fadd fast <2 x float> %i.v, splat (float 5.000000e-01)
  %i.x = add nsw <2 x i32> %i.u, splat (i32 -1)
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fmul fast <2 x float> %i.w, %i.y
  %i.aa = sitofp <2 x i32> %i.u to <2 x float>
  %i.ab = fadd fast <2 x float> %i.aa, splat (float -1.000000e+00)
  %i.ac = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.z, <2 x float> zeroinitializer)
  %i.ad = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ac, <2 x float> %i.ab) ; 2 uses
  %i.ae = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ad)
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>   ; 5 uses
  %i.ag = extractelement <2 x i32> %i.af, i64 0   ; 4 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  %i.ai = extractelement <2 x i32> %i.af, i64 1   ; 4 uses
  %i.aj = add nsw i32 %i.ai, 1                    ; 3 uses
  %i.ak = icmp sgt i32 %i.ag, -2
  %i.al = extractelement <2 x i32> %i.u, i64 0    ; 2 uses
  %i.am = icmp slt i32 %i.ah, %i.al
  %i.an = and i1 %i.ak, %i.am                     ; 2 uses
  %i.ao = icmp sgt <2 x i32> %i.af, splat (i32 -1)
  %i.ap = icmp sgt <2 x i32> %i.u, %i.af
  %i.aq = and <2 x i1> %i.ao, %i.ap               ; 2 uses
  %i.ar = icmp sgt i32 %i.ai, -2
  %i.as = extractelement <2 x i32> %i.u, i64 1
  %i.at = icmp slt i32 %i.aj, %i.as
  %i.au = and i1 %i.ar, %i.at                     ; 2 uses
  %i.av = extractelement <2 x i1> %i.aq, i64 0    ; 2 uses
  %i.aw = extractelement <2 x i1> %i.aq, i64 1    ; 2 uses
  %i.ax = and i1 %i.av, %i.aw
  %i.ay = and i1 %i.an, %i.aw
  %i.az = and i1 %i.av, %i.au
  %i.ba = and i1 %i.an, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %.1249, i64 16
  br i1 %i.ax, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bc = mul nuw nsw i32 %i.al, %i.ai
  %i.bd = add nsw i32 %i.bc, %i.ag
  %i.be = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bf = mul nsw i32 %i.be, %i.bd
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bg = phi i32 [ %i.bf, %bb.b ], [ -1, %bb.a ]
  store i32 %i.bg, ptr %.1249, align 4, !tbaa !29
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bi = mul nsw i32 %i.bh, %i.ai
  %i.bj = add nsw i32 %i.bi, %i.ah
  %i.bk = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bl = mul nsw i32 %i.bj, %i.bk
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bm = phi i32 [ %i.bl, %bb.d ], [ -1, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.1249, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !29
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bp = mul nsw i32 %i.bo, %i.aj
  %i.bq = add nsw i32 %i.bp, %i.ag
  %i.br = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bs = mul nsw i32 %i.bq, %i.br
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bt = phi i32 [ %i.bs, %bb.f ], [ -1, %bb.e ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.1249, i64 8
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !29
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bw = mul nsw i32 %i.bv, %i.aj
  %i.bx = add nsw i32 %i.bw, %i.ah
  %i.by = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bz = mul nsw i32 %i.bx, %i.by
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ca = phi i32 [ %i.bz, %bb.h ], [ -1, %bb.g ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.1249, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !29
  %i.cc = sitofp <2 x i32> %i.af to <2 x float>
  %i.cd = fsub fast <2 x float> %i.ad, %i.cc
  store <2 x float> %i.cd, ptr %i.bb, align 4, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %.0156250, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.1249, i64 24 ; 2 uses
  %i.cg = add nuw nsw i32 %.0155251, 2            ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.e
  br i1 %i.ch, label %bb.a, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = load i32, ptr %i.h, align 8, !tbaa !18
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit, !llvm.loop !112

_ZN4ncnn3MatD2Ev.exit159:                         ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.cl = icmp sgt i32 %i.e, 0
  br i1 %i.cl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit159
  %i.cm = load ptr, ptr %1, align 8, !tbaa !24, !noalias !113 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !20, !noalias !116
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !21, !noalias !116
  %i.cr = mul i64 %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.0248 = phi i32 [ 0, %.lr.ph ], [ %i.fr, %bb.r ]
  %.0153247 = phi ptr [ %i.cs, %.lr.ph ], [ %i.fp, %bb.r ] ; 2 uses
  %.0154246 = phi ptr [ %i.cm, %.lr.ph ], [ %i.fo, %bb.r ] ; 2 uses
  %.2245 = phi ptr [ %i.f, %.lr.ph ], [ %i.fq, %bb.r ] ; 6 uses
  %i.cv = load float, ptr %.0154246, align 4, !tbaa !63
  %i.cw = load float, ptr %.0153247, align 4, !tbaa !63
  %i.cx = load <2 x i32>, ptr %i.ct, align 4, !tbaa !29 ; 5 uses
  %i.cy = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cw, i64 1
  %i.da = fmul fast <2 x float> %i.cz, splat (float 5.000000e-01)
  %i.db = fadd fast <2 x float> %i.da, splat (float 5.000000e-01)
  %i.dc = add nsw <2 x i32> %i.cx, splat (i32 -1)
  %i.dd = sitofp <2 x i32> %i.dc to <2 x float>
  %i.de = fmul fast <2 x float> %i.db, %i.dd
  %i.df = sitofp <2 x i32> %i.cx to <2 x float>
  %i.dg = fadd fast <2 x float> %i.df, splat (float -1.000000e+00)
  %i.dh = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.de, <2 x float> zeroinitializer)
  %i.di = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dh, <2 x float> %i.dg) ; 3 uses
  %i.dj = extractelement <2 x float> %i.di, i64 1
  %i.dk = tail call fast float @llvm.floor.f32(float %i.dj)
  %i.dl = extractelement <2 x float> %i.di, i64 0
  %i.dm = tail call fast float @llvm.floor.f32(float %i.dl)
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dk, i64 1
  %i.dp = fptosi <2 x float> %i.do to <2 x i32>   ; 5 uses
  %i.dq = extractelement <2 x i32> %i.dp, i64 0   ; 4 uses
  %i.dr = add nsw i32 %i.dq, 1                    ; 3 uses
  %i.ds = extractelement <2 x i32> %i.dp, i64 1   ; 4 uses
  %i.dt = add nsw i32 %i.ds, 1                    ; 3 uses
  %i.du = icmp sgt i32 %i.dq, -2
  %i.dv = extractelement <2 x i32> %i.cx, i64 0   ; 2 uses
  %i.dw = icmp slt i32 %i.dr, %i.dv
  %i.dx = and i1 %i.du, %i.dw                     ; 2 uses
  %i.dy = icmp sgt <2 x i32> %i.dp, splat (i32 -1)
  %i.dz = icmp sgt <2 x i32> %i.cx, %i.dp
  %i.ea = and <2 x i1> %i.dy, %i.dz               ; 2 uses
  %i.eb = icmp sgt i32 %i.ds, -2
  %i.ec = extractelement <2 x i32> %i.cx, i64 1
  %i.ed = icmp slt i32 %i.dt, %i.ec
  %i.ee = and i1 %i.eb, %i.ed                     ; 2 uses
  %i.ef = extractelement <2 x i1> %i.ea, i64 0    ; 2 uses
  %i.eg = extractelement <2 x i1> %i.ea, i64 1    ; 2 uses
  %i.eh = and i1 %i.ef, %i.eg
  %i.ei = and i1 %i.dx, %i.eg
  %i.ej = and i1 %i.ef, %i.ee
  %i.ek = and i1 %i.dx, %i.ee
  %i.el = getelementptr inbounds nuw i8, ptr %.2245, i64 16
  br i1 %i.eh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.em = mul nuw nsw i32 %i.dv, %i.ds
  %i.en = add nsw i32 %i.em, %i.dq
  %i.eo = load i32, ptr %i.cu, align 8, !tbaa !13
  %i.ep = mul nsw i32 %i.eo, %i.en
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.eq = phi i32 [ %i.ep, %bb.k ], [ -1, %bb.j ]
  store i32 %i.eq, ptr %.2245, align 4, !tbaa !29
  br i1 %i.ei, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.er = load i32, ptr %i.ct, align 4, !tbaa !52
  %i.es = mul nsw i32 %i.er, %i.ds
  %i.et = add nsw i32 %i.es, %i.dr
  %i.eu = load i32, ptr %i.cu, align 8, !tbaa !13
  %i.ev = mul nsw i32 %i.et, %i.eu
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ew = phi i32 [ %i.ev, %bb.m ], [ -1, %bb.l ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.2245, i64 4
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !29
  br i1 %i.ej, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ey = load i32, ptr %i.ct, align 4, !tbaa !52
  %i.ez = mul nsw i32 %i.ey, %i.dt
  %i.fa = add nsw i32 %i.ez, %i.dq
  %i.fb = load i32, ptr %i.cu, align 8, !tbaa !13
  %i.fc = mul nsw i32 %i.fa, %i.fb
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.fd = phi i32 [ %i.fc, %bb.o ], [ -1, %bb.n ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.2245, i64 8
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !29
  br i1 %i.ek, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ff = load i32, ptr %i.ct, align 4, !tbaa !52
  %i.fg = mul nsw i32 %i.ff, %i.dt
  %i.fh = add nsw i32 %i.fg, %i.dr
  %i.fi = load i32, ptr %i.cu, align 8, !tbaa !13
  %i.fj = mul nsw i32 %i.fh, %i.fi
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.fk = phi i32 [ %i.fj, %bb.q ], [ -1, %bb.p ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.2245, i64 12
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !29
  %i.fm = sitofp <2 x i32> %i.dp to <2 x float>
  %i.fn = fsub fast <2 x float> %i.di, %i.fm
  store <2 x float> %i.fn, ptr %i.el, align 4, !tbaa !63
  %i.fo = getelementptr inbounds nuw i8, ptr %.0154246, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.0153247, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.2245, i64 24
  %i.fr = add nuw nsw i32 %.0248, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fr, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !119

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit159, %.preheader, %_ZN4ncnn3MatD2Ev.exit160.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit161:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !120 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit159

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit160.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160.lr.ph:                   ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !123
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !123
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !123
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160:                         ; preds = %_ZN4ncnn3MatD2Ev.exit160.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ] ; 2 uses
  %.0158256 = phi ptr [ %i.ci, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit160, %bb.i
  %.0155254 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cj, %bb.i ]
  %.0156253 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.ch, %bb.i ] ; 2 uses
  %.1252 = phi ptr [ %.0158256, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.ci, %bb.i ] ; 6 uses
  %i.t = load <2 x float>, ptr %.0156253, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.v = sitofp <2 x i32> %i.u to <2 x float>     ; 4 uses
  %i.w = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.x = fadd fast <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul fast <2 x float> %i.x, %i.v
  %i.z = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.y)
  %i.aa = fsub fast <2 x float> %i.z, %i.v
  %i.ab = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aa)
  %i.ac = fadd fast <2 x float> %i.v, splat (float -5.000000e-01)
  %i.ad = fsub fast <2 x float> %i.ac, %i.ab
  %i.ae = fadd fast <2 x float> %i.v, splat (float -1.000000e+00)
  %i.af = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer)
  %i.ag = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.af, <2 x float> %i.ae) ; 2 uses
  %i.ah = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ag)
  %i.ai = fptosi <2 x float> %i.ah to <2 x i32>   ; 5 uses
  %i.aj = extractelement <2 x i32> %i.ai, i64 0   ; 4 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 3 uses
  %i.al = extractelement <2 x i32> %i.ai, i64 1   ; 4 uses
  %i.am = add nsw i32 %i.al, 1                    ; 3 uses
  %i.an = icmp sgt i32 %i.aj, -2
  %i.ao = extractelement <2 x i32> %i.u, i64 0    ; 2 uses
  %i.ap = icmp slt i32 %i.ak, %i.ao
  %i.aq = and i1 %i.an, %i.ap                     ; 2 uses
  %i.ar = icmp sgt <2 x i32> %i.ai, splat (i32 -1)
  %i.as = icmp sgt <2 x i32> %i.u, %i.ai
  %i.at = and <2 x i1> %i.ar, %i.as               ; 2 uses
  %i.au = icmp sgt i32 %i.al, -2
  %i.av = extractelement <2 x i32> %i.u, i64 1
  %i.aw = icmp slt i32 %i.am, %i.av
  %i.ax = and i1 %i.au, %i.aw                     ; 2 uses
  %i.ay = extractelement <2 x i1> %i.at, i64 0    ; 2 uses
  %i.az = extractelement <2 x i1> %i.at, i64 1    ; 2 uses
  %i.ba = and i1 %i.ay, %i.az
  %i.bb = and i1 %i.aq, %i.az
  %i.bc = and i1 %i.ay, %i.ax
  %i.bd = and i1 %i.aq, %i.ax
  %i.be = getelementptr inbounds nuw i8, ptr %.1252, i64 16
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bf = mul nuw nsw i32 %i.ao, %i.al
  %i.bg = add nsw i32 %i.bf, %i.aj
  %i.bh = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bi = mul nsw i32 %i.bh, %i.bg
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bj = phi i32 [ %i.bi, %bb.b ], [ -1, %bb.a ]
  store i32 %i.bj, ptr %.1252, align 4, !tbaa !29
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bk = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bl = mul nsw i32 %i.bk, %i.al
  %i.bm = add nsw i32 %i.bl, %i.ak
  %i.bn = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bo = mul nsw i32 %i.bm, %i.bn
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bp = phi i32 [ %i.bo, %bb.d ], [ -1, %bb.c ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.1252, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !29
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bs = mul nsw i32 %i.br, %i.am
  %i.bt = add nsw i32 %i.bs, %i.aj
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bv = mul nsw i32 %i.bt, %i.bu
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bw = phi i32 [ %i.bv, %bb.f ], [ -1, %bb.e ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.1252, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !29
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bz = mul nsw i32 %i.by, %i.am
  %i.ca = add nsw i32 %i.bz, %i.ak
  %i.cb = load i32, ptr %i.r, align 8, !tbaa !13
  %i.cc = mul nsw i32 %i.ca, %i.cb
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cd = phi i32 [ %i.cc, %bb.h ], [ -1, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.1252, i64 12
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !29
  %i.cf = sitofp <2 x i32> %i.ai to <2 x float>
  %i.cg = fsub fast <2 x float> %i.ag, %i.cf
  store <2 x float> %i.cg, ptr %i.be, align 4, !tbaa !63
  %i.ch = getelementptr inbounds nuw i8, ptr %.0156253, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.1252, i64 24 ; 2 uses
  %i.cj = add nuw nsw i32 %.0155254, 2            ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.e
  br i1 %i.ck, label %bb.a, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = load i32, ptr %i.h, align 8, !tbaa !18
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit, !llvm.loop !127

_ZN4ncnn3MatD2Ev.exit159:                         ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.co = icmp sgt i32 %i.e, 0
  br i1 %i.co, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit159
  %i.cp = load ptr, ptr %1, align 8, !tbaa !24, !noalias !128 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !20, !noalias !131
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !21, !noalias !131
  %i.cu = mul i64 %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.0251 = phi i32 [ 0, %.lr.ph ], [ %i.fs, %bb.r ]
  %.0153250 = phi ptr [ %i.cv, %.lr.ph ], [ %i.fq, %bb.r ] ; 2 uses
  %.0154249 = phi ptr [ %i.cp, %.lr.ph ], [ %i.fp, %bb.r ] ; 2 uses
  %.2248 = phi ptr [ %i.f, %.lr.ph ], [ %i.fr, %bb.r ] ; 6 uses
  %i.cy = load float, ptr %.0154249, align 4, !tbaa !63
  %i.cz = load float, ptr %.0153250, align 4, !tbaa !63
  %i.da = load <2 x i32>, ptr %i.cw, align 4, !tbaa !29 ; 4 uses
  %i.db = sitofp <2 x i32> %i.da to <2 x float>   ; 4 uses
  %i.dc = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.cz, i64 1
  %i.de = fmul fast <2 x float> %i.dd, splat (float 5.000000e-01)
  %i.df = fadd fast <2 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = fmul fast <2 x float> %i.df, %i.db
  %i.dh = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dg)
  %i.di = fsub fast <2 x float> %i.dh, %i.db
  %i.dj = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.di)
  %i.dk = fadd fast <2 x float> %i.db, splat (float -5.000000e-01)
  %i.dl = fsub fast <2 x float> %i.dk, %i.dj
  %i.dm = fadd fast <2 x float> %i.db, splat (float -1.000000e+00)
  %i.dn = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dl, <2 x float> zeroinitializer)
  %i.do = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dn, <2 x float> %i.dm) ; 2 uses
  %i.dp = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.do)
  %i.dq = fptosi <2 x float> %i.dp to <2 x i32>   ; 5 uses
  %i.dr = extractelement <2 x i32> %i.dq, i64 0   ; 4 uses
  %i.ds = add nsw i32 %i.dr, 1                    ; 3 uses
  %i.dt = extractelement <2 x i32> %i.dq, i64 1   ; 4 uses
  %i.du = add nsw i32 %i.dt, 1                    ; 3 uses
  %i.dv = icmp sgt i32 %i.dr, -2
  %i.dw = extractelement <2 x i32> %i.da, i64 0   ; 2 uses
  %i.dx = icmp slt i32 %i.ds, %i.dw
  %i.dy = and i1 %i.dv, %i.dx                     ; 2 uses
  %i.dz = icmp sgt <2 x i32> %i.dq, splat (i32 -1)
  %i.ea = icmp sgt <2 x i32> %i.da, %i.dq
  %i.eb = and <2 x i1> %i.dz, %i.ea               ; 2 uses
  %i.ec = icmp sgt i32 %i.dt, -2
  %i.ed = extractelement <2 x i32> %i.da, i64 1
  %i.ee = icmp slt i32 %i.du, %i.ed
  %i.ef = and i1 %i.ec, %i.ee                     ; 2 uses
  %i.eg = extractelement <2 x i1> %i.eb, i64 0    ; 2 uses
  %i.eh = extractelement <2 x i1> %i.eb, i64 1    ; 2 uses
  %i.ei = and i1 %i.eg, %i.eh
  %i.ej = and i1 %i.dy, %i.eh
  %i.ek = and i1 %i.eg, %i.ef
  %i.el = and i1 %i.dy, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %.2248, i64 16
  br i1 %i.ei, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.en = mul nuw nsw i32 %i.dw, %i.dt
  %i.eo = add nsw i32 %i.en, %i.dr
  %i.ep = load i32, ptr %i.cx, align 8, !tbaa !13
  %i.eq = mul nsw i32 %i.ep, %i.eo
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.er = phi i32 [ %i.eq, %bb.k ], [ -1, %bb.j ]
  store i32 %i.er, ptr %.2248, align 4, !tbaa !29
  br i1 %i.ej, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.es = load i32, ptr %i.cw, align 4, !tbaa !52
  %i.et = mul nsw i32 %i.es, %i.dt
  %i.eu = add nsw i32 %i.et, %i.ds
  %i.ev = load i32, ptr %i.cx, align 8, !tbaa !13
  %i.ew = mul nsw i32 %i.eu, %i.ev
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ex = phi i32 [ %i.ew, %bb.m ], [ -1, %bb.l ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.2248, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !29
  br i1 %i.ek, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ez = load i32, ptr %i.cw, align 4, !tbaa !52
  %i.fa = mul nsw i32 %i.ez, %i.du
  %i.fb = add nsw i32 %i.fa, %i.dr
  %i.fc = load i32, ptr %i.cx, align 8, !tbaa !13
  %i.fd = mul nsw i32 %i.fb, %i.fc
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.fe = phi i32 [ %i.fd, %bb.o ], [ -1, %bb.n ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.2248, i64 8
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !29
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fg = load i32, ptr %i.cw, align 4, !tbaa !52
  %i.fh = mul nsw i32 %i.fg, %i.du
  %i.fi = add nsw i32 %i.fh, %i.ds
  %i.fj = load i32, ptr %i.cx, align 8, !tbaa !13
  %i.fk = mul nsw i32 %i.fi, %i.fj
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.fl = phi i32 [ %i.fk, %bb.q ], [ -1, %bb.p ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.2248, i64 12
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !29
  %i.fn = sitofp <2 x i32> %i.dq to <2 x float>
  %i.fo = fsub fast <2 x float> %i.do, %i.fn
  store <2 x float> %i.fo, ptr %i.em, align 4, !tbaa !63
  %i.fp = getelementptr inbounds nuw i8, ptr %.0154249, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.0153250, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %.2248, i64 24
  %i.fs = add nuw nsw i32 %.0251, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fs, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !134

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit159, %.preheader, %_ZN4ncnn3MatD2Ev.exit160.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit161:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !135 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit159

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit160.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160.lr.ph:                   ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !138
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !138
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !138
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit

_ZN4ncnn3MatD2Ev.exit160:                         ; preds = %_ZN4ncnn3MatD2Ev.exit160.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ] ; 2 uses
  %.0158253 = phi ptr [ %i.cj, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit160.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit160, %bb.i
  %.0155251 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.ck, %bb.i ]
  %.0156250 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.ci, %bb.i ] ; 2 uses
  %.1249 = phi ptr [ %.0158253, %_ZN4ncnn3MatD2Ev.exit160 ], [ %i.cj, %bb.i ] ; 6 uses
  %i.t = load <2 x float>, ptr %.0156250, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 5 uses
  %i.v = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.w = fadd fast <2 x float> %i.v, splat (float 5.000000e-01)
  %i.x = add nsw <2 x i32> %i.u, splat (i32 -1)
  %i.y = sitofp <2 x i32> %i.x to <2 x float>     ; 3 uses
  %i.z = fmul fast <2 x float> %i.w, %i.y
  %i.aa = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.z)
  %i.ab = fsub fast <2 x float> %i.aa, %i.y
  %i.ac = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ab)
  %i.ad = fsub fast <2 x float> %i.y, %i.ac
  %i.ae = sitofp <2 x i32> %i.u to <2 x float>
  %i.af = fadd fast <2 x float> %i.ae, splat (float -1.000000e+00)
  %i.ag = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer)
  %i.ah = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ag, <2 x float> %i.af) ; 2 uses
  %i.ai = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ah)
  %i.aj = fptosi <2 x float> %i.ai to <2 x i32>   ; 5 uses
  %i.ak = extractelement <2 x i32> %i.aj, i64 0   ; 4 uses
  %i.al = add nsw i32 %i.ak, 1                    ; 3 uses
  %i.am = extractelement <2 x i32> %i.aj, i64 1   ; 4 uses
  %i.an = add nsw i32 %i.am, 1                    ; 3 uses
  %i.ao = icmp sgt i32 %i.ak, -2
  %i.ap = extractelement <2 x i32> %i.u, i64 0    ; 2 uses
  %i.aq = icmp slt i32 %i.al, %i.ap
  %i.ar = and i1 %i.ao, %i.aq                     ; 2 uses
  %i.as = icmp sgt <2 x i32> %i.aj, splat (i32 -1)
  %i.at = icmp sgt <2 x i32> %i.u, %i.aj
  %i.au = and <2 x i1> %i.as, %i.at               ; 2 uses
  %i.av = icmp sgt i32 %i.am, -2
  %i.aw = extractelement <2 x i32> %i.u, i64 1
  %i.ax = icmp slt i32 %i.an, %i.aw
  %i.ay = and i1 %i.av, %i.ax                     ; 2 uses
  %i.az = extractelement <2 x i1> %i.au, i64 0    ; 2 uses
  %i.ba = extractelement <2 x i1> %i.au, i64 1    ; 2 uses
  %i.bb = and i1 %i.az, %i.ba
  %i.bc = and i1 %i.ar, %i.ba
  %i.bd = and i1 %i.az, %i.ay
  %i.be = and i1 %i.ar, %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %.1249, i64 16
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bg = mul nuw nsw i32 %i.ap, %i.am
  %i.bh = add nsw i32 %i.bg, %i.ak
  %i.bi = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bj = mul nsw i32 %i.bi, %i.bh
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bk = phi i32 [ %i.bj, %bb.b ], [ -1, %bb.a ]
  store i32 %i.bk, ptr %.1249, align 4, !tbaa !29
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bl = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bm = mul nsw i32 %i.bl, %i.am
  %i.bn = add nsw i32 %i.bm, %i.al
  %i.bo = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bp = mul nsw i32 %i.bn, %i.bo
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bq = phi i32 [ %i.bp, %bb.d ], [ -1, %bb.c ]
  %i.br = getelementptr inbounds nuw i8, ptr %.1249, i64 4
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !29
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bt = mul nsw i32 %i.bs, %i.an
  %i.bu = add nsw i32 %i.bt, %i.ak
  %i.bv = load i32, ptr %i.r, align 8, !tbaa !13
  %i.bw = mul nsw i32 %i.bu, %i.bv
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bx = phi i32 [ %i.bw, %bb.f ], [ -1, %bb.e ]
  %i.by = getelementptr inbounds nuw i8, ptr %.1249, i64 8
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !29
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bz = load i32, ptr %i.q, align 4, !tbaa !52
  %i.ca = mul nsw i32 %i.bz, %i.an
  %i.cb = add nsw i32 %i.ca, %i.al
  %i.cc = load i32, ptr %i.r, align 8, !tbaa !13
  %i.cd = mul nsw i32 %i.cb, %i.cc
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ce = phi i32 [ %i.cd, %bb.h ], [ -1, %bb.g ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.1249, i64 12
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !29
  %i.cg = sitofp <2 x i32> %i.aj to <2 x float>
  %i.ch = fsub fast <2 x float> %i.ah, %i.cg
  store <2 x float> %i.ch, ptr %i.bf, align 4, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %.0156250, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.1249, i64 24 ; 2 uses
  %i.ck = add nuw nsw i32 %.0155251, 2            ; 2 uses
  %i.cl = icmp slt i32 %i.ck, %i.e
  br i1 %i.cl, label %bb.a, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.h, align 8, !tbaa !18
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %_ZN4ncnn3MatD2Ev.exit160, label %.loopexit, !llvm.loop !142

_ZN4ncnn3MatD2Ev.exit159:                         ; preds = %_ZN4ncnn3MatD2Ev.exit161
  %i.cp = icmp sgt i32 %i.e, 0
  br i1 %i.cp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit159
  %i.cq = load ptr, ptr %1, align 8, !tbaa !24, !noalias !143 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !20, !noalias !146
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !21, !noalias !146
  %i.cv = mul i64 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.0248 = phi i32 [ 0, %.lr.ph ], [ %i.fz, %bb.r ]
  %.0153247 = phi ptr [ %i.cw, %.lr.ph ], [ %i.fx, %bb.r ] ; 2 uses
  %.0154246 = phi ptr [ %i.cq, %.lr.ph ], [ %i.fw, %bb.r ] ; 2 uses
  %.2245 = phi ptr [ %i.f, %.lr.ph ], [ %i.fy, %bb.r ] ; 6 uses
  %i.cz = load float, ptr %.0154246, align 4, !tbaa !63
  %i.da = load float, ptr %.0153247, align 4, !tbaa !63
  %i.db = load <2 x i32>, ptr %i.cx, align 4, !tbaa !29 ; 5 uses
  %i.dc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.da, i64 1
  %i.de = fmul fast <2 x float> %i.dd, splat (float 5.000000e-01)
  %i.df = fadd fast <2 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = add nsw <2 x i32> %i.db, splat (i32 -1)
  %i.dh = sitofp <2 x i32> %i.dg to <2 x float>   ; 3 uses
  %i.di = fmul fast <2 x float> %i.df, %i.dh
  %i.dj = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.di)
  %i.dk = fsub fast <2 x float> %i.dj, %i.dh
  %i.dl = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dk)
  %i.dm = fsub fast <2 x float> %i.dh, %i.dl
  %i.dn = sitofp <2 x i32> %i.db to <2 x float>
  %i.do = fadd fast <2 x float> %i.dn, splat (float -1.000000e+00)
  %i.dp = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dm, <2 x float> zeroinitializer)
  %i.dq = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dp, <2 x float> %i.do) ; 3 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 1
  %i.ds = tail call fast float @llvm.floor.f32(float %i.dr)
  %i.dt = extractelement <2 x float> %i.dq, i64 0
  %i.du = tail call fast float @llvm.floor.f32(float %i.dt)
  %i.dv = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.ds, i64 1
  %i.dx = fptosi <2 x float> %i.dw to <2 x i32>   ; 5 uses
  %i.dy = extractelement <2 x i32> %i.dx, i64 0   ; 4 uses
  %i.dz = add nsw i32 %i.dy, 1                    ; 3 uses
  %i.ea = extractelement <2 x i32> %i.dx, i64 1   ; 4 uses
  %i.eb = add nsw i32 %i.ea, 1                    ; 3 uses
  %i.ec = icmp sgt i32 %i.dy, -2
  %i.ed = extractelement <2 x i32> %i.db, i64 0   ; 2 uses
  %i.ee = icmp slt i32 %i.dz, %i.ed
  %i.ef = and i1 %i.ec, %i.ee                     ; 2 uses
  %i.eg = icmp sgt <2 x i32> %i.dx, splat (i32 -1)
  %i.eh = icmp sgt <2 x i32> %i.db, %i.dx
  %i.ei = and <2 x i1> %i.eg, %i.eh               ; 2 uses
  %i.ej = icmp sgt i32 %i.ea, -2
  %i.ek = extractelement <2 x i32> %i.db, i64 1
  %i.el = icmp slt i32 %i.eb, %i.ek
  %i.em = and i1 %i.ej, %i.el                     ; 2 uses
  %i.en = extractelement <2 x i1> %i.ei, i64 0    ; 2 uses
  %i.eo = extractelement <2 x i1> %i.ei, i64 1    ; 2 uses
  %i.ep = and i1 %i.en, %i.eo
  %i.eq = and i1 %i.ef, %i.eo
  %i.er = and i1 %i.en, %i.em
  %i.es = and i1 %i.ef, %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %.2245, i64 16
  br i1 %i.ep, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eu = mul nuw nsw i32 %i.ed, %i.ea
  %i.ev = add nsw i32 %i.eu, %i.dy
  %i.ew = load i32, ptr %i.cy, align 8, !tbaa !13
  %i.ex = mul nsw i32 %i.ew, %i.ev
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ey = phi i32 [ %i.ex, %bb.k ], [ -1, %bb.j ]
  store i32 %i.ey, ptr %.2245, align 4, !tbaa !29
  br i1 %i.eq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ez = load i32, ptr %i.cx, align 4, !tbaa !52
  %i.fa = mul nsw i32 %i.ez, %i.ea
  %i.fb = add nsw i32 %i.fa, %i.dz
  %i.fc = load i32, ptr %i.cy, align 8, !tbaa !13
  %i.fd = mul nsw i32 %i.fb, %i.fc
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fe = phi i32 [ %i.fd, %bb.m ], [ -1, %bb.l ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.2245, i64 4
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !29
  br i1 %i.er, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fg = load i32, ptr %i.cx, align 4, !tbaa !52
  %i.fh = mul nsw i32 %i.fg, %i.eb
  %i.fi = add nsw i32 %i.fh, %i.dy
  %i.fj = load i32, ptr %i.cy, align 8, !tbaa !13
  %i.fk = mul nsw i32 %i.fi, %i.fj
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.fl = phi i32 [ %i.fk, %bb.o ], [ -1, %bb.n ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.2245, i64 8
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !29
  br i1 %i.es, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fn = load i32, ptr %i.cx, align 4, !tbaa !52
  %i.fo = mul nsw i32 %i.fn, %i.eb
  %i.fp = add nsw i32 %i.fo, %i.dz
  %i.fq = load i32, ptr %i.cy, align 8, !tbaa !13
  %i.fr = mul nsw i32 %i.fp, %i.fq
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.fs = phi i32 [ %i.fr, %bb.q ], [ -1, %bb.p ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.2245, i64 12
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !29
  %i.fu = sitofp <2 x i32> %i.dx to <2 x float>
  %i.fv = fsub fast <2 x float> %i.dq, %i.fu
  store <2 x float> %i.fv, ptr %i.et, align 4, !tbaa !63
  %i.fw = getelementptr inbounds nuw i8, ptr %.0154246, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %.0153247, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.2245, i64 24
  %i.fz = add nuw nsw i32 %.0248, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fz, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !149

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit159, %.preheader, %_ZN4ncnn3MatD2Ev.exit160.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit79:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !150 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit77

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit78.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78.lr.ph:                    ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !153
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !153
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !153
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78:                          ; preds = %_ZN4ncnn3MatD2Ev.exit78.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ] ; 2 uses
  %.076165 = phi ptr [ %i.ar, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit78, %bb.c
  %.073163 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.as, %bb.c ]
  %.074162 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.aq, %bb.c ] ; 2 uses
  %.1161 = phi ptr [ %.076165, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.ar, %bb.c ] ; 2 uses
  %i.t = load <2 x float>, ptr %.074162, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 3 uses
  %i.v = sitofp <2 x i32> %i.u to <2 x float>
  %i.w = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.x = fadd fast <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul fast <2 x float> %i.x, %i.v
  %i.z = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 3 uses
  %i.ab = extractelement <2 x i32> %i.aa, i64 0   ; 2 uses
  %i.ac = extractelement <2 x i32> %i.aa, i64 1   ; 2 uses
  %i.ad = or i32 %i.ac, %i.ab
  %i.ae = icmp sgt i32 %i.ad, -1
  %i.af = icmp sgt <2 x i32> %i.u, %i.aa          ; 2 uses
  %i.ag = extractelement <2 x i1> %i.af, i64 0
  %i.ah = and i1 %i.ag, %i.ae
  %i.ai = extractelement <2 x i1> %i.af, i64 1
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = extractelement <2 x i32> %i.u, i64 0
  %i.al = mul nuw nsw i32 %i.ak, %i.ac
  %i.am = add nsw i32 %i.al, %i.ab
  %i.an = load i32, ptr %i.r, align 8, !tbaa !13
  %i.ao = mul nsw i32 %i.an, %i.am
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ap = phi i32 [ %i.ao, %bb.b ], [ -1, %bb.a ]
  store i32 %i.ap, ptr %.1161, align 4, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %.074162, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.1161, i64 4 ; 2 uses
  %i.as = add nuw nsw i32 %.073163, 2             ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.e
  br i1 %i.at, label %bb.a, label %._crit_edge, !llvm.loop !156

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %i.h, align 8, !tbaa !18
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit, !llvm.loop !157

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.ax = icmp sgt i32 %i.e, 0
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit77
  %i.ay = load ptr, ptr %1, align 8, !tbaa !24, !noalias !158 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !20, !noalias !161
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !21, !noalias !161
  %i.bd = mul i64 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.0160 = phi i32 [ 0, %.lr.ph ], [ %i.ck, %bb.f ]
  %.071159 = phi ptr [ %i.be, %.lr.ph ], [ %i.ci, %bb.f ] ; 2 uses
  %.072158 = phi ptr [ %i.ay, %.lr.ph ], [ %i.ch, %bb.f ] ; 2 uses
  %.2157 = phi ptr [ %i.f, %.lr.ph ], [ %i.cj, %bb.f ] ; 2 uses
  %i.bh = load float, ptr %.072158, align 4, !tbaa !63
  %i.bi = load float, ptr %.071159, align 4, !tbaa !63
  %i.bj = load <2 x i32>, ptr %i.bf, align 4, !tbaa !29 ; 3 uses
  %i.bk = sitofp <2 x i32> %i.bj to <2 x float>
  %i.bl = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bi, i64 1
  %i.bn = fmul fast <2 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fadd fast <2 x float> %i.bn, splat (float 5.000000e-01)
  %i.bp = fmul fast <2 x float> %i.bo, %i.bk
  %i.bq = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.bp)
  %i.br = fptosi <2 x float> %i.bq to <2 x i32>   ; 3 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 0   ; 2 uses
  %i.bt = extractelement <2 x i32> %i.br, i64 1   ; 2 uses
  %i.bu = or i32 %i.bt, %i.bs
  %i.bv = icmp sgt i32 %i.bu, -1
  %i.bw = icmp sgt <2 x i32> %i.bj, %i.br         ; 2 uses
  %i.bx = extractelement <2 x i1> %i.bw, i64 0
  %i.by = and i1 %i.bx, %i.bv
  %i.bz = extractelement <2 x i1> %i.bw, i64 1
  %i.ca = and i1 %i.bz, %i.by
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cb = extractelement <2 x i32> %i.bj, i64 0
  %i.cc = mul nuw nsw i32 %i.cb, %i.bt
  %i.cd = add nsw i32 %i.cc, %i.bs
  %i.ce = load i32, ptr %i.bg, align 8, !tbaa !13
  %i.cf = mul nsw i32 %i.ce, %i.cd
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cg = phi i32 [ %i.cf, %bb.e ], [ -1, %bb.d ]
  store i32 %i.cg, ptr %.2157, align 4, !tbaa !29
  %i.ch = getelementptr inbounds nuw i8, ptr %.072158, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.071159, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.2157, i64 4
  %i.ck = add nuw nsw i32 %.0160, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !164

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit77, %.preheader, %_ZN4ncnn3MatD2Ev.exit78.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit79:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !165 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit77

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit78.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78.lr.ph:                    ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !168
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !168
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !168
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78:                          ; preds = %_ZN4ncnn3MatD2Ev.exit78.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ] ; 2 uses
  %.076165 = phi ptr [ %i.at, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit78, %bb.c
  %.073163 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.au, %bb.c ]
  %.074162 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.as, %bb.c ] ; 2 uses
  %.1161 = phi ptr [ %.076165, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.at, %bb.c ] ; 2 uses
  %i.t = load <2 x float>, ptr %.074162, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 3 uses
  %i.v = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.w = fadd fast <2 x float> %i.v, splat (float 5.000000e-01)
  %i.x = add nsw <2 x i32> %i.u, splat (i32 -1)
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fmul fast <2 x float> %i.w, %i.y
  %i.aa = fadd fast <2 x float> %i.z, splat (float 5.000000e-01)
  %i.ab = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>   ; 3 uses
  %i.ad = extractelement <2 x i32> %i.ac, i64 0   ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ac, i64 1   ; 2 uses
  %i.af = or i32 %i.ae, %i.ad
  %i.ag = icmp sgt i32 %i.af, -1
  %i.ah = icmp sgt <2 x i32> %i.u, %i.ac          ; 2 uses
  %i.ai = extractelement <2 x i1> %i.ah, i64 0
  %i.aj = and i1 %i.ai, %i.ag
  %i.ak = extractelement <2 x i1> %i.ah, i64 1
  %i.al = and i1 %i.ak, %i.aj
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = extractelement <2 x i32> %i.u, i64 0
  %i.an = mul nuw nsw i32 %i.am, %i.ae
  %i.ao = add nsw i32 %i.an, %i.ad
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !13
  %i.aq = mul nsw i32 %i.ap, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ar = phi i32 [ %i.aq, %bb.b ], [ -1, %bb.a ]
  store i32 %i.ar, ptr %.1161, align 4, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %.074162, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.1161, i64 4 ; 2 uses
  %i.au = add nuw nsw i32 %.073163, 2             ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.e
  br i1 %i.av, label %bb.a, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.h, align 8, !tbaa !18
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit, !llvm.loop !172

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.az = icmp sgt i32 %i.e, 0
  br i1 %i.az, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit77
  %i.ba = load ptr, ptr %1, align 8, !tbaa !24, !noalias !173 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !20, !noalias !176
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !21, !noalias !176
  %i.bf = mul i64 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.0160 = phi i32 [ 0, %.lr.ph ], [ %i.co, %bb.f ]
  %.071159 = phi ptr [ %i.bg, %.lr.ph ], [ %i.cm, %bb.f ] ; 2 uses
  %.072158 = phi ptr [ %i.ba, %.lr.ph ], [ %i.cl, %bb.f ] ; 2 uses
  %.2157 = phi ptr [ %i.f, %.lr.ph ], [ %i.cn, %bb.f ] ; 2 uses
  %i.bj = load float, ptr %.072158, align 4, !tbaa !63
  %i.bk = load float, ptr %.071159, align 4, !tbaa !63
  %i.bl = load <2 x i32>, ptr %i.bh, align 4, !tbaa !29 ; 3 uses
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bk, i64 1
  %i.bo = fmul fast <2 x float> %i.bn, splat (float 5.000000e-01)
  %i.bp = fadd fast <2 x float> %i.bo, splat (float 5.000000e-01)
  %i.bq = add nsw <2 x i32> %i.bl, splat (i32 -1)
  %i.br = sitofp <2 x i32> %i.bq to <2 x float>
  %i.bs = fmul fast <2 x float> %i.bp, %i.br
  %i.bt = fadd fast <2 x float> %i.bs, splat (float 5.000000e-01)
  %i.bu = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.bt)
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>   ; 3 uses
  %i.bw = extractelement <2 x i32> %i.bv, i64 0   ; 2 uses
  %i.bx = extractelement <2 x i32> %i.bv, i64 1   ; 2 uses
  %i.by = or i32 %i.bx, %i.bw
  %i.bz = icmp sgt i32 %i.by, -1
  %i.ca = icmp sgt <2 x i32> %i.bl, %i.bv         ; 2 uses
  %i.cb = extractelement <2 x i1> %i.ca, i64 0
  %i.cc = and i1 %i.cb, %i.bz
  %i.cd = extractelement <2 x i1> %i.ca, i64 1
  %i.ce = and i1 %i.cd, %i.cc
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cf = extractelement <2 x i32> %i.bl, i64 0
  %i.cg = mul nuw nsw i32 %i.cf, %i.bx
  %i.ch = add nsw i32 %i.cg, %i.bw
  %i.ci = load i32, ptr %i.bi, align 8, !tbaa !13
  %i.cj = mul nsw i32 %i.ci, %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ck = phi i32 [ %i.cj, %bb.e ], [ -1, %bb.d ]
  store i32 %i.ck, ptr %.2157, align 4, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %.072158, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.071159, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.2157, i64 4
  %i.co = add nuw nsw i32 %.0160, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !179

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit77, %.preheader, %_ZN4ncnn3MatD2Ev.exit78.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit79:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !180 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit77

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit78.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78.lr.ph:                    ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !183
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !183
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !183
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78:                          ; preds = %_ZN4ncnn3MatD2Ev.exit78.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ] ; 2 uses
  %.076171 = phi ptr [ %i.aw, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit78, %bb.c
  %.073169 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.ax, %bb.c ]
  %.074168 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.av, %bb.c ] ; 2 uses
  %.1167 = phi ptr [ %.076171, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.aw, %bb.c ] ; 2 uses
  %i.t = load <2 x float>, ptr %.074168, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 3 uses
  %i.v = sitofp <2 x i32> %i.u to <2 x float>     ; 2 uses
  %i.w = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.x = fadd fast <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul fast <2 x float> %i.x, %i.v
  %i.z = fadd fast <2 x float> %i.y, splat (float -5.000000e-01)
  %i.aa = fadd fast <2 x float> %i.v, splat (float -1.000000e+00)
  %i.ab = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.z, <2 x float> zeroinitializer)
  %i.ac = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ab, <2 x float> %i.aa)
  %i.ad = fadd fast <2 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ad)
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>   ; 3 uses
  %i.ag = extractelement <2 x i32> %i.af, i64 0   ; 2 uses
  %i.ah = extractelement <2 x i32> %i.af, i64 1   ; 2 uses
  %i.ai = or i32 %i.ah, %i.ag
  %i.aj = icmp sgt i32 %i.ai, -1
  %i.ak = icmp sgt <2 x i32> %i.u, %i.af          ; 2 uses
  %i.al = extractelement <2 x i1> %i.ak, i64 0
  %i.am = and i1 %i.al, %i.aj
  %i.an = extractelement <2 x i1> %i.ak, i64 1
  %i.ao = and i1 %i.an, %i.am
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = extractelement <2 x i32> %i.u, i64 0
  %i.aq = mul nuw nsw i32 %i.ap, %i.ah
  %i.ar = add nsw i32 %i.aq, %i.ag
  %i.as = load i32, ptr %i.r, align 8, !tbaa !13
  %i.at = mul nsw i32 %i.as, %i.ar
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.au = phi i32 [ %i.at, %bb.b ], [ -1, %bb.a ]
  store i32 %i.au, ptr %.1167, align 4, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %.074168, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.1167, i64 4 ; 2 uses
  %i.ax = add nuw nsw i32 %.073169, 2             ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.e
  br i1 %i.ay, label %bb.a, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.h, align 8, !tbaa !18
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit, !llvm.loop !187

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.bc = icmp sgt i32 %i.e, 0
  br i1 %i.bc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit77
  %i.bd = load ptr, ptr %1, align 8, !tbaa !24, !noalias !188 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !20, !noalias !191
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !21, !noalias !191
  %i.bi = mul i64 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.0166 = phi i32 [ 0, %.lr.ph ], [ %i.cu, %bb.f ]
  %.071165 = phi ptr [ %i.bj, %.lr.ph ], [ %i.cs, %bb.f ] ; 2 uses
  %.072164 = phi ptr [ %i.bd, %.lr.ph ], [ %i.cr, %bb.f ] ; 2 uses
  %.2163 = phi ptr [ %i.f, %.lr.ph ], [ %i.ct, %bb.f ] ; 2 uses
  %i.bm = load float, ptr %.072164, align 4, !tbaa !63
  %i.bn = load float, ptr %.071165, align 4, !tbaa !63
  %i.bo = load <2 x i32>, ptr %i.bk, align 4, !tbaa !29 ; 3 uses
  %i.bp = sitofp <2 x i32> %i.bo to <2 x float>   ; 2 uses
  %i.bq = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bn, i64 1
  %i.bs = fmul fast <2 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = fadd fast <2 x float> %i.bs, splat (float 5.000000e-01)
  %i.bu = fmul fast <2 x float> %i.bt, %i.bp
  %i.bv = fadd fast <2 x float> %i.bu, splat (float -5.000000e-01)
  %i.bw = fadd fast <2 x float> %i.bp, splat (float -1.000000e+00)
  %i.bx = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bv, <2 x float> zeroinitializer)
  %i.by = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bx, <2 x float> %i.bw)
  %i.bz = fadd fast <2 x float> %i.by, splat (float 5.000000e-01)
  %i.ca = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.bz)
  %i.cb = fptosi <2 x float> %i.ca to <2 x i32>   ; 3 uses
  %i.cc = extractelement <2 x i32> %i.cb, i64 0   ; 2 uses
  %i.cd = extractelement <2 x i32> %i.cb, i64 1   ; 2 uses
  %i.ce = or i32 %i.cd, %i.cc
  %i.cf = icmp sgt i32 %i.ce, -1
  %i.cg = icmp sgt <2 x i32> %i.bo, %i.cb         ; 2 uses
  %i.ch = extractelement <2 x i1> %i.cg, i64 0
  %i.ci = and i1 %i.ch, %i.cf
  %i.cj = extractelement <2 x i1> %i.cg, i64 1
  %i.ck = and i1 %i.cj, %i.ci
  br i1 %i.ck, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cl = extractelement <2 x i32> %i.bo, i64 0
  %i.cm = mul nuw nsw i32 %i.cl, %i.cd
  %i.cn = add nsw i32 %i.cm, %i.cc
  %i.co = load i32, ptr %i.bl, align 8, !tbaa !13
  %i.cp = mul nsw i32 %i.co, %i.cn
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cq = phi i32 [ %i.cp, %bb.e ], [ -1, %bb.d ]
  store i32 %i.cq, ptr %.2163, align 4, !tbaa !29
  %i.cr = getelementptr inbounds nuw i8, ptr %.072164, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.071165, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.2163, i64 4
  %i.cu = add nuw nsw i32 %.0166, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cu, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !194

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit77, %.preheader, %_ZN4ncnn3MatD2Ev.exit78.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit79:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !195 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit77

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit78.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78.lr.ph:                    ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !198
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !198
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !198
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78:                          ; preds = %_ZN4ncnn3MatD2Ev.exit78.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ] ; 2 uses
  %.076171 = phi ptr [ %i.ax, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit78, %bb.c
  %.073169 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.ay, %bb.c ]
  %.074168 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.aw, %bb.c ] ; 2 uses
  %.1167 = phi ptr [ %.076171, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.ax, %bb.c ] ; 2 uses
  %i.t = load <2 x float>, ptr %.074168, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.v = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.w = fadd fast <2 x float> %i.v, splat (float 5.000000e-01)
  %i.x = add nsw <2 x i32> %i.u, splat (i32 -1)
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fmul fast <2 x float> %i.w, %i.y
  %i.aa = sitofp <2 x i32> %i.u to <2 x float>
  %i.ab = fadd fast <2 x float> %i.aa, splat (float -1.000000e+00)
  %i.ac = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.z, <2 x float> zeroinitializer)
  %i.ad = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ac, <2 x float> %i.ab)
  %i.ae = fadd fast <2 x float> %i.ad, splat (float 5.000000e-01)
  %i.af = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ae)
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>   ; 3 uses
  %i.ah = extractelement <2 x i32> %i.ag, i64 0   ; 2 uses
  %i.ai = extractelement <2 x i32> %i.ag, i64 1   ; 2 uses
  %i.aj = or i32 %i.ai, %i.ah
  %i.ak = icmp sgt i32 %i.aj, -1
  %i.al = icmp sgt <2 x i32> %i.u, %i.ag          ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 0
  %i.an = and i1 %i.am, %i.ak
  %i.ao = extractelement <2 x i1> %i.al, i64 1
  %i.ap = and i1 %i.ao, %i.an
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = extractelement <2 x i32> %i.u, i64 0
  %i.ar = mul nuw nsw i32 %i.aq, %i.ai
  %i.as = add nsw i32 %i.ar, %i.ah
  %i.at = load i32, ptr %i.r, align 8, !tbaa !13
  %i.au = mul nsw i32 %i.at, %i.as
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.av = phi i32 [ %i.au, %bb.b ], [ -1, %bb.a ]
  store i32 %i.av, ptr %.1167, align 4, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %.074168, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.1167, i64 4 ; 2 uses
  %i.ay = add nuw nsw i32 %.073169, 2             ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.e
  br i1 %i.az, label %bb.a, label %._crit_edge, !llvm.loop !201

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i32, ptr %i.h, align 8, !tbaa !18
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit, !llvm.loop !202

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.bd = icmp sgt i32 %i.e, 0
  br i1 %i.bd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit77
  %i.be = load ptr, ptr %1, align 8, !tbaa !24, !noalias !203 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20, !noalias !206
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21, !noalias !206
  %i.bj = mul i64 %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.0166 = phi i32 [ 0, %.lr.ph ], [ %i.cw, %bb.f ]
  %.071165 = phi ptr [ %i.bk, %.lr.ph ], [ %i.cu, %bb.f ] ; 2 uses
  %.072164 = phi ptr [ %i.be, %.lr.ph ], [ %i.ct, %bb.f ] ; 2 uses
  %.2163 = phi ptr [ %i.f, %.lr.ph ], [ %i.cv, %bb.f ] ; 2 uses
  %i.bn = load float, ptr %.072164, align 4, !tbaa !63
  %i.bo = load float, ptr %.071165, align 4, !tbaa !63
  %i.bp = load <2 x i32>, ptr %i.bl, align 4, !tbaa !29 ; 4 uses
  %i.bq = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bo, i64 1
  %i.bs = fmul fast <2 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = fadd fast <2 x float> %i.bs, splat (float 5.000000e-01)
  %i.bu = add nsw <2 x i32> %i.bp, splat (i32 -1)
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>
  %i.bw = fmul fast <2 x float> %i.bt, %i.bv
  %i.bx = sitofp <2 x i32> %i.bp to <2 x float>
  %i.by = fadd fast <2 x float> %i.bx, splat (float -1.000000e+00)
  %i.bz = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bw, <2 x float> zeroinitializer)
  %i.ca = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bz, <2 x float> %i.by)
  %i.cb = fadd fast <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cb)
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>   ; 3 uses
  %i.ce = extractelement <2 x i32> %i.cd, i64 0   ; 2 uses
  %i.cf = extractelement <2 x i32> %i.cd, i64 1   ; 2 uses
  %i.cg = or i32 %i.cf, %i.ce
  %i.ch = icmp sgt i32 %i.cg, -1
  %i.ci = icmp sgt <2 x i32> %i.bp, %i.cd         ; 2 uses
  %i.cj = extractelement <2 x i1> %i.ci, i64 0
  %i.ck = and i1 %i.cj, %i.ch
  %i.cl = extractelement <2 x i1> %i.ci, i64 1
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cn = extractelement <2 x i32> %i.bp, i64 0
  %i.co = mul nuw nsw i32 %i.cn, %i.cf
  %i.cp = add nsw i32 %i.co, %i.ce
  %i.cq = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.cr = mul nsw i32 %i.cq, %i.cp
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cs = phi i32 [ %i.cr, %bb.e ], [ -1, %bb.d ]
  store i32 %i.cs, ptr %.2163, align 4, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %.072164, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.071165, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.2163, i64 4
  %i.cw = add nuw nsw i32 %.0166, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !209

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit77, %.preheader, %_ZN4ncnn3MatD2Ev.exit78.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit79:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !210 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit77

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit78.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78.lr.ph:                    ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !213
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !213
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !213
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78:                          ; preds = %_ZN4ncnn3MatD2Ev.exit78.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ] ; 2 uses
  %.076174 = phi ptr [ %i.ba, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit78, %bb.c
  %.073172 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.bb, %bb.c ]
  %.074171 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.az, %bb.c ] ; 2 uses
  %.1170 = phi ptr [ %.076174, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.ba, %bb.c ] ; 2 uses
  %i.t = load <2 x float>, ptr %.074171, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 3 uses
  %i.v = sitofp <2 x i32> %i.u to <2 x float>     ; 4 uses
  %i.w = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.x = fadd fast <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul fast <2 x float> %i.x, %i.v
  %i.z = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.y)
  %i.aa = fsub fast <2 x float> %i.z, %i.v
  %i.ab = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aa)
  %i.ac = fadd fast <2 x float> %i.v, splat (float -5.000000e-01)
  %i.ad = fsub fast <2 x float> %i.ac, %i.ab
  %i.ae = fadd fast <2 x float> %i.v, splat (float -1.000000e+00)
  %i.af = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer)
  %i.ag = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.af, <2 x float> %i.ae)
  %i.ah = fadd fast <2 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ah)
  %i.aj = fptosi <2 x float> %i.ai to <2 x i32>   ; 3 uses
  %i.ak = extractelement <2 x i32> %i.aj, i64 0   ; 2 uses
  %i.al = extractelement <2 x i32> %i.aj, i64 1   ; 2 uses
  %i.am = or i32 %i.al, %i.ak
  %i.an = icmp sgt i32 %i.am, -1
  %i.ao = icmp sgt <2 x i32> %i.u, %i.aj          ; 2 uses
  %i.ap = extractelement <2 x i1> %i.ao, i64 0
  %i.aq = and i1 %i.ap, %i.an
  %i.ar = extractelement <2 x i1> %i.ao, i64 1
  %i.as = and i1 %i.ar, %i.aq
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = extractelement <2 x i32> %i.u, i64 0
  %i.au = mul nuw nsw i32 %i.at, %i.al
  %i.av = add nsw i32 %i.au, %i.ak
  %i.aw = load i32, ptr %i.r, align 8, !tbaa !13
  %i.ax = mul nsw i32 %i.aw, %i.av
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ay = phi i32 [ %i.ax, %bb.b ], [ -1, %bb.a ]
  store i32 %i.ay, ptr %.1170, align 4, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %.074171, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.1170, i64 4 ; 2 uses
  %i.bb = add nuw nsw i32 %.073172, 2             ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.e
  br i1 %i.bc, label %bb.a, label %._crit_edge, !llvm.loop !216

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !18
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit, !llvm.loop !217

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.bg = icmp sgt i32 %i.e, 0
  br i1 %i.bg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit77
  %i.bh = load ptr, ptr %1, align 8, !tbaa !24, !noalias !218 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !20, !noalias !221
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !21, !noalias !221
  %i.bm = mul i64 %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.0169 = phi i32 [ 0, %.lr.ph ], [ %i.dc, %bb.f ]
  %.071168 = phi ptr [ %i.bn, %.lr.ph ], [ %i.da, %bb.f ] ; 2 uses
  %.072167 = phi ptr [ %i.bh, %.lr.ph ], [ %i.cz, %bb.f ] ; 2 uses
  %.2166 = phi ptr [ %i.f, %.lr.ph ], [ %i.db, %bb.f ] ; 2 uses
  %i.bq = load float, ptr %.072167, align 4, !tbaa !63
  %i.br = load float, ptr %.071168, align 4, !tbaa !63
  %i.bs = load <2 x i32>, ptr %i.bo, align 4, !tbaa !29 ; 3 uses
  %i.bt = sitofp <2 x i32> %i.bs to <2 x float>   ; 4 uses
  %i.bu = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.br, i64 1
  %i.bw = fmul fast <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = fadd fast <2 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = fmul fast <2 x float> %i.bx, %i.bt
  %i.bz = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.by)
  %i.ca = fsub fast <2 x float> %i.bz, %i.bt
  %i.cb = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ca)
  %i.cc = fadd fast <2 x float> %i.bt, splat (float -5.000000e-01)
  %i.cd = fsub fast <2 x float> %i.cc, %i.cb
  %i.ce = fadd fast <2 x float> %i.bt, splat (float -1.000000e+00)
  %i.cf = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer)
  %i.cg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cf, <2 x float> %i.ce)
  %i.ch = fadd fast <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ch)
  %i.cj = fptosi <2 x float> %i.ci to <2 x i32>   ; 3 uses
  %i.ck = extractelement <2 x i32> %i.cj, i64 0   ; 2 uses
  %i.cl = extractelement <2 x i32> %i.cj, i64 1   ; 2 uses
  %i.cm = or i32 %i.cl, %i.ck
  %i.cn = icmp sgt i32 %i.cm, -1
  %i.co = icmp sgt <2 x i32> %i.bs, %i.cj         ; 2 uses
  %i.cp = extractelement <2 x i1> %i.co, i64 0
  %i.cq = and i1 %i.cp, %i.cn
  %i.cr = extractelement <2 x i1> %i.co, i64 1
  %i.cs = and i1 %i.cr, %i.cq
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ct = extractelement <2 x i32> %i.bs, i64 0
  %i.cu = mul nuw nsw i32 %i.ct, %i.cl
  %i.cv = add nsw i32 %i.cu, %i.ck
  %i.cw = load i32, ptr %i.bp, align 8, !tbaa !13
  %i.cx = mul nsw i32 %i.cw, %i.cv
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cy = phi i32 [ %i.cx, %bb.e ], [ -1, %bb.d ]
  store i32 %i.cy, ptr %.2166, align 4, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %.072167, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.071168, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %.2166, i64 4
  %i.dc = add nuw nsw i32 %.0169, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dc, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !224

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit77, %.preheader, %_ZN4ncnn3MatD2Ev.exit78.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit79:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !225 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit77

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit78.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78.lr.ph:                    ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !228
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !228
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !228
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit

_ZN4ncnn3MatD2Ev.exit78:                          ; preds = %_ZN4ncnn3MatD2Ev.exit78.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ] ; 2 uses
  %.076171 = phi ptr [ %i.bb, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit78.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit78, %bb.c
  %.073169 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.bc, %bb.c ]
  %.074168 = phi ptr [ %i.s, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.ba, %bb.c ] ; 2 uses
  %.1167 = phi ptr [ %.076171, %_ZN4ncnn3MatD2Ev.exit78 ], [ %i.bb, %bb.c ] ; 2 uses
  %i.t = load <2 x float>, ptr %.074168, align 4, !tbaa !63
  %i.u = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.v = fmul fast <2 x float> %i.t, splat (float 5.000000e-01)
  %i.w = fadd fast <2 x float> %i.v, splat (float 5.000000e-01)
  %i.x = add nsw <2 x i32> %i.u, splat (i32 -1)
  %i.y = sitofp <2 x i32> %i.x to <2 x float>     ; 3 uses
  %i.z = fmul fast <2 x float> %i.w, %i.y
  %i.aa = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.z)
  %i.ab = fsub fast <2 x float> %i.aa, %i.y
  %i.ac = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ab)
  %i.ad = fsub fast <2 x float> %i.y, %i.ac
  %i.ae = sitofp <2 x i32> %i.u to <2 x float>
  %i.af = fadd fast <2 x float> %i.ae, splat (float -1.000000e+00)
  %i.ag = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer)
  %i.ah = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ag, <2 x float> %i.af)
  %i.ai = fadd fast <2 x float> %i.ah, splat (float 5.000000e-01)
  %i.aj = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ai)
  %i.ak = fptosi <2 x float> %i.aj to <2 x i32>   ; 3 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 0   ; 2 uses
  %i.am = extractelement <2 x i32> %i.ak, i64 1   ; 2 uses
  %i.an = or i32 %i.am, %i.al
  %i.ao = icmp sgt i32 %i.an, -1
  %i.ap = icmp sgt <2 x i32> %i.u, %i.ak          ; 2 uses
  %i.aq = extractelement <2 x i1> %i.ap, i64 0
  %i.ar = and i1 %i.aq, %i.ao
  %i.as = extractelement <2 x i1> %i.ap, i64 1
  %i.at = and i1 %i.as, %i.ar
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = extractelement <2 x i32> %i.u, i64 0
  %i.av = mul nuw nsw i32 %i.au, %i.am
  %i.aw = add nsw i32 %i.av, %i.al
  %i.ax = load i32, ptr %i.r, align 8, !tbaa !13
  %i.ay = mul nsw i32 %i.ax, %i.aw
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.az = phi i32 [ %i.ay, %bb.b ], [ -1, %bb.a ]
  store i32 %i.az, ptr %.1167, align 4, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %.074168, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.1167, i64 4 ; 2 uses
  %i.bc = add nuw nsw i32 %.073169, 2             ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.e
  br i1 %i.bd, label %bb.a, label %._crit_edge, !llvm.loop !231

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.h, align 8, !tbaa !18
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %_ZN4ncnn3MatD2Ev.exit78, label %.loopexit, !llvm.loop !232

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.bh = icmp sgt i32 %i.e, 0
  br i1 %i.bh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit77
  %i.bi = load ptr, ptr %1, align 8, !tbaa !24, !noalias !233 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !20, !noalias !236
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !21, !noalias !236
  %i.bn = mul i64 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.0166 = phi i32 [ 0, %.lr.ph ], [ %i.de, %bb.f ]
  %.071165 = phi ptr [ %i.bo, %.lr.ph ], [ %i.dc, %bb.f ] ; 2 uses
  %.072164 = phi ptr [ %i.bi, %.lr.ph ], [ %i.db, %bb.f ] ; 2 uses
  %.2163 = phi ptr [ %i.f, %.lr.ph ], [ %i.dd, %bb.f ] ; 2 uses
  %i.br = load float, ptr %.072164, align 4, !tbaa !63
  %i.bs = load float, ptr %.071165, align 4, !tbaa !63
  %i.bt = load <2 x i32>, ptr %i.bp, align 4, !tbaa !29 ; 4 uses
  %i.bu = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bs, i64 1
  %i.bw = fmul fast <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = fadd fast <2 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = add nsw <2 x i32> %i.bt, splat (i32 -1)
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>   ; 3 uses
  %i.ca = fmul fast <2 x float> %i.bx, %i.bz
  %i.cb = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ca)
  %i.cc = fsub fast <2 x float> %i.cb, %i.bz
  %i.cd = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cc)
  %i.ce = fsub fast <2 x float> %i.bz, %i.cd
  %i.cf = sitofp <2 x i32> %i.bt to <2 x float>
  %i.cg = fadd fast <2 x float> %i.cf, splat (float -1.000000e+00)
  %i.ch = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ce, <2 x float> zeroinitializer)
  %i.ci = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ch, <2 x float> %i.cg)
  %i.cj = fadd fast <2 x float> %i.ci, splat (float 5.000000e-01)
  %i.ck = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cj)
  %i.cl = fptosi <2 x float> %i.ck to <2 x i32>   ; 3 uses
  %i.cm = extractelement <2 x i32> %i.cl, i64 0   ; 2 uses
  %i.cn = extractelement <2 x i32> %i.cl, i64 1   ; 2 uses
  %i.co = or i32 %i.cn, %i.cm
  %i.cp = icmp sgt i32 %i.co, -1
  %i.cq = icmp sgt <2 x i32> %i.bt, %i.cl         ; 2 uses
  %i.cr = extractelement <2 x i1> %i.cq, i64 0
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = extractelement <2 x i1> %i.cq, i64 1
  %i.cu = and i1 %i.ct, %i.cs
  br i1 %i.cu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cv = extractelement <2 x i32> %i.bt, i64 0
  %i.cw = mul nuw nsw i32 %i.cv, %i.cn
  %i.cx = add nsw i32 %i.cw, %i.cm
  %i.cy = load i32, ptr %i.bq, align 8, !tbaa !13
  %i.cz = mul nsw i32 %i.cy, %i.cx
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.da = phi i32 [ %i.cz, %bb.e ], [ -1, %bb.d ]
  store i32 %i.da, ptr %.2163, align 4, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %.072164, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.071165, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.2163, i64 4
  %i.de = add nuw nsw i32 %.0166, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !239

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %_ZN4ncnn3MatD2Ev.exit77, %.preheader, %_ZN4ncnn3MatD2Ev.exit78.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit189:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !240 ; 2 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit187

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit189
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit188.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit188.lr.ph:                   ; preds = %.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !24, !noalias !243
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !243
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !243
  %factor.op.mul = mul i64 %i.m, %i.o
  %i.p = icmp sgt i32 %i.e, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 28 uses
  br i1 %i.p, label %_ZN4ncnn3MatD2Ev.exit188, label %.loopexit

_ZN4ncnn3MatD2Ev.exit188:                         ; preds = %_ZN4ncnn3MatD2Ev.exit188.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZN4ncnn3MatD2Ev.exit188.lr.ph ] ; 2 uses
  %.0186285 = phi ptr [ %i.fe, %._crit_edge ], [ %i.f, %_ZN4ncnn3MatD2Ev.exit188.lr.ph ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %.reass
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit188, %.split279.us
  %.0183283 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit188 ], [ %i.ff, %.split279.us ]
  %.0184282 = phi ptr [ %i.t, %_ZN4ncnn3MatD2Ev.exit188 ], [ %i.fd, %.split279.us ] ; 2 uses
  %.1281 = phi ptr [ %.0186285, %_ZN4ncnn3MatD2Ev.exit188 ], [ %i.fe, %.split279.us ] ; 40 uses
  %i.u = load <2 x float>, ptr %.0184282, align 4, !tbaa !63
  %i.v = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 3 uses
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = fmul fast <2 x float> %i.u, splat (float 5.000000e-01)
  %i.y = fadd fast <2 x float> %i.x, splat (float 5.000000e-01)
  %i.z = fmul fast <2 x float> %i.y, %i.w
  %i.aa = fadd fast <2 x float> %i.z, splat (float -5.000000e-01) ; 2 uses
  %i.ab = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>   ; 5 uses
  %i.ad = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ae = extractelement <2 x i32> %i.ac, i64 0   ; 10 uses
  %i.af = sitofp <2 x i32> %i.ac to <2 x float>
  %i.ag = fsub fast <2 x float> %i.aa, %i.af
  store <2 x float> %i.ag, ptr %.1281, align 4, !tbaa !63
  %i.ah = icmp sgt i32 %i.ae, -1
  %i.ai = extractelement <2 x i32> %i.v, i64 0    ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ae
  %i.ak = and i1 %i.ah, %i.aj                     ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.1281, i64 8 ; 3 uses
  %i.am = add <4 x i32> %i.ad, <i32 -1, i32 2, i32 1, i32 -1>
  %i.an = sitofp <4 x i32> %i.am to <4 x float>
  %i.ao = fptosi <4 x float> %i.an to <4 x i32>   ; 23 uses
  %i.ap = icmp sgt <4 x i32> %i.ao, splat (i32 -1) ; 4 uses
  %i.aq = extractelement <4 x i32> %i.ao, i64 0
  %i.ar = mul nsw i32 %i.ai, %i.aq                ; 7 uses
  %i.as = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.at = icmp sgt <4 x i32> %i.as, %i.ao         ; 4 uses
  %foldExtExtBinop = and <4 x i1> %i.ap, %i.at
  %foldExtExtBinop.fr = freeze <4 x i1> %foldExtExtBinop
  %i.au = extractelement <4 x i1> %foldExtExtBinop.fr, i64 3
  %foldExtExtBinop365 = and <4 x i1> %i.ap, %i.at
  %i.av = extractelement <4 x i1> %foldExtExtBinop365, i64 2 ; 7 uses
  %foldExtExtBinop367 = and <4 x i1> %i.ap, %i.at
  %i.aw = extractelement <4 x i1> %foldExtExtBinop367, i64 1 ; 7 uses
  %foldExtExtBinop369 = and <4 x i1> %i.ap, %i.at
  %i.ax = extractelement <4 x i1> %foldExtExtBinop369, i64 0 ; 4 uses
  %i.ay = and i1 %i.ak, %i.ax                     ; 2 uses
  %i.az = and i1 %i.av, %i.ax                     ; 2 uses
  %i.ba = and i1 %i.aw, %i.ax                     ; 2 uses
  br i1 %i.au, label %.split277.preheader, label %.split277.us.preheader

.split277.us.preheader:                           ; preds = %bb.a
  store i32 -1, ptr %i.al, align 4, !tbaa !29
  br i1 %i.ay, label %bb.b, label %bb.c

.split277.preheader:                              ; preds = %bb.a
  br i1 %i.ax, label %bb.v, label %.thread337

.thread337:                                       ; preds = %.split277.preheader
  store i32 -1, ptr %i.al, align 4, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %.1281, i64 12
  store i32 -1, ptr %i.bb, align 4, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %.1281, i64 16
  store i32 -1, ptr %i.bc, align 4, !tbaa !29
  br label %.split277.1

bb.b:                                             ; preds = %.split277.us.preheader
  %i.bd = add nsw i32 %i.ar, %i.ae
  %i.be = load i32, ptr %i.s, align 8, !tbaa !13
  %i.bf = mul nsw i32 %i.be, %i.bd
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split277.us.preheader
  %i.bg = phi i32 [ %i.bf, %bb.b ], [ -1, %.split277.us.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.1281, i64 12
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !29
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bi = extractelement <4 x i32> %i.ao, i64 2
  %i.bj = add nsw i32 %i.ar, %i.bi
  %i.bk = load i32, ptr %i.s, align 8, !tbaa !13
  %i.bl = mul nsw i32 %i.bk, %i.bj
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = phi i32 [ %i.bl, %bb.d ], [ -1, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.1281, i64 16
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !29
  br i1 %i.ba, label %bb.f, label %.split277.us.1

bb.f:                                             ; preds = %bb.e
  %i.bo = extractelement <4 x i32> %i.ao, i64 1
  %i.bp = add nsw i32 %i.ar, %i.bo
  %i.bq = load i32, ptr %i.s, align 8, !tbaa !13
  %i.br = mul nsw i32 %i.bq, %i.bp
  br label %.split277.us.1

.split277.us.1:                                   ; preds = %bb.f, %bb.e
  %i.bs = phi i32 [ %i.br, %bb.f ], [ -1, %bb.e ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.1281, i64 20
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %.1281, i64 24
  %i.bv = load i32, ptr %i.q, align 4, !tbaa !52
  %i.bw = extractelement <2 x i32> %i.ac, i64 1   ; 5 uses
  %i.bx = mul nsw i32 %i.bv, %i.bw                ; 3 uses
  %i.by = icmp sgt i32 %i.bw, -1
  %i.bz = load i32, ptr %i.r, align 8, !tbaa !53
  %i.ca = icmp sgt i32 %i.bz, %i.bw
  %i.cb = and i1 %i.by, %i.ca                     ; 3 uses
  %i.cc = and i1 %i.ak, %i.cb
  %i.cd = and i1 %i.av, %i.cb
  %i.ce = and i1 %i.aw, %i.cb
  store i32 -1, ptr %i.bu, align 4, !tbaa !29
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split277.us.1
  %i.cf = add nsw i32 %i.bx, %i.ae
  %i.cg = load i32, ptr %i.s, align 8, !tbaa !13
  %i.ch = mul nsw i32 %i.cg, %i.cf
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.split277.us.1
  %i.ci = phi i32 [ %i.ch, %bb.g ], [ -1, %.split277.us.1 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.1281, i64 28
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !29
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = extractelement <4 x i32> %i.ao, i64 2
  %i.cl = add nsw i32 %i.bx, %i.ck
  %i.cm = load i32, ptr %i.s, align 8, !tbaa !13
  %i.cn = mul nsw i32 %i.cm, %i.cl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = phi i32 [ %i.cn, %bb.i ], [ -1, %bb.h ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.1281, i64 32
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !29
  br i1 %i.ce, label %bb.k, label %.split277.us.2

bb.k:                                             ; preds = %bb.j
  %i.cq = extractelement <4 x i32> %i.ao, i64 1
  %i.cr = add nsw i32 %i.bx, %i.cq
  %i.cs = load i32, ptr %i.s, align 8, !tbaa !13
  %i.ct = mul nsw i32 %i.cs, %i.cr
  br label %.split277.us.2

.split277.us.2:                                   ; preds = %bb.k, %bb.j
end_hunk_0
