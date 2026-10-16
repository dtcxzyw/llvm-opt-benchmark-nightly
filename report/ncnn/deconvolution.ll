Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution?download=true
inline.NumInlined: 41
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnn13Deconvolution10load_modelERKNS_8ModelBinE:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %3, align 16, !tbaa !55
  store <2 x ptr> %i.cs, ptr %i.by, align 8, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cu = load i64, ptr %i.ct, align 16, !tbaa !56
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !57
  store i32 %i.cw, ptr %i.cn, align 8, !tbaa !57
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.db = load <4 x i32>, ptr %i.da, align 8, !tbaa !58
  store <4 x i32> %i.db, ptr %i.co, align 8, !tbaa !58
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !59
  store i32 %i.dd, ptr %i.cp, align 8, !tbaa !59
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
  call void @free(ptr noundef nonnull %i.dj) #9
  br label %_ZN4ncnn3MatD2Ev.exit9

bb.am:                                            ; preds = %bb.aj
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit9:                           ; preds = %bb.ah, %bb.ag, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.dp = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZNK4ncnn3Mat5emptyEv.exit40.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %_ZN4ncnn3MatD2Ev.exit9
  %i.dr = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.ds = load i32, ptr %i.cp, align 8, !tbaa !59
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
  call void @free(ptr noundef nonnull %i.ec) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.at:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ao, %bb.an, %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
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
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn13Deconvolution7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !83     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %2, align 8, !tbaa !83     ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !62   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.i = load i32, ptr %i.h, align 8, !tbaa !63   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.k = load i32, ptr %i.j, align 4, !tbaa !64   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %4, align 8, !tbaa !20
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK4ncnn3Mat5emptyEv.exit158.thread, label %_ZNK4ncnn3Mat5emptyEv.exit158

_ZNK4ncnn3Mat5emptyEv.exit158:                    ; preds = %bb.b
  %i.r = load i64, ptr %i.o, align 8, !tbaa !21
  %i.s = load i32, ptr %i.n, align 8, !tbaa !59
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %i.r, %i.t
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNK4ncnn3Mat5emptyEv.exit158.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !21
  %i.ab = mul nsw i32 %i.i, %i.g                  ; 4 uses
  %i.ac = mul i32 %i.k, %i.e
  %i.ad = mul i32 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.ad, i64 noundef 4, ptr noundef %i.af)
          to label %bb.e unwind label %8

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !20    ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNK4ncnn3Mat5emptyEv.exit157.thread, label %_ZNK4ncnn3Mat5emptyEv.exit157

_ZNK4ncnn3Mat5emptyEv.exit157:                    ; preds = %bb.e
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !59
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %i.ai, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNK4ncnn3Mat5emptyEv.exit157.thread, label %10

8:                                                ; preds = %bb.d
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

10:                                               ; preds = %_ZNK4ncnn3Mat5emptyEv.exit157
  %11 = load ptr, ptr %4, align 8, !tbaa !20      ; 3 uses
  %12 = icmp sgt i32 %i.k, 0
  br i1 %12, label %.preheader161, label %.preheader160

.preheader161:                                    ; preds = %10
  %i.an = icmp slt i32 %i.e, 1
  %i.ao = icmp slt i32 %i.ab, 1
  %brmerge173 = or i1 %i.an, %i.ao
  br i1 %brmerge173, label %.preheader160, label %.preheader160.preheader

.preheader160.preheader:                          ; preds = %.preheader161
  %i.ap = zext nneg i32 %i.k to i64               ; 4 uses
  %i.aq = zext nneg i32 %i.ab to i64              ; 11 uses
  %i.ar = zext nneg i32 %i.e to i64               ; 4 uses
  %i.as = mul nuw nsw i64 %i.ar, %i.aq
  %i.at = shl nuw i64 %i.as, 2                    ; 2 uses
  %i.au = shl nuw nsw i64 %i.aq, 2
  %i.av = add nuw nsw i64 %i.ar, 4611686018427387903
  %i.aw = mul i64 %i.av, %i.ap
  %i.ax = shl i64 %i.aw, 2
  %i.ay = add i64 %i.ax, 4
  %i.az = mul i64 %i.ay, %i.aq
  %i.ba = mul nuw nsw i64 %i.ap, %i.aq
  %i.bb = getelementptr i8, ptr %i.ag, i64 %i.at
  %i.bc = getelementptr i8, ptr %11, i64 %i.az
  %min.iters.check = icmp ult i32 %i.ab, 8
  %stride.check = icmp samesign ugt i64 %i.ba, 2305843009213693951
  %n.vec = and i64 %i.aq, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split

.split:                                           ; preds = %.preheader160.preheader, %._crit_edge164
  %indvars.iv176 = phi i64 [ 0, %.preheader160.preheader ], [ %indvars.iv.next182, %._crit_edge164 ] ; 5 uses
  %13 = mul i64 %i.at, %indvars.iv176             ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ag, i64 %13
  %i.be = getelementptr i8, ptr %i.bb, i64 %13
  %14 = mul i64 %i.au, %indvars.iv176             ; 2 uses
  %i.bf = getelementptr i8, ptr %11, i64 %14
  %scevgep219 = getelementptr i8, ptr %i.bc, i64 %14
  %15 = mul nuw nsw i64 %indvars.iv176, %i.ar
  %bound0 = icmp ult ptr %i.bd, %scevgep219
  %bound1 = icmp ult ptr %i.bf, %i.be
  %found.conflict = and i1 %bound0, %bound1
  %16 = or i1 %found.conflict, %stride.check
  br label %.preheader

.preheader160:                                    ; preds = %._crit_edge164, %.preheader161, %10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %scevgep = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %scevgep222 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %scevgep223 = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %scevgep223, align 8, !tbaa !21
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %scevgep222, i8 0, i64 28, i1 false)
  %19 = load i32, ptr %18, align 4, !tbaa !52
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %bb.i, label %bb.f

.preheader:                                       ; preds = %.split, %._crit_edge
  %indvars.iv176.a = phi i64 [ 0, %.split ], [ %indvars.iv.next177, %._crit_edge ] ; 3 uses
  %i.bg = mul nuw nsw i64 %indvars.iv176.a, %i.ap
  %i.bh = add nuw nsw i64 %i.bg, %indvars.iv176
  %i.bi = mul nuw nsw i64 %i.bh, %i.aq
  %i.bj = add nuw nsw i64 %indvars.iv176.a, %15
  %i.bk = mul nuw nsw i64 %i.bj, %i.aq
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.bi ; 6 uses
  %invariant.gep220 = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bk ; 6 uses
  %brmerge226 = select i1 %min.iters.check, i1 true, i1 %16
  br i1 %brmerge226, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <4 x float>, ptr %i.bl, align 4, !tbaa !67, !alias.scope !85
  %wide.load225 = load <4 x float>, ptr %i.bm, align 4, !tbaa !67, !alias.scope !85
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x float> %wide.load, ptr %i.bn, align 4, !tbaa !67, !alias.scope !86, !noalias !85
  store <4 x float> %wide.load225, ptr %i.bo, align 4, !tbaa !67, !alias.scope !86, !noalias !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bq = load float, ptr %gep.prol, align 4, !tbaa !67
  %gep221.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv.prol
  store float %i.bq, ptr %gep221.prol, align 4, !tbaa !67
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.br = sub nsw i64 %indvars.iv.ph, %i.aq
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge, label %scalar.ph

._crit_edge164:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %i.ap
  br i1 %exitcond185.not, label %.preheader160, label %.split, !llvm.loop !80

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176.a, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %i.ar
  br i1 %exitcond180.not, label %._crit_edge164, label %.preheader, !llvm.loop !81

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bt = load float, ptr %gep, align 4, !tbaa !67
  %gep221 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv
  store float %i.bt, ptr %gep221, align 4, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bu = load float, ptr %gep.1, align 4, !tbaa !67
  %gep221.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv.next
  store float %i.bu, ptr %gep221.1, align 4, !tbaa !67
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bv = load float, ptr %gep.2, align 4, !tbaa !67
  %gep221.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv.next.1
  store float %i.bv, ptr %gep221.2, align 4, !tbaa !67
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bw = load float, ptr %gep.3, align 4, !tbaa !67
  %gep221.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv.next.2
  store float %i.bw, ptr %gep221.3, align 4, !tbaa !67
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.aq
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !82

bb.f:                                             ; preds = %.preheader160
  %i.bx = load ptr, ptr %1, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %6, align 8, !tbaa !20
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZNK4ncnn3Mat5emptyEv.exit156.thread, label %_ZNK4ncnn3Mat5emptyEv.exit156

bb.h:                                             ; preds = %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNK4ncnn3Mat5emptyEv.exit156:                    ; preds = %bb.g
  %i.cc = load i64, ptr %scevgep223, align 8, !tbaa !21
  %i.cd = load i32, ptr %17, align 8, !tbaa !59
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i64 %i.cc, %i.ce
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_ZNK4ncnn3Mat5emptyEv.exit156.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit156, %.preheader160
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !40
  %i.cn = add nsw i32 %i.g, -1
  %i.co = mul nsw i32 %i.cm, %i.cn
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !41
  %i.cs = add nsw i32 %i.i, -1
  %i.ct = mul nsw i32 %i.cr, %i.cs
  %i.cu = add nsw i32 %i.ct, 1
  %i.cv = add nsw i32 %i.ci, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !42
  %i.cy = mul nsw i32 %i.cx, %i.cv
  %i.cz = add nsw i32 %i.cp, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.db = load i32, ptr %i.da, align 4, !tbaa !48
  %i.dc = add nsw i32 %i.cz, %i.db
  %i.dd = add nsw i32 %i.ck, -1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !43
  %i.dg = mul nsw i32 %i.df, %i.dd
  %i.dh = add nsw i32 %i.cu, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !49
  %i.dk = add nsw i32 %i.dh, %i.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 0, ptr %i.dr, align 16, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.do, i8 0, i64 28, i1 false)
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !44
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %_ZN4ncnn3MataSERKS0_.exit.invoke, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !45
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %_ZN4ncnn3MataSERKS0_.exit.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !46
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %_ZN4ncnn3MataSERKS0_.exit.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !47
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %_ZN4ncnn3MataSERKS0_.exit.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !50
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !51
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %_ZN4ncnn3MataSERKS0_.exit.invoke, label %bb.p

bb.o:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit.invoke, %bb.u
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.el = icmp eq ptr %7, %i.c
  br i1 %i.el, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !18 ; 2 uses
  %.not.i153 = icmp eq ptr %i.en, null
  br i1 %.not.i153, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eo = atomicrmw add ptr %i.en, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.dl, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ep = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.t, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.er = load ptr, ptr %i.do, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.er, null
  %i.es = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef %i.es)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i unwind label %bb.o, !inline_history !1

bb.v:                                             ; preds = %bb.t
  %.not.i18.i = icmp eq ptr %i.es, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.es) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.q, %bb.v, %bb.w, %bb.u, %bb.s, %bb.r
  %i.ew = load <2 x ptr>, ptr %i.c, align 8, !tbaa !55
  store <2 x ptr> %i.ew, ptr %7, align 16, !tbaa !55
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !56
  store i64 %i.ey, ptr %i.dm, align 16, !tbaa !56
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !57
  store i32 %i.fa, ptr %i.dn, align 8, !tbaa !57
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !19
  store ptr %i.fc, ptr %i.do, align 16, !tbaa !19
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.fe = load <4 x i32>, ptr %i.fd, align 8, !tbaa !58
  store <4 x i32> %i.fe, ptr %i.dp, align 8, !tbaa !58
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !59
  store i32 %i.fg, ptr %i.dq, align 8, !tbaa !59
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !21
  store i64 %i.fi, ptr %i.dr, align 16, !tbaa !21
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i, %bb.p
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN4ncnn3MataSERKS0_.exit.invoke

_ZN4ncnn3MataSERKS0_.exit.invoke:                 ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.n, %_ZN4ncnn3MataSERKS0_.exit
  %.in = phi ptr [ %i.fj, %_ZN4ncnn3MataSERKS0_.exit ], [ %i.ae, %bb.n ], [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ]
  %i.fk = load ptr, ptr %.in, align 8, !tbaa !71
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.dc, i32 noundef %i.dk, i32 noundef %i.k, i64 noundef 4, ptr noundef %i.fk)
          to label %bb.x unwind label %bb.o

bb.x:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit.invoke
  %i.fl = load ptr, ptr %7, align 16, !tbaa !20
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %_ZNK4ncnn3Mat5emptyEv.exit155.thread, label %_ZNK4ncnn3Mat5emptyEv.exit155

_ZNK4ncnn3Mat5emptyEv.exit155:                    ; preds = %bb.x
  %i.fn = load i64, ptr %i.dr, align 16, !tbaa !21
  %i.fo = load i32, ptr %i.dq, align 8, !tbaa !59
  %i.fp = sext i32 %i.fo to i64
  %i.fq = mul i64 %i.fn, %i.fp
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_ZNK4ncnn3Mat5emptyEv.exit155.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit155
  %i.fs = load i32, ptr %i.cw, align 4, !tbaa !42
  %i.ft = load i32, ptr %i.de, align 8, !tbaa !43
  %i.fu = load i32, ptr %i.cl, align 4, !tbaa !40
  %i.fv = load i32, ptr %i.cq, align 8, !tbaa !41
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !54
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @_ZN4ncnnL13deconvolutionERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fu, i32 noundef %i.fv, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(72) %i.fy, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.aa
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.ga = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !59
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul i64 %i.gd, %i.gg
  %.fr = freeze i64 %i.gh
  %i.gi = icmp eq i64 %.fr, 0
  br i1 %i.gi, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit155.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.ab, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %_ZNK4ncnn3Mat5emptyEv.exit155.thread

_ZNK4ncnn3Mat5emptyEv.exit155.thread:             ; preds = %bb.x, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit155
  %.293 = phi i32 [ 0, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit155 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ -100, %bb.x ]
  %i.gj = load ptr, ptr %i.dl, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.gj, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit109, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit155.thread
  %i.gk = atomicrmw add ptr %i.gj, i32 -1 acq_rel, align 4
  %i.gl = icmp eq i32 %i.gk, 1
  br i1 %i.gl, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit109

bb.ad:                                            ; preds = %bb.ac
  %i.gm = load ptr, ptr %i.do, align 16, !tbaa !19 ; 3 uses
  %.not3.i = icmp eq ptr %i.gm, null
  %i.gn = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  invoke void %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef %i.gn)
          to label %_ZN4ncnn3MatD2Ev.exit109 unwind label %bb.ah, !inline_history !0

bb.af:                                            ; preds = %bb.ad
  %.not.i151 = icmp eq ptr %i.gn, null
  br i1 %.not.i151, label %_ZN4ncnn3MatD2Ev.exit109, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.gn) #9
  br label %_ZN4ncnn3MatD2Ev.exit109

bb.ah:                                            ; preds = %bb.ae
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit109:                         ; preds = %bb.ac, %_ZNK4ncnn3Mat5emptyEv.exit155.thread, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit156.thread

bb.ai:                                            ; preds = %bb.z, %bb.o
  %.pn = phi { ptr, i32 } [ %i.fz, %bb.z ], [ %i.ek, %bb.o ]
  %i.gt = load ptr, ptr %i.dl, align 8, !tbaa !18 ; 2 uses
  %.not.i110 = icmp eq ptr %i.gt, null
  br i1 %.not.i110, label %_ZN4ncnn3MatD2Ev.exit108, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = atomicrmw add ptr %i.gt, i32 -1 acq_rel, align 4
  %i.gv = icmp eq i32 %i.gu, 1
  br i1 %i.gv, label %bb.ak, label %_ZN4ncnn3MatD2Ev.exit108

bb.ak:                                            ; preds = %bb.aj
  %i.gw = load ptr, ptr %i.do, align 16, !tbaa !19 ; 3 uses
  %.not3.i111 = icmp eq ptr %i.gw, null
  %i.gx = load ptr, ptr %7, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i111, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gx)
          to label %_ZN4ncnn3MatD2Ev.exit108 unwind label %bb.ao, !inline_history !0

bb.am:                                            ; preds = %bb.ak
  %.not.i149 = icmp eq ptr %i.gx, null
  br i1 %.not.i149, label %_ZN4ncnn3MatD2Ev.exit108, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.gx) #9
  br label %_ZN4ncnn3MatD2Ev.exit108

bb.ao:                                            ; preds = %bb.al
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit108:                         ; preds = %bb.aj, %bb.ai, %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.av

_ZNK4ncnn3Mat5emptyEv.exit156.thread:             ; preds = %bb.g, %_ZNK4ncnn3Mat5emptyEv.exit156, %_ZN4ncnn3MatD2Ev.exit109
  %.394 = phi i32 [ %.293, %_ZN4ncnn3MatD2Ev.exit109 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit156 ], [ -100, %bb.g ]
  %i.hd = load ptr, ptr %scevgep, align 8, !tbaa !18 ; 2 uses
  %.not.i114 = icmp eq ptr %i.hd, null
  br i1 %.not.i114, label %_ZN4ncnn3MatD2Ev.exit107, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit156.thread
  %i.he = atomicrmw add ptr %i.hd, i32 -1 acq_rel, align 4
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %bb.aq, label %_ZN4ncnn3MatD2Ev.exit107

bb.aq:                                            ; preds = %bb.ap
  %i.hg = load ptr, ptr %scevgep222, align 8, !tbaa !19 ; 3 uses
  %.not3.i115 = icmp eq ptr %i.hg, null
  %i.hh = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i115, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef %i.hh)
          to label %_ZN4ncnn3MatD2Ev.exit107 unwind label %bb.au, !inline_history !0

bb.as:                                            ; preds = %bb.aq
  %.not.i147 = icmp eq ptr %i.hh, null
  br i1 %.not.i147, label %_ZN4ncnn3MatD2Ev.exit107, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @free(ptr noundef nonnull %i.hh) #9
  br label %_ZN4ncnn3MatD2Ev.exit107

bb.au:                                            ; preds = %bb.ar
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit107:                         ; preds = %bb.ap, %_ZNK4ncnn3Mat5emptyEv.exit156.thread, %bb.ar, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit157.thread

bb.av:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit108, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN4ncnn3MatD2Ev.exit108 ], [ %i.cb, %bb.h ]
  %i.hn = load ptr, ptr %scevgep, align 8, !tbaa !18 ; 2 uses
  %.not.i118 = icmp eq ptr %i.hn, null
  br i1 %.not.i118, label %_ZN4ncnn3MatD2Ev.exit106, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ho = atomicrmw add ptr %i.hn, i32 -1 acq_rel, align 4
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.ax, label %_ZN4ncnn3MatD2Ev.exit106

bb.ax:                                            ; preds = %bb.aw
  %i.hq = load ptr, ptr %scevgep222, align 8, !tbaa !19 ; 3 uses
  %.not3.i119 = icmp eq ptr %i.hq, null
  %i.hr = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i119, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hs = load ptr, ptr %i.hq, align 8, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr noundef %i.hr)
          to label %_ZN4ncnn3MatD2Ev.exit106 unwind label %bb.bb, !inline_history !0

bb.az:                                            ; preds = %bb.ax
  %.not.i145 = icmp eq ptr %i.hr, null
  br i1 %.not.i145, label %_ZN4ncnn3MatD2Ev.exit106, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.hr) #9
  br label %_ZN4ncnn3MatD2Ev.exit106

bb.bb:                                            ; preds = %bb.ay
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit106:                         ; preds = %bb.aw, %bb.av, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.bi

_ZNK4ncnn3Mat5emptyEv.exit157.thread:             ; preds = %bb.e, %_ZNK4ncnn3Mat5emptyEv.exit157, %_ZN4ncnn3MatD2Ev.exit107
  %.4 = phi i32 [ %.394, %_ZN4ncnn3MatD2Ev.exit107 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit157 ], [ -100, %bb.e ]
  %i.hx = load ptr, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  %.not.i122 = icmp eq ptr %i.hx, null
  br i1 %.not.i122, label %_ZN4ncnn3MatD2Ev.exit105, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit157.thread
  %i.hy = atomicrmw add ptr %i.hx, i32 -1 acq_rel, align 4
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %bb.bd, label %_ZN4ncnn3MatD2Ev.exit105

bb.bd:                                            ; preds = %bb.bc
  %i.ia = load ptr, ptr %i.y, align 8, !tbaa !19  ; 3 uses
  %.not3.i123 = icmp eq ptr %i.ia, null
  %i.ib = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i123, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef %i.ib)
          to label %_ZN4ncnn3MatD2Ev.exit105 unwind label %bb.bh, !inline_history !0

bb.bf:                                            ; preds = %bb.bd
  %.not.i143 = icmp eq ptr %i.ib, null
  br i1 %.not.i143, label %_ZN4ncnn3MatD2Ev.exit105, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %i.ib) #9
  br label %_ZN4ncnn3MatD2Ev.exit105

bb.bh:                                            ; preds = %bb.be
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit105:                         ; preds = %bb.bc, %_ZNK4ncnn3Mat5emptyEv.exit157.thread, %bb.be, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit158.thread

bb.bi:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit106, %8
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN4ncnn3MatD2Ev.exit106 ], [ %9, %8 ]
  %i.ih = load ptr, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  %.not.i126 = icmp eq ptr %i.ih, null
  br i1 %.not.i126, label %_ZN4ncnn3MatD2Ev.exit104, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ii = atomicrmw add ptr %i.ih, i32 -1 acq_rel, align 4
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.bk, label %_ZN4ncnn3MatD2Ev.exit104

bb.bk:                                            ; preds = %bb.bj
  %i.ik = load ptr, ptr %i.y, align 8, !tbaa !19  ; 3 uses
  %.not3.i127 = icmp eq ptr %i.ik, null
  %i.il = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i127, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  invoke void %i.io(ptr noundef nonnull align 8 dereferenceable(8) %i.ik, ptr noundef %i.il)
          to label %_ZN4ncnn3MatD2Ev.exit104 unwind label %bb.bo, !inline_history !0

bb.bm:                                            ; preds = %bb.bk
  %.not.i141 = icmp eq ptr %i.il, null
  br i1 %.not.i141, label %_ZN4ncnn3MatD2Ev.exit104, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @free(ptr noundef nonnull %i.il) #9
  br label %_ZN4ncnn3MatD2Ev.exit104

bb.bo:                                            ; preds = %bb.bl
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit104:                         ; preds = %bb.bj, %bb.bi, %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.bv

_ZNK4ncnn3Mat5emptyEv.exit158.thread:             ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit158, %_ZN4ncnn3MatD2Ev.exit105
  %.5 = phi i32 [ %.4, %_ZN4ncnn3MatD2Ev.exit105 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit158 ], [ -100, %bb.b ]
  %i.ir = load ptr, ptr %i.l, align 8, !tbaa !18  ; 2 uses
  %.not.i130 = icmp eq ptr %i.ir, null
  br i1 %.not.i130, label %_ZN4ncnn3MatD2Ev.exit103, label %bb.bp

bb.bp:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit158.thread
  %i.is = atomicrmw add ptr %i.ir, i32 -1 acq_rel, align 4
  %i.it = icmp eq i32 %i.is, 1
  br i1 %i.it, label %bb.bq, label %_ZN4ncnn3MatD2Ev.exit103

bb.bq:                                            ; preds = %bb.bp
  %i.iu = load ptr, ptr %i.m, align 8, !tbaa !19  ; 3 uses
  %.not3.i131 = icmp eq ptr %i.iu, null
  %i.iv = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i131, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef %i.iv)
          to label %_ZN4ncnn3MatD2Ev.exit103 unwind label %bb.bu, !inline_history !0

bb.bs:                                            ; preds = %bb.bq
  %.not.i139 = icmp eq ptr %i.iv, null
  br i1 %.not.i139, label %_ZN4ncnn3MatD2Ev.exit103, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @free(ptr noundef nonnull %i.iv) #9
  br label %_ZN4ncnn3MatD2Ev.exit103

bb.bu:                                            ; preds = %bb.br
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit103:                         ; preds = %bb.bp, %_ZNK4ncnn3Mat5emptyEv.exit158.thread, %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.5

bb.bv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit104, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit104 ], [ %i.w, %bb.c ]
  %i.jb = load ptr, ptr %i.l, align 8, !tbaa !18  ; 2 uses
  %.not.i134 = icmp eq ptr %i.jb, null
  br i1 %.not.i134, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jc = atomicrmw add ptr %i.jb, i32 -1 acq_rel, align 4
  %i.jd = icmp eq i32 %i.jc, 1
  br i1 %i.jd, label %bb.bx, label %_ZN4ncnn3MatD2Ev.exit

bb.bx:                                            ; preds = %bb.bw
  %i.je = load ptr, ptr %i.m, align 8, !tbaa !19  ; 3 uses
  %.not3.i135 = icmp eq ptr %i.je, null
  %i.jf = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i135, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !12
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef %i.jf)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.cb, !inline_history !0

bb.bz:                                            ; preds = %bb.bx
  %.not.i138 = icmp eq ptr %i.jf, null
  br i1 %.not.i138, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @free(ptr noundef nonnull %i.jf) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.cb:                                            ; preds = %bb.by
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bw, %bb.bv, %bb.by, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn13Deconvolution7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38
  %i.k = add nsw i32 %i.j, -1
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  %i.r = add nsw i32 %i.q, -1
  %i.s = mul nsw i32 %i.r, %i.o
  %i.t = add nsw i32 %i.s, 1
  %i.u = add nsw i32 %i.b, -1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !42
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = add nsw i32 %i.m, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !48
  %i.ab = add nsw i32 %i.y, %i.aa
  %i.ac = add nsw i32 %i.d, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !43
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = add nsw i32 %i.t, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !49
  %i.aj = add nsw i32 %i.ag, %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  store i64 0, ptr %i.aq, align 16, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.an, i8 0, i64 28, i1 false)
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !44
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.thread.invoke, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.av = load i32, ptr %i.au, align 8, !tbaa !45
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.thread.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !46
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.thread.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !47
  %i.bc = icmp sgt i32 %i.bb, 0
end_hunk_0
