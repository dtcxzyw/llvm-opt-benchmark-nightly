Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.05?download=true
inline.NumInlined: 664
inline.NumDeleted: 271
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCs5XgW7KoffLW_12opendal_core:bb.a
bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !902, !noundef !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.be, ptr %i.bj, align 8, !noalias !902
  %i.bk = load ptr, ptr %i.av, align 8, !noalias !902, !nonnull !11, !align !13, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !902, !noundef !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bm
  store ptr null, ptr %i.bn, align 8, !noalias !902
  %.not1.i.i = icmp eq ptr %i.be, null
  br i1 %.not1.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core6HeaderEEBM_ECs5XgW7KoffLW_12opendal_core(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #32
          to label %.noexc.i unwind label %bb.h, !noalias !900

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !902, !nonnull !11, !align !13, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !noalias !902, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.br
  store ptr %i.au, ptr %i.bs, align 8, !noalias !902
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  store ptr %i.au, ptr %i.bd, align 8, !alias.scope !901, !noalias !900
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !901, !noalias !900, !noundef !11
  %.not2.i.i = icmp eq ptr %i.bu, null
  br i1 %.not2.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store ptr %i.au, ptr %i.bt, align 8, !alias.scope !901, !noalias !900
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !900
  %i.bv = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !noalias !900 ; 0 uses
  %i.bw = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8, !noalias !900 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !900
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.by = trunc nuw i8 %i.ao to i1
  br i1 %i.by, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !900
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.cc = invoke noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc13 unwind label %bb.e

.noexc13:                                         ; preds = %bb.s
  br i1 %i.cc, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc13
  store atomic i8 1, ptr %i.bx monotonic, align 4, !noalias !900
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.t, %.noexc13, %bb.r, %bb.q
  %i.cd = atomicrmw xchg ptr %i.am, i32 0 release, align 4, !noalias !900
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.u, label %bb.ac, !prof !12

bb.u:                                             ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.am)
          to label %bb.ac unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.v, %bb.h
  %i.cf = phi { ptr, i32 } [ %i.bc, %bb.h ], [ %i.cg, %bb.v ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %i.am, i8 %i.ao) #29
          to label %.body unwind label %bb.w

bb.v:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCs9k1U6oT1TZJ_5tokio7runtime4taskINtB5_4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.x:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.cj = trunc nuw i8 %i.ao to i1
  br i1 %i.cj, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cl = and i64 %i.ck, 9223372036854775807
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.z, !prof !21

bb.z:                                             ; preds = %bb.y
  %i.cn = invoke noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.z
  br i1 %i.cn, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc15
  store atomic i8 1, ptr %i.ci monotonic, align 4
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.aa, %.noexc15, %bb.y, %bb.x
  %i.co = atomicrmw xchg ptr %i.am, i32 0 release, align 4
  %i.cp = icmp eq i32 %i.co, 2
  br i1 %i.cp, label %bb.ab, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core.exit, !prof !12

bb.ab:                                            ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.am)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.ac:                                            ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cq = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit18

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit18: ; preds = %bb.ad, %bb.ac
  %.sroa.0.0 = phi ptr [ %i.cq, %bb.ac ], [ null, %bb.ad ]
  ret ptr %.sroa.0.0

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.ab
  %i.cr = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  invoke void @_RNvMs_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.cr)
          to label %bb.ad unwind label %bb.e

bb.ad:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core.exit
  call void @_RNvXsd_NtNtCs9k1U6oT1TZJ_5tokio7runtime4taskINtB5_4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit18

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.body
  br i1 %.sroa.02.0, label %bb.af, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit

bb.ae:                                            ; preds = %bb.af, %.body
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.af, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit
  resume { ptr, i32 } %.pn

bb.af:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXsd_NtNtCs9k1U6oT1TZJ_5tokio7runtime4taskINtB5_4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6Buffer5count(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !11  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %i.e = getelementptr [32 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !11
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.g, -1                         ; 2 uses
  %.not.i.not.i = icmp ult i64 %i.m, %i.c
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  br i1 %.not.i.not.i, label %._crit_edge.i, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit

._crit_edge.i:                                    ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.r = ptrtoint ptr %i.e to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 5                         ; 3 uses
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.u, 576460752303423486
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1, %.new
  %.sroa.05.0.i.i = phi i64 [ 0, %.new ], [ %i.ai, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1 ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.l, %.new ], [ %.sroa.3.0.i.i.i.1, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %.sroa.0.0.i.i.i.1, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1 ]
  %i.w = icmp eq i64 %.sroa.6.0.i.i, 0
  br i1 %i.w, label %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.05.0.i.i
  %i.y = add i64 %.sroa.02.0.i.i, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !906, !noundef !11
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i, i64 %i.aa)
  br label %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i

_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.3.0.i.i.i = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ %.sroa.02.0.i.i, %bb.e ] ; 2 uses
  %i.ac = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.ac, label %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.05.0.i.i
  %i.ae = add i64 %.sroa.0.0.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !noalias !906, !noundef !11
  %i.ah = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.3.0.i.i.i, i64 %i.ag)
  br label %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1

_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1: ; preds = %bb.g, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i
  %.sroa.3.0.i.i.i.1 = phi i64 [ %i.ah, %bb.g ], [ 0, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.1 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.0.0.i.i.i, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.05.0.i.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa, label %bb.e

_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa: ; preds = %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1
  %1 = and i64 %i.t, 32
  %lcmp.mod.not = icmp eq i64 %1, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa, %bb.d
  %.sroa.6.0.i.i.epil.init = phi i64 [ %i.l, %bb.d ], [ %.sroa.3.0.i.i.i.1, %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.d ], [ %.sroa.0.0.i.i.i.1, %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.aj = icmp eq i64 %.sroa.6.0.i.i.epil.init, 0
  %i.ak = add i64 %.sroa.02.0.i.i.epil.init, 1
  %.sroa.0.0.i.i.i.epil = select i1 %i.aj, i64 %.sroa.02.0.i.i.epil.init, i64 %i.ak
  br label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit

_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa, %._crit_edge.i, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ 0, %bb.c ], [ 0, %._crit_edge.i ], [ %.sroa.0.0.i.i.i.1, %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.epil, %.epil.preheader ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6Buffer6chunks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @96, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !noalias !909, !noundef !11 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !noalias !909
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !909, !nonnull !11, !align !13, !noundef !11
  %i.h = load ptr, ptr %i.g, align 8, !noalias !909, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !909, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noalias !909, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void %i.h(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noundef nonnull align 8 %i.i, ptr noundef %i.k, i64 noundef %i.m), !inline_history !0
  store ptr null, ptr %i.a, align 8
  %.pre = load ptr, ptr %1, align 8
  %i.o = icmp eq ptr %.pre, null
  %i.p = select i1 %i.o, i64 24, i64 16
  br label %_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %1, align 8, !noalias !909, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.r, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load <2 x i64>, ptr %i.q, align 8, !noalias !909
  store <2 x i64> %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = load <2 x i64>, ptr %i.s, align 8, !noalias !909
  store <2 x i64> %i.w, ptr %i.v, align 8
  br label %_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit: ; preds = %bb.e, %bb.f
  %.not = phi i64 [ %i.p, %bb.e ], [ 16, %bb.f ]
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.not
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0, ptr %i.z, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6Buffer7current(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !11  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !nonnull !11, !align !13, !noundef !11
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !11
  tail call void %i.h(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.i, ptr noundef %i.k, i64 noundef %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.e ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noundef !11 ; 3 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.v, i64 %i.t)
  %i.w = add i64 %.sroa.0.0.i, %i.s
  tail call void @_RINvMNtCsk2Y6yuwWMc1_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.o, i64 noundef %i.s, i64 noundef %i.w)
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6Buffer8split_to(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = load ptr, ptr %1, align 8, !noundef !11  ; 3 uses
  %.not = icmp eq ptr %i.h, null                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.i, align 8             ; 3 uses
  %.val13 = load i64, ptr %i.j, align 8           ; 3 uses
  %storemerge = select i1 %.not, i64 %.val, i64 %.val13 ; 2 uses
  store i64 %storemerge, ptr %i.f, align 8
  %.not9 = icmp ugt i64 %2, %storemerge
  %i.k = inttoptr i64 %.val13 to ptr
  br i1 %.not9, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.l, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @99, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #32
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.ax, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !923
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !923, !nonnull !11, !align !13, !noundef !11
  %i.r = load ptr, ptr %i.q, align 8, !noalias !923, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void %i.r(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noundef nonnull align 8 %i.s, ptr noundef %i.k, i64 noundef %.val), !noalias !921, !inline_history !914
  store ptr null, ptr %i.b, align 8, !alias.scope !922, !noalias !921
  br label %_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore3get:bb.a
; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore3new() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %.sroa.44.0..sroa_idx, align 4
  %.sroa.55.sroa.3.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr null, ptr %.sroa.55.sroa.3.0..sroa.55.0..sroa_idx.sroa_idx, align 8
  %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1037
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 48, i64 noundef range(i64 1, 9) 8) #27, !noalias !1037 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtNtB4_11collections5btree3map8BTreeMapNtNtB4_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEE3newB2Z_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.55.sroa.3.0..sroa.55.0..sroa_idx.sroa_idx)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtBG_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtBG_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3d_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtNtB4_11collections5btree3map8BTreeMapNtNtB4_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEE3newB2Z_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore3set(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = cmpxchg ptr %i.h, i32 0, i32 1 acquire monotonic, align 4, !noalias !1069
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %.noexc, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.h)
          to label %.noexc unwind label %.body.thread21

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.k = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1069
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %.noexc
  %i.n = invoke noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc8 unwind label %.body.thread21

.noexc8:                                          ; preds = %bb.c
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i: ; preds = %.noexc8, %.noexc
  %.sroa.01.0.i.i = phi i8 [ %i.p, %.noexc8 ], [ 0, %.noexc ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.r = load atomic i8, ptr %i.q monotonic, align 1, !noalias !1069
  %i.s = icmp ne i8 %i.r, 0
  invoke void @_RINvNtNtCs9k3SxhrAWiO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1w_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEENCNvMs9_B10_BX_3new0EB2P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i1 noundef zeroext %i.s, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.h)
          to label %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit unwind label %.body.thread21

bb.d:                                             ; preds = %.body12
  br i1 %.sroa.0.2.lpad-body, label %.body.thread, label %bb.ad

.body.thread21:                                   ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i, %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit: ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag5guard.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.t = load i64, ptr %i.e, align 8, !range !33, !alias.scope !1070, !noalias !1071, !noundef !11
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.i, !prof !12

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1072
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1070, !noalias !1071, !nonnull !11, !align !13, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !22, !alias.scope !1070, !noalias !1071, !noundef !11
  store ptr %i.w, ptr %i.a, align 8, !noalias !1072
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.y, ptr %i.z, align 8, !noalias !1072
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #28
          to label %bb.g unwind label %bb.f, !noalias !1070

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k3SxhrAWiO_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1Y_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.thread unwind label %bb.h, !noalias !1070

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30, !noalias !1070
  unreachable

bb.i:                                             ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1070, !noalias !1071, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !22, !alias.scope !1070, !noalias !1071, !noundef !11 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.w, %bb.u, %bb.n, %bb.l, %bb.i
  %.sroa.0.2 = phi i1 [ true, %bb.l ], [ false, %bb.w ], [ false, %bb.n ], [ true, %bb.i ], [ false, %bb.u ]
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.body12:                                          ; preds = %bb.t, %bb.j
  %.sroa.0.2.lpad-body = phi i1 [ %.sroa.0.2, %bb.j ], [ false, %bb.t ]
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ax, %bb.t ] ; 2 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_(ptr nonnull %i.ad, i8 %i.af) #29
          to label %bb.d unwind label %bb.ac

bb.k:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.b, align 8, !range !33, !noundef !11
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !34, !noundef !11 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.an, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #28
          to label %bb.ab unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.aq = icmp ule i64 %3, %i.am
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  store i64 %i.am, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  invoke void @_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE6insertB1z_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.p unwind label %bb.j

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.ar = load i64, ptr %i.f, align 8, !range !33, !alias.scope !1073, !noundef !11
  %5 = icmp eq i64 %i.ar, 0
  br i1 %5, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1078, !noundef !11 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1079
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.as) #31
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ay) #29
          to label %.body12 unwind label %bb.x

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1082, !noundef !11 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1085, !noundef !11
  %i.bf = load ptr, ptr %i.bc, align 8, !alias.scope !1085, !nonnull !11, !align !13, !noundef !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !1086, !nonnull !11, !noundef !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !1085, !noundef !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1085, !noundef !11
  invoke void %i.bh(ptr noundef %i.be, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit unwind label %bb.j, !inline_history !4

bb.v:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i
  %i.bm = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !1087
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.w, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.az) #31
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit unwind label %bb.j

bb.x:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit: ; preds = %bb.v, %bb.p, %bb.u, %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br i1 %i.ag, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit
  %i.bq = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc14, !prof !21

.noexc14:                                         ; preds = %bb.y
  %i.bt = call noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.bt, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.bp monotonic, align 4
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.z, %.noexc14, %bb.y, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit
  %i.bu = atomicrmw xchg ptr %i.ad, i32 0 release, align 4
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.aa, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit, !prof !12

bb.aa:                                            ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit: ; preds = %bb.aa, %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  ret void

bb.ab:                                            ; preds = %bb.l
  unreachable

bb.ac:                                            ; preds = %.body12, %.body.thread
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ad:                                            ; preds = %.body.thread, %bb.d
  %.pn17 = phi { ptr, i32 } [ %eh.lpad-body13, %bb.d ], [ %.pn18, %.body.thread ]
  resume { ptr, i32 } %.pn17

.body.thread:                                     ; preds = %bb.f, %.body.thread21, %bb.d
  %.pn18 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread21 ], [ %eh.lpad-body13, %bb.d ], [ %i.aa, %bb.f ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %4) #29
          to label %bb.ad unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore4scan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.m = cmpxchg ptr %i.l, i32 0, i32 1 acquire monotonic, align 4, !noalias !1096
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.l), !noalias !1096
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1096
  %i.p = and i64 %i.o, 9223372036854775807
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !1096
  %i.s = xor i1 %i.r, true
  %i.t = zext i1 %i.s to i8
  br label %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit

_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.v = load atomic i8, ptr %i.u monotonic, align 1, !noalias !1096
  %i.w = icmp ne i8 %i.v, 0
  call void @_RINvNtNtCs9k3SxhrAWiO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1w_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEENCNvMs9_B10_BX_3new0EB2P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i1 noundef zeroext %i.w, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.x = load i64, ptr %i.j, align 8, !range !33, !alias.scope !1097, !noalias !1098, !noundef !11
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.e, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit, !prof !12

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1099
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1097, !noalias !1098, !nonnull !11, !align !13, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !22, !alias.scope !1097, !noalias !1098, !noundef !11
  store ptr %i.aa, ptr %i.a, align 8, !noalias !1099
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ac, ptr %i.ad, align 8, !noalias !1099
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #28
          to label %bb.g unwind label %bb.f, !noalias !1097

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k3SxhrAWiO_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1Y_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.h, !noalias !1097

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30, !noalias !1097
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit: ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1097, !noalias !1098, !nonnull !11, !align !13, !noundef !11 ; 9 uses
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore4scan:bb.a
  store i64 %3, ptr %.sroa.538.0..sroa_idx, align 8
  invoke void @_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE5rangeB17_INtNtNtCsgxBkk5gSRhY_4core3ops5range9RangeFromB17_EEB1A_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.v unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.aj, %bb.v
  %i.bm = invoke { ptr, ptr } @_RINvMs3_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE20perform_next_checkedNCNvMs1_B6_BX_12next_checked0TRB1E_RB1Z_EEB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0      ; 4 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !11, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noundef !11
  %i.bs = invoke noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ad unwind label %.loopexit

bb.z:                                             ; preds = %bb.ad, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  br i1 %i.ak, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bw = and i64 %i.bv, 9223372036854775807
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.ab, !prof !21

bb.ab:                                            ; preds = %bb.aa
  %i.by = call noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.by, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store atomic i8 1, ptr %i.bu monotonic, align 4
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i49

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i49: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.bz = atomicrmw xchg ptr %i.ah, i32 0 release, align 4
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit.sink.split, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit, !prof !12

bb.ad:                                            ; preds = %bb.y
  br i1 %i.bs, label %bb.ae, label %bb.z

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.af unwind label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.cb = load i64, ptr %i.ap, align 8, !alias.scope !1100, !noalias !1101, !noundef !11 ; 3 uses
  %i.cc = load i64, ptr %i.g, align 8, !range !17, !alias.scope !1100, !noalias !1101, !noundef !11
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs9k3SxhrAWiO_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.aj unwind label %bb.ah, !noalias !1101

bb.ah:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.aj:                                            ; preds = %bb.ag, %bb.af
  %i.cg = load ptr, ptr %i.ao, align 8, !alias.scope !1100, !noalias !1101, !nonnull !11, !noundef !11
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ci = add i64 %i.cb, 1
  store i64 %i.ci, ptr %i.ap, align 8, !alias.scope !1100, !noalias !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.ak:                                            ; preds = %bb.t
  unreachable

bb.al:                                            ; preds = %bb.m, %.body
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4coreNtB4_10MemoryCore6delete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.f = cmpxchg ptr %i.e, i32 0, i32 1 acquire monotonic, align 4, !noalias !1133
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.e), !noalias !1133
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1133
  %i.i = and i64 %i.h, 9223372036854775807
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !1133
  %i.l = xor i1 %i.k, true
  %i.m = zext i1 %i.l to i8
  br label %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit

_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.m, %bb.d ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.o = load atomic i8, ptr %i.n monotonic, align 1, !noalias !1133
  %i.p = icmp ne i8 %i.o, 0
  call void @_RINvNtNtCs9k3SxhrAWiO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1w_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEENCNvMs9_B10_BX_3new0EB2P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %i.p, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.q = load i64, ptr %i.b, align 8, !range !33, !alias.scope !1134, !noalias !1135, !noundef !11
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit, !prof !12

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1136
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1134, !noalias !1135, !nonnull !11, !align !13, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !22, !alias.scope !1134, !noalias !1135, !noundef !11
  store ptr %i.t, ptr %i.a, align 8, !noalias !1136
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.v, ptr %i.w, align 8, !noalias !1136
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #28
          to label %bb.g unwind label %bb.f, !noalias !1134

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k3SxhrAWiO_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1Y_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEEB3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.h, !noalias !1134

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30, !noalias !1134
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit: ; preds = %_RNvMs5_NtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE4lockB2p_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1134, !noalias !1135, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !22, !alias.scope !1134, !noalias !1135, !noundef !11 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE6removeeEB1A_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.q, %bb.o, %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.am, %bb.n ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_(ptr nonnull %i.aa, i8 %i.ac) #29
          to label %common.resume unwind label %bb.w

bb.j:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1L_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEINtBM_11PoisonErrorBH_EE6unwrapB34_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.ag = load i64, ptr %i.c, align 8, !range !33, !alias.scope !1137, !noundef !11
  %4 = icmp eq i64 %i.ag, 0
  br i1 %4, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1142, !noundef !11 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1143
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ah) #31
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.an) #29
          to label %.body unwind label %bb.r

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !1146, !noundef !11 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1149, !noundef !11
  %i.au = load ptr, ptr %i.ar, align 8, !alias.scope !1149, !nonnull !11, !align !13, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !1150, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !1149, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1149, !noundef !11
  invoke void %i.aw(ptr noundef %i.at, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit unwind label %bb.i, !inline_history !4

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.i
  %i.bb = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !1151
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.q, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ao) #31
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit unwind label %bb.i

bb.r:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit: ; preds = %bb.p, %bb.j, %bb.o, %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit
  %i.bf = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bg = and i64 %i.bf, 9223372036854775807
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.t, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.bi = call noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.bi, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.be monotonic, align 4
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB15_.exit
  %i.bj = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit, !prof !12

bb.v:                                             ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2Y_.exit: ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  ret void

bb.w:                                             ; preds = %.body
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvNtCselJpgKOOZlr_6anyhow5error12no_backtrace(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @19, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs5XgW7KoffLW_12opendal_core3raw10serde_util23new_xml_serialize_error(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 13)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #29
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs5XgW7KoffLW_12opendal_core3raw10serde_util24new_json_serialize_error(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 14)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error10set_sourceNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
end_hunk_2
