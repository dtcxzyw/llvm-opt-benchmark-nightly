Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-context?download=true
inline.NumInlined: 3997
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK13llama_context15graph_max_nodesEj:bb.a
.lr.ph84:                                         ; preds = %.loopexit, %.lr.ph84
  %.083 = phi i32 [ %i.aw, %.lr.ph84 ], [ 0, %.loopexit ]
  %.sroa.035.082 = phi ptr [ %i.az, %.lr.ph84 ], [ %i.ac, %.loopexit ] ; 2 uses
  %.07281 = phi i32 [ %.173, %.lr.ph84 ], [ 0, %.loopexit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.035.082, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !352
  %i.av = tail call noundef i32 @_Z29llama_sampler_backend_n_nodesPK13llama_sampler(ptr noundef %i.au) ; 2 uses
  %i.aw = add i32 %i.av, %.083                    ; 2 uses
  %i.ax = load i32, ptr %.phi.trans.insert, align 4, !tbaa !303 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 1
  %.sroa.speculated32 = tail call i32 @llvm.umax.i32(i32 %.07281, i32 %i.av)
  %.173 = select i1 %i.ay, i32 %.sroa.speculated32, i32 %.07281 ; 2 uses
  %i.az = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.082) #35 ; 2 uses
  %.not75 = icmp eq ptr %i.az, %i.ad
  br i1 %.not75, label %._crit_edge, label %.lr.ph84
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @_ZN16llm_graph_resultC1El(ptr noundef nonnull align 8 dereferenceable(36772), i64 noundef) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare ptr @ggml_backend_sched_new(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN13llama_context13graph_reserveEjjjPK22llama_memory_context_ibPm(ptr noundef nonnull align 8 dereferenceable(996) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.llama_batch_allocr, align 8  ; 7 uses
  %8 = alloca %struct.llama_ubatch, align 8       ; 14 uses
  %9 = alloca %struct.llm_graph_params, align 8   ; 7 uses
  tail call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__._ZN13llama_context13graph_reserveEjjjPK22llama_memory_context_ibPm, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 2418, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.137) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = urem i32 %1, %2
  %.not41 = icmp eq i32 %i.a, 0
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = add i32 %1, -1
  %i.c = add i32 %i.b, %2                         ; 2 uses
  %i.d = urem i32 %i.c, %2
  %i.e = sub nuw i32 %i.c, %i.d                   ; 2 uses
  tail call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__._ZN13llama_context13graph_reserveEjjjPK22llama_memory_context_ibPm, i32 noundef %i.e, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.038 = phi i32 [ %i.e, %bb.d ], [ %1, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !365
  tail call void @ggml_backend_sched_reset(ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !343
  tail call void @_ZN16llm_graph_result5resetEv(ptr noundef nonnull align 8 dereferenceable(36772) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194
  store i32 %3, ptr %i.j, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.l = load ptr, ptr %0, align 8, !tbaa !350, !nonnull !227, !align !351
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = tail call noundef i32 @_ZNK13llama_hparams14n_pos_per_embdEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.m)
  call void @_ZN18llama_batch_allocrC1Ej(ptr noundef nonnull align 8 dereferenceable(444) %7, i32 noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.o = udiv i32 %.038, %2
  invoke void @_ZN18llama_batch_allocr14ubatch_reserveEjj(ptr dead_on_unwind nonnull writable sret(%struct.llama_ubatch) align 8 %8, ptr noundef nonnull align 8 dereferenceable(444) %7, i32 noundef %i.o, i32 noundef %2)
          to label %bb.f unwind label %bb.af

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !303
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !770  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !771  ; 10 uses
  %.not.i = icmp eq i32 %i.s, 0                   ; 2 uses
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i, label %.preheader147.lr.ph.i

.preheader147.lr.ph.i:                            ; preds = %bb.f
  %.not189.i = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.pre = zext i32 %i.s to i64                    ; 2 uses
  br i1 %.not189.i, label %.noexc.i, label %.preheader147.preheader.i

.preheader147.preheader.i:                        ; preds = %.preheader147.lr.ph.i
  %wide.trip.count.i = zext i32 %i.u to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.z = icmp eq i32 %i.u, 1
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod94 = trunc i32 %i.u to i1
  br label %.preheader147.i

.preheader147.i:                                  ; preds = %._crit_edge.i, %.preheader147.preheader.i
  %indvars.iv200.i = phi i64 [ 0, %.preheader147.preheader.i ], [ %indvars.iv.next201.i, %._crit_edge.i ] ; 5 uses
  %i.aa = trunc nuw i64 %indvars.iv200.i to i32
  %i.ab = mul i32 %i.u, %i.aa                     ; 3 uses
  br i1 %i.z, label %.epil.preheader, label %.preheader147.i.new

.noexc.i:                                         ; preds = %._crit_edge.i, %.preheader147.lr.ph.i
  %i.ac = add nuw nsw i64 %.pre, 63               ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741816
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #31
          to label %.noexc unwind label %bb.ag    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  %i.ag = lshr i64 %i.ac, 6                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %.idx.i.i = shl nuw nsw i64 %i.ag, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %.idx.i.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader147.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader147.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader147.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod94)
  %i.ai = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.aj = add i32 %i.ab, %i.ai
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !772
  %i.al = zext i32 %i.aj to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  store i32 1, ptr %i.am, align 4, !tbaa !199
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !404
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv200.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.al
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !356
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %exitcond204.not.i = icmp eq i64 %indvars.iv.next201.i, %.pre
  br i1 %exitcond204.not.i, label %.noexc.i, label %.preheader147.i, !llvm.loop !765

.preheader147.i.new:                              ; preds = %.preheader147.i, %.preheader147.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader147.i.new ], [ 0, %.preheader147.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader147.i.new ], [ 0, %.preheader147.i ]
  %i.aq = trunc nuw i64 %indvars.iv.i to i32
  %i.ar = add i32 %i.ab, %i.aq
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !772
  %i.at = zext i32 %i.ar to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  store i32 1, ptr %i.au, align 4, !tbaa !199
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !404
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv200.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.at
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !356
  %i.ay = trunc i64 %indvars.iv.i to i32
  %i.az = or disjoint i32 %i.ay, 1
  %i.ba = add i32 %i.ab, %i.az
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !772
  %i.bc = zext i32 %i.ba to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  store i32 1, ptr %i.bd, align 4, !tbaa !199
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !404
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv200.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bc
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !356
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader147.i.new, !llvm.loop !766

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i:          ; preds = %.noexc, %bb.f
  %.sroa.15110.0.i = phi ptr [ null, %bb.f ], [ %i.ah, %.noexc ] ; 4 uses
  %.sroa.0105.0.i = phi ptr [ null, %bb.f ], [ %i.af, %.noexc ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !73 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.not143159.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not143159.i, label %.thread.i, label %.lr.ph.i

._crit_edge164.i:                                 ; preds = %bb.o
  %i.bk = ptrtoint ptr %.sroa.13118.1.i to i64    ; 4 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.q, i32 %i.u) ; 2 uses
  %.not144172.i = icmp eq ptr %.sroa.0112.1.i, %.sroa.9116.1.i
  br i1 %.not144172.i, label %.thread.i, label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %._crit_edge164.i
  %.not190.i = icmp eq i32 %.sroa.speculated.i, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 80
  br i1 %.not190.i, label %.thread.i, label %.lr.ph176.split.us.preheader.i

.lr.ph176.split.us.preheader.i:                   ; preds = %.lr.ph176.i
  %i.bm = zext i32 %.sroa.speculated.i to i64
  br label %.lr.ph176.split.us.i

.lr.ph176.split.us.i:                             ; preds = %._crit_edge170.us.i, %.lr.ph176.split.us.preheader.i
  %.058174.us.i = phi i32 [ %i.bs, %._crit_edge170.us.i ], [ 0, %.lr.ph176.split.us.preheader.i ] ; 3 uses
  %.sroa.093.0173.us.i = phi ptr [ %i.by, %._crit_edge170.us.i ], [ %.sroa.0112.1.i, %.lr.ph176.split.us.preheader.i ] ; 2 uses
  %.not.us.i = icmp ult i32 %.058174.us.i, %3
  br i1 %.not.us.i, label %.preheader146.us.i, label %.thread.i

bb.g:                                             ; preds = %.preheader146.us.i, %bb.g
  %indvars.iv205.i = phi i64 [ 0, %.preheader146.us.i ], [ %indvars.iv.next206.i, %bb.g ] ; 2 uses
  %.1167.us.i = phi i32 [ %.058174.us.i, %.preheader146.us.i ], [ %i.bs, %bb.g ]
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !405
  %i.bo = trunc nuw i64 %indvars.iv205.i to i32
  %i.bp = add i32 %i.bx, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  store i8 1, ptr %i.br, align 1, !tbaa !205
  %i.bs = add nuw i32 %.1167.us.i, 1              ; 4 uses
  %indvars.iv.next206.i = add nuw nsw i64 %indvars.iv205.i, 1 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next206.i, %i.bm
  %i.bu = icmp ult i32 %i.bs, %3
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %bb.g, label %._crit_edge170.us.i, !llvm.loop !767

.preheader146.us.i:                               ; preds = %.lr.ph176.split.us.i
  %i.bw = load i32, ptr %.sroa.093.0173.us.i, align 4, !tbaa !199
  %i.bx = mul i32 %i.bw, %i.u
  br label %bb.g

._crit_edge170.us.i:                              ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.093.0173.us.i, i64 4 ; 2 uses
  %.not144.us.i = icmp eq ptr %i.by, %.sroa.9116.1.i
  br i1 %.not144.us.i, label %.thread.i, label %.lr.ph176.split.us.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i, %bb.o
  %.sroa.0100.0163.i = phi ptr [ %i.cx, %bb.o ], [ %i.bi, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i ] ; 2 uses
  %.sroa.0112.0162.i = phi ptr [ %.sroa.0112.1.i, %bb.o ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i ] ; 8 uses
  %.sroa.9116.0161.i = phi ptr [ %.sroa.9116.1.i, %bb.o ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i ] ; 5 uses
  %.sroa.13118.0160.i = phi ptr [ %.sroa.13118.1.i, %bb.o ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0100.0163.i, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !407 ; 6 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  %.not74.i = icmp ult i32 %i.ca, %i.s
  %or.cond.i = and i1 %i.cb, %.not74.i
  br i1 %or.cond.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.lr.ph.i
  %.not.i.i78.i = icmp eq ptr %.sroa.9116.0161.i, %.sroa.13118.0160.i
  br i1 %.not.i.i78.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.ca, ptr %.sroa.9116.0161.i, align 4, !tbaa !199
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.cc = ptrtoint ptr %.sroa.9116.0161.i to i64
  %i.cd = ptrtoint ptr %.sroa.0112.0162.i to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 7 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.cf, label %bb.k, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.222) #33
          to label %.noexc79.i unwind label %.loopexit.split-lp.i

.noexc79.i:                                       ; preds = %bb.k
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.cg = ashr exact i64 %i.ce, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 2305843009213693951)
  %i.ck = select i1 %i.ci, i64 2305843009213693951, i64 %i.cj ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #31
          to label %.noexc80.i unwind label %.loopexit.i ; 4 uses

.noexc80.i:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i32 %i.ca, ptr %i.cn, align 4, !tbaa !199
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

bb.l:                                             ; preds = %.noexc80.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %.sroa.0112.0162.i, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.l, %.noexc80.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0112.0162.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0112.0162.i, i64 noundef %i.ce) #32
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.i
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ck
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i, %bb.i
  %.sroa.13118.3.i = phi ptr [ %i.cp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13118.0160.i, %bb.i ]
  %.pn.i = phi ptr [ %i.cn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i ], [ %.sroa.9116.0161.i, %bb.i ]
  %.sroa.0112.3.i = phi ptr [ %i.cm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0112.0162.i, %bb.i ]
  %.sroa.9116.2.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %i.cq = lshr i32 %i.ca, 6
  %.zext.i = zext nneg i32 %i.cq to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0105.0.i, i64 %.zext.i ; 2 uses
  %i.cs = and i32 %i.ca, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = load i64, ptr %i.cr, align 8, !tbaa !198
  %i.cw = or i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.cr, align 8, !tbaa !198
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.13118.1.i = phi ptr [ %.sroa.13118.3.i, %bb.n ], [ %.sroa.13118.0160.i, %.lr.ph.i ] ; 2 uses
  %.sroa.9116.1.i = phi ptr [ %.sroa.9116.2.i, %bb.n ], [ %.sroa.9116.0161.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0112.1.i = phi ptr [ %.sroa.0112.3.i, %bb.n ], [ %.sroa.0112.0162.i, %.lr.ph.i ] ; 7 uses
  %i.cx = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0100.0163.i) #35 ; 2 uses
  %.not143.i = icmp eq ptr %i.cx, %i.bj
  br i1 %.not143.i, label %._crit_edge164.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i88.i = icmp eq ptr %.sroa.0105.0.i, null
  br i1 %.not.i.i88.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit89.i, label %bb.u

.thread.i:                                        ; preds = %._crit_edge170.us.i, %.lr.ph176.split.us.i, %.lr.ph176.i, %._crit_edge164.i, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i
  %.sroa.0112.0.lcssa229.i = phi ptr [ %.sroa.0112.1.i, %._crit_edge164.i ], [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i ], [ %.sroa.0112.1.i, %.lr.ph176.i ], [ %.sroa.0112.1.i, %.lr.ph176.split.us.i ], [ %.sroa.0112.1.i, %._crit_edge170.us.i ] ; 3 uses
  %.sroa.13118.0.lcssa228.i = phi i64 [ %i.bk, %._crit_edge164.i ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i ], [ %i.bk, %.lr.ph176.i ], [ %i.bk, %.lr.ph176.split.us.i ], [ %i.bk, %._crit_edge170.us.i ]
  %.058.lcssa.i = phi i32 [ 0, %._crit_edge164.i ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit.i ], [ 0, %.lr.ph176.i ], [ %i.bs, %._crit_edge170.us.i ], [ %.058174.us.i, %.lr.ph176.split.us.i ] ; 2 uses
  %i.cy = icmp ne i32 %i.u, 0
  %i.cz = icmp ult i32 %.058.lcssa.i, %3
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.preheader.lr.ph.i, label %._crit_edge188.split.i

.preheader.lr.ph.i:                               ; preds = %.thread.i
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 80
  br i1 %.not.i, label %._crit_edge188.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.dc = zext i32 %i.s to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge184.i, %.preheader.preheader.i
  %.056187.i = phi i32 [ %i.dl, %._crit_edge184.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.4186.i = phi i32 [ %.6.i, %._crit_edge184.i ], [ %.058.lcssa.i, %.preheader.preheader.i ]
  br label %bb.r

._crit_edge188.split.i:                           ; preds = %.preheader.lr.ph.i, %.thread.i
  %.not.i.i83.i = icmp eq ptr %.sroa.0105.0.i, null
  br i1 %.not.i.i83.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %._crit_edge188.split.thread.i

._crit_edge188.split.thread.i:                    ; preds = %._crit_edge184.i, %._crit_edge188.split.i
  %i.dd = ptrtoint ptr %.sroa.15110.0.i to i64
  %i.de = ptrtoint ptr %.sroa.0105.0.i to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = ashr exact i64 %i.df, 3
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %.sroa.15110.0.i, i64 %i.dh
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.df) #32
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %._crit_edge188.split.thread.i, %._crit_edge188.split.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0112.0.lcssa229.i, null
  br i1 %.not.i.i.i.i, label %_ZL22ubatch_prepare_reserveR12llama_ubatchjRKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS3_EEEj.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.dj = ptrtoint ptr %.sroa.0112.0.lcssa229.i to i64
  %i.dk = sub i64 %.sroa.13118.0.lcssa228.i, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0112.0.lcssa229.i, i64 noundef %i.dk) #32
  br label %_ZL22ubatch_prepare_reserveR12llama_ubatchjRKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS3_EEEj.exit

._crit_edge184.i:                                 ; preds = %bb.t
  %i.dl = add nuw i32 %.056187.i, 1               ; 2 uses
  %i.dm = icmp ult i32 %i.dl, %i.u
  %i.dn = select i1 %i.dm, i1 %i.ec, i1 false
  br i1 %i.dn, label %.preheader.i, label %._crit_edge188.split.thread.i, !llvm.loop !768

bb.r:                                             ; preds = %bb.t, %.preheader.i
  %indvars.iv208.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next209.i, %bb.t ] ; 4 uses
  %.5181.i = phi i32 [ %.4186.i, %.preheader.i ], [ %.6.i, %bb.t ] ; 2 uses
  %i.do = lshr i64 %indvars.iv208.i, 6
  %.zext140.i = and i64 %i.do, 67108863
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0105.0.i, i64 %.zext140.i
  %i.dq = and i64 %indvars.iv208.i, 63
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = load i64, ptr %i.dp, align 8, !tbaa !198
  %i.dt = and i64 %i.ds, %i.dr
  %.not145.i = icmp eq i64 %i.dt, 0
  br i1 %.not145.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.du = trunc nuw i64 %indvars.iv208.i to i32
  %i.dv = load ptr, ptr %i.db, align 8, !tbaa !405
  %i.dw = mul i32 %i.u, %i.du
  %i.dx = add i32 %i.dw, %.056187.i
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  store i8 1, ptr %i.dz, align 1, !tbaa !205
  %i.ea = add nuw i32 %.5181.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.6.i = phi i32 [ %.5181.i, %bb.r ], [ %i.ea, %bb.s ] ; 3 uses
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %i.eb = icmp samesign ult i64 %indvars.iv.next209.i, %i.dc
  %i.ec = icmp ult i32 %.6.i, %3                  ; 2 uses
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.r, label %._crit_edge184.i, !llvm.loop !769

bb.u:                                             ; preds = %bb.p
  %i.ee = ptrtoint ptr %.sroa.15110.0.i to i64
  %i.ef = ptrtoint ptr %.sroa.0105.0.i to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = ashr exact i64 %i.eg, 3
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds [8 x i8], ptr %.sroa.15110.0.i, i64 %i.ei
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.eg) #32
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit89.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit89.i:         ; preds = %bb.u, %bb.p
  %.not.i.i.i90.i = icmp eq ptr %.sroa.0112.0162.i, null
  br i1 %.not.i.i.i90.i, label %.body, label %bb.v

bb.v:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit89.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0112.0162.i, i64 noundef %i.ce) #32
  br label %.body

_ZL22ubatch_prepare_reserveR12llama_ubatchjRKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS3_EEEj.exit: ; preds = %bb.q, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !343 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.en = load i32, ptr %i.em, align 8, !tbaa !326 ; 2 uses
  switch i32 %i.en, label %bb.x [
    i32 0, label %_ZL22ctx_type_to_graph_type18llama_context_type.exit
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %_ZL22ubatch_prepare_reserveR12llama_ubatchjRKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS3_EEEj.exit
  br label %_ZL22ctx_type_to_graph_type18llama_context_type.exit

bb.x:                                             ; preds = %_ZL22ubatch_prepare_reserveR12llama_ubatchjRKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS3_EEEj.exit
  %i.eo = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull @.str.221)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
          to label %.noexc48 unwind label %bb.ah

.noexc48:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eo) #30
  br label %.body49

_ZL22ctx_type_to_graph_type18llama_context_type.exit: ; preds = %bb.w, %_ZL22ubatch_prepare_reserveR12llama_ubatchjRKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS3_EEEj.exit
  %.0.i = phi i32 [ 3, %bb.w ], [ %i.en, %_ZL22ubatch_prepare_reserveR12llama_ubatchjRKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS3_EEEj.exit ]
  invoke void @_ZNK13llama_context12graph_paramsEP16llm_graph_resultRK12llama_ubatchPK22llama_memory_context_i14llm_graph_type(ptr dead_on_unwind nonnull writable sret(%struct.llm_graph_params) align 8 %9, ptr noundef nonnull align 8 dereferenceable(996) %0, ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef %4, i32 noundef %.0.i)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %_ZL22ctx_type_to_graph_type18llama_context_type.exit
  invoke void @_ZN16llm_graph_result5resetEv(ptr noundef nonnull align 8 dereferenceable(36772) %i.el)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %0, align 8, !tbaa !350, !nonnull !227, !align !351
  %i.er = invoke noundef ptr @_ZNK11llama_model11build_graphERK16llm_graph_params(ptr noundef nonnull align 8 dereferenceable(36840) %i.eq, ptr noundef nonnull align 8 dereferenceable(36496) %9)
          to label %bb.ac unwind label %bb.aj     ; 6 uses

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.k, ptr %i.j, align 8, !tbaa !194
  br i1 %5, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %.not43 = icmp eq ptr %6, null
  %i.es = load ptr, ptr %i.f, align 8, !tbaa !365 ; 2 uses
  br i1 %.not43, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @ggml_backend_sched_reserve_size(ptr noundef %i.es, ptr noundef %i.er, ptr noundef nonnull %6)
          to label %bb.ar unwind label %bb.aj

bb.af:                                            ; preds = %bb.e
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ag:                                            ; preds = %.noexc.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.y, %_ZL22ctx_type_to_graph_type18llama_context_type.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body49

bb.ai:                                            ; preds = %bb.aa
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aj:                                            ; preds = %bb.aq, %bb.ao, %bb.al, %bb.ak, %bb.ae, %bb.ab
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ak:                                            ; preds = %bb.ad
  invoke void @ggml_backend_sched_split_graph(ptr noundef %i.es, ptr noundef %i.er)
          to label %bb.ar unwind label %bb.aj

bb.al:                                            ; preds = %bb.ac
  %i.ey = load ptr, ptr %i.f, align 8, !tbaa !365
  %i.ez = invoke zeroext i1 @ggml_backend_sched_reserve(ptr noundef %i.ey, ptr noundef %i.er)
          to label %bb.am unwind label %bb.aj

bb.am:                                            ; preds = %bb.al
  br i1 %i.ez, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not42 = icmp eq ptr %6, null
  br i1 %.not42, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 2459, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.139) #33
          to label %bb.ap unwind label %bb.aj

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.an
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__._ZN13llama_context13graph_reserveEjjjPK22llama_memory_context_ibPm)
          to label %bb.ar unwind label %bb.aj

bb.ar:                                            ; preds = %bb.ak, %bb.ae, %bb.am, %bb.aq
  %.037 = phi ptr [ null, %bb.aq ], [ %i.er, %bb.am ], [ %i.er, %bb.ae ], [ %i.er, %bb.ak ]
  call void @_ZN16llm_graph_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(36496) dereferenceable(36496) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !377 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i, label %_ZN12llama_ubatchD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fc, align 8, !tbaa !379
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !380
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !329
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #30, !inline_history !8
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !329
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #30, !inline_history !8
  br label %_ZN12llama_ubatchD2Ev.exit

bb.au:                                            ; preds = %bb.as
end_hunk_0
