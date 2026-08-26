Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_avx512?download=true
inline.NumInlined: 230
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4ncnn31ConvolutionDepthWise_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cf = getelementptr i8, ptr %.0196482, i64 %i.br ; 2 uses
  %broadcast.splatinsert672 = insertelement <8 x float> poison, float %i.by, i64 0
  %broadcast.splat673 = shufflevector <8 x float> %broadcast.splatinsert672, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index674 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next676, %vec.epilog.vector.body ] ; 2 uses
  %i.cg = shl i64 %index674, 2
  %next.gep675 = getelementptr i8, ptr %.0196482, i64 %i.cg
  store <8 x float> %broadcast.splat673, ptr %next.gep675, align 4, !tbaa !45
  %index.next676 = add nuw i64 %index674, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next676, %n.vec671
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !145

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n677, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1197480.ph = phi ptr [ %.0196482, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.0218479.ph = phi i32 [ 0, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa668 = phi ptr [ %i.cf, %vec.epilog.middle.block ], [ %i.bz, %middle.block ], [ %i.ci, %vec.epilog.scalar.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond538.not, label %._crit_edge484.split, label %iter.check, !llvm.loop !146

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.1197480 = phi ptr [ %i.ci, %vec.epilog.scalar.ph ], [ %.1197480.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0218479 = phi i32 [ %i.cj, %vec.epilog.scalar.ph ], [ %.0218479.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.1197480, i64 4 ; 2 uses
  store float %i.by, ptr %.1197480, align 4, !tbaa !45
  %i.cj = add nuw nsw i32 %.0218479, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cj, %i.bd
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !147

bb.f:                                             ; preds = %._crit_edge484.split
  %i.ck = load ptr, ptr %4, align 16, !tbaa !18
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZNK4ncnn3Mat5emptyEv.exit354, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cm = load i64, ptr %i.av, align 16, !tbaa !20
  %i.cn = load i32, ptr %i.au, align 8, !tbaa !73
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %i.cm, %i.co
  %i.cq = icmp eq i64 %i.cp, 0
  br label %_ZNK4ncnn3Mat5emptyEv.exit354

_ZNK4ncnn3Mat5emptyEv.exit354:                    ; preds = %bb.f, %bb.g
  %i.cr = phi i1 [ true, %bb.f ], [ %i.cq, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.cs = load ptr, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %.not.i267 = icmp eq ptr %i.cs, null
  br i1 %.not.i267, label %_ZN4ncnn3MatD2Ev.exit265, label %bb.h

bb.h:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit354
  %i.ct = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit265

bb.i:                                             ; preds = %bb.h
  %i.cv = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 3 uses
  %.not3.i268 = icmp eq ptr %i.cv, null
  %i.cw = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i268, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.cw)
          to label %_ZN4ncnn3MatD2Ev.exit265 unwind label %bb.m, !inline_history !19

bb.k:                                             ; preds = %bb.i
  %.not.i342 = icmp eq ptr %i.cw, null
  br i1 %.not.i342, label %_ZN4ncnn3MatD2Ev.exit265, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.cw) #13
  br label %_ZN4ncnn3MatD2Ev.exit265

bb.m:                                             ; preds = %bb.j
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit265:                         ; preds = %bb.h, %_ZNK4ncnn3Mat5emptyEv.exit354, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.cr, label %bb.gq, label %bb.u

bb.n:                                             ; preds = %._crit_edge484.split
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.dd = load ptr, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.dd, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit266, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = atomicrmw add ptr %i.dd, i32 -1 acq_rel, align 4
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit266

bb.p:                                             ; preds = %bb.o
  %i.dg = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.dg, null
  %i.dh = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef %i.dh)
          to label %_ZN4ncnn3MatD2Ev.exit266 unwind label %bb.t, !inline_history !19

bb.r:                                             ; preds = %bb.p
  %.not.i344 = icmp eq ptr %i.dh, null
  br i1 %.not.i344, label %_ZN4ncnn3MatD2Ev.exit266, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.dh) #13
  br label %_ZN4ncnn3MatD2Ev.exit266

bb.t:                                             ; preds = %bb.q
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit266:                         ; preds = %bb.s, %bb.r, %bb.q, %bb.n, %bb.o, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.e ], [ %i.dc, %bb.o ], [ %i.dc, %bb.n ], [ %i.dc, %bb.q ], [ %i.dc, %bb.r ], [ %i.dc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.gx

bb.u:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit265, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 0, ptr %i.dv, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.dq, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn20ConvolutionDepthWise12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %7, align 16, !tbaa !18
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %_ZNK4ncnn3Mat5emptyEv.exit353

_ZNK4ncnn3Mat5emptyEv.exit353:                    ; preds = %bb.v
  %i.dy = load i64, ptr %i.dv, align 16, !tbaa !20
  %i.dz = load i32, ptr %i.du, align 8, !tbaa !73 ; 3 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul i64 %i.dy, %i.ea
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit353
  %i.ee = load i32, ptr %i.ds, align 4, !tbaa !80 ; 3 uses
  %i.ef = load i32, ptr %i.dt, align 16, !tbaa !81
  store i32 %i.dz, ptr %i.a, align 4, !tbaa !72
  %i.eg = load i32, ptr %i.dp, align 8, !tbaa !71 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.eh = add i32 %i.ee, %.neg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !66
  %i.ek = sdiv i32 %i.eh, %i.ej
  %i.el = add nsw i32 %i.ek, 1                    ; 3 uses
  store i32 %i.el, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.em = add i32 %i.ef, %.neg226
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !67
  %i.ep = sdiv i32 %i.em, %i.eo
  %i.eq = add nsw i32 %i.ep, 1                    ; 3 uses
  store i32 %i.eq, ptr %i.c, align 4, !tbaa !72
  %i.er = mul nsw i32 %i.eg, %i.dz                ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 12 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !61
  %i.eu = icmp eq i32 %i.er, %i.et
  br i1 %i.eu, label %bb.y, label %bb.ct

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !62
  %i.ex = icmp eq i32 %i.er, %i.ew
  br i1 %i.ex, label %bb.z, label %bb.ct

bb.z:                                             ; preds = %bb.y
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !63, !range !55, !noundef !56
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = and i32 %i.er, 7
  %i.fc = icmp eq i32 %i.fb, 0
  %i.fd = and i1 %i.fc, %i.fa                     ; 2 uses
  %.0217 = select i1 %i.fd, i32 8, i32 1          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !88
  %i.fg = icmp sgt i32 %i.ff, 100                 ; 2 uses
  %i.fh = zext i1 %i.fg to i8
  store i8 %i.fh, ptr %i.d, align 1, !tbaa !103
  %i.fi = shl nuw nsw i32 %.0217, 2
  %i.fj = select i1 %i.fg, i32 %.0217, i32 %i.fi
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = sdiv i32 %i.er, 8
  %24 = select i1 %i.fd, i32 %i.fl, i32 %i.er
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.el, i32 noundef %i.eq, i32 noundef %24, i64 noundef %i.fk, i32 noundef %.0217, ptr noundef %i.fn)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fo = load ptr, ptr %2, align 8, !tbaa !18
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %_ZNK4ncnn3Mat5emptyEv.exit352

_ZNK4ncnn3Mat5emptyEv.exit352:                    ; preds = %bb.aa
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !20
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !73
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul i64 %i.fr, %i.fu
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %bb.ac

bb.ab:                                            ; preds = %.invoke, %bb.z
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit352
  switch i32 %i.eg, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread [
    i32 8, label %bb.ad
    i32 1, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.fy = load i32, ptr %i.y, align 4, !tbaa !58
  %i.fz = load i32, ptr %i.ae, align 8, !tbaa !59
  %i.ga = mul nsw i32 %i.fz, %i.fy                ; 2 uses
  store i32 %i.ga, ptr %i.e, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.gb = sext i32 %i.ga to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.gb, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.gc = load ptr, ptr %8, align 8, !tbaa !91    ; 2 uses
  store ptr %i.gc, ptr %i.f, align 8, !tbaa !92
  %i.gd = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.ge = mul nsw i32 %i.gd, %i.ee
  %i.gf = load i32, ptr %i.y, align 4, !tbaa !58  ; 3 uses
  %i.gg = load i32, ptr %i.w, align 4, !tbaa !64
  %i.gh = mul nsw i32 %i.gg, %i.gf
  %i.gi = sub i32 %i.ge, %i.gh
  %i.gj = load i32, ptr %i.ae, align 8, !tbaa !59 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  %i.gl = icmp sgt i32 %i.gf, 0
  %or.cond = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond, label %.preheader396, label %._crit_edge500

.preheader396:                                    ; preds = %bb.ae, %._crit_edge494
  %i.gm = phi i32 [ %i.ha, %._crit_edge494 ], [ %i.gj, %bb.ae ]
  %i.gn = phi i32 [ %i.hb, %._crit_edge494 ], [ %i.gf, %bb.ae ] ; 2 uses
  %.0207499 = phi i32 [ %i.hd, %._crit_edge494 ], [ 0, %bb.ae ]
  %.0209498 = phi i32 [ %i.hc, %._crit_edge494 ], [ 0, %bb.ae ] ; 2 uses
  %.0211497 = phi i32 [ %.1212.lcssa, %._crit_edge494 ], [ 0, %bb.ae ] ; 2 uses
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph493.preheader, label %._crit_edge494

.lr.ph493.preheader:                              ; preds = %.preheader396
  %i.gp = sext i32 %.0211497 to i64
  br label %.lr.ph493

._crit_edge500:                                   ; preds = %._crit_edge494, %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !93
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.gr)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn31ConvolutionDepthWise_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %7, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.f, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %i.gs = load ptr, ptr %8, align 8, !tbaa !91    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge500
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !97
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gx) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge500, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %_ZNK4ncnn3Mat5emptyEv.exit352.thread

bb.ag:                                            ; preds = %bb.ad
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.cs

._crit_edge494.loopexit:                          ; preds = %.lr.ph493
  %i.gz = trunc nsw i64 %indvars.iv.next560 to i32
  %.pre566 = load i32, ptr %i.ae, align 8, !tbaa !59
  br label %._crit_edge494

._crit_edge494:                                   ; preds = %._crit_edge494.loopexit, %.preheader396
  %i.ha = phi i32 [ %i.gm, %.preheader396 ], [ %.pre566, %._crit_edge494.loopexit ] ; 2 uses
  %i.hb = phi i32 [ %i.gn, %.preheader396 ], [ %i.hj, %._crit_edge494.loopexit ]
  %.1212.lcssa = phi i32 [ %.0211497, %.preheader396 ], [ %i.gz, %._crit_edge494.loopexit ]
  %.1210.lcssa = phi i32 [ %.0209498, %.preheader396 ], [ %i.hh, %._crit_edge494.loopexit ]
  %i.hc = add nsw i32 %i.gi, %.1210.lcssa
  %i.hd = add nuw nsw i32 %.0207499, 1            ; 2 uses
  %i.he = icmp slt i32 %i.hd, %i.ha
  br i1 %i.he, label %.preheader396, label %._crit_edge500, !llvm.loop !148

.lr.ph493:                                        ; preds = %.lr.ph493.preheader, %.lr.ph493
  %indvars.iv559 = phi i64 [ %i.gp, %.lr.ph493.preheader ], [ %indvars.iv.next560, %.lr.ph493 ] ; 2 uses
  %.0206492 = phi i32 [ 0, %.lr.ph493.preheader ], [ %i.hi, %.lr.ph493 ]
  %.1210491 = phi i32 [ %.0209498, %.lr.ph493.preheader ], [ %i.hh, %.lr.ph493 ] ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv559
  store i32 %.1210491, ptr %i.hf, align 4, !tbaa !72
  %indvars.iv.next560 = add nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.hg = load i32, ptr %i.w, align 4, !tbaa !64
  %i.hh = add nsw i32 %i.hg, %.1210491            ; 2 uses
  %i.hi = add nuw nsw i32 %.0206492, 1            ; 2 uses
  %i.hj = load i32, ptr %i.y, align 4, !tbaa !58  ; 2 uses
  %i.hk = icmp slt i32 %i.hi, %i.hj
  br i1 %i.hk, label %.lr.ph493, label %._crit_edge494.loopexit, !llvm.loop !149

bb.ah:                                            ; preds = %bb.ac
  %i.hl = load i32, ptr %i.y, align 4, !tbaa !58  ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 3
  %.pre565 = load i32, ptr %i.ae, align 8, !tbaa !59 ; 2 uses
  %i.hn = icmp eq i32 %.pre565, 3
  %or.cond658 = select i1 %i.hm, i1 %i.hn, i1 false
  br i1 %or.cond658, label %bb.ai, label %.thread391

bb.ai:                                            ; preds = %bb.ah
  %i.ho = load i32, ptr %i.ei, align 4, !tbaa !66 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.aj, label %.thread390

bb.aj:                                            ; preds = %bb.ai
  %i.hq = load i32, ptr %i.en, align 8, !tbaa !67
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %bb.ak, label %.thread390

bb.ak:                                            ; preds = %bb.aj
  %i.hs = load i32, ptr %i.w, align 4, !tbaa !64
  %i.ht = icmp eq i32 %i.hs, 1
  br i1 %i.ht, label %bb.al, label %.thread391

bb.al:                                            ; preds = %bb.ak
  %i.hu = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %bb.am, label %.thread391

bb.am:                                            ; preds = %bb.al
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !44
  %switch = icmp ult i32 %i.hx, 2
  br i1 %switch, label %bb.an, label %.thread390

bb.an:                                            ; preds = %bb.am
  %i.hy = load i8, ptr %i.d, align 1, !tbaa !103, !range !55, !noundef !56
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.ao, label %bb.bb

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.ia = load i32, ptr %i.es, align 8, !tbaa !61
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %.lr.ph526, label %._crit_edge527

.lr.ph526:                                        ; preds = %bb.ao
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.ap

._crit_edge527:                                   ; preds = %bb.at, %bb.ao
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.av unwind label %bb.ay

bb.ap:                                            ; preds = %.lr.ph526, %bb.at
  %indvars.iv556 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next557, %bb.at ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv556
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !45 ; 2 uses
  %i.ii = fcmp fast oeq float %i.ih, 0.000000e+00
  br i1 %i.ii, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv556
  %i.il = load float, ptr %i.ik, align 4, !tbaa !45
end_hunk_0
