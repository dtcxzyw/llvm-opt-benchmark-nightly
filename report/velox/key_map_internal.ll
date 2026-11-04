Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/key_map_internal?download=true
inline.NumInlined: 327
inline.NumDeleted: 153
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5arrow7compute10SwissTable12map_new_keysEjPtPKjPjPNS_4util15TempVectorStackERKSt8functionIFviPKtS4_S5_S2_PvEERKS9_IFNS_6StatusEiSB_SC_EESC_:bb.a
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv46.i.epil
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !30
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cq
  store i32 %i.as, ptr %i.cr, align 4, !tbaa !32
  %indvars.iv.next47.i.epil = add nuw nsw i64 %indvars.iv46.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit, label %.lr.ph39.i.epil, !llvm.loop !128

_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit: ; preds = %._crit_edge.i, %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit.loopexit.unr-lcssa, %.lr.ph39.i.epil
  %.promoted = load ptr, ptr %0, align 8
  br label %.backedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.05761 = phi i16 [ %.sroa.speculated, %.lr.ph ], [ %.05761.ph, %.lr.ph.preheader ]
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !30
  %.sroa.speculated = tail call i16 @llvm.umax.i16(i16 %.05761, i16 %i.ct) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !129

.backedge:                                        ; preds = %.backedge.backedge, %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit
  %i.cu = phi ptr [ %.promoted, %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit ], [ null, %.backedge.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZN5arrow7compute10SwissTable19map_new_keys_helperEPKjPjPtPbS4_S4_PNS_4util15TempVectorStackERKSt8functionIFviPKtS3_S4_S5_PvEERKSA_IFNS_6StatusEiSC_SD_EESD_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef %i.aa, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.f

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.backedge
  %i.cv = load ptr, ptr %11, align 8, !tbaa !75, !noalias !142 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN5arrow6StatusD2Ev.exit49, label %.critedge46

bb.f:                                             ; preds = %.backedge
  %i.cx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cu, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.i

_ZN5arrow6StatusD2Ev.exit49:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.cy = load i8, ptr %i.b, align 1, !tbaa !76, !range !65, !noundef !66
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.g, label %.critedgethread-pre-split

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN5arrow7compute10SwissTable11grow_doubleEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN5arrow6StatusD2Ev.exit51 unwind label %bb.h

_ZN5arrow6StatusD2Ev.exit51:                      ; preds = %bb.g
  %i.da = load ptr, ptr %12, align 8, !tbaa !75, !noalias !143 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN5arrow6StatusD2Ev.exit53.preheader, label %.critedge46

_ZN5arrow6StatusD2Ev.exit53.preheader:            ; preds = %_ZN5arrow6StatusD2Ev.exit51
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !32  ; 4 uses
  %.not69 = icmp eq i32 %i.dc, 0
  br i1 %.not69, label %.critedge.thread, label %_ZN5arrow6StatusD2Ev.exit53.preheader70

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit53.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.loopexit

_ZN5arrow6StatusD2Ev.exit53.preheader70:          ; preds = %_ZN5arrow6StatusD2Ev.exit53.preheader
  %wide.trip.count83 = zext i32 %i.dc to i64      ; 2 uses
  %xtraiter128 = and i64 %wide.trip.count83, 1
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %_ZN5arrow6StatusD2Ev.exit53.epil.preheader, label %_ZN5arrow6StatusD2Ev.exit53.preheader70.new

_ZN5arrow6StatusD2Ev.exit53.preheader70.new:      ; preds = %_ZN5arrow6StatusD2Ev.exit53.preheader70
  %unroll_iter132 = and i64 %wide.trip.count83, 4294967294
  br label %_ZN5arrow6StatusD2Ev.exit53

bb.h:                                             ; preds = %bb.g
  %i.de = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.i

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %_ZN5arrow6StatusD2Ev.exit53, %_ZN5arrow6StatusD2Ev.exit53.preheader70.new
  %indvars.iv80 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.preheader70.new ], [ %indvars.iv.next81.1, %_ZN5arrow6StatusD2Ev.exit53 ] ; 3 uses
  %niter133 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.preheader70.new ], [ %niter133.next.1, %_ZN5arrow6StatusD2Ev.exit53 ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv80
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !30
  %i.dh = sext i16 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !32
  %i.dk = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.dl = sub nsw i32 32, %i.dk
  %i.dm = lshr i32 %i.dj, %i.dl
  %i.dn = shl i32 %i.dm, 3
  %i.do = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.dh
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !32
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv80
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !30
  %i.ds = sext i16 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !32
  %i.dv = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.dw = sub nsw i32 32, %i.dv
  %i.dx = lshr i32 %i.du, %i.dw
  %i.dy = shl i32 %i.dx, 3
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ds
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !32
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter133.next.1 = add i64 %niter133, 2         ; 2 uses
  %niter133.ncmp.1 = icmp eq i64 %niter133.next.1, %unroll_iter132
  br i1 %niter133.ncmp.1, label %.critedge.unr-lcssa, label %_ZN5arrow6StatusD2Ev.exit53, !llvm.loop !134

.critedgethread-pre-split:                        ; preds = %_ZN5arrow6StatusD2Ev.exit49
  %.pr = load i32, ptr %i.a, align 4, !tbaa !32
  %i.ea = icmp eq i32 %.pr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %i.ea, label %.loopexit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedgethread-pre-split, %.critedge
  br label %.backedge, !llvm.loop !135

.critedge.unr-lcssa:                              ; preds = %_ZN5arrow6StatusD2Ev.exit53
  %lcmp.mod130.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %.critedge, label %_ZN5arrow6StatusD2Ev.exit53.epil.preheader

_ZN5arrow6StatusD2Ev.exit53.epil.preheader:       ; preds = %.critedge.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit53.preheader70
  %indvars.iv80.epil.init = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.preheader70 ], [ %indvars.iv.next81.1, %.critedge.unr-lcssa ]
  %lcmp.mod131 = trunc i32 %i.dc to i1
  call void @llvm.assume(i1 %lcmp.mod131)
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv80.epil.init
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !30
  %i.ed = sext i16 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !32
  %i.eg = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.eh = sub nsw i32 32, %i.eg
  %i.ei = lshr i32 %i.ef, %i.eh
  %i.ej = shl i32 %i.ei, 3
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ed
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit53.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.backedge.backedge

.loopexit:                                        ; preds = %.critedgethread-pre-split, %.critedge.thread
  store ptr null, ptr %0, align 8, !tbaa !75, !alias.scope !144
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.de, %bb.h ], [ %i.cx, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @_ZN5arrow4util16TempVectorHolderIjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  resume { ptr, i32 } %.pn

.critedge46:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit51, %_ZN5arrow6StatusD2Ev.exit
  %i.el = phi ptr [ %i.da, %_ZN5arrow6StatusD2Ev.exit51 ], [ %i.cv, %_ZN5arrow6StatusD2Ev.exit ]
  store ptr %i.el, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.j

bb.j:                                             ; preds = %.critedge46, %.loopexit
  %i.em = load ptr, ptr %10, align 8, !tbaa !55
  %i.en = load i32, ptr %i.z, align 8, !tbaa !68
  %i.eo = load i32, ptr %i.w, align 4, !tbaa !56
  %i.ep = shl i32 %i.eo, 2
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.em, i32 noundef %i.en, i32 noundef %i.ep)
          to label %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #21
  unreachable

_ZN5arrow4util16TempVectorHolderIjED2Ev.exit:     ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute10SwissTable11grow_doubleEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %3 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %4 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %8 = alloca [2 x i32], align 4                  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 12 uses
  %i.c = icmp slt i32 %i.b, 6                     ; 3 uses
  %i.d = icmp samesign ult i32 %i.b, 14           ; 3 uses
  %i.e = icmp slt i32 %i.b, 30                    ; 3 uses
  %i.f = select i1 %i.e, i32 32, i32 64
  %i.g = select i1 %i.d, i32 16, i32 %i.f
  %i.h = select i1 %i.c, i32 8, i32 %i.g          ; 2 uses
  %i.i = add nsw i32 %i.b, 1                      ; 3 uses
  %i.j = icmp slt i32 %i.b, 5                     ; 3 uses
  %i.k = icmp slt i32 %i.b, 13                    ; 3 uses
  %i.l = icmp slt i32 %i.b, 29                    ; 3 uses
  %i.m = sub nuw nsw i32 64, %i.h
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 -1, %i.n                        ; 2 uses
  %i.p = add nuw nsw i32 %i.h, 8
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = select i1 %i.l, i64 40, i64 72
  %i.s = select i1 %i.k, i64 24, i64 %i.r
  %i.t = select i1 %i.j, i64 16, i64 %i.s         ; 6 uses
  %i.u = zext nneg i32 %i.i to i64
  %i.v = shl i64 %i.t, %i.u
  %i.w = add i64 %i.v, 64                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %4, i64 noundef %i.w, ptr noundef %i.y)
  %i.z = load ptr, ptr %4, align 8, !tbaa !75
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.d, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.al unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  %i.ac = add nsw i32 %i.b, 4
  %i.ad = shl i32 4, %i.ac
  %i.ae = add nuw nsw i32 %i.ad, 64
  %i.af = sext i32 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !79, !noalias !162 ; 2 uses
  store i64 %i.ah, ptr %5, align 8, !tbaa !79, !alias.scope !162
  store ptr null, ptr %i.ag, align 8, !tbaa !79, !noalias !162
  %.cast = inttoptr i64 %i.ah to ptr              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !64, !range !65, !noundef !66
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.am = load i8, ptr %i.al, align 8, !range !65
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false, !prof !67
  %i.ap = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %i.ao, ptr %i.aq, ptr null, !prof !67
  call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 0, i64 %i.w, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !78
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, i64 noundef %i.af, ptr noundef %i.as)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %6, align 8, !tbaa !75
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.i, label %bb.f, !prof !67

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ah unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !79, !noalias !165 ; 2 uses
  store i64 %i.ay, ptr %7, align 8, !tbaa !79, !alias.scope !165
  store ptr null, ptr %i.ax, align 8, !tbaa !79, !noalias !165
  %.cast168 = inttoptr i64 %i.ay to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %.cast168, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !27
  %.not188 = icmp eq i32 %i.bb, 31
  br i1 %.not188, label %._crit_edge187, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = sub nsw i32 31, %i.b
  %i.bf = sub i32 24, %i.b
  %i.bg = select i1 %i.e, i32 5, i32 6
  %i.bh = select i1 %i.d, i32 4, i32 %i.bg
  %i.bi = select i1 %i.c, i32 3, i32 %i.bh
  %i.bj = select i1 %i.l, i32 5, i32 6
  %i.bk = select i1 %i.k, i32 4, i32 %i.bj
  %i.bl = select i1 %i.j, i32 3, i32 %i.bk
  br label %bb.k

.preheader:                                       ; preds = %._crit_edge
  %.not190 = icmp eq i32 %i.dm, 31
  br i1 %.not190, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = sub nsw i32 31, %i.b
  %i.bp = select i1 %i.e, i32 5, i32 6
  %i.bq = select i1 %i.d, i32 4, i32 %i.bp
  %i.br = select i1 %i.c, i32 3, i32 %i.bq
  %i.bs = sub i32 24, %i.b
  %notmask = shl nsw i32 -1, %i.i
  %i.bt = xor i32 %notmask, -1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = select i1 %i.l, i32 5, i32 6
  %i.bw = select i1 %i.k, i32 4, i32 %i.bv
  %i.bx = select i1 %i.j, i32 3, i32 %i.bw
  br label %bb.u

bb.j:                                             ; preds = %bb.z, %._crit_edge187
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %7, align 8, !tbaa !79    ; 3 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.j
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !81
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(80) %i.bz) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %.lr.ph172, %._crit_edge
  %indvars.iv195 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next196, %._crit_edge ] ; 6 uses
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !28 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 9
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64, !range !65, !noundef !66
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ci = load i8, ptr %i.ch, align 8, !range !65
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false, !prof !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = select i1 %i.ck, ptr %i.cm, ptr null, !prof !67
  %i.co = mul nuw nsw i64 %indvars.iv195, %i.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %5, align 8, !tbaa !79    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !64, !range !65, !noundef !66
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !65
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = select i1 %i.ct, i1 %i.cw, i1 false, !prof !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = select i1 %i.cx, ptr %i.cz, ptr null, !prof !67
  %i.db = shl nuw nsw i64 %indvars.iv195, 1
  %i.dc = mul nuw nsw i64 %i.t, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc ; 3 uses
  %i.de = load i64, ptr %i.cp, align 8, !tbaa !35
  %i.df = and i64 %i.de, -9187201950435737472
  %i.dg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.df, i1 false)
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = lshr i32 %i.dh, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 0, ptr %9, align 4, !tbaa !32
  store i32 0, ptr %8, align 4, !tbaa !32
  store i64 -9187201950435737472, ptr %i.dd, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.t
  store i64 -9187201950435737472, ptr %i.dj, align 1
  %.not189 = icmp eq i32 %i.di, 0
  br i1 %.not189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %wide.trip.count = zext nneg i32 %i.di to i64
  %.idx217 = shl nuw nsw i64 %indvars.iv195, 5
  %indvars.iv195.tr = trunc nuw nsw i64 %indvars.iv195 to i32
  %i.dl = shl nuw i32 %indvars.iv195.tr, 4
  br label %bb.l

._crit_edge:                                      ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !27  ; 3 uses
  %i.dn = shl nuw i32 1, %i.dm
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next196, %i.do
  br i1 %i.dp, label %bb.k, label %.preheader, !llvm.loop !153

bb.l:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.dq = load ptr, ptr %i.bd, align 8, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx217
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32 ; 3 uses
  %i.dw = lshr i32 %i.dv, %i.be                   ; 2 uses
  %i.dx = lshr i32 %i.dw, 1
  %i.dy = zext nneg i32 %i.dx to i64
  %.not134 = icmp eq i64 %indvars.iv195, %i.dy
  br i1 %.not134, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dz = and i32 %i.dw, 1                        ; 2 uses
  %i.ea = lshr i32 %i.dv, %i.bf
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = and i8 %i.eb, 127
  %i.ed = trunc nuw nsw i64 %indvars.iv to i32
  %i.ee = shl i32 %i.ed, %i.bi
  %i.ef = sext i32 %i.ee to i64
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eg
  %.0.copyload.i = load i64, ptr %i.eh, align 1
  %i.ei = and i64 %.0.copyload.i, %i.o
  %i.ej = shl nuw nsw i32 %i.dz, 3
  %i.ek = or disjoint i32 %i.ej, %i.dl
  %i.el = zext nneg i32 %i.dz to i64              ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.el ; 2 uses
  %11 = load i32, ptr %10, align 4, !tbaa !32     ; 4 uses
  %i.em = add nsw i32 %i.ek, %11
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.en
  store i32 %i.dv, ptr %i.eo, align 4, !tbaa !32
  %i.ep = mul nuw nsw i64 %i.t, %i.el
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ep ; 2 uses
  %i.er = sub nsw i32 7, %11
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.eq, i64 %i.es
  store i8 %i.ec, ptr %i.et, align 1, !tbaa !31
  %i.eu = shl i32 %11, %i.bl
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ew = ashr i32 %i.eu, 3
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.ex ; 2 uses
  %.0.copyload.i141 = load i64, ptr %i.ey, align 8
  %i.ez = or i64 %.0.copyload.i141, %i.ei
  store i64 %i.ez, ptr %i.ey, align 8
  %i.fa = add nsw i32 %11, 1
  store i32 %i.fa, ptr %10, align 4, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !154

._crit_edge187:                                   ; preds = %._crit_edge184, %bb.i, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %._crit_edge187
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !82 ; 8 uses
  %i.fe = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !41
  %i.ff = load <2 x ptr>, ptr %3, align 16, !tbaa !41
  store <2 x ptr> %i.ff, ptr %i.fb, align 8, !tbaa !41
  store <2 x ptr> %i.fe, ptr %3, align 16, !tbaa !41
  %.not.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.o

bb.o:                                             ; preds = %.noexc
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.fg, align 8, !tbaa !84
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !85
  %i.fl = load ptr, ptr %i.fd, align 8, !tbaa !81
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #19, !inline_history !7
  %i.fo = load ptr, ptr %i.fd, align 8, !tbaa !81
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #19, !inline_history !7
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.fj, %bb.r ], [ %i.ft, %bb.s ]
  %i.fu = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fu, label %bb.t, label %bb.z, !prof !86

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #19
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph186, %._crit_edge184
  %i.fv = phi i32 [ %i.dm, %.lr.ph186 ], [ %i.go, %._crit_edge184 ]
  %indvars.iv203 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next204, %._crit_edge184 ] ; 4 uses
  %i.fw = load ptr, ptr %i.bm, align 8, !tbaa !28 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 9
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !64, !range !65, !noundef !66
  %i.fz = trunc nuw i8 %i.fy to i1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gb = load i8, ptr %i.ga, align 8, !range !65
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = select i1 %i.fz, i1 %i.gc, i1 false, !prof !67
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = select i1 %i.gd, ptr %i.gf, ptr null, !prof !67
  %i.gh = mul nuw nsw i64 %indvars.iv203, %i.q
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh ; 2 uses
  %.0.copyload.i142 = load i64, ptr %i.gi, align 1
  %i.gj = and i64 %.0.copyload.i142, -9187201950435737472
  %i.gk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gj, i1 false)
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %i.gm = lshr i32 %i.gl, 3                       ; 2 uses
  %.not191 = icmp eq i32 %i.gm, 0
  br i1 %.not191, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.u
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %wide.trip.count201 = zext nneg i32 %i.gm to i64
  %.idx218 = shl nuw nsw i64 %indvars.iv203, 5
  br label %bb.v

._crit_edge184.loopexit:                          ; preds = %bb.y
  %.pre = load i32, ptr %i.a, align 4, !tbaa !27
  br label %._crit_edge184

._crit_edge184:                                   ; preds = %._crit_edge184.loopexit, %bb.u
  %i.go = phi i32 [ %.pre, %._crit_edge184.loopexit ], [ %i.fv, %bb.u ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.gp = shl nuw i32 1, %i.go
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next204, %i.gq
  br i1 %i.gr, label %bb.u, label %._crit_edge187, !llvm.loop !155

bb.v:                                             ; preds = %.lr.ph183, %bb.y
  %indvars.iv198 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next199, %bb.y ] ; 3 uses
  %i.gs = load ptr, ptr %i.bn, align 8, !tbaa !28
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv198
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx218
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !32 ; 3 uses
  %i.gy = lshr i32 %i.gx, %i.bo
  %i.gz = zext i32 %i.gy to i64                   ; 4 uses
  %i.ha = lshr i64 %i.gz, 1
  %.not = icmp eq i64 %i.ha, %indvars.iv203
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hb = trunc nuw nsw i64 %indvars.iv198 to i32
  %i.hc = shl i32 %i.hb, %i.br
  %i.hd = sext i32 %i.hc to i64
  %i.he = lshr i64 %i.hd, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.he
  %.0.copyload.i143 = load i64, ptr %i.hf, align 1
  %i.hg = and i64 %.0.copyload.i143, %i.o
  %i.hh = lshr i32 %i.gx, %i.bs
  %i.hi = trunc i32 %i.hh to i8
  %i.hj = and i8 %i.hi, 127
  %i.hk = load ptr, ptr %5, align 8, !tbaa !79    ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 9
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !64, !range !65, !noundef !66
  %i.hn = trunc nuw i8 %i.hm to i1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hp = load i8, ptr %i.ho, align 8, !range !65
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = select i1 %i.hn, i1 %i.hq, i1 false, !prof !67
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8            ; 2 uses
  %i.hu = select i1 %i.hr, ptr %i.ht, ptr null, !prof !67 ; 2 uses
  %i.hv = mul nuw nsw i64 %i.t, %i.gz
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hv ; 2 uses
  %.0.copyload.i144 = load i64, ptr %i.hw, align 1
  %i.hx = and i64 %.0.copyload.i144, -9187201950435737472
  %i.hy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hx, i1 false)
  %.0.in173 = trunc nuw nsw i64 %i.hy to i32
  %.0174 = lshr i32 %.0.in173, 3                  ; 2 uses
  %i.hz = icmp eq i32 %.0174, 8
  br i1 %i.hz, label %.lr.ph177, label %bb.x

.lr.ph177:                                        ; preds = %bb.w, %.lr.ph177
  %.0122175 = phi i64 [ %i.ib, %.lr.ph177 ], [ %i.gz, %bb.w ]
  %i.ia = add nuw nsw i64 %.0122175, 1
  %i.ib = and i64 %i.ia, %i.bu                    ; 3 uses
  %i.ic = mul nuw nsw i64 %i.ib, %i.t             ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.ic
  %.0.copyload.i145 = load i64, ptr %i.id, align 1
  %i.ie = and i64 %.0.copyload.i145, -9187201950435737472
  %i.if = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ie, i1 false)
  %.0.in = trunc nuw nsw i64 %i.if to i32
  %.0 = lshr i32 %.0.in, 3                        ; 2 uses
  %i.ig = icmp eq i32 %.0, 8
  br i1 %i.ig, label %.lr.ph177, label %._crit_edge178, !llvm.loop !156

._crit_edge178:                                   ; preds = %.lr.ph177
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ic
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge178, %bb.w
  %.0122.lcssa = phi i64 [ %i.ib, %._crit_edge178 ], [ %i.gz, %bb.w ]
  %.0121.lcssa = phi ptr [ %i.ih, %._crit_edge178 ], [ %i.hw, %bb.w ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0, %._crit_edge178 ], [ %.0174, %bb.w ] ; 3 uses
  %i.ii = zext nneg i32 %.0.lcssa to i64
  %.idx = shl nuw nsw i64 %.0122.lcssa, 5
  %i.ij = getelementptr i8, ptr %i.ba, i64 %.idx
  %i.ik = getelementptr [4 x i8], ptr %i.ij, i64 %i.ii
  store i32 %i.gx, ptr %i.ik, align 4, !tbaa !32
  %i.il = sub nuw nsw i32 7, %.0.lcssa
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %.0121.lcssa, i64 %i.im
  store i8 %i.hj, ptr %i.in, align 1, !tbaa !31
  %i.io = shl nuw nsw i32 %.0.lcssa, %i.bx
  %i.ip = getelementptr inbounds nuw i8, ptr %.0121.lcssa, i64 8
  %i.iq = lshr i32 %i.io, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir ; 2 uses
  %.0.copyload.i146 = load i64, ptr %i.is, align 8
  %i.it = or i64 %.0.copyload.i146, %i.hg
  store i64 %i.it, ptr %i.is, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge184.loopexit, label %bb.v, !llvm.loop !157

bb.z:                                             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
end_hunk_0
