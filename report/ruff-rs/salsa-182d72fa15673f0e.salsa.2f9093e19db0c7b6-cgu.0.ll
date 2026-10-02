Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/salsa-182d72fa15673f0e.salsa.2f9093e19db0c7b6-cgu.0?download=true
inline.NumInlined: 4220
inline.NumDeleted: 1923
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph30thread_id_of_transferred_query:bb.a
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i23, %i.bi
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not.i.not33.i.i24 = icmp eq i16 %i.bl, 0
  br i1 %.not.i.not33.i.i24, label %._crit_edge.i.i29, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %bb.g, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27
  %.sroa.06.0.i34.i.i26 = phi i16 [ %i.cf, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27 ], [ %i.bl, %bb.g ] ; 3 uses
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i26, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = add i64 %.sroa.01.0.i.i.i22, %i.bn
  %i.bp = and i64 %i.bo, %i.m
  %i.bq = sub nsw i64 0, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds [40 x i8], ptr %i.n, i64 %i.bq ; 6 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -36
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !4505, !noalias !4506, !noundef !25
  %i.bu = icmp eq i32 %i.bt, %.sroa.0.sroa.5.0
  br i1 %i.bu, label %bb.h, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27, !prof !29

bb.h:                                             ; preds = %.lr.ph.i.i25
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 -40
  %i.bw = load i32, ptr %i.bv, align 4, !range !30, !alias.scope !4505, !noalias !4506, !noundef !25
  %i.bx = icmp eq i32 %i.bw, %.sroa.0.sroa.0.0
  br i1 %i.bx, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i34, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i34: ; preds = %bb.h
  %i.by = getelementptr inbounds i8, ptr %i.br, i64 -32
  %i.bz = load i32, ptr %i.by, align 4, !alias.scope !4505, !noalias !4506, !noundef !25
  %i.ca = icmp eq i32 %.sroa.6.0, %i.bz
  br i1 %i.ca, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBO_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit35, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27, !prof !31

._crit_edge.i.i29:                                ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27, %bb.g
  %i.cb = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i23, splat (i8 -1)
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = icmp eq i16 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBO_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread.loopexit, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i27: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i34, %bb.h, %.lr.ph.i.i25
  %i.ce = add i16 %.sroa.06.0.i34.i.i26, -1
  %i.cf = and i16 %i.ce, %.sroa.06.0.i34.i.i26    ; 2 uses
  %.not.i.not.i.i28 = icmp eq i16 %i.cf, 0
  br i1 %.not.i.not.i.i28, label %._crit_edge.i.i29, label %.lr.ph.i.i25

bb.i:                                             ; preds = %._crit_edge.i.i29
  %i.cg = add i64 %.sroa.9.0.i.i.i20, 16          ; 2 uses
  %i.ch = add i64 %.sroa.01.0.i.i.i22, %i.cg
  br label %bb.g

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBO_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit35: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i34
  %i.ci = getelementptr inbounds i8, ptr %i.br, i64 -16
  %.sroa.07.0.copyload = load i32, ptr %i.ci, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.br, i64 -12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %i.br, i64 -8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.cj = icmp eq i32 %.sroa.6.0.copyload, %i.av
  %or.cond = select i1 %.not14, i1 %i.cj, i1 false
  br i1 %or.cond, label %bb.j, label %.outer.loopexit

bb.j:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBO_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit35
  %i.ck = icmp ne i32 %.sroa.07.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp eq i32 %.sroa.07.0.copyload, %i.at
  %i.cm = icmp eq i32 %.sroa.7.0.copyload, %i.ax
  %or.cond19 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond19, label %bb.f, label %.outer.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs45bxiIjzMqg_5salsa8database12memory_usageDNtB4_8DatabaseEL_12memory_usage(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  %i.e = alloca [88 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [40 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4737)
  %i.k = tail call noundef i64 @_RNvNtCs8qBEHWZxIbJ_8foldhash4seed19gen_per_hasher_seed(), !noalias !4737
  %i.l = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8qBEHWZxIbJ_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !4737
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %_RNvXs7_NtCs8bMtf1JxJvX_9hashbrown3mapINtB5_7HashMapReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCs8qBEHWZxIbJ_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow(), !noalias !4737
  br label %_RNvXs7_NtCs8bMtf1JxJvX_9hashbrown3mapINtB5_7HashMapReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit

_RNvXs7_NtCs8bMtf1JxJvX_9hashbrown3mapINtB5_7HashMapReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  store i64 %i.k, ptr %i.n, align 8, !alias.scope !4737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !25, !nonnull !25 ; 3 uses
  %i.s = invoke noundef nonnull align 8 ptr %i.r(ptr noundef nonnull %1)
          to label %bb.d unwind label %bb.c       ; 3 uses

bb.c:                                             ; preds = %_RNvXs7_NtCs8bMtf1JxJvX_9hashbrown3mapINtB5_7HashMapReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %_RNvXs7_NtCs8bMtf1JxJvX_9hashbrown3mapINtB5_7HashMapReNtNtNtCs45bxiIjzMqg_5salsa8database12memory_usage14IngredientInfoENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBV_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false), !noalias !4738
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 792
  %i.w = load atomic i64, ptr %i.v monotonic, align 8, !noalias !4739
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 800
  %i.y = load atomic i64, ptr %i.x acquire, align 8, !noalias !4738 ; 0 uses
  %i.z = add nsw i64 %spec.select.i.i, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.e

.body.i:                                          ; preds = %bb.t, %bb.s, %bb.l
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bs, %bb.l ], [ %lpad.phi.i.i.i.i.i.i.i, %bb.t ], [ %lpad.phi.i.i.i.i.i.i.i, %bb.s ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw11RawIntoIterTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEEB1q_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #65, !noalias !4740
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !4741
  %.val3.i.i = load i64, ptr %i.bk, align 8, !noalias !4741, !noundef !25
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtNtB1A_8database12memory_usage8PageInfoNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_(ptr %.val.i.i, i64 %.val3.i.i) #65, !noalias !4741
  br label %.body

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.11.1.i = phi i64 [ 0, %bb.d ], [ %i.as, %.backedge ] ; 2 uses
  %.sroa.9.1.i = phi i64 [ 0, %bb.d ], [ %.sroa.9.2.i, %.backedge ] ; 4 uses
  %.sroa.7.1.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sroa.7.2.i, %.backedge ] ; 4 uses
  %.sroa.4.1.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %i.at, %.backedge ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.4.1.i, %.sroa.7.1.i
  br i1 %i.ae, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.9.1.i, i64 58)
  %exitcond.i.i.i641 = icmp ugt i64 %.sroa.9.1.i, 57
  br i1 %exitcond.i.i.i641, label %.loopexit92.i, label %.lr.ph644

bb.f:                                             ; preds = %bb.h
  %exitcond.i.i.i = icmp eq i64 %i.ai, %umax.i.i.i
  br i1 %exitcond.i.i.i, label %.loopexit92.i, label %.lr.ph644

.lr.ph644:                                        ; preds = %.lr.ph.i.i.i, %bb.f
  %i.af = phi ptr [ %i.ao, %bb.f ], [ %.sroa.7.1.i, %.lr.ph.i.i.i ]
  %i.ag = phi ptr [ %i.ap, %bb.f ], [ %.sroa.4.1.i, %.lr.ph.i.i.i ]
  %i.ah = phi i64 [ %i.ai, %bb.f ], [ %.sroa.9.1.i, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.7.3.i643 = phi ptr [ %.sroa.7.4.i, %bb.f ], [ %.sroa.7.1.i, %.lr.ph.i.i.i ]
  %.sroa.11.3.i642 = phi i64 [ %.sroa.11.4.i, %bb.f ], [ %.sroa.11.1.i, %.lr.ph.i.i.i ]
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ah
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8, !noalias !4742 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph644
  %i.am = shl nuw nsw i64 32, %i.ah               ; 2 uses
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph644
  %.sroa.11.4.i = phi i64 [ %.sroa.11.3.i642, %.lr.ph644 ], [ %i.am, %bb.g ] ; 2 uses
  %.sroa.7.4.i = phi ptr [ %.sroa.7.3.i643, %.lr.ph644 ], [ %i.an, %bb.g ] ; 2 uses
  %i.ao = phi ptr [ %i.af, %.lr.ph644 ], [ %i.an, %bb.g ] ; 2 uses
  %i.ap = phi ptr [ %i.ag, %.lr.ph644 ], [ %i.ak, %bb.g ] ; 3 uses
  %i.aq = icmp eq ptr %i.ap, %i.ao
  br i1 %i.aq, label %bb.f, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.h, %bb.e
  %.sroa.11.2.i = phi i64 [ %.sroa.11.1.i, %bb.e ], [ %.sroa.11.4.i, %bb.h ] ; 3 uses
  %.sroa.9.2.i = phi i64 [ %.sroa.9.1.i, %bb.e ], [ %i.ai, %bb.h ]
  %.sroa.7.2.i = phi ptr [ %.sroa.7.1.i, %bb.e ], [ %.sroa.7.4.i, %bb.h ]
  %.lcssa.i.i.i = phi ptr [ %.sroa.4.1.i, %bb.e ], [ %i.ap, %bb.h ] ; 4 uses
  %i.ar = icmp ne i64 %.sroa.11.2.i, 0
  call void @llvm.assume(i1 %i.ar)
  %or.cond.not.i.i = icmp ult i64 %i.z, %.sroa.11.2.i
  br i1 %or.cond.not.i.i, label %.loopexit92.i, label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i
  %i.as = add i64 %.sroa.11.2.i, 1
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i, i64 56
  %i.av = load atomic i8, ptr %i.au acquire, align 1, !noalias !4743
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %.backedge, label %bb.an

.backedge:                                        ; preds = %bb.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE8push_mutCs45bxiIjzMqg_5salsa.exit.i, %bb.an
  br label %bb.e

.loopexit92.i:                                    ; preds = %.loopexit.i.i, %.lr.ph.i.i.i, %bb.f
  %.sroa.062.0.copyload.i = load ptr, ptr %i.d, align 8, !noalias !4738, !nonnull !25, !noundef !25 ; 6 uses
  %.sroa.463.0.copyload.i = load i64, ptr %i.ab, align 8, !noalias !4738 ; 5 uses
  %.sroa.565.0.copyload.i = load i64, ptr %i.ad, align 8, !noalias !4738 ; 3 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.062.0.copyload.i, align 16, !noalias !4744
  %i.ax = icmp eq i64 %.sroa.463.0.copyload.i, 0  ; 2 uses
  br i1 %i.ax, label %bb.j, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %.loopexit92.i
  %3 = icmp slt i64 %.sroa.463.0.copyload.i, 576460752303423487
  call void @llvm.assume(i1 %3)
  %i.ay = shl i64 %.sroa.463.0.copyload.i, 5      ; 2 uses
  %4 = add i64 %i.ay, 32                          ; 2 uses
  %5 = add nsw i64 %.sroa.463.0.copyload.i, 17
  %i.az = add i64 %5, %4                          ; 3 uses
  %6 = icmp uge i64 %i.az, %4
  call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.az, 9223372036854775793
  call void @llvm.assume(i1 %7)
  %i.ba = sub nuw nsw i64 -32, %i.ay
  %i.bb = getelementptr inbounds i8, ptr %.sroa.062.0.copyload.i, i64 %i.ba
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %.loopexit92.i
  %.sroa.511.0.i.i.i = phi ptr [ undef, %.loopexit92.i ], [ %i.bb, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 2 uses
  %.sroa.410.0.i.i.i = phi i64 [ undef, %.loopexit92.i ], [ %i.az, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 3 uses
  %.sink.i.i.i.i = phi i64 [ 0, %.loopexit92.i ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.062.0.copyload.i, i64 16 ; 2 uses
  %i.bd = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.062.0.copyload.i, i64 %.sroa.463.0.copyload.i
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false), !noalias !4741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4745
  store i64 %.sink.i.i.i.i, ptr %i.b, align 8, !noalias !4746
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.410.0.i.i.i, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !4746
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.511.0.i.i.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !4746
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %.sroa.062.0.copyload.i, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !4746
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.bc, ptr %.sroa.748.0..sroa_idx.i, align 8, !noalias !4746
  %.sroa.849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.bf, ptr %.sroa.849.0..sroa_idx.i, align 8, !noalias !4746
  %.sroa.950.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store <16 x i1> %i.bd, ptr %.sroa.950.0..sroa_idx.i, align 8, !noalias !4746
  %.sroa.1152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  store i64 %.sroa.565.0.copyload.i, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !4746
  call void @llvm.experimental.noalias.scope.decl(metadata !4747)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  call void @llvm.experimental.noalias.scope.decl(metadata !4749)
  call void @llvm.experimental.noalias.scope.decl(metadata !4750)
  call void @llvm.experimental.noalias.scope.decl(metadata !4751)
  call void @llvm.experimental.noalias.scope.decl(metadata !4752)
  %i.bi = icmp eq i64 %.sroa.565.0.copyload.i, 0
  br i1 %i.bi, label %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE13drop_elementsBS_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j
  %i.bj = bitcast <16 x i1> %i.bd to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEETB1b_NtNtNtB1f_8database12memory_usage8PageInfoEuNCNvMs4_NtB1f_5tableNtB3q_5Table10page_infos0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2v_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB58_7HashMapB1b_B2A_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB4c_7collect6ExtendB2v_E6extendINtB4_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1b_B1W_EB3i_EE0E0E0B1f_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa1946.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.promoted10.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEETB1b_NtNtNtB1f_8database12memory_usage8PageInfoEuNCNvMs4_NtB1f_5tableNtB3q_5Table10page_infos0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2v_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB58_7HashMapB1b_B2A_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB4c_7collect6ExtendB2v_E6extendINtB4_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1b_B1W_EB3i_EE0E0E0B1f_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa2043.i.i.i.i.i.i.i = phi ptr [ %.sroa.062.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.promoted6.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEETB1b_NtNtNtB1f_8database12memory_usage8PageInfoEuNCNvMs4_NtB1f_5tableNtB3q_5Table10page_infos0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2v_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB58_7HashMapB1b_B2A_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB4c_7collect6ExtendB2v_E6extendINtB4_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1b_B1W_EB3i_EE0E0E0B1f_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bl = phi i16 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bw, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEETB1b_NtNtNtB1f_8database12memory_usage8PageInfoEuNCNvMs4_NtB1f_5tableNtB3q_5Table10page_infos0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2v_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB58_7HashMapB1b_B2A_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB4c_7collect6ExtendB2v_E6extendINtB4_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1b_B1W_EB3i_EE0E0E0B1f_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bm = phi i64 [ %.sroa.565.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bz, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEETB1b_NtNtNtB1f_8database12memory_usage8PageInfoEuNCNvMs4_NtB1f_5tableNtB3q_5Table10page_infos0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2v_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB58_7HashMapB1b_B2A_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB4c_7collect6ExtendB2v_E6extendINtB4_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1b_B1W_EB3i_EE0E0E0B1f_.exit.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4753)
  call void @llvm.experimental.noalias.scope.decl(metadata !4754)
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  store ptr %i.br, ptr %.sroa.748.0..sroa_idx.i, align 8, !alias.scope !4755, !noalias !4756
  store ptr %i.bq, ptr %.sroa.647.0..sroa_idx.i, align 8, !alias.scope !4755, !noalias !4756
  br label %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bn = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1946.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.bo = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa2043.i.i.i.i.i.i.i, %bb.k ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bn, align 16, !noalias !4757
  %i.bp = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -512 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bp to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bw, ptr %.sroa.950.0..sroa_idx.i, align 8, !alias.scope !4755, !noalias !4756
  store i64 %i.bz, ptr %.sroa.1152.0..sroa_idx.i, align 8, !alias.scope !4758, !noalias !4756
  br label %.body.i

_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.k
  %.promoted10.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa1946.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %.promoted6.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bq, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa2043.i.i.i.i.i.i.i, %bb.k ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.bl, %bb.k ] ; 3 uses
  %i.bt = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = and i16 %i.bt, %.lcssa.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bx = sub nsw i64 0, %i.bv
  %i.by = getelementptr inbounds [32 x i8], ptr %.promoted6.i.i.i.i.i.i.i.i.i.i, i64 %i.bx ; 4 uses
  %i.bz = add i64 %i.bm, -1                       ; 7 uses
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.by, i64 -24
  %.sroa.5.0.copyload6.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !4759 ; 7 uses
  %.sroa.7.0..sroa_idx7.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.by, i64 -16
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx7.i.i.i.i.i.i.i, align 8, !noalias !4759 ; 14 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx7.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.by, i64 -8
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx7.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4759 ; 23 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload6.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -32
  %.sroa.03.0.copyload4.i.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !noalias !4759 ; 2 uses
  %.sroa.010.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload4.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.cb = icmp ult i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = icmp eq i64 %.sroa.5.0.copyload6.i.i.i.i.i.i.i, 0
  br i1 %i.cd, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEETB1b_NtNtNtB1f_8database12memory_usage8PageInfoEuNCNvMs4_NtB1f_5tableNtB3q_5Table10page_infos0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2v_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB58_7HashMapB1b_B2A_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB4c_7collect6ExtendB2v_E6extendINtB4_9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterB1b_B1W_EB3i_EE0E0E0B1f_.exit.i.i.i.i.i.i.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8database12memory_usageNtB5_8PageInfo15from_page_fills.exit.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  %i.ce = icmp eq i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.u, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp samesign ult i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, 21
  br i1 %i.cf, label %bb.r, label %bb.q, !prof !27

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa(ptr noalias noundef nonnull align 8 %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr noalias noundef nonnull %i.a)
          to label %bb.u unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !4760

bb.r:                                             ; preds = %bb.p
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa(ptr noalias noundef nonnull align 8 %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 noundef 1), !noalias !4760
  br label %bb.u

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.q
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bw, ptr %.sroa.950.0..sroa_idx.i, align 8, !alias.scope !4755, !noalias !4756
  store i64 %i.bz, ptr %.sroa.1152.0..sroa_idx.i, align 8, !alias.scope !4758, !noalias !4756
  br label %bb.s

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %i.cg = icmp eq i64 %.sroa.5.0.copyload6.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = shl nuw i64 %.sroa.5.0.copyload6.i.i.i.i.i.i.i, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4760
  br label %.body.i

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.o
  %min.iters.check = icmp samesign ult i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.u
  %n.vec = and i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, 1152921504606846972 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi645 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !noalias !4761
  %wide.load646 = load <2 x i64>, ptr %i.cj, align 8, !noalias !4761
  %i.ck = sub <2 x i64> %vec.phi, %wide.load
  %i.cl = sub <2 x i64> %vec.phi645, %wide.load646
  %i.cm = add <2 x i64> %i.ck, splat (i64 128)    ; 2 uses
  %i.cn = add <2 x i64> %i.cl, splat (i64 128)    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !4558

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cn, %i.cm
  %i.cp = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvMs0_NtNtCs45bxiIjzMqg_5salsa8database12memory_usageNtB2n_8PageInfo15from_page_fillss_0NCINvXsK_NtBW_5accumjNtB3Q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2r_.exit.i.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.u, %middle.block
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.u ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.u ], [ %i.cp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %scalar.ph ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cs, %scalar.ph ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i
  %.val13.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cq, align 8, !noalias !4761, !noundef !25
  %i.cr = sub i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %.val13.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = add i64 %i.cr, 128                      ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i
  br i1 %i.cu, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvMs0_NtNtCs45bxiIjzMqg_5salsa8database12memory_usageNtB2n_8PageInfo15from_page_fillss_0NCINvXsK_NtBW_5accumjNtB3Q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2r_.exit.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !4559

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvMs0_NtNtCs45bxiIjzMqg_5salsa8database12memory_usageNtB2n_8PageInfo15from_page_fillss_0NCINvXsK_NtBW_5accumjNtB3Q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2r_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %scalar.ph, %middle.block
  %.lcssa596 = phi i64 [ %i.cp, %middle.block ], [ %i.cs, %scalar.ph ] ; 2 uses
  %i.cv = mul i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, 25 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime17block_transferred:bb.a
bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.q:                                             ; preds = %bb.l
  store ptr %i.b, ptr %i.au, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit: ; preds = %bb.q, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, %bb.k, %bb.f, %bb.e
  %.sroa.4.1 = phi ptr [ undef, %bb.f ], [ undef, %bb.e ], [ %i.au, %bb.q ], [ undef, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread ], [ undef, %bb.k ]
  %.sroa.0.1 = phi i64 [ 2, %bb.f ], [ 2, %bb.e ], [ 1, %bb.q ], [ 0, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread ], [ 0, %bb.k ]
  %i.ba = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.bb = insertvalue { i64, ptr } %i.ba, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.bb

.body:                                            ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef i8 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime18cancellation_count(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 713
  %i.b = load atomic i8, ptr %i.a acquire, align 1
  ret i8 %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime18undo_transfer_lock(ptr noundef nonnull align 8 %0, i64 %.0.val, i32 %.8.val) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5967)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5968
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  call fastcc void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBO_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.g, i64 %.0.val, i32 %.8.val), !noalias !5969
  %i.h = load i64, ptr %i.b, align 8, !noalias !5968, !noundef !25
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = lshr i64 %.0.val, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = trunc i64 %.0.val to i32
  br i1 %.not.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !5968 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5968 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5970)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !5971, !noalias !5972, !noundef !25
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = mul i64 %.sroa.0.0.copyload.i, -1065810590584100411
  %i.r = zext i32 %.sroa.4.0.copyload.i to i64
  %i.s = add i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -1065810590584100411       ; 2 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5974)
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !5975, !noalias !5976, !noundef !25 ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !5975, !noalias !5976, !nonnull !25, !noundef !25 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = trunc i64 %.sroa.0.0.copyload.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bc, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.bd, %bb.h ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.y ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !5977 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.ab
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.not33.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.bb, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.01.0.i.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.y
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [72 x i8], ptr %i.z, i64 %i.am ; 6 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -68
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !5978, !noalias !5979, !noundef !25
  %i.aq = icmp eq i32 %i.ap, %i.ad
  br i1 %i.aq, label %bb.g, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !29

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -72
  %i.as = load i32, ptr %i.ar, align 4, !range !30, !alias.scope !5978, !noalias !5979, !noundef !25
  %i.at = icmp eq i32 %i.as, %i.ae
  br i1 %i.at, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds i8, ptr %i.an, i64 -64
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !5978, !noalias !5979, !noundef !25
  %i.aw = icmp eq i32 %.sroa.4.0.copyload.i, %i.av
  br i1 %i.aw, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !31

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, %bb.f
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.h, label %select.unfold.i, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i, %bb.g, %.lr.ph.i.i.i
  %i.ba = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.bb = and i16 %i.ba, %.sroa.06.0.i34.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bd = add i64 %.sroa.01.0.i.i.i.i, %i.bc
  br label %bb.f

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i
  %i.be = getelementptr inbounds i8, ptr %i.an, i64 -56 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5980, !noalias !5981, !noundef !25 ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 4                   ; 2 uses
  %i.bi = load ptr, ptr %i.be, align 8, !alias.scope !5980, !noalias !5981, !nonnull !25
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 -48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !5980, !noalias !5981
  %.sink10.i.i.i = select i1 %i.bh, ptr %i.bi, ptr %i.be ; 4 uses
  %.sink9.i.i.i = select i1 %i.bh, i64 %i.bk, i64 %i.bg ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.sink9.i.i.i, 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i, i64 %.idx.i.i
  %i.bm = icmp eq i64 %.sink9.i.i.i, 0
  br i1 %i.bm, label %.loopexit, label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i
  %.sroa.02.09.i.i.i = phi i64 [ %i.bx, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i ], [ 0, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i ] ; 3 uses
  %i.bn = phi ptr [ %i.bo, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i ], [ %.sink10.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !alias.scope !5982, !noalias !5983, !noundef !25
  %i.br = icmp eq i32 %i.bq, %i.j
  br i1 %i.br, label %bb.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i4.i
  %i.bs = load i32, ptr %i.bn, align 4, !range !30, !alias.scope !5982, !noalias !5983, !noundef !25
  %i.bt = icmp eq i32 %i.bs, %i.k
  br i1 %i.bt, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i: ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !5982, !noalias !5983, !noundef !25
  %i.bw = icmp eq i32 %i.bv, %.8.val
  br i1 %i.bw, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i, %bb.i, %.lr.ph.i.i4.i
  %i.bx = add nuw nsw i64 %.sroa.02.09.i.i.i, 1
  %i.by = icmp eq ptr %i.bo, %i.bl
  br i1 %i.by, label %.loopexit, label %.lr.ph.i.i4.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i
  %i.bz = icmp ult i64 %.sroa.02.09.i.i.i, %.sink9.i.i.i
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr [12 x i8], ptr %.sink10.i.i.i, i64 %.sink9.i.i.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 -12    ; 2 uses
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i.i, i64 %.sroa.02.09.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.cb, i64 12, i1 false), !noalias !5984
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) %i.cc, i64 12, i1 false), !noalias !5984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !5984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cd = load i64, ptr %i.bf, align 8, !alias.scope !5985, !noalias !5986, !noundef !25
  %i.ce = icmp ugt i64 %i.cd, 4
  %.sink8.i12.i.i.i = select i1 %i.ce, ptr %i.bj, ptr %i.bf ; 2 uses
  %i.cf = load i64, ptr %.sink8.i12.i.i.i, align 8, !alias.scope !5987, !noalias !5984, !noundef !25 ; 2 uses
  %1 = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %1)
  %i.cg = add i64 %i.cf, -1
  store i64 %i.cg, ptr %.sink8.i12.i.i.i, align 8, !alias.scope !5987, !noalias !5984
  br label %.loopexit

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #62
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %select.unfold.i
  unreachable

bb.j:                                             ; preds = %select.unfold.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.cj = extractvalue { i8, i1 } %i.ci, 1
  br i1 %i.cj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit unwind label %bb.m

.loopexit:                                        ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5968
  %i.ck = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.cl = extractvalue { i8, i1 } %i.ck, 1
  br i1 %i.cl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit3, label %bb.l, !prof !27

bb.l:                                             ; preds = %.loopexit
  tail call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit3: ; preds = %.loopexit, %bb.l
  ret void

bb.m:                                             ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ch
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime20report_tracked_write(ptr noalias nofree noundef align 8 captures(address) dereferenceable(720) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.a, align 1
  %i.b = icmp eq i8 %1, 3
  br i1 %i.b, label %bb.b, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionE9index_mutB1D_.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCs45bxiIjzMqg_5salsa10durability10DurabilityBM_EBQ_(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) @152, ptr noundef nonnull @153, ptr nonnull inttoptr (i64 79 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #62
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionE9index_mutB1D_.exit: ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !range !28, !noundef !25 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = icmp eq i8 %1, 0
  br i1 %i.e, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionINtB4_8SpecFillBK_E9spec_fillBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionE9index_mutB1D_.exit
  store i64 %i.c, ptr %i.d, align 8, !alias.scope !5990
  %i.f = icmp eq i8 %1, 1
  br i1 %i.f, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionINtB4_8SpecFillBK_E9spec_fillBO_.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.g, align 8, !alias.scope !5990
  %i.h = icmp eq i8 %1, 2
  br i1 %i.h, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionINtB4_8SpecFillBK_E9spec_fillBO_.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %i.i, align 8, !alias.scope !5990
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionINtB4_8SpecFillBK_E9spec_fillBO_.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionINtB4_8SpecFillBK_E9spec_fillBO_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCs45bxiIjzMqg_5salsa8revision8RevisionE9index_mutB1D_.exit
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef zeroext i1 @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime22load_cancellation_flag(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load atomic i8, ptr %i.a acquire, align 8
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime26unblock_queries_blocked_on(ptr noundef nonnull align 8 %0, i64 %.0.val, i32 %.8.val, i8 noundef range(i8 0, 3) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph27unblock_runtimes_blocked_on(ptr noalias noundef align 8 dereferenceable(160) %i.e, i64 %.0.val, i32 %.8.val, i8 noundef %1)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime36unblock_transferred_queries_owned_by(ptr noundef nonnull align 8 %0, i64 %.0.val, i32 %.8.val, i8 noundef range(i8 0, 3) %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6035)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6036
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  call fastcc void @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBO_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.h, i64 %.0.val, i32 %.8.val), !noalias !6037
  %i.i = load i64, ptr %i.b, align 8, !noalias !6036, !noundef !25
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = lshr i64 %.0.val, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = trunc i64 %.0.val to i32
  br i1 %.not.i, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !6036 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6036 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6038)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !6039, !noalias !6040, !noundef !25
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = mul i64 %.sroa.0.0.copyload.i, -1065810590584100411
  %i.s = zext i32 %.sroa.4.0.copyload.i to i64
  %i.t = add i64 %i.r, %i.s
  %i.u = mul i64 %i.t, -1065810590584100411       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6042)
  %i.w = lshr i64 %i.v, 57
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6043, !noalias !6044, !noundef !25 ; 2 uses
  %i.aa = load ptr, ptr %i.q, align 8, !alias.scope !6043, !noalias !6044, !nonnull !25, !noundef !25 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = trunc i64 %.sroa.0.0.copyload.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bd, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.v, %bb.e ], [ %i.be, %bb.h ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.z ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.ag, align 1, !noalias !6045 ; 2 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.ac
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not.i.not33.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.bc, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i ], [ %i.ai, %bb.f ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  %i.am = and i64 %i.al, %i.z
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [72 x i8], ptr %i.aa, i64 %i.an ; 6 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -68
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !6046, !noalias !6047, !noundef !25
  %i.ar = icmp eq i32 %i.aq, %i.ae
  br i1 %i.ar, label %bb.g, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !29

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -72
  %i.at = load i32, ptr %i.as, align 4, !range !30, !alias.scope !6046, !noalias !6047, !noundef !25
  %i.au = icmp eq i32 %i.at, %i.af
  br i1 %i.au, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i: ; preds = %bb.g
  %i.av = getelementptr inbounds i8, ptr %i.ao, i64 -64
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !6046, !noalias !6047, !noundef !25
  %i.ax = icmp eq i32 %.sroa.4.0.copyload.i, %i.aw
  br i1 %i.ax, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, !prof !31

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i, %bb.f
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.h, label %select.unfold.i, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i, %bb.g, %.lr.ph.i.i.i
  %i.bb = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.bc = and i16 %i.bb, %.sroa.06.0.i34.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bd = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.be = add i64 %.sroa.01.0.i.i.i.i, %i.bd
  br label %bb.f

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.ao, i64 -56 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6048, !noalias !6049, !noundef !25 ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 4                   ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8, !alias.scope !6048, !noalias !6049, !nonnull !25
  %i.bk = getelementptr inbounds i8, ptr %i.ao, i64 -48 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !6048, !noalias !6049
  %.sink10.i.i.i = select i1 %i.bi, ptr %i.bj, ptr %i.bf ; 4 uses
  %.sink9.i.i.i = select i1 %i.bi, i64 %i.bl, i64 %i.bh ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.sink9.i.i.i, 12
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i, i64 %.idx.i.i
  %i.bn = icmp eq i64 %.sink9.i.i.i, 0
  br i1 %i.bn, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i, label %.lr.ph.i.i6.i

.lr.ph.i.i6.i:                                    ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i
  %.sroa.02.09.i.i.i = phi i64 [ %i.by, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i ], [ 0, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i ] ; 3 uses
  %i.bo = phi ptr [ %i.bp, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i ], [ %.sink10.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !6050, !noalias !6051, !noundef !25
  %i.bs = icmp eq i32 %i.br, %i.k
  br i1 %i.bs, label %bb.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i6.i
  %i.bt = load i32, ptr %i.bo, align 4, !range !30, !alias.scope !6050, !noalias !6051, !noundef !25
  %i.bu = icmp eq i32 %i.bt, %i.l
  br i1 %i.bu, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i: ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !6050, !noalias !6051, !noundef !25
  %i.bx = icmp eq i32 %i.bw, %.8.val
  br i1 %i.bx, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i, %bb.i, %.lr.ph.i.i6.i
  %i.by = add nuw nsw i64 %.sroa.02.09.i.i.i, 1
  %i.bz = icmp eq ptr %i.bp, %i.bm
  br i1 %i.bz, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i, label %.lr.ph.i.i6.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i
  %i.ca = icmp ult i64 %.sroa.02.09.i.i.i, %.sink9.i.i.i
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr [12 x i8], ptr %.sink10.i.i.i, i64 %.sink9.i.i.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12    ; 2 uses
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i.i, i64 %.sroa.02.09.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.cc, i64 12, i1 false), !noalias !6052
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false), !noalias !6052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !6052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = load i64, ptr %i.bg, align 8, !alias.scope !6053, !noalias !6054, !noundef !25
  %i.cf = icmp ugt i64 %i.ce, 4
  %.sink8.i12.i.i.i = select i1 %i.cf, ptr %i.bk, ptr %i.bg ; 2 uses
  %i.cg = load i64, ptr %.sink8.i12.i.i.i, align 8, !alias.scope !6055, !noalias !6052, !noundef !25 ; 2 uses
  %2 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %2)
  %i.ch = add i64 %i.cg, -1
  store i64 %i.ch, ptr %.sink8.i12.i.i.i, align 8, !alias.scope !6055, !noalias !6052
  br label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #62
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %select.unfold.i
  unreachable

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6036
  invoke fastcc void @_RNvNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB4_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by17unblock_recursive(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.g, i64 %.0.val, i32 %.8.val, i8 noundef range(i8 0, 3) %1)
          to label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by.exit unwind label %bb.j

bb.j:                                             ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i, %select.unfold.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.ck = extractvalue { i8, i1 } %i.cj, 1
  br i1 %i.ck, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit unwind label %bb.m

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by.exit: ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i
  %i.cl = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.cm = extractvalue { i8, i1 } %i.cl, 1
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4, label %bb.l, !prof !27

bb.l:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by.exit
  tail call void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit4: ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph56unblock_runtimes_blocked_on_transferred_queries_owned_by.exit, %bb.l
  ret void

bb.m:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ci
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RNvMs3_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7Runtime5block(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = invoke noundef nonnull ptr @_RNvNtNtCs2AWtUsOyxgP_3std6thread7current7current()
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.o, %bb.d, %bb.f, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = cmpxchg ptr %3, i8 1, i8 0 release monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %.body, label %bb.s, !prof !27

bb.c:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !28, !noundef !25 ; 4 uses
  %i.h = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6082
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs2AWtUsOyxgP_3std6thread6thread5InnerNtNtBL_5alloc6SystemE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp eq i64 %i.g, %2
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std6thread6thread6ThreadECs45bxiIjzMqg_5salsa.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.l = cmpxchg weak ptr %i.k, i8 0, i8 1 acquire monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef zeroext i1 @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.k, i64 undef, i32 noundef -1)
          to label %bb.g unwind label %bb.b       ; 0 uses

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !6083)
  call void @llvm.experimental.noalias.scope.decl(metadata !6084)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !6085, !noundef !25
  %i.r = icmp eq i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !6086 ; 2 uses
  %i.u = load ptr, ptr %i.o, align 8, !alias.scope !6086, !nonnull !25 ; 2 uses
  br i1 %i.r, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread36, label %.split.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread36: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !6087)
  br label %bb.k

.split.i.i:                                       ; preds = %bb.g, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i
  %storemerge.i.i = phi i64 [ %i.au, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i ], [ %2, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6087)
  %i.v = mul i64 %storemerge.i.i, -1065810590584100411 ; 2 uses
  %i.w = call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 26) ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.split.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.split.i.i ], [ %i.ar, %bb.j ]
  %.pn.i.i.i.i.i = phi i64 [ %i.w, %.split.i.i ], [ %i.as, %bb.j ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.t ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !6088 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.aa
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.aq, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.t
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %.val2.i.i.i.i.i = load i64, ptr %i.ak, align 8, !range !28, !noalias !6089, !noundef !25
  %i.al = icmp eq i64 %storemerge.i.i, %.val2.i.i.i.i.i
  br i1 %i.al, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, label %bb.i, !prof !27

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit, !prof !26

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i.i.i, %i.ar
  br label %bb.h

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.au = load i64, ptr %i.at, align 8, !range !28, !noalias !6086, !noundef !25 ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.g
  br i1 %i.av, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %.split.i.i

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit: ; preds = %._crit_edge.i.i.i.i
  %i.aw = icmp eq i64 %storemerge.i.i, %i.g
  br i1 %i.aw, label %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread36, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !6090
  %i.ax = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !6090 ; 7 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.p, !prof !26

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #62
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa7runtime14BlockedOnInnerEBF_(ptr nonnull %i.k, ptr nonnull %3) #65
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64
  unreachable

_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit.thread: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph4edge4EdgeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB1D_.exit.i.i, %_RNvMNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphNtB2_15DependencyGraph10depends_on.exit
  %i.bb = cmpxchg ptr %i.k, i8 1, i8 0 release monotonic, align 1
  %i.bc = extractvalue { i8, i1 } %i.bb, 1
  br i1 %i.bc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB2f_.exit, label %bb.o, !prof !27

end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs45bxiIjzMqg_5salsa8function4syncNtB4_10ClaimGuard8transfer:bb.a
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !7102, !noundef !25 ; 2 uses
  %i.gn = icmp sgt i8 %i.gm, -1
  br i1 %i.gn, label %bb.ai, label %bb.bz, !prof !26

bb.ai:                                            ; preds = %._crit_edge.i.i93.i.i
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i31, align 16, !noalias !7102
  %i.go = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.gp = bitcast <16 x i1> %i.go to i16          ; 2 uses
  %.not.i6.i.i.i.i = icmp ne i16 %i.gp, 0
  %i.gq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gp, i1 true)
  %i.gr = zext nneg i16 %i.gq to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i31, i64 %i.gr
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !7102
  br label %bb.bz

.lr.ph.i.i94.i.i:                                 ; preds = %bb.ah, %.lr.ph.i.i94.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i94.i.i ], [ %.sroa.0.07.i.i.i.i, %bb.ah ]
  %i.gs = phi i64 [ %i.gt, %.lr.ph.i.i94.i.i ], [ 0, %bb.ah ]
  %i.gt = add i64 %i.gs, 16                       ; 2 uses
  %i.gu = add i64 %i.gt, %.sroa.0.010.i.i.i.i
  %.sroa.0.0.i.i.i.i = and i64 %i.gu, %.val3.i.i.i30 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i.i.i31, i64 %.sroa.0.0.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i = load <16 x i8>, ptr %i.gv, align 1, !noalias !7101
  %i.gw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i, zeroinitializer
  %i.gx = bitcast <16 x i1> %i.gw to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.gx, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i94.i.i, label %._crit_edge.i.i93.i.i, !prof !33

bb.aj:                                            ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i.i.i
  %i.gy = getelementptr inbounds i8, ptr %i.fi, i64 -24 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !range !28, !noalias !7098, !noundef !25 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, %.sroa.05.0.i.i
  br i1 %i.ha, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.hb = getelementptr inbounds i8, ptr %i.fi, i64 -12
  %i.hc = load i32, ptr %i.hb, align 4, !noalias !7098, !noundef !25
  %i.hd = icmp eq i32 %i.hc, %i.ah
  br i1 %i.hd, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.he = getelementptr inbounds i8, ptr %i.fi, i64 -16
  %i.hf = load i32, ptr %i.he, align 8, !range !30, !noalias !7098, !noundef !25
  %i.hg = icmp eq i32 %i.hf, %i.af
  br i1 %i.hg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hh = getelementptr inbounds i8, ptr %i.fi, i64 -8
  %i.hi = load i32, ptr %i.hh, align 8, !noalias !7098, !noundef !25
  %i.hj = icmp eq i32 %i.hi, %i.l
  br i1 %i.hj, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.hk = getelementptr inbounds i8, ptr %i.fi, i64 -16 ; 2 uses
  %.sroa.0231.0.copyload.i.i = load i64, ptr %i.hk, align 8, !noalias !7098 ; 4 uses
  %.sroa.0231.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0231.0.copyload.i.i to i32 ; 3 uses
  %.sroa.0231.sroa.7.0.extract.shift.i.i = lshr i64 %.sroa.0231.0.copyload.i.i, 32 ; 2 uses
  %.sroa.0231.sroa.7.0.extract.trunc.i.i = trunc nuw i64 %.sroa.0231.sroa.7.0.extract.shift.i.i to i32 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.fi, i64 -8
  %.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !7098 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7103)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.j, i64 320 ; 3 uses
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !7103, !noalias !7104, !noundef !25
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %select.unfold328.invoke.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ho = mul i64 %.sroa.0231.0.copyload.i.i, -1065810590584100411
  %i.hp = zext i32 %.sroa.8.0.copyload.i.i to i64
  %i.hq = add i64 %i.ho, %i.hp
  %i.hr = mul i64 %i.hq, -1065810590584100411     ; 2 uses
  %i.hs = tail call noundef i64 @llvm.fshl.i64(i64 %i.hr, i64 %i.hr, i64 26) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7106)
  %i.ht = lshr i64 %i.hs, 57
  %i.hu = trunc nuw nsw i64 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.j, i64 304 ; 3 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !7107, !noalias !7108, !noundef !25 ; 2 uses
  %i.hx = load ptr, ptr %i.ek, align 8, !alias.scope !7107, !noalias !7108, !nonnull !25, !noundef !25 ; 2 uses
  %i.hy = insertelement <16 x i8> poison, i8 %i.hu, i64 0
  %i.hz = shufflevector <16 x i8> %i.hy, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %.sroa.9.0.i.i.i95.i.i = phi i64 [ 0, %bb.ao ], [ %i.ix, %bb.ar ]
  %.pn.i.i.i96.i.i = phi i64 [ %i.hs, %bb.ao ], [ %i.iy, %bb.ar ]
  %.sroa.01.0.i.i.i97.i.i = and i64 %.pn.i.i.i96.i.i, %i.hw ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.sroa.01.0.i.i.i97.i.i
  %.sroa.0.0.copyload.i27.i.i98.i.i = load <16 x i8>, ptr %i.ia, align 1, !noalias !7109 ; 2 uses
  %i.ib = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i98.i.i, %i.hz
  %i.ic = bitcast <16 x i1> %i.ib to i16          ; 2 uses
  %.not.i.not33.i.i99.i.i = icmp eq i16 %i.ic, 0
  br i1 %.not.i.not33.i.i99.i.i, label %._crit_edge.i.i103.i.i, label %.lr.ph.i.i100.i.i

.lr.ph.i.i100.i.i:                                ; preds = %bb.ap, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i
  %.sroa.06.0.i34.i.i101.i.i = phi i16 [ %i.iw, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i ], [ %i.ic, %bb.ap ] ; 3 uses
  %i.id = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i101.i.i, i1 true)
  %i.ie = zext nneg i16 %i.id to i64
  %i.if = add i64 %.sroa.01.0.i.i.i97.i.i, %i.ie
  %i.ig = and i64 %i.if, %i.hw
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = getelementptr inbounds [72 x i8], ptr %i.hx, i64 %i.ih ; 6 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -68
  %i.ik = load i32, ptr %i.ij, align 4, !alias.scope !7110, !noalias !7111, !noundef !25
  %i.il = icmp eq i32 %i.ik, %.sroa.0231.sroa.7.0.extract.trunc.i.i
  br i1 %i.il, label %bb.aq, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i, !prof !29

bb.aq:                                            ; preds = %.lr.ph.i.i100.i.i
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 -72
  %i.in = load i32, ptr %i.im, align 4, !range !30, !alias.scope !7110, !noalias !7111, !noundef !25
  %i.io = icmp eq i32 %i.in, %.sroa.0231.sroa.0.0.extract.trunc.i.i
  br i1 %i.io, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i: ; preds = %bb.aq
  %i.ip = getelementptr inbounds i8, ptr %i.ii, i64 -64
  %i.iq = load i32, ptr %i.ip, align 4, !alias.scope !7110, !noalias !7111, !noundef !25
  %i.ir = icmp eq i32 %.sroa.8.0.copyload.i.i, %i.iq
  br i1 %i.ir, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i, !prof !31

._crit_edge.i.i103.i.i:                           ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i, %bb.ap
  %i.is = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i98.i.i, splat (i8 -1)
  %i.it = bitcast <16 x i1> %i.is to i16
  %i.iu = icmp eq i16 %i.it, 0
  br i1 %i.iu, label %bb.ar, label %select.unfold328.invoke.i.i, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i, %bb.aq, %.lr.ph.i.i100.i.i
  %i.iv = add i16 %.sroa.06.0.i34.i.i101.i.i, -1
  %i.iw = and i16 %i.iv, %.sroa.06.0.i34.i.i101.i.i ; 2 uses
  %.not.i.not.i.i102.i.i = icmp eq i16 %i.iw, 0
  br i1 %.not.i.not.i.i102.i.i, label %._crit_edge.i.i103.i.i, label %.lr.ph.i.i100.i.i

bb.ar:                                            ; preds = %._crit_edge.i.i103.i.i
  %i.ix = add i64 %.sroa.9.0.i.i.i95.i.i, 16      ; 2 uses
  %i.iy = add i64 %.sroa.01.0.i.i.i97.i.i, %i.ix
  br label %bb.ap

bb.as:                                            ; preds = %bb.am
  %i.iz = cmpxchg ptr %i.bz, i8 1, i8 0 release monotonic, align 1, !noalias !7098
  %i.ja = extractvalue { i8, i1 } %i.iz, 1
  br i1 %i.ja, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit.i.i, label %bb.at, !prof !27

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs1_NtCs6ZNDpZDiPlA_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.bz, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsejIXhd4qXh6_8lock_api5mutex10MutexGuardNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa2id2IdNtNtNtB38_8function4sync9SyncStateNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB38_.exit.i.i unwind label %bb.by, !noalias !7098

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i.i.i
  %i.jb = getelementptr inbounds i8, ptr %i.ii, i64 -56 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %i.ii, i64 -8 ; 3 uses
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !7112, !noalias !7113, !noundef !25 ; 2 uses
  %i.je = icmp ugt i64 %i.jd, 4                   ; 2 uses
  %i.jf = load ptr, ptr %i.jb, align 8, !alias.scope !7112, !noalias !7113, !nonnull !25
  %i.jg = getelementptr inbounds i8, ptr %i.ii, i64 -48 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !7112, !noalias !7113
  %.sink10.i.i.i.i = select i1 %i.je, ptr %i.jf, ptr %i.jb ; 4 uses
  %.sink9.i.i.i.i = select i1 %i.je, i64 %i.jh, i64 %i.jd ; 4 uses
  %.idx.i.i.i = mul nuw nsw i64 %.sink9.i.i.i.i, 12
  %i.ji = getelementptr inbounds nuw i8, ptr %.sink10.i.i.i.i, i64 %.idx.i.i.i
  %i.jj = icmp eq i64 %.sink9.i.i.i.i, 0
  br i1 %i.jj, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i.i, label %.lr.ph.i.i105.i.i

.lr.ph.i.i105.i.i:                                ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i.i
  %.sroa.02.09.i.i.i.i = phi i64 [ %i.ju, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i.i ], [ 0, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i ] ; 3 uses
  %i.jk = phi ptr [ %i.jl, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i.i ], [ %.sink10.i.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i ] ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 12 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !alias.scope !7114, !noalias !7115, !noundef !25
  %i.jo = icmp eq i32 %i.jn, %i.ey
  br i1 %i.jo, label %bb.au, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i105.i.i
  %i.jp = load i32, ptr %i.jk, align 4, !range !30, !alias.scope !7114, !noalias !7115, !noundef !25
  %i.jq = icmp eq i32 %i.jp, %i.ez
  br i1 %i.jq, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i.i: ; preds = %bb.au
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !alias.scope !7114, !noalias !7115, !noundef !25
  %i.jt = icmp eq i32 %i.js, %i.ci
  br i1 %i.jt, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i.i, %bb.au, %.lr.ph.i.i105.i.i
  %i.ju = add nuw nsw i64 %.sroa.02.09.i.i.i.i, 1
  %i.jv = icmp eq ptr %i.jl, %i.ji
  br i1 %i.jv, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i.i, label %.lr.ph.i.i105.i.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i.i.i
  %i.jw = icmp ult i64 %.sroa.02.09.i.i.i.i, %.sink9.i.i.i.i
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = getelementptr [12 x i8], ptr %.sink10.i.i.i.i, i64 %.sink9.i.i.i.i
  %i.jy = getelementptr i8, ptr %i.jx, i64 -12    ; 2 uses
  %i.jz = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i.i.i, i64 %.sroa.02.09.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.jy, i64 12, i1 false), !noalias !7116
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jy, ptr noundef nonnull align 4 dereferenceable(12) %i.jz, i64 12, i1 false), !noalias !7116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jz, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !7116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ka = load i64, ptr %i.jc, align 8, !alias.scope !7117, !noalias !7118, !noundef !25
  %i.kb = icmp ugt i64 %i.ka, 4
  %.sink8.i12.i.i.i.i = select i1 %i.kb, ptr %i.jg, ptr %i.jc ; 2 uses
  %i.kc = load i64, ptr %.sink8.i12.i.i.i.i, align 8, !alias.scope !7119, !noalias !7116, !noundef !25 ; 2 uses
  %2 = icmp ne i64 %i.kc, 0
  tail call void @llvm.assume(i1 %2)
  %i.kd = add i64 %i.kc, -1
  store i64 %i.kd, ptr %.sink8.i12.i.i.i.i, align 8, !alias.scope !7119, !noalias !7116
  br label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i.i

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hk, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, i64 12, i1 false), !noalias !7087
  store i64 %.sroa.05.0.i.i, ptr %i.gy, align 8, !noalias !7098
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7120)
  %i.ke = mul i64 %i.ae, -1065810590584100411
  %i.kf = add i64 %i.ke, %i.m
  %i.kg = mul i64 %i.kf, -1065810590584100411     ; 2 uses
  %i.kh = tail call noundef i64 @llvm.fshl.i64(i64 %i.kg, i64 %i.kg, i64 26) ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7122)
  %i.ki = lshr i64 %i.kh, 57
  %i.kj = trunc nuw nsw i64 %i.ki to i8           ; 7 uses
  %i.kk = load i64, ptr %i.es, align 8, !alias.scope !7123, !noalias !7124, !noundef !25 ; 4 uses
  %i.kl = load ptr, ptr %i.ej, align 8, !alias.scope !7123, !noalias !7124, !nonnull !25, !noundef !25 ; 4 uses
  %i.km = insertelement <16 x i8> poison, i8 %i.kj, i64 0
  %i.kn = shufflevector <16 x i8> %i.km, <16 x i8> poison, <16 x i32> zeroinitializer ; 7 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i.i
  %.sroa.9.0.i.i.i106.i.i = phi i64 [ 0, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i.i ], [ %i.ll, %bb.ax ]
  %.pn.i.i.i107.i.i = phi i64 [ %i.kh, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit.i.i ], [ %i.lm, %bb.ax ]
  %.sroa.01.0.i.i.i108.i.i = and i64 %.pn.i.i.i107.i.i, %i.kk ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.sroa.01.0.i.i.i108.i.i
  %.sroa.0.0.copyload.i27.i.i109.i.i = load <16 x i8>, ptr %i.ko, align 1, !noalias !7125 ; 2 uses
  %i.kp = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i109.i.i, %i.kn
  %i.kq = bitcast <16 x i1> %i.kp to i16          ; 2 uses
  %.not.i.not33.i.i110.i.i = icmp eq i16 %i.kq, 0
  br i1 %.not.i.not33.i.i110.i.i, label %._crit_edge.i.i115.i.i, label %.lr.ph.i.i111.i.i

.lr.ph.i.i111.i.i:                                ; preds = %bb.av, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i113.i.i
  %.sroa.06.0.i34.i.i112.i.i = phi i16 [ %i.lk, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i113.i.i ], [ %i.kq, %bb.av ] ; 3 uses
  %i.kr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i112.i.i, i1 true)
  %i.ks = zext nneg i16 %i.kr to i64
  %i.kt = add i64 %.sroa.01.0.i.i.i108.i.i, %i.ks
  %i.ku = and i64 %i.kt, %i.kk
  %i.kv = sub nsw i64 0, %i.ku
  %i.kw = getelementptr inbounds [40 x i8], ptr %i.kl, i64 %i.kv ; 6 uses
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 -36
  %i.ky = load i32, ptr %i.kx, align 4, !alias.scope !7126, !noalias !7127, !noundef !25
  %i.kz = icmp eq i32 %i.ky, %i.ah
  br i1 %i.kz, label %bb.aw, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i113.i.i, !prof !29

bb.aw:                                            ; preds = %.lr.ph.i.i111.i.i
  %i.la = getelementptr inbounds i8, ptr %i.kw, i64 -40
  %i.lb = load i32, ptr %i.la, align 4, !range !30, !alias.scope !7126, !noalias !7127, !noundef !25
  %i.lc = icmp eq i32 %i.lb, %i.af
  br i1 %i.lc, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i119.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i113.i.i, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i119.i.i: ; preds = %bb.aw
  %i.ld = getelementptr inbounds i8, ptr %i.kw, i64 -32
  %i.le = load i32, ptr %i.ld, align 4, !alias.scope !7126, !noalias !7127, !noundef !25
  %i.lf = icmp eq i32 %i.le, %i.l
  br i1 %i.lf, label %.lr.ph.i.i34, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i113.i.i, !prof !31

._crit_edge.i.i115.i.i:                           ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i113.i.i, %bb.av
  %i.lg = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i109.i.i, splat (i8 -1)
  %i.lh = bitcast <16 x i1> %i.lg to i16
  %i.li = icmp eq i16 %i.lh, 0
  br i1 %i.li, label %bb.ax, label %bb.ay, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i113.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i119.i.i, %bb.aw, %.lr.ph.i.i111.i.i
  %i.lj = add i16 %.sroa.06.0.i34.i.i112.i.i, -1
  %i.lk = and i16 %i.lj, %.sroa.06.0.i34.i.i112.i.i ; 2 uses
  %.not.i.not.i.i114.i.i = icmp eq i16 %i.lk, 0
  br i1 %.not.i.not.i.i114.i.i, label %._crit_edge.i.i115.i.i, label %.lr.ph.i.i111.i.i

bb.ax:                                            ; preds = %._crit_edge.i.i115.i.i
  %i.ll = add i64 %.sroa.9.0.i.i.i106.i.i, 16     ; 2 uses
  %i.lm = add i64 %.sroa.01.0.i.i.i108.i.i, %i.ll
  br label %bb.av

bb.ay:                                            ; preds = %._crit_edge.i.i115.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !7128, !noalias !7129, !noundef !25
  %i.lp = icmp eq i64 %i.lo, 0
  br i1 %i.lp, label %bb.az, label %.loopexit363.i.i, !prof !26

bb.az:                                            ; preds = %bb.ay
  %i.lq = invoke { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ek, i1 noundef zeroext true)
          to label %.loopexit363.i.i unwind label %.loopexit.split-lp.i.i, !noalias !7098 ; 0 uses

.lr.ph.i.i34:                                     ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i119.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.ls = getelementptr inbounds i8, ptr %i.kw, i64 -16
  %.sroa.0258.0.copyload.i54.i = load i64, ptr %i.ls, align 8, !noalias !7098 ; 3 uses
  %.sroa.0258.sroa.0.0.extract.trunc.i55.i = trunc i64 %.sroa.0258.0.copyload.i54.i to i32 ; 2 uses
  %.sroa.0258.sroa.7.0.extract.shift.i56.i = lshr i64 %.sroa.0258.0.copyload.i54.i, 32 ; 2 uses
  %.sroa.8261.0..sroa_idx.i58.i = getelementptr inbounds i8, ptr %i.kw, i64 -8
  %.sroa.8261.0.copyload.i59.i = load i32, ptr %.sroa.8261.0..sroa_idx.i58.i, align 8, !noalias !7098 ; 2 uses
  %i.lt = icmp eq i64 %i.ex, %.sroa.0258.sroa.7.0.extract.shift.i56.i
  %i.lu = icmp eq i32 %i.ez, %.sroa.0258.sroa.0.0.extract.trunc.i55.i
  %or.cond361.i60.i = and i1 %i.lt, %i.lu
  %i.lv = icmp eq i32 %.sroa.8261.0.copyload.i59.i, %i.ci
  %or.cond362.i61.i = select i1 %or.cond361.i60.i, i1 %i.lv, i1 false
  br i1 %or.cond362.i61.i, label %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i._crit_edge.i, label %.lr.ph.i

_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i136.i.i
  %i.lw = getelementptr inbounds i8, ptr %i.mr, i64 -16
  %.sroa.0258.0.copyload.i.i = load i64, ptr %i.lw, align 8, !noalias !7098 ; 3 uses
  %.sroa.0258.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0258.0.copyload.i.i to i32 ; 2 uses
  %.sroa.0258.sroa.7.0.extract.shift.i.i = lshr i64 %.sroa.0258.0.copyload.i.i, 32 ; 2 uses
  %.sroa.8261.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.mr, i64 -8
  %.sroa.8261.0.copyload.i.i = load i32, ptr %.sroa.8261.0..sroa_idx.i.i, align 8, !noalias !7098 ; 2 uses
  %i.lx = icmp eq i64 %i.ex, %.sroa.0258.sroa.7.0.extract.shift.i.i
  %i.ly = icmp eq i32 %i.ez, %.sroa.0258.sroa.0.0.extract.trunc.i.i
  %or.cond361.i.i = and i1 %i.lx, %i.ly
  %i.lz = icmp eq i32 %.sroa.8261.0.copyload.i.i, %i.ci
  %or.cond362.i.i = select i1 %or.cond361.i.i, i1 %i.lz, i1 false
  br i1 %or.cond362.i.i, label %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i34, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i
  %.sroa.8261.0.copyload.i65.i = phi i32 [ %.sroa.8261.0.copyload.i.i, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i ], [ %.sroa.8261.0.copyload.i59.i, %.lr.ph.i.i34 ] ; 3 uses
  %.sroa.0258.sroa.7.0.extract.trunc.i64.in.i = phi i64 [ %.sroa.0258.sroa.7.0.extract.shift.i.i, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i ], [ %.sroa.0258.sroa.7.0.extract.shift.i56.i, %.lr.ph.i.i34 ]
  %.sroa.0258.sroa.0.0.extract.trunc.i63.i = phi i32 [ %.sroa.0258.sroa.0.0.extract.trunc.i.i, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i ], [ %.sroa.0258.sroa.0.0.extract.trunc.i55.i, %.lr.ph.i.i34 ] ; 2 uses
  %.sroa.0258.0.copyload.i62.i = phi i64 [ %.sroa.0258.0.copyload.i.i, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i ], [ %.sroa.0258.0.copyload.i54.i, %.lr.ph.i.i34 ]
  %.sroa.0258.sroa.7.0.extract.trunc.i64.i = trunc nuw i64 %.sroa.0258.sroa.7.0.extract.trunc.i64.in.i to i32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7130)
  %i.ma = mul i64 %.sroa.0258.0.copyload.i62.i, -1065810590584100411
  %i.mb = zext i32 %.sroa.8261.0.copyload.i65.i to i64
  %i.mc = add i64 %i.ma, %i.mb
  %i.md = mul i64 %i.mc, -1065810590584100411     ; 2 uses
  %i.me = tail call noundef i64 @llvm.fshl.i64(i64 %i.md, i64 %i.md, i64 26) ; 2 uses
  %i.mf = lshr i64 %i.me, 57
  %i.mg = trunc nuw nsw i64 %i.mf to i8
  %i.mh = insertelement <16 x i8> poison, i8 %i.mg, i64 0
  %i.mi = shufflevector <16 x i8> %i.mh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %.lr.ph.i
  %.sroa.9.0.i.i.i123.i.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ng, %bb.bc ]
  %.pn.i.i.i124.i.i = phi i64 [ %i.me, %.lr.ph.i ], [ %i.nh, %bb.bc ]
  %.sroa.01.0.i.i.i125.i.i = and i64 %.pn.i.i.i124.i.i, %i.kk ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.sroa.01.0.i.i.i125.i.i
  %.sroa.0.0.copyload.i27.i.i126.i.i = load <16 x i8>, ptr %i.mj, align 1, !noalias !7131 ; 2 uses
  %i.mk = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i126.i.i, %i.mi
  %i.ml = bitcast <16 x i1> %i.mk to i16          ; 2 uses
  %.not.i.not33.i.i127.i.i = icmp eq i16 %i.ml, 0
  br i1 %.not.i.not33.i.i127.i.i, label %._crit_edge.i.i132.i.i, label %.lr.ph.i.i128.i.i

.lr.ph.i.i128.i.i:                                ; preds = %bb.ba, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i130.i.i
  %.sroa.06.0.i34.i.i129.i.i = phi i16 [ %i.nf, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i130.i.i ], [ %i.ml, %bb.ba ] ; 3 uses
  %i.mm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i129.i.i, i1 true)
  %i.mn = zext nneg i16 %i.mm to i64
  %i.mo = add i64 %.sroa.01.0.i.i.i125.i.i, %i.mn
  %i.mp = and i64 %i.mo, %i.kk
  %i.mq = sub nsw i64 0, %i.mp
  %i.mr = getelementptr inbounds [40 x i8], ptr %i.kl, i64 %i.mq ; 6 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -36
  %i.mt = load i32, ptr %i.ms, align 4, !alias.scope !7132, !noalias !7133, !noundef !25
  %i.mu = icmp eq i32 %i.mt, %.sroa.0258.sroa.7.0.extract.trunc.i64.i
  br i1 %i.mu, label %bb.bb, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i130.i.i, !prof !29

bb.bb:                                            ; preds = %.lr.ph.i.i128.i.i
  %i.mv = getelementptr inbounds i8, ptr %i.mr, i64 -40
  %i.mw = load i32, ptr %i.mv, align 4, !range !30, !alias.scope !7132, !noalias !7133, !noundef !25
  %i.mx = icmp eq i32 %i.mw, %.sroa.0258.sroa.0.0.extract.trunc.i63.i
  br i1 %i.mx, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i136.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i130.i.i, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i136.i.i: ; preds = %bb.bb
  %i.my = getelementptr inbounds i8, ptr %i.mr, i64 -32
  %i.mz = load i32, ptr %i.my, align 4, !alias.scope !7132, !noalias !7133, !noundef !25
  %i.na = icmp eq i32 %i.mz, %.sroa.8261.0.copyload.i65.i
  br i1 %i.na, label %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i130.i.i, !prof !31

._crit_edge.i.i132.i.i:                           ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i130.i.i, %bb.ba
  %i.nb = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i126.i.i, splat (i8 -1)
  %i.nc = bitcast <16 x i1> %i.nb to i16
  %i.nd = icmp eq i16 %i.nc, 0
  br i1 %i.nd, label %bb.bc, label %bb.bd, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i130.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i136.i.i, %bb.bb, %.lr.ph.i.i128.i.i
  %i.ne = add i16 %.sroa.06.0.i34.i.i129.i.i, -1
  %i.nf = and i16 %i.ne, %.sroa.06.0.i34.i.i129.i.i ; 2 uses
  %.not.i.not.i.i131.i.i = icmp eq i16 %i.nf, 0
  br i1 %.not.i.not.i.i131.i.i, label %._crit_edge.i.i132.i.i, label %.lr.ph.i.i128.i.i

bb.bc:                                            ; preds = %._crit_edge.i.i132.i.i
  %i.ng = add i64 %.sroa.9.0.i.i.i123.i.i, 16     ; 2 uses
  %i.nh = add i64 %.sroa.01.0.i.i.i125.i.i, %i.ng
  br label %bb.ba

bb.bd:                                            ; preds = %._crit_edge.i.i132.i.i
  %i.ni = load i64, ptr %i.lr, align 8, !alias.scope !7134, !noalias !7135, !noundef !25
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %bb.be, label %.loopexit363.i.i, !prof !26

bb.be:                                            ; preds = %bb.bd
  %i.nk = invoke { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ek, i1 noundef zeroext true)
          to label %.loopexit363.i.i unwind label %.loopexit364.i.i, !noalias !7098 ; 0 uses

_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i._crit_edge.i: ; preds = %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i, %.lr.ph.i.i34
  %.sroa.7.0.copyload.le.i.i = phi i32 [ %i.l, %.lr.ph.i.i34 ], [ %.sroa.8261.0.copyload.i65.i, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i ] ; 2 uses
  %.sroa.6.0.copyload.le.i.i = phi i32 [ %i.ah, %.lr.ph.i.i34 ], [ %.sroa.0258.sroa.7.0.extract.trunc.i64.i, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i ] ; 2 uses
  %.sroa.0252.0.copyload.le.i.i = phi i32 [ %i.af, %.lr.ph.i.i34 ], [ %.sroa.0258.sroa.0.0.extract.trunc.i63.i, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i ] ; 2 uses
  %.sroa.534.1403.i.lcssa53.i = phi ptr [ %i.kw, %.lr.ph.i.i34 ], [ %i.mr, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i.loopexit.i ] ; 4 uses
  %i.nl = getelementptr inbounds i8, ptr %.sroa.534.1403.i.lcssa53.i, i64 -16
  %.sroa.8261.0..sroa_idx.i.le.i = getelementptr inbounds i8, ptr %.sroa.534.1403.i.lcssa53.i, i64 -8
  %i.nm = getelementptr inbounds i8, ptr %.sroa.534.1403.i.lcssa53.i, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7136)
  %i.nn = load i64, ptr %i.hl, align 8, !alias.scope !7136, !noalias !7137, !noundef !25
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %select.unfold328.invoke.i.i, label %bb.bf

bb.bf:                                            ; preds = %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7139)
  %i.np = load i64, ptr %i.hv, align 8, !alias.scope !7140, !noalias !7141, !noundef !25 ; 2 uses
  %i.nq = load ptr, ptr %i.ek, align 8, !alias.scope !7140, !noalias !7141, !nonnull !25, !noundef !25 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.sroa.9.0.i.i.i140.i.i = phi i64 [ 0, %bb.bf ], [ %i.oo, %bb.bi ]
  %.pn.i.i.i141.i.i = phi i64 [ %i.ep, %bb.bf ], [ %i.op, %bb.bi ]
  %.sroa.01.0.i.i.i142.i.i = and i64 %.pn.i.i.i141.i.i, %i.np ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sroa.01.0.i.i.i142.i.i
  %.sroa.0.0.copyload.i27.i.i143.i.i = load <16 x i8>, ptr %i.nr, align 1, !noalias !7142 ; 2 uses
  %i.ns = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i143.i.i, %i.ew
  %i.nt = bitcast <16 x i1> %i.ns to i16          ; 2 uses
  %.not.i.not33.i.i144.i.i = icmp eq i16 %i.nt, 0
  br i1 %.not.i.not33.i.i144.i.i, label %._crit_edge.i.i149.i.i, label %.lr.ph.i.i145.i.i

.lr.ph.i.i145.i.i:                                ; preds = %bb.bg, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i147.i.i
  %.sroa.06.0.i34.i.i146.i.i = phi i16 [ %i.on, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i147.i.i ], [ %i.nt, %bb.bg ] ; 3 uses
  %i.nu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i146.i.i, i1 true)
  %i.nv = zext nneg i16 %i.nu to i64
  %i.nw = add i64 %.sroa.01.0.i.i.i142.i.i, %i.nv
  %i.nx = and i64 %i.nw, %i.np
  %i.ny = sub nsw i64 0, %i.nx
  %i.nz = getelementptr inbounds [72 x i8], ptr %i.nq, i64 %i.ny ; 6 uses
  %i.oa = getelementptr inbounds i8, ptr %i.nz, i64 -68
  %i.ob = load i32, ptr %i.oa, align 4, !alias.scope !7143, !noalias !7144, !noundef !25
  %i.oc = icmp eq i32 %i.ob, %i.ey
  br i1 %i.oc, label %bb.bh, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i147.i.i, !prof !29

bb.bh:                                            ; preds = %.lr.ph.i.i145.i.i
  %i.od = getelementptr inbounds i8, ptr %i.nz, i64 -72
  %i.oe = load i32, ptr %i.od, align 4, !range !30, !alias.scope !7143, !noalias !7144, !noundef !25
  %i.of = icmp eq i32 %i.oe, %i.ez
  br i1 %i.of, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i154.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i147.i.i, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i154.i.i: ; preds = %bb.bh
  %i.og = getelementptr inbounds i8, ptr %i.nz, i64 -64
  %i.oh = load i32, ptr %i.og, align 4, !alias.scope !7143, !noalias !7144, !noundef !25
  %i.oi = icmp eq i32 %i.ci, %i.oh
  br i1 %i.oi, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit155.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i147.i.i, !prof !31

._crit_edge.i.i149.i.i:                           ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i147.i.i, %bb.bg
  %i.oj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i143.i.i, splat (i8 -1)
  %i.ok = bitcast <16 x i1> %i.oj to i16
  %i.ol = icmp eq i16 %i.ok, 0
  br i1 %i.ol, label %bb.bi, label %select.unfold328.invoke.i.i, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i147.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i154.i.i, %bb.bh, %.lr.ph.i.i145.i.i
  %i.om = add i16 %.sroa.06.0.i34.i.i146.i.i, -1
  %i.on = and i16 %i.om, %.sroa.06.0.i34.i.i146.i.i ; 2 uses
  %.not.i.not.i.i148.i.i = icmp eq i16 %i.on, 0
  br i1 %.not.i.not.i.i148.i.i, label %._crit_edge.i.i149.i.i, label %.lr.ph.i.i145.i.i

bb.bi:                                            ; preds = %._crit_edge.i.i149.i.i
  %i.oo = add i64 %.sroa.9.0.i.i.i140.i.i, 16     ; 2 uses
  %i.op = add i64 %.sroa.01.0.i.i.i142.i.i, %i.oo
  br label %bb.bg

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit155.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i154.i.i
  %i.oq = getelementptr inbounds i8, ptr %i.nz, i64 -56 ; 2 uses
  %i.or = getelementptr inbounds i8, ptr %i.nz, i64 -8 ; 3 uses
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !7145, !noalias !7146, !noundef !25 ; 2 uses
  %i.ot = icmp ugt i64 %i.os, 4                   ; 2 uses
  %i.ou = load ptr, ptr %i.oq, align 8, !alias.scope !7145, !noalias !7146, !nonnull !25
  %i.ov = getelementptr inbounds i8, ptr %i.nz, i64 -48 ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8, !alias.scope !7145, !noalias !7146
  %.sink10.i.i156.i.i = select i1 %i.ot, ptr %i.ou, ptr %i.oq ; 4 uses
  %.sink9.i.i157.i.i = select i1 %i.ot, i64 %i.ow, i64 %i.os ; 4 uses
  %.idx.i158.i.i = mul nuw nsw i64 %.sink9.i.i157.i.i, 12
  %i.ox = getelementptr inbounds nuw i8, ptr %.sink10.i.i156.i.i, i64 %.idx.i158.i.i
  %i.oy = icmp eq i64 %.sink9.i.i157.i.i, 0
  br i1 %i.oy, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit167.i.i, label %.lr.ph.i.i159.i.i

.lr.ph.i.i159.i.i:                                ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit155.i.i, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i161.i.i
  %.sroa.02.09.i.i160.i.i = phi i64 [ %i.pj, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i161.i.i ], [ 0, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit155.i.i ] ; 3 uses
  %i.oz = phi ptr [ %i.pa, %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i161.i.i ], [ %.sink10.i.i156.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit155.i.i ] ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 12 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  %i.pc = load i32, ptr %i.pb, align 4, !alias.scope !7147, !noalias !7148, !noundef !25
  %i.pd = icmp eq i32 %i.pc, %.sroa.6.0.copyload.le.i.i
  br i1 %i.pd, label %bb.bj, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i161.i.i

bb.bj:                                            ; preds = %.lr.ph.i.i159.i.i
  %i.pe = load i32, ptr %i.oz, align 4, !range !30, !alias.scope !7147, !noalias !7148, !noundef !25
  %i.pf = icmp eq i32 %i.pe, %.sroa.0252.0.copyload.le.i.i
  br i1 %i.pf, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i162.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i161.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i162.i.i: ; preds = %bb.bj
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.ph = load i32, ptr %i.pg, align 4, !alias.scope !7147, !noalias !7148, !noundef !25
  %i.pi = icmp eq i32 %i.ph, %.sroa.7.0.copyload.le.i.i
  br i1 %i.pi, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i163.i.i, label %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i161.i.i

_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i161.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i162.i.i, %bb.bj, %.lr.ph.i.i159.i.i
  %i.pj = add nuw nsw i64 %.sroa.02.09.i.i160.i.i, 1
  %i.pk = icmp eq ptr %i.pa, %i.ox
  br i1 %i.pk, label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit167.i.i, label %.lr.ph.i.i159.i.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i163.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.i.i162.i.i
  %i.pl = icmp ult i64 %.sroa.02.09.i.i160.i.i, %.sink9.i.i157.i.i
  tail call void @llvm.assume(i1 %i.pl)
  %i.pm = getelementptr [12 x i8], ptr %.sink10.i.i156.i.i, i64 %.sink9.i.i157.i.i
  %i.pn = getelementptr i8, ptr %i.pm, i64 -12    ; 2 uses
  %i.po = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i156.i.i, i64 %.sroa.02.09.i.i160.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.pn, i64 12, i1 false), !noalias !7149
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pn, ptr noundef nonnull align 4 dereferenceable(12) %i.po, i64 12, i1 false), !noalias !7149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.po, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !7149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.pp = load i64, ptr %i.or, align 8, !alias.scope !7150, !noalias !7151, !noundef !25
  %i.pq = icmp ugt i64 %i.pp, 4
  %.sink8.i12.i.i164.i.i = select i1 %i.pq, ptr %i.ov, ptr %i.or ; 2 uses
  %i.pr = load i64, ptr %.sink8.i12.i.i164.i.i, align 8, !alias.scope !7152, !noalias !7149, !noundef !25 ; 2 uses
  %3 = icmp ne i64 %i.pr, 0
  tail call void @llvm.assume(i1 %3)
  %i.ps = add i64 %i.pr, -1
  store i64 %i.ps, ptr %.sink8.i12.i.i164.i.i, align 8, !alias.scope !7152, !noalias !7149
  br label %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit167.i.i

select.unfold328.invoke.i.i:                      ; preds = %._crit_edge.i.i103.i.i, %._crit_edge.i.i149.i.i, %._crit_edge.i.i177.i.i, %._crit_edge.i.i.i215.i.i, %bb.cg, %bb.bl, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i._crit_edge.i, %bb.an
  %i.pt = phi ptr [ @120, %bb.an ], [ @122, %bb.bl ], [ @121, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBZ_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_.exit139.i._crit_edge.i ], [ @121, %._crit_edge.i.i149.i.i ], [ @122, %._crit_edge.i.i177.i.i ], [ @126, %._crit_edge.i.i.i215.i.i ], [ @126, %bb.cg ], [ @120, %._crit_edge.i.i103.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pt) #62
          to label %select.unfold328.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !7098

select.unfold328.cont.i.i:                        ; preds = %select.unfold328.invoke.i.i
  unreachable

_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit167.i.i: ; preds = %_RNCNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB7_8SmallSetNtNtBb_3key16DatabaseKeyIndexKj4_E6remove0Bb_.exit.thread.i.i161.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E11swap_removeBM_.exit.i163.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit155.i.i
  %i.pu = icmp eq i64 %i.ag, %.sroa.0231.sroa.7.0.extract.shift.i.i
  br i1 %i.pu, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit167.i.i
  %i.pv = icmp eq i32 %i.af, %.sroa.0231.sroa.0.0.extract.trunc.i.i
  %i.pw = icmp eq i32 %.sroa.8.0.copyload.i.i, %i.l
  %or.cond.i.i = select i1 %i.pv, i1 %i.pw, i1 false
  br i1 %or.cond.i.i, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_RNvMs0_NtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graphINtB5_8SmallSetNtNtB9_3key16DatabaseKeyIndexKj4_E6removeB9_.exit167.i.i
  store i64 %i.gz, ptr %i.nm, align 8, !noalias !7098
  store i64 %.sroa.0231.0.copyload.i.i, ptr %i.nl, align 8, !noalias !7098
  store i32 %.sroa.8.0.copyload.i.i, ptr %.sroa.8261.0..sroa_idx.i.le.i, align 8, !noalias !7098
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7153)
  %i.px = load i64, ptr %i.hl, align 8, !alias.scope !7153, !noalias !7154, !noundef !25
  %i.py = icmp eq i64 %i.px, 0
  br i1 %i.py, label %select.unfold328.invoke.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7156)
  %i.pz = load i64, ptr %i.hv, align 8, !alias.scope !7157, !noalias !7158, !noundef !25 ; 2 uses
  %i.qa = load ptr, ptr %i.ek, align 8, !alias.scope !7157, !noalias !7158, !nonnull !25, !noundef !25 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %bb.bm
  %.sroa.9.0.i.i.i168.i.i = phi i64 [ 0, %bb.bm ], [ %i.qy, %bb.bp ]
  %.pn.i.i.i169.i.i = phi i64 [ %i.hs, %bb.bm ], [ %i.qz, %bb.bp ]
  %.sroa.01.0.i.i.i170.i.i = and i64 %.pn.i.i.i169.i.i, %i.pz ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.sroa.01.0.i.i.i170.i.i
  %.sroa.0.0.copyload.i27.i.i171.i.i = load <16 x i8>, ptr %i.qb, align 1, !noalias !7159 ; 2 uses
  %i.qc = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i171.i.i, %i.hz
  %i.qd = bitcast <16 x i1> %i.qc to i16          ; 2 uses
  %.not.i.not33.i.i172.i.i = icmp eq i16 %i.qd, 0
  br i1 %.not.i.not33.i.i172.i.i, label %._crit_edge.i.i177.i.i, label %.lr.ph.i.i173.i.i

.lr.ph.i.i173.i.i:                                ; preds = %bb.bn, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i175.i.i
  %.sroa.06.0.i34.i.i174.i.i = phi i16 [ %i.qx, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i175.i.i ], [ %i.qd, %bb.bn ] ; 3 uses
  %i.qe = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i174.i.i, i1 true)
  %i.qf = zext nneg i16 %i.qe to i64
  %i.qg = add i64 %.sroa.01.0.i.i.i170.i.i, %i.qf
  %i.qh = and i64 %i.qg, %i.pz
  %i.qi = sub nsw i64 0, %i.qh
  %i.qj = getelementptr inbounds [72 x i8], ptr %i.qa, i64 %i.qi ; 6 uses
  %i.qk = getelementptr inbounds i8, ptr %i.qj, i64 -68
  %i.ql = load i32, ptr %i.qk, align 4, !alias.scope !7160, !noalias !7161, !noundef !25
  %i.qm = icmp eq i32 %i.ql, %.sroa.0231.sroa.7.0.extract.trunc.i.i
  br i1 %i.qm, label %bb.bo, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i175.i.i, !prof !29

bb.bo:                                            ; preds = %.lr.ph.i.i173.i.i
  %i.qn = getelementptr inbounds i8, ptr %i.qj, i64 -72
  %i.qo = load i32, ptr %i.qn, align 4, !range !30, !alias.scope !7160, !noalias !7161, !noundef !25
  %i.qp = icmp eq i32 %i.qo, %.sroa.0231.sroa.0.0.extract.trunc.i.i
  br i1 %i.qp, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i182.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i175.i.i, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i182.i.i: ; preds = %bb.bo
  %i.qq = getelementptr inbounds i8, ptr %i.qj, i64 -64
  %i.qr = load i32, ptr %i.qq, align 4, !alias.scope !7160, !noalias !7161, !noundef !25
  %i.qs = icmp eq i32 %.sroa.8.0.copyload.i.i, %i.qr
  br i1 %i.qs, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit183.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i175.i.i, !prof !31

._crit_edge.i.i177.i.i:                           ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i175.i.i, %bb.bn
  %i.qt = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i171.i.i, splat (i8 -1)
  %i.qu = bitcast <16 x i1> %i.qt to i16
  %i.qv = icmp eq i16 %i.qu, 0
  br i1 %i.qv, label %bb.bp, label %select.unfold328.invoke.i.i, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.thread.i.i175.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i182.i.i, %bb.bo, %.lr.ph.i.i173.i.i
  %i.qw = add i16 %.sroa.06.0.i34.i.i174.i.i, -1
  %i.qx = and i16 %i.qw, %.sroa.06.0.i34.i.i174.i.i ; 2 uses
  %.not.i.not.i.i176.i.i = icmp eq i16 %i.qx, 0
  br i1 %.not.i.not.i.i176.i.i, label %._crit_edge.i.i177.i.i, label %.lr.ph.i.i173.i.i

bb.bp:                                            ; preds = %._crit_edge.i.i177.i.i
  %i.qy = add i64 %.sroa.9.0.i.i.i168.i.i, 16     ; 2 uses
  %i.qz = add i64 %.sroa.01.0.i.i.i170.i.i, %i.qy
  br label %bb.bn

bb.bq:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7098
  call fastcc void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBP_EEE6removeBT_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef align 8 dereferenceable(32) %i.ej, ptr noundef nonnull %.sroa.534.1403.i.lcssa53.i), !noalias !7098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7098
  br label %.loopexit363.i.i

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit183.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1C_E0E0BW_.exit.i.i182.i.i
  %i.ra = getelementptr inbounds i8, ptr %i.qj, i64 -56 ; 4 uses
  %i.rb = getelementptr inbounds i8, ptr %i.qj, i64 -8 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !7162, !noalias !7163, !noundef !25 ; 2 uses
  %i.rd = icmp ugt i64 %i.rc, 4                   ; 2 uses
  %i.re = load ptr, ptr %i.ra, align 8, !alias.scope !7162, !noalias !7163, !nonnull !25
  %i.rf = getelementptr inbounds i8, ptr %i.qj, i64 -48 ; 3 uses
  %.sink9.i.i184.i.i = select i1 %i.rd, ptr %i.re, ptr %i.ra
  %.sink8.i.i.i.i = select i1 %i.rd, ptr %i.rf, ptr %i.rb ; 2 uses
  %.sink.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.rc, i64 4)
  %i.rg = load i64, ptr %.sink8.i.i.i.i, align 8, !alias.scope !7164, !noalias !7165, !noundef !25 ; 2 uses
  %i.rh = icmp eq i64 %i.rg, %.sink.i.i.i.i
  br i1 %i.rh, label %bb.br, label %bb.bs, !prof !26

bb.br:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit183.i.i
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ra)
          to label %.noexc187.i.i unwind label %.loopexit.split-lp.i.i, !noalias !7098

.noexc187.i.i:                                    ; preds = %bb.br
  %i.ri = load ptr, ptr %i.ra, align 8, !alias.scope !7164, !noalias !7165, !nonnull !25, !noundef !25
  %.pre.i186.i.i = load i64, ptr %i.rf, align 8, !alias.scope !7164, !noalias !7165
  br label %bb.bs

bb.bs:                                            ; preds = %.noexc187.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit183.i.i
  %i.rj = phi i64 [ %.pre.i186.i.i, %.noexc187.i.i ], [ %i.rg, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit183.i.i ]
  %.sroa.01.0.i.i.i35 = phi ptr [ %i.rf, %.noexc187.i.i ], [ %.sink8.i.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit183.i.i ] ; 2 uses
  %.sroa.0.0.i185.i.i = phi ptr [ %i.ri, %.noexc187.i.i ], [ %.sink9.i.i184.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBS_7runtime16dependency_graph8SmallSetBO_Kj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_.exit183.i.i ]
  %i.rk = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i185.i.i, i64 %i.rj ; 3 uses
  store i32 %.sroa.0252.0.copyload.le.i.i, ptr %i.rk, align 4, !noalias !7098
  %.sroa.4309.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  store i32 %.sroa.6.0.copyload.le.i.i, ptr %.sroa.4309.0..sroa_idx.i.i, align 4, !noalias !7098
  %.sroa.5310.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store i32 %.sroa.7.0.copyload.le.i.i, ptr %.sroa.5310.0..sroa_idx.i.i, align 4, !noalias !7098
  %i.rl = load i64, ptr %.sroa.01.0.i.i.i35, align 8, !alias.scope !7164, !noalias !7165, !noundef !25
  %i.rm = add i64 %i.rl, 1
  store i64 %i.rm, ptr %.sroa.01.0.i.i.i35, align 8, !alias.scope !7164, !noalias !7165
  br label %.loopexit363.i.i

.loopexit363.i.i:                                 ; preds = %bb.be, %bb.az, %bb.bz, %bb.bs, %bb.bq, %bb.bd, %bb.ay
  %.pre-phi457.i.i = phi <16 x i8> [ %.pre456.i.i, %bb.bz ], [ %i.kn, %bb.bd ], [ %i.kn, %bb.bs ], [ %i.kn, %bb.bq ], [ %i.kn, %bb.az ], [ %i.kn, %bb.ay ], [ %i.kn, %bb.be ]
  %.pre-phi453.i.i = phi i8 [ %.pre452.i.i, %bb.bz ], [ %i.kj, %bb.bd ], [ %i.kj, %bb.bs ], [ %i.kj, %bb.bq ], [ %i.kj, %bb.az ], [ %i.kj, %bb.ay ], [ %i.kj, %bb.be ] ; 2 uses
  %.pre-phi449.i.i = phi i64 [ %.pre448.i.i, %bb.bz ], [ %i.kh, %bb.bd ], [ %i.kh, %bb.bs ], [ %i.kh, %bb.bq ], [ %i.kh, %bb.az ], [ %i.kh, %bb.ay ], [ %i.kh, %bb.be ] ; 2 uses
  %.sroa.016.0.i.i = phi i1 [ %i.tn, %bb.bz ], [ true, %bb.bd ], [ true, %bb.bs ], [ true, %bb.bq ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %bb.be ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7166)
  %i.rn = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7168)
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 304 ; 2 uses
  %i.rp = load i64, ptr %i.ro, align 8, !alias.scope !7169, !noalias !7170, !noundef !25 ; 3 uses
  %i.rq = load ptr, ptr %i.ek, align 8, !alias.scope !7169, !noalias !7170, !nonnull !25, !noundef !25 ; 3 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %.loopexit363.i.i
  %.sroa.9.0.i.i.i188.i.i = phi i64 [ 0, %.loopexit363.i.i ], [ %i.so, %bb.bv ]
  %.pn.i.i.i189.i.i = phi i64 [ %.pre-phi449.i.i, %.loopexit363.i.i ], [ %i.sp, %bb.bv ]
  %.sroa.01.0.i.i.i190.i.i = and i64 %.pn.i.i.i189.i.i, %i.rp ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.sroa.01.0.i.i.i190.i.i
  %.sroa.0.0.copyload.i27.i.i191.i.i = load <16 x i8>, ptr %i.rr, align 1, !noalias !7171 ; 2 uses
  %i.rs = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i191.i.i, %.pre-phi457.i.i
  %i.rt = bitcast <16 x i1> %i.rs to i16          ; 2 uses
  %.not.i.not33.i.i192.i.i = icmp eq i16 %i.rt, 0
  br i1 %.not.i.not33.i.i192.i.i, label %._crit_edge.i.i196.i.i, label %.lr.ph.i.i193.i.i

.lr.ph.i.i193.i.i:                                ; preds = %bb.bt, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i.i.i
  %.sroa.06.0.i34.i.i194.i.i = phi i16 [ %i.sn, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i.i.i ], [ %i.rt, %bb.bt ] ; 3 uses
  %i.ru = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i194.i.i, i1 true)
  %i.rv = zext nneg i16 %i.ru to i64
  %i.rw = add i64 %.sroa.01.0.i.i.i190.i.i, %i.rv
  %i.rx = and i64 %i.rw, %i.rp
  %i.ry = sub nsw i64 0, %i.rx
  %i.rz = getelementptr inbounds [72 x i8], ptr %i.rq, i64 %i.ry ; 4 uses
  %i.sa = getelementptr inbounds i8, ptr %i.rz, i64 -68
  %i.sb = load i32, ptr %i.sa, align 4, !alias.scope !7172, !noalias !7173, !noundef !25
  %i.sc = icmp eq i32 %i.sb, %i.ah
  br i1 %i.sc, label %bb.bu, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i.i.i, !prof !29

bb.bu:                                            ; preds = %.lr.ph.i.i193.i.i
  %i.sd = getelementptr inbounds i8, ptr %i.rz, i64 -72
  %i.se = load i32, ptr %i.sd, align 4, !range !30, !alias.scope !7172, !noalias !7173, !noundef !25
  %i.sf = icmp eq i32 %i.se, %i.af
  br i1 %i.sf, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i.i.i, !prof !29

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i.i.i: ; preds = %bb.bu
  %i.sg = getelementptr inbounds i8, ptr %i.rz, i64 -64
  %i.sh = load i32, ptr %i.sg, align 4, !alias.scope !7172, !noalias !7173, !noundef !25
  %i.si = icmp eq i32 %i.sh, %i.l
  br i1 %i.si, label %.loopexit.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i.i.i, !prof !31

._crit_edge.i.i196.i.i:                           ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i.i.i, %bb.bt
  %i.sj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i191.i.i, splat (i8 -1)
  %i.sk = bitcast <16 x i1> %i.sj to i16
  %i.sl = icmp eq i16 %i.sk, 0
  br i1 %i.sl, label %bb.bv, label %bb.bw, !prof !26

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1C_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0BW_.exit.i.i.i.i, %bb.bu, %.lr.ph.i.i193.i.i
  %i.sm = add i16 %.sroa.06.0.i34.i.i194.i.i, -1
  %i.sn = and i16 %i.sm, %.sroa.06.0.i34.i.i194.i.i ; 2 uses
  %.not.i.not.i.i195.i.i = icmp eq i16 %i.sn, 0
  br i1 %.not.i.not.i.i195.i.i, label %._crit_edge.i.i196.i.i, label %.lr.ph.i.i193.i.i

bb.bv:                                            ; preds = %._crit_edge.i.i196.i.i
  %i.so = add i64 %.sroa.9.0.i.i.i188.i.i, 16     ; 2 uses
  %i.sp = add i64 %.sroa.01.0.i.i.i190.i.i, %i.so
end_hunk_2
