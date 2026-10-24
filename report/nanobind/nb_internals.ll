Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_internals?download=true
inline.NumInlined: 455
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN8nanobind6detail12nb_internalsD2Ev:bb.a

bb.c:                                             ; preds = %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = load ptr, ptr %i.j, align 16
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32
  br label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit: ; preds = %_ZNSt6vectorIPN8nanobind6detail12import_cacheESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load ptr, ptr %i.o, align 16             ; 3 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i3, label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.r = load ptr, ptr %i.q, align 64
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #32
  br label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit

_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit: ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load ptr, ptr %i.v, align 32             ; 3 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i4, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.y = load ptr, ptr %i.x, align 16
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5: ; preds = %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load ptr, ptr %i.ac, align 16           ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = load ptr, ptr %i.ae, align 32
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #32
  br label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i: ; preds = %bb.f, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 64           ; 3 uses
  %.not.i.i.i.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i1.i, label %_ZN8nanobind6detail8nb_shardD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load ptr, ptr %i.al, align 16
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #32
  br label %_ZN8nanobind6detail8nb_shardD2Ev.exit

_ZN8nanobind6detail8nb_shardD2Ev.exit:            ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN8nanobind6detailL21internals_cleanup_oneEPNS0_12nb_internalsE(ptr noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  br i1 %.not.i.i, label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.04.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i, i64 %.04.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i16, ptr %i.g, align 4
  %i.i = icmp eq i16 %i.h, -1
  br i1 %i.i, label %bb.b, label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.e
  br i1 %exitcond.not.i.i, label %.preheader157, label %.lr.ph.i.i, !llvm.loop !29

_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %.04.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i, i64 %i.e
  %.not151170 = icmp samesign eq i64 %.0.lcssa.i.i, %i.e
  br i1 %.not151170, label %.preheader157, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i, i64 %.0.lcssa.i.i
  br label %.lr.ph

.preheader157:                                    ; preds = %bb.b, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit, %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %.not209 = icmp eq i64 %i.n, 0
  br i1 %.not209, label %.thread, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader157
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.n, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph175.new

.lr.ph175.new:                                    ; preds = %.lr.ph175
  %unroll_iter = and i64 %i.n, -4
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit
  %.sroa.0149.0171 = phi ptr [ %i.aa, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0149.0171, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 8192
  %.not97 = icmp eq i32 %i.u, 0
  br i1 %.not97, label %.preheader437, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  tail call void @_ZN8nanobind6detail13nb_pool_drainEPNS0_12nb_inst_poolEb(ptr noundef nonnull %i.v, i1 noundef zeroext false) #29
  br label %.preheader437

.preheader437:                                    ; preds = %bb.c, %.lr.ph
  br label %bb.d

bb.d:                                             ; preds = %.preheader437, %bb.e
  %i.w = phi ptr [ %i.aa, %bb.e ], [ %.sroa.0149.0171, %.preheader437 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.y = load i8, ptr %i.x, align 2, !range !10, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  br i1 %i.z, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ac = load i16, ptr %i.ab, align 4
  %i.ad = icmp eq i16 %i.ac, -1
  br i1 %i.ad, label %bb.d, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit: ; preds = %bb.e, %bb.d
  %.not151 = icmp eq ptr %i.aa, %i.k
  br i1 %.not151, label %.preheader157, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph175
  %.088174.epil.init = phi i64 [ 0, %.lr.ph175 ], [ %i.bq, %._crit_edge.unr-lcssa ]
  %.089173.epil.init = phi i64 [ 0, %.lr.ph175 ], [ %i.bp, %._crit_edge.unr-lcssa ]
  %.090172.epil.init = phi i64 [ 0, %.lr.ph175 ], [ %i.bm, %._crit_edge.unr-lcssa ]
  %lcmp.mod443 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod443)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.088174.epil = phi i64 [ %.088174.epil.init, %.epil.preheader ], [ %i.al, %bb.f ] ; 2 uses
  %.089173.epil = phi i64 [ %.089173.epil.init, %.epil.preheader ], [ %i.ak, %bb.f ]
  %.090172.epil = phi i64 [ %.090172.epil.init, %.epil.preheader ], [ %i.ah, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ae = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174.epil ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, %.090172.epil            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, %.089173.epil            ; 2 uses
  %i.al = add nuw i64 %.088174.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.unr-lcssa
  %.lcssa436 = phi i64 [ %i.bm, %._crit_edge.unr-lcssa ], [ %i.ah, %bb.f ] ; 2 uses
  %.lcssa435 = phi i64 [ %i.bp, %._crit_edge.unr-lcssa ], [ %i.ak, %bb.f ] ; 2 uses
  %i.am = icmp ne i64 %.lcssa436, 0               ; 4 uses
  %i.an = icmp ne i64 %.lcssa435, 0               ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.h, label %._crit_edge194.thread

bb.g:                                             ; preds = %bb.g, %.lr.ph175.new
  %.088174 = phi i64 [ 0, %.lr.ph175.new ], [ %i.bq, %bb.g ] ; 5 uses
  %.089173 = phi i64 [ 0, %.lr.ph175.new ], [ %i.bp, %bb.g ]
  %.090172 = phi i64 [ 0, %.lr.ph175.new ], [ %i.bm, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph175.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, %.090172
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.at = load i64, ptr %i.as, align 8
  %i.au = add i64 %i.at, %.089173
  %i.av = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, %i.ar
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 288
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, %i.au
  %i.bc = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 368
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, %i.ay
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 448
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bh, %i.bb
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %.088174 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 528
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = add i64 %i.bl, %i.bf                    ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 608
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = add i64 %i.bo, %i.bi                    ; 3 uses
  %i.bq = add nuw i64 %.088174, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.g, !llvm.loop !32

bb.h:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr @stderr, align 8
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.49, i64 noundef %.lcssa436) #35 ; 0 uses
  %i.bt = load i64, ptr %i.m, align 8             ; 2 uses
  %.not210 = icmp eq i64 %i.bt, 0
  br i1 %.not210, label %._crit_edge194.thread, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

._crit_edge194:                                   ; preds = %._crit_edge186
  %i.bv = icmp sgt i32 %.4, 19
  br i1 %i.bv, label %bb.n, label %._crit_edge194.thread

bb.i:                                             ; preds = %.lr.ph193, %._crit_edge186
  %i.bw = phi i64 [ %i.bt, %.lr.ph193 ], [ %i.dl, %._crit_edge186 ] ; 2 uses
  %.082191 = phi i64 [ 0, %.lr.ph193 ], [ %i.dm, %._crit_edge186 ] ; 2 uses
  %.083190 = phi i32 [ 0, %.lr.ph193 ], [ %.4, %._crit_edge186 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [160 x i8], ptr %i.bu, i64 %.082191 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i64, ptr %i.by, align 8            ; 4 uses
  %.not.i.i105 = icmp eq i64 %i.bz, 0
  %.phi.trans.insert.i.i106 = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.pre.i.i107 = load ptr, ptr %.phi.trans.insert.i.i106, align 8 ; 3 uses
  br i1 %.not.i.i105, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %bb.i, %bb.j
  %.04.i.i109 = phi i64 [ %i.ce, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i107, i64 %.04.i.i109
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i16, ptr %i.cb, align 4
  %i.cd = icmp eq i16 %i.cc, -1
  br i1 %i.cd, label %bb.j, label %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit

bb.j:                                             ; preds = %.lr.ph.i.i108
  %i.ce = add nuw i64 %.04.i.i109, 1              ; 2 uses
  %exitcond.not.i.i111 = icmp eq i64 %i.ce, %i.bz
  br i1 %exitcond.not.i.i111, label %._crit_edge186, label %.lr.ph.i.i108, !llvm.loop !33

_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit: ; preds = %.lr.ph.i.i108, %bb.i
  %.0.lcssa.i.i110 = phi i64 [ 0, %bb.i ], [ %.04.i.i109, %.lr.ph.i.i108 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i107, i64 %i.bz
  %.not155182 = icmp samesign eq i64 %.0.lcssa.i.i110, %i.bz
  br i1 %.not155182, label %._crit_edge186, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i107, i64 %.0.lcssa.i.i110
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit
  %.184184 = phi i32 [ %.3, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit ], [ %.083190, %.lr.ph185.preheader ] ; 3 uses
  %.sroa.0145.0183 = phi ptr [ %i.dh, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit ], [ %i.cg, %.lr.ph185.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0145.0183, i64 8
  %.sroa.0139.0.copyload = load ptr, ptr %i.ch, align 8 ; 2 uses
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0145.0183, i64 16
  %.sroa.5141.0.copyload = load ptr, ptr %.sroa.5141.0..sroa_idx, align 8 ; 2 uses
  %i.ci = ptrtoint ptr %.sroa.5141.0.copyload to i64 ; 2 uses
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %bb.k, label %bb.l, !prof !4

bb.k:                                             ; preds = %.lr.ph185
  %i.ck = and i64 %i.ci, -2                       ; 2 uses
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %.loopexit156, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %bb.k
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %.lr.ph180
  %.080178 = phi ptr [ %i.ct, %.lr.ph180 ], [ %i.cl, %.lr.ph180.preheader ] ; 2 uses
  %.285177 = phi i32 [ %i.cr, %.lr.ph180 ], [ %.184184, %.lr.ph180.preheader ] ; 2 uses
  %i.cm = load ptr, ptr %.080178, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %.val104 = load ptr, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %.val104, i64 944
  %.val104.val = load ptr, ptr %i.co, align 8
  %i.cp = load ptr, ptr @stderr, align 8
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.57, ptr noundef %.sroa.0139.0.copyload, ptr noundef %.val104.val) #35 ; 0 uses
  %i.cr = add nsw i32 %.285177, 1                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.080178, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp ne ptr %i.ct, null
  %i.cv = icmp slt i32 %.285177, 19
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %.lr.ph180, label %.loopexit156, !llvm.loop !34

bb.l:                                             ; preds = %.lr.ph185
  %i.cx = getelementptr i8, ptr %.sroa.5141.0.copyload, i64 8
  %.val = load ptr, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %.val, i64 944
  %.val.val = load ptr, ptr %i.cy, align 8
  %i.cz = load ptr, ptr @stderr, align 8
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.57, ptr noundef %.sroa.0139.0.copyload, ptr noundef %.val.val) #35 ; 0 uses
  %i.db = add nsw i32 %.184184, 1
  br label %.loopexit156

.loopexit156:                                     ; preds = %.lr.ph180, %bb.k, %bb.l
  %.3 = phi i32 [ %i.db, %bb.l ], [ %.184184, %bb.k ], [ %i.cr, %.lr.ph180 ] ; 3 uses
  %i.dc = icmp slt i32 %.3, 20
  br i1 %i.dc, label %.preheader, label %._crit_edge186.loopexit

.preheader:                                       ; preds = %.loopexit156, %bb.m
  %i.dd = phi ptr [ %i.dh, %bb.m ], [ %.sroa.0145.0183, %.loopexit156 ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %i.df = load i8, ptr %i.de, align 2, !range !10, !noundef !11
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 3 uses
  br i1 %i.dg, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.dj = load i16, ptr %i.di, align 4
  %i.dk = icmp eq i16 %i.dj, -1
  br i1 %i.dk, label %.preheader, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit, !llvm.loop !35

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit: ; preds = %bb.m, %.preheader
  %.not155 = icmp eq ptr %i.dh, %i.cf
  br i1 %.not155, label %._crit_edge186.loopexit, label %.lr.ph185

._crit_edge186.loopexit:                          ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E14robin_iteratorILb0EEppEv.exit, %.loopexit156
  %.pre = load i64, ptr %i.m, align 8
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %bb.j, %._crit_edge186.loopexit, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit
  %i.dl = phi i64 [ %i.bw, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit ], [ %.pre, %._crit_edge186.loopexit ], [ %i.bw, %bb.j ] ; 2 uses
  %.4 = phi i32 [ %.083190, %_ZN3tsl9robin_mapIPvS1_N8nanobind6detail8ptr_hashESt8equal_toIS1_ESaISt4pairIS1_S1_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit ], [ %.3, %._crit_edge186.loopexit ], [ %.083190, %bb.j ] ; 3 uses
  %i.dm = add nuw i64 %.082191, 1                 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = icmp slt i32 %.4, 20
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %i.dp, label %bb.i, label %._crit_edge194, !llvm.loop !36

bb.n:                                             ; preds = %._crit_edge194
  %i.dq = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.50, i64 25, i64 1, ptr %i.dq) #34 ; 0 uses
  br label %._crit_edge194.thread

._crit_edge194.thread:                            ; preds = %bb.h, %._crit_edge194, %bb.n, %._crit_edge
  %1 = phi i1 [ %i.am, %._crit_edge ], [ %i.am, %._crit_edge194 ], [ %i.am, %bb.n ], [ true, %bb.h ] ; 2 uses
  %or.cond5 = select i1 %i.c, i1 %i.an, i1 false
  br i1 %or.cond5, label %bb.o, label %.thread

bb.o:                                             ; preds = %._crit_edge194.thread
  %i.dr = load ptr, ptr @stderr, align 8
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.51, i64 noundef %.lcssa435) #35 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.preheader157, %bb.o, %._crit_edge194.thread
  %i.dt = phi i1 [ %1, %._crit_edge194.thread ], [ %1, %bb.o ], [ false, %.preheader157 ]
  %i.du = phi i1 [ %i.an, %._crit_edge194.thread ], [ true, %bb.o ], [ false, %.preheader157 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = icmp ne i64 %i.dw, 0                    ; 2 uses
  %brmerge.not = and i1 %i.dx, %i.c
  %i.dy = select i1 %i.dx, i1 true, i1 %i.dt
  %.mux = select i1 %i.dy, i1 true, i1 %i.du
  br i1 %brmerge.not, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.thread
  %i.dz = load ptr, ptr @stderr, align 8
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.52, i64 noundef %i.dw) #35 ; 0 uses
  %i.eb = load i64, ptr %i.d, align 8             ; 4 uses
  %.not.i.i113 = icmp eq i64 %i.eb, 0
  %.pre.i.i115 = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  br i1 %.not.i.i113, label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120, label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %bb.p, %bb.q
  %.04.i.i117 = phi i64 [ %i.eg, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i115, i64 %.04.i.i117
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 4
  %i.ef = icmp eq i16 %i.ee, -1
  br i1 %i.ef, label %bb.q, label %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120

bb.q:                                             ; preds = %.lr.ph.i.i116
  %i.eg = add nuw i64 %.04.i.i117, 1              ; 2 uses
  %exitcond.not.i.i119 = icmp eq i64 %i.eg, %i.eb
  br i1 %exitcond.not.i.i119, label %.loopexit, label %.lr.ph.i.i116, !llvm.loop !29

_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120: ; preds = %.lr.ph.i.i116, %bb.p
  %.0.lcssa.i.i118 = phi i64 [ 0, %bb.p ], [ %.04.i.i117, %.lr.ph.i.i116 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i115, i64 %i.eb ; 9 uses
  %.not153196 = icmp samesign eq i64 %.0.lcssa.i.i118, %i.eb
  br i1 %.not153196, label %.loopexit, label %.lr.ph199.preheader

.lr.ph199.preheader:                              ; preds = %_ZN3tsl9robin_mapIPKSt9type_infoPN8nanobind6detail9type_dataENS5_17std_typeinfo_hashENS5_15std_typeinfo_eqESaISt4pairIS3_S7_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5beginEv.exit120
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i115, i64 %.0.lcssa.i.i118 ; 2 uses
  %i.ej = load ptr, ptr @stderr, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ej, ptr noundef nonnull @.str.53, ptr noundef %i.en) #35 ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.8
  %i.ep = load ptr, ptr @stderr, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.53, ptr noundef %i.et) #35 ; 0 uses
  %i.ev = load ptr, ptr @stderr, align 8
  %fwrite92 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 25, i64 1, ptr %i.ev) #34 ; 0 uses
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph199.preheader, %bb.s
  %i.ew = phi ptr [ %i.fa, %bb.s ], [ %i.ei, %.lr.ph199.preheader ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 6
  %i.ey = load i8, ptr %i.ex, align 2, !range !10, !noundef !11
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 3 uses
  br i1 %i.ez, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 28
  %i.fc = load i16, ptr %i.fb, align 4
  %i.fd = icmp eq i16 %i.fc, -1
  br i1 %i.fd, label %.critedge, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122: ; preds = %bb.s, %.critedge
  %.not153 = icmp eq ptr %i.fa, %i.eh
  br i1 %.not153, label %.loopexit, label %.lr.ph199.1

.lr.ph199.1:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122
  %i.fe = load ptr, ptr @stderr, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fe, ptr noundef nonnull @.str.53, ptr noundef %i.fi) #35 ; 0 uses
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.t, %.lr.ph199.1
  %i.fk = phi ptr [ %i.fo, %bb.t ], [ %i.fa, %.lr.ph199.1 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 6
  %i.fm = load i8, ptr %i.fl, align 2, !range !10, !noundef !11
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 3 uses
  br i1 %i.fn, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1, label %bb.t

bb.t:                                             ; preds = %.critedge.1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %i.fq = load i16, ptr %i.fp, align 4
  %i.fr = icmp eq i16 %i.fq, -1
  br i1 %i.fr, label %.critedge.1, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1: ; preds = %bb.t, %.critedge.1
  %.not153.1 = icmp eq ptr %i.fo, %i.eh
  br i1 %.not153.1, label %.loopexit, label %.lr.ph199.2

.lr.ph199.2:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.1
  %i.fs = load ptr, ptr @stderr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.53, ptr noundef %i.fw) #35 ; 0 uses
  br label %.critedge.2

.critedge.2:                                      ; preds = %bb.u, %.lr.ph199.2
  %i.fy = phi ptr [ %i.gc, %bb.u ], [ %i.fo, %.lr.ph199.2 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 6
  %i.ga = load i8, ptr %i.fz, align 2, !range !10, !noundef !11
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 3 uses
  br i1 %i.gb, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2, label %bb.u

bb.u:                                             ; preds = %.critedge.2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 28
  %i.ge = load i16, ptr %i.gd, align 4
  %i.gf = icmp eq i16 %i.ge, -1
  br i1 %i.gf, label %.critedge.2, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2: ; preds = %bb.u, %.critedge.2
  %.not153.2 = icmp eq ptr %i.gc, %i.eh
  br i1 %.not153.2, label %.loopexit, label %.lr.ph199.3

.lr.ph199.3:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.2
  %i.gg = load ptr, ptr @stderr, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gg, ptr noundef nonnull @.str.53, ptr noundef %i.gk) #35 ; 0 uses
  br label %.critedge.3

.critedge.3:                                      ; preds = %bb.v, %.lr.ph199.3
  %i.gm = phi ptr [ %i.gq, %bb.v ], [ %i.gc, %.lr.ph199.3 ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %i.go = load i8, ptr %i.gn, align 2, !range !10, !noundef !11
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 24 ; 3 uses
  br i1 %i.gp, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3, label %bb.v

bb.v:                                             ; preds = %.critedge.3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.gs = load i16, ptr %i.gr, align 4
  %i.gt = icmp eq i16 %i.gs, -1
  br i1 %i.gt, label %.critedge.3, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3: ; preds = %bb.v, %.critedge.3
  %.not153.3 = icmp eq ptr %i.gq, %i.eh
  br i1 %.not153.3, label %.loopexit, label %.lr.ph199.4

.lr.ph199.4:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.3
  %i.gu = load ptr, ptr @stderr, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str.53, ptr noundef %i.gy) #35 ; 0 uses
  br label %.critedge.4

.critedge.4:                                      ; preds = %bb.w, %.lr.ph199.4
  %i.ha = phi ptr [ %i.he, %bb.w ], [ %i.gq, %.lr.ph199.4 ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 6
  %i.hc = load i8, ptr %i.hb, align 2, !range !10, !noundef !11
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 24 ; 3 uses
  br i1 %i.hd, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4, label %bb.w

bb.w:                                             ; preds = %.critedge.4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 28
  %i.hg = load i16, ptr %i.hf, align 4
  %i.hh = icmp eq i16 %i.hg, -1
  br i1 %i.hh, label %.critedge.4, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4, !llvm.loop !30

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4: ; preds = %bb.w, %.critedge.4
  %.not153.4 = icmp eq ptr %i.he, %i.eh
  br i1 %.not153.4, label %.loopexit, label %.lr.ph199.5

.lr.ph199.5:                                      ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.4
  %i.hi = load ptr, ptr @stderr, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hi, ptr noundef nonnull @.str.53, ptr noundef %i.hm) #35 ; 0 uses
  br label %.critedge.5

.critedge.5:                                      ; preds = %bb.x, %.lr.ph199.5
  %i.ho = phi ptr [ %i.hs, %bb.x ], [ %i.he, %.lr.ph199.5 ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 6
  %i.hq = load i8, ptr %i.hp, align 2, !range !10, !noundef !11
  %i.hr = trunc nuw i8 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 3 uses
  br i1 %i.hr, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E14robin_iteratorILb0EEppEv.exit122.5, label %bb.x

bb.x:                                             ; preds = %.critedge.5
end_hunk_0
