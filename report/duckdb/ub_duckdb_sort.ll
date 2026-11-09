Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_sort?download=true
inline.NumInlined: 29524
inline.NumDeleted: 7047
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 234
begin_hunk_0_@_ZN6duckdb25SortedRunMergerLocalState29TemplatedMaterializePartitionILNS_11SortKeyTypeE5EEENS_10unique_ptrINS_9SortedRunESt14default_deleteIS4_ELb1EEERNS_26SortedRunMergerGlobalStateE:bb.a

._crit_edge41:                                    ; preds = %bb.aa, %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit
  %i.cw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %._crit_edge41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.cy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.cz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.cy, ptr noundef nonnull align 8 dereferenceable(49) %i.da)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.db = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !906
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.dh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 624
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.dg, ptr noundef nonnull align 8 dereferenceable(49) %i.di)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1201 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.d ; 6 uses
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
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph55, %bb.av
  %i.ao = phi i64 [ %i.al, %.lr.ph55 ], [ %i.gg, %bb.av ] ; 2 uses
  %i.ap = phi i64 [ %i.ak, %.lr.ph55 ], [ %i.gf, %bb.av ] ; 4 uses
  %i.aq = sub nuw i64 %i.ao, %i.ap                ; 3 uses
  %i.ar = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 2048) ; 15 uses
  %.not57 = icmp eq i64 %i.ao, %i.ap              ; 2 uses
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.as = getelementptr [16 x i8], ptr %i.e, i64 %i.ap ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.02951.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 7 uses
  %i.at = sub nsw i64 %i.ar, %.02951.ph
  %.neg = add nsw i64 %.02951.ph, 1
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.au = getelementptr [16 x i8], ptr %i.as, i64 %.02951.ph ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951.ph
  store ptr %i.au, ptr %i.av, align 8, !tbaa !980
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !771
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951.ph
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !980
  %i.az = add nuw nsw i64 %.02951.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02951.unr = phi i64 [ %.02951.ph, %scalar.ph.preheader ], [ %i.az, %scalar.ph.prol ]
  %i.ba = icmp eq i64 %i.ar, %.neg
  br i1 %i.ba, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bb = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  %i.bc = getelementptr i8, ptr %i.h, i64 %i.bb   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.m, i64 %i.bb   ; 2 uses
  %5 = add i64 %i.ap, %i.d                        ; 2 uses
  %i.be = shl i64 %5, 4
  %6 = getelementptr i8, ptr %i.b, i64 %i.be
  %i.bf = getelementptr i8, ptr %6, i64 8         ; 2 uses
  %7 = add i64 %5, %i.ar
  %8 = shl i64 %7, 4
  %i.bg = getelementptr i8, ptr %i.b, i64 %8      ; 2 uses
  %bound0 = icmp ult ptr %i.h, %i.bd
  %bound1 = icmp ult ptr %i.m, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  %bound079 = icmp ult ptr %i.h, %i.bg
  %bound180 = icmp ult ptr %i.bf, %i.bc
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ult ptr %i.m, %i.bg
  %bound183 = icmp ult ptr %i.bf, %i.bd
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bh = and i64 %i.ar, 3                        ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = select i1 %i.bi, i64 4, i64 %i.bh
  %n.vec = sub nsw i64 %i.ar, %i.bj               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.bk = getelementptr [16 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bl = getelementptr [16 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = insertelement <2 x ptr> poison, ptr %i.bk, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %i.bm, i64 1
  %i.bp = getelementptr [16 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 32
  %i.br = getelementptr [16 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 48
  %i.bt = insertelement <2 x ptr> poison, ptr %i.bq, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %i.bs, i64 1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x ptr> %i.bo, ptr %i.bv, align 8, !tbaa !980, !alias.scope !2419, !noalias !2420
  store <2 x ptr> %i.bu, ptr %i.bw, align 8, !tbaa !980, !alias.scope !2419, !noalias !2420
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.by = getelementptr i8, ptr %i.bl, i64 24
  %i.bz = getelementptr i8, ptr %i.bp, i64 40
  %i.ca = getelementptr i8, ptr %i.br, i64 56
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !771, !alias.scope !2421
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !771, !alias.scope !2421
  %i.cd = insertelement <2 x ptr> poison, ptr %i.cb, i64 0
  %i.ce = insertelement <2 x ptr> %i.cd, ptr %i.cc, i64 1
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !771, !alias.scope !2421
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !771, !alias.scope !2421
  %i.ch = insertelement <2 x ptr> poison, ptr %i.cf, i64 0
  %i.ci = insertelement <2 x ptr> %i.ch, ptr %i.cg, i64 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x ptr> %i.ce, ptr %i.cj, align 8, !tbaa !980, !alias.scope !2422, !noalias !2421
  store <2 x ptr> %i.ci, ptr %i.ck, align 8, !tbaa !980, !alias.scope !2422, !noalias !2421
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2410

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.m
  %i.cm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.o:                                             ; preds = %bb.d
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %bb.h, %bb.e, %bb.g, %bb.f
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02951 = phi i64 [ %i.db, %scalar.ph ], [ %.02951.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cq = getelementptr [16 x i8], ptr %i.as, i64 %.02951 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !980
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !771
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !980
  %i.cv = add nuw nsw i64 %.02951, 1              ; 3 uses
  %i.cw = getelementptr [16 x i8], ptr %i.as, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cv
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !980
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !771
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cv
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !980
  %i.db = add nuw nsw i64 %.02951, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.db, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !2411

bb.q:                                             ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.de = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.dd)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !1155, !range !415, !noundef !416
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %i.dk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dk, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %i.ar)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 936
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.dm, ptr noundef nonnull align 8 dereferenceable(104) %i.an)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.dn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 624
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 680
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.dp, ptr noundef nonnull align 8 dereferenceable(49) %i.ds, ptr noundef nonnull align 8 dereferenceable(488) %i.dt, i64 noundef 0, i64 noundef %i.ar)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.du = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.dy = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 680
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dw, ptr noundef nonnull align 8 dereferenceable(488) %i.dz, ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 noundef %i.ar)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.ea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 728
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.eb)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit: ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 760
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !977 ; 5 uses
  br i1 %.not57, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %xtraiter87 = and i64 %i.ar, 3                  ; 3 uses
  %i.ee = icmp ult i64 %i.aq, 4
  br i1 %i.ee, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter = and i64 %i.ar, 4092
  br label %.lr.ph53

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %.lr.ph53
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.052.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %i.fp, %._crit_edge54.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter87, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph53.epil

.lr.ph53.epil:                                    ; preds = %.lr.ph53.epil, %.lr.ph53.epil.preheader
  %.052.epil = phi i64 [ %i.el, %.lr.ph53.epil ], [ %.052.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph53.epil ], [ 0, %.lr.ph53.epil.preheader ]
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.eg = getelementptr [16 x i8], ptr %i.e, i64 %i.ef
  %i.eh = getelementptr [16 x i8], ptr %i.eg, i64 %.052.epil
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.052.epil
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !980
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !771
  %i.el = add nuw nsw i64 %.052.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter87
  br i1 %epil.iter.cmp.not, label %._crit_edge54, label %.lr.ph53.epil, !llvm.loop !2412

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.epil, %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %i.em = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %._crit_edge, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %._crit_edge54, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.ai, %._crit_edge56, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !648   ; 3 uses
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN6duckdb9SortedRunD1Ev(ptr noundef nonnull align 8 dead_on_return(1170) dereferenceable(1170) %i.en) #30
  call void @_ZdlPv(ptr noundef nonnull %i.en) #29
  br label %.body

.lr.ph53:                                         ; preds = %.lr.ph53, %.lr.ph53.preheader.new
  %.052 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %i.fp, %.lr.ph53 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter.next.3, %.lr.ph53 ]
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.ep = getelementptr [16 x i8], ptr %i.e, i64 %i.eo
  %i.eq = getelementptr [16 x i8], ptr %i.ep, i64 %.052
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.052
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !980
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.es, ptr %i.et, align 8, !tbaa !771
  %i.eu = or disjoint i64 %.052, 1                ; 2 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.ew = getelementptr [16 x i8], ptr %i.e, i64 %i.ev
  %i.ex = getelementptr [16 x i8], ptr %i.ew, i64 %i.eu
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eu
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !980
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !771
  %i.fb = or disjoint i64 %.052, 2                ; 2 uses
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.fd = getelementptr [16 x i8], ptr %i.e, i64 %i.fc
  %i.fe = getelementptr [16 x i8], ptr %i.fd, i64 %i.fb
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fb
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !980
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !771
  %i.fi = or disjoint i64 %.052, 3                ; 2 uses
  %i.fj = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.fk = getelementptr [16 x i8], ptr %i.e, i64 %i.fj
  %i.fl = getelementptr [16 x i8], ptr %i.fk, i64 %i.fi
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fi
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !980
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !771
  %i.fp = add nuw nsw i64 %.052, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge54.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !2413

bb.ak:                                            ; preds = %._crit_edge54
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 392
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.fq, ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.fr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.ft = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.fu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.fv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 136
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.ft, ptr noundef nonnull align 8 dereferenceable(49) %i.fw, ptr noundef nonnull align 8 dereferenceable(488) %i.fx, i64 noundef 0, i64 noundef %i.ar)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.fy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.ga = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.gb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.gc = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 136
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.ga, ptr noundef nonnull align 8 dereferenceable(488) %i.gd, ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 noundef %i.ar)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  %i.ge = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.gf = add i64 %i.ge, %i.ar                    ; 3 uses
  store i64 %i.gf, ptr %i.c, align 8, !tbaa !1200
  %i.gg = load i64, ptr %i.aj, align 8, !tbaa !1196 ; 2 uses
  %i.gh = icmp ult i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.m, label %._crit_edge56, !llvm.loop !2414

._crit_edge56:                                    ; preds = %bb.av, %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit
  %i.gi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %._crit_edge56
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.gl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.gk, ptr noundef nonnull align 8 dereferenceable(49) %i.gm)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.gn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !906
  %.not = icmp eq ptr %i.gp, null
  br i1 %.not, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 72
  %i.gs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.gt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 624
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.gs, ptr noundef nonnull align 8 dereferenceable(49) %i.gu)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.ba, %bb.be
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.l, %common.resume.sink.split.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.cp, %bb.p ], [ %i.ag, %bb.l ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp86, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.co, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.n ], [ %.pn.pn.pn.pn, %bb.bg ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1201 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d ; 6 uses
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
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph55, %bb.av
  %i.ao = phi i64 [ %i.al, %.lr.ph55 ], [ %i.gg, %bb.av ] ; 2 uses
  %i.ap = phi i64 [ %i.ak, %.lr.ph55 ], [ %i.gf, %bb.av ] ; 4 uses
  %i.aq = sub nuw i64 %i.ao, %i.ap                ; 3 uses
  %i.ar = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 2048) ; 15 uses
  %.not57 = icmp eq i64 %i.ao, %i.ap              ; 2 uses
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.as = getelementptr [24 x i8], ptr %i.e, i64 %i.ap ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.02951.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 7 uses
  %i.at = sub nsw i64 %i.ar, %.02951.ph
  %.neg = add nsw i64 %.02951.ph, 1
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.au = getelementptr [24 x i8], ptr %i.as, i64 %.02951.ph ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951.ph
  store ptr %i.au, ptr %i.av, align 8, !tbaa !980
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !771
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951.ph
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !980
  %i.az = add nuw nsw i64 %.02951.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02951.unr = phi i64 [ %.02951.ph, %scalar.ph.preheader ], [ %i.az, %scalar.ph.prol ]
  %i.ba = icmp eq i64 %i.ar, %.neg
  br i1 %i.ba, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bb = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  %i.bc = getelementptr i8, ptr %i.h, i64 %i.bb   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.m, i64 %i.bb   ; 2 uses
  %5 = add i64 %i.ap, %i.d                        ; 2 uses
  %i.be = mul i64 %5, 24
  %6 = getelementptr i8, ptr %i.b, i64 %i.be
  %i.bf = getelementptr i8, ptr %6, i64 16        ; 2 uses
  %7 = add i64 %5, %i.ar
  %8 = mul i64 %7, 24
  %i.bg = getelementptr i8, ptr %i.b, i64 %8      ; 2 uses
  %bound0 = icmp ult ptr %i.h, %i.bd
  %bound1 = icmp ult ptr %i.m, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  %bound079 = icmp ult ptr %i.h, %i.bg
  %bound180 = icmp ult ptr %i.bf, %i.bc
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ult ptr %i.m, %i.bg
  %bound183 = icmp ult ptr %i.bf, %i.bd
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bh = and i64 %i.ar, 3                        ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = select i1 %i.bi, i64 4, i64 %i.bh
  %n.vec = sub nsw i64 %i.ar, %i.bj               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.bk = getelementptr [24 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bl = getelementptr [24 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  %i.bn = insertelement <2 x ptr> poison, ptr %i.bk, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %i.bm, i64 1
  %i.bp = getelementptr [24 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 48
  %i.br = getelementptr [24 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 72
  %i.bt = insertelement <2 x ptr> poison, ptr %i.bq, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %i.bs, i64 1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x ptr> %i.bo, ptr %i.bv, align 8, !tbaa !980, !alias.scope !2440, !noalias !2441
  store <2 x ptr> %i.bu, ptr %i.bw, align 8, !tbaa !980, !alias.scope !2440, !noalias !2441
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.by = getelementptr i8, ptr %i.bl, i64 40
  %i.bz = getelementptr i8, ptr %i.bp, i64 64
  %i.ca = getelementptr i8, ptr %i.br, i64 88
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !771, !alias.scope !2442
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !771, !alias.scope !2442
  %i.cd = insertelement <2 x ptr> poison, ptr %i.cb, i64 0
  %i.ce = insertelement <2 x ptr> %i.cd, ptr %i.cc, i64 1
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !771, !alias.scope !2442
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !771, !alias.scope !2442
  %i.ch = insertelement <2 x ptr> poison, ptr %i.cf, i64 0
  %i.ci = insertelement <2 x ptr> %i.ch, ptr %i.cg, i64 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x ptr> %i.ce, ptr %i.cj, align 8, !tbaa !980, !alias.scope !2443, !noalias !2442
  store <2 x ptr> %i.ci, ptr %i.ck, align 8, !tbaa !980, !alias.scope !2443, !noalias !2442
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2431

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.m
  %i.cm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.o:                                             ; preds = %bb.d
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %bb.h, %bb.e, %bb.g, %bb.f
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02951 = phi i64 [ %i.db, %scalar.ph ], [ %.02951.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cq = getelementptr [24 x i8], ptr %i.as, i64 %.02951 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !980
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !771
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !980
  %i.cv = add nuw nsw i64 %.02951, 1              ; 3 uses
  %i.cw = getelementptr [24 x i8], ptr %i.as, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cv
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !980
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !771
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cv
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !980
  %i.db = add nuw nsw i64 %.02951, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.db, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !2432

bb.q:                                             ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.de = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.dd)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !1155, !range !415, !noundef !416
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %i.dk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dk, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %i.ar)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 936
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.dm, ptr noundef nonnull align 8 dereferenceable(104) %i.an)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.dn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 624
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 680
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.dp, ptr noundef nonnull align 8 dereferenceable(49) %i.ds, ptr noundef nonnull align 8 dereferenceable(488) %i.dt, i64 noundef 0, i64 noundef %i.ar)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.du = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.dy = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 680
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dw, ptr noundef nonnull align 8 dereferenceable(488) %i.dz, ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 noundef %i.ar)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.ea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 728
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.eb)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit: ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 760
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !977 ; 5 uses
  br i1 %.not57, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %xtraiter87 = and i64 %i.ar, 3                  ; 3 uses
  %i.ee = icmp ult i64 %i.aq, 4
  br i1 %i.ee, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter = and i64 %i.ar, 4092
  br label %.lr.ph53

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %.lr.ph53
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.052.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %i.fp, %._crit_edge54.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter87, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph53.epil

.lr.ph53.epil:                                    ; preds = %.lr.ph53.epil, %.lr.ph53.epil.preheader
  %.052.epil = phi i64 [ %i.el, %.lr.ph53.epil ], [ %.052.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph53.epil ], [ 0, %.lr.ph53.epil.preheader ]
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.eg = getelementptr [24 x i8], ptr %i.e, i64 %i.ef
  %i.eh = getelementptr [24 x i8], ptr %i.eg, i64 %.052.epil
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.052.epil
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !980
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !771
  %i.el = add nuw nsw i64 %.052.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter87
  br i1 %epil.iter.cmp.not, label %._crit_edge54, label %.lr.ph53.epil, !llvm.loop !2433

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.epil, %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %i.em = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %._crit_edge, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %._crit_edge54, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.ai, %._crit_edge56, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !648   ; 3 uses
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN6duckdb9SortedRunD1Ev(ptr noundef nonnull align 8 dead_on_return(1170) dereferenceable(1170) %i.en) #30
  call void @_ZdlPv(ptr noundef nonnull %i.en) #29
  br label %.body

.lr.ph53:                                         ; preds = %.lr.ph53, %.lr.ph53.preheader.new
  %.052 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %i.fp, %.lr.ph53 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter.next.3, %.lr.ph53 ]
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.ep = getelementptr [24 x i8], ptr %i.e, i64 %i.eo
  %i.eq = getelementptr [24 x i8], ptr %i.ep, i64 %.052
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.052
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !980
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %i.es, ptr %i.et, align 8, !tbaa !771
  %i.eu = or disjoint i64 %.052, 1                ; 2 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.ew = getelementptr [24 x i8], ptr %i.e, i64 %i.ev
  %i.ex = getelementptr [24 x i8], ptr %i.ew, i64 %i.eu
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eu
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !980
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !771
  %i.fb = or disjoint i64 %.052, 2                ; 2 uses
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.fd = getelementptr [24 x i8], ptr %i.e, i64 %i.fc
  %i.fe = getelementptr [24 x i8], ptr %i.fd, i64 %i.fb
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fb
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !980
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !771
  %i.fi = or disjoint i64 %.052, 3                ; 2 uses
  %i.fj = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.fk = getelementptr [24 x i8], ptr %i.e, i64 %i.fj
  %i.fl = getelementptr [24 x i8], ptr %i.fk, i64 %i.fi
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fi
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !980
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !771
  %i.fp = add nuw nsw i64 %.052, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge54.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !2434

bb.ak:                                            ; preds = %._crit_edge54
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 392
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.fq, ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.fr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.ft = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.fu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.fv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 136
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.ft, ptr noundef nonnull align 8 dereferenceable(49) %i.fw, ptr noundef nonnull align 8 dereferenceable(488) %i.fx, i64 noundef 0, i64 noundef %i.ar)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.fy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.ga = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.gb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.gc = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 136
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.ga, ptr noundef nonnull align 8 dereferenceable(488) %i.gd, ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 noundef %i.ar)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  %i.ge = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.gf = add i64 %i.ge, %i.ar                    ; 3 uses
  store i64 %i.gf, ptr %i.c, align 8, !tbaa !1200
  %i.gg = load i64, ptr %i.aj, align 8, !tbaa !1196 ; 2 uses
  %i.gh = icmp ult i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.m, label %._crit_edge56, !llvm.loop !2435

._crit_edge56:                                    ; preds = %bb.av, %_ZNK6duckdb9SortedRun27CreateRunForMaterializationEv.exit
  %i.gi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %._crit_edge56
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.gl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.gk, ptr noundef nonnull align 8 dereferenceable(49) %i.gm)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.gn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !906
  %.not = icmp eq ptr %i.gp, null
  br i1 %.not, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 72
  %i.gs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.gt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 624
  invoke void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateE(ptr noundef nonnull align 8 dereferenceable(192) %i.gs, ptr noundef nonnull align 8 dereferenceable(49) %i.gu)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.ba, %bb.be
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.l, %common.resume.sink.split.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.cp, %bb.p ], [ %i.ag, %bb.l ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp86, %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i ]
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #30
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.co, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.n ], [ %.pn.pn.pn.pn, %bb.bg ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1201 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.d ; 6 uses
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
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph55, %bb.av
  %i.ao = phi i64 [ %i.al, %.lr.ph55 ], [ %i.gg, %bb.av ] ; 2 uses
  %i.ap = phi i64 [ %i.ak, %.lr.ph55 ], [ %i.gf, %bb.av ] ; 4 uses
  %i.aq = sub nuw i64 %i.ao, %i.ap                ; 3 uses
  %i.ar = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 2048) ; 15 uses
  %.not57 = icmp eq i64 %i.ao, %i.ap              ; 2 uses
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.as = getelementptr [32 x i8], ptr %i.e, i64 %i.ap ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.02951.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 7 uses
  %i.at = sub nsw i64 %i.ar, %.02951.ph
  %.neg = add nsw i64 %.02951.ph, 1
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.au = getelementptr [32 x i8], ptr %i.as, i64 %.02951.ph ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951.ph
  store ptr %i.au, ptr %i.av, align 8, !tbaa !980
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !771
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951.ph
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !980
  %i.az = add nuw nsw i64 %.02951.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02951.unr = phi i64 [ %.02951.ph, %scalar.ph.preheader ], [ %i.az, %scalar.ph.prol ]
  %i.ba = icmp eq i64 %i.ar, %.neg
  br i1 %i.ba, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bb = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  %i.bc = getelementptr i8, ptr %i.h, i64 %i.bb   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.m, i64 %i.bb   ; 2 uses
  %5 = add i64 %i.ap, %i.d                        ; 2 uses
  %i.be = shl i64 %5, 5
  %6 = getelementptr i8, ptr %i.b, i64 %i.be
  %i.bf = getelementptr i8, ptr %6, i64 24        ; 2 uses
  %7 = add i64 %5, %i.ar
  %8 = shl i64 %7, 5
  %i.bg = getelementptr i8, ptr %i.b, i64 %8      ; 2 uses
  %bound0 = icmp ult ptr %i.h, %i.bd
  %bound1 = icmp ult ptr %i.m, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  %bound079 = icmp ult ptr %i.h, %i.bg
  %bound180 = icmp ult ptr %i.bf, %i.bc
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ult ptr %i.m, %i.bg
  %bound183 = icmp ult ptr %i.bf, %i.bd
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bh = and i64 %i.ar, 3                        ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = select i1 %i.bi, i64 4, i64 %i.bh
  %n.vec = sub nsw i64 %i.ar, %i.bj               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.bk = getelementptr [32 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bl = getelementptr [32 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 32
  %i.bn = insertelement <2 x ptr> poison, ptr %i.bk, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %i.bm, i64 1
  %i.bp = getelementptr [32 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 64
  %i.br = getelementptr [32 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = insertelement <2 x ptr> poison, ptr %i.bq, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %i.bs, i64 1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x ptr> %i.bo, ptr %i.bv, align 8, !tbaa !980, !alias.scope !2461, !noalias !2462
  store <2 x ptr> %i.bu, ptr %i.bw, align 8, !tbaa !980, !alias.scope !2461, !noalias !2462
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.by = getelementptr i8, ptr %i.bl, i64 56
  %i.bz = getelementptr i8, ptr %i.bp, i64 88
  %i.ca = getelementptr i8, ptr %i.br, i64 120
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !771, !alias.scope !2463
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !771, !alias.scope !2463
  %i.cd = insertelement <2 x ptr> poison, ptr %i.cb, i64 0
  %i.ce = insertelement <2 x ptr> %i.cd, ptr %i.cc, i64 1
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !771, !alias.scope !2463
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !771, !alias.scope !2463
  %i.ch = insertelement <2 x ptr> poison, ptr %i.cf, i64 0
  %i.ci = insertelement <2 x ptr> %i.ch, ptr %i.cg, i64 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x ptr> %i.ce, ptr %i.cj, align 8, !tbaa !980, !alias.scope !2464, !noalias !2463
  store <2 x ptr> %i.ci, ptr %i.ck, align 8, !tbaa !980, !alias.scope !2464, !noalias !2463
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2452

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.m
  %i.cm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.o:                                             ; preds = %bb.d
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %bb.h, %bb.e, %bb.g, %bb.f
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02951 = phi i64 [ %i.db, %scalar.ph ], [ %.02951.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cq = getelementptr [32 x i8], ptr %i.as, i64 %.02951 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.02951
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !980
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !771
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02951
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !980
  %i.cv = add nuw nsw i64 %.02951, 1              ; 3 uses
  %i.cw = getelementptr [32 x i8], ptr %i.as, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cv
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !980
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !771
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cv
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !980
  %i.db = add nuw nsw i64 %.02951, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.db, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !2453

bb.q:                                             ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.de = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.dd)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !1155, !range !415, !noundef !416
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %i.dk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK6duckdb19TupleDataCollection16FindHeapPointersERNS_19TupleDataChunkStateEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dk, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %i.ar)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 936
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.dm, ptr noundef nonnull align 8 dereferenceable(104) %i.an)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.dn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.dr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 624
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 680
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.dp, ptr noundef nonnull align 8 dereferenceable(49) %i.ds, ptr noundef nonnull align 8 dereferenceable(488) %i.dt, i64 noundef 0, i64 noundef %i.ar)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.du = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.dy = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 680
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.dw, ptr noundef nonnull align 8 dereferenceable(488) %i.dz, ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 noundef %i.ar)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.ea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 728
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.eb)
          to label %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit: ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 760
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !977 ; 5 uses
  br i1 %.not57, label %._crit_edge54, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %xtraiter87 = and i64 %i.ar, 3                  ; 3 uses
  %i.ee = icmp ult i64 %i.aq, 4
  br i1 %i.ee, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter = and i64 %i.ar, 4092
  br label %.lr.ph53

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %.lr.ph53
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.052.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %i.fp, %._crit_edge54.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter87, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph53.epil

.lr.ph53.epil:                                    ; preds = %.lr.ph53.epil, %.lr.ph53.epil.preheader
  %.052.epil = phi i64 [ %i.el, %.lr.ph53.epil ], [ %.052.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph53.epil ], [ 0, %.lr.ph53.epil.preheader ]
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.eg = getelementptr [32 x i8], ptr %i.e, i64 %i.ef
  %i.eh = getelementptr [32 x i8], ptr %i.eg, i64 %.052.epil
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.052.epil
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !980
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !771
  %i.el = add nuw nsw i64 %.052.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter87
  br i1 %epil.iter.cmp.not, label %._crit_edge54, label %.lr.ph53.epil, !llvm.loop !2454

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.epil, %_ZN6duckdb10FlatVector7GetDataIKPhEEPT_RNS_6VectorE.exit
  %i.em = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %._crit_edge, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %._crit_edge54, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.ai, %._crit_edge56, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !648   ; 3 uses
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9SortedRunEEclEPS1_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN6duckdb9SortedRunD1Ev(ptr noundef nonnull align 8 dead_on_return(1170) dereferenceable(1170) %i.en) #30
  call void @_ZdlPv(ptr noundef nonnull %i.en) #29
  br label %.body

.lr.ph53:                                         ; preds = %.lr.ph53, %.lr.ph53.preheader.new
  %.052 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %i.fp, %.lr.ph53 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter.next.3, %.lr.ph53 ]
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.ep = getelementptr [32 x i8], ptr %i.e, i64 %i.eo
  %i.eq = getelementptr [32 x i8], ptr %i.ep, i64 %.052
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.052
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !980
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store ptr %i.es, ptr %i.et, align 8, !tbaa !771
  %i.eu = or disjoint i64 %.052, 1                ; 2 uses
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.ew = getelementptr [32 x i8], ptr %i.e, i64 %i.ev
  %i.ex = getelementptr [32 x i8], ptr %i.ew, i64 %i.eu
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eu
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !980
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !771
  %i.fb = or disjoint i64 %.052, 2                ; 2 uses
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.fd = getelementptr [32 x i8], ptr %i.e, i64 %i.fc
  %i.fe = getelementptr [32 x i8], ptr %i.fd, i64 %i.fb
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fb
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !980
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !771
  %i.fi = or disjoint i64 %.052, 3                ; 2 uses
  %i.fj = load i64, ptr %i.c, align 8, !tbaa !1200
  %i.fk = getelementptr [32 x i8], ptr %i.e, i64 %i.fj
  %i.fl = getelementptr [32 x i8], ptr %i.fk, i64 %i.fi
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.fi
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !980
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !771
  %i.fp = add nuw nsw i64 %.052, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge54.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !2455

bb.ak:                                            ; preds = %._crit_edge54
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 392
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.fq, ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.fr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.ft = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.fu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.fv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 136
  invoke void @_ZN6duckdb19TupleDataCollection5BuildERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm(ptr noundef nonnull align 8 dereferenceable(192) %i.ft, ptr noundef nonnull align 8 dereferenceable(49) %i.fw, ptr noundef nonnull align 8 dereferenceable(488) %i.fx, i64 noundef 0, i64 noundef %i.ar)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.fy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.ga = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.gb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.gc = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 136
  invoke void @_ZNK6duckdb19TupleDataCollection8CopyRowsERNS_19TupleDataChunkStateES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(192) %i.ga, ptr noundef nonnull align 8 dereferenceable(488) %i.gd, ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 noundef %i.ar)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
