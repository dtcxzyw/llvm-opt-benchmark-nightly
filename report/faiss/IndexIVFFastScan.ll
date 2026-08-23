Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFFastScan?download=true
inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5faiss16IndexIVFFastScan25reconstruct_orig_invlistsEv.omp_outlined:bb.a

bb.i:                                             ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #37
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %i.az = add nsw i64 %.02553, 1
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !61
  %.not.not = icmp slt i64 %.02553, %i.ba
  br i1 %.not.not, label %bb.c, label %._crit_edge56

.lr.ph50:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, %bb.m
  %.02449 = phi i64 [ %i.cr, %bb.m ], [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit ] ; 3 uses
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.032.0, i8 0, i64 %i.bb, i1 false)
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !71
  %.not58 = icmp eq i64 %i.bc, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit, %.lr.ph50
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.02449
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !61
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !206 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(25) %i.bf, i64 noundef %.02553, i64 noundef %i.be, ptr noundef %.sroa.032.0, ptr noundef null)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit ; 0 uses

.lr.ph:                                           ; preds = %.lr.ph50, %_ZN5faiss15BitstringWriter5writeEmi.exit
  %.048 = phi i64 [ %i.co, %_ZN5faiss15BitstringWriter5writeEmi.exit ], [ 0, %.lr.ph50 ] ; 2 uses
  %.sroa.7.047 = phi i64 [ %.sroa.7.1, %_ZN5faiss15BitstringWriter5writeEmi.exit ], [ 0, %.lr.ph50 ] ; 4 uses
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !74
  %i.bl = sext i32 %i.bk to i64
  %i.bm = load i64, ptr %i.q, align 8, !tbaa !75
  %i.bn = invoke noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef %i.x, i64 noundef %i.bl, i64 noundef %i.bm, i64 noundef %.02449, i64 noundef %.048)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.bo = zext i8 %i.bn to i64                    ; 3 uses
  %i.bp = load i64, ptr %i.r, align 8, !tbaa !103 ; 3 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i64 %.sroa.7.047, 7                 ; 3 uses
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = sub nuw nsw i32 8, %i.bs                ; 2 uses
  %.not.i = icmp slt i32 %i.bt, %i.bq
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = shl nuw nsw i64 %i.bo, %i.br
  %i.bv = lshr i64 %.sroa.7.047, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !17
  %i.by = trunc i64 %i.bu to i8
  %i.bz = or i8 %i.bx, %i.by
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !17
  %sext = shl i64 %i.bp, 32
  %i.ca = ashr exact i64 %sext, 32
  br label %_ZN5faiss15BitstringWriter5writeEmi.exit

bb.l:                                             ; preds = %bb.j
  %i.cb = lshr i64 %.sroa.7.047, 3
  %i.cc = shl nuw nsw i64 %i.bo, %i.br
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %i.cb ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17
  %i.cf = trunc i64 %i.cc to i8
  %i.cg = or i8 %i.ce, %i.cf
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !17
  %i.ch = and i64 %i.bp, 4294967295               ; 2 uses
  %i.ci = zext nneg i32 %i.bt to i64
  %i.cj = lshr i64 %i.bo, %i.ci                   ; 2 uses
  %.not1617.i = icmp eq i64 %i.cj, 0
  br i1 %.not1617.i, label %_ZN5faiss15BitstringWriter5writeEmi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = trunc nuw nsw i64 %i.cj to i8
  %i.cn = or i8 %i.cl, %i.cm
  store i8 %i.cn, ptr %i.ck, align 1, !tbaa !17
  br label %_ZN5faiss15BitstringWriter5writeEmi.exit, !llvm.loop !104

_ZN5faiss15BitstringWriter5writeEmi.exit:         ; preds = %.lr.ph.i, %bb.k, %bb.l
  %.pn = phi i64 [ %i.ch, %bb.l ], [ %i.ch, %.lr.ph.i ], [ %i.ca, %bb.k ]
  %.sroa.7.1 = add i64 %.pn, %.sroa.7.047
  %i.co = add nuw i64 %.048, 1                    ; 2 uses
  %i.cp = load i64, ptr %i.o, align 8, !tbaa !71
  %i.cq = icmp ult i64 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !399

bb.m:                                             ; preds = %._crit_edge
  %i.cr = add nuw i64 %.02449, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.ah
  br i1 %exitcond.not, label %._crit_edge51, label %.lr.ph50, !llvm.loop !400

._crit_edge56:                                    ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge56, %bb.a
  ret void

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %._crit_edge
  %lpad.loopexit42 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit, %bb.c, %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit, %bb.f
  %lpad.loopexit45 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit42, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit45, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cs = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cs) #37
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss16IndexIVFFastScan9sa_decodeElPKhPf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #25 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #38
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #40
          to label %.noexc27 unwind label %.loopexit.split-lp ; 5 uses

.noexc27:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !201
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc27
  %i.n = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !201
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc27, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.k, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc27 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.028.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc27 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !98    ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.q, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 1, ptr %i.c, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 0, ptr %i.d, align 4, !tbaa !98
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.r = load i64, ptr %i.b, align 8, !tbaa !61
  %i.s = call i64 @llvm.smin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !61
  %i.t = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %.not33 = icmp sgt i64 %i.t, %i.s
  br i1 %.not33, label %._crit_edge, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph35, %.loopexit
  %.02634 = phi i64 [ %i.t, %.lr.ph35 ], [ %i.ck, %.loopexit ] ; 5 uses
  %i.y = shl i64 %.02634, 2
  %i.z = load ptr, ptr %4, align 8, !tbaa !59
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !41
  %i.ab = load i64, ptr %5, align 8, !tbaa !61
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, %.02634
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 2 uses
  %i.af = invoke noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef %i.ae)
          to label %bb.f unwind label %.loopexit31

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %6, align 8, !tbaa !97    ; 2 uses
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !28
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nsw i64 %.02634, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.aj ; 8 uses
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !113 ; 2 uses
  %i.am = load i64, ptr %5, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.am
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.an, ptr noundef %i.ak, i64 noundef 1)
          to label %bb.g unwind label %.loopexit31

bb.g:                                             ; preds = %bb.f
  %i.ar = load i8, ptr %i.x, align 8, !tbaa !110, !range !23, !noundef !24
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !34  ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(36) %i.at, i64 noundef %i.af, ptr noundef %.sroa.028.0)
          to label %.preheader unwind label %.loopexit31

.preheader:                                       ; preds = %bb.h
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !28  ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ax to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.az = mul i64 %i.y, %i.ai
  %i.ba = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ag, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep41 = getelementptr i8, ptr %.sroa.028.0, i64 %i.ba
  %bound0 = icmp ult ptr %i.ak, %scevgep41
  %bound1 = icmp ult ptr %.sroa.028.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <4 x float>, ptr %i.bc, align 4, !tbaa !201, !alias.scope !401
  %wide.load42 = load <4 x float>, ptr %i.bd, align 4, !tbaa !201, !alias.scope !401
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load43 = load <4 x float>, ptr %i.be, align 4, !tbaa !201, !alias.scope !404, !noalias !401
  %wide.load44 = load <4 x float>, ptr %i.bf, align 4, !tbaa !201, !alias.scope !404, !noalias !401
  %i.bg = fadd <4 x float> %wide.load, %wide.load43
  %i.bh = fadd <4 x float> %wide.load42, %wide.load44
  store <4 x float> %i.bg, ptr %i.be, align 4, !tbaa !201, !alias.scope !404, !noalias !401
  store <4 x float> %i.bh, ptr %i.bf, align 4, !tbaa !201, !alias.scope !404, !noalias !401
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader45, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader45 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader45 ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv.prol
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !201
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.prol ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !201
  %i.bn = fadd float %i.bk, %i.bm
  store float %i.bn, ptr %i.bl, align 4, !tbaa !201
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !407

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader45
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader45 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv
  %i.br = load float, ptr %i.bq, align 4, !tbaa !201
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !201
  %i.bu = fadd float %i.br, %i.bt
  store float %i.bu, ptr %i.bs, align 4, !tbaa !201
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv.next
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !201
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !201
  %i.bz = fadd float %i.bw, %i.by
  store float %i.bz, ptr %i.bx, align 4, !tbaa !201
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv.next.1
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !201
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.1 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !201
  %i.ce = fadd float %i.cb, %i.cd
  store float %i.ce, ptr %i.cc, align 4, !tbaa !201
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv.next.2
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !201
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.2 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !201
  %i.cj = fadd float %i.cg, %i.ci
  store float %i.cj, ptr %i.ch, align 4, !tbaa !201
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !408

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %bb.g
  %i.ck = add nsw i64 %.02634, 1
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !61
  %.not.not = icmp slt i64 %.02634, %i.cl
  br i1 %.not.not, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @4, i32 %.pre)
  %.not.i.i.i = icmp eq ptr %.sroa.028.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = ptrtoint ptr %.sroa.9.0 to i64
  %i.cn = ptrtoint ptr %.sroa.028.0 to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.0, i64 noundef %i.co) #39
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  ret void

.loopexit31:                                      ; preds = %bb.e, %bb.f, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.b, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit31
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit31 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cp = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cp) #37
  unreachable
}

declare noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !25
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #38
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !67

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #40 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  store i64 %i.c, ptr %i.a, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.j, ptr %i.i, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !17
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #30

attributes #0 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind }
attributes #27 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { convergent nounwind }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { noreturn nounwind }
attributes #38 = { noreturn }
attributes #39 = { builtin nounwind }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { nounwind allocsize(0) }
attributes #42 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !16, i64 8, !7, i64 16}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"long", !7, i64 0}
end_hunk_0
