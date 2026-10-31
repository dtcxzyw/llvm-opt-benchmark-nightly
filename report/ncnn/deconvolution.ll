Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution?download=true
inline.NumInlined: 41
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnn13Deconvolution10load_modelERKNS_8ModelBinE:bb.a
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
  br label %bb.bu

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
          to label %bb.e unwind label %bb.f

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
  br i1 %i.am, label %_ZNK4ncnn3Mat5emptyEv.exit157.thread, label %.preheader161

.preheader161:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit157
  %i.an = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.ao = icmp slt i32 %i.k, 1
  %i.ap = icmp slt i32 %i.e, 1
  %i.aq = icmp slt i32 %i.ab, 1
  %brmerge = select i1 %i.ao, i1 true, i1 %i.ap
  %brmerge173 = or i1 %brmerge, %i.aq
  br i1 %brmerge173, label %.split, label %.preheader160.preheader

.preheader160.preheader:                          ; preds = %.preheader161
  %i.ar = zext nneg i32 %i.k to i64               ; 4 uses
  %i.as = zext nneg i32 %i.ab to i64              ; 11 uses
  %i.at = zext nneg i32 %i.e to i64               ; 4 uses
  %i.au = mul nuw nsw i64 %i.at, %i.as
  %8 = shl nuw i64 %i.au, 2                       ; 2 uses
  %i.av = shl nuw nsw i64 %i.as, 2
  %i.aw = add nuw nsw i64 %i.at, 4611686018427387903
  %i.ax = mul i64 %i.aw, %i.ar
  %i.ay = shl i64 %i.ax, 2
  %9 = add i64 %i.ay, 4
  %i.az = mul i64 %9, %i.as
  %10 = mul nuw nsw i64 %i.ar, %i.as
  %i.ba = getelementptr i8, ptr %i.ag, i64 %8
  %i.bb = getelementptr i8, ptr %i.an, i64 %i.az
  %min.iters.check = icmp ult i32 %i.ab, 8
  %stride.check = icmp samesign ugt i64 %10, 2305843009213693951
  %n.vec = and i64 %i.as, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.as
  %xtraiter = and i64 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader160

bb.f:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.split:                                           ; preds = %._crit_edge164, %.preheader161
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.be, i8 0, i64 28, i1 false)
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !52
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.j, label %bb.g

.preheader160:                                    ; preds = %.preheader160.preheader, %._crit_edge164
  %indvars.iv181 = phi i64 [ 0, %.preheader160.preheader ], [ %indvars.iv.next182, %._crit_edge164 ] ; 5 uses
  %i.bj = mul i64 %8, %indvars.iv181              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.bj
  %scevgep222 = getelementptr i8, ptr %i.ba, i64 %i.bj
  %i.bk = mul i64 %i.av, %indvars.iv181           ; 2 uses
  %scevgep223 = getelementptr i8, ptr %i.an, i64 %i.bk
  %scevgep224 = getelementptr i8, ptr %i.bb, i64 %i.bk
  %i.bl = mul nuw nsw i64 %indvars.iv181, %i.at
  %bound0 = icmp ult ptr %scevgep, %scevgep224
  %bound1 = icmp ult ptr %scevgep223, %scevgep222
  %found.conflict = and i1 %bound0, %bound1
  %i.bm = or i1 %found.conflict, %stride.check
  br label %.preheader

.preheader:                                       ; preds = %.preheader160, %._crit_edge
  %indvars.iv176 = phi i64 [ 0, %.preheader160 ], [ %indvars.iv.next177, %._crit_edge ] ; 3 uses
  %i.bn = mul nuw nsw i64 %indvars.iv176, %i.ar
  %i.bo = add nuw nsw i64 %i.bn, %indvars.iv181
  %i.bp = mul nuw nsw i64 %i.bo, %i.as
  %i.bq = add nuw nsw i64 %indvars.iv176, %i.bl
  %i.br = mul nuw nsw i64 %i.bq, %i.as
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bp ; 6 uses
  %invariant.gep220 = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.br ; 6 uses
  %brmerge226 = select i1 %min.iters.check, i1 true, i1 %i.bm
  br i1 %brmerge226, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load = load <4 x float>, ptr %i.bs, align 4, !tbaa !67, !alias.scope !85
  %wide.load225 = load <4 x float>, ptr %i.bt, align 4, !tbaa !67, !alias.scope !85
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x float> %wide.load, ptr %i.bu, align 4, !tbaa !67, !alias.scope !86, !noalias !85
  store <4 x float> %wide.load225, ptr %i.bv, align 4, !tbaa !67, !alias.scope !86, !noalias !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bx = load float, ptr %gep.prol, align 4, !tbaa !67
  %gep221.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv.prol
  store float %i.bx, ptr %gep221.prol, align 4, !tbaa !67
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.by = sub nsw i64 %indvars.iv.ph, %i.as
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge, label %scalar.ph

._crit_edge164:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %i.ar
  br i1 %exitcond185.not, label %.split, label %.preheader160, !llvm.loop !80

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %i.at
  br i1 %exitcond180.not, label %._crit_edge164, label %.preheader, !llvm.loop !81

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ca = load float, ptr %gep, align 4, !tbaa !67
  %gep221 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv
  store float %i.ca, ptr %gep221, align 4, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.cb = load float, ptr %gep.1, align 4, !tbaa !67
  %gep221.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv.next
  store float %i.cb, ptr %gep221.1, align 4, !tbaa !67
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.cc = load float, ptr %gep.2, align 4, !tbaa !67
  %gep221.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv.next.1
  store float %i.cc, ptr %gep221.2, align 4, !tbaa !67
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.cd = load float, ptr %gep.3, align 4, !tbaa !67
  %gep221.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep220, i64 %indvars.iv.next.2
  store float %i.cd, ptr %gep221.3, align 4, !tbaa !67
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.as
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !82

bb.g:                                             ; preds = %.split
  %i.ce = load ptr, ptr %1, align 8, !tbaa !83
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 144
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.cf, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = load ptr, ptr %6, align 8, !tbaa !20
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK4ncnn3Mat5emptyEv.exit156.thread, label %_ZNK4ncnn3Mat5emptyEv.exit156

bb.i:                                             ; preds = %bb.g
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNK4ncnn3Mat5emptyEv.exit156:                    ; preds = %bb.h
  %i.cj = load i64, ptr %i.bg, align 8, !tbaa !21
  %i.ck = load i32, ptr %i.bf, align 8, !tbaa !59
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul i64 %i.cj, %i.cl
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZNK4ncnn3Mat5emptyEv.exit156.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit156, %.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !62
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !40
  %i.cu = add nsw i32 %i.g, -1
  %i.cv = mul nsw i32 %i.ct, %i.cu
  %i.cw = add nsw i32 %i.cv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !41
  %i.cz = add nsw i32 %i.i, -1
  %i.da = mul nsw i32 %i.cy, %i.cz
  %i.db = add nsw i32 %i.da, 1
  %i.dc = add nsw i32 %i.cp, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !42
  %i.df = mul nsw i32 %i.de, %i.dc
  %i.dg = add nsw i32 %i.cw, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !48
  %i.dj = add nsw i32 %i.dg, %i.di
  %i.dk = add nsw i32 %i.cr, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !43
  %i.dn = mul nsw i32 %i.dm, %i.dk
  %i.do = add nsw i32 %i.db, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !49
  %i.dr = add nsw i32 %i.do, %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 0, ptr %i.dy, align 16, !tbaa !21
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.dv, i8 0, i64 28, i1 false)
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !44
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !45
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.invoke, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !46
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !47
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.em = load i32, ptr %i.el, align 4, !tbaa !50
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !51
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.invoke, label %bb.p

.invoke:                                          ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %_ZN4ncnn3MataSERKS0_.exit
  %.in = phi ptr [ %i.fq, %_ZN4ncnn3MataSERKS0_.exit ], [ %i.ae, %bb.o ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ]
  %i.er = load ptr, ptr %.in, align 8, !tbaa !71
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.dj, i32 noundef %i.dr, i32 noundef %i.k, i64 noundef 4, ptr noundef %i.er)
          to label %bb.x unwind label %bb.z

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.es = icmp eq ptr %7, %i.c
  br i1 %i.es, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.q
end_hunk_0
