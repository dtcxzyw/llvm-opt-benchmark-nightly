Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme?download=true
inline.NumInlined: 2554
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt12__shared_ptrI15PmeGridsStorageLN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !23

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !299
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !300
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !21
  %i.g = load i64, ptr %i.a, align 8, !tbaa !300
  store i64 %i.g, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.i, ptr %i.h, align 1, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !300  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef i32 @_Z15tMPI_Comm_splitP10tmpi_comm_iiPS0_(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK3gmx7MpiComm9sumReduceEmPi(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #23

declare noundef zeroext i1 @_Z19inputrecPbcXY2WallsPK10t_inputrec(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17init_overlap_commP13pme_overlap_tiP10tmpi_comm_iiii(ptr noundef nonnull initializes((0, 16)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %struct.tmpi_status_, align 8       ; 4 uses
  store ptr %2, ptr %0, align 8, !tbaa !621
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %3, ptr %i.a, align 8, !tbaa !622
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %4, ptr %i.b, align 4, !tbaa !623
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.d = add nsw i32 %3, 1
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !258  ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.n)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !622
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !258
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.q = phi i32 [ %.pre, %bb.b ], [ %3, %bb.c ], [ %3, %bb.d ], [ %3, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.s = sext i32 %i.q to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !258  ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !259  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.s
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ab = sub nuw nsw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ab)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit141

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ac = icmp ugt i64 %i.z, %i.s
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit141

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i139, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit141, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i140

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i140:     ; preds = %bb.g
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !258
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit141

_ZNSt6vectorIiSaIiEE6resizeEm.exit141:            ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i140
  %i.ae = load ptr, ptr @debug, align 8, !tbaa !253 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit141
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.35, i64 20, i64 1, ptr nonnull %i.ae) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE6resizeEm.exit141
  %i.af = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.af, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.i
  %.pre213 = load ptr, ptr %i.c, align 8, !tbaa !259
  %.pre214 = load ptr, ptr @debug, align 8, !tbaa !253
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ag = add nsw i32 %3, -1                      ; 5 uses
  %i.ah = add i32 %1, -1                          ; 5 uses
  %i.ai = load ptr, ptr @debug, align 8, !tbaa !253 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64
  %.pre208 = load ptr, ptr %i.c, align 8, !tbaa !259
  %.pre210 = load ptr, ptr %i.r, align 8, !tbaa !259
  %i.ak = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.al = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !259 ; 6 uses
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !259 ; 5 uses
  %wide.trip.count197 = zext nneg i32 %3 to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = sub i64 %i.ap, %i.ao
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us
  %n.vec = and i64 %wide.trip.count197, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert255 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert257 = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat258 = shufflevector <8 x i32> %broadcast.splatinsert257, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert259 = insertelement <8 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat260 = shufflevector <8 x i32> %broadcast.splatinsert259, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind261 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph ], [ %vec.ind.next262, %vector.body ] ; 2 uses
  %i.ar = mul <8 x i32> %broadcast.splat, %vec.ind
  %i.as = sdiv <8 x i32> %i.ar, %broadcast.splat256
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index
  store <8 x i32> %i.as, ptr %i.at, align 4, !tbaa !256
  %8 = mul <8 x i32> %broadcast.splat, %vec.ind261
  %i.au = add <8 x i32> %broadcast.splat258, %8
  %i.av = sdiv <8 x i32> %i.au, %broadcast.splat256
  %i.aw = add <8 x i32> %broadcast.splat260, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index
  store <8 x i32> %i.aw, ptr %i.ax, align 4, !tbaa !256
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next262 = add <8 x i32> %vec.ind261, splat (i32 8)
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count197
  br i1 %cmp.n, label %.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.us, %middle.block
  %indvars.iv194.ph = phi i64 [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count197, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv194.ph
  %indvars.iv.next195.prol = or disjoint i64 %indvars.iv194.ph, 1 ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv194.ph to i32
  %i.bb = mul i32 %5, %i.ba
  %i.bc = trunc nuw nsw i64 %indvars.iv.next195.prol to i32
  %i.bd = mul i32 %5, %i.bc
  %i.be = add i32 %i.ag, %i.bd
  %i.bf = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.bg = insertelement <2 x i32> %i.bf, i32 %i.be, i64 1
  %i.bh = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bi = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bj = sdiv <2 x i32> %i.bg, %i.bi             ; 2 uses
  %i.bk = extractelement <2 x i32> %i.bj, i64 0
  store i32 %i.bk, ptr %i.az, align 4, !tbaa !256
  %i.bl = extractelement <2 x i32> %i.bj, i64 1
  %i.bm = add i32 %i.ah, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv194.ph
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !256
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv194.unr = phi i64 [ %indvars.iv194.ph, %scalar.ph.preheader ], [ %indvars.iv.next195.prol, %scalar.ph.prol ]
  %i.bo = add nsw i64 %wide.trip.count197, -1
  %i.bp = icmp eq i64 %indvars.iv194.ph, %i.bo
  br i1 %i.bp, label %.thread, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.bq = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.br = shufflevector <2 x i32> %i.bq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bs = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bt = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv194 = phi i64 [ %indvars.iv194.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next195.1, %scalar.ph ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv194
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 4 uses
  %i.bv = trunc i64 %indvars.iv194 to i32
  %i.bw = mul i32 %5, %i.bv
  %i.bx = trunc i64 %indvars.iv.next195 to i32
  %i.by = mul i32 %5, %i.bx
  %i.bz = add i32 %i.ag, %i.by
  %i.ca = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %i.cb = insertelement <2 x i32> %i.ca, i32 %i.bz, i64 1
  %i.cc = sdiv <2 x i32> %i.cb, %i.br             ; 2 uses
  %i.cd = extractelement <2 x i32> %i.cc, i64 0
  store i32 %i.cd, ptr %i.bu, align 4, !tbaa !256
  %i.ce = extractelement <2 x i32> %i.cc, i64 1
  %i.cf = add i32 %i.ah, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv194
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !256
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next195
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 3 uses
  %i.ci = trunc i64 %indvars.iv.next195 to i32
  %i.cj = mul i32 %5, %i.ci
  %i.ck = trunc i64 %indvars.iv.next195.1 to i32
  %i.cl = mul i32 %5, %i.ck
  %i.cm = add i32 %i.ag, %i.cl
  %i.cn = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %i.co = insertelement <2 x i32> %i.cn, i32 %i.cm, i64 1
  %i.cp = sdiv <2 x i32> %i.co, %i.bt             ; 2 uses
  %i.cq = extractelement <2 x i32> %i.cp, i64 0
  store i32 %i.cq, ptr %i.ch, align 4, !tbaa !256
  %i.cr = extractelement <2 x i32> %i.cp, i64 1
  %i.cs = add i32 %i.ah, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next195
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !256
  %exitcond198.not.1 = icmp eq i64 %indvars.iv.next195.1, %wide.trip.count197
  br i1 %exitcond198.not.1, label %.thread, label %scalar.ph, !llvm.loop !611

.thread:                                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cu = zext nneg i32 %3 to i64                 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cu
  store i32 %5, ptr %i.cv, align 4, !tbaa !256
  br label %.lr.ph179.us.preheader

._crit_edge:                                      ; preds = %bb.k, %.._crit_edge_crit_edge
  %i.cw = phi ptr [ %.pre214, %.._crit_edge_crit_edge ], [ %i.dt, %bb.k ] ; 2 uses
  %i.cx = phi ptr [ %.pre213, %.._crit_edge_crit_edge ], [ %i.dw, %bb.k ]
  %i.cy = sext i32 %3 to i64                      ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy
  store i32 %5, ptr %i.cz, align 4, !tbaa !256
  %.not135 = icmp eq ptr %i.cw, null
  br i1 %.not135, label %bb.m, label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.k
  %i.da = phi ptr [ %i.ai, %.lr.ph.split.preheader ], [ %i.dt, %bb.k ]
  %i.db = phi ptr [ %i.ai, %.lr.ph.split.preheader ], [ %i.du, %bb.k ] ; 2 uses
  %i.dc = phi ptr [ %.pre210, %.lr.ph.split.preheader ], [ %i.dv, %bb.k ] ; 2 uses
  %i.dd = phi ptr [ %.pre208, %.lr.ph.split.preheader ], [ %i.dw, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.df = trunc i64 %indvars.iv to i32
  %i.dg = mul i32 %5, %i.df
  %i.dh = trunc i64 %indvars.iv.next to i32
  %i.di = mul i32 %5, %i.dh
  %i.dj = add i32 %i.ag, %i.di
  %i.dk = insertelement <2 x i32> poison, i32 %i.dg, i64 0
  %i.dl = insertelement <2 x i32> %i.dk, i32 %i.dj, i64 1
  %i.dm = sdiv <2 x i32> %i.dl, %i.al             ; 2 uses
  %i.dn = extractelement <2 x i32> %i.dm, i64 0
  store i32 %i.dn, ptr %i.de, align 4, !tbaa !256
  %i.do = extractelement <2 x i32> %i.dm, i64 1
  %i.dp = add i32 %i.ah, %i.do                    ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !256
  %.not138 = icmp eq ptr %i.db, null
  br i1 %.not138, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.dr = load i32, ptr %i.de, align 4, !tbaa !256
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.36, i32 noundef %i.dr, i32 noundef %i.dp) #11 ; 0 uses
  %.pre207 = load ptr, ptr %i.c, align 8, !tbaa !259
  %.pre209 = load ptr, ptr %i.r, align 8, !tbaa !259
  %.pre211 = load ptr, ptr @debug, align 8, !tbaa !253 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.split, %bb.j
  %i.dt = phi ptr [ %i.da, %.lr.ph.split ], [ %.pre211, %bb.j ] ; 2 uses
  %i.du = phi ptr [ null, %.lr.ph.split ], [ %.pre211, %bb.j ]
  %i.dv = phi ptr [ %i.dc, %.lr.ph.split ], [ %.pre209, %bb.j ]
  %i.dw = phi ptr [ %i.dd, %.lr.ph.split ], [ %.pre207, %bb.j ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !612

bb.l:                                             ; preds = %._crit_edge
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.cw) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  br i1 %i.af, label %.lr.ph179.us.preheader, label %.split182.us.thread

.split182.us.thread:                              ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !342 ; 2 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !343 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = sdiv exact i64 %i.ed, 28
  br label %bb.y

.lr.ph179.us.preheader:                           ; preds = %.thread, %bb.m
  %i.ef = phi i64 [ %i.cu, %.thread ], [ %i.cy, %bb.m ] ; 4 uses
  %i.eg = zext i32 %3 to i64                      ; 5 uses
  %xtraiter266 = and i64 %i.eg, 1
  %i.eh = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.eg, 4294967294
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  %lcmp.mod269 = trunc i32 %3 to i1
  br label %.lr.ph179.us

.lr.ph179.us:                                     ; preds = %.lr.ph179.us.preheader, %._crit_edge180.us
  %indvars.iv203 = phi i64 [ 0, %.lr.ph179.us.preheader ], [ %indvars.iv.next204, %._crit_edge180.us ] ; 4 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 5 uses
  br i1 %i.eh, label %.epil.preheader, label %.lr.ph179.us.new

.lr.ph179.us.new:                                 ; preds = %.lr.ph179.us
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !259 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.thread.us.1, %.lr.ph179.us.new
  %indvars.iv199 = phi i64 [ 0, %.lr.ph179.us.new ], [ %indvars.iv.next200.1, %.thread.us.1 ] ; 4 uses
  %.0124175.us = phi i1 [ false, %.lr.ph179.us.new ], [ %.1.us.1, %.thread.us.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph179.us.new ], [ %niter.next.1, %.thread.us.1 ]
  %i.ej = add nuw nsw i64 %indvars.iv199, %indvars.iv.next204 ; 3 uses
  %i.ek = icmp slt i64 %i.ej, %i.ef
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv199
  %i.em = load i32, ptr %i.el, align 4, !tbaa !256 ; 2 uses
  br i1 %i.ek, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.en = sub nuw nsw i64 %i.ej, %i.eg
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !256
  %i.er = add nsw i32 %i.eq, %5
  %i.es = icmp sgt i32 %i.em, %i.er
  br i1 %i.es, label %bb.q, label %.thread.us

bb.p:                                             ; preds = %bb.n
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ej
end_hunk_0
