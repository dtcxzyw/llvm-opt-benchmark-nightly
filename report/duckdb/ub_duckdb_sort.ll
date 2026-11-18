Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_sort?download=true
inline.NumInlined: 29524
inline.NumDeleted: 7047
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 234
begin_hunk_0_@_ZN6duckdb25SortedRunMergerLocalState29TemplatedMaterializePartitionILNS_11SortKeyTypeE5EEENS_10unique_ptrINS_9SortedRunESt14default_deleteIS4_ELb1EEERNS_26SortedRunMergerGlobalStateE:bb.a
.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %._crit_edge41
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !648   ; 3 uses
  %.not.i = icmp eq ptr %i.dj, null
  br i1 %.not.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN6duckdb9SortedRunD1Ev(ptr noundef nonnull align 8 dead_on_return(1170) dereferenceable(1170) %i.dj) #30
  call void @_ZdlPv(ptr noundef nonnull %i.dj) #29
  br label %.body

bb.ak:                                            ; preds = %bb.af, %bb.aj
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.l, %common.resume.sink.split.i
  %.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.bh, %bb.o ], [ %i.ai, %bb.l ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp49, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  br label %bb.al

bb.al:                                            ; preds = %.body, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.bg, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %.pn.pn.pn, %bb.al ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState29TemplatedMaterializePartitionILNS_11SortKeyTypeE6EEENS_10unique_ptrINS_9SortedRunESt14default_deleteIS4_ELb1EEERNS_26SortedRunMergerGlobalStateE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.331") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2415 {
bb.a:
  %3 = alloca %"struct.duckdb::TupleDataChunkState", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::TupleDataChunkState", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1201 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.e = getelementptr [16 x i8], ptr %i.b, i64 %i.d ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %3)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !977  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.i)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %4)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !977  ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1166, !nonnull !416, !align !428
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_9SortedRunESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.h unwind label %bb.p       ; 3 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !997, !noalias !2416, !nonnull !416, !align !428
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1060, !noalias !2416, !nonnull !416, !align !428
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %i.w = invoke noalias noundef nonnull dereferenceable(1176) ptr @_Znwm(i64 noundef 1176) #28
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1168
  %i.y = load i8, ptr %i.x, align 8, !tbaa !552, !range !415, !noalias !2418, !noundef !416
  %i.z = trunc nuw i8 %i.y to i1
  invoke void @_ZN6duckdb9SortedRunC1ERNS_13ClientContextERKNS_4SortEb(ptr noundef nonnull align 8 dereferenceable(1170) %i.w, ptr noundef nonnull align 8 dereferenceable(512) %i.t, ptr noundef nonnull align 8 dereferenceable(129) %i.v, i1 noundef zeroext %i.z)
          to label %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i unwind label %bb.i, !noalias !2418

common.resume.sink.split.i:                       ; preds = %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i, %bb.i
  %.sink.i = phi ptr [ %i.ah, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i ], [ %i.w, %bb.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ag, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i ], [ %i.aa, %bb.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sink.i) #29
  br label %.body

bb.i:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i: ; preds = %.noexc
  store ptr %i.w, ptr %0, align 8, !tbaa !648, !alias.scope !2418
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store i8 2, ptr %i.ac, align 8, !tbaa !1062
  %i.ad = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 672
  store i8 2, ptr %i.ae, align 8, !tbaa !1063
  %i.af = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !648, !alias.scope !2416 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i: ; preds = %bb.l
  call void @_ZN6duckdb9SortedRunD1Ev(ptr noundef nonnull align 8 dead_on_return(1170) dereferenceable(1170) %i.ah) #30
  br label %common.resume.sink.split.i

_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit: ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1169
  store i8 1, ptr %i.ai, align 1, !tbaa !999
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !1196 ; 2 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.ao = shl i64 %i.d, 4
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph55, %bb.av
  %i.aq = phi i64 [ %i.al, %.lr.ph55 ], [ %i.gh, %bb.av ] ; 2 uses
  %i.ar = phi i64 [ %i.ak, %.lr.ph55 ], [ %i.gg, %bb.av ] ; 5 uses
  %i.as = sub nuw i64 %i.aq, %i.ar                ; 3 uses
  %i.at = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 2048) ; 15 uses
  %.not57 = icmp eq i64 %i.aq, %i.ar              ; 2 uses
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.au = getelementptr [16 x i8], ptr %i.e, i64 %i.ar ; 7 uses
  %min.iters.check = icmp ult i64 %i.as, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.02951.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 7 uses
  %i.av = sub nsw i64 %i.at, %.02951.ph
  %.neg = add nsw i64 %.02951.ph, 1
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aw = getelementptr [16 x i8], ptr %i.au, i64 %.02951.ph ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951.ph
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !980
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !771
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951.ph
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !980
  %i.bb = add nuw nsw i64 %.02951.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02951.unr = phi i64 [ %.02951.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.at, %.neg
  br i1 %i.bc, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bd = shl nuw nsw i64 %i.at, 3                ; 2 uses
  %i.be = getelementptr i8, ptr %i.h, i64 %i.bd   ; 2 uses
  %i.bf = getelementptr i8, ptr %i.m, i64 %i.bd   ; 2 uses
  %bound0 = icmp ult ptr %i.h, %i.bf
  %bound1 = icmp ult ptr %i.m, %i.be
  %found.conflict = and i1 %bound0, %bound1
  %i.bg = shl i64 %i.ar, 4
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bg ; 2 uses
  %5 = add i64 %i.ar, %i.at
  %6 = shl i64 %5, 4
  %7 = getelementptr i8, ptr %i.e, i64 %6         ; 2 uses
  %bound079 = icmp ult ptr %i.h, %7
  %bound180 = icmp ult ptr %i.bh, %i.be
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ult ptr %i.m, %7
  %bound183 = icmp ult ptr %i.bh, %i.bf
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bi = and i64 %i.at, 3                        ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = select i1 %i.bj, i64 4, i64 %i.bi
  %n.vec = sub nsw i64 %i.at, %i.bk               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.bl = getelementptr [16 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bm = getelementptr [16 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = insertelement <2 x ptr> poison, ptr %i.bl, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.bn, i64 1
  %i.bq = getelementptr [16 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = getelementptr [16 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 48
  %i.bu = insertelement <2 x ptr> poison, ptr %i.br, i64 0
  %i.bv = insertelement <2 x ptr> %i.bu, ptr %i.bt, i64 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x ptr> %i.bp, ptr %i.bw, align 8, !tbaa !980, !alias.scope !2419, !noalias !2420
  store <2 x ptr> %i.bv, ptr %i.bx, align 8, !tbaa !980, !alias.scope !2419, !noalias !2420
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bz = getelementptr i8, ptr %i.bm, i64 24
  %i.ca = getelementptr i8, ptr %i.bq, i64 40
  %i.cb = getelementptr i8, ptr %i.bs, i64 56
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !771, !alias.scope !2421
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !771, !alias.scope !2421
  %i.ce = insertelement <2 x ptr> poison, ptr %i.cc, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.cd, i64 1
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !771, !alias.scope !2421
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !771, !alias.scope !2421
  %i.ci = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.cj = insertelement <2 x ptr> %i.ci, ptr %i.ch, i64 1
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x ptr> %i.cf, ptr %i.ck, align 8, !tbaa !980, !alias.scope !2422, !noalias !2421
  store <2 x ptr> %i.cj, ptr %i.cl, align 8, !tbaa !980, !alias.scope !2422, !noalias !2421
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2410

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.m
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.o:                                             ; preds = %bb.d
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %bb.h, %bb.e, %bb.g, %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02951 = phi i64 [ %i.dc, %scalar.ph ], [ %.02951.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cr = getelementptr [16 x i8], ptr %i.au, i64 %.02951 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !980
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !771
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !980
  %i.cw = add nuw nsw i64 %.02951, 1              ; 3 uses
  %i.cx = getelementptr [16 x i8], ptr %i.au, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cw
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !980
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !771
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cw
  store ptr %i.da, ptr %i.db, align 8, !tbaa !980
  %i.dc = add nuw nsw i64 %.02951, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dc, %i.at
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !2411

bb.q:                                             ; preds = %._crit_edge
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.df = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.de)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 152
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !1155, !range !415, !noundef !416
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dl, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %i.at)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 936
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, ptr noundef nonnull align 8 dereferenceable(104) %i.an)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.do = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.ds = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 624
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 680
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.dq, ptr noundef nonnull align 8 dereferenceable(49) %i.dt, ptr noundef nonnull align 8 dereferenceable(488) %i.du, i64 noundef 0, i64 noundef %i.at)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.dv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.dx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.dz = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 680
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dx, ptr noundef nonnull align 8 dereferenceable(488) %i.ea, ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 noundef %i.at)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.eb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 728
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ec)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit: ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 760
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !977 ; 5 uses
  br i1 %.not57, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %xtraiter87 = and i64 %i.at, 3                  ; 3 uses
  %i.ef = icmp ult i64 %i.as, 4
  br i1 %i.ef, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter = and i64 %i.at, 4092
  br label %.lr.ph53

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %.lr.ph53
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.052.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %i.fq, %._crit_edge54.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter87, 0
end_hunk_0
begin_hunk_1_@_ZN6duckdb25SortedRunMergerLocalState29TemplatedMaterializePartitionILNS_11SortKeyTypeE6EEENS_10unique_ptrINS_9SortedRunESt14default_deleteIS4_ELb1EEERNS_26SortedRunMergerGlobalStateE:bb.a
  %i.gt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gs)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.gu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 624
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.gt, ptr noundef nonnull align 8 dereferenceable(49) %i.gv)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.ba, %bb.be
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.l, %common.resume.sink.split.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.cq, %bb.p ], [ %i.ag, %bb.l ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp86, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cp, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.n ], [ %.pn.pn.pn.pn, %bb.bg ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState29TemplatedMaterializePartitionILNS_11SortKeyTypeE7EEENS_10unique_ptrINS_9SortedRunESt14default_deleteIS4_ELb1EEERNS_26SortedRunMergerGlobalStateE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.331") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2436 {
bb.a:
  %3 = alloca %"struct.duckdb::TupleDataChunkState", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::TupleDataChunkState", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1201 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.e = getelementptr [24 x i8], ptr %i.b, i64 %i.d ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %3)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !977  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.i)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %4)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !977  ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1166, !nonnull !416, !align !428
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_9SortedRunESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.h unwind label %bb.p       ; 3 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !997, !noalias !2437, !nonnull !416, !align !428
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1060, !noalias !2437, !nonnull !416, !align !428
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  %i.w = invoke noalias noundef nonnull dereferenceable(1176) ptr @_Znwm(i64 noundef 1176) #28
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1168
  %i.y = load i8, ptr %i.x, align 8, !tbaa !552, !range !415, !noalias !2439, !noundef !416
  %i.z = trunc nuw i8 %i.y to i1
  invoke void @_ZN6duckdb9SortedRunC1ERNS_13ClientContextERKNS_4SortEb(ptr noundef nonnull align 8 dereferenceable(1170) %i.w, ptr noundef nonnull align 8 dereferenceable(512) %i.t, ptr noundef nonnull align 8 dereferenceable(129) %i.v, i1 noundef zeroext %i.z)
          to label %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i unwind label %bb.i, !noalias !2439

common.resume.sink.split.i:                       ; preds = %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i, %bb.i
  %.sink.i = phi ptr [ %i.ah, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i ], [ %i.w, %bb.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ag, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i ], [ %i.aa, %bb.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sink.i) #29
  br label %.body

bb.i:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i: ; preds = %.noexc
  store ptr %i.w, ptr %0, align 8, !tbaa !648, !alias.scope !2439
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store i8 2, ptr %i.ac, align 8, !tbaa !1062
  %i.ad = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 672
  store i8 2, ptr %i.ae, align 8, !tbaa !1063
  %i.af = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !648, !alias.scope !2437 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i: ; preds = %bb.l
  call void @_ZN6duckdb9SortedRunD1Ev(ptr noundef nonnull align 8 dead_on_return(1170) dereferenceable(1170) %i.ah) #30
  br label %common.resume.sink.split.i

_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit: ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1169
  store i8 1, ptr %i.ai, align 1, !tbaa !999
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !1196 ; 2 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.ao = mul i64 %i.d, 24
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph55, %bb.av
  %i.aq = phi i64 [ %i.al, %.lr.ph55 ], [ %i.gh, %bb.av ] ; 2 uses
  %i.ar = phi i64 [ %i.ak, %.lr.ph55 ], [ %i.gg, %bb.av ] ; 5 uses
  %i.as = sub nuw i64 %i.aq, %i.ar                ; 3 uses
  %i.at = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 2048) ; 15 uses
  %.not57 = icmp eq i64 %i.aq, %i.ar              ; 2 uses
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.au = getelementptr [24 x i8], ptr %i.e, i64 %i.ar ; 7 uses
  %min.iters.check = icmp ult i64 %i.as, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.02951.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 7 uses
  %i.av = sub nsw i64 %i.at, %.02951.ph
  %.neg = add nsw i64 %.02951.ph, 1
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aw = getelementptr [24 x i8], ptr %i.au, i64 %.02951.ph ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951.ph
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !980
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !771
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951.ph
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !980
  %i.bb = add nuw nsw i64 %.02951.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02951.unr = phi i64 [ %.02951.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.at, %.neg
  br i1 %i.bc, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bd = shl nuw nsw i64 %i.at, 3                ; 2 uses
  %i.be = getelementptr i8, ptr %i.h, i64 %i.bd   ; 2 uses
  %i.bf = getelementptr i8, ptr %i.m, i64 %i.bd   ; 2 uses
  %bound0 = icmp ult ptr %i.h, %i.bf
  %bound1 = icmp ult ptr %i.m, %i.be
  %found.conflict = and i1 %bound0, %bound1
  %i.bg = mul i64 %i.ar, 24
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bg ; 2 uses
  %5 = add i64 %i.ar, %i.at
  %6 = mul i64 %5, 24
  %7 = getelementptr i8, ptr %i.e, i64 %6         ; 2 uses
  %bound079 = icmp ult ptr %i.h, %7
  %bound180 = icmp ult ptr %i.bh, %i.be
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ult ptr %i.m, %7
  %bound183 = icmp ult ptr %i.bh, %i.bf
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bi = and i64 %i.at, 3                        ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = select i1 %i.bj, i64 4, i64 %i.bi
  %n.vec = sub nsw i64 %i.at, %i.bk               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.bl = getelementptr [24 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bm = getelementptr [24 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  %i.bo = insertelement <2 x ptr> poison, ptr %i.bl, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.bn, i64 1
  %i.bq = getelementptr [24 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 48
  %i.bs = getelementptr [24 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 72
  %i.bu = insertelement <2 x ptr> poison, ptr %i.br, i64 0
  %i.bv = insertelement <2 x ptr> %i.bu, ptr %i.bt, i64 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x ptr> %i.bp, ptr %i.bw, align 8, !tbaa !980, !alias.scope !2440, !noalias !2441
  store <2 x ptr> %i.bv, ptr %i.bx, align 8, !tbaa !980, !alias.scope !2440, !noalias !2441
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bz = getelementptr i8, ptr %i.bm, i64 40
  %i.ca = getelementptr i8, ptr %i.bq, i64 64
  %i.cb = getelementptr i8, ptr %i.bs, i64 88
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !771, !alias.scope !2442
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !771, !alias.scope !2442
  %i.ce = insertelement <2 x ptr> poison, ptr %i.cc, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.cd, i64 1
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !771, !alias.scope !2442
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !771, !alias.scope !2442
  %i.ci = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.cj = insertelement <2 x ptr> %i.ci, ptr %i.ch, i64 1
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x ptr> %i.cf, ptr %i.ck, align 8, !tbaa !980, !alias.scope !2443, !noalias !2442
  store <2 x ptr> %i.cj, ptr %i.cl, align 8, !tbaa !980, !alias.scope !2443, !noalias !2442
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2431

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.m
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.o:                                             ; preds = %bb.d
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %bb.h, %bb.e, %bb.g, %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02951 = phi i64 [ %i.dc, %scalar.ph ], [ %.02951.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cr = getelementptr [24 x i8], ptr %i.au, i64 %.02951 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !980
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !771
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !980
  %i.cw = add nuw nsw i64 %.02951, 1              ; 3 uses
  %i.cx = getelementptr [24 x i8], ptr %i.au, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cw
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !980
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !771
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cw
  store ptr %i.da, ptr %i.db, align 8, !tbaa !980
  %i.dc = add nuw nsw i64 %.02951, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dc, %i.at
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !2432

bb.q:                                             ; preds = %._crit_edge
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.df = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.de)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 152
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !1155, !range !415, !noundef !416
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dl, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %i.at)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 936
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, ptr noundef nonnull align 8 dereferenceable(104) %i.an)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.do = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.ds = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 624
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 680
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.dq, ptr noundef nonnull align 8 dereferenceable(49) %i.dt, ptr noundef nonnull align 8 dereferenceable(488) %i.du, i64 noundef 0, i64 noundef %i.at)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.dv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.dx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.dz = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 680
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dx, ptr noundef nonnull align 8 dereferenceable(488) %i.ea, ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 noundef %i.at)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.eb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 728
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ec)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit: ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 760
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !977 ; 5 uses
  br i1 %.not57, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %xtraiter87 = and i64 %i.at, 3                  ; 3 uses
  %i.ef = icmp ult i64 %i.as, 4
  br i1 %i.ef, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter = and i64 %i.at, 4092
  br label %.lr.ph53

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %.lr.ph53
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.052.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %i.fq, %._crit_edge54.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter87, 0
end_hunk_1
begin_hunk_2_@_ZN6duckdb25SortedRunMergerLocalState29TemplatedMaterializePartitionILNS_11SortKeyTypeE7EEENS_10unique_ptrINS_9SortedRunESt14default_deleteIS4_ELb1EEERNS_26SortedRunMergerGlobalStateE:bb.a
  %i.gt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gs)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.gu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 624
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.gt, ptr noundef nonnull align 8 dereferenceable(49) %i.gv)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.ba, %bb.be
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.l, %common.resume.sink.split.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.cq, %bb.p ], [ %i.ag, %bb.l ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp86, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cp, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.n ], [ %.pn.pn.pn.pn, %bb.bg ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState29TemplatedMaterializePartitionILNS_11SortKeyTypeE8EEENS_10unique_ptrINS_9SortedRunESt14default_deleteIS4_ELb1EEERNS_26SortedRunMergerGlobalStateE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.331") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !2457 {
bb.a:
  %3 = alloca %"struct.duckdb::TupleDataChunkState", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::TupleDataChunkState", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1201 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.e = getelementptr [32 x i8], ptr %i.b, i64 %i.d ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %3)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !977  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.i)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %4)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !977  ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1166, !nonnull !416, !align !428
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_9SortedRunESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.h unwind label %bb.p       ; 3 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !997, !noalias !2458, !nonnull !416, !align !428
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1060, !noalias !2458, !nonnull !416, !align !428
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.w = invoke noalias noundef nonnull dereferenceable(1176) ptr @_Znwm(i64 noundef 1176) #28
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1168
  %i.y = load i8, ptr %i.x, align 8, !tbaa !552, !range !415, !noalias !2460, !noundef !416
  %i.z = trunc nuw i8 %i.y to i1
  invoke void @_ZN6duckdb9SortedRunC1ERNS_13ClientContextERKNS_4SortEb(ptr noundef nonnull align 8 dereferenceable(1170) %i.w, ptr noundef nonnull align 8 dereferenceable(512) %i.t, ptr noundef nonnull align 8 dereferenceable(129) %i.v, i1 noundef zeroext %i.z)
          to label %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i unwind label %bb.i, !noalias !2460

common.resume.sink.split.i:                       ; preds = %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i, %bb.i
  %.sink.i = phi ptr [ %i.ah, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i ], [ %i.w, %bb.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ag, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i ], [ %i.aa, %bb.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sink.i) #29
  br label %.body

bb.i:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i: ; preds = %.noexc
  store ptr %i.w, ptr %0, align 8, !tbaa !648, !alias.scope !2460
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store i8 2, ptr %i.ac, align 8, !tbaa !1062
  %i.ad = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 672
  store i8 2, ptr %i.ae, align 8, !tbaa !1063
  %i.af = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZN6duckdb9make_uniqINS_9SortedRunEJRNS_13ClientContextERKNS_4SortERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !648, !alias.scope !2458 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i.i: ; preds = %bb.l
  call void @_ZN6duckdb9SortedRunD1Ev(ptr noundef nonnull align 8 dead_on_return(1170) dereferenceable(1170) %i.ah) #30
  br label %common.resume.sink.split.i

_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit: ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1169
  store i8 1, ptr %i.ai, align 1, !tbaa !999
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !1196 ; 2 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.ao = shl i64 %i.d, 5
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph55, %bb.av
  %i.aq = phi i64 [ %i.al, %.lr.ph55 ], [ %i.gh, %bb.av ] ; 2 uses
  %i.ar = phi i64 [ %i.ak, %.lr.ph55 ], [ %i.gg, %bb.av ] ; 5 uses
  %i.as = sub nuw i64 %i.aq, %i.ar                ; 3 uses
  %i.at = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 2048) ; 15 uses
  %.not57 = icmp eq i64 %i.aq, %i.ar              ; 2 uses
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.au = getelementptr [32 x i8], ptr %i.e, i64 %i.ar ; 7 uses
  %min.iters.check = icmp ult i64 %i.as, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.02951.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 7 uses
  %i.av = sub nsw i64 %i.at, %.02951.ph
  %.neg = add nsw i64 %.02951.ph, 1
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aw = getelementptr [32 x i8], ptr %i.au, i64 %.02951.ph ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951.ph
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !980
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !771
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951.ph
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !980
  %i.bb = add nuw nsw i64 %.02951.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02951.unr = phi i64 [ %.02951.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.at, %.neg
  br i1 %i.bc, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bd = shl nuw nsw i64 %i.at, 3                ; 2 uses
  %i.be = getelementptr i8, ptr %i.h, i64 %i.bd   ; 2 uses
  %i.bf = getelementptr i8, ptr %i.m, i64 %i.bd   ; 2 uses
  %bound0 = icmp ult ptr %i.h, %i.bf
  %bound1 = icmp ult ptr %i.m, %i.be
  %found.conflict = and i1 %bound0, %bound1
  %i.bg = shl i64 %i.ar, 5
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bg ; 2 uses
  %5 = add i64 %i.ar, %i.at
  %6 = shl i64 %5, 5
  %7 = getelementptr i8, ptr %i.e, i64 %6         ; 2 uses
  %bound079 = icmp ult ptr %i.h, %7
  %bound180 = icmp ult ptr %i.bh, %i.be
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ult ptr %i.m, %7
  %bound183 = icmp ult ptr %i.bh, %i.bf
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bi = and i64 %i.at, 3                        ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = select i1 %i.bj, i64 4, i64 %i.bi
  %n.vec = sub nsw i64 %i.at, %i.bk               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.bl = getelementptr [32 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bm = getelementptr [32 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  %i.bo = insertelement <2 x ptr> poison, ptr %i.bl, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.bn, i64 1
  %i.bq = getelementptr [32 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 64
  %i.bs = getelementptr [32 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 96
  %i.bu = insertelement <2 x ptr> poison, ptr %i.br, i64 0
  %i.bv = insertelement <2 x ptr> %i.bu, ptr %i.bt, i64 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x ptr> %i.bp, ptr %i.bw, align 8, !tbaa !980, !alias.scope !2461, !noalias !2462
  store <2 x ptr> %i.bv, ptr %i.bx, align 8, !tbaa !980, !alias.scope !2461, !noalias !2462
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bz = getelementptr i8, ptr %i.bm, i64 56
  %i.ca = getelementptr i8, ptr %i.bq, i64 88
  %i.cb = getelementptr i8, ptr %i.bs, i64 120
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !771, !alias.scope !2463
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !771, !alias.scope !2463
  %i.ce = insertelement <2 x ptr> poison, ptr %i.cc, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.cd, i64 1
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !771, !alias.scope !2463
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !771, !alias.scope !2463
  %i.ci = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.cj = insertelement <2 x ptr> %i.ci, ptr %i.ch, i64 1
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x ptr> %i.cf, ptr %i.ck, align 8, !tbaa !980, !alias.scope !2464, !noalias !2463
  store <2 x ptr> %i.cj, ptr %i.cl, align 8, !tbaa !980, !alias.scope !2464, !noalias !2463
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2452

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.m
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.o:                                             ; preds = %bb.d
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %bb.h, %bb.e, %bb.g, %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02951 = phi i64 [ %i.dc, %scalar.ph ], [ %.02951.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cr = getelementptr [32 x i8], ptr %i.au, i64 %.02951 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !980
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !771
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !980
  %i.cw = add nuw nsw i64 %.02951, 1              ; 3 uses
  %i.cx = getelementptr [32 x i8], ptr %i.au, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cw
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !980
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !771
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cw
  store ptr %i.da, ptr %i.db, align 8, !tbaa !980
  %i.dc = add nuw nsw i64 %.02951, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dc, %i.at
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !2453

bb.q:                                             ; preds = %._crit_edge
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.df = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.de)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 152
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !1155, !range !415, !noundef !416
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dl, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %i.at)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 936
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, ptr noundef nonnull align 8 dereferenceable(104) %i.an)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.do = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.ds = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 624
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 680
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.dq, ptr noundef nonnull align 8 dereferenceable(49) %i.dt, ptr noundef nonnull align 8 dereferenceable(488) %i.du, i64 noundef 0, i64 noundef %i.at)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.dv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.dx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.dz = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 680
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dx, ptr noundef nonnull align 8 dereferenceable(488) %i.ea, ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 noundef %i.at)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.eb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 728
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ec)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit: ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 760
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !977 ; 5 uses
  br i1 %.not57, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %xtraiter87 = and i64 %i.at, 3                  ; 3 uses
  %i.ef = icmp ult i64 %i.as, 4
  br i1 %i.ef, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter = and i64 %i.at, 4092
  br label %.lr.ph53

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %.lr.ph53
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.052.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %i.fq, %._crit_edge54.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter87, 0
end_hunk_2
