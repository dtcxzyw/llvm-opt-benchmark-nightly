Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution1d?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnn15Deconvolution1D10load_modelERKNS_8ModelBinE:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.aa, %bb.ad, %bb.af, %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %3, align 16, !tbaa !48
  store <2 x ptr> %i.cs, ptr %i.by, align 8, !tbaa !48
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cu = load i64, ptr %i.ct, align 16, !tbaa !49
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !50
  store i32 %i.cw, ptr %i.cn, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.db = load <4 x i32>, ptr %i.da, align 8, !tbaa !51
  store <4 x i32> %i.db, ptr %i.co, align 8, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !52
  store i32 %i.dd, ptr %i.cp, align 8, !tbaa !52
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.df = load i64, ptr %i.de, align 16, !tbaa !21
  store i64 %i.df, ptr %i.cq, align 8, !tbaa !21
  %.not.i16 = icmp eq ptr %i.cr, null
  br i1 %.not.i16, label %_ZN4ncnn3MatD2Ev.exit9, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = atomicrmw add ptr %i.cr, i32 -1 acq_rel, align 4
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.ai, label %_ZN4ncnn3MatD2Ev.exit9

bb.ai:                                            ; preds = %bb.ah
  %i.di = load ptr, ptr %i.cx, align 16, !tbaa !19 ; 3 uses
  %.not3.i17 = icmp eq ptr %i.di, null
  %i.dj = load ptr, ptr %3, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i17, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dj)
          to label %_ZN4ncnn3MatD2Ev.exit9 unwind label %bb.am, !inline_history !0

bb.ak:                                            ; preds = %bb.ai
  %.not.i25 = icmp eq ptr %i.dj, null
  br i1 %.not.i25, label %_ZN4ncnn3MatD2Ev.exit9, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef nonnull %i.dj) #10
  br label %_ZN4ncnn3MatD2Ev.exit9

bb.am:                                            ; preds = %bb.aj
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit9:                           ; preds = %bb.ah, %bb.ag, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.dp = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZNK4ncnn3Mat5emptyEv.exit40.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %_ZN4ncnn3MatD2Ev.exit9
  %i.dr = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.ds = load i32, ptr %i.cp, align 8, !tbaa !52
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.dr, %i.dt
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_ZNK4ncnn3Mat5emptyEv.exit40.thread, label %bb.au

bb.an:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %.not.i20 = icmp eq ptr %i.dx, null
  br i1 %.not.i20, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = atomicrmw add ptr %i.dx, i32 -1 acq_rel, align 4
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !19 ; 3 uses
  %.not3.i21 = icmp eq ptr %i.eb, null
  %i.ec = load ptr, ptr %3, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i21, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef %i.ec)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.at, !inline_history !0

bb.ar:                                            ; preds = %bb.ap
  %.not.i24 = icmp eq ptr %i.ec, null
  br i1 %.not.i24, label %_ZN4ncnn3MatD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.ec) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.at:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ao, %bb.an, %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.av

bb.au:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit, %bb.x
  br label %_ZNK4ncnn3Mat5emptyEv.exit40.thread

_ZNK4ncnn3Mat5emptyEv.exit40.thread:              ; preds = %_ZN4ncnn3MatD2Ev.exit9, %_ZN4ncnn3MatD2Ev.exit11, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit40, %bb.a, %bb.au
  %.06 = phi i32 [ 0, %bb.au ], [ 0, %bb.a ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit40 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZN4ncnn3MatD2Ev.exit11 ], [ -100, %_ZN4ncnn3MatD2Ev.exit9 ]
  ret i32 %.06

bb.av:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit10
  %.pn = phi { ptr, i32 } [ %i.dw, %_ZN4ncnn3MatD2Ev.exit ], [ %i.bf, %_ZN4ncnn3MatD2Ev.exit10 ]
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn15Deconvolution1D7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !74     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %2, align 8, !tbaa !74     ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %4, align 8, !tbaa !20
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK4ncnn3Mat5emptyEv.exit148.thread, label %_ZNK4ncnn3Mat5emptyEv.exit148

_ZNK4ncnn3Mat5emptyEv.exit148:                    ; preds = %bb.b
  %i.p = load i64, ptr %i.m, align 8, !tbaa !21
  %i.q = load i32, ptr %i.l, align 8, !tbaa !52
  %i.r = sext i32 %i.q to i64
  %i.s = mul i64 %i.p, %i.r
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNK4ncnn3Mat5emptyEv.exit148.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !21
  %i.z = mul i32 %i.g, %i.e
  %i.aa = mul i32 %i.z, %i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.aa, i64 noundef 4, ptr noundef %i.ac)
          to label %bb.e unwind label %8

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %5, align 8, !tbaa !20    ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK4ncnn3Mat5emptyEv.exit147.thread, label %_ZNK4ncnn3Mat5emptyEv.exit147

_ZNK4ncnn3Mat5emptyEv.exit147:                    ; preds = %bb.e
  %i.af = load i64, ptr %i.y, align 8, !tbaa !21
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !52
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %i.af, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNK4ncnn3Mat5emptyEv.exit147.thread, label %10

8:                                                ; preds = %bb.d
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

10:                                               ; preds = %_ZNK4ncnn3Mat5emptyEv.exit147
  %11 = load ptr, ptr %4, align 8, !tbaa !20      ; 3 uses
  %12 = icmp sgt i32 %i.i, 0
  br i1 %12, label %.preheader151, label %.preheader150

.preheader151:                                    ; preds = %10
  %i.ak = icmp slt i32 %i.e, 1
  %i.al = icmp slt i32 %i.g, 1
  %brmerge163 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %brmerge163, label %.preheader150, label %.preheader150.preheader

.preheader150.preheader:                          ; preds = %.preheader151
  %i.am = zext nneg i32 %i.i to i64               ; 4 uses
  %i.an = zext nneg i32 %i.g to i64               ; 11 uses
  %i.ao = zext nneg i32 %i.e to i64               ; 4 uses
  %i.ap = mul nuw nsw i64 %i.ao, %i.an
  %i.aq = shl nuw i64 %i.ap, 2                    ; 2 uses
  %i.ar = shl nuw nsw i64 %i.an, 2
  %i.as = add nuw nsw i64 %i.ao, 4611686018427387903
  %i.at = mul i64 %i.as, %i.am
  %i.au = shl i64 %i.at, 2
  %i.av = add i64 %i.au, 4
  %i.aw = mul i64 %i.av, %i.an
  %i.ax = mul nuw nsw i64 %i.am, %i.an
  %i.ay = getelementptr i8, ptr %i.ad, i64 %i.aq
  %i.az = getelementptr i8, ptr %11, i64 %i.aw
  %min.iters.check = icmp ult i32 %i.g, 8
  %stride.check = icmp samesign ugt i64 %i.ax, 2305843009213693951
  %n.vec = and i64 %i.an, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.an
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split

.split:                                           ; preds = %.preheader150.preheader, %._crit_edge154
  %indvars.iv166 = phi i64 [ 0, %.preheader150.preheader ], [ %indvars.iv.next172, %._crit_edge154 ] ; 5 uses
  %13 = mul i64 %i.aq, %indvars.iv166             ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ad, i64 %13
  %i.bb = getelementptr i8, ptr %i.ay, i64 %13
  %14 = mul i64 %i.ar, %indvars.iv166             ; 2 uses
  %i.bc = getelementptr i8, ptr %11, i64 %14
  %scevgep209 = getelementptr i8, ptr %i.az, i64 %14
  %15 = mul nuw nsw i64 %indvars.iv166, %i.ao
  %bound0 = icmp ult ptr %i.ba, %scevgep209
  %bound1 = icmp ult ptr %i.bc, %i.bb
  %found.conflict = and i1 %bound0, %bound1
  %16 = or i1 %found.conflict, %stride.check
  br label %.preheader

.preheader150:                                    ; preds = %._crit_edge154, %.preheader151, %10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %scevgep = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %scevgep212 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %scevgep213 = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %scevgep213, align 8, !tbaa !21
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %scevgep212, i8 0, i64 28, i1 false)
  %19 = load i32, ptr %18, align 8, !tbaa !45
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %bb.i, label %bb.f

.preheader:                                       ; preds = %.split, %._crit_edge
  %indvars.iv166.a = phi i64 [ 0, %.split ], [ %indvars.iv.next167, %._crit_edge ] ; 3 uses
  %i.bd = mul nuw nsw i64 %indvars.iv166.a, %i.am
  %i.be = add nuw nsw i64 %i.bd, %indvars.iv166
  %i.bf = mul nuw nsw i64 %i.be, %i.an
  %i.bg = add nuw nsw i64 %indvars.iv166.a, %15
  %i.bh = mul nuw nsw i64 %i.bg, %i.an
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.bf ; 6 uses
  %invariant.gep210 = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bh ; 6 uses
  %brmerge216 = select i1 %min.iters.check, i1 true, i1 %16
  br i1 %brmerge216, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <4 x float>, ptr %i.bi, align 4, !tbaa !59, !alias.scope !76
  %wide.load215 = load <4 x float>, ptr %i.bj, align 4, !tbaa !59, !alias.scope !76
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep210, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x float> %wide.load, ptr %i.bk, align 4, !tbaa !59, !alias.scope !77, !noalias !76
  store <4 x float> %wide.load215, ptr %i.bl, align 4, !tbaa !59, !alias.scope !77, !noalias !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bn = load float, ptr %gep.prol, align 4, !tbaa !59
  %gep211.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep210, i64 %indvars.iv.prol
  store float %i.bn, ptr %gep211.prol, align 4, !tbaa !59
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !70

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv.ph, %i.an
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge, label %scalar.ph

._crit_edge154:                                   ; preds = %._crit_edge
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %i.am
  br i1 %exitcond175.not, label %.preheader150, label %.split, !llvm.loop !71

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166.a, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %i.ao
  br i1 %exitcond170.not, label %._crit_edge154, label %.preheader, !llvm.loop !72

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bq = load float, ptr %gep, align 4, !tbaa !59
  %gep211 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep210, i64 %indvars.iv
  store float %i.bq, ptr %gep211, align 4, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.br = load float, ptr %gep.1, align 4, !tbaa !59
  %gep211.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep210, i64 %indvars.iv.next
  store float %i.br, ptr %gep211.1, align 4, !tbaa !59
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bs = load float, ptr %gep.2, align 4, !tbaa !59
  %gep211.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep210, i64 %indvars.iv.next.1
  store float %i.bs, ptr %gep211.2, align 4, !tbaa !59
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bt = load float, ptr %gep.3, align 4, !tbaa !59
  %gep211.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep210, i64 %indvars.iv.next.2
  store float %i.bt, ptr %gep211.3, align 4, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.an
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !73

bb.f:                                             ; preds = %.preheader150
  %i.bu = load ptr, ptr %1, align 8, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %6, align 8, !tbaa !20
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZNK4ncnn3Mat5emptyEv.exit146.thread, label %_ZNK4ncnn3Mat5emptyEv.exit146

bb.h:                                             ; preds = %bb.f
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNK4ncnn3Mat5emptyEv.exit146:                    ; preds = %bb.g
  %i.bz = load i64, ptr %scevgep213, align 8, !tbaa !21
  %i.ca = load i32, ptr %17, align 8, !tbaa !52
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %i.bz, %i.cb
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZNK4ncnn3Mat5emptyEv.exit146.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit146, %.preheader150
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !39
  %i.ci = add nsw i32 %i.g, -1
  %i.cj = mul nsw i32 %i.ch, %i.ci
  %i.ck = add nsw i32 %i.cj, 1
  %i.cl = add nsw i32 %i.cf, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40
  %i.co = mul nsw i32 %i.cn, %i.cl
  %i.cp = add nsw i32 %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !43
  %i.cs = add nsw i32 %i.cp, %i.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 0, ptr %i.cz, align 16, !tbaa !21
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cw, i8 0, i64 28, i1 false)
  %i.db = load i32, ptr %i.da, align 8, !tbaa !41
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %_ZN4ncnn3MataSERKS0_.exit.invoke, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !42
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %_ZN4ncnn3MataSERKS0_.exit.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !44
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %_ZN4ncnn3MataSERKS0_.exit.invoke, label %bb.m

bb.l:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit.invoke, %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %bb.k
  %i.dk = icmp eq ptr %7, %i.c
  br i1 %i.dk, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !18 ; 2 uses
  %.not.i143 = icmp eq ptr %i.dm, null
  br i1 %.not.i143, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = atomicrmw add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.ct, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.q, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dq = load ptr, ptr %i.cw, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.dq, null
  %i.dr = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.dr)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i unwind label %bb.l, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %.not.i18.i = icmp eq ptr %i.dr, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.dr) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.n, %bb.s, %bb.t, %bb.r, %bb.p, %bb.o
  %i.dv = load <2 x ptr>, ptr %i.c, align 8, !tbaa !48
  store <2 x ptr> %i.dv, ptr %7, align 16, !tbaa !48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !49
  store i64 %i.dx, ptr %i.cu, align 16, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !50
  store i32 %i.dz, ptr %i.cv, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !19
  store ptr %i.eb, ptr %i.cw, align 16, !tbaa !19
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ed = load <4 x i32>, ptr %i.ec, align 8, !tbaa !51
  store <4 x i32> %i.ed, ptr %i.cx, align 8, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !52
  store i32 %i.ef, ptr %i.cy, align 8, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !21
  store i64 %i.eh, ptr %i.cz, align 16, !tbaa !21
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i, %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN4ncnn3MataSERKS0_.exit.invoke

_ZN4ncnn3MataSERKS0_.exit.invoke:                 ; preds = %bb.i, %bb.j, %bb.k, %_ZN4ncnn3MataSERKS0_.exit
  %.in = phi ptr [ %i.ei, %_ZN4ncnn3MataSERKS0_.exit ], [ %i.ab, %bb.k ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ]
  %i.ej = load ptr, ptr %.in, align 8, !tbaa !63
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.cs, i32 noundef %i.i, i64 noundef 4, ptr noundef %i.ej)
          to label %bb.u unwind label %bb.l

bb.u:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit.invoke
  %i.ek = load ptr, ptr %7, align 16, !tbaa !20
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZNK4ncnn3Mat5emptyEv.exit145.thread, label %_ZNK4ncnn3Mat5emptyEv.exit145

_ZNK4ncnn3Mat5emptyEv.exit145:                    ; preds = %bb.u
  %i.em = load i64, ptr %i.cz, align 16, !tbaa !21
  %i.en = load i32, ptr %i.cy, align 8, !tbaa !52
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul i64 %i.em, %i.eo
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_ZNK4ncnn3Mat5emptyEv.exit145.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit145
  %i.er = load i32, ptr %i.cm, align 4, !tbaa !40
  %i.es = load i32, ptr %i.cg, align 8, !tbaa !39
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !47
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 256
  call fastcc void @_ZN4ncnnL15deconvolution1dERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.g, i32 noundef %i.er, i32 noundef %i.es, i32 noundef %i.eu, ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef nonnull align 8 dereferenceable(64) %3)
  invoke void @_ZNK4ncnn15Deconvolution1D11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !21
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !52
  %i.fd = sext i32 %i.fc to i64
  %i.fe = mul i64 %i.fa, %i.fd
  %.fr = freeze i64 %i.fe
  %i.ff = icmp eq i64 %.fr, 0
  br i1 %i.ff, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit145.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.x, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %_ZNK4ncnn3Mat5emptyEv.exit145.thread

_ZNK4ncnn3Mat5emptyEv.exit145.thread:             ; preds = %bb.u, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit145
  %.283 = phi i32 [ 0, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit145 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ -100, %bb.u ]
  %i.fg = load ptr, ptr %i.ct, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.fg, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit99, label %bb.y

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit145.thread
  %i.fh = atomicrmw add ptr %i.fg, i32 -1 acq_rel, align 4
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.z, label %_ZN4ncnn3MatD2Ev.exit99

bb.z:                                             ; preds = %bb.y
  %i.fj = load ptr, ptr %i.cw, align 16, !tbaa !19 ; 3 uses
  %.not3.i = icmp eq ptr %i.fj, null
  %i.fk = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef %i.fk)
          to label %_ZN4ncnn3MatD2Ev.exit99 unwind label %bb.ad, !inline_history !0

bb.ab:                                            ; preds = %bb.z
  %.not.i141 = icmp eq ptr %i.fk, null
  br i1 %.not.i141, label %_ZN4ncnn3MatD2Ev.exit99, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.fk) #10
  br label %_ZN4ncnn3MatD2Ev.exit99

bb.ad:                                            ; preds = %bb.aa
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit99:                          ; preds = %bb.y, %_ZNK4ncnn3Mat5emptyEv.exit145.thread, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit146.thread

bb.ae:                                            ; preds = %bb.w, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.w ], [ %i.dj, %bb.l ]
  %i.fq = load ptr, ptr %i.ct, align 8, !tbaa !18 ; 2 uses
  %.not.i100 = icmp eq ptr %i.fq, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit98, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fr = atomicrmw add ptr %i.fq, i32 -1 acq_rel, align 4
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.ag, label %_ZN4ncnn3MatD2Ev.exit98

bb.ag:                                            ; preds = %bb.af
  %i.ft = load ptr, ptr %i.cw, align 16, !tbaa !19 ; 3 uses
  %.not3.i101 = icmp eq ptr %i.ft, null
  %i.fu = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i101, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef %i.fu)
          to label %_ZN4ncnn3MatD2Ev.exit98 unwind label %bb.ak, !inline_history !0

bb.ai:                                            ; preds = %bb.ag
  %.not.i139 = icmp eq ptr %i.fu, null
  br i1 %.not.i139, label %_ZN4ncnn3MatD2Ev.exit98, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.fu) #10
  br label %_ZN4ncnn3MatD2Ev.exit98

bb.ak:                                            ; preds = %bb.ah
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit98:                          ; preds = %bb.af, %bb.ae, %bb.ah, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.ar

_ZNK4ncnn3Mat5emptyEv.exit146.thread:             ; preds = %bb.g, %_ZNK4ncnn3Mat5emptyEv.exit146, %_ZN4ncnn3MatD2Ev.exit99
  %.384 = phi i32 [ %.283, %_ZN4ncnn3MatD2Ev.exit99 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit146 ], [ -100, %bb.g ]
  %i.ga = load ptr, ptr %scevgep, align 8, !tbaa !18 ; 2 uses
  %.not.i104 = icmp eq ptr %i.ga, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit97, label %bb.al

bb.al:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit146.thread
  %i.gb = atomicrmw add ptr %i.ga, i32 -1 acq_rel, align 4
  %i.gc = icmp eq i32 %i.gb, 1
  br i1 %i.gc, label %bb.am, label %_ZN4ncnn3MatD2Ev.exit97

bb.am:                                            ; preds = %bb.al
  %i.gd = load ptr, ptr %scevgep212, align 8, !tbaa !19 ; 3 uses
  %.not3.i105 = icmp eq ptr %i.gd, null
  %i.ge = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i105, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.ge)
          to label %_ZN4ncnn3MatD2Ev.exit97 unwind label %bb.aq, !inline_history !0

bb.ao:                                            ; preds = %bb.am
  %.not.i137 = icmp eq ptr %i.ge, null
  br i1 %.not.i137, label %_ZN4ncnn3MatD2Ev.exit97, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.ge) #10
  br label %_ZN4ncnn3MatD2Ev.exit97

bb.aq:                                            ; preds = %bb.an
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit97:                          ; preds = %bb.al, %_ZNK4ncnn3Mat5emptyEv.exit146.thread, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit147.thread

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit98, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN4ncnn3MatD2Ev.exit98 ], [ %i.by, %bb.h ]
  %i.gk = load ptr, ptr %scevgep, align 8, !tbaa !18 ; 2 uses
  %.not.i108 = icmp eq ptr %i.gk, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit96, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = atomicrmw add ptr %i.gk, i32 -1 acq_rel, align 4
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit96

bb.at:                                            ; preds = %bb.as
  %i.gn = load ptr, ptr %scevgep212, align 8, !tbaa !19 ; 3 uses
  %.not3.i109 = icmp eq ptr %i.gn, null
  %i.go = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i109, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef %i.go)
          to label %_ZN4ncnn3MatD2Ev.exit96 unwind label %bb.ax, !inline_history !0

bb.av:                                            ; preds = %bb.at
  %.not.i135 = icmp eq ptr %i.go, null
  br i1 %.not.i135, label %_ZN4ncnn3MatD2Ev.exit96, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.go) #10
  br label %_ZN4ncnn3MatD2Ev.exit96

bb.ax:                                            ; preds = %bb.au
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit96:                          ; preds = %bb.as, %bb.ar, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.be

_ZNK4ncnn3Mat5emptyEv.exit147.thread:             ; preds = %bb.e, %_ZNK4ncnn3Mat5emptyEv.exit147, %_ZN4ncnn3MatD2Ev.exit97
  %.4 = phi i32 [ %.384, %_ZN4ncnn3MatD2Ev.exit97 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit147 ], [ -100, %bb.e ]
  %i.gu = load ptr, ptr %i.v, align 8, !tbaa !18  ; 2 uses
  %.not.i112 = icmp eq ptr %i.gu, null
  br i1 %.not.i112, label %_ZN4ncnn3MatD2Ev.exit95, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit147.thread
  %i.gv = atomicrmw add ptr %i.gu, i32 -1 acq_rel, align 4
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.az, label %_ZN4ncnn3MatD2Ev.exit95

bb.az:                                            ; preds = %bb.ay
  %i.gx = load ptr, ptr %i.w, align 8, !tbaa !19  ; 3 uses
  %.not3.i113 = icmp eq ptr %i.gx, null
  %i.gy = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i113, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  invoke void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef %i.gy)
          to label %_ZN4ncnn3MatD2Ev.exit95 unwind label %bb.bd, !inline_history !0

bb.bb:                                            ; preds = %bb.az
  %.not.i133 = icmp eq ptr %i.gy, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit95, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.gy) #10
  br label %_ZN4ncnn3MatD2Ev.exit95

bb.bd:                                            ; preds = %bb.ba
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit95:                          ; preds = %bb.ay, %_ZNK4ncnn3Mat5emptyEv.exit147.thread, %bb.ba, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit148.thread

bb.be:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit96, %8
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN4ncnn3MatD2Ev.exit96 ], [ %9, %8 ]
  %i.he = load ptr, ptr %i.v, align 8, !tbaa !18  ; 2 uses
  %.not.i116 = icmp eq ptr %i.he, null
  br i1 %.not.i116, label %_ZN4ncnn3MatD2Ev.exit94, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = atomicrmw add ptr %i.he, i32 -1 acq_rel, align 4
  %i.hg = icmp eq i32 %i.hf, 1
  br i1 %i.hg, label %bb.bg, label %_ZN4ncnn3MatD2Ev.exit94

bb.bg:                                            ; preds = %bb.bf
  %i.hh = load ptr, ptr %i.w, align 8, !tbaa !19  ; 3 uses
  %.not3.i117 = icmp eq ptr %i.hh, null
  %i.hi = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i117, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef %i.hi)
          to label %_ZN4ncnn3MatD2Ev.exit94 unwind label %bb.bk, !inline_history !0

bb.bi:                                            ; preds = %bb.bg
  %.not.i131 = icmp eq ptr %i.hi, null
  br i1 %.not.i131, label %_ZN4ncnn3MatD2Ev.exit94, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %i.hi) #10
  br label %_ZN4ncnn3MatD2Ev.exit94

bb.bk:                                            ; preds = %bb.bh
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit94:                          ; preds = %bb.bf, %bb.be, %bb.bh, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.br

_ZNK4ncnn3Mat5emptyEv.exit148.thread:             ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit148, %_ZN4ncnn3MatD2Ev.exit95
  %.5 = phi i32 [ %.4, %_ZN4ncnn3MatD2Ev.exit95 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit148 ], [ -100, %bb.b ]
  %i.ho = load ptr, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %.not.i120 = icmp eq ptr %i.ho, null
  br i1 %.not.i120, label %_ZN4ncnn3MatD2Ev.exit93, label %bb.bl

bb.bl:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit148.thread
  %i.hp = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.bm, label %_ZN4ncnn3MatD2Ev.exit93

bb.bm:                                            ; preds = %bb.bl
  %i.hr = load ptr, ptr %i.k, align 8, !tbaa !19  ; 3 uses
  %.not3.i121 = icmp eq ptr %i.hr, null
  %i.hs = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i121, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef %i.hs)
          to label %_ZN4ncnn3MatD2Ev.exit93 unwind label %bb.bq, !inline_history !0

bb.bo:                                            ; preds = %bb.bm
  %.not.i129 = icmp eq ptr %i.hs, null
  br i1 %.not.i129, label %_ZN4ncnn3MatD2Ev.exit93, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @free(ptr noundef nonnull %i.hs) #10
  br label %_ZN4ncnn3MatD2Ev.exit93

bb.bq:                                            ; preds = %bb.bn
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit93:                          ; preds = %bb.bl, %_ZNK4ncnn3Mat5emptyEv.exit148.thread, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.5

bb.br:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit94, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit94 ], [ %i.u, %bb.c ]
  %i.hy = load ptr, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %.not.i124 = icmp eq ptr %i.hy, null
  br i1 %.not.i124, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = atomicrmw add ptr %i.hy, i32 -1 acq_rel, align 4
  %i.ia = icmp eq i32 %i.hz, 1
  br i1 %i.ia, label %bb.bt, label %_ZN4ncnn3MatD2Ev.exit

bb.bt:                                            ; preds = %bb.bs
  %i.ib = load ptr, ptr %i.k, align 8, !tbaa !19  ; 3 uses
  %.not3.i125 = icmp eq ptr %i.ib, null
  %i.ic = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i125, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !12
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef %i.ic)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bx, !inline_history !0

bb.bv:                                            ; preds = %bb.bt
  %.not.i128 = icmp eq ptr %i.ic, null
  br i1 %.not.i128, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @free(ptr noundef nonnull %i.ic) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bx:                                            ; preds = %bb.bu
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bs, %bb.br, %bb.bu, %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn15Deconvolution1D7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %i.f
  %i.k = add nsw i32 %i.j, 1
  %i.l = add nsw i32 %i.b, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = load i32, ptr %i.q, align 8, !tbaa !43
  %i.s = add nsw i32 %i.p, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  store i64 0, ptr %i.z, align 16, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !41
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.thread.invoke, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !42
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.thread.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !44
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.thread.invoke, label %bb.e

bb.d:                                             ; preds = %.thread.invoke, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %.not.i33 = icmp eq ptr %i.al, null
  br i1 %.not.i33, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = atomicrmw add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !18  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.h, label %.thread
end_hunk_0
