Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme?download=true
inline.NumInlined: 2554
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi
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
  store ptr %2, ptr %0, align 8, !tbaa !618
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %3, ptr %i.a, align 8, !tbaa !619
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %4, ptr %i.b, align 4, !tbaa !620
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
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
  %.pre = load i32, ptr %i.a, align 8, !tbaa !619
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
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
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
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit141
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.35, i64 20, i64 1, ptr nonnull %i.ae) ; 0 uses
  %.pre209.pre = load ptr, ptr @debug, align 8, !tbaa !253 ; 4 uses
  %i.af = icmp sgt i32 %3, 0                      ; 3 uses
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.thread:                                          ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit141
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph.thread, label %._crit_edge.thread

.lr.ph.thread:                                    ; preds = %.thread
  %i.ah = add nsw i32 %3, -1
  %i.ai = add i32 %1, -1
  br label %.lr.ph.split.us

.lr.ph:                                           ; preds = %bb.h
  %i.aj = add nsw i32 %3, -1                      ; 2 uses
  %i.ak = add i32 %1, -1                          ; 2 uses
  %i.al = icmp eq ptr %.pre209.pre, null
  br i1 %i.al, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.am = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.thread, %.lr.ph
  %i.ao = phi i32 [ %i.ai, %.lr.ph.thread ], [ %i.ak, %.lr.ph ] ; 4 uses
  %i.ap = phi i32 [ %i.ah, %.lr.ph.thread ], [ %i.aj, %.lr.ph ] ; 4 uses
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !259 ; 5 uses
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !259 ; 5 uses
  %wide.trip.count197 = zext i32 %3 to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = ptrtoaddr ptr %i.aq to i64
  %i.au = sub i64 %i.at, %i.as
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us
  %n.vec = and i64 %wide.trip.count197, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert255 = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert257 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat258 = shufflevector <8 x i32> %broadcast.splatinsert257, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert259 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat260 = shufflevector <8 x i32> %broadcast.splatinsert259, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind261 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph ], [ %vec.ind.next262, %vector.body ] ; 2 uses
  %i.av = mul <8 x i32> %broadcast.splat258, %vec.ind
  %i.aw = sdiv <8 x i32> %i.av, %broadcast.splat260
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index
  store <8 x i32> %i.aw, ptr %i.ax, align 4, !tbaa !256
  %i.ay = mul <8 x i32> %broadcast.splat258, %vec.ind261
  %i.az = add <8 x i32> %broadcast.splat256, %i.ay
  %i.ba = sdiv <8 x i32> %i.az, %broadcast.splat260
  %i.bb = add <8 x i32> %broadcast.splat, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index
  store <8 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !256
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next262 = add <8 x i32> %vec.ind261, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count197
  br i1 %cmp.n, label %._crit_edge.thread.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.us, %middle.block
  %indvars.iv194.ph = phi i64 [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count197, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv194.ph
  %indvars.iv.next195.prol = or disjoint i64 %indvars.iv194.ph, 1 ; 2 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv194.ph to i32
  %i.bg = mul i32 %5, %i.bf
  %i.bh = trunc nuw nsw i64 %indvars.iv.next195.prol to i32
  %i.bi = mul i32 %5, %i.bh
  %i.bj = add i32 %i.ap, %i.bi
  %i.bk = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.bl = insertelement <2 x i32> %i.bk, i32 %i.bj, i64 1
  %i.bm = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bn = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bo = sdiv <2 x i32> %i.bl, %i.bn             ; 2 uses
  %i.bp = extractelement <2 x i32> %i.bo, i64 0
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !256
  %i.bq = extractelement <2 x i32> %i.bo, i64 1
  %i.br = add i32 %i.ao, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv194.ph
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !256
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv194.unr = phi i64 [ %indvars.iv194.ph, %scalar.ph.preheader ], [ %indvars.iv.next195.prol, %scalar.ph.prol ]
  %i.bt = add nsw i64 %wide.trip.count197, -1
  %i.bu = icmp eq i64 %indvars.iv194.ph, %i.bt
  br i1 %i.bu, label %._crit_edge.thread.thread, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.bv = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bw = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bx = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv194 = phi i64 [ %indvars.iv194.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next195.1, %scalar.ph ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv194
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 4 uses
  %i.ca = trunc i64 %indvars.iv194 to i32
  %i.cb = mul i32 %5, %i.ca
  %i.cc = trunc i64 %indvars.iv.next195 to i32
  %i.cd = mul i32 %5, %i.cc
  %i.ce = add i32 %i.ap, %i.cd
  %i.cf = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %i.cg = insertelement <2 x i32> %i.cf, i32 %i.ce, i64 1
  %i.ch = sdiv <2 x i32> %i.cg, %i.bw             ; 2 uses
  %i.ci = extractelement <2 x i32> %i.ch, i64 0
  store i32 %i.ci, ptr %i.bz, align 4, !tbaa !256
  %i.cj = extractelement <2 x i32> %i.ch, i64 1
  %i.ck = add i32 %i.ao, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv194
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !256
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next195
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 3 uses
  %i.cn = trunc i64 %indvars.iv.next195 to i32
  %i.co = mul i32 %5, %i.cn
  %i.cp = trunc i64 %indvars.iv.next195.1 to i32
  %i.cq = mul i32 %5, %i.cp
  %i.cr = add i32 %i.ap, %i.cq
  %i.cs = insertelement <2 x i32> poison, i32 %i.co, i64 0
  %i.ct = insertelement <2 x i32> %i.cs, i32 %i.cr, i64 1
  %i.cu = sdiv <2 x i32> %i.ct, %i.by             ; 2 uses
  %i.cv = extractelement <2 x i32> %i.cu, i64 0
  store i32 %i.cv, ptr %i.cm, align 4, !tbaa !256
  %i.cw = extractelement <2 x i32> %i.cu, i64 1
  %i.cx = add i32 %i.ao, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next195
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !256
  %exitcond198.not.1 = icmp eq i64 %indvars.iv.next195.1, %wide.trip.count197
  br i1 %exitcond198.not.1, label %._crit_edge.thread.thread, label %scalar.ph, !llvm.loop !608

._crit_edge.thread.thread:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cz = zext nneg i32 %3 to i64                 ; 2 uses
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cz
  store i32 %5, ptr %i.db, align 4, !tbaa !256
  br label %.lr.ph179.us.preheader

._crit_edge.thread:                               ; preds = %.thread
  %i.dc = sext i32 %3 to i64
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dc
  store i32 %5, ptr %i.de, align 4, !tbaa !256
  br label %.split182.us.thread

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %i.df = phi ptr [ %.pre209.pre, %bb.h ], [ %i.ec, %bb.j ] ; 2 uses
  %i.dg = sext i32 %3 to i64                      ; 3 uses
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %5, ptr %i.di, align 4, !tbaa !256
  %.not135 = icmp eq ptr %i.df, null
  br i1 %.not135, label %bb.k, label %.split250

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %i.dj = phi ptr [ %.pre209.pre, %.lr.ph.split.preheader ], [ %i.ec, %bb.j ]
  %i.dk = phi ptr [ %.pre209.pre, %.lr.ph.split.preheader ], [ %i.ed, %bb.j ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dn = trunc i64 %indvars.iv to i32
  %i.do = mul i32 %5, %i.dn
  %i.dp = trunc i64 %indvars.iv.next to i32
  %i.dq = mul i32 %5, %i.dp
  %i.dr = add i32 %i.aj, %i.dq
  %i.ds = insertelement <2 x i32> poison, i32 %i.do, i64 0
  %i.dt = insertelement <2 x i32> %i.ds, i32 %i.dr, i64 1
  %i.du = sdiv <2 x i32> %i.dt, %i.an             ; 2 uses
  %i.dv = extractelement <2 x i32> %i.du, i64 0
  store i32 %i.dv, ptr %i.dm, align 4, !tbaa !256
  %i.dw = extractelement <2 x i32> %i.du, i64 1
  %i.dx = add i32 %i.ak, %i.dw                    ; 2 uses
  %i.dy = load ptr, ptr %i.r, align 8, !tbaa !259
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  store i32 %i.dx, ptr %i.dz, align 4, !tbaa !256
  %.not138 = icmp eq ptr %i.dk, null
  br i1 %.not138, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.ea = load i32, ptr %i.dm, align 4, !tbaa !256
  %i.eb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dk, ptr noundef nonnull @.str.36, i32 noundef %i.ea, i32 noundef %i.dx) #11 ; 0 uses
  %.pre207 = load ptr, ptr @debug, align 8, !tbaa !253 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.ec = phi ptr [ %i.dj, %.lr.ph.split ], [ %.pre207, %bb.i ] ; 2 uses
  %i.ed = phi ptr [ null, %.lr.ph.split ], [ %.pre207, %bb.i ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !609

.split250:                                        ; preds = %._crit_edge
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.df) ; 0 uses
  br i1 %i.af, label %.lr.ph179.us.preheader, label %.split182.us.thread

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.af, label %.lr.ph179.us.preheader, label %.split182.us.thread

.lr.ph179.us.preheader:                           ; preds = %._crit_edge.thread.thread, %.split250, %bb.k
  %i.ee = phi i64 [ %i.cz, %._crit_edge.thread.thread ], [ %i.dg, %bb.k ], [ %i.dg, %.split250 ] ; 4 uses
  %i.ef = zext i32 %3 to i64                      ; 5 uses
  %xtraiter265 = and i64 %i.ef, 1
  %i.eg = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.ef, 4294967294
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  %lcmp.mod268 = trunc i32 %3 to i1
  br label %.lr.ph179.us

.lr.ph179.us:                                     ; preds = %.lr.ph179.us.preheader, %._crit_edge180.us
  %indvars.iv203 = phi i64 [ 0, %.lr.ph179.us.preheader ], [ %indvars.iv.next204, %._crit_edge180.us ] ; 4 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 5 uses
  br i1 %i.eg, label %.epil.preheader, label %.lr.ph179.us.new

.lr.ph179.us.new:                                 ; preds = %.lr.ph179.us
  %i.eh = load ptr, ptr %i.r, align 8, !tbaa !259 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.thread.us.1, %.lr.ph179.us.new
  %indvars.iv199 = phi i64 [ 0, %.lr.ph179.us.new ], [ %indvars.iv.next200.1, %.thread.us.1 ] ; 4 uses
  %.0124175.us = phi i1 [ false, %.lr.ph179.us.new ], [ %.1.us.1, %.thread.us.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph179.us.new ], [ %niter.next.1, %.thread.us.1 ]
  %i.ei = add nuw nsw i64 %indvars.iv199, %indvars.iv.next204 ; 3 uses
  %i.ej = icmp slt i64 %i.ei, %i.ee
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv199
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !256 ; 2 uses
  br i1 %i.ej, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.em = sub nuw nsw i64 %i.ei, %i.ef
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !256
  %i.eq = add nsw i32 %i.ep, %5
  %i.er = icmp sgt i32 %i.el, %i.eq
  br i1 %i.er, label %bb.o, label %.thread.us

bb.n:                                             ; preds = %bb.l
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ei
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !256
  %i.ev = icmp sgt i32 %i.el, %i.eu
  br i1 %i.ev, label %bb.o, label %.thread.us

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %.thread.us

end_hunk_0
