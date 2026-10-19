Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/eltwise?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 72
  %i.cq = icmp ugt i64 %i.cp, 2
  br i1 %i.cq, label %.lr.ph76, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph76, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

.lr.ph76:                                         ; preds = %bb.f, %.lr.ph76
  %i.cr = phi ptr [ %i.cz, %.lr.ph76 ], [ %i.cl, %bb.f ]
  %.06875 = phi i64 [ %i.cx, %.lr.ph76 ], [ 2, %bb.f ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %.06875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.ct = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.06875
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !42
  store float %i.cv, ptr %i.e, align 4, !tbaa !42
  %i.cw = load i32, ptr %i.ch, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.cw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.a, ptr nonnull %i.cs, ptr nonnull %i.r, ptr nonnull %i.b, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.cx = add nuw i64 %.06875, 1                  ; 2 uses
  %i.cy = load ptr, ptr %i.cj, align 8, !tbaa !62
  %i.cz = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 72
  %i.de = icmp ult i64 %i.cx, %i.dd
  br i1 %i.de, label %.lr.ph76, label %._crit_edge, !llvm.loop !53

bb.g:                                             ; preds = %bb.b
  %i.df = load ptr, ptr %1, align 8, !tbaa !55
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !61
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.di)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.a, ptr nonnull %i.g, ptr nonnull %i.dg, ptr nonnull %i.r, ptr nonnull %i.b)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !62
  %i.dl = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 72
  %i.dq = icmp ugt i64 %i.dp, 2
  br i1 %i.dq, label %.lr.ph, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.dr = phi ptr [ %i.dw, %.lr.ph ], [ %i.dl, %bb.g ]
  %.06774 = phi i64 [ %i.du, %.lr.ph ], [ 2, %bb.g ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %i.dr, i64 %.06774
  %i.dt = load i32, ptr %i.dh, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.dt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7, ptr nonnull %i.a, ptr nonnull %i.ds, ptr nonnull %i.r, ptr nonnull %i.b)
  %i.du = add nuw i64 %.06774, 1                  ; 2 uses
  %i.dv = load ptr, ptr %i.dj, align 8, !tbaa !62
  %i.dw = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = sdiv exact i64 %i.dz, 72
  %i.eb = icmp ult i64 %i.du, %i.ea
  br i1 %i.eb, label %.lr.ph, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, !llvm.loop !54

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %.lr.ph, %.lr.ph79, %.lr.ph82, %bb.g, %bb.e, %bb.c, %bb.a, %._crit_edge, %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit
  %.0 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ], [ -100, %bb.a ], [ 0, %._crit_edge ], [ 0, %bb.g ], [ 0, %.lr.ph79 ], [ 0, %.lr.ph82 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn7EltwiseC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn7EltwiseE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.e, align 1, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not86 = icmp sgt i32 %i.k, %i.j
  br i1 %.not86, label %._crit_edge88.split, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !79 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !79 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !79 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !19, !noalias !80 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !80 ; 2 uses
  %factor.op.mul89 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !19, !noalias !81 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !81 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37, !noalias !81 ; 3 uses
  %factor.op.mul91 = mul i64 %i.x, %i.z
  %i.aa = load i32, ptr %6, align 4, !tbaa !38    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.noexc45.preheader, label %._crit_edge88.split

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph
  %i.ac = sext i32 %i.k to i64                    ; 5 uses
  %i.ad = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 6 uses
  %i.ae = mul i64 %i.z, %i.x                      ; 2 uses
  %i.af = mul i64 %i.ae, %i.ac
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ag = sub i32 %i.j, %i.k
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ac, %i.ah                ; 3 uses
  %i.aj = mul i64 %i.ae, %i.ai
  %i.ak = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  %scevgep101 = getelementptr i8, ptr %i.al, i64 %i.ak ; 2 uses
  %i.am = mul i64 %i.z, %i.x
  %i.an = mul i64 %i.p, %i.n                      ; 3 uses
  %i.ao = mul i64 %i.an, %i.ac
  %scevgep102 = getelementptr i8, ptr %i.l, i64 %i.ao
  %i.ap = mul i64 %i.an, %i.ai
  %i.aq = getelementptr i8, ptr %i.l, i64 %i.ap
  %scevgep103 = getelementptr i8, ptr %i.aq, i64 %i.ak
  %i.ar = mul i64 %i.u, %i.s                      ; 3 uses
  %i.as = mul i64 %i.ar, %i.ac
  %scevgep104 = getelementptr i8, ptr %i.q, i64 %i.as
  %i.at = mul i64 %i.ar, %i.ai
  %i.au = getelementptr i8, ptr %i.q, i64 %i.at
  %scevgep105 = getelementptr i8, ptr %i.au, i64 %i.ak
  %min.iters.check = icmp ult i32 %i.aa, 12
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  %i.av = or i64 %i.an, %i.am
  %i.aw = icmp slt i64 %i.av, 0
  %i.ax = or i1 %found.conflict, %i.aw
  %bound0107 = icmp ult ptr %scevgep, %scevgep105
  %bound1108 = icmp ult ptr %scevgep104, %scevgep101
  %found.conflict109 = and i1 %bound0107, %bound1108
  %i.ay = icmp slt i64 %i.ar, 0
  %i.az = or i1 %found.conflict109, %i.ay
  %conflict.rdx = or i1 %i.ax, %i.az
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.preheader, %._crit_edge
  %indvars.iv94 = phi i64 [ %i.ac, %.noexc45.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv94
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 6 uses
  %.reass90 = mul i64 %factor.op.mul89, %indvars.iv94
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass90 ; 6 uses
  %.reass92 = mul i64 %factor.op.mul91, %indvars.iv94
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass92 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc45, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc45 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <4 x float>, ptr %i.bd, align 4, !tbaa !42, !alias.scope !82
  %wide.load112.a = load <4 x float>, ptr %i.be, align 4, !tbaa !42, !alias.scope !82
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load113.a = load <4 x float>, ptr %i.bf, align 4, !tbaa !42, !alias.scope !83
  %wide.load114 = load <4 x float>, ptr %i.bg, align 4, !tbaa !42, !alias.scope !83
  %i.bh = fmul fast <4 x float> %wide.load113.a, %wide.load
  %i.bi = fmul fast <4 x float> %wide.load114, %wide.load112.a
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x float> %i.bh, ptr %i.bj, align 4, !tbaa !42, !alias.scope !84, !noalias !85
  store <4 x float> %i.bi, ptr %i.bk, align 4, !tbaa !42, !alias.scope !84, !noalias !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc45, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc45 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.prol
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !42
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.prol
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !42
  %i.bq = fmul fast float %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.prol
  store float %i.bq, ptr %i.br, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !77

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bs = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond97.not, label %._crit_edge88.split, label %.noexc45

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !42
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !42
  %i.by = fmul fast float %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store float %i.by, ptr %i.bz, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !42
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !42
  %i.ce = fmul fast float %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  store float %i.ce, ptr %i.cf, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.1
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !42
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.1
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !42
  %i.ck = fmul fast float %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.1
  store float %i.ck, ptr %i.cl, align 4, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.2
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !42
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.2
  %i.cp = load float, ptr %i.co, align 4, !tbaa !42
  %i.cq = fmul fast float %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.2
  store float %i.cq, ptr %i.cr, align 4, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !78

._crit_edge88.split:                              ; preds = %._crit_edge, %.noexc45.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge88.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !47 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not56 = icmp sgt i32 %i.k, %i.j
  br i1 %.not56, label %._crit_edge58.split, label %.noexc32.lr.ph

.noexc32.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !96 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !19, !noalias !97 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !97 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !97 ; 3 uses
  %factor.op.mul59 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !38     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc32.preheader, label %._crit_edge58.split

.noexc32.preheader:                               ; preds = %.noexc32.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 4 uses
  %i.y = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.z = mul i64 %i.u, %i.s                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.x, %i.ac                 ; 2 uses
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ae
  %scevgep69 = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ah = mul i64 %i.u, %i.s
  %i.ai = mul i64 %i.p, %i.n                      ; 3 uses
  %i.aj = mul i64 %i.ai, %i.x
  %scevgep70 = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.ak = mul i64 %i.ai, %i.ad
  %i.al = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep71 = getelementptr i8, ptr %i.al, i64 %i.af
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep71
  %bound1 = icmp ult ptr %scevgep70, %scevgep69
  %found.conflict = and i1 %bound0, %bound1
  %i.am = or i64 %i.ai, %i.ah
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = or i1 %found.conflict, %i.an
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc32

.noexc32:                                         ; preds = %.noexc32.preheader, %._crit_edge
  %indvars.iv62 = phi i64 [ %i.x, %.noexc32.preheader ], [ %indvars.iv.next63, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 6 uses
  %.reass60 = mul i64 %factor.op.mul59, %indvars.iv62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass60 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ao
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc32, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc32 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !42, !alias.scope !98
  %wide.load73 = load <4 x float>, ptr %i.as, align 4, !tbaa !42, !alias.scope !98
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load74 = load <4 x float>, ptr %i.at, align 4, !tbaa !42, !alias.scope !99, !noalias !98
  %wide.load75 = load <4 x float>, ptr %i.au, align 4, !tbaa !42, !alias.scope !99, !noalias !98
  %i.av = fmul fast <4 x float> %wide.load74, %wide.load
  %i.aw = fmul fast <4 x float> %wide.load75, %wide.load73
  store <4 x float> %i.av, ptr %i.at, align 4, !tbaa !42, !alias.scope !99, !noalias !98
  store <4 x float> %i.aw, ptr %i.au, align 4, !tbaa !42, !alias.scope !99, !noalias !98
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc32, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc32 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.prol
  %i.az = load float, ptr %i.ay, align 4, !tbaa !42
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.prol ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !42
  %i.bc = fmul fast float %i.bb, %i.az
  store float %i.bc, ptr %i.ba, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !94

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next63 to i32
  %exitcond65.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond65.not, label %._crit_edge58.split, label %.noexc32

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !42
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !42
  %i.bj = fmul fast float %i.bi, %i.bg
  store float %i.bj, ptr %i.bh, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !42
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !42
  %i.bo = fmul fast float %i.bn, %i.bl
  store float %i.bo, ptr %i.bm, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !42
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.1 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !42
  %i.bt = fmul fast float %i.bs, %i.bq
  store float %i.bt, ptr %i.br, align 4, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.2
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !42
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.2 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !42
  %i.by = fmul fast float %i.bx, %i.bv
  store float %i.by, ptr %i.bw, align 4, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !95

._crit_edge58.split:                              ; preds = %._crit_edge, %.noexc32.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge58.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not86 = icmp sgt i32 %i.k, %i.j
  br i1 %.not86, label %._crit_edge88.split, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !113 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !113 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !113 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !19, !noalias !114 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !114 ; 2 uses
  %factor.op.mul89 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !19, !noalias !115 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !115 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37, !noalias !115 ; 3 uses
  %factor.op.mul91 = mul i64 %i.x, %i.z
  %i.aa = load i32, ptr %6, align 4, !tbaa !38    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.noexc45.preheader, label %._crit_edge88.split

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph
  %i.ac = sext i32 %i.k to i64                    ; 5 uses
  %i.ad = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 6 uses
  %i.ae = mul i64 %i.z, %i.x                      ; 2 uses
  %i.af = mul i64 %i.ae, %i.ac
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ag = sub i32 %i.j, %i.k
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ac, %i.ah                ; 3 uses
  %i.aj = mul i64 %i.ae, %i.ai
  %i.ak = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  %scevgep101 = getelementptr i8, ptr %i.al, i64 %i.ak ; 2 uses
  %i.am = mul i64 %i.z, %i.x
  %i.an = mul i64 %i.p, %i.n                      ; 3 uses
  %i.ao = mul i64 %i.an, %i.ac
  %scevgep102 = getelementptr i8, ptr %i.l, i64 %i.ao
  %i.ap = mul i64 %i.an, %i.ai
  %i.aq = getelementptr i8, ptr %i.l, i64 %i.ap
  %scevgep103 = getelementptr i8, ptr %i.aq, i64 %i.ak
  %i.ar = mul i64 %i.u, %i.s                      ; 3 uses
  %i.as = mul i64 %i.ar, %i.ac
  %scevgep104 = getelementptr i8, ptr %i.q, i64 %i.as
  %i.at = mul i64 %i.ar, %i.ai
  %i.au = getelementptr i8, ptr %i.q, i64 %i.at
  %scevgep105 = getelementptr i8, ptr %i.au, i64 %i.ak
  %min.iters.check = icmp ult i32 %i.aa, 12
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  %i.av = or i64 %i.an, %i.am
  %i.aw = icmp slt i64 %i.av, 0
  %i.ax = or i1 %found.conflict, %i.aw
  %bound0107 = icmp ult ptr %scevgep, %scevgep105
  %bound1108 = icmp ult ptr %scevgep104, %scevgep101
  %found.conflict109 = and i1 %bound0107, %bound1108
  %i.ay = icmp slt i64 %i.ar, 0
  %i.az = or i1 %found.conflict109, %i.ay
  %conflict.rdx = or i1 %i.ax, %i.az
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.preheader, %._crit_edge
  %indvars.iv94 = phi i64 [ %i.ac, %.noexc45.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv94
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 6 uses
  %.reass90 = mul i64 %factor.op.mul89, %indvars.iv94
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass90 ; 6 uses
  %.reass92 = mul i64 %factor.op.mul91, %indvars.iv94
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass92 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc45, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc45 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <4 x float>, ptr %i.bd, align 4, !tbaa !42, !alias.scope !116
  %wide.load112.a = load <4 x float>, ptr %i.be, align 4, !tbaa !42, !alias.scope !116
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load113.a = load <4 x float>, ptr %i.bf, align 4, !tbaa !42, !alias.scope !117
  %wide.load114 = load <4 x float>, ptr %i.bg, align 4, !tbaa !42, !alias.scope !117
  %i.bh = fadd fast <4 x float> %wide.load113.a, %wide.load
  %i.bi = fadd fast <4 x float> %wide.load114, %wide.load112.a
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x float> %i.bh, ptr %i.bj, align 4, !tbaa !42, !alias.scope !118, !noalias !119
  store <4 x float> %i.bi, ptr %i.bk, align 4, !tbaa !42, !alias.scope !118, !noalias !119
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc45, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc45 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.prol
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !42
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.prol
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !42
  %i.bq = fadd fast float %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.prol
  store float %i.bq, ptr %i.br, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !111

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bs = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond97.not, label %._crit_edge88.split, label %.noexc45

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !42
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !42
  %i.by = fadd fast float %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store float %i.by, ptr %i.bz, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !42
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !42
  %i.ce = fadd fast float %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  store float %i.ce, ptr %i.cf, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.1
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !42
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.1
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !42
  %i.ck = fadd fast float %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.1
  store float %i.ck, ptr %i.cl, align 4, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.2
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !42
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.2
  %i.cp = load float, ptr %i.co, align 4, !tbaa !42
  %i.cq = fadd fast float %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.2
  store float %i.cq, ptr %i.cr, align 4, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !112

._crit_edge88.split:                              ; preds = %._crit_edge, %.noexc45.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge88.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not56 = icmp sgt i32 %i.k, %i.j
  br i1 %.not56, label %._crit_edge58.split, label %.noexc32.lr.ph

.noexc32.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !130 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !130 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !130 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !19, !noalias !131 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !131 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !131 ; 3 uses
  %factor.op.mul59 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !38     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc32.preheader, label %._crit_edge58.split

.noexc32.preheader:                               ; preds = %.noexc32.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 4 uses
  %i.y = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.z = mul i64 %i.u, %i.s                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.x, %i.ac                 ; 2 uses
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ae
  %scevgep69 = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ah = mul i64 %i.u, %i.s
  %i.ai = mul i64 %i.p, %i.n                      ; 3 uses
  %i.aj = mul i64 %i.ai, %i.x
  %scevgep70 = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.ak = mul i64 %i.ai, %i.ad
  %i.al = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep71 = getelementptr i8, ptr %i.al, i64 %i.af
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep71
  %bound1 = icmp ult ptr %scevgep70, %scevgep69
  %found.conflict = and i1 %bound0, %bound1
  %i.am = or i64 %i.ai, %i.ah
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = or i1 %found.conflict, %i.an
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc32

.noexc32:                                         ; preds = %.noexc32.preheader, %._crit_edge
  %indvars.iv62 = phi i64 [ %i.x, %.noexc32.preheader ], [ %indvars.iv.next63, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 6 uses
  %.reass60 = mul i64 %factor.op.mul59, %indvars.iv62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass60 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ao
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc32, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc32 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !42, !alias.scope !132
  %wide.load73 = load <4 x float>, ptr %i.as, align 4, !tbaa !42, !alias.scope !132
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load74 = load <4 x float>, ptr %i.at, align 4, !tbaa !42, !alias.scope !133, !noalias !132
  %wide.load75 = load <4 x float>, ptr %i.au, align 4, !tbaa !42, !alias.scope !133, !noalias !132
  %i.av = fadd fast <4 x float> %wide.load74, %wide.load
  %i.aw = fadd fast <4 x float> %wide.load75, %wide.load73
  store <4 x float> %i.av, ptr %i.at, align 4, !tbaa !42, !alias.scope !133, !noalias !132
  store <4 x float> %i.aw, ptr %i.au, align 4, !tbaa !42, !alias.scope !133, !noalias !132
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc32, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc32 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.prol
  %i.az = load float, ptr %i.ay, align 4, !tbaa !42
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.prol ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !42
  %i.bc = fadd fast float %i.bb, %i.az
  store float %i.bc, ptr %i.ba, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !128

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next63 to i32
  %exitcond65.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond65.not, label %._crit_edge58.split, label %.noexc32

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !42
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !42
  %i.bj = fadd fast float %i.bi, %i.bg
  store float %i.bj, ptr %i.bh, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !42
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !42
  %i.bo = fadd fast float %i.bn, %i.bl
  store float %i.bo, ptr %i.bm, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !42
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.1 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !42
  %i.bt = fadd fast float %i.bs, %i.bq
  store float %i.bt, ptr %i.br, align 4, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.2
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !42
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.2 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !42
  %i.by = fadd fast float %i.bx, %i.bv
  store float %i.by, ptr %i.bw, align 4, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !129

._crit_edge58.split:                              ; preds = %._crit_edge, %.noexc32.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge58.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not88 = icmp sgt i32 %i.k, %i.j
  br i1 %.not88, label %._crit_edge90.split, label %.noexc47.lr.ph

.noexc47.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !148 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !148 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !148 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !19, !noalias !149 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !149 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !149 ; 2 uses
  %factor.op.mul91 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !19, !noalias !150 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !150 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37, !noalias !150 ; 3 uses
  %factor.op.mul93 = mul i64 %i.x, %i.z
  %i.aa = load i32, ptr %6, align 4, !tbaa !38    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.noexc47.preheader, label %._crit_edge90.split

.noexc47.preheader:                               ; preds = %.noexc47.lr.ph
  %i.ac = sext i32 %i.k to i64                    ; 5 uses
  %i.ad = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 6 uses
  %i.ae = mul i64 %i.z, %i.x                      ; 2 uses
  %i.af = mul i64 %i.ae, %i.ac
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af ; 4 uses
  %i.ag = sub i32 %i.j, %i.k
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ac, %i.ah                ; 3 uses
  %i.aj = mul i64 %i.ae, %i.ai
  %i.ak = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  %scevgep103 = getelementptr i8, ptr %i.al, i64 %i.ak ; 4 uses
  %i.am = mul i64 %i.z, %i.x
  %i.an = mul i64 %i.p, %i.n                      ; 3 uses
  %i.ao = mul i64 %i.an, %i.ac
  %scevgep104 = getelementptr i8, ptr %i.l, i64 %i.ao
  %i.ap = mul i64 %i.an, %i.ai
  %i.aq = getelementptr i8, ptr %i.l, i64 %i.ap
  %scevgep105 = getelementptr i8, ptr %i.aq, i64 %i.ak
  %scevgep106 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ar = mul i64 %i.u, %i.s                      ; 3 uses
  %i.as = mul i64 %i.ar, %i.ac
  %scevgep107 = getelementptr i8, ptr %i.q, i64 %i.as
  %i.at = mul i64 %i.ar, %i.ai
  %i.au = getelementptr i8, ptr %i.q, i64 %i.at
  %scevgep108 = getelementptr i8, ptr %i.au, i64 %i.ak
  %scevgep109 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %min.iters.check = icmp ult i32 %i.aa, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep105
  %bound1 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  %i.av = or i64 %i.an, %i.am
  %i.aw = icmp slt i64 %i.av, 0
  %i.ax = or i1 %found.conflict, %i.aw
  %bound0111 = icmp ult ptr %scevgep, %scevgep106
  %bound1112 = icmp ult ptr %7, %scevgep103
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx = or i1 %i.ax, %found.conflict113
  %bound0115 = icmp ult ptr %scevgep, %scevgep108
  %bound1116 = icmp ult ptr %scevgep107, %scevgep103
  %found.conflict117 = and i1 %bound0115, %bound1116
  %i.ay = icmp slt i64 %i.ar, 0
  %i.az = or i1 %found.conflict117, %i.ay
  %conflict.rdx120 = or i1 %conflict.rdx, %i.az
  %bound0121 = icmp ult ptr %scevgep, %scevgep109
  %bound1122 = icmp ult ptr %8, %scevgep103
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx125 = or i1 %conflict.rdx120, %found.conflict123
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ba = add nsw i64 %wide.trip.count, -1
  br label %.noexc47

.noexc47:                                         ; preds = %.noexc47.preheader, %._crit_edge
  %indvars.iv96 = phi i64 [ %i.ac, %.noexc47.preheader ], [ %indvars.iv.next97, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %.reass92 = mul i64 %factor.op.mul91, %indvars.iv96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass92 ; 4 uses
  %.reass94 = mul i64 %factor.op.mul93, %indvars.iv96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass94 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx125
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc47
  %i.be = load float, ptr %7, align 4, !tbaa !42, !alias.scope !151
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bf = load float, ptr %8, align 4, !tbaa !42, !alias.scope !152
  %broadcast.splatinsert129 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat130 = shufflevector <4 x float> %broadcast.splatinsert129, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x float>, ptr %i.bg, align 4, !tbaa !42, !alias.scope !153
  %wide.load126 = load <4 x float>, ptr %i.bh, align 4, !tbaa !42, !alias.scope !153
  %i.bi = fmul fast <4 x float> %broadcast.splat, %wide.load
  %i.bj = fmul fast <4 x float> %broadcast.splat, %wide.load126
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load127 = load <4 x float>, ptr %i.bk, align 4, !tbaa !42, !alias.scope !154
  %wide.load128 = load <4 x float>, ptr %i.bl, align 4, !tbaa !42, !alias.scope !154
  %i.bm = fmul fast <4 x float> %broadcast.splat130, %wide.load127
  %i.bn = fmul fast <4 x float> %broadcast.splat130, %wide.load128
  %i.bo = fadd fast <4 x float> %i.bm, %i.bi
  %i.bp = fadd fast <4 x float> %i.bn, %i.bj
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <4 x float> %i.bo, ptr %i.bq, align 4, !tbaa !42, !alias.scope !155, !noalias !156
  store <4 x float> %i.bp, ptr %i.br, align 4, !tbaa !42, !alias.scope !155, !noalias !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc47, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc47 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.ph
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !42
  %i.bv = load float, ptr %7, align 4, !tbaa !42
  %i.bw = fmul fast float %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.ph
  %i.by = load float, ptr %i.bx, align 4, !tbaa !42
  %i.bz = load float, ptr %8, align 4, !tbaa !42
  %i.ca = fmul fast float %i.bz, %i.by
  %i.cb = fadd fast float %i.ca, %i.bw
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.ph
  store float %i.cb, ptr %i.cc, align 4, !tbaa !42
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cd = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.cd, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next97 to i32
  %exitcond99.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond99.not, label %._crit_edge90.split, label %.noexc47

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !42
  %i.cg = load float, ptr %7, align 4, !tbaa !42
  %i.ch = fmul fast float %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !42
  %i.ck = load float, ptr %8, align 4, !tbaa !42
  %i.cl = fmul fast float %i.ck, %i.cj
  %i.cm = fadd fast float %i.cl, %i.ch
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store float %i.cm, ptr %i.cn, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.cp = load float, ptr %i.co, align 4, !tbaa !42
  %i.cq = load float, ptr %7, align 4, !tbaa !42
  %i.cr = fmul fast float %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !42
  %i.cu = load float, ptr %8, align 4, !tbaa !42
  %i.cv = fmul fast float %i.cu, %i.ct
  %i.cw = fadd fast float %i.cv, %i.cr
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next
  store float %i.cw, ptr %i.cx, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !147

._crit_edge90.split:                              ; preds = %._crit_edge, %.noexc47.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge90.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not57 = icmp sgt i32 %i.k, %i.j
  br i1 %.not57, label %._crit_edge59.split, label %.noexc33.lr.ph

.noexc33.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !167 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !167 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !167 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !19, !noalias !168 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !168 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !168 ; 3 uses
  %factor.op.mul60 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !38     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc33.preheader, label %._crit_edge59.split

.noexc33.preheader:                               ; preds = %.noexc33.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 4 uses
  %i.y = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.z = mul i64 %i.u, %i.s                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.x, %i.ac                 ; 2 uses
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ae
  %scevgep70 = getelementptr i8, ptr %i.ag, i64 %i.af ; 2 uses
  %i.ah = mul i64 %i.u, %i.s
  %i.ai = mul i64 %i.p, %i.n                      ; 3 uses
  %i.aj = mul i64 %i.ai, %i.x
  %scevgep71 = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.ak = mul i64 %i.ai, %i.ad
  %i.al = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep72 = getelementptr i8, ptr %i.al, i64 %i.af
  %scevgep73 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep72
  %bound1 = icmp ult ptr %scevgep71, %scevgep70
  %found.conflict = and i1 %bound0, %bound1
  %i.am = or i64 %i.ai, %i.ah
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = or i1 %found.conflict, %i.an
  %bound075 = icmp ult ptr %scevgep, %scevgep73
  %bound176 = icmp ult ptr %6, %scevgep70
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %i.ao, %found.conflict77
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ap = add nsw i64 %wide.trip.count, -1
  br label %.noexc33

.noexc33:                                         ; preds = %.noexc33.preheader, %._crit_edge
  %indvars.iv63 = phi i64 [ %i.x, %.noexc33.preheader ], [ %indvars.iv.next64, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %.reass61 = mul i64 %factor.op.mul60, %indvars.iv63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass61 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc33
  %i.as = load float, ptr %6, align 4, !tbaa !42, !alias.scope !169
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.as, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x float>, ptr %i.at, align 4, !tbaa !42, !alias.scope !170
  %wide.load79.a = load <4 x float>, ptr %i.au, align 4, !tbaa !42, !alias.scope !170
  %i.av = fmul fast <4 x float> %broadcast.splat, %wide.load
  %i.aw = fmul fast <4 x float> %broadcast.splat, %wide.load79.a
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load80.a = load <4 x float>, ptr %i.ax, align 4, !tbaa !42, !alias.scope !171, !noalias !172
  %wide.load81 = load <4 x float>, ptr %i.ay, align 4, !tbaa !42, !alias.scope !171, !noalias !172
  %i.az = fadd fast <4 x float> %wide.load80.a, %i.av
  %i.ba = fadd fast <4 x float> %wide.load81, %i.aw
  store <4 x float> %i.az, ptr %i.ax, align 4, !tbaa !42, !alias.scope !171, !noalias !172
  store <4 x float> %i.ba, ptr %i.ay, align 4, !tbaa !42, !alias.scope !171, !noalias !172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc33, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc33 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.ph
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !42
  %i.be = load float, ptr %6, align 4, !tbaa !42
  %i.bf = fmul fast float %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.ph ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !42
  %i.bi = fadd fast float %i.bh, %i.bf
  store float %i.bi, ptr %i.bg, align 4, !tbaa !42
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bj = icmp eq i64 %indvars.iv.ph, %i.ap
  br i1 %i.bj, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next64 to i32
  %exitcond66.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond66.not, label %._crit_edge59.split, label %.noexc33

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !42
  %i.bm = load float, ptr %6, align 4, !tbaa !42
  %i.bn = fmul fast float %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !42
  %i.bq = fadd fast float %i.bp, %i.bn
  store float %i.bq, ptr %i.bo, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.bs = load float, ptr %i.br, align 4, !tbaa !42
  %i.bt = load float, ptr %6, align 4, !tbaa !42
  %i.bu = fmul fast float %i.bt, %i.bs
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !42
  %i.bx = fadd fast float %i.bw, %i.bu
  store float %i.bx, ptr %i.bv, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !166

._crit_edge59.split:                              ; preds = %._crit_edge, %.noexc33.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge59.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not87 = icmp sgt i32 %i.k, %i.j
  br i1 %.not87, label %._crit_edge89.split, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !185 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !185 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !185 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !19, !noalias !186 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !186 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !186 ; 2 uses
  %factor.op.mul90 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !19, !noalias !187 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !187 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37, !noalias !187 ; 3 uses
  %factor.op.mul92 = mul i64 %i.x, %i.z
  %i.aa = load i32, ptr %6, align 4, !tbaa !38    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.noexc45.preheader, label %._crit_edge89.split

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph
  %i.ac = sext i32 %i.k to i64                    ; 5 uses
  %i.ad = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 6 uses
  %i.ae = mul i64 %i.z, %i.x                      ; 2 uses
  %i.af = mul i64 %i.ae, %i.ac
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ag = sub i32 %i.j, %i.k
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ac, %i.ah                ; 3 uses
  %i.aj = mul i64 %i.ae, %i.ai
  %i.ak = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  %scevgep102 = getelementptr i8, ptr %i.al, i64 %i.ak ; 2 uses
  %i.am = mul i64 %i.z, %i.x
  %i.an = mul i64 %i.p, %i.n                      ; 3 uses
  %i.ao = mul i64 %i.an, %i.ac
  %scevgep103 = getelementptr i8, ptr %i.l, i64 %i.ao
  %i.ap = mul i64 %i.an, %i.ai
  %i.aq = getelementptr i8, ptr %i.l, i64 %i.ap
  %scevgep104 = getelementptr i8, ptr %i.aq, i64 %i.ak
  %i.ar = mul i64 %i.u, %i.s                      ; 3 uses
  %i.as = mul i64 %i.ar, %i.ac
  %scevgep105 = getelementptr i8, ptr %i.q, i64 %i.as
  %i.at = mul i64 %i.ar, %i.ai
  %i.au = getelementptr i8, ptr %i.q, i64 %i.at
  %scevgep106 = getelementptr i8, ptr %i.au, i64 %i.ak
  %min.iters.check = icmp ult i32 %i.aa, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep104
  %bound1 = icmp ult ptr %scevgep103, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  %i.av = or i64 %i.an, %i.am
  %i.aw = icmp slt i64 %i.av, 0
  %i.ax = or i1 %found.conflict, %i.aw
  %bound0108 = icmp ult ptr %scevgep, %scevgep106
  %bound1109 = icmp ult ptr %scevgep105, %scevgep102
  %found.conflict110 = and i1 %bound0108, %bound1109
  %i.ay = icmp slt i64 %i.ar, 0
  %i.az = or i1 %found.conflict110, %i.ay
  %conflict.rdx = or i1 %i.ax, %i.az
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ba = add nsw i64 %wide.trip.count, -1
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.preheader, %._crit_edge
  %indvars.iv95 = phi i64 [ %i.ac, %.noexc45.preheader ], [ %indvars.iv.next96, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv95
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %.reass91 = mul i64 %factor.op.mul90, %indvars.iv95
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass91 ; 4 uses
  %.reass93 = mul i64 %factor.op.mul92, %indvars.iv95
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass93 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc45, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc45 ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <4 x float>, ptr %i.be, align 4, !tbaa !42, !alias.scope !188 ; 2 uses
  %wide.load113.a = load <4 x float>, ptr %i.bg, align 4, !tbaa !42, !alias.scope !188 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load114.a = load <4 x float>, ptr %i.bf, align 4, !tbaa !42, !alias.scope !189 ; 2 uses
  %wide.load115 = load <4 x float>, ptr %i.bh, align 4, !tbaa !42, !alias.scope !189 ; 2 uses
  %i.bi = fcmp fast olt <4 x float> %wide.load, %wide.load114.a
  %i.bj = fcmp fast olt <4 x float> %wide.load113.a, %wide.load115
  %i.bk = select <4 x i1> %i.bi, <4 x float> %wide.load114.a, <4 x float> %wide.load
  %i.bl = select <4 x i1> %i.bj, <4 x float> %wide.load115, <4 x float> %wide.load113.a
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x float> %i.bk, ptr %i.bm, align 4, !tbaa !42, !alias.scope !190, !noalias !191
  store <4 x float> %i.bl, ptr %i.bn, align 4, !tbaa !42, !alias.scope !190, !noalias !191
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc45, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc45 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.ph
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.ph
  %i.br = load float, ptr %i.bp, align 4, !tbaa !42 ; 2 uses
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !42 ; 2 uses
  %i.bt = fcmp fast olt float %i.br, %i.bs
  %i.bu = select i1 %i.bt, float %i.bs, float %i.br
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.ph
  store float %i.bu, ptr %i.bv, align 4, !tbaa !42
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bw = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.bw, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next96 to i32
  %exitcond98.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond98.not, label %._crit_edge89.split, label %.noexc45

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bz = load float, ptr %i.bx, align 4, !tbaa !42 ; 2 uses
  %i.ca = load float, ptr %i.by, align 4, !tbaa !42 ; 2 uses
  %i.cb = fcmp fast olt float %i.bz, %i.ca
  %i.cc = select i1 %i.cb, float %i.ca, float %i.bz
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store float %i.cc, ptr %i.cd, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.cg = load float, ptr %i.ce, align 4, !tbaa !42 ; 2 uses
  %i.ch = load float, ptr %i.cf, align 4, !tbaa !42 ; 2 uses
  %i.ci = fcmp fast olt float %i.cg, %i.ch
  %i.cj = select i1 %i.ci, float %i.ch, float %i.cg
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next
  store float %i.cj, ptr %i.ck, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !184

._crit_edge89.split:                              ; preds = %._crit_edge, %.noexc45.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge89.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn7Eltwise7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %.not59 = icmp sgt i32 %i.k, %i.j
  br i1 %.not59, label %._crit_edge61.split, label %.noexc34.lr.ph

.noexc34.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !201 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !201 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !201 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !19, !noalias !202 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !202 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !202 ; 3 uses
  %factor.op.mul62 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !38     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc34.preheader, label %._crit_edge61.split

.noexc34.preheader:                               ; preds = %.noexc34.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 4 uses
  %i.y = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.z = mul i64 %i.u, %i.s                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.x, %i.ac                 ; 2 uses
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ae
  %scevgep72 = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ah = mul i64 %i.u, %i.s
  %i.ai = mul i64 %i.p, %i.n                      ; 3 uses
  %i.aj = mul i64 %i.ai, %i.x
  %scevgep73 = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.ak = mul i64 %i.ai, %i.ad
  %i.al = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep74 = getelementptr i8, ptr %i.al, i64 %i.af
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  %i.am = or i64 %i.ai, %i.ah
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = or i1 %found.conflict, %i.an
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ap = add nsw i64 %wide.trip.count, -1
  br label %.noexc34

.noexc34:                                         ; preds = %.noexc34.preheader, %._crit_edge
  %indvars.iv65 = phi i64 [ %i.x, %.noexc34.preheader ], [ %indvars.iv.next66, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %.reass63 = mul i64 %factor.op.mul62, %indvars.iv65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass63 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ao
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc34, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc34 ] ; 3 uses
end_hunk_0
